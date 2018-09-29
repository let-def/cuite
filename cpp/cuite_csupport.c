#include "cuite_csupport.h"
#include "caml/alloc.h"
#include "caml/memory.h"
#include "caml/callback.h"
#include "caml/custom.h"
#include "caml/threads.h"

int cuite_ocaml_released = 0;

void cuite_release_ocaml(void)
{
  cuite_assert(!cuite_ocaml_released);
  cuite_ocaml_released = 1;
  caml_release_runtime_system();
}

int cuite_acquire_ocaml(void)
{
  if (cuite_ocaml_released)
  {
    caml_acquire_runtime_system();
    cuite_assert(cuite_ocaml_released);
    cuite_ocaml_released = 0;
    return 1;
  }
  else
    return 0;
}

typedef struct {
  struct caml__roots_block desc;
  value values[1024];
} region_t;

static struct caml__roots_block root_sentinel = { .nitems = 0, .ntables = 0, .next = NULL };

region_t *region_root, *spare_region;

static region_t *region_alloc()
{
  region_t *result;
  if (spare_region)
  {
    result = spare_region;
    spare_region = NULL;
  }
  else
    result = malloc(sizeof(region_t) + sizeof(value) * 1024);

  cuite_assert (result);
  result->desc.next = NULL;
  result->desc.nitems = 0;
  result->desc.ntables = 1;
  result->desc.tables[0] = result->values;

  return result;
}

static void region_release(region_t *region)
{
  if (spare_region)
    free(region);
  else
    spare_region = region;
}

cuite_region_t cuite_region_enter(void)
{
  cuite_assert (!cuite_ocaml_released);
  if (region_root == NULL)
  {
    region_root = region_alloc();
    region_root->desc.next = caml_local_roots;

    root_sentinel.next = &region_root->desc;
    caml_local_roots = &root_sentinel;
    return (cuite_region_t){ .block = region_root, .fill = -1 };
  }
  else
    return (cuite_region_t){ .block = region_root, .fill = region_root->desc.nitems };
}

void cuite_region_leave(cuite_region_t region)
{
  cuite_assert (region_root && !cuite_ocaml_released);
  while (region.block != root_sentinel.next)
  {
    region_t *current = (region_t*)root_sentinel.next;
    root_sentinel.next = current->desc.next;
    region_release(current);
  }
  if (region.fill == -1)
  {
    cuite_assert (caml_local_roots == &root_sentinel);
    caml_local_roots = region_root->desc.next;
    region_release(region_root);
    region_root = NULL;
  }
  else
    root_sentinel.next->nitems = region.fill;
}

value *cuite_region_alloc(void)
{
  cuite_assert (region_root && !cuite_ocaml_released);
  value *result;

  if (root_sentinel.next->nitems < 1024)
  {
    int n = root_sentinel.next->nitems;
    root_sentinel.next->nitems += 1;
    ((region_t*)root_sentinel.next)->values[n] = Val_unit;
    result = &((region_t*)root_sentinel.next)->values[n];
  }
  else
  {
    region_t *region = region_alloc();
    region->desc.next = root_sentinel.next;
    root_sentinel.next = &region->desc;
    region->desc.nitems = 1;
    region->values[0] = Val_unit;
    result = &region->values[0];
  }

  *result = Val_unit;
  return result;
}

value *cuite_region_allocn(int count)
{
  cuite_assert (region_root && count <= 1024 && !cuite_ocaml_released);
  value *result;

  if (root_sentinel.next->nitems + count <= 1024)
  {
    result = &((region_t*)root_sentinel.next)->values[root_sentinel.next->nitems];
    root_sentinel.next->nitems += count;
  }
  else
  {
    region_t *region = region_alloc();
    region->desc.next = root_sentinel.next;
    root_sentinel.next = &region->desc;
    region->desc.nitems = count;
    result = &region->values[0];
  }

  for (int i = 0; i < count; ++i)
    result[i] = Val_unit;
  return result;
}
