type qclass
type cfield
type qenum
type qflags

type type_kind = [ `By_ref | `By_val ]

type type_mod =
  [ `Direct
  | `Pointer
  | `Const
  | `Const_ref
  | `Ref
  | `Optional
  ]

type qtype_def =
  | QClass of qclass
  | QEnum  of qenum
  | QFlags of qflags
  | Custom of { ml_decl : string; ml_name : string; ml_negname : string;
                cpp_name : string; cpp_kind : type_kind;
                cpp_default_mod : type_mod;
              }

type qtype = { typ_mod : type_mod; typ_def : qtype_def }

val eq_typdef : qtype_def -> qtype_def -> bool
val eq_typ : qtype -> qtype -> bool

type argument = string * qtype
val compatible_arg : argument -> argument -> bool

type cfield_desc =
  | Constructor of { args: argument list; custom: bool }
  | Dynamic_method of { ret: qtype option; args: argument list;
                        kind: [`Normal | `Custom | `Protected] }
  | Static_method of { ret: qtype option; args: argument list; custom: bool }
  | Signal of { args: argument list; private_: bool }
  | Slot of { args: argument list }

type version = int * int * int

module Decl : sig
  val typ : ?modifier:type_mod -> qtype_def -> qtype
  val mlname_type : qtype_def -> string
  val custom_type : ?version:version -> ?kind:type_kind -> ?modifier:type_mod ->
    ?ml_decl:string -> ?ml_neg:string -> ?ml_name:string ->
    string -> qtype_def
  val qtype_kind : qtype_def -> type_kind
  val qclass : ?version:version -> ?kind:type_kind -> ?modifier:type_mod ->
               string -> qtype_def
  val qstruct : ?version:version -> ?modifier:type_mod ->
                string -> qtype_def
  val qextends : ?version:version -> string -> ?modifier:type_mod ->
                  qtype_def -> qtype_def
  val constructor : ?version:version -> ?custom:bool ->
                    string -> argument list -> cl:qtype_def -> unit
  val dynamic :
    ?version:version ->
    ?kind:[ `Custom | `Normal | `Protected ] ->
    ?ret:qtype_def -> ?ret_mod:type_mod ->
    string -> argument list -> cl:qtype_def -> unit
  val static :
    ?version:version -> ?custom:bool -> ?ret:qtype_def -> ?ret_mod:type_mod ->
    string -> argument list -> cl:qtype_def -> unit
  val slot :
    ?version:version -> ?ret:qtype_def -> ?ret_mod:type_mod ->
    ?protected:bool -> string -> argument list -> cl:qtype_def -> unit
  (*?ret:qtype_def ->*)
  val signal :
    ?version:version ->
    ?private_:bool -> string -> argument list -> cl:qtype_def -> unit

  val with_class : 'a -> (cl:'a -> unit) list -> unit

  val qenum : ?version:version -> string -> string -> ?versioned:(version * string list) list -> string list -> qtype_def
  val qflags : ?version:version -> qtype_def -> string -> qtype_def

  val arg' : type_mod -> string -> qtype_def -> argument
  val arg : ?modifier:type_mod -> string -> qtype_def -> argument
  val opt : string -> qtype_def -> argument

  val int : qtype_def
  val bool : qtype_def
  val float : qtype_def
  val qString : qtype_def
  val string : qtype_def
  val pchar : qtype_def
  val nativeint : qtype_def
  val double : qtype_def
  val qreal : qtype_def
  val qint64 : qtype_def
  val qRect : qtype_def
  val qRectF : qtype_def
  val qPoint : qtype_def
  val qPointF : qtype_def
  val qSize : qtype_def
  val qSizeF : qtype_def

  val iter_types : (qtype_def -> unit) -> unit
end

module QClass : sig
  val kind : qclass -> [`By_ref | `By_val]
  val extends : qclass -> qclass option
  val iter_fields : qclass -> (cfield -> unit) -> unit

  val ml_module : qclass -> string
  val ml_shadow_type : qclass -> string
  val ml_shadow_variant : qclass -> string

  val cpp_type : qclass -> string
  val c_base_symbol : qclass -> string

  val c_field_base_symbol : cfield -> string
  val field_class : cfield -> qclass
  val field_desc : cfield -> cfield_desc
  val field_name : cfield -> string

  val stub_arity : cfield -> int option
  val need_bc_wrapper : cfield -> bool
  val is_QObject : qclass -> bool
end

module QEnum : sig
  val ml_type : qenum -> string
  val cpp_type : qenum -> string
  val c_base_symbol : qenum -> string

  type member
  val ml_member_constructor : member -> string
  val ml_member_hash : member -> int

  val members : qenum -> member list

  (*val cpp_namespace : qenum -> string
    val cpp_member : qmember -> string*)
  val cpp_qualified_member : member -> string
end

module QFlags : sig
  val enum : qflags -> qenum
  val cpp_type : qflags -> string
  val ml_type : qflags -> string
  val ml_enum_type : qflags -> string
  val c_symbol : qflags -> string
end
