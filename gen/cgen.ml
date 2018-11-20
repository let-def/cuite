open Utils
open Mlspec
open Mangle

let cpp_rawtype ?(polarity : [`neg|`pos] = `neg) = function
  | QClass cl -> QClass.cpp_type cl
  | QEnum en  -> QEnum.cpp_type en
  | QFlags fl -> QFlags.cpp_type fl
  | Custom x  ->
    begin match polarity with
      | `neg -> x.cpp_negname
      | `pos -> x.cpp_name
    end

let cpp_argtype ?polarity arg =
  let raw = cpp_rawtype ?polarity arg.arg_typ in
  match arg.arg_mod with
  | `Optional -> raw ^ "*"
  | `Direct -> raw
  | `Const -> "const " ^ raw
  | `Ref -> raw ^ "&"
  | `Pointer -> raw ^ "*"
  | `Const_ref -> "const " ^ raw ^ "&"

let rec root_class cl =
  match QClass.extends cl with
  | None -> cl
  | Some cl' -> root_class cl'

let modifier_kind = function
  | `Optional  -> `By_ref
  | `Direct    -> `By_val
  | `Const     -> `By_val
  | `Ref       -> `By_val
  | `Pointer   -> `By_ref
  | `Const_ref -> `By_val

let cpp_to_ocaml md typ expr =
  let base_fn = match typ with
    | QClass cl -> Printf.sprintf "cuite_%s_to_ocaml"
                     (QClass.cpp_type (root_class cl))
    | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_to_ocaml"
    | QFlags fl -> "cuite_flag_to_ocaml"
    | Custom x  -> "cuite_" ^ Mangle.cident x.cpp_name ^ "_to_ocaml"
  in
  let pre =
    match Decl.qtype_kind typ, modifier_kind md with
    | `By_ref, `By_ref -> ""
    | `By_val, `By_val -> ""
    | `By_ref, `By_val -> "&"
    | `By_val, `By_ref -> "*"
  in
  Printf.sprintf "%s(%s(%s))" base_fn pre expr

let cpp_arg_to_ocaml_fun arg expr =
  cpp_to_ocaml arg.arg_mod arg.arg_typ expr

let cpp_from_ocaml md typ expr =
  let base_fn = match typ with
    | QClass cl ->
      let root = root_class cl in
      if cl != root then
        match QClass.kind cl with
        | `By_ref ->
          Printf.sprintf "(%s*)cuite_%s_from_ocaml"
            (QClass.cpp_type cl) (QClass.cpp_type root)
        | `By_val ->
          Printf.sprintf "*(%s*)&cuite_%s_from_ocaml"
            (QClass.cpp_type cl) (QClass.cpp_type root)
      else
        Printf.sprintf "cuite_%s_from_ocaml" (QClass.cpp_type cl)
    | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_from_ocaml"
    | QFlags fl -> "cuite_flag_from_ocaml"
    | Custom x  -> "cuite_" ^ Mangle.cident x.cpp_name ^ "_from_ocaml"
  in
  let pre =
    match Decl.qtype_kind typ, modifier_kind md with
    | `By_ref, `By_ref -> ""
    | `By_val, `By_val -> ""
    | `By_ref, `By_val -> "*"
    | `By_val, `By_ref -> "&"
  in
  Printf.sprintf "(%s(%s(%s)))"
    pre base_fn expr

let cpp_arg_from_ocaml_fun arg expr =
  cpp_from_ocaml arg.arg_mod arg.arg_typ expr

(*let cpp_argtype arg =
  match modifier_kind arg.arg_mod with
  | `By_ref -> cpp_rawtype ~polarity:`pos arg.arg_typ ^ "*"
  | `By_val -> cpp_rawtype ~polarity:`pos arg.arg_typ*)

let gen_args fmt n =
  let rec aux i = if i = n then [] else Printf.sprintf fmt i :: aux (i + 1) in
  aux 0

let gen_bc_wrapper oc symbol arity =
  assert (arity > 5);
  println oc "external value %s_bc(value *argv, int argvn)" symbol;
  println oc "{";
  println oc "  cuite_assert(argvn == %d);" arity;
  let args = String.concat "," (gen_args "argv[%d]" arity) in
  println oc "  return %s(%s);" symbol args;
  println oc "}"

let output_bc_wrapper oc cf =
  match QClass.stub_arity cf with
  | Some n -> gen_bc_wrapper oc (QClass.c_field_base_symbol cf) n
  | None -> assert false

let gen_stub oc cf =
  let cl = QClass.field_class cf in
  let name = QClass.field_name cf in
  let symbol = QClass.c_field_base_symbol cf in
  match QClass.field_desc cf with
  | Constructor { custom = true; args = _ } -> ()
  | Constructor { custom = false; args } ->
    let arity = List.length args in
    let mlargs = gen_args "mlarg%d" arity in
    let mlvals = gen_args "mlval%d" arity in
    println oc "external value %s(%s)" symbol
      (String.concat ","
         (List.map ((^) "value ") (if mlargs = [] then ["_unit"] else mlargs)));
    println oc "{";
    println oc "  CUITE_GC_REGION;";
    List.iter2
      (println oc "  value& %s = cuite_region_register(%s);") mlvals mlargs;
    let cvals = gen_args "cval%d" arity in
    List.iter2 (fun (cval,mlval) arg ->
        println oc "  %s %s(%s);"
          (cpp_argtype arg) cval
          (cpp_arg_from_ocaml_fun arg mlval)
      ) (List.combine cvals mlvals) args;
    begin match QClass.kind cl with
      | `By_val ->
        println oc "  return %s;"
          (cpp_to_ocaml `Direct (QClass cl)
             (Printf.sprintf "%s(%s)"
                (QClass.cpp_type cl)
                (String.concat "," cvals)))
      | `By_ref ->
        println oc "  return %s;"
          (cpp_to_ocaml `Pointer (QClass cl)
             (Printf.sprintf "new %s(%s)"
                (QClass.cpp_type cl)
                (String.concat "," cvals)))
    end;
    println oc "}\n"
  | Dynamic_method _ -> () (* TODO *)
  | Static_method  _ -> () (* TODO *)
  | Signal { args; private_ } ->
    let arity = List.length args in
    let cargs = gen_args "carg%d" arity in
    let typs = List.map cpp_argtype args in
    println oc "static void invoke_%s(%s)"
      symbol
      (String.concat "," ("intnat *cbid" ::
                          List.map2 (Printf.sprintf "%s %s") typs cargs))
    ;
    println oc "{";
    println oc "  CUITE_OCAML_REGION;";
    println oc "  value& arg = *cuite_region_alloc();";
    begin match args, cargs with
      | [], [] -> println oc "  arg = Val_unit;";
      | [argtyp0], [arg0] ->
        println oc "  arg = %s;" (cpp_arg_to_ocaml_fun argtyp0 arg0);
      | _ ->
        println oc "  arg = caml_alloc_tuple(%d);" (List.length args);
        List.iteri (fun i (argtyp, carg) ->
            println oc "Store_field(arg, %d, %s);"
              i (cpp_arg_to_ocaml_fun argtyp carg)
          ) (List.combine args cargs);
    end;
    println oc "  cuitecb_call(cbid, arg);";
    println oc "}";
    println oc "CUITE_SIGNAL(%s, %s, (q%sOverload<%s>(&%s::%s)), %s(%s), std::bind(&invoke_%s, %s))"
      symbol (QClass.cpp_type cl)
      (if private_ then "Private" else "")
      (String.concat "," (List.map cpp_argtype args)) (QClass.cpp_type cl) name
      name (String.concat "," (List.map cpp_argtype args))
      symbol
      (String.concat ","
         ("cbid" :: List.tl (gen_args "std::placeholders::_%d" (arity+1))))

  | Slot { args } ->
    let print_arg oc i arg =
      if i <> 0 then output_char oc ',';
      output_string oc (cpp_argtype arg)
    in
    let print_args oc args = List.iteri (print_arg oc) args in
    println oc "CUITE_SLOT(%s, %s(%a));"
      symbol name print_args args

let () =
  Decl.iter_types (function
      | QClass cl -> QClass.iter_fields cl (gen_stub stdout)
      | _ -> ()
    )
