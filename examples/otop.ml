open Cuite

let app = new'QApplication'from'string_array Sys.argv

module CodeEditor = struct
  let main = new'QPlainTextEdit'from'QWidget None

  let line_area = new'QWidget (Some main)

  let line_number_area_width () =
    let rec digits n = if n >= 10 then 1 + digits (n / 10) else 1 in
    let digits = digits 1 in
    let metrics = QWidget.fontMetrics main in
    let width = QFontMetrics.width'from'QString'int metrics "9" 1 in
    3 + width * digits

  let block_count_changed _count =
    QPlainTextEdit.setViewportMargins'from'int'int'int'int
      main (line_number_area_width ()) 0 0 0

  let update_line_number_area (rect, dy) =
    if (dy > 0) then
      QWidget.scroll line_area 0 dy
    else
      QWidget.update'from'int'int'int'int
        line_area 0 rect.ry (QWidget.width line_area) rect.rh
    (*if (rect.contains(viewport()->rect()))
        updateLineNumberAreaWidth(0);*)

  let line_format =
    let color = QColor.fromCmyk 0 0 255 0 255 in
    let color = QColor.lighter color 160 in
    let format = new'QTextCharFormat () in
    QTextCharFormat.setBackground format
      (new'QBrush'from'QColor'BrushStyle color `SolidPattern);
    QTextCharFormat.setProperty format
      `FullWidthSelection (QVariant.Bool true);
    format

  let highlight_current_line () =
    if QPlainTextEdit.isReadOnly main then
      QPlainTextEdit.setExtraSelections main []
    else
      let cursor = QPlainTextEdit.textCursor main in
      QTextCursor.clearSelection cursor;
      QPlainTextEdit.setExtraSelections main [(cursor, line_format)]

  let line_number_area_paint_event event =
    ()

  let () =
    Qt.connect main
      QPlainTextEdit.signal'blockCountChanged block_count_changed;
    Qt.connect main
      QPlainTextEdit.signal'updateRequest update_line_number_area;
    Qt.connect main
      QPlainTextEdit.signal'cursorPositionChanged highlight_current_line

end

let main () =
  QWidget.setWindowTitle'from'QString CodeEditor.main "Code Editor Example";
  QWidget.show CodeEditor.main;
  exit (QApplication.exec ())

let () = main ()

(*module Icons = struct
  type t =
    | Logo
    | Block_marker
    | Clear
    | End_block_marker
    | Err_marker
    | Eval_marker_next
    | Eval_marker
    | Execute
    | Execute_all
    | New
    | Open
    | Quit
    | Restart
    | Save
    | Save_as
    | Spinner
    | Stop
    | Warn_marker

  let filename = function
    | Logo             -> "logo.png"
    | Block_marker     -> "block_marker.png"
    | Clear            -> "clear.png"
    | End_block_marker -> "end_block_marker.png"
    | Err_marker       -> "err_marker.png"
    | Eval_marker_next -> "eval_marker_next.png"
    | Eval_marker      -> "eval_marker.png"
    | Execute          -> "execute.png"
    | Execute_all      -> "execute_all.png"
    | New              -> "new.png"
    | Open             -> "open.png"
    | Quit             -> "quit.png"
    | Restart          -> "restart.png"
    | Save             -> "save.png"
    | Save_as          -> "save_as.png"
    | Spinner          -> "spinner.png"
    | Stop             -> "stop.png"
    | Warn_marker      -> "warn_marker.png"

  let get t = new'QIcon'from'QString (filename t)
end


module Mainwindow (X : sig end) = struct

  let window = new'QMainWindow'from'QWidget'WindowFlags None QFlags.empty
  let () = QMainWindow.setWindowTitle window "ocaml-top"

  module Menu = struct
    let menu_bar = QMainWindow.menuBar window
    let file_menu = QMenuBar.addMenu'from'QString menu_bar "&File"
    let toplevel_menu = QMenuBar.addMenu'from'QString menu_bar "&Toplevel"

    let add_action menu name icon =
      QMenu.addAction'from'QIcon'QString menu (Icons.get icon) name

    module File = struct
      let action_new =
        add_action file_menu "&New"    Icons.New
      let action_open =
        add_action file_menu "&Open"   Icons.Open
      let action_save =
        add_action file_menu "&Save"   Icons.Save
      let action_save_as =
        add_action file_menu "Save as" Icons.Save_as
      let action_quit =
        add_action file_menu "&Quit"   Icons.Quit
    end

    module Toplevel = struct
      let action_new =
        add_action toplevel_menu "&Run to the cursor" Icons.Execute
      let action_open =
        add_action toplevel_menu "&Stop" Icons.Stop
      let action_save =
        add_action toplevel_menu "&Restart" Icons.Restart
      let action_save_as =
        add_action toplevel_menu "Run as far as possible" Icons.Execute_all
    end
  end

  let centralwidget = new'QWidget None
  let () =
    QMainWindow.setCentralWidget window centralwidget

  let leftpane = new'QPlainTextEdit None
  let rightpane = new'QPlainTextEdit None

  let layout = new'QHBoxLayout ()

  let () =
    QWidget.setLayout centralwidget (Some layout);
    QLayout.addWidget layout leftpane;
    QLayout.addWidget layout rightpane

  let () = QMainWindow.show window
end

let app = new'QApplication'from'string_array Sys.argv
let _ : bool = Cuite.Qt.is_deleted app
let () = QApplication.setWindowIcon Icons.(get Logo);

module Window = Mainwindow(struct end)

let exitcode : int = QApplication.exec ()*)
