(* QAbstractTableModel *)
type 'a qOCamlTableModel = [ `QOCamlTableModel of 'a | qAbstractTableModel ]

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

type 'a qOCamlSyntaxHighlighter = [ `QOCamlSyntaxHighlighter of 'a | qSyntaxHighlighter ]

type 'a qOCamlSyntaxHighlighter'callback = {
  highlight_block : 'a -> 'a qOCamlSyntaxHighlighter qt -> string -> unit;
}

let qOCamlSyntaxHighlighter'callback ~highlight_block = { highlight_block }

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
      (*setCurrentBlockUserData(QTextBlockUserData *data)*)
  external setFormat : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qTextCharFormat] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormat"
  external setFormatColor : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qColor] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormatColor"
  external setFormatFont : 'a qOCamlSyntaxHighlighter qt -> int -> int -> [> qFont] qt -> unit =
    "cuite_QOCamlSyntaxHighlighter_setFormatFont"

end
