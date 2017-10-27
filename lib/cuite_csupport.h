#ifndef CUITE_CSUPPORT
#define CUITE_CSUPPORT

#include "caml/mlvalues.h"

#ifdef __cplusplus
extern "C" {
#endif

#define cuite_assert(x) if (!(x)) abort()

typedef struct {
  void *block;
  int fill;
} cuite_region_t;

cuite_region_t cuite_region_enter(void);
void cuite_region_leave(cuite_region_t region);
value *cuite_region_alloc(void);
value *cuite_region_allocn(int count);

#ifdef __cplusplus
}
#endif

#endif /* CUITE_SUPPORT */
