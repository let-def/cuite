#include "cuite_wrappers.h"
#include "cuite_support.h"
#include <caml/alloc.h>

/* int */

int cuite_int_from_ocaml(const value& v)
{
  return Long_val(v);
}

value& cuite_int_to_ocaml(const int v)
{
  return cuite_region_register(Val_long(v));
}

/* bool */

bool cuite_bool_from_ocaml(const value& v)
{
  return v != Val_int(0);
}

value& cuite_bool_to_ocaml(const bool v)
{
  return cuite_region_register(Val_int(v));
}

/* double */

double cuite_double_from_ocaml(const value& v)
{
  return Double_val(v);
}

value& cuite_double_to_ocaml(const double v)
{
  return cuite_region_register(caml_copy_double(v));
}

/* intnat */

intnat cuite_intnat_from_ocaml(const value& v)
{
  return Nativeint_val(v);
}

value& cuite_intnat_to_ocaml(const intnat v)
{
  return cuite_region_register(caml_copy_nativeint(v));
}

/* qint64 */

qint64 cuite_qint64_from_ocaml(const value& v)
{
  return Int64_val(v);
}

value& cuite_qint64_to_ocaml(const qint64 v)
{
  return cuite_region_register(caml_copy_int64(v));
}

/* pchar */

pchar cuite_pchar_from_ocaml(const value& v)
{
  return String_val(v);
}

value& cuite_pchar_to_ocaml(const pchar& v)
{
  return cuite_region_register(caml_copy_string(v));
}

/* QString */

QString cuite_QString_from_ocaml(const value& v)
{
  return QString::fromUtf8(String_val(v));
}

value& cuite_QString_to_ocaml(const QString& out)
{
  QByteArray b(out.toUtf8());
  value v = caml_alloc_string(b.length());
  memcpy(String_val(v), b.constData(), b.length());
  return cuite_region_register(v);
}

/* QRect */

QRect cuite_QRect_from_ocaml(const value& v)
{
  return QRect(Long_val(Field(v,0)), Long_val(Field(v,1)), Long_val(Field(v,2)), Long_val(Field(v,3)));
}

value& cuite_QRect_to_ocaml(const QRect& v)
{
  value u = caml_alloc_small(4, 0);
  Field(u, 0) = Val_long(v.x());
  Field(u, 1) = Val_long(v.y());
  Field(u, 2) = Val_long(v.width());
  Field(u, 3) = Val_long(v.height());
  return cuite_region_register(u);
}

/* QRectF */

QRectF cuite_QRectF_from_ocaml(const value& v)
{
  return QRectF(Double_field(v,0), Double_field(v,1), Double_field(v,2), Double_field(v,3));
}

value& cuite_QRectF_to_ocaml(const QRectF& v)
{
  value u = caml_alloc_small(4 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.x();
  Double_field(u, 1) = v.y();
  Double_field(u, 2) = v.width();
  Double_field(u, 3) = v.height();
  return cuite_region_register(u);
}

/* QPoint */

QPoint cuite_QPoint_from_ocaml(const value& v)
{
  return QPoint(Long_val(Field(v,0)), Long_val(Field(v,1)));
}

value& cuite_QPoint_to_ocaml(const QPoint& v)
{
  value u = caml_alloc_small(2, 0);
  Field(u, 0) = Val_long(v.x());
  Field(u, 1) = Val_long(v.y());
  return cuite_region_register(u);
}

/* QPointF */

QPointF cuite_QPointF_from_ocaml(const value& v)
{
  return QPointF(Double_field(v,0), Double_field(v,1));
}

value& cuite_QPointF_to_ocaml(const QPointF& v)
{
  value u = caml_alloc_small(2 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.x();
  Double_field(u, 1) = v.y();
  return cuite_region_register(u);
}

/* QSize */

QSize cuite_QSize_from_ocaml(const value& v)
{
  return QSize(Long_val(Field(v,0)), Long_val(Field(v,1)));
}

value& cuite_QSize_to_ocaml(const QSize& v)
{
  value u = caml_alloc_small(2, 0);
  Field(u, 0) = Val_long(v.width());
  Field(u, 1) = Val_long(v.height());
  return cuite_region_register(u);
}

/* QSizeF */

QSizeF cuite_QSizeF_from_ocaml(const value& v)
{
  return QSizeF(Double_field(v,0), Double_field(v,1));
}

value& cuite_QSizeF_to_ocaml(const QSizeF& v)
{
  value u = caml_alloc_small(2 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.width();
  Double_field(u, 1) = v.height();
  return cuite_region_register(u);
}

/* ExtraSelection: a pair of a cursor and a text char format */

QTextEdit::ExtraSelection
cuite_QTextEdit_ExtraSelection_from_ocaml(const value& v)
{
  value &v0 = cuite_region_register(Field(v, 0));
  value &v1 = cuite_region_register(Field(v, 1));

  QTextEdit::ExtraSelection result;
  result.cursor = cuite_QTextCursor_from_ocaml(v0);
  result.format = cuite_QTextCharFormat_from_ocaml(v1);

  return result;
}

value&
cuite_QTextEdit_ExtraSelection_to_ocaml(const QTextEdit::ExtraSelection& v)
{
  value& v0 = cuite_QTextCursor_to_ocaml(v.cursor);
  value& v1 = cuite_QTextCharFormat_to_ocaml(v.format);
  value u = caml_alloc_small(2, 0);
  Field(u, 0) = v0;
  Field(u, 1) = v1;
  return cuite_region_register(u);
}

value&
cuite_QList_QTextEdit_ExtraSelection__to_ocaml(const QList<QTextEdit::ExtraSelection>& v)
{
  value& head = cuite_region_register(Val_unit);
  value& tail = cuite_region_register(Val_unit);
  Q_FOREACH(const QTextEdit::ExtraSelection& sel, v) {
    if (tail == Val_unit)
    {
      tail = caml_alloc_small(2, 0);
      head = tail;
    }
    else
    {
      value v = caml_alloc_small(2, 0);
      Field(tail, 1) = v;
      tail = v;
    }
    Field(tail, 0) = cuite_QTextEdit_ExtraSelection_to_ocaml(sel);
  }
  return head;
}

QList<QTextEdit::ExtraSelection>
cuite_QList_QTextEdit_ExtraSelection__from_ocaml(const value& v)
{
  value& head = cuite_region_register(v);
  value& item = cuite_region_register(Val_unit);

  QList<QTextEdit::ExtraSelection> list;
  while (head != Val_unit)
  {
    item = Field(head, 0);
    list.append(cuite_QTextEdit_ExtraSelection_from_ocaml(item));
    head = Field(head, 1);
  }

  return list;
}

/* Relocatable */

#define CUITE_RELOCATABLE_DEFINE(T)                                 \
  static inline T& cuite_##T##_val(value v)                         \
  {                                                                \
    return *(T*)Data_custom_val(v);                                \
  }                                                                \
  static void cuite_##T##_finalize(value v)                         \
  {                                                                \
    T& t = cuite_##T##_val(v);                                      \
    t.~T();                                                        \
  }                                                                \
  static struct custom_operations cuite_##T##_ops = {               \
    identifier:  (char*)("CUITE relocatable " #T),                  \
    finalize:    cuite_##T##_finalize,                              \
    compare:     custom_compare_default,                           \
    hash:        custom_hash_default,                              \
    serialize:   custom_serialize_default,                         \
    deserialize: custom_deserialize_default                        \
  };                                                               \
  static inline value cuite_val_##T(const T& t)                     \
  {                                                                \
    static_assert(QTypeInfoQuery<T>::isRelocatable, #T " should be relocatable"); \
    value v = caml_alloc_custom(&cuite_##T##_ops, sizeof(T), 0, 1); \
    new(Data_custom_val(v)) T(t);                                  \
    return v;                                                      \
  }

#define CUITE_RELOCATABLE_CONVERTER(T)              \
  CUITE_RELOCATABLE_DEFINE(T);                      \
  T& cuite_##T##_from_ocaml(const value& v)         \
  { return cuite_##T##_val(v); };                   \
  value& cuite_##T##_to_ocaml(const T& v)           \
  { return cuite_region_register(cuite_val_##T(v)); }

CUITE_RELOCATABLE_CONVERTER(QByteArray);
CUITE_RELOCATABLE_CONVERTER(QBrush);
CUITE_RELOCATABLE_CONVERTER(QColor);
CUITE_RELOCATABLE_CONVERTER(QCursor);
CUITE_RELOCATABLE_CONVERTER(QDate);
CUITE_RELOCATABLE_CONVERTER(QDateTime);
CUITE_RELOCATABLE_CONVERTER(QDir);
CUITE_RELOCATABLE_CONVERTER(QFont);
CUITE_RELOCATABLE_CONVERTER(QFontMetrics);
CUITE_RELOCATABLE_CONVERTER(QIcon);
CUITE_RELOCATABLE_CONVERTER(QKeySequence);
CUITE_RELOCATABLE_CONVERTER(QLocale);
CUITE_RELOCATABLE_CONVERTER(QMargins);
CUITE_RELOCATABLE_CONVERTER(QMatrix4x4);
CUITE_RELOCATABLE_CONVERTER(QMatrix);
CUITE_RELOCATABLE_CONVERTER(QByteArrayList);
CUITE_RELOCATABLE_CONVERTER(QItemSelectionRange);
CUITE_RELOCATABLE_CONVERTER(QItemSelection);
CUITE_RELOCATABLE_CONVERTER(QModelIndex);
CUITE_RELOCATABLE_CONVERTER(QModelIndexList);
CUITE_RELOCATABLE_CONVERTER(QPainterPath);
CUITE_RELOCATABLE_CONVERTER(QPalette);
CUITE_RELOCATABLE_CONVERTER(QRegExp);
CUITE_RELOCATABLE_CONVERTER(QRegion);
CUITE_RELOCATABLE_CONVERTER(QStringList);
CUITE_RELOCATABLE_CONVERTER(QTextBlock);
CUITE_RELOCATABLE_CONVERTER(QTextCursor);
CUITE_RELOCATABLE_CONVERTER(QTextFormat);
CUITE_RELOCATABLE_CONVERTER(QTextBlockFormat);
CUITE_RELOCATABLE_CONVERTER(QTextCharFormat);
CUITE_RELOCATABLE_CONVERTER(QTextFrameFormat);
CUITE_RELOCATABLE_CONVERTER(QTextImageFormat);
CUITE_RELOCATABLE_CONVERTER(QTextListFormat);
CUITE_RELOCATABLE_CONVERTER(QTextTableFormat);
CUITE_RELOCATABLE_CONVERTER(QTextTableCellFormat);
CUITE_RELOCATABLE_CONVERTER(QTime);
CUITE_RELOCATABLE_CONVERTER(QTransform);
CUITE_RELOCATABLE_CONVERTER(QUrl);
CUITE_RELOCATABLE_CONVERTER(QVector3D);
CUITE_RELOCATABLE_CONVERTER(QPixmap);
CUITE_RELOCATABLE_CONVERTER(QFileInfo);
CUITE_RELOCATABLE_CONVERTER(QVariantOther);

CUITE_RELOCATABLE_CONVERTER(QBitmap);
CUITE_RELOCATABLE_CONVERTER(QBitArray);
CUITE_RELOCATABLE_CONVERTER(QChar);
CUITE_RELOCATABLE_CONVERTER(QEasingCurve);
CUITE_RELOCATABLE_CONVERTER(QUuid);
CUITE_RELOCATABLE_CONVERTER(QPersistentModelIndex);
CUITE_RELOCATABLE_CONVERTER(QImage);
CUITE_RELOCATABLE_CONVERTER(QLine);
CUITE_RELOCATABLE_CONVERTER(QLineF);
CUITE_RELOCATABLE_CONVERTER(QPen);
CUITE_RELOCATABLE_CONVERTER(QPolygon);
CUITE_RELOCATABLE_CONVERTER(QPolygonF);
CUITE_RELOCATABLE_CONVERTER(QQuaternion);
CUITE_RELOCATABLE_CONVERTER(QRegularExpression);
CUITE_RELOCATABLE_CONVERTER(QRegularExpressionMatch);
CUITE_RELOCATABLE_CONVERTER(QRegularExpressionMatchIterator);
CUITE_RELOCATABLE_CONVERTER(QSizePolicy);
CUITE_RELOCATABLE_CONVERTER(QTextLength);
CUITE_RELOCATABLE_CONVERTER(QVector2D);
CUITE_RELOCATABLE_CONVERTER(QVector4D);

/* Manual */

#define CUITE_MANUAL_PTR_CONVERTER(T)                             \
  static void cuite_##T##_delete(void *vobject)                   \
  {                                                              \
    T *object = (T*)vobject;                                     \
    delete object;                                               \
  }                                                              \
  T *cuite_##T##_from_ocaml(const value& v)                       \
  { return (T*)cuite_manual_from_ocaml(v); };                     \
  value& cuite_##T##_to_ocaml(const T* v)                         \
  { return cuite_manual_to_ocaml((void*)v, &cuite_##T##_delete); }

CUITE_MANUAL_PTR_CONVERTER(QPainter);
CUITE_MANUAL_PTR_CONVERTER(QStyleOption);
CUITE_MANUAL_PTR_CONVERTER(QTextOption);
CUITE_MANUAL_PTR_CONVERTER(QItemEditorFactory);
CUITE_MANUAL_PTR_CONVERTER(QEvent);
CUITE_MANUAL_PTR_CONVERTER(QDataStream);
CUITE_MANUAL_PTR_CONVERTER(QListWidgetItem);
CUITE_MANUAL_PTR_CONVERTER(QTreeWidgetItem);
CUITE_MANUAL_PTR_CONVERTER(QTableWidgetItem);
CUITE_MANUAL_PTR_CONVERTER(QTableWidgetSelectionRange);
CUITE_MANUAL_PTR_CONVERTER(QFileIconProvider);
CUITE_MANUAL_PTR_CONVERTER(QSurfaceFormat);
CUITE_MANUAL_PTR_CONVERTER(QTextDocumentFragment);
CUITE_MANUAL_PTR_CONVERTER(QGradient);
CUITE_MANUAL_PTR_CONVERTER(QPaintEngine);

QPaintDevice *cuite_pQPaintDevice_from_ocaml(const value& v)
{
  intnat ptr = Field(v, 1);
  return (QPaintDevice *)(ptr & ~1);
}

value& cuite_pQPaintDevice_to_ocaml(const value& object, const QPaintDevice *device)
{
  value& result = cuite_region_register(caml_alloc_small(2, 0));
  Field(result, 0) = object;
  Field(result, 1) = ((intnat)device) | 1;
  return result;
}
