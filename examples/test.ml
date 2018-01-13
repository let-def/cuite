open Cuite

let sprintf = Printf.sprintf
let num_grid_rows = 3
let num_buttons = 4

let create_menu () =
  let bar = new'QMenuBar None in
  let file = new'QMenu None in
  QMenu.setTitle file "&File";
  let _exit = QMenu.addAction file "E&xit" in
  ignore (QMenuBar.addMenu bar file : _ Qt.t);
  bar

let create_horizontal_group_box () =
  let box = new'QGroupBox'from'QString'QWidget "Horizontal layout" None in
  let layout = new'QHBoxLayout'from'QWidget None in
  let btn' = ref [] in
  for i = 1 to num_buttons do
    let btn = new'QPushButton None in
    btn' := btn :: !btn';
    QAbstractButton.setText btn (sprintf "Button %d" i);
    QLayout.addWidget layout btn
  done;
  QWidget.setLayout box (Some layout);
  box, !btn'

let create_grid_group_box () =
  let box = new'QGroupBox'from'QString'QWidget "Grid Layout" None in
  let layout = new'QGridLayout'from'QWidget None in
  for i = 1 to num_grid_rows do
    let label =
      new'QLabel'from'QString'QWidget'WindowFlags
        (sprintf "Line %d:" i) None QFlags.empty
    in
    let lineEdit = new'QLineEdit None in
    QGridLayout.addWidget layout label i 0 QFlags.empty;
    QGridLayout.addWidget layout lineEdit i 1 QFlags.empty;
  done;
  let small_editor = new'QTextEdit None in
  QTextEdit.setPlainText small_editor "This widget takes up about two thirds of the grid layout.";
  QGridLayout.addWidget'from'QWidget'int'int'int'int'Alignment
    layout small_editor 0 2 4 1 QFlags.empty;
  QGridLayout.setColumnStretch layout 1 10;
  QGridLayout.setColumnStretch layout 2 20;
  QWidget.setLayout box (Some layout);
  box

let create_form_group_box () =
  let group = new'QGroupBox'from'QString'QWidget "Form layout" None in
  let form = new'QFormLayout None in
  QWidget.setLayout group (Some form);
  QFormLayout.addRow form
    (new'QLabel'from'QString'QWidget'WindowFlags "Line 1:" None QFlags.empty)
    (new'QLineEdit None);
  QFormLayout.addRow form
    (new'QLabel'from'QString'QWidget'WindowFlags "Line 2, long text:" None QFlags.empty)
    (new'QComboBox None);
  QFormLayout.addRow form
    (new'QLabel'from'QString'QWidget'WindowFlags "Line 3:" None QFlags.empty)
    (new'QSpinBox None);
  group

let create_dialog () =
  let dialog = new'QWidget None (*QFlags.empty*) in
  let menu_bar = create_menu () in
  let hbox, btns = create_horizontal_group_box () in
  let grid = create_grid_group_box () in
  let form = create_form_group_box () in
  let big_editor = new'QTextEdit None in
  QTextEdit.setPlainText big_editor "This widget takes up all the remaining space in the top-level layout";
  let mainlayout = new'QVBoxLayout () in
  QLayout.setMenuBar mainlayout menu_bar;
  QLayout.addWidget mainlayout hbox;
  QLayout.addWidget mainlayout grid;
  QLayout.addWidget mainlayout form;
  QLayout.addWidget mainlayout big_editor;
  (* button box *)
  QWidget.setLayout dialog (Some mainlayout);
  QWidget.setWindowTitle dialog "Basic Layouts";
  List.iter (fun btn ->
      Qt.connect_slot
        btn QPushButton.signal'clicked
        dialog QWidget.slot'close
    ) btns;
  dialog

let () =
  ignore (new'QApplication Sys.argv : _ qt);
  (*let dialog' = create_dialog () in
    Qt.delete dialog';
    assert (Qt.is_deleted dialog');*)
  let dialog = create_dialog () in
  QWidget.show dialog;
  ignore (QApplication.exec () : int);
