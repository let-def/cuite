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
    Gen_classes.gen ~mltype ~ml
  end
