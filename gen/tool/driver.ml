open Shared

let () =
  with_file "../lib/cuite_types.ml" @@ fun mltype ->
  mltype "open Qt\n";
  begin
    with_file "../lib/cuite_const.h" @@ fun h ->
    with_file "../lib/cuite_const.cpp" @@ fun c ->
    Gen_enum.gen ~h ~c ~ml:mltype
  end;
  begin
    with_file "../lib/cuite.ml" @@ fun ml ->
    with_file "../lib/cuite_stubs.gen.h" @@ fun h ->
    with_file "../lib/cuite_stubs.gen.cpp" @@ fun c ->
    ml "open Qt";
    ml "open Cuite_types";
    ml "";
    Gen_classes.gen ~h ~c ~mltype ~ml
  end
