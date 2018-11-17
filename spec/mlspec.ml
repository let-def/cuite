type 'a dlist = 'a Dlist.t

let failwithf fmt =
  Printf.ksprintf failwith fmt

type qclass_def = {
  cl_name: string;
  cl_extend: qclass_def option;
  cl_fields: cfield dlist;
}

and qenum_def = {
  enamespace: string;
  ename: string;
  emembers: string list;
}

and qflags_def = {
  fname: string;
  fenum: qenum;
}

and qclass = qclass_def
and qenum  = qenum_def
and qflags = qflags_def

and argument_type =
  | Value of qtype
  | Optional of qtype

and argument = string * argument_type

and qtype =
  | QClass of qclass
  | QEnum  of qenum
  | QFlags of qflags
  | Custom of { ml_decl : string; ml_name : string; ml_negname : string }

and cfield = {
  clss: qclass_def;
  name: string;
  desc: cfield_desc;
}

and cfield_desc =
  | Constructor of { args: argument list; custom: bool }
  | Dynamic_method of { ret: qtype option; args: argument list;
                        kind: [`Normal | `Custom | `Protected] }
  | Static_method of { ret: qtype option; args: argument list; custom: bool }
  | Signal of { args: argument list; private_: bool }
  | Slot of { args: argument list }

let eq_typ (typ : qtype) (typ' : qtype) =
  typ == typ' ||
  match typ, typ' with
  | QClass u , QClass v -> u == v
  | QEnum  u , QEnum  v -> u == v
  | QFlags u , QFlags v -> u == v
  | Custom u , Custom v -> u.ml_name = v.ml_name && u.ml_negname = v.ml_negname
  | _ -> false

let eq_arg (_,t : argument) (_,u : argument) =
  match t, u with
  | Value t, Value u -> eq_typ t u
  | Optional t, Optional u -> eq_typ t u
  | _ -> false

module Decl = struct
  let all_types = Dlist.empty ()
  let iter_types f = Dlist.iter all_types f

  let mlname_type = function
    | QClass u -> u.cl_name
    | QEnum  u -> u.ename
    | QFlags u -> u.fname
    | Custom u -> u.ml_name

  let custom_type ?(decl="") ?ml_neg ?cpp_name ml_name =
    let ml_negname = match ml_neg with
      | None -> ml_name
      | Some mltype -> mltype
    in
    let t = Custom { ml_decl = decl; ml_name; ml_negname } in
    Dlist.append all_types t;
    t

  let qtype_name = function
    | QClass cl -> cl.cl_name
    | QEnum  en -> en.enamespace ^ "::" ^ en.ename
    | QFlags fl -> fl.fenum.enamespace ^ "::" ^ fl.fname
    | Custom c  -> c.ml_name

  let qclass_of_typ = function
    | QClass cl -> cl
    | typ -> failwithf "Type %s is not a class" (qtype_name typ)

  let qenum_of_typ = function
    | QEnum x -> x
    | typ -> failwithf "Type %s is not an enum" (qtype_name typ)

  let qflags_of_typ = function
    | QFlags x -> x
    | typ -> failwithf "Type %s is not flags" (qtype_name typ)

  let qclass ?extend cl_name =
    let cl_extend = match extend with
      | Some t ->
        let cl' = qclass_of_typ t in
        Some cl'
      | None -> None
    in
    let cl_fields = Dlist.empty () in
    let cl = QClass { cl_name; cl_extend; cl_fields } in
    Dlist.append all_types cl;
    cl

  let constructor ?(custom=false) name args ~cl =
    let cl = qclass_of_typ cl in
    Dlist.append cl.cl_fields
      {clss = cl; name; desc = Constructor {args; custom}}

  let dynamic ?(kind=`Normal) ?ret name args ~cl =
    let cl = qclass_of_typ cl in
    let rec is_dup cl' =
      if List.exists (function
          | { name = name'; desc = Dynamic_method meth} ->
            name = name' &&
            (match ret, meth.ret with
             | None, None -> true
             | Some t, Some t' -> eq_typ t t'
             | _ -> false) &&
            List.length args = List.length meth.args &&
            List.for_all2 eq_arg args meth.args
          | _ -> false
        ) (Dlist.read cl'.cl_fields)
      then prerr_endline ("Duplicate method: {" ^ cl'.cl_name ^ "," ^ cl.cl_name ^ "}::" ^ name)
      else match cl'.cl_extend with
        | None -> ()
        | Some cl' -> is_dup cl'
    in
    is_dup cl;
    Dlist.append cl.cl_fields
      {clss = cl; name; desc = Dynamic_method {ret; args; kind}}

  let static ?(custom=false) ?ret name args ~cl =
    let cl = qclass_of_typ cl in
    Dlist.append cl.cl_fields
      {clss = cl; name; desc = Static_method {ret; args; custom}}

  let slot ?ret ?(protected=false) name args ~cl =
    let cl = qclass_of_typ cl in
    Dlist.append cl.cl_fields
      {clss = cl; name; desc = Slot {args}};
    if not (protected ||
            (String.length name >= 3 &&
             name.[0] = '_' && name.[1] = 'q' && name.[2] = '_') ||
            List.exists (function
                | {name = name'; desc = Dynamic_method meth} ->
                  name = name' &&
                  List.length args = List.length meth.args &&
                  List.for_all2 eq_arg args meth.args
                | _ -> false
              ) (Dlist.read cl.cl_fields))
    then
      Dlist.append cl.cl_fields
        {clss = cl; name; desc = Dynamic_method {ret; args; kind = `Normal}}

  let signal ?(private_=false) name args ~cl =
    let cl = qclass_of_typ cl in
    Dlist.append cl.cl_fields
      {clss = cl; name; desc = Signal {args; private_}}

  let with_class cl fields =
    List.iter (fun f -> f ~cl) fields

  let arg name typ = (name, Value typ)
  let opt name typ = (name, Optional typ)

  let int = custom_type "int"
  let bool = custom_type "bool"
  let float = custom_type "float"

  let qenum enamespace ename emembers =
    let t = QEnum {enamespace; ename; emembers} in
    Dlist.append all_types t;
    t

  let qflags qenum fname =
    let t = QFlags { fname; fenum = qenum_of_typ qenum } in
    Dlist.append all_types t;
    t

  let qString     = custom_type "string"
  let string      = qString
  let pchar       = custom_type "string"
  let nativeint   = custom_type "nativeint"
  let double      = float
  let qreal       = float
  let qint64      = custom_type "int64"
  let qRect       = custom_type "qRect"
  let qRectF      = custom_type "qRectF"
  let qPoint      = custom_type "qPoint"
  let qPointF     = custom_type "qPointF"
  let qSize       = custom_type "qSize"
  let qSizeF      = custom_type "qSizeF"
end

open Mangle

module QClass = struct
  let extends cl =
    cl.cl_extend

  let iter_fields cl f =
    Dlist.iter cl.cl_fields f

  let ml_module cl =
    uident cl.cl_name

  let ml_shadow_type cl =
    lident cl.cl_name

  let ml_shadow_variant cl =
    "`" ^ ident cl.cl_name

  let c_base_symbol cl =
    cident cl.cl_name

  let c_field_base_symbol =
    let cfield_desc cf =
      match cf.desc with
      | Constructor    _ -> "new"
      | Dynamic_method _ -> "dyn"
      | Static_method  _ -> "sta"
      | Slot           _ -> "slot"
      | Signal         _ -> "signal"
    in
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
    in
    fun cf ->
      Printf.sprintf "cuite_%s_%s_%s%d"
        (c_base_symbol cf.clss) (cfield_desc cf) cf.name (cfield_id cf)

  let field_class cf = cf.clss
  let field_desc cf = cf.desc
  let field_name cf = cf.name

  let stub_arity cf =
    match field_desc cf with
    | Constructor { args; _ } | Static_method { args; _ }  ->
      Some (List.length args)
    | Dynamic_method { args; _ } ->
      Some (List.length args + 1)
    | _ -> None

  let need_bc_wrapper cf =
    match stub_arity cf with
    | Some n -> n > 5
    | None -> false
end

module QEnum = struct
  let c_type qe =
    qe.enamespace ^ "::" ^ qe.ename

  let ml_type qe =
    lident qe.enamespace ^ "'" ^ ident qe.ename

  type member = qenum * string

  let members qe =
    List.map (fun mem -> (qe, mem)) qe.emembers

  let ml_member_constructor (_,x) = "`" ^ ident x

  let cpp_qualified_member (qe, mem) =
    qe.enamespace ^ "::" ^ mem

end

module QFlags = struct
  let enum qf = qf.fenum

  let ml_type qf =
    lident qf.fenum.enamespace ^ "'" ^ ident qf.fname

  let ml_enum_type qf =
    QEnum.ml_type qf.fenum

  let c_symbol fl =
    Printf.sprintf "cuite_flg_%s_%s"
      (String.uncapitalize_ascii fl.fenum.enamespace) fl.fname
end
