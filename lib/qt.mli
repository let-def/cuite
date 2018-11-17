(* Class hierarchies *)
type -'a qt
type -'a qt_class

type qRect   = { rx: int; ry: int; rw: int; rh: int }
type qRectF  = { rxf: float; ryf: float; rwf: float; rhf: float }
type qPoint  = { px: int; py: int }
type qPointF = { pxf: float; pyf: float }
type qSize   = { sx: int ; sy: int }
type qSizeF  = { sxf: float ; syf: float }
type 'a qflags = 'a QFlags.t

val class_name : _ qt_class -> string
val class_of : ([>`QObject] as 'a) qt -> 'a qt_class
val cast : [>`QObject] qt -> 'a qt_class -> 'a qt option

(* Signal management *)
type connection
val disconnect : connection -> unit

type (-'t, +'ml, +'qt) signal
type (-'t, -'ml, -'qt) slot
type 'a stub = unit -> 'a

val connect : 'a qt -> ('a, 't, _) signal stub -> ('t -> unit) -> unit
val connect_slot : 'a qt -> ('a, _, 't) signal stub -> 'b qt -> ('b, _, 't) slot stub -> unit

val connect' : 'a qt -> ('a, 't, _) signal stub -> (connection -> 't -> unit) -> connection
val connect_slot' : 'a qt -> ('a, _, 't) signal stub -> 'b qt -> ('b, _, 't) slot stub -> connection

(*val trigger_slot : 'a qt -> ('a, 'b, _) slot stub -> 'b -> unit*)

val connect_by_name : 'a qt -> string -> 'b qt -> string -> bool

(* Deterministic memory management *)
val is_deleted : 'a qt -> bool
val delete : 'a qt -> unit

(* Object hierarchy *)
val prev_sibling : [> `QObject] qt -> [`QObject] qt option
val next_sibling : [> `QObject] qt -> [`QObject] qt option
val parent : [> `QObject] qt -> [`QObject] qt option
val children : [> `QObject] qt -> [`QObject] qt option

(* A Qt driven select function *)
val qselect : Unix.file_descr list -> Unix.file_descr list -> float -> Unix.file_descr list * Unix.file_descr list
