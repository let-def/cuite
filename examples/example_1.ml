open Cuite

(*let root = ref []*)

let () =
  let _app = new'QApplication Sys.argv in
  let widget = new'QWidget None in
  QWidget.show widget;
  let button = new'QPushButton None in
  QAbstractButton.setText button "Push me";
  QWidget.setParent button (Some widget);
  QWidget.show button;
  let click_then_close connection () =
    Qt.disconnect connection;
    prerr_endline "clicked";
    Qt.connect_slot
      button QAbstractButton.signal'released
      widget QWidget.slot'close
  in
  let _ = Qt.connect' button QAbstractButton.signal'released click_then_close in
  prerr_endline ("class of button: " ^ Qt.class_name (Qt.class_of button));
  Gc.full_major ();
  ignore (QApplication.exec());
  (*root := [Obj.repr app; Obj.repr widget];*)
