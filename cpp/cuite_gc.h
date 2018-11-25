#ifndef CUITE_GC
#define CUITE_GC

#include "cuite_csupport.h"
/* GC interface */

struct CUITE_Region
{
  cuite_region_t region;
  void *locals;

  CUITE_Region(void *_locals)
    : locals(_locals)
  {
    cuite_region_enter(&region, locals);
    cuite_assert(!cuite_ocaml_released);
  }

  ~CUITE_Region()
  {
    cuite_region_leave(&region, locals);
  }
};

struct CUITE_AcquireRegion
{
  cuite_region_t region;
  bool acquired;
  void *locals;

  CUITE_AcquireRegion(bool _acquired, void *_locals)
    : acquired(_acquired), locals(_locals)
  {
    cuite_region_enter(&region, locals);
    cuite_assert(!cuite_ocaml_released);
  }

  ~CUITE_AcquireRegion()
  {
    cuite_region_leave(&region, locals);
    if (acquired) cuite_release_ocaml();
  }
};

struct CUITE_ReleaseRegion
{

  CUITE_ReleaseRegion()
  {
    cuite_release_ocaml();
  }

  ~CUITE_ReleaseRegion()
  {
    cuite_assert(cuite_acquire_ocaml());
  }
};

/* Setup a cuite region just for allocating. Abort if the OCaml runtime was released. */
#define CUITE_GC_REGION(...) \
   CUITE_LOCAL_ROOTS(_region_roots, __VA_ARGS__); \
   CUITE_Region _region(&_region_roots)

/* Setup a cuite region that reacquire the OCaml runtime if necessary. */
#define CUITE_OCAML_REGION(...) \
   CUITE_LOCAL_ROOTS(_region_roots, __VA_ARGS__); \
   CUITE_AcquireRegion _region(cuite_acquire_ocaml(), &_region_roots)

/* Release the OCaml runtime in a lexical scope. */
#define CUITE_WITHOUT_OCAML CUITE_ReleaseRegion _release

#endif /* !CUITE_GC */
