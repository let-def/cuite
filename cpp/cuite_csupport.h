#ifndef CUITE_CSUPPORT
#define CUITE_CSUPPORT

#include "caml/mlvalues.h"
#include "caml/memory.h"

#ifdef __cplusplus
extern "C" {
#endif

#define cuite_assert(x) if (!(x)) abort()

typedef struct {
  void *block;
  int fill;
} cuite_region_t;

#define CUITE_LOCAL_ROOTS(name, ...) \
  struct { \
    struct caml__roots_block *next; \
    intnat ntables; \
    intnat nitems; \
    value *tables[(sizeof((value*[]){__VA_ARGS__})/sizeof(value*))]; \
  } name = {  \
    .ntables = (sizeof((value*[]){__VA_ARGS__})/sizeof(value*)), \
    .nitems = 1, \
    .tables = {__VA_ARGS__}, \
  }

void cuite_region_enter(cuite_region_t *region, void *locals);
void cuite_region_leave(cuite_region_t *region, void *locals);
value *cuite_region_alloc(void);
value *cuite_region_allocn(int count);

extern int cuite_ocaml_released;
void cuite_release_ocaml(void);
int cuite_acquire_ocaml(void);

#ifdef __cplusplus
}
#endif

#endif /* CUITE_SUPPORT */
