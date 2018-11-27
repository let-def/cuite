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

let output_field oc mlnames cl cf =
  match QClass.field_desc cf with
  | Constructor _ when QClass.field_class cf != cl -> ()
  | desc ->
    let name = QClass.field_name cf in
    let suffix =
      let noalloc = match desc with
        | Slot _ | Signal _ -> " [@@noalloc]"
        | _ -> ""
      in
      let symbol = QClass.c_field_base_symbol cf in
      if QClass.need_bc_wrapper cf then
        sprintf "= \"%s_bc\" \"%s\" %s\n" symbol symbol noalloc
      else
        sprintf "= \"%s\" %s\n" symbol noalloc
    in
    begin match desc with
      | Constructor x ->
        let name = if name = "" then "" else ident name in
        mlnames ["new"; name] x.args @@ fun mlname ->
        println oc "  external %s : %a %s"
          mlname arrow (x.args, Some (Decl.typ (QClass cl))) suffix
      | Dynamic_method x ->
        mlnames [lident name] x.args @@ fun mlname ->
        println oc "  external %s : %a %s"
          mlname arrow (Decl.arg "self" (QClass cl) :: x.args, x.ret) suffix
      | Static_method x ->
        mlnames [lident name] x.args @@ fun mlname ->
        println oc "  external %s : %a %s"
          mlname arrow (x.args, x.ret) suffix
      | Slot x ->
        mlnames ["slot"; ident name] x.args @@ fun mlname ->
        println oc "  external %s : unit -> ([> %s], %a, %a) slot %s"
          mlname
          (QClass.ml_shadow_type (QClass.field_class cf))
          args_pos_tuple x.args
          args_pos_nested_tuple x.args
          suffix
      | Signal x ->
        mlnames ["signal"; ident name] x.args @@ fun mlname ->
        println oc "  external %s : unit -> ([> %s], %a, %a) signal %s"
          mlname
          (QClass.ml_shadow_type (QClass.field_class cf))
          args_neg_tuple x.args
          args_neg_nested_tuple x.args
          suffix
    end

let output_fields oc cl =
  let table = Hashtbl.create 7 in
  let generate_mlnames path args f =
    let arg_name (_,typ) = Mangle.ident (Decl.mlname_type typ.typ_def) in
    let args = List.map arg_name args in
    let escape_keyword = function
      | "new" -> "new'"
      | x -> x
    in
    let names =
      [path; path @ ("from" :: args)]
      |> List.map (String.concat "'")
      |> List.map escape_keyword
      |> List.filter (fun x -> not (Hashtbl.mem table x))
    in
    List.iter (fun x -> Hashtbl.add table x ()) names;
    List.iter f names
  in
  let rec aux = function
    | None -> ()
    | Some cl' ->
      QClass.iter_fields cl' (output_field oc generate_mlnames cl);
      aux (QClass.extends cl')
  in
  aux (Some cl)

let output_type oc = function
  | QClass cl ->
    let super oc = function
      | None -> ()
      | Some cl ->
        fprintf oc " | %s" (QClass.ml_shadow_type cl)
    in
    println oc "type %s = [%s%a]"
      (QClass.ml_shadow_type cl)
      (QClass.ml_shadow_variant cl)
      super (QClass.extends cl)
  | QEnum en ->
    let members = List.map QEnum.ml_member_constructor (QEnum.members en) in
    println oc "type %s = [%s]"
      (QEnum.ml_type en)
      (String.concat "|" ("`Invalid_value of int" :: members))
  | QFlags fl ->
    println oc "type %s = %s qflags"
      (QFlags.ml_type fl) (QFlags.ml_enum_type fl)
  | Custom c ->
    if c.ml_decl <> "" then
      println oc "%s" c.ml_decl

let output_impl oc = function
  | QClass cl ->
    println oc "module %s = struct" (QClass.ml_module cl);
    output_fields oc cl;
    println oc "end"
  | QEnum _ -> ()
  | QFlags fl ->
    let typ = QFlags.ml_enum_type fl in
    println oc "external %s : %s QFlags.primitive -> %s qflags = %S"
      (QFlags.ml_type fl) typ typ (QFlags.c_symbol fl)
  | Custom _ -> ()

let () =
  println stdout "open Qt";
  println stdout "";
  Decl.iter_types (output_type stdout);
  Decl.iter_types (output_impl stdout);
