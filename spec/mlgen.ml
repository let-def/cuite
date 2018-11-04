open Mlspec

let fprintf = Printf.fprintf

let is_keyword = function
  | "type"  | "open"   | "match"
  | "class" | "object" | "method"
  | "begin" | "end"    | "done" -> true
  | _ -> false

let protect_keyword s =
  if is_keyword s then s ^ "_" else s

let mangle escape_char s =
  let is_valid = function
    | 'a'..'z' | 'A'..'Z' | '0'..'9' -> true
    | _ -> false
  in
  if is_keyword s then s ^ "_" else (
    match String.iter (fun c -> if not (is_valid c) then raise Exit) s with
    | () -> s
    | exception Exit ->
      let b = Buffer.create (String.length s) in
      let escaped = ref false in
      String.iter (fun c ->
          if is_valid c then (
            escaped := false;
            Buffer.add_char b c
          ) else if not !escaped then (
            escaped := true;
            Buffer.add_char b escape_char
          )
        ) s;
      Buffer.contents b
  )

let lident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'a'..'z' | '_' -> s
  | 'A'..'Z' -> String.uncapitalize_ascii s
  | _ -> "q" ^ s

let uident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'A'..'Z' -> s
  | 'a'..'z' -> String.capitalize_ascii s
  | _ -> "Q" ^ s

let ident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'A'..'Z' | 'a'..'z' | '_' -> s
  | _ -> "q" ^ s

let cident s = mangle '_' s

module QClass : sig
  val c_symbol_name : qclass -> string
  val ml_module : qclass -> string
  val ml_shadow_type : qclass -> string
  val ml_shadow_variant : qclass -> string
  val ml_qt_type : qclass -> string
end = struct
  let ml_module cl =
    uident cl.cl_name

  let ml_shadow_type cl =
    lident cl.cl_name

  let ml_shadow_variant cl =
    "`" ^ ident cl.cl_name

  let ml_qt_type cl =
    ml_shadow_type cl ^ " t"

  let c_symbol_name cl =
    cident cl.cl_name
end

module QEnum : sig
  val ml_type : qenum -> string
end = struct
  let ml_type qe =
    lident qe.enamespace ^ "'" ^ ident qe.ename
end

module QFlags : sig
  val ml_type : qflags -> string
  val ml_enum_type : qflags -> string
end = struct
  let ml_type qf =
    lident qf.fenum.enamespace ^ "'" ^ ident qf.fname
  let ml_enum_type qf =
    QEnum.ml_type qf.fenum
end

module Mangle : sig
  val cfield : cfield -> string
  val qflags_def : qflags -> string
end = struct
  let cfield_desc cf =
    match cf.desc with
    | Constructor    _ -> "new"
    | Dynamic_method _ -> "dyn"
    | Static_method  _ -> "sta"
    | Slot           _ -> "slot"
    | Signal         _ -> "signal"

  let cfield_id =
    let table = Hashtbl.create 7 in
    fun cfield ->
      try Hashtbl.find table cfield
      with Not_found ->
        let counters = Hashtbl.create 7 in
        let register cfield0 =
          let key = (cfield0.name, cfield_desc cfield0) in
          let r0 =
            match Hashtbl.find counters key with
            | r -> let r' = !r in incr r; r'
            | exception Not_found ->
              let r = ref 1 in
              Hashtbl.add counters key r;
              0
          in
          Hashtbl.add table cfield0 r0
        in
        Dlist.iter cfield.clss.cl_fields register;
        try Hashtbl.find table cfield
        with Not_found -> assert false

  let cfield cf =
    Printf.sprintf "cuite_%s_%s_%s%d"
      (QClass.c_symbol_name cf.clss) (cfield_desc cf) cf.name (cfield_id cf)

  let qflags_def fl =
    Printf.sprintf "cuite_flg_%s_%s"
      (String.uncapitalize_ascii fl.fenum.enamespace) fl.fname
end

let ml_postype oc = function
  | QClass cl -> fprintf oc "%s" (QClass.ml_qt_type cl)
  | QEnum en  -> fprintf oc "%s" (QEnum.ml_type en)
  | QFlags fl -> fprintf oc "%s" (QFlags.ml_type fl)
  | Custom x  -> fprintf oc "%s" x.ml_name

let ml_negtype oc = function
  | QClass cl -> fprintf oc "[> %s] t" (QClass.ml_shadow_type cl)
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

let output_field oc cl = function
  | { desc = Constructor x; clss; _ } when clss != cl -> ()
  | cf ->
    begin match cf.desc with
      | Constructor x ->
        fprintf oc "  external new'%s : %a"
          (if cf.name = "" then "" else ident cf.name)
          arrow (x.args, Some (QClass cl))
      | Dynamic_method x ->
        fprintf oc "  external %s : %a"
          (lident cf.name) arrow (("self", Value (QClass cl)) :: x.args, x.ret)
      | Static_method x ->
        fprintf oc "  external %s : %a"
          (lident cf.name) arrow (x.args, x.ret)
      | Slot x ->
        fprintf oc "  external slot'%s : unit -> ([> %s], %a, %a) slot"
          (ident cf.name) (QClass.ml_shadow_type cf.clss)
          args_pos_tuple x.args
          args_pos_nested_tuple x.args
      | Signal x ->
        fprintf oc "  external signal'%s : unit -> ([> %s], %a, %a) signal"
          (ident cf.name)
          (QClass.ml_shadow_type cf.clss)
          args_neg_tuple x.args
          args_neg_nested_tuple x.args
    end;
    let noalloc =
      match cf.desc with
      | Slot _ | Signal _ -> " [@@noalloc]"
      | _ -> ""
    in
    fprintf oc " = %S%s\n" (Mangle.cfield cf) noalloc

let output_fields oc cl =
  let rec aux = function
    | None -> ()
    | Some cl' ->
      aux cl'.cl_extend;
      Dlist.iter cl'.cl_fields (output_field oc cl)
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
      super cl.cl_extend
  | QEnum en ->
    let members oc = function
      | [] -> assert false
      | x :: xs ->
        fprintf oc "`%s" x;
        List.iter (fprintf oc "| `%s") xs
    in
    fprintf oc "type %s = [%a]\n"
      (QEnum.ml_type en) members en.emembers
  | QFlags fl ->
    fprintf oc "type %s = %s qflags\n"
      (QFlags.ml_type fl) (QFlags.ml_enum_type fl)
  | Custom _ -> ()

let output_impl oc = function
  | QClass cl ->
    fprintf oc "module %s = struct\n" (QClass.ml_module cl);
    output_fields oc cl;
    fprintf oc "end\n"
  | QEnum _ -> ()
  | QFlags fl ->
    fprintf oc "external %s : %s QFlags.set -> QFlags.opaque = %S\n"
      (QFlags.ml_type fl) (QFlags.ml_enum_type fl) (Mangle.qflags_def fl)
  | Custom _ -> ()

let () =
  fprintf stdout "open Qt\n\n";
  Dlist.iter all_types (output_type stdout);
  Dlist.iter all_types (output_impl stdout);
