open Mlspec
open Mangle

(* TODO
   - factor out printing functions
   - replace "Invalid_value"/fallback by some abstraction
   - ...
*)

let fprintf = Printf.fprintf

let println oc fmt =
  Printf.kfprintf (fun oc -> output_char oc '\n') oc fmt

let ml_postype oc = function
  | QClass cl -> fprintf oc "%s qt" (QClass.ml_shadow_type cl)
  | QEnum en  -> fprintf oc "%s" (QEnum.ml_type en)
  | QFlags fl -> fprintf oc "%s" (QFlags.ml_type fl)
  | Custom x  -> fprintf oc "%s" x.ml_name

let ml_negtype oc = function
  | QClass cl -> fprintf oc "[> %s] qt" (QClass.ml_shadow_type cl)
  | QEnum en  -> fprintf oc "%s" (QEnum.ml_type en)
  | QFlags fl -> fprintf oc "%s" (QFlags.ml_type fl)
  | Custom x  -> fprintf oc "%s" x.ml_negname

let ml_argtype oc = function
  | _, Value typ    -> fprintf oc "%a" ml_negtype typ
  | _, Optional typ -> fprintf oc "%a option" ml_negtype typ

let ml_argpostype oc = function
  | _, Value typ    -> fprintf oc "%a" ml_postype typ
  | _, Optional typ -> fprintf oc "%a option" ml_postype typ

let arrow oc (lhs, rhs) =
  begin match lhs with
    | [] -> fprintf oc "unit -> "
    | fields -> List.iter (fprintf oc "%a -> " ml_argtype) fields
  end;
  begin match rhs with
    | None -> fprintf oc "unit"
    | Some x -> ml_postype oc x
  end

let args_neg_tuple oc = function
  | [] -> fprintf oc "unit"
  | x :: xs ->
    ml_argtype oc x;
    List.iter (fprintf oc " * %a" ml_argtype) xs

let args_neg_nested_tuple oc = function
  | [] -> fprintf oc "_"
  | x :: xs ->
    ml_argtype oc x;
    List.iter (fprintf oc " * (%a" ml_argtype) xs;
    fprintf oc " * _";
    List.iter (fun _ -> fprintf oc ")") xs

let args_pos_tuple oc = function
  | [] -> fprintf oc "unit"
  | x :: xs ->
    ml_argtype oc x;
    List.iter (fprintf oc " * %a" ml_argpostype) xs

let args_pos_nested_tuple oc = function
  | [] -> fprintf oc "_"
  | x :: xs ->
    ml_argtype oc x;
    List.iter (fprintf oc " * (%a" ml_argpostype) xs;
    fprintf oc " * _";
    List.iter (fun _ -> fprintf oc ")") xs

let gen_bc_wrapper oc symbol arity =
  assert (arity > 5);
  println oc "external value %s_bc(value *argv, int argvn)" symbol;
  println oc "{";
  println oc "  cuite_assert(argvn == %d);" arity;
  let args =
    let rec aux n = if n = arity then [] else n :: aux (n + 1) in aux 0
  in
  let args = String.concat "," (List.map (Printf.sprintf "argv[%d]") args) in
  println oc "  return %s(%s);" symbol args;
  println oc "}"

let output_bc_wrapper oc cf =
  match stub_arity cf with
  | Some n -> gen_bc_wrapper oc (QClass.c_field_base_symbol cf) n
  | None -> assert false

let output_field oc cl cf =
  match QClass.field_desc cf with
  | Constructor _ when QClass.field_class cf != cl -> ()
  | desc ->
    let name = QClass.field_name cf in
    begin match desc with
      | Constructor x ->
        fprintf oc "  external new'%s : %a"
          (if name = "" then "" else ident name)
          arrow (x.args, Some (QClass cl))
      | Dynamic_method x ->
        fprintf oc "  external %s : %a"
          (lident name) arrow (("self", Value (QClass cl)) :: x.args, x.ret)
      | Static_method x ->
        fprintf oc "  external %s : %a"
          (lident name) arrow (x.args, x.ret)
      | Slot x ->
        fprintf oc "  external slot'%s : unit -> ([> %s], %a, %a) slot"
          (ident name) (QClass.ml_shadow_type (QClass.field_class cf))
          args_pos_tuple x.args
          args_pos_nested_tuple x.args
      | Signal x ->
        fprintf oc "  external signal'%s : unit -> ([> %s], %a, %a) signal"
          (ident name)
          (QClass.ml_shadow_type (QClass.field_class cf))
          args_neg_tuple x.args
          args_neg_nested_tuple x.args
    end;
    let noalloc = match desc with
      | Slot _ | Signal _ -> " [@@noalloc]"
      | _ -> ""
    in
    let symbol = QClass.c_field_base_symbol cf in
    if need_bc_wrapper cf then
      fprintf oc " = \"%s_bc\" \"%s\" %s\n" symbol symbol noalloc
    else
      fprintf oc " = \"%s\" %s\n" symbol noalloc

let output_fields oc cl =
  let rec aux = function
    | None -> ()
    | Some cl' ->
      aux (QClass.extends cl');
      QClass.iter_fields cl' (output_field oc cl)
  in
  aux (Some cl)

let output_type oc = function
  | QClass cl ->
    let super oc = function
      | None -> ()
      | Some cl ->
        fprintf oc " | %s" (QClass.ml_shadow_type cl)
    in
    fprintf oc "type %s = [%s%a]\n"
      (QClass.ml_shadow_type cl)
      (QClass.ml_shadow_variant cl)
      super (QClass.extends cl)
  | QEnum en ->
    let members = List.map QEnum.ml_member_constructor (QEnum.members en) in
    fprintf oc "type %s = [%s]\n"
      (QEnum.ml_type en)
      (String.concat "|" ("`Invalid_value of int" :: members))
  | QFlags fl ->
    fprintf oc "type %s = %s qflags\n"
      (QFlags.ml_type fl) (QFlags.ml_enum_type fl)
  | Custom c ->
    if c.ml_decl <> "" then
      fprintf oc "%s\n" c.ml_decl

let output_impl oc = function
  | QClass cl ->
    fprintf oc "module %s = struct\n" (QClass.ml_module cl);
    output_fields oc cl;
    fprintf oc "end\n"
  | QEnum _ -> ()
  | QFlags fl ->
    let typ = QFlags.ml_enum_type fl in
    fprintf oc "external %s : %s QFlags.primitive -> %s qflags = %S\n"
      (QFlags.ml_type fl) typ typ (QFlags.c_symbol fl)
  | Custom _ -> ()

let () =
  fprintf stdout "open Qt\n\n";
  Decl.iter_types (output_type stdout);
  Decl.iter_types (output_impl stdout);
