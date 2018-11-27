#ifndef CUITE_SUPPORT
#define CUITE_SUPPORT

#include "cuite_gc.h"
#include <QObject>
#include "caml/custom.h"
#include "caml/fail.h"

#define external extern "C" CAMLprim

int cuite_is_logging(void);

#define CUITE_WARN(...) \
  fprintf(stderr, "CUITE(ERR) " __VA_ARGS__)

#define CUITE_LOG(...) \
  do { if (cuite_is_logging()) { fprintf(stderr, "CUITE(LOG) " __VA_ARGS__); } } \
  while (0)

/* QObject wrapping */

enum QObject_fields {
  QObject_field_object = 0,
  QObject_field_deleted_flag,
  QObject_field_parent,
  QObject_field_sibling_prev,
  QObject_field_sibling_next,
  QObject_field_children,
  QObject_field_slot,
  QObject_fields_count /* extra fields start at QObject_fields_count offset */
};

#define EXTRA_FIELD(obj, field) Field(obj, QObject_fields_count + (field))

value& cuite_QObject_allocate_value(QObject *obj, int extra_fields);
value& cuite_QObject_to_ocaml(const QObject *obj);
value& cuite_QObject_option_to_ocaml(const QObject *obj);
QObject *cuite_QObject_from_ocaml(value v);
QObject *cuite_QObject_option_from_ocaml(value v);

external value cuite_set_id(value obj, value id);

external value cuite_is_deleted(value obj);
external value cuite_delete(value obj);

external value cuite_prev_sibling(value obj);
external value cuite_next_sibling(value obj);
external value cuite_parent(value obj);
external value cuite_children(value obj);

bool cuite_qt_check_use(value v);
#define cuite_QObject_check_use cuite_qt_check_use
bool cuite_QObject_option_check_use(value v);
#define CHECK_USE_AFTER_FREE(v) \
  if (!(v)) caml_invalid_argument(__FUNCTION__)

/* GC root management */

void cuite_QObject_register_root(QObject *obj, bool is_explicit);
void cuite_QObject_unregister_root(QObject *obj, bool is_explicit);

external value cuite_retain(value obj);
external value cuite_release(value obj);

/* Manually managed object wrapping */

value& cuite_manual_to_ocaml(void *object, void (*destructor)(void *));
void *cuite_manual_from_ocaml(value obj);

/* Connection wrapping */

value& cuite_Connection_to_ocaml(QMetaObject::Connection *sg);
const QMetaObject::Connection& cuite_Connection_from_ocaml(value sg);

external value cuite_disconnect(value connection);

/* Callback wrapping */

external value cuitecb_set_id(value obj, value id);

void cuitecb_call(intnat *cbid, value arg);

/* Signal & slot wrapping */

typedef struct {
  const char *name;
  QMetaObject::Connection (* const connect)(QObject *obj, intnat *cbid);
} cuitesignal;

value cuite_signal_to_ocaml(const cuitesignal& signal);
const cuitesignal& cuite_signal_from_ocaml(value v);

typedef struct {
  const char *name;
} cuiteslot;

value cuite_slot_to_ocaml(const cuiteslot& slot);
const cuiteslot& cuite_slot_from_ocaml(value v);

external value cuite_connect_slot1(value vobj, value vsig, value vtarget, value vslot);
external value cuite_connect_slot0(value vobj, value vsig, value vtarget, value vslot);
external value cuite_connect1(value vobj, value vsig, value fn);
external value cuite_connect0(value vobj, value vsig, value fn);

/* Reified classes */

value cuite_QMetaObject_to_ocaml(const QMetaObject *obj);
const QMetaObject *cuite_QMetaObject_from_ocaml(value vmeta);

external value cuite_metaobject_name(value vmeta);
external value cuite_metaobject_get(value vobj);
external value cuite_metaobject_cast(value vobj, value vmeta);

#define CUITE_CLASS(name, cpptype)                                         \
  external value cuite_class_##name(value unit)                            \
  {                                                                        \
    return cuite_QMetaObject_to_ocaml(&cpptype::staticMetaObject);         \
  }

#define CUITE_SLOT(symbol, proto)                                          \
  external value symbol(value unit)                                        \
  {                                                                        \
    static cuiteslot slot = { .name = SLOT(proto) };                       \
    return cuite_slot_to_ocaml(slot);                                      \
  }

#define CUITE_SIGNAL(symbol, class_name, signal_name, proto, cb)           \
  static QMetaObject::Connection                                           \
  connect_##symbol(QObject *obj, intnat *cbid) \
  {                                                                        \
    return QObject::connect((class_name*)obj, signal_name, cb);            \
  }                                                                        \
  external value symbol(value unit)    \
  {                                                                        \
    static cuitesignal signal = {                                          \
      .name = SIGNAL(proto),                                               \
      .connect = connect_##symbol,                                         \
    };                                                                     \
    return cuite_signal_to_ocaml(signal);                                  \
  }

template <typename T, typename U>
static inline U cuite_lift_ref(U (*f)(const T*), const T& x)
{
  return f(&x);
}

static inline value& cuite_region_register(value v)
{
  value *result = cuite_region_alloc();
  *result = v;
  return *result;
}

value& cuite_flag_to_ocaml(uint v);
uint cuite_flag_from_ocaml(const value& v);

void cuite_debug_aborted_callback(const char *context, value exn);

template <typename... Args, typename U> Q_CONSTEXPR Q_DECL_UNUSED QOverload<Args..., U>
qPrivateOverload = {};

#endif /* !CUITE_SUPPORT */
