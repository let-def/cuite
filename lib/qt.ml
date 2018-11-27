type -'a qt
type -'a qt_class
type 'a qflags = 'a QFlags.t

type qRect   = { rx: int; ry: int; rw: int; rh: int }
type qRectF  = { rxf: float; ryf: float; rwf: float; rhf: float }
type qPoint  = { px: int; py: int }
type qPointF = { pxf: float; pyf: float }
type qSize   = { sx: int ; sy: int }
type qSizeF  = { sxf: float ; syf: float }

external class_name : _ qt_class -> string = "cuite_metaobject_name"
external class_of : 'a qt -> 'a qt_class = "cuite_metaobject_get"
external cast : _ qt -> 'a qt_class -> 'a qt option = "cuite_metaobject_cast"

external set_id : _ qt -> int -> unit = "cuite_set_id"
external cb_set_id : _ qt -> int -> unit = "cuitecb_set_id"

(* Deterministic memory management *)
external is_deleted : 'a qt -> bool = "cuite_is_deleted"
external delete : 'a qt -> unit = "cuite_delete"

external weak_delete : 'a qt -> bool = "cuite_weak_delete"

let rec finalise_delete x =
  if not (weak_delete x) then
    Gc.finalise finalise_delete x

let () =
  let qt_table = Cuite__alloc.create ~compact:set_id 64 in
  let qt_alloc x =
    Gc.finalise finalise_delete x;
    Cuite__alloc.wref qt_table x
  in
  let qt_deref x = Cuite__alloc.wderef qt_table x in
  Callback.register "cuite_alloc" qt_alloc;
  Callback.register "cuite_deref" qt_deref;
  let cb_table = Cuite__alloc.create ~compact:cb_set_id 64 in
  let cb_alloc x = Cuite__alloc.wref cb_table x in
  let cb_deref x = Cuite__alloc.wderef cb_table x in
  Callback.register "cuitecb_alloc" cb_alloc;
  Callback.register "cuitecb_deref" cb_deref

type connection
external disconnect : connection -> unit = "cuite_disconnect"

type (-'a, +'b, +'c) signal
type (-'a, -'b, -'c) slot
type 'a stub = unit -> 'a

external connect
  : 'a qt -> ('a, 't, _) signal -> ('t -> unit) -> unit
  = "cuite_connect0"

let connect a signal f =
  connect a (signal ()) f

external connect_slot
  : 'a qt -> ('a, _, 't) signal -> 'b qt -> ('b, _, 't) slot -> unit
  = "cuite_connect_slot0" [@@noalloc]

let connect_slot a signal b slot =
  connect_slot a (signal ()) b (slot ())

external connect'
  : 'a qt -> ('a, 't, _) signal -> (connection -> 't -> unit) -> connection
  = "cuite_connect1"

let connect' a signal f =
  connect' a (signal ()) f

external connect_slot'
  : 'a qt -> ('a, _, 't) signal -> 'b qt -> ('b, _, 't) slot -> connection
  = "cuite_connect_slot1"

let connect_slot' a signal b slot =
  connect_slot' a (signal ()) b (slot ())

external connect_by_name
  : 'a qt -> string -> 'b qt -> string -> bool
  = "cuite_connect_by_name0"

(*external trigger_slot
  : 'a qt -> ('a, 'b, _) slot -> 'b -> unit
  = "cuite_trigger_slot0"*)

(* Object hierarchy *)
let object_option (o : Obj.t) : [`QObject] qt option =
  if o == Obj.repr ()
  then None
  else Some (Obj.obj o)

external prev_sibling : [> `QObject] qt -> Obj.t = "cuite_prev_sibling"
let prev_sibling x = object_option (prev_sibling x)

external next_sibling : [> `QObject] qt -> Obj.t = "cuite_next_sibling"
let next_sibling x = object_option (next_sibling x)

external parent : [> `QObject] qt -> Obj.t = "cuite_parent"
let parent x = object_option (parent x)

external children : [> `QObject] qt -> Obj.t = "cuite_children"
let children x = object_option (children x)

(* A Qt driven select function *)
external qselect : Unix.file_descr array -> Unix.file_descr array -> int -> int * int = "cuite_select"

let array_prefix_to_list arr n =
  let result = ref [] in
  for i = n - 1 downto 0 do
    result := arr.(i) :: !result
  done;
  !result

let qselect rds wds timeout =
  let timeout = int_of_float (timeout *. 1000.0) in
  let rds = Array.of_list rds in
  let wds = Array.of_list wds in
  let (nrds, nwds) = qselect rds wds timeout in
  (array_prefix_to_list rds nrds, array_prefix_to_list wds nwds)
  (*: Unix.file_descr list -> Unix.file_descr list -> float -> Unix.file_descr list * Unix.file_descr list*)
