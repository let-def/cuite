open Utils
open Mlspec
open Mangle

let rec root_class cl =
  match QClass.extends cl with
  | None -> cl
  | Some cl' -> root_class cl'

let cpp_to_ocaml_fun = function
  | QClass cl -> Printf.sprintf "cuite_%s_to_ocaml"
                   (QClass.cpp_type (root_class cl))
  | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_to_ocaml"
  | QFlags fl -> "cuite_flag_to_ocaml"
  | Custom x  -> "cuite_" ^ x.cpp_name ^ "_to_ocaml"

let cpp_postype = function
  | QClass cl ->
    let typ = QClass.cpp_type cl in
    begin match QClass.kind cl with
      | `By_ref -> typ ^ "*"
      | `By_val -> typ
    end
  | QEnum  en -> QEnum.cpp_type en
  | QFlags fl -> QFlags.cpp_type fl
  | Custom x  -> x.cpp_name

type neg_modifier =
  | Direct
  | ConstRef
  | Pointer

let cpp_default_neg_modifier = function
  | QClass cl -> (match QClass.kind cl with
      | `By_ref -> Pointer
      | `By_val -> ConstRef)
  | QEnum  _ -> Direct
  | QFlags _ -> Direct
  | Custom _ -> Direct

let apply_modifier md typ =
  match md with
  | Mlspec.Value -> cpp_default_neg_modifier typ
  | Mlspec.ConstRef -> ConstRef
  | Mlspec.Optional -> Pointer

let cpp_rawtype = function
  | QClass cl -> QClass.cpp_type cl
  | QEnum en  -> QEnum.cpp_type en
  | QFlags fl -> QFlags.cpp_type fl
  | Custom x  -> x.cpp_negname

let cpp_arg_to_ocaml_fun (_,_,typ) =
  cpp_to_ocaml_fun typ

let cpp_from_ocaml_fun deref = function
  | QClass cl ->
    let deref = deref || QClass.kind cl = `By_val in
    Printf.sprintf "%s(%s*)cuite_%s_from_ocaml"
      (if deref then "*" else "")
      (QClass.cpp_type cl)
      (QClass.cpp_type (root_class cl))
  | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_from_ocaml"
  | QFlags fl -> "cuite_flag_from_ocaml"
  | Custom x  -> "cuite_" ^ x.cpp_name ^ "_from_ocaml"

let cpp_arg_from_ocaml_fun (_,md,typ : argument) =
  cpp_from_ocaml_fun (md = ConstRef) typ

let cpp_argtype (_, md, typ) =
  let raw = cpp_rawtype typ in
  match apply_modifier md typ with
  | Direct   -> raw
  | ConstRef -> "const " ^ raw ^ "&"
  | Pointer  -> raw ^ "*"

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
        println oc "  %s %s(%s(%s));"
          (cpp_argtype arg) cval
          (cpp_arg_from_ocaml_fun arg) mlval
      ) (List.combine cvals mlvals) args;
    println oc "  return %s(new %s(%s));"
      (cpp_to_ocaml_fun (QClass cl))
      (QClass.cpp_type cl)
      (String.concat "," cvals);
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
        println oc "  arg = %s(%s);" (cpp_arg_to_ocaml_fun argtyp0) arg0;
      | _ ->
        println oc "  arg = caml_alloc_tuple(%d);" (List.length args);
        List.iteri (fun i (argtyp, carg) ->
            println oc "Store_field(arg, %d, %s(%s));"
              i (cpp_arg_to_ocaml_fun argtyp) carg
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
