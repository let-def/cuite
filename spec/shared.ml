module Dlist : sig
  type 'a t
  val empty : unit -> 'a t
  val prepend : 'a t -> 'a -> unit
  val append : 'a t -> 'a -> unit
  val prepend_all : 'a t -> 'a list -> unit
  val append_all : 'a t -> 'a list -> unit
  val read : 'a t -> 'a list
  val iter : 'a t -> ('a -> unit) -> unit
end = struct
  type 'a t = {
    mutable head: 'a list;
    mutable tail: 'a list;
  }
  let empty () = { head = []; tail = [] }
  let prepend d x = d.head <- x :: d.head
  let append d x = d.tail <- x :: d.tail
  let prepend_all d x = d.head <- x @ d.head
  let append_all d x = d.tail <- List.rev_append x d.tail
  let read d = match d.tail with
    | [] -> d.head
    | items ->
      d.head <- d.head @ List.rev items;
      d.tail <- [];
      d.head
  let iter d f = List.iter f (read d)
end
type 'a dlist = 'a Dlist.t

let with_file name f =
  let file_exists = Sys.file_exists name in
  let name' =
    if file_exists then
      Filename.concat (Filename.dirname name) ("." ^ Filename.basename name)
    else name
  in
  let oc = open_out name' in
  let last_blank = ref true in
  let output_line line =
    let blank = line = "" in
    if not (!last_blank && blank) then (
      output_string oc line;
      output_char oc '\n'
    );
    last_blank := blank
  in
  let cleanup () =
    close_out_noerr oc;
    if file_exists then (
      let hash = Digest.file name in
      let hash' = Digest.file name' in
      if Digest.equal hash hash' then
        Sys.remove name'
      else
        Sys.rename name' name
    )
  in
  try
    let r = f output_line in
    cleanup ();
    r
  with exn ->
    cleanup ();
    raise exn

let print o fmt = Printf.ksprintf o fmt
let sprint = Printf.sprintf
let failwithf fmt = Printf.ksprintf failwith fmt

let c_mangle name =
  let b = Buffer.create (String.length name) in
  let need_delim = ref true in
  for i = 0 to String.length name - 1 do
    match name.[i] with
    | ':' | '<' | '>' ->
      if !need_delim then (
        Buffer.add_char b '_';
        need_delim := false;
      )
    | _ ->
      need_delim := true;
      Buffer.add_char b name.[i]
  done;
  Buffer.contents b

type qclass_def = {
  cl_direct: bool;
  cl_name: string;
  cl_converter: string option;
  cl_extend: qclass_def option;
  cl_fields: cfield dlist;
}

and qclass =
  { cl_const: bool; cl_qual: [`pointer | `ref | `optional]; cl: qclass_def }

and qtype =
  | QClass of qclass
  | QEnum of qenum
  | QFlags of qflags
  | Custom of {
      ml_decl : string;
      ml_posname : string;
      ml_negname : string;
      c_name : string;
      c_negname : string;
      c_from_ocaml: string -> string;
      c_to_ocaml: string -> string;
      c_check_use_after_free: (string -> string) option;
    }

and cfield =
  | Constructor of string * (string * qtype) list * bool
  | Dynamic_method of { ret: qtype option;
                        name: string;
                        args: (string * qtype) list;
                        kind: [`Normal | `Custom | `Protected] }
  | Static_method of qtype option * string * (string * qtype) list * bool
  | Signal of string * (string * qtype) list * bool
  | Slot of string * (string * qtype) list

and qenum = { ens : string; ename : string; emembers: string list; econverter: string }

and qflags = { fns : string; fname : string; fenum: qenum; fconverter: string }

let all_types = Dlist.empty ()

let eq_typ (typ : qtype) (typ' : qtype) =
  typ == typ' ||
  match typ, typ' with
  | QClass u , QClass v -> u == v
  | QEnum  u , QEnum  v -> u == v
  | QFlags u , QFlags v -> u == v
  | Custom u , Custom v ->
    u.ml_posname             == v.ml_posname &&
    u.ml_negname             == v.ml_negname &&
    u.c_name                 == v.c_name &&
    u.c_negname              == v.c_negname &&
    u.c_from_ocaml           == v.c_from_ocaml &&
    u.c_to_ocaml             == v.c_to_ocaml &&
    u.c_check_use_after_free == v.c_check_use_after_free
  | _ -> false

let eq_arg (_,t) (_,u) = eq_typ t u

let name_typ = function
  | QClass u -> u.cl.cl_name
  | QEnum  u -> u.ename
  | QFlags u -> u.fname
  | Custom u -> c_mangle u.c_name

let custom_type ?(decl="") ?(deletable=false) ?converter ?ml_pos ?ml_neg ?c_neg c_name =
  let ml_posname = match ml_pos with
    | None -> String.uncapitalize_ascii c_name
    | Some mltype -> mltype
  in
  let ml_negname = match ml_neg with
    | None -> ml_posname
    | Some mltype -> mltype
  in
  let c_ident = match converter with
    | None -> c_name
    | Some converter -> converter
  in
  let c_ident = c_mangle c_ident in
  let c_negname = match c_neg with
    | None -> c_name
    | Some c_neg -> c_neg
  in
  let t =
    Custom {
      ml_decl = decl;
      ml_posname; ml_negname; c_name; c_negname;
      c_from_ocaml = sprint "cuite_%s_from_ocaml(%s)" c_ident;
      c_to_ocaml = sprint "cuite_%s_to_ocaml(%s)" c_ident;
      c_check_use_after_free =
        if deletable then
          match converter with
          | None -> Some (sprint "cuite_qt_check_use(%s)")
          | Some c -> Some (sprint "cuite_%s_check_use(%s)" c_ident)
        else
          None
    }
  in
  if decl <> "" then Dlist.append all_types t;
  t

let qtype_name = function
  | QClass { cl; _ } -> cl.cl_name
  | QEnum  en -> en.ens ^ "::" ^ en.ename
  | QFlags fl -> fl.fns ^ "::" ^ fl.fname
  | Custom c -> c.c_name

let qclass_of_typ = function
  | QClass { cl; _ } -> cl
  | typ -> failwithf "Type %s is not a class" (qtype_name typ)

let qenum_of_typ = function
  | QEnum x -> x
  | typ -> failwithf "Type %s is not an enum" (qtype_name typ)

let qflags_of_typ = function
  | QFlags x -> x
  | typ -> failwithf "Type %s is not flags" (qtype_name typ)

let qclass ?(direct=false) ?converter ?extend cl_name =
  let cl_extend = match extend with
    | Some t ->
      let cl' = qclass_of_typ t in
      assert (direct = cl'.cl_direct);
      Some cl'
    | None -> None
  in
  let cl_converter = match converter, cl_extend with
    | Some c, _ -> Some (c_mangle c)
    | None, Some cl -> cl.cl_converter
    | None, None -> None
  in
  let cl_fields = Dlist.empty () in
  let cl = { cl_direct = direct; cl_name; cl_converter; cl_extend; cl_fields } in
  let cl = QClass { cl_const = false; cl_qual = `pointer; cl } in
  Dlist.append all_types cl;
  cl

let optional = function
  | QClass def -> QClass { def with cl_qual = `optional }
  | typ -> failwithf "optional: type %s is not a class" (qtype_name typ)

let reference = function
  | QClass def -> QClass { def with cl_qual = `ref }
  | typ -> failwithf "reference: type %s is not a class" (qtype_name typ)

let qstruct ?converter ?extend cl_name =
  reference (qclass ~direct:true ?extend ?converter cl_name)

let pointer = function
  | QClass def -> QClass { def with cl_qual = `pointer }
  | typ -> failwithf "pointer: type %s is not a class" (qtype_name typ)

let constructor ?(custom=false) name args ~cl =
  let cl = qclass_of_typ cl in
  Dlist.append cl.cl_fields (Constructor (name, args, custom))

let dynamic ?(kind=`Normal) ?ret name args ~cl =
  let cl = qclass_of_typ cl in
  let rec is_dup cl' =
    if List.exists (function
        | Dynamic_method meth ->
          name = meth.name &&
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
  Dlist.append cl.cl_fields (Dynamic_method {ret; name; args; kind})

let static ?(custom=false) ?ret name args ~cl =
  let cl = qclass_of_typ cl in
  Dlist.append cl.cl_fields (Static_method (ret, name, args, custom))

let slot ?ret ?(protected=false) name args ~cl =
  let cl = qclass_of_typ cl in
  Dlist.append cl.cl_fields (Slot (name, args));
  if not (protected ||
          (String.length name >= 3 &&
           name.[0] = '_' && name.[1] = 'q' && name.[2] = '_') ||
          List.exists (function
              | Dynamic_method meth ->
                name = meth.name &&
                List.length args = List.length meth.args &&
                List.for_all2 eq_arg args meth.args
              | _ -> false
            ) (Dlist.read cl.cl_fields))
  then
    Dlist.append cl.cl_fields (Dynamic_method {ret; name; args; kind = `Normal})

let signal ?(private_=false) name args ~cl =
  let cl = qclass_of_typ cl in
  Dlist.append cl.cl_fields (Signal (name, args, private_))

let with_class cl fields =
  List.iter (fun f -> f ~cl) fields

let arg name typ = name, typ

let int = custom_type "int"
let bool = custom_type "bool"
let float = custom_type ~ml_pos:"float" "double"

let ml_mangle name =
  let b = Buffer.create (String.length name) in
  let quote = ref false in
  for i = 0 to String.length name - 1 do
    match name.[i] with
    | ':' when !quote -> ()
    | ':' ->
      Buffer.add_char b '\'';
      quote := true;
    | c -> quote := false; Buffer.add_char b c
  done;
  Buffer.contents b

let ml_val_mangle name =
  String.uncapitalize_ascii (ml_mangle name)

let qenum ens ename emembers =
  let converter = c_mangle (ens ^ "::" ^ ename) in
  let t = QEnum { ens; ename; emembers; econverter = converter } in
  Dlist.append all_types t;
  t

let qflags fns fname qenum =
  let converter = c_mangle (fns ^ "::" ^ fname) in
  let t = QFlags { fns; fname; fenum = qenum_of_typ qenum; fconverter = converter } in
  Dlist.append all_types t;
  t

let const = function
  | Custom custom ->
    Custom {custom with c_negname = "const " ^ custom.c_name ^ "&"}
  | QClass def -> QClass {def with cl_const = true}
  | _ -> assert false

let unconst = function
  | QClass def -> QClass {def with cl_const = false}
  | _ -> assert false

let qString     = const (custom_type ~ml_pos:"string" "QString")
let string      = qString
let pchar       = custom_type ~ml_pos:"string" "pchar"
let nativeint   = custom_type ~ml_pos:"nativeint" "intnat"
let double      = float
let qreal       = float
let qint64      = custom_type ~ml_pos:"int64" "qint64"
let qRect       = custom_type "QRect"
let qRectF      = custom_type "QRectF"
let qPoint      = custom_type "QPoint"
let qPointF     = custom_type "QPointF"
let qSize       = const (custom_type "QSize")
let qSizeF      = const (custom_type "QSizeF")

let cl_converter cl =
  match cl.cl_converter with
  | None -> c_mangle cl.cl_name
  | Some conv -> conv

let qtype_c_from_ocaml qtype arg = match qtype with
  | QClass { cl_const; cl_qual; cl } ->
    sprint "(%s%s%scuite_%s_%sfrom_ocaml(%s)"
      cl.cl_name
      (if cl_const then " const " else "")
      (match cl_qual with
       | `optional | `pointer -> "*)"
       | `ref -> "&)*")
      (cl_converter cl)
      (match cl_qual with `optional -> "option_" | _ -> "")
      arg
  | QEnum en ->
    sprint "cuite_%s_from_ocaml(%s)" (c_mangle (en.ens ^ "::" ^ en.ename)) arg
  | QFlags fl ->
    sprint "cuite_%s_from_ocaml(%s)" (c_mangle (fl.fns ^ "::" ^ fl.fname)) arg
  | Custom t -> t.c_from_ocaml arg

let qtype_c_to_ocaml qtype arg = match qtype with
  | QClass { cl_const; cl_qual = `ref; cl } ->
    sprint "cuite_lift_ref(&cuite_%s_to_ocaml, %s)"
      (cl_converter cl)
      arg
  | QClass { cl_const; cl_qual; cl } ->
    sprint "cuite_%s_%sto_ocaml(%s)"
      (cl_converter cl)
      (match cl_qual with `optional -> "option_" | _ -> "")
      arg
  | QEnum en ->
    sprint "cuite_%s_to_ocaml(%s)" (c_mangle (en.ens ^ "::" ^ en.ename)) arg
  | QFlags fl ->
    sprint "cuite_%s_to_ocaml(%s)" (c_mangle (fl.fns ^ "::" ^ fl.fname)) arg
  | Custom t -> t.c_to_ocaml arg

let qtype_c_negname qtype = match qtype with
  | QClass { cl_const; cl_qual; cl } ->
    sprint "%s%s%s"
      (if cl_const then "const " else "")
      cl.cl_name
      (match cl_qual with `pointer | `optional -> "*" | `ref -> "&")
  | QEnum en -> en.ens ^ "::" ^ en.ename
  | QFlags fl -> fl.fns ^ "::" ^ fl.fname
  | Custom t -> t.c_negname

let qtype_ml_posname qtype = match qtype with
  | QClass { cl_qual = (`pointer | `ref); cl; _ } ->
    sprint "%s qt" (String.uncapitalize_ascii cl.cl_name)
  | QClass { cl_qual = `optional; cl; _ } ->
    sprint "%s qt option" (String.uncapitalize_ascii cl.cl_name)
  | QEnum en -> ml_val_mangle (en.ens ^ "::" ^ en.ename)
  | QFlags fl -> ml_val_mangle (fl.fns ^ "::" ^ fl.fname)
  | Custom t -> t.ml_posname

let qtype_ml_negname qtype = match qtype with
  | QClass { cl_qual = (`pointer | `ref); cl; _ } ->
    sprint "[> %s] qt" (String.uncapitalize_ascii cl.cl_name)
  | QClass { cl_qual = `optional; cl; _ } ->
    sprint "[> %s] qt option" (String.uncapitalize_ascii cl.cl_name)
  | QEnum en -> ml_val_mangle (en.ens ^ "::" ^ en.ename)
  | QFlags fl -> ml_val_mangle (fl.fns ^ "::" ^ fl.fname)
  | Custom t -> t.ml_negname

let qtype_c_check_use_after_free o qtype var =
  match qtype with
  | QClass { cl_qual = (`pointer | `ref); cl; _ } ->
    print o "  CHECK_USE_AFTER_FREE(cuite_%s_check_use(%s));" (cl_converter cl) var
  | QClass { cl_qual = `optional; cl; _ } ->
    print o "  CHECK_USE_AFTER_FREE(cuite_%s_option_check_use(%s));" (cl_converter cl) var
  | QEnum _ -> ()
  | QFlags _ -> ()
  | Custom t -> (
      match t.c_check_use_after_free with
      | None -> ()
      | Some fn -> print o "  CHECK_USE_AFTER_FREE(%s);" (fn var)
    )

let cl_c_name cl = cl.cl_name
let cl_fs_name cl = c_mangle cl.cl_name
let cl_ml_name cl = ml_val_mangle cl.cl_name
let cl_Ml_name cl = String.capitalize_ascii (ml_val_mangle cl.cl_name)

let rec list_filter_map f = function
  | [] -> []
  | x :: xs -> match f x with
    | None -> list_filter_map f xs
    | Some y -> y :: list_filter_map f xs
