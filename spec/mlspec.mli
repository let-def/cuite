type qclass
type cfield
type qenum
type qflags

type type_kind = [ `By_ref | `By_val ]

type argument_modifier =
  [ `Direct
  | `Pointer
  | `Const
  | `Const_ref
  | `Ref
  | `Optional
  ]

type qtype =
  | QClass of qclass
  | QEnum  of qenum
  | QFlags of qflags
  | Custom of { ml_decl : string; ml_name : string; ml_negname : string;
                cpp_name : string; cpp_negname : string;
                cpp_kind : type_kind; cpp_default_mod : argument_modifier;
              }

val eq_typ : qtype -> qtype -> bool

type argument = {
  arg_name : string;
  arg_mod : argument_modifier;
  arg_typ : qtype;
}
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
  val custom_type : ?kind:type_kind -> ?modifier:argument_modifier ->
                    ?ml_decl:string -> ?ml_neg:string -> ?ml_name:string ->
                    ?cpp_neg:string -> string -> qtype
  val qtype_kind : qtype -> type_kind
  val qclass : ?kind:type_kind -> ?modifier:argument_modifier ->
               string -> qtype
  val qstruct : ?modifier:argument_modifier ->
               string -> qtype
  val qextends : string -> ?modifier:argument_modifier -> qtype -> qtype
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

  val qenum : string -> string -> string list -> qtype
  val qflags : qtype -> string -> qtype

  val arg' : argument_modifier -> string -> qtype -> argument
  val arg : ?modifier:argument_modifier -> string -> qtype -> argument
  val opt : string -> qtype -> argument

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
end

module QEnum : sig
  val ml_type : qenum -> string
  val cpp_type : qenum -> string
  val c_base_symbol : qenum -> string

  type member
  val ml_member_constructor : member -> string

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
