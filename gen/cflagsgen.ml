open Utils
open Mlspec
type name = string

let fallback = "Invalid_value"

let gen_enum_conv oc qe =
  println oc "%s cuite_%s_from_ocaml(const value& v)"
    (QEnum.cpp_type qe) (Mangle.cident (QEnum.cpp_type qe));
  println oc "{";
  println oc "  switch(Long_val(v)) {";
  List.iter (fun member ->
      println oc "    case %d: return %s;"
        (hash_variant (QEnum.ml_member_constructor member))
        (QEnum.cpp_qualified_member member)
    ) (QEnum.members qe);
  println oc "  default:";
  println oc "    cuite_assert(Is_block(v) && Field(v, 0) == %d);"
    (hash_variant fallback);
  println oc "    return (%s)Long_val(Field(v, 1));" (QEnum.cpp_type qe);
  println oc "  }";
  println oc "}";
  println oc "";
  println oc "value &cuite_%s_to_ocaml(const %s& v)"
    (Mangle.cident (QEnum.cpp_type qe)) (QEnum.cpp_type qe);
  println oc "{";
  println oc "  value &result = *cuite_region_alloc();";
  println oc "  switch(v) {";
  List.iter (fun member ->
      println oc "    case %s: result = Val_long(%d); break;"
        (QEnum.cpp_qualified_member member)
        (hash_variant (QEnum.ml_member_constructor member))
    ) (QEnum.members qe);
  println oc "  default:";
  println oc "    fallback_enum(result, v);";
  println oc "  }";
  println oc "  return result;";
  println oc "}";
  println oc ""

let gen_flag_def oc flags =
  println oc "external value %s(value member)" (QFlags.c_symbol flags);
  println oc "{";
  println oc "  int64_t v = 0;";
  println oc "  if (Is_long(member))";
  println oc "    switch (Long_val(member))";
  println oc "    {";
  let render_member member =
    println oc "      case %d: v = (int64_t)%s;"
      (hash_variant (QEnum.ml_member_constructor member))
      (QEnum.cpp_qualified_member member)
  in
  List.iter render_member (QEnum.members (QFlags.enum flags));
  println oc "      default: abort();";
  println oc "    }";
  println oc "  else";
  println oc "    v = fallback_flag(member);";
  println oc "  return caml_copy_int64(v);";
  println oc "}"

let () =
  Decl.iter_types (function
      | QEnum e -> gen_enum_conv stdout e
      | _ -> ()
    );
  Decl.iter_types (function
      | QFlags f -> gen_flag_def stdout f
      | _ -> ()
    )
