open Cuite

let app = QApplication.new' Sys.argv

let () = Cuite_lwt.set_engine ()
