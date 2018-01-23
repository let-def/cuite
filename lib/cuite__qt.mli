(* Class hierarchies *)
type -'a t
type -'a qt_class

val class_name : _ qt_class -> string
val class_of : ([>`QObject] as 'a) t -> 'a qt_class
val cast : [>`QObject] t -> 'a qt_class -> 'a t option

(* Signal management *)
type connection
val disconnect : connection -> unit

type (-'t, +'ml, +'qt) signal
type (-'t, -'ml, -'qt) slot
type 'a stub = unit -> 'a

val connect : 'a t -> ('a, 't, _) signal stub -> ('t -> unit) -> unit
val connect_slot : 'a t -> ('a, _, 't) signal stub -> 'b t -> ('b, _, 't) slot stub -> unit

val connect' : 'a t -> ('a, 't, _) signal stub -> (connection -> 't -> unit) -> connection
val connect_slot' : 'a t -> ('a, _, 't) signal stub -> 'b t -> ('b, _, 't) slot stub -> connection

(*val trigger_slot : 'a t -> ('a, 'b, _) slot stub -> 'b -> unit*)

val connect_by_name : 'a t -> string -> 'b t -> string -> unit

(* Deterministic memory management *)
val is_deleted : 'a t -> bool
val delete : 'a t -> unit

(* Object hierarchy *)
val prev_sibling : [> `QObject] t -> [`QObject] t option
val next_sibling : [> `QObject] t -> [`QObject] t option
val parent : [> `QObject] t -> [`QObject] t option
val children : [> `QObject] t -> [`QObject] t option

(* A Qt driven select function *)
val qselect : Unix.file_descr list -> Unix.file_descr list -> float -> Unix.file_descr list * Unix.file_descr list
