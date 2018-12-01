#include <caml/memory.h>
#include <caml/callback.h>
#include <QAbstractTableModel>
#include <QSyntaxHighlighter>
#include <QtGui>
#include "cuite_support.h"
#include "cuite_wrappers.h"
#include "cuite_variant.h"
#include "flags.hpp.gen"

#define model_payload(v) Field(v, QObject_fields_count + 0)
#define model_callback(v, n) Field(Field(v, QObject_fields_count + 1), n)

#define ID(x) x

#define PUSH_ARG(v) *_call_top = (v); _call_top += 1

#define PREPARE_CALL(n)                            \
  {                                                \
    CUITE_OCAML_REGION();                          \
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
    PUSH_ARG(model_payload(_call_this)); \
    PUSH_ARG(_call_this)

#define CALL_METHOD(result, inj, offset) \
  CALL_CLOSURE(result, inj, model_callback(_call_this, offset))

external value cuite_get_payload(value v)
{
  return model_payload(v);
}

/* QAbstractTableModel */

class QOCamlTableModel : public QAbstractTableModel
{
  public:
    QOCamlTableModel();

    int rowCount(const QModelIndex& parent) const override;
    int columnCount(const QModelIndex& parent) const override;
    QVariant data(const QModelIndex& index, int role) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool setData(const QModelIndex &index, const QVariant &v, int role = Qt::EditRole) override;
    bool insertRows(int position, int rows, const QModelIndex &index = QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index = QModelIndex()) override;
};

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

external value cuite_new_QOCamlTableModel(value callbacks, value payload)
{
  CUITE_GC_REGION(&callbacks, &payload);

  QOCamlTableModel *model = new QOCamlTableModel();
  value& v(cuite_QObject_allocate_value(model, 2));
  Store_field(v, QObject_fields_count + 0, payload);
  Store_field(v, QObject_fields_count + 1, callbacks);
  CUITE_LOG("new QOCamlTableModel(callbacks = %08lx) = %08lx\n", callbacks, v);
  return v;
}

int QOCamlTableModel::rowCount(const QModelIndex& parent) const
{
  int result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(parent));
  CALL_METHOD(result, Long_val, meth_row_count);
  return result;
}

int QOCamlTableModel::columnCount(const QModelIndex& parent) const
{
  int result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(parent));
  CALL_METHOD(result, Long_val, meth_column_count);
  return result;
}

QVariant QOCamlTableModel::data(const QModelIndex& index, int role) const
{
  QVariant result;
  PREPARE_METHOD(2, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(index));
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

static Qt::ItemFlags cuite_Qt_ItemFlags_from_ocaml(const value& v)
{
  int64_t x = cuite_flag_from_ocaml(v);
  return Qt::ItemFlags((int)x);
}

Qt::ItemFlags QOCamlTableModel::flags(const QModelIndex &index) const
{
  Qt::ItemFlags result = 0;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(index));
  CALL_METHOD(result, cuite_Qt_ItemFlags_from_ocaml, meth_flags);
  return result;
}

bool QOCamlTableModel::setData(const QModelIndex &index, const QVariant &v, int role)
{
  bool result = false;
  PREPARE_METHOD(3, this);
    PUSH_ARG(cuite_QModelIndex_to_ocaml(index));
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
    PUSH_ARG(cuite_QModelIndex_to_ocaml(index));
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
    PUSH_ARG(cuite_QModelIndex_to_ocaml(index));
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


/* QSyntaxHighlighter */

#define meth_highlight_block 0
#define meth_release_data    1

class QOCamlSyntaxHighlighter : public QSyntaxHighlighter
{
  public:
    QOCamlSyntaxHighlighter(QObject *parent);
    //QOCamlSyntaxHighlighter(QTextDocument *parent);

    inline QTextBlock call_currentBlock() const
    { return this->currentBlock(); }
    inline int call_currentBlockState() const
    { return this->currentBlockState(); }
    inline QTextBlockUserData* call_currentBlockUserData() const
    { return this->currentBlockUserData(); }
    inline QTextCharFormat call_format(int position) const
    { return this->format(position); }
    inline int call_previousBlockState() const
    { return this->previousBlockState(); }
    inline void call_setFormat(int start, int count, const QTextCharFormat &format)
    { this->setFormat(start, count, format); }
    inline void call_setFormat(int start, int count, const QColor &color)
    { this->setFormat(start, count, color); }
    inline void call_setFormat(int start, int count, const QFont &font)
    { this->setFormat(start, count, font); }

    inline void call_setCurrentBlockState(int newState)
    {
      this->setCurrentBlockState(newState);
      this->setCurrentBlockUserData(NULL);
    }

    struct QOCamlTextBlockUserData : QTextBlockUserData
    {
      QOCamlSyntaxHighlighter *highlighter;
      int state;

      QOCamlTextBlockUserData(QOCamlSyntaxHighlighter *_highlighter, int _state)
        : highlighter(_highlighter), state(_state)
      {}

      void changeState(int newState)
      {
        value result;
        PREPARE_METHOD(1, highlighter);
        PUSH_ARG(Val_long(state));
        CALL_METHOD(result, ID, meth_release_data);
        state = newState;
      }

      ~QOCamlTextBlockUserData()
      {
        changeState(-1);
      }
    };

    inline void call_setCurrentBlockStateAndNotifyRelease(int newState)
    {
      this->setCurrentBlockState(newState);
      QTextBlockUserData *userData = this->currentBlockUserData();
      QOCamlTextBlockUserData *ocamlData = NULL;
      if (userData != NULL)
        ocamlData = dynamic_cast<QOCamlTextBlockUserData*>(userData);
      if (ocamlData != NULL)
        ocamlData->changeState(newState);
      else
      {
        ocamlData = new QOCamlTextBlockUserData(this, newState);
        this->setCurrentBlockUserData(ocamlData);
      }
    }

  protected:
    void highlightBlock(const QString &text) override;
};

QOCamlSyntaxHighlighter::QOCamlSyntaxHighlighter(QObject *parent)
  : QSyntaxHighlighter(parent) {}

//QOCamlSyntaxHighlighter::QOCamlSyntaxHighlighter(QTextDocument *parent)
//  : QSyntaxHighlighter(parent) {}

external value cuite_new_QOCamlSyntaxHighlighter(value callbacks, value payload, value parent)
{
  CUITE_GC_REGION(&callbacks, &payload, &parent);

  QOCamlSyntaxHighlighter *model = new QOCamlSyntaxHighlighter(cuite_QObject_option_from_ocaml(parent));
  value& v(cuite_QObject_allocate_value(model, 2));
  Store_field(v, QObject_fields_count + 0, payload);
  Store_field(v, QObject_fields_count + 1, callbacks);
  CUITE_LOG("new QOCamlSyntaxHighlighter(callbacks = %08lx) = %08lx\n", callbacks, v);
  return v;
}

void QOCamlSyntaxHighlighter::highlightBlock(const QString &text)
{
  value result;
  PREPARE_METHOD(1, this);
    PUSH_ARG(cuite_QString_to_ocaml(text));
  CALL_METHOD(result, ID, meth_highlight_block);
}

external value cuite_QOCamlSyntaxHighlighter_currentBlock(value vself)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  QTextBlock block(self->call_currentBlock());
  return cuite_QTextBlock_to_ocaml(block);
}

external value cuite_QOCamlSyntaxHighlighter_currentBlockState(value vself)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  return Val_long(self->call_currentBlockState());
}

external value cuite_QOCamlSyntaxHighlighter_format(value vself, value position)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  QTextCharFormat result(self->call_format(Long_val(position)));
  return cuite_QTextCharFormat_to_ocaml(result);
}

external value cuite_QOCamlSyntaxHighlighter_previousBlockState(value vself)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  return Val_long(self->call_previousBlockState());
}

external value cuite_QOCamlSyntaxHighlighter_setCurrentBlockState(value vself, value newState)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  self->call_setCurrentBlockState(Long_val(newState));
  return Val_unit;
}

external value cuite_QOCamlSyntaxHighlighter_setCurrentBlockStateAndNotifyRelease(value vself, value newState)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(vself));
  CUITE_GC_REGION(&vself);
  QOCamlSyntaxHighlighter *self = (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(vself);
  self->call_setCurrentBlockStateAndNotifyRelease(Long_val(newState));
  return Val_unit;
}

external value cuite_QOCamlSyntaxHighlighter_setFormat(value mlself, value start, value count, value mlformat)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(mlself));
  CUITE_GC_REGION(&mlself, &mlformat);
  QOCamlSyntaxHighlighter *self =
    (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(mlself);
  const QTextCharFormat& format = cuite_QTextCharFormat_from_ocaml(mlformat);
  self->call_setFormat(Long_val(start), Long_val(count), format);
  return Val_unit;
}

external value cuite_QOCamlSyntaxHighlighter_setFormatColor(value mlself, value start, value count, value mlcolor)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(mlself));
  CUITE_GC_REGION(&mlself, &mlcolor);
  QOCamlSyntaxHighlighter *self =
    (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(mlself);
  const QColor& color = cuite_QColor_from_ocaml(mlcolor);
  self->call_setFormat(Long_val(start), Long_val(count), color);
  return Val_unit;
}

external value cuite_QOCamlSyntaxHighlighter_setFormatFont(value mlself, value start, value count, value mlfont)
{
  CHECK_USE_AFTER_FREE(cuite_QObject_check_use(mlself));
  CUITE_GC_REGION(&mlself, &mlfont);
  QOCamlSyntaxHighlighter *self =
    (QOCamlSyntaxHighlighter *)cuite_QObject_from_ocaml(mlself);
  const QFont& font = cuite_QFont_from_ocaml(mlfont);
  self->call_setFormat(Long_val(start), Long_val(count), font);
  return Val_unit;
}

/* Event Filter */

class QOCamlEventFilter : public QObject
{
  public:
    QOCamlEventFilter() {};

    bool eventFilter(QObject *watched, QEvent *event);
};

#define meth_filter    0

external value cuite_new_QOCamlEventFilter(value callbacks, value payload)
{
  CUITE_GC_REGION(&callbacks, &payload);

  QOCamlEventFilter *filter = new QOCamlEventFilter();
  value& v(cuite_QObject_allocate_value(filter, 2));
  Store_field(v, QObject_fields_count + 0, payload);
  Store_field(v, QObject_fields_count + 1, callbacks);
  CUITE_LOG("new QOCamlEventFilter(callbacks = %08lx) = %08lx\n", callbacks, v);
  return v;
}

bool QOCamlEventFilter::eventFilter(QObject *watched, QEvent *event)
{
  bool result = false;
  PREPARE_METHOD(2, this);
    PUSH_ARG(cuite_QObject_to_ocaml(watched));
    PUSH_ARG(cuite_QEvent_to_ocaml(event));
  CALL_METHOD(result, Val_bool, meth_filter);
  return result;
}

