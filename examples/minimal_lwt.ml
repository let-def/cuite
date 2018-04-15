open Cuite

let () =
  Lwt_engine.set (object
    inherit Lwt_engine.select_based
    method select = Qt.qselect
  end)

let () =
  ignore (new'QApplication Sys.argv : _ qt);
  let closed, close = Lwt.wait () in
  let window = new'QMainWindow None QFlags.empty in
  let button = new'QPushButton None in
  QPushButton.setText button "Close Me";
  QMainWindow.setCentralWidget window button;
  Qt.connect
    button QPushButton.signal'clicked
    (fun _ -> Lwt.wakeup close ());
  QWidget.show window;
  Lwt_main.run closed
