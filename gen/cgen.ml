open Utils
open Mlspec
open Mangle

let cpp_rawtype = function
  | QClass cl -> QClass.cpp_type cl
  | QEnum en  -> QEnum.cpp_type en
  | QFlags fl -> QFlags.cpp_type fl
  | Custom x  -> x.cpp_name

let cpp_vartype typ =
  let raw = cpp_rawtype typ in
  match Decl.qtype_kind typ with
  | `By_ref -> raw ^ "*"
  | `By_val -> raw

let cpp_argtype typ =
  let raw = cpp_rawtype typ.typ_def in
  match typ.typ_mod with
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

let modifier_returns_pointer = function
  | `Optional | `Pointer -> true
  | `Direct | `Const | `Ref | `Const_ref -> false

let cpp_to_ocaml oc typ mlvar cvar =
  let base_fn = match typ.typ_def with
    | QClass cl -> Printf.sprintf "cuite_%s_to_ocaml"
                     (QClass.cpp_type (root_class cl))
    | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_to_ocaml"
    | QFlags fl -> "cuite_flag_to_ocaml"
    | Custom x  -> "cuite_" ^ Mangle.cident x.cpp_name ^ "_to_ocaml"
  in
  let pre =
    if modifier_returns_pointer typ.typ_mod
    then match Decl.qtype_kind typ.typ_def with
      | `By_ref -> ""
      | `By_val -> "*"
    else match Decl.qtype_kind typ.typ_def with
      | `By_ref -> "&"
      | `By_val -> ""
  in
  let mlexpr = Printf.sprintf "%s(%s(%s))" base_fn pre cvar in
  match typ.typ_mod with
  | `Optional ->
    println oc "  %s = (%s) == NULL ? Val_none : Val_some(%s);"
      mlvar cvar mlexpr
  | _ -> println oc "  %s = %s;" mlvar mlexpr

let cpp_from_ocaml typ =
  let base_fn = match typ.typ_def with
    | QEnum  en -> "cuite_" ^ QEnum.c_base_symbol en ^ "_from_ocaml"
    | QFlags fl -> "cuite_flag_from_ocaml"
    | Custom x  -> "cuite_" ^ Mangle.cident x.cpp_name ^ "_from_ocaml"
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
  in
  let pre =
    if modifier_returns_pointer typ.typ_mod
    then match Decl.qtype_kind typ.typ_def with
    | `By_ref -> ""
    | `By_val -> "&"
    else match Decl.qtype_kind typ.typ_def with
    | `By_ref -> "*"
    | `By_val -> ""
  in
  fun expr ->
  match typ.typ_mod with
  | `Optional ->
    Printf.sprintf "(((%s) == Val_unit) ? NULL : (%s(%s(Field(%s,0)))))"
      expr pre base_fn expr
  | _ ->
    Printf.sprintf "(%s(%s(%s)))" pre base_fn expr

let gen_bc_wrapper oc symbol arity =
  assert (arity > 5);
  println oc "external value %s_bc(value *argv, int argvn)" symbol;
  println oc "{";
  println oc "  cuite_assert(argvn == %d);" arity;
  let args = enum_strings "argv[%d]" 0 arity in
  println oc "  return %s(%a);" symbol arg_list args;
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
    let args = List.map snd args in
    let arity = List.length args in
    println oc "external value %s(%a)" symbol arg_list
      (if arity = 0
       then ["value _unit"]
       else enum_strings "value mlarg%d" 0 arity);
    let mlargs = enum_strings "mlarg%d" 0 arity in
    println oc "{";
    println oc "  value mlresult = Val_unit;";
    println oc "  CUITE_GC_REGION(%a);"
      arg_list ("&mlresult" :: enum_strings "&mlarg%d" 0 arity);
    let cvals = enum_strings "cval%d" 0 arity in
    List.iter2 (fun (cval,mlval) arg ->
        println oc "  %s %s(%s);"
          (cpp_argtype arg) cval
          (cpp_from_ocaml arg mlval)
      ) (List.combine cvals mlargs) args;
    begin match QClass.kind cl with
      | `By_val ->
        println oc "  auto cresult = %s(%a);"
          (QClass.cpp_type cl) arg_list cvals;
        cpp_to_ocaml oc
          (Decl.typ ~modifier:`Direct (QClass cl)) "mlresult" "cresult";
      | `By_ref ->
        println oc "  auto cresult = new %s(%a);"
          (QClass.cpp_type cl) arg_list cvals;
        cpp_to_ocaml oc
          (Decl.typ ~modifier:`Pointer (QClass cl)) "mlresult" "cresult";
    end;
    println oc "  return mlresult;";
    println oc "}\n"

  | Dynamic_method m ->
    let custom = m.kind = `Custom in
    let args = Decl.typ ~modifier:`Pointer (QClass cl)::List.map snd m.args in
    let arity = List.length args in
    println oc "external value %s(%a)%s" symbol
      arg_list (if arity = 0
                then ["value _unit"]
                else enum_strings "value mlarg%d" 0 arity)
      (if custom then ";" else "");
    if not custom then (
      println oc "{";
      println oc "  value mlresult = Val_unit;";
      println oc "  CUITE_GC_REGION(%a);"
        arg_list ("&mlresult" :: enum_strings "&mlarg%d" 0 arity);
      List.iteri (fun i arg ->
          println oc "  %s cval%d(%s);"
            (cpp_argtype arg) i (cpp_from_ocaml arg (sprintf "mlarg%d" i))
        ) args;
      let cvals = enum_strings "cval%d" 1 arity in
      begin match m.ret with
        | None ->
          println oc "  cval0->%s(%a);" name arg_list cvals;
        | Some ret ->
          println oc "  auto cresult = cval0->%s(%a);" name arg_list cvals;
          cpp_to_ocaml oc ret "mlresult" "cresult";
      end;
      println oc "  return mlresult;";
      println oc "}\n"
    )

  | Static_method m ->
    let args = List.map snd m.args in
    let arity = List.length args in
    println oc "external value %s(%a)%s" symbol
      arg_list (if arity = 0
                then ["value _unit"]
                else enum_strings "value mlarg%d" 0 arity)
      (if m.custom then ";" else "");
    if not m.custom then (
      println oc "{";
      println oc "  value mlresult = Val_unit;";
      println oc "  CUITE_GC_REGION(%a);"
        arg_list ("&mlresult" :: enum_strings "&mlarg%d" 0 arity);
      List.iteri (fun i arg ->
          println oc "  %s cval%d(%s);"
            (cpp_argtype arg) i (cpp_from_ocaml arg (sprintf "mlarg%d" i))
        ) args;
      let cvals = enum_strings "cval%d" 0 arity in
      begin match m.ret with
        | None ->
          println oc "  %s::%s(%a);" (QClass.cpp_type cl) name arg_list cvals;
        | Some ret ->
          println oc "  auto cresult(%s::%s(%a));"
            (QClass.cpp_type cl) name arg_list cvals;
          cpp_to_ocaml oc ret "mlresult" "cresult";
      end;
      println oc "  return mlresult;";
      println oc "}\n"
    )

  | Signal { args; private_ } ->
    let args = List.map snd args in
    let arity = List.length args in
    let cargs = enum_strings "carg%d" 0 arity in
    let typs = List.map cpp_argtype args in
    println oc "static void invoke_%s(%a)" symbol
      arg_list ("intnat *cbid" :: List.map2 (Printf.sprintf "%s %s") typs cargs)
    ;
    println oc "{";
    println oc "  value mlreg0 = Val_unit, mlreg1 = Val_unit;";
    println oc "  CUITE_OCAML_REGION(%a);" arg_list ["&mlreg0";"&mlreg1"];
    begin match args, cargs with
      | [], [] -> ()
      | [argtyp0], [arg0] ->
        cpp_to_ocaml oc argtyp0 "mlreg0" arg0
      | _ ->
        println oc "  mlreg0 = caml_alloc_tuple(%d);" (List.length args);
        List.iteri (fun i (argtyp, carg) ->
            cpp_to_ocaml oc argtyp "mlreg1" carg;
            println oc "Store_field(mlreg0, %d, mlreg1);" i
          ) (List.combine args cargs);
    end;
    println oc "  cuitecb_call(cbid, mlreg0);";
    println oc "}";
    println oc "CUITE_SIGNAL(%s, %s, (q%sOverload<%a>(&%s::%s)), %s(%a), std::bind(&invoke_%s, %a))"
      symbol (QClass.cpp_type cl)
      (if private_ then "Private" else "")
      arg_list typs (QClass.cpp_type cl) name
      name arg_list typs
      symbol
      arg_list ("cbid" :: enum_strings "std::placeholders::_%d" 1 (arity+1))

  | Slot { args } ->
    let args = List.map snd args in
    let print_arg oc i arg =
      if i <> 0 then output_char oc ',';
      output_string oc (cpp_argtype arg)
    in
    let print_args oc args = List.iteri (print_arg oc) args in
    println oc "CUITE_SLOT(%s, %s(%a));"
      symbol name print_args args

let () =
  Decl.iter_types (function
      | QClass cl ->
        if QClass.is_QObject cl then
          println stdout "CUITE_CLASS(%s, %s)"
            (QClass.c_base_symbol cl) (QClass.cpp_type cl);
        QClass.iter_fields cl (gen_stub stdout)
      | _ -> ()
    )
