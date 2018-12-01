let engine = object
  inherit Lwt_engine.select_based
  method select = Qt.qselect
end

let () = Lwt_engine.set engine
