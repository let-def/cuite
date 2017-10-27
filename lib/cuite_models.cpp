#include <caml/memory.h>
#include <caml/callback.h>
#include <QAbstractTableModel>
#include <QtGui>
#include "cuite_support.h"
#include "cuite_wrappers.h"
#include "cuite_variant.h"
#include "cuite_const.h"

class QOCamlTableModel : public QAbstractTableModel
{
  public:
    QOCamlTableModel();

    int rowCount(const QModelIndex& parent) const;
    int columnCount(const QModelIndex& parent) const;
    QVariant data(const QModelIndex& index, int role) const;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool setData(const QModelIndex &index, const QVariant &v, int role = Qt::EditRole) override;
    bool insertRows(int position, int rows, const QModelIndex &index = QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index = QModelIndex()) override;
};

#define QOCamlTableModel_payload(v) Field(v, QObject_fields_count + 0)
#define QOCamlTableModel_callback(v, n) Field(Field(v, QObject_fields_count + 1), n)
#define meth_row_count    0
#define meth_column_count 1
#define meth_data         2
#define meth_header_data  3
#define meth_flags        4
#define meth_set_data     5
#define meth_insert_rows  6
#define meth_remove_rows  7

QOCamlTableModel::QOCamlTableModel()
  : QAbstractTableModel()
{
}

external value cuite_new_QOCamlTableModel(value _callbacks, value _payload)
{
  CUITE_Region region;
  value& callbacks = cuite_region_register(_callbacks);
  value& payload = cuite_region_register(_payload);

  QOCamlTableModel *model = new QOCamlTableModel();
  value& v(cuite_QObject_allocate_value(model, 2));
  Store_field(v, QObject_fields_count + 0, payload);
  Store_field(v, QObject_fields_count + 1, callbacks);
  printf("callbacks = %08x\nv = %08x\n", callbacks, v);
  return v;
}

#define PUSH_ARG(v) *_call_top = (v); _call_top += 1

#define PREPARE_CALL(n)                            \
  {                                                \
    CUITE_Region region;                            \
    value *_call_args = cuite_region_allocn((n)+1); \
    value *_call_top = _call_args

#define CALL_CLOSURE(result, inj, closure)                                        \
    *_call_top = caml_callbackN_exn(closure, _call_top - _call_args, _call_args); \
    if (Is_exception_result(*_call_top))                                          \
      cuite_debug_aborted_callback(__func__, Extract_exception(*_call_top));       \
    else                                                                          \
      result = inj(*_call_top);                                                   \
  }

#define PREPARE_METHOD(n, obj)                 \
  PREPARE_CALL((n)+2);                             \
    value& _call_this = cuite_QObject_to_ocaml(obj); \
    PUSH_ARG(QOCamlTableModel_payload(_call_this)); \
    PUSH_ARG(_call_this)

#define CALL_METHOD(result, inj, offset) \
  CALL_CLOSURE(result, inj, QOCamlTableModel_callback(_call_this, offset))

int QOCamlTableModel::rowCount(const QModelIndex& parent) const
{
  int result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&parent));
    value cb = QOCamlTableModel_callback(_call_this, meth_row_count);
  CALL_CLOSURE(result, Long_val, cb);
  return result;
}

int QOCamlTableModel::columnCount(const QModelIndex& parent) const
{
  int result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&parent));
  CALL_METHOD(result, Long_val, meth_column_count);
  return result;
}

QVariant QOCamlTableModel::data(const QModelIndex& index, int role) const
{
  QVariant result;
  PREPARE_METHOD(2, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&index));
    PUSH_ARG(cuite_Qt_ItemDataRole_to_ocaml((Qt::ItemDataRole)role));
  CALL_METHOD(result, cuite_QVariant_from_ocaml, meth_data);
  return result;
}

QVariant QOCamlTableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
  QVariant result;
  PREPARE_METHOD(3, this);
    PUSH_ARG(Val_long(section));
    PUSH_ARG(cuite_Qt_Orientation_to_ocaml(orientation));
    PUSH_ARG(cuite_Qt_ItemDataRole_to_ocaml((Qt::ItemDataRole)role));
  CALL_METHOD(result, cuite_QVariant_from_ocaml, meth_header_data);
  return result;
}

Qt::ItemFlags QOCamlTableModel::flags(const QModelIndex &index) const
{
  Qt::ItemFlags result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&index));
  CALL_METHOD(result, cuite_Qt_ItemFlags_from_ocaml, meth_flags);
  return result;
}

bool QOCamlTableModel::setData(const QModelIndex &index, const QVariant &v, int role)
{
  bool result = false;
  PREPARE_METHOD(3, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&index));
    PUSH_ARG(cuite_QVariant_to_ocaml(&v));
    PUSH_ARG(cuite_Qt_ItemDataRole_to_ocaml((Qt::ItemDataRole)role));
  CALL_METHOD(result, Val_bool, meth_set_data);
  return result;
}

#define ID(x) x

bool QOCamlTableModel::insertRows(int position, int rows, const QModelIndex &index)
{
  value result = Val_unit;
  PREPARE_METHOD(3, this);
    PUSH_ARG(Val_long(position));
    PUSH_ARG(Val_long(rows));
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&index));
  CALL_METHOD(result, ID, meth_insert_rows);

  if (result == Val_unit)
    return false;

  beginInsertRows(index, position, position + rows - 1);
  PREPARE_CALL(1);
    PUSH_ARG(Val_unit);
  CALL_CLOSURE(result, ID, Field(result, 0));
  endInsertRows();

  return true;
}

bool QOCamlTableModel::removeRows(int position, int rows, const QModelIndex &index)
{
  value result = Val_unit;
  PREPARE_METHOD(3, this);
    PUSH_ARG(Val_long(position));
    PUSH_ARG(Val_long(rows));
    PUSH_ARG(cuite_QModelIndex_to_ocaml(&index));
  CALL_METHOD(result, ID, meth_remove_rows);

  if (result == Val_unit)
    return false;

  beginRemoveRows(index, position, position + rows - 1);
  PREPARE_CALL(1);
    PUSH_ARG(Val_unit);
  CALL_CLOSURE(result, ID, Field(result, 0));
  endRemoveRows();

  return true;
}
