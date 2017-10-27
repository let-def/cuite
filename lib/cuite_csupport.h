#ifndef MLQT_CSUPPORT
#define MLQT_CSUPPORT

#include "caml/mlvalues.h"

#ifdef __cplusplus
extern "C" {
#endif

#define mlqt_assert(x) if (!(x)) abort()

typedef struct {
  void *block;
  int fill;
} mlqt_region_t;

mlqt_region_t mlqt_region_enter(void);
void mlqt_region_leave(mlqt_region_t region);
value *mlqt_region_alloc(void);
value *mlqt_region_allocn(int count);

#ifdef __cplusplus
}
#endif

#endif /* MLQT_SUPPORT */
