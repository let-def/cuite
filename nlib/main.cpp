#include <caml/alloc.h>
#include <QtWidgets>

#include "cuite_csupport.h"

#define external extern "C" CAMLprim
#define HASH_Invalid_value -965933879

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
