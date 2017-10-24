#include "mlqt_support.h"
#include "caml/memory.h"
#include "caml/alloc.h"
#include "caml/callback.h"
#include "caml/custom.h"
#include "caml/printexc.h"
#include <QEvent>
#include <QDebug>
#include <QCoreApplication>
#include <QWidget>

enum MLQT_Tags {
  MLQT_Tag_Cb = 1,
  MLQT_Tag_QObject = Object_tag,
  MLQT_Tag_struct = Custom_tag,
};

enum Cb_fields {
  Cb_field_prev = 0,
  Cb_field_next,
  Cb_field_closure,
  Cb_field_custom,
  Cb_fields_count,
};

static void disconnect_parent(value vobj);
static void disconnect_children(value vobj)
{
  if (vobj == Val_unit) return;
  disconnect_parent(vobj);
  Store_field(vobj, QObject_field_parent, Val_unit);
  Store_field(vobj, QObject_field_sibling_prev, Val_unit);
  Store_field(vobj, QObject_field_sibling_next, Val_unit);

  value slot = Field(vobj, QObject_field_slot);
  Store_field(vobj, QObject_field_slot, Val_unit);
  while (slot != Val_unit)
  {
    value current = slot;
    slot = Field(slot, Cb_field_next);
    Store_field(current, Cb_field_prev, Val_unit);
    Store_field(current, Cb_field_next, Val_unit);
  }

  value children = Field(vobj, QObject_field_children);
  Store_field(vobj, QObject_field_children, Val_unit);
  while (children != Val_unit)
  {
    value current = children;
    children = Field(children, QObject_field_sibling_next);
    disconnect_children(current);
  }
}

static void mlqtcb_unregister(value cb);
static void GraphTracker_register(const QObject *obj);
static value val_unit = Val_unit;

void mlqt_debug_aborted_callback(const char *context, value exn)
{
  const char *message = caml_format_exception(exn);
  fprintf(stderr, "%s aborted with exception: %s\n", context, message);
  free((void*)message);
}

static struct custom_operations mlqt_manual_custom_ops = {
    identifier:  (char*)"MLQT Manual object",
    finalize:    custom_finalize_default,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default,
};

typedef struct {
  void *object;
  void (*destructor)(void *object);
} mlqt_manual;

#define mlqt_manual_val(h) ((mlqt_manual *)(Data_custom_val(h)))

value& mlqt_manual_to_ocaml(void *object, void (*destructor)(void *))
{
  value& root = mlqt_region_register(caml_alloc_custom(&mlqt_manual_custom_ops, sizeof(mlqt_manual), 0, 1));
  mlqt_manual* manual = mlqt_manual_val(root);
  manual->object = object;
  manual->destructor = destructor;
  return root;
}

void *mlqt_manual_from_ocaml(value obj)
{
  mlqt_manual* manual = mlqt_manual_val(obj);
  return manual->object;
}

#define tag_ptr(ptr) (((intnat)ptr)|1)
#define untag_ptr(ptr) ((void*)(((intnat)ptr)&~1))

static struct custom_operations mlqt_deleted_custom_ops = {
    identifier:  (char*)"MLQT Deleted object",
    finalize:    custom_finalize_default,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default,
};

static void mlqt_do_delete(value v)
{
  bool *pdeleted_flag = (bool*)untag_ptr(Field(v, QObject_field_deleted_flag));
  mlqt_assert(*pdeleted_flag && Field(v, QObject_field_object) != Val_unit);
  Field(v, QObject_field_object) = Val_unit;
  delete pdeleted_flag;
  disconnect_children(v);
}

static bool mlqt_check_deleted(value v)
{
  if (Tag_val(v) == MLQT_Tag_QObject)
  {
    if (Field(v, QObject_field_object) == Val_unit)
      return true;
    bool deleted_flag = *(bool*)untag_ptr(Field(v, QObject_field_deleted_flag));
    if (deleted_flag)
      mlqt_do_delete(v);
    return deleted_flag;
  }
  else if (Tag_val(v) == MLQT_Tag_struct)
  {
    return (Custom_ops_val(v) == &mlqt_deleted_custom_ops);
  }
  else
  {
    fprintf(stderr, "mlqt_is_deleted: unknown object");
    abort();
  }
}

bool mlqt_qt_check_use(value v)
{
  return !mlqt_check_deleted(v);
}

bool mlqt_QObject_option_check_use(value v)
{
  return (v == Val_unit) || mlqt_QObject_check_use(Field(v,0));
}

external value mlqt_is_deleted(value v)
{
  return Bool_val(mlqt_check_deleted(v));
}

static void do_delete(value& obj)
{
  if (mlqt_check_deleted(obj))
    return;

  if (Tag_val(obj) == MLQT_Tag_QObject)
  {
    QObject *qobject = mlqt_QObject_from_ocaml(obj);
    mlqt_assert(qobject);
    printf("delete ");
    qobject->dumpObjectInfo();
    delete qobject;
    mlqt_do_delete(obj);
  }
  else if (Tag_val(obj) == MLQT_Tag_struct)
  {
    if (Custom_ops_val(obj) == &mlqt_manual_custom_ops)
    {
      Custom_ops_val(obj) = &mlqt_deleted_custom_ops;
      mlqt_manual *manual = mlqt_manual_val(obj);
      if (manual->destructor)
      {
        manual->destructor(manual->object);
        manual->destructor = NULL;
      }
    }
    else
    {
      void (*finalize)(value) = Custom_ops_val(obj)->finalize;
      Custom_ops_val(obj) = &mlqt_deleted_custom_ops;
      if (finalize)
        finalize(obj);
    }
  }
  else
  {
    fprintf(stderr, "mlqt_delete: unknown object");
    abort();
  }
}

external value mlqt_delete(value vobj)
{
  MLQT_Region region;
  do_delete(mlqt_region_register(vobj));
  return Val_unit;
}

external value mlqt_weak_delete(value vobj)
{
  MLQT_Region region;
  if (mlqt_check_deleted(vobj))
    return Val_bool(1);

  if (Tag_val(vobj) == MLQT_Tag_QObject)
  {
    QObject *qobject = mlqt_QObject_from_ocaml(vobj);
    mlqt_assert(qobject);
    if (qobject->parent() != NULL)
      return Val_bool(0);
  }

  do_delete(mlqt_region_register(vobj));
  return Val_bool(1);
}

external value mlqt_next_sibling(value v)
{
  if (v == Val_unit || Tag_val(v) != MLQT_Tag_QObject)
    return Val_unit;
  value w = Field(v, QObject_field_sibling_next);
  while (1) {
    v = w;
    if (v == Val_unit)
      return Val_unit;
    w = Field(v, QObject_field_sibling_next);
    if (!mlqt_check_deleted(v))
      return v;
  }
}

external value mlqt_prev_sibling(value v)
{
  if (v == Val_unit || Tag_val(v) != MLQT_Tag_QObject)
    return Val_unit;
  value w = Field(v, QObject_field_sibling_prev);
  while (1) {
    v = w;
    if (v == Val_unit)
      return Val_unit;
    w = Field(v, QObject_field_sibling_prev);
    if (!mlqt_check_deleted(v))
      return v;
  }
}

external value mlqt_children(value v)
{
  if (v == Val_unit || Tag_val(v) != MLQT_Tag_QObject || mlqt_check_deleted(v))
    return Val_unit;
  return Field(v, QObject_field_children);
}

external value mlqt_parent(value v)
{
  if (v == Val_unit || Tag_val(v) != MLQT_Tag_QObject || mlqt_check_deleted(v))
    return Val_unit;
  return Field(v, QObject_field_parent);
}

/* QObject proxy */

QObject *mlqt_QObject_from_ocaml(value v)
{
  if (mlqt_check_deleted(v))
    return NULL;

  QObject *obj = (QObject *)untag_ptr(Field(v, QObject_field_object));
  return obj;
}

static uint mlqt_userdata(void)
{
  static uint initialized = 0, id = 0;
  if (!initialized)
  {
    id = QObject::registerUserData();
    initialized = 1;
  }
  return id;
}

struct QObjectMLProxy : QObjectUserData
{
  const QObject *object;
  value id;
  bool *deleted_flag;
  enum {
    Root_Unregistered,
    Root_Implicit,
    Root_Explicit
  } root_status;
  value root;

  QObjectMLProxy(const QObject *_object) :
    object(_object), id(0), deleted_flag(NULL), root_status(Root_Unregistered), root(0) {}

  void register_root(bool is_explicit)
  {
    switch (this->root_status)
    {
      case Root_Unregistered:
        this->root = mlqt_QObject_to_ocaml(this->object);
        caml_register_generational_global_root(&this->root);
      case Root_Implicit:
        this->root_status = is_explicit ? Root_Explicit : Root_Implicit;
        break;
      case Root_Explicit:
        break;
    }
  }

  void unregister_root(bool is_explicit)
  {
    switch (this->root_status)
    {
      case Root_Explicit:
        if (!is_explicit) break;
      case Root_Implicit:
        this->root = mlqt_QObject_to_ocaml(object);
        caml_remove_generational_global_root(&this->root);
        this->root_status = Root_Unregistered;
        break;
      case Root_Unregistered:
        break;
    }
  }

  ~QObjectMLProxy()
  {
    unregister_root(true);
    if (deleted_flag) *deleted_flag = true;
  }
};

static QObjectMLProxy *QObject_proxy(const QObject *obj)
{
  mlqt_assert(obj != NULL);

  QObjectMLProxy *proxy =
    static_cast<QObjectMLProxy*>(obj->userData(mlqt_userdata()));

  if (proxy) return proxy;

  proxy = new QObjectMLProxy(obj);
  const_cast<QObject*>(obj)->setUserData(mlqt_userdata(), proxy);

  return proxy;
}

/* QObject wrapping */

external value mlqt_set_id(value vobj, value id)
{
  mlqt_assert(id&1);
  QObject *obj = mlqt_QObject_from_ocaml(vobj);
  if (obj)
  {
    QObjectMLProxy *proxy = QObject_proxy(obj);
    proxy->id = id;
  }
  return Val_unit;
}

static value& mlqt_QObject_initialize_proxy(const QObject *obj, QObjectMLProxy *proxy, int extra_fields)
{
  proxy->deleted_flag = new bool(false);
  value& block = mlqt_region_register(caml_alloc(QObject_fields_count + extra_fields, MLQT_Tag_QObject));
  Field(block, QObject_field_deleted_flag) = tag_ptr(proxy->deleted_flag);
  Field(block, QObject_field_object) = tag_ptr(obj);

  static value *alloc_id = NULL;
  if (alloc_id == NULL)
  {
    alloc_id = caml_named_value("mlqt_alloc");
    mlqt_assert(alloc_id);
  }

  value id = caml_callback_exn(*alloc_id, block);
  if (Is_exception_result(id))
  {
    mlqt_debug_aborted_callback("mlqt_QObject_to_ocaml(alloc)", Extract_exception(id));
    abort();
  }

  mlqt_assert(!Is_block(id));

  proxy->id = id;
  printf("allocated id %ld\n", Long_val(id));

  GraphTracker_register(obj);
  return block;
}

value& mlqt_QObject_allocate_value(QObject *obj, int extra_fields)
{
  QObjectMLProxy *proxy = QObject_proxy(obj);
  mlqt_assert (proxy->id == 0);
  return mlqt_QObject_initialize_proxy(obj, proxy, extra_fields);
}

value& mlqt_QObject_to_ocaml(const QObject *obj)
{
  QObjectMLProxy *proxy = QObject_proxy(obj);

  if (proxy->id == 0)
    return mlqt_QObject_initialize_proxy(obj, proxy, 0);

  static value *deref = NULL;
  if (deref == NULL)
    deref = caml_named_value("mlqt_deref");

  value block = caml_callback_exn(*deref, proxy->id);
  printf("accessing id %ld = 0x%016x from thread 0x%016x\n", Long_val(proxy->id), block, pthread_self());
  if (Is_exception_result(block))
  {
    mlqt_debug_aborted_callback("mlqt_QObject_to_ocaml(deref)", Extract_exception(block));
    abort();
  }

  return mlqt_region_register(block);
}

value& mlqt_QObject_option_to_ocaml(const QObject *obj)
{
  if (obj == NULL)
    return val_unit;

  value& result = mlqt_QObject_to_ocaml(obj);

  /* Wrap in some */
  value some = caml_alloc_small(1, 0);
  Field(some, 0) = result;
  result = some;
  return result;
}

QObject *mlqt_QObject_option_from_ocaml(value v)
{
  if (v == Val_unit)
    return NULL;
  return mlqt_QObject_from_ocaml(Field(v, 0));
}

void mlqt_QObject_register_root(QObject *obj, bool is_explicit)
{
  QObject_proxy(obj)->register_root(is_explicit);
}

void mlqt_QObject_unregister_root(QObject *obj, bool is_explicit)
{
  QObject_proxy(obj)->unregister_root(is_explicit);
}

external value mlqt_retain(value obj)
{
  CHECK_USE_AFTER_FREE(mlqt_QObject_check_use(obj));
  mlqt_QObject_register_root(mlqt_QObject_from_ocaml(obj), true);
  return Val_unit;
}

external value mlqt_release(value obj)
{
  CHECK_USE_AFTER_FREE(mlqt_QObject_check_use(obj));
  mlqt_QObject_unregister_root(mlqt_QObject_from_ocaml(obj), true);
  return Val_unit;
}

/* Parent graph tracking */

static void disconnect_parent(value vobj)
{
  value parent = Field(vobj, QObject_field_parent);
  value prev = Field(vobj, QObject_field_sibling_prev);
  value next = Field(vobj, QObject_field_sibling_next);

  if (parent == Val_unit)
  {
    mlqt_assert(prev == Val_unit && next == Val_unit);
    return;
  }

  if (prev == Val_unit)
    Store_field(parent, QObject_field_children, next);
  else
    Store_field(prev, QObject_field_sibling_next, next);

  if (next != Val_unit)
    Store_field(next, QObject_field_sibling_prev, prev);
}

static void connect_parent(value vobj)
{
  value parent = Field(vobj, QObject_field_parent);

  if (parent == Val_unit)
  {
    Store_field(vobj, QObject_field_sibling_prev, Val_unit);
    Store_field(vobj, QObject_field_sibling_next, Val_unit);
    return;
  }

  value children = Field(parent, QObject_field_children);
  Store_field(parent, QObject_field_children, vobj);
  Store_field(vobj, QObject_field_sibling_prev, Val_unit);
  Store_field(vobj, QObject_field_sibling_next, children);

  if (children != Val_unit)
    Store_field(children, QObject_field_sibling_prev, vobj);
}

static void update_parent(const QObject *obj)
{
  MLQT_Region region;
  value& vobj = mlqt_QObject_to_ocaml(obj);
  QObject *parent = obj->parent();
  value& vparent = parent ? mlqt_QObject_to_ocaml(parent) : val_unit;

  printf("%s child of %s(%x)\n", obj->metaObject()->className(),
      parent ? parent->metaObject()->className() : "NULL", vparent);

  if (Field(vobj, QObject_field_parent) == vparent)
  {
    printf("skipping: parent didn't change (?!)\n");
    return;
  }

  disconnect_parent(vobj);
  Store_field(vobj, QObject_field_parent, vparent);
  connect_parent(vobj);
}

struct GraphTracker : QObject
{
  bool eventFilter(QObject *target, QEvent *event);
  //void trackDestroyed(QObject *obj);
} graphTracker;

bool GraphTracker::eventFilter(QObject *target, QEvent *event)
{
  switch (event->type())
  {
    case QEvent::ParentChange:
      update_parent(target);
      break;
    case QEvent::Show:
      if (target->isWidgetType() && ((QWidget*)target)->isWindow())
        mlqt_QObject_register_root(target, false);
      break;
    case QEvent::Hide:
      mlqt_QObject_unregister_root(target, false);
      break;
  }
  return QObject::eventFilter(target, event);
}

/*void GraphTracker::trackDestroyed(QObject *obj)
{
  value& vobj = mlqt_QObject_to_ocaml(obj);
  value child;
  while ((child = Field(vobj, QObject_field_children)) != Val_unit)
    mlqt_QObject_from_ocaml(child)->setParent(NULL);
}*/

static void GraphTracker_register(const QObject *obj)
{
  printf("registering %s\n", obj->metaObject()->className());
  if (!obj->metaObject()->inherits(&QCoreApplication::staticMetaObject))
    const_cast<QObject*>(obj)->installEventFilter(&graphTracker);
  update_parent(obj);
  //QObject::connect(obj, &QObject::destroyed, &graphTracker, &GraphTracker::trackDestroyed);
}

/* QMetaObject::Connection */

typedef struct {
  QMetaObject::Connection *conn;
  intnat *id;
} mlqtconn_inst;

#define mlqtconn_val(h) ((mlqtconn_inst *)(Data_custom_val(h)))
static void cmlqtconn_finalize(value handle)
{
  mlqtconn_inst *inst = mlqtconn_val(handle);
  if (inst->conn)
  {
    delete inst->conn;
    inst->conn = NULL;
  }
  if (inst->id)
  {
    free(inst->id);
    inst->id = NULL;
  }
}

static struct custom_operations mlqtconn_custom_ops = {
    identifier:  (char*)"MLQT QMetaObject::Connection",
    finalize:    cmlqtconn_finalize,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default
};

value& mlqt_Connection_to_ocaml(const QMetaObject::Connection& sg, intnat *cbid)
{
    value& root = mlqt_region_register(caml_alloc_custom(&mlqtconn_custom_ops, sizeof(QMetaObject::Connection *), 0, 1));
    mlqtconn_inst *inst = mlqtconn_val(root);
    inst->conn = new QMetaObject::Connection(sg);
    inst->id = cbid;
    return root;
}

const QMetaObject::Connection& mlqt_Connection_from_ocaml(value v)
{
  QMetaObject::Connection *obj = mlqtconn_val(v)->conn;
  return *obj;
}

external value mlqt_disconnect(value connection)
{
  if (Tag_val(connection) == MLQT_Tag_Cb)
  {
    mlqtcb_unregister(connection);
    connection = Field(connection, Cb_field_custom);
  }
  QObject::disconnect(mlqt_Connection_from_ocaml(connection));
}

/* Call-back wrapping */

static value &mlqtcb_alloc(value& vclosure, intnat*& cbid, QMetaObject::Connection**& conn)
{
  static value *alloc_id = NULL;
  if (alloc_id == NULL)
  {
    alloc_id = caml_named_value("mlqtcb_alloc");
    mlqt_assert(alloc_id);
  }

  value& result = mlqt_region_register(caml_alloc(Cb_fields_count, MLQT_Tag_Cb));
  Field(result, Cb_field_prev) = Val_unit;
  Field(result, Cb_field_next) = Val_unit;
  Field(result, Cb_field_closure) = vclosure;
  Field(result, Cb_field_custom) = caml_alloc_custom(&mlqtconn_custom_ops, sizeof(mlqtconn_inst), 0, 1);

  value id = caml_callback_exn(*alloc_id, result);
  mlqt_assert(!Is_exception_result(id) && ((intnat)id & 1));

  cbid = (intnat*)malloc(sizeof(intnat));
  *cbid = id;

  mlqtconn_inst *inst = mlqtconn_val(Field(result, Cb_field_custom));
  inst->id = cbid;
  inst->conn = NULL;
  conn = &inst->conn;

  return result;
}

static void mlqtcb_register(value& vobj, value& cb)
{
  mlqt_assert(Field(cb, Cb_field_prev) == Val_unit);
  value next = Field(vobj, QObject_field_slot);

  Store_field(cb, Cb_field_prev, vobj);
  Store_field(cb, Cb_field_next, next);

  //if (next != Val_unit)
  //  Store_field(next, Cb_field_prev, cb);

  Store_field(vobj, QObject_field_slot, cb);
}

static void mlqtcb_unregister(value cb)
{
  if (Field(cb, Cb_field_prev) == Val_unit) return;

  value prev = Field(cb, Cb_field_prev);
  value next = Field(cb, Cb_field_next);
  Store_field(cb, Cb_field_prev, Val_unit);
  Store_field(cb, Cb_field_next, Val_unit);

  if (Tag_val(prev) == MLQT_Tag_Cb)
    Store_field(prev, Cb_field_next, next);
  else
    Store_field(prev, QObject_field_slot, next);

  if (next != Val_unit)
    Store_field(next, Cb_field_prev, prev);
}

external value mlqtcb_set_id(value vobj, value id)
{
  mlqt_assert(id&1);
  mlqtconn_inst *inst = mlqtconn_val(Field(vobj, Cb_field_custom));
  if (inst->id)
    *inst->id = id;
  return Val_unit;
}

void mlqtcb_call(intnat *cbid, value arg)
{
  CAMLparam1(arg);
  static value *deref = NULL;
  if (deref == NULL)
    deref = caml_named_value("mlqtcb_deref");

  value block = caml_callback_exn(*deref, *cbid);
  mlqt_assert(!Is_exception_result(block));

  mlqtconn_inst *inst = mlqtconn_val(Field(block, Cb_field_custom));

  if (inst->conn)
    block = caml_callback2_exn(Field(block, Cb_field_closure), block, arg);
  else
    block = caml_callback_exn(Field(block, Cb_field_closure), arg);

  if (Is_exception_result(block))
    mlqt_debug_aborted_callback("callback", Extract_exception(block));

  CAMLreturn0;
}

/* Signal & slot wrapping */

value mlqt_signal_to_ocaml(const mlqtsignal& signal)
{
  return ((intnat)(&signal)|1);
}

const mlqtsignal& mlqt_signal_from_ocaml(value v)
{
  return *(const mlqtsignal *)(v&(~1));
}

value mlqt_slot_to_ocaml(const mlqtslot& slot)
{
  return ((intnat)(&slot)|1);
}

const mlqtslot& mlqt_slot_from_ocaml(value v)
{
  return *(const mlqtslot *)(v&(~1));
}

static QMetaObject::Connection
mlqt_connect_slot_gen(value vsource, value vsig, value vtarget, value vslot)
{
  CHECK_USE_AFTER_FREE(mlqt_QObject_check_use(vsource));
  const mlqtsignal& signal = mlqt_signal_from_ocaml(vsig);
  const mlqtslot& slot = mlqt_slot_from_ocaml(vslot);
  QObject *source = mlqt_QObject_from_ocaml(vsource);
  QObject *target = mlqt_QObject_from_ocaml(vtarget);
  return QObject::connect(source, signal.name, target, slot.name);
}

external value mlqt_connect_slot(value vsource, value vsig, value vtarget, value vslot)
{
  return mlqt_Connection_to_ocaml(mlqt_connect_slot_gen(vsource, vsig, vtarget, vslot), NULL);
}

external value mlqt_connect_slot0(value vsource, value vsig, value vtarget, value vslot)
{
  (void)mlqt_connect_slot_gen(vsource, vsig, vtarget, vslot);
  return Val_unit;
}

static value mlqt_connect_gen(value vsource, value vsig, value vfn, bool witness)
{
  CHECK_USE_AFTER_FREE(mlqt_QObject_check_use(vsource));
  MLQT_Region region;

  value& vobj = mlqt_region_register(vsource);
  value& vclosure = mlqt_region_register(vfn);

  QObject *obj = mlqt_QObject_from_ocaml(vsource);
  const mlqtsignal& signal = mlqt_signal_from_ocaml(vsig);

  intnat *cbid;
  QMetaObject::Connection **conn;
  value& cb = mlqtcb_alloc(vclosure, cbid, conn);
  mlqtcb_register(vobj, cb);

  if (witness)
  {
    *conn = new QMetaObject::Connection(signal.connect(obj, cbid));
    return cb;
  }
  else
  {
    signal.connect(obj, cbid);
    return Val_unit;
  }
}

external value mlqt_connect(value vsource, value vsig, value vfn)
{
  return mlqt_connect_gen(vsource, vsig, vfn, true);
}

external value mlqt_connect0(value vsource, value vsig, value vfn)
{
  return mlqt_connect_gen(vsource, vsig, vfn, false);
}

external value mlqt_connect_by_name0(value vsource, value vsig, value vtarget, value vslot)
{
  QObject *source = mlqt_QObject_from_ocaml(vsource);
  QObject *target = mlqt_QObject_from_ocaml(vtarget);
  const char *signal = String_val(vsig);
  const char *slot = String_val(vslot);
  QObject::connect(source, signal, target, slot);
  return Val_unit;
}

/* Reified classes */

value mlqt_QMetaObject_to_ocaml(const QMetaObject *obj)
{
  return ((intnat)(obj)|1);
}

const QMetaObject *mlqt_QMetaObject_from_ocaml(value vmeta)
{
  return (const QMetaObject *)(vmeta&(~1));
}

external value mlqt_metaobject_name(value vmeta)
{
  const QMetaObject *meta = mlqt_QMetaObject_from_ocaml(vmeta);
  return caml_copy_string(meta->className());
}

external value mlqt_metaobject_get(value vobj)
{
  CHECK_USE_AFTER_FREE(mlqt_QObject_check_use(vobj));
  QObject *obj = mlqt_QObject_from_ocaml(vobj);
  const QMetaObject *meta = obj->metaObject();
  return mlqt_QMetaObject_to_ocaml(meta);
}

external value mlqt_metaobject_cast(value vobj, value vmeta)
{
  CAMLparam1(vobj);
  value result = Val_unit;
  QObject *obj = mlqt_QObject_from_ocaml(Field(vobj,0));
  const QMetaObject *meta = obj->metaObject();
  const QMetaObject *target_meta = mlqt_QMetaObject_from_ocaml(vmeta);
  if (meta->inherits(target_meta))
  {
    result = caml_alloc_small(1, 0);
    Field(result, 0) = vobj;
  }
  CAMLreturn(result);
}

value& mlqt_flag_to_ocaml(uint v)
{
  return mlqt_region_register(caml_copy_int64((value)v));
}

uint mlqt_flag_from_ocaml(const value& v)
{
  return (uint)Int64_val(v);
}
