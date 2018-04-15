open Cuite

let () =
  ignore (new'QApplication Sys.argv : _ qt);
  (*let dialog' = create_dialog () in
    Qt.delete dialog';
    assert (Qt.is_deleted dialog');*)
  let window = new'QMainWindow None QFlags.empty in
  let button = new'QPushButton None in
  QPushButton.setText button "Close Me";
  QMainWindow.setCentralWidget window button;
  Qt.connect_slot
    button QPushButton.signal'clicked
    window QWidget.slot'close;
  QWidget.show window;
  exit (QApplication.exec ())
