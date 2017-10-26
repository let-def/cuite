open Cuite
open Cuite_types

let add_dialog ?edit parent =
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
  begin match edit with
    | None -> QWidget.setWindowTitle dialog "Add a Contact"
    | Some (name, address) ->
      QWidget.setWindowTitle dialog "Edit a Contact";
      QLineEdit.setReadOnly name_text true;
      QLineEdit.setText name_text name;
      QTextEdit.setText address_text address;
  end;
  let result =
    if QDialog.exec dialog <> 0 then
      Some (QLineEdit.text name_text, QTextEdit.toPlainText address_text)
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
  Qt.connect' add_button (QPushButton.signal'clicked1 ()) (fun _ ->
      match add_dialog None with
      | Some (name, address) -> send_details name address
      | None -> ()
    );
  let main_layout = new'QVBoxLayout () in
  QVBoxLayout.addWidget main_layout description_label 0 Qflags.empty;
  QVBoxLayout.addWidget main_layout add_button 0 (Qflags.singleton qt'Alignment `AlignCenter);
  QWidget.setLayout tab (Some main_layout);
  tab

let setup_tab self table group ~selection_changed =
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
  ignore (QTabWidget.addTab self tableview group : int);
  Qt.connect' (QTableView.selectionModel tableview)
    (QItemSelectionModel.signal'selectionChanged1())
    selection_changed

let setup_tabs self table ~selection_changed =
  List.iter (setup_tab self table ~selection_changed)
    ["ABC"; "DEF"; "GHI"; "JKL"; "MNO"; "PQR"; "STU"; "VW"; "XYZ"]

let cast widget clss =
  match Qt.cast widget clss with
  | None -> assert false
  | Some x -> x

let address_widget_read_from_file addr_widget filename =
  ()

let address_widget_write_to_file addr_widget filename =
  ()

let address_widget_edit_entry table addr_widget _ =
  prerr_endline "editing entry";
  let tableview = cast (QTabWidget.currentWidget addr_widget) (QTableView.class'()) in
  let proxy = cast (QTableView.model tableview) (QSortFilterProxyModel.class'()) in
  let selection = QTableView.selectionModel tableview in
  let indexes = QItemSelectionModel.selectedRows selection 0 in
  if QModelIndexList.count1 indexes > 0 then (
    let index = QModelIndexList.at indexes 0 in
    let row = QModelIndex.row (QSortFilterProxyModel.mapToSource proxy index) in
    let index col =
      QAbstractTableModel.index table row col (new'QModelIndex ())
    in
    match QAbstractTableModel.data table (index 0) `DisplayRole,
          QAbstractTableModel.data table (index 1) `DisplayRole
    with
    | QVariant.QString name, QVariant.QString address ->
      begin match add_dialog ~edit:(name, address) (Some addr_widget) with
        | Some (_name, address) ->
          ignore (
            Printf.eprintf "setData(%d,1,%S)\n%!" row address;
            QAbstractTableModel.setData table (index 1)
              (QVariant.QString address) `DisplayRole
            : bool
          )
        | None -> ()
      end
    | v1, v2 ->
      prerr_endline ("unknown values: " ^ QVariant.to_string v1 ^ ", " ^ QVariant.to_string v2)
  ) else
    prerr_endline "nothing to edit"



let address_widget_remove_entry new_addr_tab table addr_widget _ =
  let tableview = cast (QTabWidget.currentWidget addr_widget) (QTableView.class'()) in
  let proxy = cast (QTableView.model tableview) (QSortFilterProxyModel.class'()) in
  let selection = QTableView.selectionModel tableview in
  let indexes = QItemSelectionModel.selectedRows selection 0 in
  let dummy = new'QModelIndex() in
  for i = 0 to QModelIndexList.count1 indexes - 1 do
    let index = QModelIndexList.at indexes i in
    let row = QModelIndex.row (QSortFilterProxyModel.mapToSource proxy index) in
    ignore (QAbstractTableModel.removeRow table row dummy : bool);
  done;
  if QAbstractTableModel.rowCount table dummy = 0 then
    ignore (QTabWidget.insertTab addr_widget 0 new_addr_tab "Address Book" : int)

let address_widget_show_add_entry_dialog addr_widget _ =
  match add_dialog (Some addr_widget) with
  | None -> ()
  | Some (name, address) -> ()

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
    ~set_data:(fun list self position value role ->
        match QModelIndex.row position, QModelIndex.column position,
              role, value
        with
        | row, 1, `DisplayRole, QVariant.QString address ->
          let rec seek n = function
            | (name, _) :: xs when n = 0 -> (name, address) :: xs
            | x :: xs -> x :: seek (n - 1) xs
            | [] -> []
          in
          list := seek row !list;
          true
        | row, col, _, QVariant.Bool true -> assert false
        | row, col, _, value ->
          Printf.eprintf
            "set_data(%d,%d,%S): invalid arguments\n%!" row col (QVariant.to_string value);
          false
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
    ~remove_rows:(fun list self position rows index ->
        Some (fun () ->
            let rec remove n tail = match n, tail with
              | n, _ :: xs when n > 0 -> remove (n - 1) xs
              | _, xs -> xs
            in
            let rec seek n = function
              | x :: xs when n > 0 -> x :: seek (n - 1) xs
              | xs -> remove rows xs
            in
            list := seek position !list
          )
      )
    ~flags:(fun _ self index ->
        Qflags.of_list qt'ItemFlags [`ItemIsEnabled; `ItemIsSelectable]
      )
    ()

let address_widget parent ~send_details ~selection_changed =
  let default_content = [
    "A" , "T";
    "B" , "O";
    "G" , "O";
    "G" , "O";
    "V" , "C";
  ] in
  let table = QModels.new'QOCamlTableModel list_model (ref default_content) in
  let self = new'QTabWidget parent in
  let new_address_tab = new_address_tab ~send_details (Some self) in
  ignore (QTabWidget.addTab self new_address_tab "Address Book" : int);
  setup_tabs self table ~selection_changed;
  (new_address_tab, table, self)

let main_window () =
  let self = new'QMainWindow None Qflags.empty in
  let update_actions = ref ignore in
  let selection_changed x = !update_actions x in
  let new_address_tab, table, address_widget =
    address_widget None
      ~send_details:(fun name address -> ())
      ~selection_changed
  in
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
      (address_widget_edit_entry table address_widget);
    let _ = QMenu.addSeparator tool_menu in
    let remove_act = QMenu.addAction tool_menu "&Remove Entry..." in
    QAction.setEnabled remove_act false;
    Qt.connect' remove_act (QAction.signal'triggered1())
      (address_widget_remove_entry new_address_tab table address_widget);
    update_actions := (fun (selected,_) ->
        prerr_endline "selection changed";
        let indexes = QItemSelection.indexes selected in
        let enabled = not (QModelIndexList.isEmpty indexes) in
        QAction.setEnabled remove_act enabled;
        QAction.setEnabled edit_act enabled
      );
  end;
  QMainWindow.setWindowTitle self "Address Book";
  self

let () = (
  let _app = new'QApplication Sys.argv in
  let mw = main_window () in
  QWidget.show mw;
  exit (QApplication.exec ())
)
