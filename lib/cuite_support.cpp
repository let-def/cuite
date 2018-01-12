#include "cuite_support.h"
#include "caml/memory.h"
#include "caml/alloc.h"
#include "caml/callback.h"
#include "caml/custom.h"
#include "caml/printexc.h"
#include <QEvent>
#include <QDebug>
#include <QCoreApplication>
#include <QWidget>

enum CUITE_Tags {
  CUITE_Tag_Cb = 1,
  CUITE_Tag_QObject = Object_tag,
  CUITE_Tag_struct = Custom_tag,
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

static void cuitecb_unregister(value cb);
static void GraphTracker_register(const QObject *obj);
static value val_unit = Val_unit;

void cuite_debug_aborted_callback(const char *context, value exn)
{
  const char *message = caml_format_exception(exn);
  fprintf(stderr, "%s aborted with exception: %s\n", context, message);
  free((void*)message);
}

static struct custom_operations cuite_manual_custom_ops = {
    identifier:  (char*)"CUITE Manual object",
    finalize:    custom_finalize_default,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default,
};

typedef struct {
  void *object;
  void (*destructor)(void *object);
} cuite_manual;

#define cuite_manual_val(h) ((cuite_manual *)(Data_custom_val(h)))

value& cuite_manual_to_ocaml(void *object, void (*destructor)(void *))
{
  value& root = cuite_region_register(caml_alloc_custom(&cuite_manual_custom_ops, sizeof(cuite_manual), 0, 1));
  cuite_manual* manual = cuite_manual_val(root);
  manual->object = object;
  manual->destructor = destructor;
  return root;
}

void *cuite_manual_from_ocaml(value obj)
{
  cuite_manual* manual = cuite_manual_val(obj);
  return manual->object;
}

#define tag_ptr(ptr) (((intnat)ptr)|1)
#define untag_ptr(ptr) ((void*)(((intnat)ptr)&~1))

static struct custom_operations cuite_deleted_custom_ops = {
    identifier:  (char*)"CUITE Deleted object",
    finalize:    custom_finalize_default,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default,
};

static void cuite_do_delete(value v)
{
  bool *pdeleted_flag = (bool*)untag_ptr(Field(v, QObject_field_deleted_flag));
  cuite_assert(*pdeleted_flag && Field(v, QObject_field_object) != Val_unit);
  Field(v, QObject_field_object) = Val_unit;
  delete pdeleted_flag;
  disconnect_children(v);
}

static bool cuite_check_deleted(value v)
{
  if (Tag_val(v) == CUITE_Tag_QObject)
  {
    if (Field(v, QObject_field_object) == Val_unit)
      return true;
    bool deleted_flag = *(bool*)untag_ptr(Field(v, QObject_field_deleted_flag));
    if (deleted_flag)
      cuite_do_delete(v);
    return deleted_flag;
  }
  else if (Tag_val(v) == CUITE_Tag_struct)
  {
    return (Custom_ops_val(v) == &cuite_deleted_custom_ops);
  }
  else
  {
    fprintf(stderr, "cuite_is_deleted: unknown object");
    abort();
  }
}

bool cuite_qt_check_use(value v)
{
  return !cuite_check_deleted(v);
}

bool cuite_QObject_option_check_use(value v)
{
  return (v == Val_unit) || cuite_QObject_check_use(Field(v,0));
}

external value cuite_is_deleted(value v)
{
  return Bool_val(cuite_check_deleted(v));
}

static void do_delete(value& obj)
{
  if (cuite_check_deleted(obj))
    return;

  if (Tag_val(obj) == CUITE_Tag_QObject)
  {
    QObject *qobject = cuite_QObject_from_ocaml(obj);
    cuite_assert(qobject);
    printf("delete ");
    qobject->dumpObjectInfo();
    delete qobject;
    cuite_do_delete(obj);
  }
  else if (Tag_val(obj) == CUITE_Tag_struct)
  {
    if (Custom_ops_val(obj) == &cuite_manual_custom_ops)
    {
      Custom_ops_val(obj) = &cuite_deleted_custom_ops;
      cuite_manual *manual = cuite_manual_val(obj);
      if (manual->destructor)
      {
        manual->destructor(manual->object);
        manual->destructor = NULL;
      }
    }
    else
    {
      void (*finalize)(value) = Custom_ops_val(obj)->finalize;
      Custom_ops_val(obj) = &cuite_deleted_custom_ops;
      if (finalize)
        finalize(obj);
    }
  }
  else
  {
    fprintf(stderr, "cuite_delete: unknown object");
    abort();
  }
}

external value cuite_delete(value vobj)
{
  CUITE_Region region;
  do_delete(cuite_region_register(vobj));
  return Val_unit;
}

external value cuite_weak_delete(value vobj)
{
  CUITE_Region region;
  if (cuite_check_deleted(vobj))
    return Val_bool(1);

  if (Tag_val(vobj) == CUITE_Tag_QObject)
  {
    QObject *qobject = cuite_QObject_from_ocaml(vobj);
    cuite_assert(qobject);
    if (qobject->parent() != NULL)
      return Val_bool(0);
  }

  do_delete(cuite_region_register(vobj));
  return Val_bool(1);
}

external value cuite_next_sibling(value v)
{
  if (v == Val_unit || Tag_val(v) != CUITE_Tag_QObject)
    return Val_unit;
  value w = Field(v, QObject_field_sibling_next);
  while (1) {
    v = w;
    if (v == Val_unit)
      return Val_unit;
    w = Field(v, QObject_field_sibling_next);
    if (!cuite_check_deleted(v))
      return v;
  }
}

external value cuite_prev_sibling(value v)
{
  if (v == Val_unit || Tag_val(v) != CUITE_Tag_QObject)
    return Val_unit;
  value w = Field(v, QObject_field_sibling_prev);
  while (1) {
    v = w;
    if (v == Val_unit)
      return Val_unit;
    w = Field(v, QObject_field_sibling_prev);
    if (!cuite_check_deleted(v))
      return v;
  }
}

external value cuite_children(value v)
{
  if (v == Val_unit || Tag_val(v) != CUITE_Tag_QObject || cuite_check_deleted(v))
    return Val_unit;
  return Field(v, QObject_field_children);
}

external value cuite_parent(value v)
{
  if (v == Val_unit || Tag_val(v) != CUITE_Tag_QObject || cuite_check_deleted(v))
    return Val_unit;
  return Field(v, QObject_field_parent);
}

/* QObject proxy */

QObject *cuite_QObject_from_ocaml(value v)
{
  if (cuite_check_deleted(v))
    return NULL;

  QObject *obj = (QObject *)untag_ptr(Field(v, QObject_field_object));
  return obj;
}

static uint cuite_userdata(void)
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
        this->root = cuite_QObject_to_ocaml(this->object);
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
        this->root = cuite_QObject_to_ocaml(object);
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
  cuite_assert(obj != NULL);

  QObjectMLProxy *proxy =
    static_cast<QObjectMLProxy*>(obj->userData(cuite_userdata()));

  if (proxy) return proxy;

  proxy = new QObjectMLProxy(obj);
  const_cast<QObject*>(obj)->setUserData(cuite_userdata(), proxy);

  return proxy;
}

/* QObject wrapping */

external value cuite_set_id(value vobj, value id)
{
  cuite_assert(id&1);
  QObject *obj = cuite_QObject_from_ocaml(vobj);
  if (obj)
  {
    QObjectMLProxy *proxy = QObject_proxy(obj);
    proxy->id = id;
  }
  return Val_unit;
}

static value& cuite_QObject_initialize_proxy(const QObject *obj, QObjectMLProxy *proxy, int extra_fields)
{
  proxy->deleted_flag = new bool(false);
  value& block = cuite_region_register(caml_alloc(QObject_fields_count + extra_fields, CUITE_Tag_QObject));
  Field(block, QObject_field_deleted_flag) = tag_ptr(proxy->deleted_flag);
  Field(block, QObject_field_object) = tag_ptr(obj);

  static value *alloc_id = NULL;
  if (alloc_id == NULL)
  {
    alloc_id = caml_named_value("cuite_alloc");
    cuite_assert(alloc_id);
  }

  value id = caml_callback_exn(*alloc_id, block);
  if (Is_exception_result(id))
  {
    cuite_debug_aborted_callback("cuite_QObject_to_ocaml(alloc)", Extract_exception(id));
    abort();
  }

  cuite_assert(!Is_block(id));

  proxy->id = id;
  printf("allocated id %ld\n", Long_val(id));

  GraphTracker_register(obj);
  return block;
}

value& cuite_QObject_allocate_value(QObject *obj, int extra_fields)
{
  QObjectMLProxy *proxy = QObject_proxy(obj);
  cuite_assert (proxy->id == 0);
  return cuite_QObject_initialize_proxy(obj, proxy, extra_fields);
}

value& cuite_QObject_to_ocaml(const QObject *obj)
{
  QObjectMLProxy *proxy = QObject_proxy(obj);

  if (proxy->id == 0)
    return cuite_QObject_initialize_proxy(obj, proxy, 0);

  static value *deref = NULL;
  if (deref == NULL)
    deref = caml_named_value("cuite_deref");

  value block = caml_callback_exn(*deref, proxy->id);
  printf("accessing id %ld = 0x%016x from thread 0x%016x\n", Long_val(proxy->id), block, pthread_self());
  if (Is_exception_result(block))
  {
    cuite_debug_aborted_callback("cuite_QObject_to_ocaml(deref)", Extract_exception(block));
    abort();
  }

  return cuite_region_register(block);
}

value& cuite_QObject_option_to_ocaml(const QObject *obj)
{
  if (obj == NULL)
    return val_unit;

  value& result = cuite_QObject_to_ocaml(obj);

  /* Wrap in some */
  value some = caml_alloc_small(1, 0);
  Field(some, 0) = result;
  result = some;
  return result;
}

QObject *cuite_QObject_option_from_ocaml(value v)
{
  if (v == Val_unit)
    return NULL;
  return cuite_QObject_from_ocaml(Field(v, 0));
}

void cuite_QObject_register_root(QObject *obj, bool is_explicit)
{
  QObject_proxy(obj)->register_root(is_explicit);
}

void cuite_QObject_unregister_root(QObject *obj, bool is_explicit)
{
  QObject_proxy(obj)->unregister_root(is_explicit);
}

external value cuite_retain(value obj)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(obj));
  cuite_QObject_register_root(cuite_QObject_from_ocaml(obj), true);
  return Val_unit;
}

external value cuite_release(value obj)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(obj));
  cuite_QObject_unregister_root(cuite_QObject_from_ocaml(obj), true);
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
    cuite_assert(prev == Val_unit && next == Val_unit);
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
  CUITE_Region region;
  value& vobj = cuite_QObject_to_ocaml(obj);
  QObject *parent = obj->parent();
  value& vparent = parent ? cuite_QObject_to_ocaml(parent) : val_unit;

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
        cuite_QObject_register_root(target, false);
      break;
    case QEvent::Hide:
      cuite_QObject_unregister_root(target, false);
      break;
  }
  return QObject::eventFilter(target, event);
}

/*void GraphTracker::trackDestroyed(QObject *obj)
{
  value& vobj = cuite_QObject_to_ocaml(obj);
  value child;
  while ((child = Field(vobj, QObject_field_children)) != Val_unit)
    cuite_QObject_from_ocaml(child)->setParent(NULL);
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
} cuiteconn_inst;

#define cuiteconn_val(h) ((cuiteconn_inst *)(Data_custom_val(h)))
static void ccuiteconn_finalize(value handle)
{
  cuiteconn_inst *inst = cuiteconn_val(handle);
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

static struct custom_operations cuiteconn_custom_ops = {
    identifier:  (char*)"CUITE QMetaObject::Connection",
    finalize:    ccuiteconn_finalize,
    compare:     custom_compare_default,
    hash:        custom_hash_default,
    serialize:   custom_serialize_default,
    deserialize: custom_deserialize_default
};

value& cuite_Connection_to_ocaml(const QMetaObject::Connection& sg, intnat *cbid)
{
  value& root = cuite_region_register(caml_alloc_custom(&cuiteconn_custom_ops, sizeof(QMetaObject::Connection *), 0, 1));
  cuiteconn_inst *inst = cuiteconn_val(root);
  inst->conn = new QMetaObject::Connection(sg);
  inst->id = cbid;
  return root;
}

const QMetaObject::Connection& cuite_Connection_from_ocaml(value v)
{
  QMetaObject::Connection *obj = cuiteconn_val(v)->conn;
  return *obj;
}

external value cuite_disconnect(value connection)
{
  if (Tag_val(connection) == CUITE_Tag_Cb)
  {
    cuitecb_unregister(connection);
    connection = Field(connection, Cb_field_custom);
  }
  QObject::disconnect(cuite_Connection_from_ocaml(connection));
}

/* Call-back wrapping */

static value &cuitecb_alloc(value& vclosure, intnat*& cbid, QMetaObject::Connection**& conn)
{
  static value *alloc_id = NULL;
  if (alloc_id == NULL)
  {
    alloc_id = caml_named_value("cuitecb_alloc");
    cuite_assert(alloc_id);
  }

  value& result = cuite_region_register(caml_alloc(Cb_fields_count, CUITE_Tag_Cb));
  Field(result, Cb_field_prev) = Val_unit;
  Field(result, Cb_field_next) = Val_unit;
  Field(result, Cb_field_closure) = vclosure;
  Field(result, Cb_field_custom) = caml_alloc_custom(&cuiteconn_custom_ops, sizeof(cuiteconn_inst), 0, 1);

  value id = caml_callback_exn(*alloc_id, result);
  cuite_assert(!Is_exception_result(id) && ((intnat)id & 1));

  cbid = (intnat*)malloc(sizeof(intnat));
  *cbid = id;

  cuiteconn_inst *inst = cuiteconn_val(Field(result, Cb_field_custom));
  inst->id = cbid;
  inst->conn = NULL;
  conn = &inst->conn;

  return result;
}

static void cuitecb_register(value& vobj, value& cb)
{
  cuite_assert(Field(cb, Cb_field_prev) == Val_unit);
  value next = Field(vobj, QObject_field_slot);

  Store_field(cb, Cb_field_prev, vobj);
  Store_field(cb, Cb_field_next, next);

  //if (next != Val_unit)
  //  Store_field(next, Cb_field_prev, cb);

  Store_field(vobj, QObject_field_slot, cb);
}

static void cuitecb_unregister(value cb)
{
  if (Field(cb, Cb_field_prev) == Val_unit) return;

  value prev = Field(cb, Cb_field_prev);
  value next = Field(cb, Cb_field_next);
  Store_field(cb, Cb_field_prev, Val_unit);
  Store_field(cb, Cb_field_next, Val_unit);

  if (Tag_val(prev) == CUITE_Tag_Cb)
    Store_field(prev, Cb_field_next, next);
  else
    Store_field(prev, QObject_field_slot, next);

  if (next != Val_unit)
    Store_field(next, Cb_field_prev, prev);
}

external value cuitecb_set_id(value vobj, value id)
{
  cuite_assert(id&1);
  cuiteconn_inst *inst = cuiteconn_val(Field(vobj, Cb_field_custom));
  if (inst->id)
    *inst->id = id;
  return Val_unit;
}

void cuitecb_call(intnat *cbid, value arg)
{
  CAMLparam1(arg);
  static value *deref = NULL;
  if (deref == NULL)
    deref = caml_named_value("cuitecb_deref");

  value block = caml_callback_exn(*deref, *cbid);
  cuite_assert(!Is_exception_result(block));

  cuiteconn_inst *inst = cuiteconn_val(Field(block, Cb_field_custom));

  if (inst->conn)
    block = caml_callback2_exn(Field(block, Cb_field_closure), block, arg);
  else
    block = caml_callback_exn(Field(block, Cb_field_closure), arg);

  if (Is_exception_result(block))
    cuite_debug_aborted_callback("callback", Extract_exception(block));

  CAMLreturn0;
}

/* Signal & slot wrapping */

value cuite_signal_to_ocaml(const cuitesignal& signal)
{
  return ((intnat)(&signal)|1);
}

const cuitesignal& cuite_signal_from_ocaml(value v)
{
  return *(const cuitesignal *)(v&(~1));
}

value cuite_slot_to_ocaml(const cuiteslot& slot)
{
  return ((intnat)(&slot)|1);
}

const cuiteslot& cuite_slot_from_ocaml(value v)
{
  return *(const cuiteslot *)(v&(~1));
}

static QMetaObject::Connection
cuite_connect_slot_gen(value vsource, value vsig, value vtarget, value vslot)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vsource));
  const cuitesignal& signal = cuite_signal_from_ocaml(vsig);
  const cuiteslot& slot = cuite_slot_from_ocaml(vslot);
  QObject *source = cuite_QObject_from_ocaml(vsource);
  QObject *target = cuite_QObject_from_ocaml(vtarget);
  return QObject::connect(source, signal.name, target, slot.name);
}

external value cuite_connect_slot0(value vsource, value vsig, value vtarget, value vslot)
{
  (void)cuite_connect_slot_gen(vsource, vsig, vtarget, vslot);
  return Val_unit;
}

external value cuite_connect_slot1(value vsource, value vsig, value vtarget, value vslot)
{
  CUITE_Region region;
  return cuite_Connection_to_ocaml(cuite_connect_slot_gen(vsource, vsig, vtarget, vslot), NULL);
}

static value cuite_connect_gen(value vsource, value vsig, value vfn, bool witness)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vsource));
  CUITE_Region region;

  value& vobj = cuite_region_register(vsource);
  value& vclosure = cuite_region_register(vfn);

  QObject *obj = cuite_QObject_from_ocaml(vsource);
  const cuitesignal& signal = cuite_signal_from_ocaml(vsig);

  intnat *cbid;
  QMetaObject::Connection **conn;
  value& cb = cuitecb_alloc(vclosure, cbid, conn);
  cuitecb_register(vobj, cb);

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

external value cuite_connect0(value vsource, value vsig, value vfn)
{
  return cuite_connect_gen(vsource, vsig, vfn, false);
}

external value cuite_connect1(value vsource, value vsig, value vfn)
{
  return cuite_connect_gen(vsource, vsig, vfn, true);
}

external value cuite_connect_by_name0(value vsource, value vsig, value vtarget, value vslot)
{
  QObject *source = cuite_QObject_from_ocaml(vsource);
  QObject *target = cuite_QObject_from_ocaml(vtarget);
  const char *signal = String_val(vsig);
  const char *slot = String_val(vslot);
  QObject::connect(source, signal, target, slot);
  return Val_unit;
}

/* Reified classes */

value cuite_QMetaObject_to_ocaml(const QMetaObject *obj)
{
  return ((intnat)(obj)|1);
}

const QMetaObject *cuite_QMetaObject_from_ocaml(value vmeta)
{
  return (const QMetaObject *)(vmeta&(~1));
}

external value cuite_metaobject_name(value vmeta)
{
  const QMetaObject *meta = cuite_QMetaObject_from_ocaml(vmeta);
  return caml_copy_string(meta->className());
}

external value cuite_metaobject_get(value vobj)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vobj));
  QObject *obj = cuite_QObject_from_ocaml(vobj);
  const QMetaObject *meta = obj->metaObject();
  return cuite_QMetaObject_to_ocaml(meta);
}

external value cuite_metaobject_cast(value vobj, value vmeta)
{
  CAMLparam1(vobj);
  value result = Val_unit;
  QObject *obj = cuite_QObject_from_ocaml(vobj);
  const QMetaObject *meta = obj->metaObject();
  const QMetaObject *target_meta = cuite_QMetaObject_from_ocaml(vmeta);
  if (meta->inherits(target_meta))
  {
    result = caml_alloc_small(1, 0);
    Field(result, 0) = vobj;
  }
  CAMLreturn(result);
}

value& cuite_flag_to_ocaml(uint v)
{
  return cuite_region_register(caml_copy_int64((value)v));
}

uint cuite_flag_from_ocaml(const value& v)
{
  return (uint)Int64_val(v);
}
