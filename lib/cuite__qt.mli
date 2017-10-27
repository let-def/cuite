(* Class hierarchies *)
type -'a t
type -'a qt_class

val class_name : _ qt_class -> string
val class_of : ([>`QObject] as 'a) t -> 'a qt_class
val cast : [>`QObject] t -> 'a qt_class -> 'a t option

(* Signal management *)
type connection
val disconnect : connection -> unit

type (-'a, +'b) signal
type (-'a, -'b) slot
val slot_ignore : ('a, unit) slot -> ('a, _) slot

val connect_slot : 'a t -> ('a, 't) signal -> 'b t -> ('b, 't) slot -> connection
val connect_slot' : 'a t -> ('a, 't) signal -> 'b t -> ('b, 't) slot -> unit
val connect : 'a t -> ('a, 't) signal -> (connection -> 't -> unit) -> connection
val connect' : 'a t -> ('a, 't) signal -> ('t -> unit) -> unit
val connect_by_name : 'a t -> string -> 'b t -> string -> unit

(* Deterministic memory management *)
val is_deleted : 'a t -> bool
val delete : 'a t -> unit

(* Object hierarchy *)
val prev_sibling : [> `QObject] t -> [`QObject] t option
val next_sibling : [> `QObject] t -> [`QObject] t option
val parent : [> `QObject] t -> [`QObject] t option
val children : [> `QObject] t -> [`QObject] t option
