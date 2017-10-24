open Shared
type name = string

let fallback = "Invalid_value"

let hash_variant s =
  let accu = ref 0 in
  for i = 0 to String.length s - 1 do
    accu := 223 * !accu + Char.code s.[i]
  done;
  (* reduce to 31 bits *)
  accu := !accu land (1 lsl 31 - 1);
  (* make it signed for 64 bits architectures *)
  if !accu > 0x3FFFFFFF then !accu - (1 lsl 31) else !accu

let gen ~h ~c ~ml =
  print h "#ifndef __QT5_CONSTANTS_H__\n\
             #define __QT5_CONSTANTS_H__\n\
             #include <QtWidgets>\n\
             #include <caml/mlvalues.h>\n\
             #include <caml/alloc.h>\n\
             #include \"mlqt_support.h\"";
  print c "#include \"cuite_const.h\"";
  let enum {ens; ename; emembers; econverter} =
    print ml "type %s = [%s\n  ]"
      (ml_val_mangle (ens ^"::"^ ename))
      (String.concat "\n  | " (List.map ((^) "`") emembers @ ["`"^fallback^" of int"]));
    print h "%s::%s mlqt_%s_from_ocaml(const value& v);" ens ename econverter;
    print c "%s::%s mlqt_%s_from_ocaml(const value& v)" ens ename econverter;
    print c "{";
    print c "  switch(Long_val(v)) {";
    List.iter (fun member ->
        print c "  case %d: return %s::%s;" (hash_variant member) ens member
      ) emembers;
    print c "  default:";
    print c "    mlqt_assert(Is_block(v) && Field(v, 0) == %d);" (hash_variant fallback);
    print c "    return (%s::%s)Long_val(Field(v, 1));" ens ename;
    print c "  }";
    print c "}";
    print c "";
    print h "value& mlqt_%s_to_ocaml(const %s::%s& v);" econverter ens ename;
    print c "value& mlqt_%s_to_ocaml(const %s::%s& v)" econverter ens ename;
    print c "{";
    print c "  value& result = *mlqt_region_alloc();";
    print c "  switch(v) {";
    List.iter (fun member ->
        print c "  case %s::%s: result = Val_long(%d); break;"
          ens member (hash_variant member);
      ) emembers;
    print c "  default:";
    print c "    result = caml_alloc_small(2, 0);";
    print c "    Field(result, 0) = Val_long(%d);" (hash_variant fallback);
    print c "    Field(result, 1) = Val_long((value)v);";
    print c "  }";
    print c "  return result;";
    print c "}";
    print c ""
  in
  let flags {fns; fname; fenum; fconverter} =
    let fident = fns ^ "::" ^ fname in
    let eident = fenum.ens ^ "::" ^ fenum.ename in
    let fmangled = ml_val_mangle fident in
    let emangled = ml_val_mangle eident in
    print ml "type %s = %s Qflags.t" fmangled emangled;
    print ml "let %s : %s Qflags.set = Qflags.define (function" fmangled emangled;
    List.iter (fun member ->
        print ml "  | `%s -> 0x%04LxL"
          (ml_mangle member) (Flag_values.value_of (fenum.ens ^"::"^ member))
      ) fenum.emembers;
    print ml "  | `%s x -> Int64.of_int x)" fallback;
    print h "#define mlqt_%s_to_ocaml(v) mlqt_flag_to_ocaml((uint)v)" fconverter;
    print h "#define mlqt_%s_from_ocaml(v) ((%s)mlqt_flag_from_ocaml(v))" fconverter fident
  in
  List.iter enum (all_enum ());
  List.iter flags (all_flags ());
  print h "#endif"
