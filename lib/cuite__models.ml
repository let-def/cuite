external get_payload
  : [>`Payload of 'a qt] -> 'a
  = "cuite_get_payload" [@@noalloc]

(* QAbstractTableModel *)
type 'a qOCamlTableModel =
  [ `QOCamlTableModel | `Payload of 'a | qAbstractTableModel ]

type 'a qOCamlTableModel'callback = {
  row_count    : 'a -> 'a qOCamlTableModel qt -> qModelIndex qt -> int;
  column_count : 'a -> 'a qOCamlTableModel qt -> qModelIndex qt -> int;
  data         : 'a -> 'a qOCamlTableModel qt -> qModelIndex qt -> qt'ItemDataRole -> QVariant.t;
  header_data  : 'a -> 'a qOCamlTableModel qt -> int -> qt'Orientation -> qt'ItemDataRole -> QVariant.t;
  flags        : 'a -> 'a qOCamlTableModel qt -> qModelIndex qt -> qt'ItemFlags;
  set_data     : 'a -> 'a qOCamlTableModel qt -> qModelIndex qt -> QVariant.t -> qt'ItemDataRole -> bool;
  insert_rows  : 'a -> 'a qOCamlTableModel qt -> int -> int -> qModelIndex qt -> (unit -> unit) option;
  remove_rows  : 'a -> 'a qOCamlTableModel qt -> int -> int -> qModelIndex qt -> (unit -> unit) option;
}

let qOCamlTableModel'callback
    ~row_count ~column_count ~data
    ?(header_data = fun _ _ _ _ _ -> QVariant.null)
    ?(flags = fun _ _ _ -> QFlags.empty)
    ?(set_data = fun _ _ _ _ _ -> false)
    ?(insert_rows = fun _ _ _ _ _ -> None)
    ?(remove_rows  = fun _ _ _ _ _ -> None)
    ()
  = { row_count ; column_count ;
      data ; header_data ; flags ; set_data ;
      insert_rows ; remove_rows }

external new'QOCamlTableModel : 'a qOCamlTableModel'callback -> 'a -> 'a qOCamlTableModel qt =
  "cuite_new_QOCamlTableModel"

(* QSyntaxHighlighter *)

type 'a qOCamlSyntaxHighlighter =
  [ `QOCamlSyntaxHighlighter | `Payload of 'a | qSyntaxHighlighter ]

type 'a qOCamlSyntaxHighlighter'callback = {
  highlight_block : 'a -> 'a qOCamlSyntaxHighlighter qt -> string -> unit;
  release_state : 'a -> 'a qOCamlSyntaxHighlighter qt -> int -> unit;
}

let qOCamlSyntaxHighlighter'callback ~highlight_block ~release_state =
  { highlight_block; release_state }

external new'QOCamlSyntaxHighlighter : 'a qOCamlSyntaxHighlighter'callback -> 'a ->
  [> qObject] qt option -> 'a qOCamlSyntaxHighlighter qt =
  "cuite_new_QOCamlSyntaxHighlighter"

module OCamlSyntaxHighlighter = struct
  external currentBlock : 'a qOCamlSyntaxHighlighter qt -> qTextBlock qt =
    "cuite_QOCamlSyntaxHighlighter_currentBlock"
  external currentBlockState : 'a qOCamlSyntaxHighlighter qt -> int =
    "cuite_QOCamlSyntaxHighlighter_currentBlockState"
  (*currentBlockUserData() const*)
  external format : 'a qOCamlSyntaxHighlighter qt -> int -> qTextCharFormat qt =
    "cuite_QOCamlSyntaxHighlighter_format"
  external previousBlockState : 'a qOCamlSyntaxHighlighter qt -> int =
    "cuite_QOCamlSyntaxHighlighter_previousBlockState"
  external setCurrentBlockState : 'a qOCamlSyntaxHighlighter qt -> int -> unit =
    "cuite_QOCamlSyntaxHighlighter_setCurrentBlockState"
  external setCurrentBlockStateAndNotifyRelease : 'a qOCamlSyntaxHighlighter qt -> int -> unit =
    "cuite_QOCamlSyntaxHighlighter_setCurrentBlockStateAndNotifyRelease"
      (*setCurrentBlockUserData(QTextBlockUserData *data)*)
  external setFormat : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qTextCharFormat] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormat"
  external setFormatColor : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qColor] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormatColor"
  external setFormatFont : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qFont] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormatFont"

end

module StatefulHighlighter(State : Hashtbl.HashedType) :
sig
  type t

  type context
  val get_format : context -> int -> qTextCharFormat qt
  val set_format : context -> int -> int -> [> qTextCharFormat] qt -> unit
  val set_format_color : context -> int -> int -> [> qColor] qt -> unit
  val set_format_font : context -> int -> int -> [> qFont] qt -> unit

  val make :
    State.t -> (context -> string -> State.t -> State.t) ->
    [> qObject] qt option -> qSyntaxHighlighter qt
end = struct
  module Table = Hashtbl.Make(State)

  type cell = {
    index: int;
    mutable users: int;
    state: State.t
  }

  type t = {
    mutable counter : int;
    index : cell Table.t;
    rev_index : (int, cell) Hashtbl.t
  }

  let acquire t state =
    match Table.find t.index state with
    | cell ->
      cell.users <- cell.users + 1;
      cell.index
    | exception Not_found ->
      let index = t.counter in
      t.counter <- t.counter + 1;
      let cell = { index; users = 1; state } in
      Table.add t.index state cell;
      Hashtbl.add t.rev_index index cell;
      index

  let release t _ index =
    match Hashtbl.find t.rev_index index with
    | exception Not_found ->
      prerr_endline "Cuite.StatefulHighlighter: missing index"
    | cell ->
      cell.users <- cell.users - 1;
      if cell.users = 0 then (
        Table.remove t.index cell.state;
        Hashtbl.remove t.rev_index cell.index
      ) else
        assert (cell.users > 0)

  type context = t qOCamlSyntaxHighlighter qt
  let get_format = OCamlSyntaxHighlighter.format
  let set_format = OCamlSyntaxHighlighter.setFormat
  let set_format_color = OCamlSyntaxHighlighter.setFormatColor
  let set_format_font = OCamlSyntaxHighlighter.setFormatFont

  let make initial f parent =
    let table = {
      counter = 0;
      index = Table.create 7;
      rev_index = Hashtbl.create 7;
    } in
    let result =
      new'QOCamlSyntaxHighlighter {
        highlight_block = (fun table qt text ->
            let state =
              match OCamlSyntaxHighlighter.previousBlockState qt with
              | -1 -> initial
              |  n -> (Hashtbl.find table.rev_index n).state
            in
            let state' : State.t = f qt text state in
            OCamlSyntaxHighlighter.setCurrentBlockStateAndNotifyRelease
              qt (acquire table state')
          );
        release_state = release;
      } table parent
    in
    (result : t qOCamlSyntaxHighlighter qt :> qSyntaxHighlighter qt)
end

(* QEventFilter *)

type 'a qOCamlEventFilter =
  [ `QOCamlEventFilter | `Payload of 'a | qObject ]

type 'a qOCamlEventFilter'callback = {
  filter : 'a -> 'a qOCamlEventFilter qt -> qObject qt -> qEvent qt -> bool;
}

let qOCamlEventFilter'callback ~filter =
  { filter }

external new'QOCamlEventFilter : 'a qOCamlEventFilter'callback -> 'a -> 'a qOCamlEventFilter qt =
  "cuite_new_QOCamlEventFilter"

