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
  | QFlags fl -> "cuite_QFlags_to_ocaml"
  | Custom x  -> "cuite_" ^ x.cpp_name ^ "_to_ocaml"

let cpp_from_ocaml_fun = function
  | QClass cl -> Printf.sprintf "(%s*)cuite_%s_from_ocaml"
                   (QClass.cpp_type cl)
                   (QClass.cpp_type (root_class cl))
  | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_from_ocaml"
  | QFlags fl -> "cuite_QFlags_from_ocaml"
  | Custom x  -> "cuite_" ^ x.cpp_name ^ "_from_ocaml"

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

let cpp_negtype = function
  | QClass cl ->
    let typ = QClass.cpp_type cl in
    begin match QClass.kind cl with
      | `By_ref -> typ ^ "*"
      | `By_val -> "const " ^ typ ^ "&"
    end
  | QEnum en  -> QEnum.cpp_type en
  | QFlags fl -> QFlags.cpp_type fl
  | Custom x  -> x.cpp_negname

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
    List.iter2 (fun (cval,mlval) (_,arg) ->
        let (Mlspec.Value qt | Mlspec.Optional qt) = arg in
        println oc "  %s %s(%s(%s));" (cpp_negtype qt) cval
          (cpp_from_ocaml_fun qt) mlval
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
    let typs =
      List.map (fun (_, (Value qt | Optional qt)) -> cpp_negtype qt) args
    in
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
      | [(_, (Value x | Optional x))], [arg0] ->
        println oc "  arg = %s(%s);" (cpp_to_ocaml_fun x) arg0;
      | _ ->
        println oc "  arg = caml_alloc_tuple(%d);" (List.length args);
        List.iteri (fun i ((_,(Value x | Optional x)), carg) ->
            println oc "Store_field(arg, %d, %s(%s));"
              i (cpp_to_ocaml_fun x) carg
          ) (List.combine args cargs);
    end;
    println oc "  cuitecb_call(cbid, arg);";
    println oc "}";
    let typ (_,(Value x | Optional x)) = cpp_negtype x in
    println oc "CUITE_SIGNAL(%s, %s, (q%sOverload<%s>(&%s::%s)), %s(%s), std::bind(&invoke_%s, %s))"
      symbol (QClass.cpp_type cl)
      (if private_ then "Private" else "")
      (String.concat "," (List.map typ args)) (QClass.cpp_type cl) name
      name (String.concat "," (List.map typ args))
      symbol
      (String.concat ","
         ("cbid" :: List.tl (gen_args "std::placeholders::_%d" (arity+1))))

  | Slot { args } ->
    let print_arg oc i (_name, arg) =
      if i <> 0 then output_char oc ',';
      let (Mlspec.Value qt | Mlspec.Optional qt) = arg in
        output_string oc (cpp_negtype qt)
    in
    let print_args oc args = List.iteri (print_arg oc) args in
    println oc "CUITE_SLOT(%s, %s(%a));"
      symbol name print_args args

let () =
  Decl.iter_types (function
      | QClass cl -> QClass.iter_fields cl (gen_stub stdout)
      | _ -> ()
    )
