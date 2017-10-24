#ifndef MLQT_SUPPORT
#define MLQT_SUPPORT

#include "mlqt_csupport.h"
#include <QObject>
#include "caml/custom.h"
#include "caml/fail.h"

#define external extern "C"

/* GC interface */

struct MLQT_Region
{
  mlqt_region_t region;

  MLQT_Region() : region(mlqt_region_enter()) {}
  ~MLQT_Region() { mlqt_region_leave(region); }
};

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

value& mlqt_QObject_allocate_value(QObject *obj, int extra_fields);
value& mlqt_QObject_to_ocaml(const QObject *obj);
value& mlqt_QObject_option_to_ocaml(const QObject *obj);
QObject *mlqt_QObject_from_ocaml(value v);
QObject *mlqt_QObject_option_from_ocaml(value v);

external value mlqt_set_id(value obj, value id);

external value mlqt_is_deleted(value obj);
external value mlqt_delete(value obj);

external value mlqt_prev_sibling(value obj);
external value mlqt_next_sibling(value obj);
external value mlqt_parent(value obj);
external value mlqt_children(value obj);

bool mlqt_qt_check_use(value v);
#define mlqt_QObject_check_use mlqt_qt_check_use
bool mlqt_QObject_option_check_use(value v);
#define CHECK_USE_AFTER_FREE(v) \
  if (!(v)) caml_invalid_argument(__FUNCTION__)

/* GC root management */

void mlqt_QObject_register_root(QObject *obj, bool is_explicit);
void mlqt_QObject_unregister_root(QObject *obj, bool is_explicit);

external value mlqt_retain(value obj);
external value mlqt_release(value obj);

/* Manually managed object wrapping */

value& mlqt_manual_to_ocaml(void *object, void (*destructor)(void *));
void *mlqt_manual_from_ocaml(value obj);

/* Connection wrapping */

value& mlqt_Connection_to_ocaml(QMetaObject::Connection *sg);
const QMetaObject::Connection& mlqt_Connection_from_ocaml(value sg);

external value mlqt_disconnect(value connection);

/* Callback wrapping */

external value mlqtcb_set_id(value obj, value id);

void mlqtcb_call(intnat *cbid, value arg);

/* Signal & slot wrapping */

typedef struct {
  const char *name;
  QMetaObject::Connection (* const connect)(QObject *obj, intnat *cbid);
} mlqtsignal;

value mlqt_signal_to_ocaml(const mlqtsignal& signal);
const mlqtsignal& mlqt_signal_from_ocaml(value v);

typedef struct {
  const char *name;
} mlqtslot;

value mlqt_slot_to_ocaml(const mlqtslot& slot);
const mlqtslot& mlqt_slot_from_ocaml(value v);

external value mlqt_connect_slot(value vobj, value vsig, value vtarget, value vslot);
external value mlqt_connect_slot0(value vobj, value vsig, value vtarget, value vslot);
external value mlqt_connect(value vobj, value vsig, value fn);
external value mlqt_connect0(value vobj, value vsig, value fn);

/* Reified classes */

value mlqt_QMetaObject_to_ocaml(const QMetaObject *obj);
const QMetaObject *mlqt_QMetaObject_from_ocaml(value vmeta);

external value mlqt_metaobject_name(value vmeta);
external value mlqt_metaobject_get(value vobj);
external value mlqt_metaobject_cast(value vobj, value vmeta);

#define MLQT_CLASS(name)                                  \
  external value mlqt_class_##name(value unit)            \
  {                                                       \
    return mlqt_QMetaObject_to_ocaml(&name::staticMetaObject); \
  }

#define MLQT_SLOT(class_name, slot_name, proto)                     \
  external value mlqt_slot_##class_name##_##slot_name(value unit)   \
  {                                                                 \
    static mlqtslot slot = { .name = SLOT(proto) };                 \
    return mlqt_slot_to_ocaml(slot);                                     \
  }

#define MLQT_SIGNAL(class_name, mangled_name, signal_name, proto, cb)        \
  static QMetaObject::Connection                                             \
  connect_signal_##class_name##_##mangled_name(QObject *obj, intnat *cbid)   \
  {                                                                          \
    return QObject::connect((class_name*)obj, signal_name, cb); \
  }                                                                          \
  external value mlqt_signal_##class_name##_##mangled_name(value unit)       \
  {                                                                          \
    static mlqtsignal signal = {                                             \
      .name = SIGNAL(proto),                                                 \
      .connect = connect_signal_##class_name##_##mangled_name,               \
    };                                                                       \
    return mlqt_signal_to_ocaml(signal);                                     \
  }

template <typename T, typename U>
static inline U mlqt_lift_ref(U (*f)(const T*), const T& x)
{
  return f(&x);
}

static inline value& mlqt_region_register(value v)
{
  value *result = mlqt_region_alloc();
  *result = v;
  return *result;
}

value& mlqt_flag_to_ocaml(uint v);
uint mlqt_flag_from_ocaml(const value& v);

void mlqt_debug_aborted_callback(const char *context, value exn);

#endif /* MLQT_SUPPORT */
