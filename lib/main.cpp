#define CAML_NAME_SPACE
#include <caml/alloc.h>
#include <caml/memory.h>
#include <QtWidgets>

#include "cuite_csupport.h"
#include "cuite_support.h"
#include "cuite_wrappers.h"
#include "cuite_variant.h"

#define HASH_Invalid_value -965933879

#define cuite_QFlags_to_ocaml(x) caml_copy_int64((int64_t)x)

#define Val_none Val_unit

static value Val_some(value& v)
{
  value r = caml_alloc_small(1, 0);
  Field(r, 0) = v;
  return r;
}

static void fallback_enum(value &result, long v)
{
  result = caml_alloc_small(2, 0);
  Field(result, 0) = Val_long(-965933879);
  Field(result, 1) = Val_long(v);
}

static value fallback_flag(value member)
{
  return caml_copy_int64(Long_val(Field(member, 1)));
}

#include "flags.cpp.gen"
#include "slot.cpp.gen"
