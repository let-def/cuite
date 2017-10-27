open Shared

let c_external h c ~impl {cl} uname ?(self=false) args =
  let need_bc_proxy = List.length args + (if self then 1 else 0) > 5 in
  let args = List.mapi (fun i _ -> "value arg" ^ string_of_int i) args in
  let args = if self then "value argself" :: args else args in
  let cargs = if args = [] then "value unit" else String.concat "," args in
  let name = sprint "cuite_%s_%s" (cl_c_name cl) uname in
  if need_bc_proxy then (
    print h "external value %s_bc(value *argv, int argvn);" name;
    print c "external value %s_bc(value *argv, int argvn)" name;
    print c "{";
    print c "  return %s(%s);"
      name
      (String.concat "," (List.mapi (fun i _ -> sprint "argv[%d]" i) args));
    print c "}";
  );
  print h "external value %s(%s);" name cargs;
  if impl then
    print c "external value %s(%s)" name cargs;
  if need_bc_proxy then
    sprint "\"%s_bc\" \"%s\"" name name
  else
    sprint "\"%s\"" name

let carg_list xs = List.mapi (fun i _ -> "c" ^ string_of_int i) xs

let unique_name =
  let table = Hashtbl.create 7 in
  fun {cl} name ->
    let name = match name with
      | "match" | "end" | "type" | "open" | "done" as kw -> kw^"_"
      | name -> name
    in
    let key = (cl_c_name cl) ^ "_" ^ name in
    match Hashtbl.find table key with
    | exception Not_found ->
      Hashtbl.add table key (ref 0);
      name
    | counter ->
      Printf.eprintf "duplicate name: %s::%s\n" (cl_c_name cl) name;
      incr counter;
      name ^ string_of_int !counter

let constructor ~h ~c ~ml cl = function
  | Constructor (name, args, custom) ->
    let uname = unique_name cl name in
    let mlargs = match args with
      | [] -> ["unit"]
      | xs -> List.map (fun (_,typ) -> qtype_ml_negname typ) xs
    in
    let external_symbol = c_external h c ~impl:(not custom) cl ("new_" ^ uname) args in
    print ml "external new'%s%s : %s = %s"
      (ml_mangle (cl_c_name cl.cl))
      (if uname = "" then "" else "'" ^ uname)
      (String.concat " -> " (mlargs @ [qtype_ml_posname (QClass cl)]) )
      external_symbol;
    if not custom then (
      print c "{";
      List.iteri (fun i (_, typ) ->
          qtype_c_check_use_after_free c typ (sprint "arg%d" i)
        ) args;
      print c "  CUITE_Region region;";
      List.iteri (fun i (_,_) ->
          print c "  value& ml%d = cuite_region_register(arg%d);" i i
        ) args;
      List.iteri (fun i (_,typ) ->
          print c "  %s c%d = %s;" (qtype_c_negname typ) i (qtype_c_from_ocaml typ ("ml" ^string_of_int i))
        ) args;
      print c "  return %s;"
        (qtype_c_to_ocaml (QClass cl) (sprint "new %s(%s)" (cl_c_name cl.cl)
                                         (String.concat "," (carg_list args))));
      print c "}\n"
    )
  | _ -> ()


let cfield ~h ~c ~ml cl = function
  | Constructor _ -> () (* Already processed *)
  | Dynamic_method (ret, name, args, custom) ->
    let uname = unique_name cl name in
    let mlargs = List.map qtype_ml_negname (QClass cl :: List.map snd args) in
    let external_symbol = c_external h c ~impl:(not custom) cl uname ~self:true args in
    print ml "  external %s : %s = %s"
      uname
      (String.concat " -> " (mlargs @ [match ret with None -> "unit" | Some typ -> qtype_ml_posname typ]))
      external_symbol;
    if not custom then (
      print c "{";
      qtype_c_check_use_after_free c (QClass cl) "argself";
      List.iteri (fun i (_, typ) ->
          qtype_c_check_use_after_free c typ (sprint "arg%d" i)
        ) args;
      print c "  CUITE_Region region;";
      print c "  value& mlself = cuite_region_register(argself);";
      List.iteri (fun i (_,_) ->
          print c "  value& ml%d = cuite_region_register(arg%d);" i i
        ) args;
      print c "  auto self = %s;" (qtype_c_from_ocaml (QClass cl) "mlself");
      List.iteri (fun i (_,typ) ->
          print c "  %s c%d = %s;" (qtype_c_negname typ) i (qtype_c_from_ocaml typ ("ml" ^string_of_int i))
        ) args;
      let cargs = String.concat "," (carg_list args) in
      let call = Printf.sprintf "self->%s(%s)" name cargs in
      begin match ret with
        | None ->
          print c "  self->%s(%s);" name cargs;
          print c "  return Val_unit;"
        | Some typ ->
          print c "  return %s;" (qtype_c_to_ocaml typ call);
      end;
      print c "}\n"
    )

  | Static_method (ret, name, args, custom) ->
    let uname = unique_name cl name in
    let mlargs = match args with
      | [] -> ["unit"]
      | xs -> List.map (fun (_,typ) -> qtype_ml_negname typ) xs
    in
    let external_symbol = c_external h c ~impl:(not custom) cl uname args in
    print ml "  external %s : %s = %s"
      uname
      (String.concat " -> " (mlargs @ [match ret with None -> "unit" | Some typ -> qtype_ml_posname typ]))
      external_symbol;
    if not custom then (
      print c "{";
      List.iteri (fun i (_, typ) ->
          qtype_c_check_use_after_free c typ (sprint "arg%d" i)
        ) args;
      print c "  CUITE_Region region;";
      List.iteri (fun i (_,_) ->
          print c "  value& ml%d = cuite_region_register(arg%d);" i i
        ) args;
      List.iteri (fun i (_,typ) ->
          print c "  %s c%d = %s;" (qtype_c_negname typ) i (qtype_c_from_ocaml typ ("ml" ^string_of_int i))
        ) args;
      let cargs = String.concat "," (carg_list args) in
      let call = Printf.sprintf "%s::%s(%s)" (cl_c_name cl.cl) name cargs in
      begin match ret with
        | None ->
          print c "  %s;" call;
          print c "  return Val_unit;"
        | Some typ ->
          print c "  return %s;" (qtype_c_to_ocaml typ call);
      end;
      print c "}\n"
    )

  | Slot (name, args) ->
    let uname = unique_name cl name in
    print c "CUITE_SLOT(%s, %s, %s(%s))"
      (cl_c_name cl.cl) uname
      name (String.concat "," (List.map qtype_c_negname args));
    print ml "  external slot'%s : unit -> ([> %s], %s) Qt.slot = \"cuite_slot_%s_%s\" [@@noalloc]"
      uname (cl_ml_name cl.cl)
      (if args = [] then "unit" else String.concat " * " (List.map (qtype_ml_negname) args))
      (cl_c_name cl.cl) uname

  | Signal (name, args) ->
    let uname = unique_name cl name in
    let cparams = List.mapi (fun i typ -> (qtype_c_negname typ, "arg" ^ string_of_int i)) args in
    print c "static void invoke_signal_%s_%s(%s)"
      (cl_c_name cl.cl) uname (String.concat "," ("intnat *cbid" :: List.map (fun (k,v) -> k^" "^ v) cparams));
    print c "{";
    print c "  CUITE_Region region;";
    print c "  value& arg = *cuite_region_alloc();";
    begin match args with
      | [] -> print c "  arg = Val_unit;";
      | [x] -> print c "  arg = %s;" (qtype_c_to_ocaml x "arg0");
      | xs ->
        print c "  arg = caml_alloc_tuple(%d);" (List.length xs);
        List.iteri (fun i typ ->
            print c "Store_field(arg, %d, %s);" i (qtype_c_to_ocaml typ ("arg"^string_of_int i)))
          xs;
    end;
    print c "  cuitecb_call(cbid, arg);";
    print c "}";
    print c "CUITE_SIGNAL(%s, %s, (qOverload<%s>(&%s::%s)), %s(%s), std::bind(&invoke_signal_%s_%s, %s))"
      (cl_c_name cl.cl) uname
      (String.concat "," (List.map fst cparams)) (cl_c_name cl.cl) name
      name (String.concat "," (List.map fst cparams))
      (cl_c_name cl.cl) uname (String.concat "," ("cbid" :: List.mapi (fun i _ -> "std::placeholders::_"^string_of_int (i+1)) cparams))
    ;
    print ml "  external signal'%s : unit -> ([> %s], %s) Qt.signal = \"cuite_signal_%s_%s\" [@@noalloc]"
      uname (cl_ml_name cl.cl)
      (if args = [] then "unit" else String.concat " * " (List.map (qtype_ml_posname) args))
      (cl_c_name cl.cl) uname

let gen ?c ~ml () =
  List.iter (fun cl ->
      begin match cl.cl.cl_extend with
      | None ->
        print ml "type %s = [`%s]" (cl_ml_name cl.cl) (ml_mangle (cl_c_name cl.cl))
      | Some cl' ->
        print ml "type %s = [`%s | %s]" (cl_ml_name cl.cl) (ml_mangle (cl_c_name cl.cl)) (cl_ml_name cl')
      end;
      print ml "module %s = Cuite___%s" (cl_Ml_name cl.cl) (cl_fs_name cl.cl)
    ) (all_class ());
  with_file "cuite_stubs.gen.h" @@ fun h ->
  List.iter (fun cl ->
      let fs_name = cl_fs_name cl.cl in
      begin match c with
        | None ->
          (fun f -> with_file (sprint "cuite_%s.gen.cpp" fs_name)
              (fun c -> print c "#include \"cuite_stubs.h\""; f c))
        | Some c -> (fun f -> f c)
      end @@ fun c ->
      let fields = List.rev cl.cl.cl_fields in
      List.iter (constructor ~h ~c ~ml cl) fields;
      with_file (sprint "cuite___%s.ml" fs_name) @@ fun ml ->
      ml "open Cuite";
      begin match cl.cl.cl_extend with
        | None -> ()
        | Some cl' -> print ml "include Cuite___%s" (cl_fs_name cl')
      end;
      let rec qmetaobject cl' =
        if cl_c_name cl' = "QObject" then (
          print c "CUITE_CLASS(%s)" (cl_c_name cl.cl);
          print ml "external class' : unit -> %s Qt.qt_class = \"cuite_class_%s\" [@@noalloc]"
            (cl_ml_name cl.cl) (c_mangle (cl_c_name cl.cl))
        )
        else match cl'.cl_extend with
          | Some cl' -> qmetaobject cl'
          | None -> ()
      in
      qmetaobject cl.cl;
      List.iter (cfield ~h ~c ~ml cl) fields;
    ) (all_class ())
