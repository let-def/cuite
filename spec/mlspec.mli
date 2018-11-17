type qclass
type cfield
type qenum
type qflags

type qtype =
  | QClass of qclass
  | QEnum  of qenum
  | QFlags of qflags
  | Custom of { ml_decl : string; ml_name : string; ml_negname : string }
val eq_typ : qtype -> qtype -> bool

type argument_type = Value of qtype | Optional of qtype
type argument = string * argument_type
val eq_arg : argument -> argument -> bool

type cfield_desc =
  | Constructor of { args: argument list; custom: bool }
  | Dynamic_method of { ret: qtype option; args: argument list;
                        kind: [`Normal | `Custom | `Protected] }
  | Static_method of { ret: qtype option; args: argument list; custom: bool }
  | Signal of { args: argument list; private_: bool }
  | Slot of { args: argument list }

module Decl : sig
  val mlname_type : qtype -> string
  val custom_type : ?decl:string -> ?ml_neg:string -> ?cpp_name:'b -> string -> qtype
  val qtype_name : qtype -> string
  val qclass_of_typ : qtype -> qclass
  val qenum_of_typ : qtype -> qenum
  val qflags_of_typ : qtype -> qflags
  val qclass : ?extend:qtype -> string -> qtype
  val constructor : ?custom:bool -> string -> argument list -> cl:qtype -> unit
  val dynamic :
    ?kind:[ `Custom | `Normal | `Protected ] ->
    ?ret:qtype -> string -> argument list -> cl:qtype -> unit
  val static :
    ?custom:bool -> ?ret:qtype -> string -> argument list -> cl:qtype -> unit
  val slot :
    ?ret:qtype ->
    ?protected:bool -> string -> argument list -> cl:qtype -> unit
  val signal : ?private_:bool -> string -> argument list -> cl:qtype -> unit
  val with_class : 'a -> (cl:'a -> unit) list -> unit
  val arg : 'a -> qtype -> 'a * argument_type
  val opt : 'a -> qtype -> 'a * argument_type

  val qenum : string -> string -> string list -> qtype
  val qflags : qtype -> string -> qtype

  val int : qtype
  val bool : qtype
  val float : qtype
  val qString : qtype
  val string : qtype
  val pchar : qtype
  val nativeint : qtype
  val double : qtype
  val qreal : qtype
  val qint64 : qtype
  val qRect : qtype
  val qRectF : qtype
  val qPoint : qtype
  val qPointF : qtype
  val qSize : qtype
  val qSizeF : qtype

  val iter_types : (qtype -> unit) -> unit
end

module QClass : sig
  val extends : qclass -> qclass option
  val iter_fields : qclass -> (cfield -> unit) -> unit

  val ml_module : qclass -> string
  val ml_shadow_type : qclass -> string
  val ml_shadow_variant : qclass -> string

  val c_base_symbol : qclass -> string

  val c_field_base_symbol : cfield -> string
  val field_class : cfield -> qclass
  val field_desc : cfield -> cfield_desc
  val field_name : cfield -> string

  val stub_arity : cfield -> int option
  val need_bc_wrapper : cfield -> bool
end

module QEnum : sig
  val c_type : qenum -> string
  val ml_type : qenum -> string

  type member
  val ml_member_constructor : member -> string

  val members : qenum -> member list

  (*val cpp_namespace : qenum -> string
    val cpp_member : qmember -> string*)
  val cpp_qualified_member : member -> string
end

module QFlags : sig
  val enum : qflags -> qenum
  val ml_type : qflags -> string
  val ml_enum_type : qflags -> string
  val c_symbol : qflags -> string
end
