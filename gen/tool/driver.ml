open Shared

let () =
  with_file "cuite.ml" @@ fun ml ->
  ml "module Qt = Cuite__qt";
  ml "module QVariant = Cuite__variant";
  ml "module QFlags = Cuite__flags";
  ml "module QModels = Cuite__flags";
  ml "";
  ml "type 'a qt = 'a Qt.t";
  ml "";
  begin
    with_file "cuite_const.gen.h" @@ fun h ->
    with_file "cuite_const.gen.cpp" @@ fun c ->
    Gen_enum.gen ~h ~c ~ml
  end;
  ml "";
  begin
    let split =
      match Sys.getenv "CUITE_SPLIT" with
      | exception Not_found -> false | "" -> false | _ -> true
    in
    if split then
      Gen_classes.gen ~ml ()
    else
      with_file "cuite_stubs.gen.cpp" @@ fun c ->
      print c "#include \"cuite_stubs.h\"";
      Gen_classes.gen ~ml ~c ()
  end
