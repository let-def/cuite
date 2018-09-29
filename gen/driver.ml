open Shared

let () =
  let mlsplit =
    match Sys.getenv "CUITE_MLSPLIT" with
    | exception Not_found -> false | "" -> false | _ -> true
  in
  with_file "cuite.ml" @@ fun ml ->
  ml "module Qt = Cuite__qt";
  ml "module QFlags = Cuite__flags";
  ml "";
  ml "type 'a qt = 'a Qt.t";
  ml "";
  ml "type qRect   = { rx: int; ry: int; rw: int; rh: int }";
  ml "type qRectF  = { rxf: float; ryf: float; rwf: float; rhf: float }";
  ml "type qPoint  = { px: int; py: int }";
  ml "type qPointF = { pxf: float; pyf: float }";
  ml "type qSize   = { sx: int ; sy: int }";
  ml "type qSizeF  = { sxf: float ; syf: float }";
  ml "";
  begin
    with_file "cuite_const.gen.h" @@ fun h ->
    with_file "cuite_const.gen.cpp" @@ fun c ->
    Gen_enum.gen ~h ~c ~ml
  end;
  ml "";
  let csplit =
    match Sys.getenv "CUITE_CSPLIT" with
    | exception Not_found -> false | "" -> false | _ -> true
  in
  begin
    let contents fname =
      let ic = open_in fname in
      let len = in_channel_length ic in
      let b = Buffer.create len in
      Buffer.add_channel b ic len;
      close_in_noerr ic;
      Buffer.contents b
    in
    Gen_classes.gen_types ~ml ~mlsplit ();
    if mlsplit then (
      ml "module QVariant = Cuite__variant";
      ml "module QModels = Cuite__models";
    ) else (
      let module_contents name fname =
        if Sys.file_exists (fname ^ ".mli") then (
          print ml "module %s : sig" name;
          ml (contents (fname ^ ".mli"));
          ml "end = struct";
          ml (contents (fname ^ ".ml"));
          ml "end"
        ) else (
          print ml "module %s = struct" name;
          ml (contents (fname ^ ".ml"));
          ml "end"
        )
      in
      module_contents "QVariant" "../lib/cuite__variant";
      module_contents "QModels" "../lib/cuite__models";
    );
    if csplit then
      Gen_classes.gen ~ml ~mlsplit ()
    else
      with_file "cuite_stubs.gen.cpp" @@ fun c ->
      print c "#include \"cuite_stubs.h\"";
      Gen_classes.gen ~ml ~c ~mlsplit ();
  end
  (*with_file "Makefile.gen"
    (fun makefile -> Gen_classes.gen_dep ~makefile ~mlsplit ())*)
