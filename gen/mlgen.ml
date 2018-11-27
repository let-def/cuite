open Utils
open Mlspec
open Mangle

(* TODO
   - replace "Invalid_value"/fallback by some abstraction
   - ...
*)

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

let ml_argtype oc (_,typ) =
  match typ.typ_mod with
  | `Optional ->
    fprintf oc "%a option" ml_negtype typ.typ_def
  | `Direct | `Const_ref | `Const | `Pointer ->
    fprintf oc "%a" ml_negtype typ.typ_def
  | `Ref -> failwith "ml_argtype: TODO"

let ml_argpostype oc (_,typ) =
  match typ.typ_mod with
  | `Optional ->
    fprintf oc "%a option" ml_postype typ.typ_def
  | `Direct | `Const_ref | `Const | `Pointer ->
    fprintf oc "%a" ml_postype typ.typ_def
  | `Ref -> failwith "ml_argpostype: TODO"

let arrow oc (lhs, rhs) =
  begin match lhs with
    | [] -> fprintf oc "unit -> "
    | fields -> List.iter (fprintf oc "%a -> " ml_argtype) fields
  end;
  begin match rhs with
    | None -> fprintf oc "unit"
    | Some x -> ml_argpostype oc ("",x)
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

let output_field oc uniq cl cf =
  match QClass.field_desc cf with
  | Constructor _ when QClass.field_class cf != cl -> ()
  | desc ->
    let name = QClass.field_name cf in
    begin match desc with
      | Constructor x ->
        fprintf oc "  external %s : %a"
          (uniq "new'" (if name = "" then "" else ident name) x.args)
          arrow (x.args, Some (Decl.typ (QClass cl)))
      | Dynamic_method x ->
        fprintf oc "  external %s : %a"
          (uniq "" (lident name) x.args)
          arrow (Decl.arg "self" (QClass cl) :: x.args, x.ret)
      | Static_method x ->
        fprintf oc "  external %s : %a"
          (uniq "" (lident name) x.args)
          arrow (x.args, x.ret)
      | Slot x ->
        fprintf oc "  external %s : unit -> ([> %s], %a, %a) slot"
          (uniq "slot'" (ident name) x.args)
          (QClass.ml_shadow_type (QClass.field_class cf))
          args_pos_tuple x.args
          args_pos_nested_tuple x.args
      | Signal x ->
        fprintf oc "  external %s : unit -> ([> %s], %a, %a) signal"
          (uniq "signal'" (ident name) x.args)
          (QClass.ml_shadow_type (QClass.field_class cf))
          args_neg_tuple x.args
          args_neg_nested_tuple x.args
    end;
    let noalloc = match desc with
      | Slot _ | Signal _ -> " [@@noalloc]"
      | _ -> ""
    in
    let symbol = QClass.c_field_base_symbol cf in
    if QClass.need_bc_wrapper cf then
      fprintf oc " = \"%s_bc\" \"%s\" %s\n" symbol symbol noalloc
    else
      fprintf oc " = \"%s\" %s\n" symbol noalloc

let output_fields oc cl =
  let table = Hashtbl.create 7 in
  let uniq pre name args =
    let base = pre ^ name in
    if Hashtbl.mem table base then
      String.concat "'"
        (base :: "from" ::
         List.map
           (fun (_,typ) -> Mangle.ident (Decl.mlname_type typ.typ_def))  args)
    else (
      Hashtbl.add table base ();
      base
    )
  in
  let rec aux = function
    | None -> ()
    | Some cl' ->
      aux (QClass.extends cl');
      QClass.iter_fields cl' (output_field oc uniq cl)
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
