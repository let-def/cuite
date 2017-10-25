open Cuite
open Cuite_types

let add_dialog parent =
  let dialog = new'QDialog parent Qflags.empty in
  let name_label = new'QLabel'1 "Name" None Qflags.empty in
  let address_label = new'QLabel'1 "Address" None Qflags.empty in
  let ok_button = new'QPushButton'1 "OK" None in
  let cancel_button = new'QPushButton'1 "Cancel" None in
  let name_text = new'QLineEdit None in
  let address_text = new'QTextEdit None in
  let grid_layout = new'QGridLayout None in
  QGridLayout.setColumnStretch grid_layout 1 2;
  QGridLayout.addWidget grid_layout name_label 0 0 Qflags.empty;
  QGridLayout.addWidget grid_layout name_text 0 1 Qflags.empty;
  QGridLayout.addWidget grid_layout address_label 1 0
    (Qflags.of_list qt'Alignment [`AlignLeft; `AlignTop]);
  QGridLayout.addWidget grid_layout address_text 1 1
    (Qflags.singleton qt'Alignment `AlignLeft);
  let button_layout = new'QHBoxLayout () in
  QHBoxLayout.addWidget button_layout ok_button 0 Qflags.empty;
  QHBoxLayout.addWidget button_layout cancel_button 0 Qflags.empty;
  QGridLayout.addLayout grid_layout button_layout 2 1
    (Qflags.singleton qt'Alignment `AlignRight);
  let main_layout = new'QVBoxLayout () in
  QVBoxLayout.addLayout main_layout grid_layout 0;
  QDialog.setLayout dialog (Some main_layout);
  Qt.connect_slot' ok_button
    (QPushButton.signal'clicked1()) dialog
    (Qt.slot_ignore (QDialog.slot'accept1()));
  Qt.connect_slot' cancel_button
    (QPushButton.signal'clicked1()) dialog
    (Qt.slot_ignore (QDialog.slot'reject1()));
  QWidget.setWindowTitle dialog "Add a Contact";
  (dialog, name_text, address_text)

let maybe_add_entry () =
  let dialog, name, address = add_dialog None in
  let result =
    if QDialog.exec dialog <> 0 then
      Some (QLineEdit.text name, QTextEdit.toPlainText address)
    else
      None
  in
  Qt.delete dialog;
  result

let new_address_tab ~send_details parent =
  let tab = new'QWidget parent in
  let description_label = new'QLabel'1
      "There are currently no contacts in your address book.\n\
       Click Add to add new contacts." None Qflags.empty
  in
  let add_button = new'QPushButton'1 "Add" None in
  let add_entry _ =
    match maybe_add_entry () with
    | Some (name, address) -> send_details name address
    | None -> ()
  in
  Qt.connect' add_button (QPushButton.signal'clicked1 ()) add_entry;
  let main_layout = new'QVBoxLayout () in
  QVBoxLayout.addWidget main_layout description_label 0 Qflags.empty;
  QVBoxLayout.addWidget main_layout add_button 0 (Qflags.singleton qt'Alignment `AlignCenter);
  QWidget.setLayout tab (Some main_layout);
  tab

let setup_tab self table group =
  let proxy = new'QSortFilterProxyModel (Some self) in
  QSortFilterProxyModel.(
    setSourceModel proxy table;
    setFilterRegExp proxy (new'QRegExp'1 ("^[" ^ group ^ "].*") `CaseInsensitive `RegExp);
    setFilterKeyColumn proxy 0;
  );
  let tableview = new'QTableView None in
  QTableView.(
    setModel tableview proxy;
    setSelectionBehavior tableview `SelectRows;
    QHeaderView.setStretchLastSection (horizontalHeader tableview) true;
    QHeaderView.hide (verticalHeader tableview);
    setEditTriggers tableview (Qflags.singleton qAbstractItemView'EditTriggers `NoEditTriggers);
    setSelectionMode tableview `SingleSelection;
    setSortingEnabled tableview true;
  );
  ignore (QTabWidget.addTab self tableview group : int)
  (*Qt.connect_slot' (QTableView.selectionModel tableview)
    (QItemSelectionModel.signal'selectionChanged())*)

let setup_tabs self table =
  List.iter (setup_tab self table)
    ["ABC"; "DEF"; "GHI"; "JKL"; "MNO"; "PQR"; "STU"; "VW"; "XYZ"]

let address_widget_read_from_file addr_widget filename =
  ()

let address_widget_write_to_file addr_widget filename =
  ()

let address_widget_edit_entry _ _ =
  ()

let address_widget_remove_entry _ _ =
  ()

let address_widget_show_add_entry_dialog addr_widget _ =
  ()

let list_model =
  QModels.qOCamlTableModel'callback
    ~row_count:(fun list self _ -> List.length !list)
    ~column_count:(fun _ self _ -> 2)
    ~data:(fun list self index role ->
        if not (QModelIndex.isValid index) then QVariant.null else
          let row = QModelIndex.row index in
          if row < 0 || row >= List.length !list then QVariant.null else
            let name, address = List.nth !list row in
            match role, QModelIndex.column index with
            | `DisplayRole, 0 -> QVariant.QString name
            | `DisplayRole, 1 -> QVariant.QString address
            | _ -> QVariant.null
      )
    ~header_data:(fun _ self section orientation role ->
        match role, orientation, section with
        | `DisplayRole, `Horizontal, 0 -> QVariant.QString "Name"
        | `DisplayRole, `Horizontal, 1 -> QVariant.QString "Address"
        | _ -> QVariant.null
      )
    ~insert_rows:(fun list self position rows index ->
        Some (fun () ->
            let rec insert n tail =
              if n = 0 then tail else insert (n - 1) ((" ", " ") :: tail)
            in
            let rec seek n = function
              | x :: xs when n > 0 -> x :: seek (n - 1) xs
              | xs -> insert rows xs
            in
            list := seek position !list
          )
      )
    ()

let address_widget parent =
  let default_content = [
    "A" , "T";
    "B" , "O";
    "G" , "O";
    "G" , "O";
    "V" , "C";
  ] in
  let table = QModels.new'QOCamlTableModel list_model (ref default_content) in
  let self = new'QTabWidget parent in
  let new_address_tab = new_address_tab
      ~send_details:(Printf.printf "name:%S address:%S\n%!") (Some self)
  in
  ignore (QTabWidget.addTab self new_address_tab "Address Book" : int);
  setup_tabs self table;
  self

let main_window () =
  let self = new'QMainWindow None Qflags.empty in
  let address_widget = address_widget None in
  let open_file _ =
    let filename = QFileDialog.getOpenFileName self "" "" "" in
    if filename <> "" then
      address_widget_read_from_file address_widget filename
  in
  let save_file _ =
    let filename = QFileDialog.getSaveFileName self "" "" "" in
    if filename <> "" then
      address_widget_write_to_file address_widget filename
  in
  QMainWindow.setCentralWidget self address_widget;
  begin
    let menu_bar = QMainWindow.menuBar self in
    let file_menu = QMenuBar.addMenu1 menu_bar "&File" in
    let open_act = QMenu.addAction file_menu "&Open" in
    ignore open_act;
    Qt.connect' open_act (QAction.signal'triggered1()) open_file;
    let save_act = QMenu.addAction file_menu "&Save As..." in
    ignore save_act;
    Qt.connect' save_act (QAction.signal'triggered1()) save_file;
    let _ = QMenu.addSeparator file_menu in
    let exit_act = QMenu.addAction file_menu "E&xit" in
    ignore exit_act;
    Qt.connect_slot' exit_act (QAction.signal'triggered1())
      self (Qt.slot_ignore (QWidget.slot'close1()));
    let tool_menu = QMenuBar.addMenu1 menu_bar "&Tools" in
    let add_act = QMenu.addAction tool_menu "&Add Entry..." in
    Qt.connect' add_act (QAction.signal'triggered1())
      (address_widget_show_add_entry_dialog address_widget);
    ignore add_act;
    let edit_act = QMenu.addAction tool_menu "&Edit Entry..." in
    QAction.setEnabled edit_act false;
    Qt.connect' edit_act (QAction.signal'triggered1())
      (address_widget_edit_entry address_widget);
    let _ = QMenu.addSeparator tool_menu in
    let remove_act = QMenu.addAction tool_menu "&Remove Entry..." in
    QAction.setEnabled remove_act false;
    Qt.connect' remove_act (QAction.signal'triggered1())
      (address_widget_remove_entry address_widget)
    (*Qt.connect' address_widget (QAction.signal'triggered1())  updateActions*)
    (*
          QModelIndexList indexes = selection.indexes();

          if (!indexes.isEmpty()) {
              removeAct->setEnabled(true);
              editAct->setEnabled(true);
          } else {
              removeAct->setEnabled(false);
              editAct->setEnabled(false);
          }
    *)
  end;
  QMainWindow.setWindowTitle self "Address Book";
  self

let () = (
  let _app = new'QApplication Sys.argv in
  let mw = main_window () in
  QWidget.show mw;
  exit (QApplication.exec ())
)
