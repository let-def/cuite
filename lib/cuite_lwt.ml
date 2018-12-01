let engine = object
  inherit Lwt_engine.select_based
  method select = Qt.qselect
end

let set_engine () =
  Lwt_engine.set engine
