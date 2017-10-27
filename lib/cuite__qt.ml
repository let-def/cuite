type -'a t
type -'a qt_class

external class_name : _ qt_class -> string = "mlqt_metaobject_name"
external class_of : 'a t -> 'a qt_class = "mlqt_metaobject_get"
external cast : _ t -> 'a qt_class -> 'a t option = "mlqt_metaobject_cast"

external set_id : _ t -> int -> unit = "mlqt_set_id"
external cb_set_id : _ t -> int -> unit = "mlqtcb_set_id"

(* Deterministic memory management *)
external is_deleted : 'a t -> bool = "mlqt_is_deleted"
external delete : 'a t -> unit = "mlqt_delete"

external weak_delete : 'a t -> bool = "mlqt_weak_delete"

let rec finalise_delete x =
  if not (weak_delete x) then
    Gc.finalise finalise_delete x

let () =
  let qt_table = Qt_ref.create ~compact:set_id 64 in
  let qt_alloc x =
    Gc.finalise finalise_delete x;
    Qt_ref.wref qt_table x
  in
  let qt_deref x = Qt_ref.wderef qt_table x in
  Callback.register "mlqt_alloc" qt_alloc;
  Callback.register "mlqt_deref" qt_deref;
  let cb_table = Qt_ref.create ~compact:cb_set_id 64 in
  let cb_alloc x = Qt_ref.wref cb_table x in
  let cb_deref x = Qt_ref.wderef cb_table x in
  Callback.register "mlqtcb_alloc" cb_alloc;
  Callback.register "mlqtcb_deref" cb_deref;
  prerr_endline "registered mlqt callbacks"

type connection
external disconnect : connection -> unit = "mlqt_disconnect"

type (-'a, +'b) signal

type (-'a, -'b) slot
external slot_ignore : ('a, unit) slot -> ('a, _) slot = "%identity"

external connect_slot : 'a t -> ('a, 't) signal -> 'b t -> ('b, 't) slot -> connection = "mlqt_connect_slot"
external connect_slot' : 'a t -> ('a, 't) signal -> 'b t -> ('b, 't) slot -> unit = "mlqt_connect_slot0" [@@noalloc]
external connect : 'a t -> ('a, 't) signal -> (connection -> 't -> unit) -> connection = "mlqt_connect"
external connect' : 'a t -> ('a, 't) signal -> ('t -> unit) -> unit = "mlqt_connect0"
external connect_by_name : 'a t -> string -> 'b t -> string -> unit = "mlqt_connect_by_name0"

type qRect   = { rx: int; ry: int; rw: int; rh: int }
type qRectF  = { rxf: float; ryf: float; rwf: float; rhf: float }
type qPoint  = { px: int; py: int }
type qPointF = { pxf: float; pyf: float }
type qSize   = { sx: int ; sy: int }
type qSizeF  = { sxf: float ; syf: float }

(* Object hierarchy *)
let object_option (o : Obj.t) : [`QObject] t option =
  if o == Obj.repr ()
  then None
  else Some (Obj.obj o)

external prev_sibling : [> `QObject] t -> Obj.t = "mlqt_prev_sibling"
let prev_sibling x = object_option (prev_sibling x)

external next_sibling : [> `QObject] t -> Obj.t = "mlqt_next_sibling"
let next_sibling x = object_option (next_sibling x)

external parent : [> `QObject] t -> Obj.t = "mlqt_parent"
let parent x = object_option (parent x)

external children : [> `QObject] t -> Obj.t = "mlqt_children"
let children x = object_option (children x)

