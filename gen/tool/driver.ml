open Shared

let () =
  with_file "cuite_types.ml" @@ fun mltype ->
  mltype "open Qt\n";
  begin
    with_file "cuite_const.h" @@ fun h ->
    with_file "cuite_const.cpp" @@ fun c ->
    Gen_enum.gen ~h ~c ~ml:mltype
  end;
  begin
    with_file "cuite.ml" @@ fun ml ->
    ml "open Qt";
    ml "open Cuite_types";
    ml "";
    let split =
      match Sys.getenv "CUITE_SPLIT" with
      | exception Not_found -> false | "" -> false | _ -> true
    in
    if split then Gen_classes.gen ~mltype ~ml ()
    else
      with_file "cuite_stubs.gen.cpp" @@ fun c ->
      print c "#include \"cuite_stubs.h\"";
      Gen_classes.gen ~mltype ~ml ~c ()
  end
