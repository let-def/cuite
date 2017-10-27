#include "mlqt_lib.h"
#include "mlqt_support.h"
#include <caml/alloc.h>

/* int */

int mlqt_int_from_ocaml(const value& v)
{
  return Long_val(v);
}

value& mlqt_int_to_ocaml(const int v)
{
  return mlqt_region_register(Val_long(v));
}

/* bool */

bool mlqt_bool_from_ocaml(const value& v)
{
  return v != Val_int(0);
}

value& mlqt_bool_to_ocaml(const bool v)
{
  return mlqt_region_register(Val_int(v));
}

/* double */

double mlqt_double_from_ocaml(const value& v)
{
  return Double_val(v);
}

value& mlqt_double_to_ocaml(const double v)
{
  return mlqt_region_register(caml_copy_double(v));
}

/* intnat */

intnat mlqt_intnat_from_ocaml(const value& v)
{
  return Nativeint_val(v);
}

value& mlqt_intnat_to_ocaml(const intnat v)
{
  return mlqt_region_register(caml_copy_nativeint(v));
}

/* pchar */

pchar mlqt_pchar_from_ocaml(const value& v)
{
  return String_val(v);
}

value& mlqt_pchar_to_ocaml(const pchar& v)
{
  return mlqt_region_register(caml_copy_string(v));
}

/* QString */

QString mlqt_QString_from_ocaml(const value& v)
{
  return QString::fromUtf8(String_val(v));
}

value& mlqt_QString_to_ocaml(const QString& out)
{
  QByteArray b(out.toUtf8());
  value v = caml_alloc_string(b.length());
  memcpy(String_val(v), b.constData(), b.length());
  return mlqt_region_register(v);
}

/* QRect */

QRect mlqt_QRect_from_ocaml(const value& v)
{
  return QRect(Long_val(Field(v,0)), Long_val(Field(v,1)), Long_val(Field(v,2)), Long_val(Field(v,3)));
}

value& mlqt_QRect_to_ocaml(const QRect& v)
{
  value u = caml_alloc_small(4, 0);
  Field(u, 0) = v.x();
  Field(u, 1) = v.y();
  Field(u, 2) = v.width();
  Field(u, 3) = v.height();
  return mlqt_region_register(u);
}

/* QRectF */

QRectF mlqt_QRectF_from_ocaml(const value& v)
{
  return QRectF(Double_field(v,0), Double_field(v,1), Double_field(v,2), Double_field(v,3));
}

value& mlqt_QRectF_to_ocaml(const QRectF& v)
{
  value u = caml_alloc_small(4 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.x();
  Double_field(u, 1) = v.y();
  Double_field(u, 2) = v.width();
  Double_field(u, 3) = v.height();
  return mlqt_region_register(u);
}

/* QPoint */

QPoint mlqt_QPoint_from_ocaml(const value& v)
{
  return QPoint(Long_val(Field(v,0)), Long_val(Field(v,1)));
}

value& mlqt_QPoint_to_ocaml(const QPoint& v)
{
  value u = caml_alloc_small(2, 0);
  Field(u, 0) = v.x();
  Field(u, 1) = v.y();
  return mlqt_region_register(u);
}

/* QPointF */

QPointF mlqt_QPointF_from_ocaml(const value& v)
{
  return QPointF(Double_field(v,0), Double_field(v,1));
}

value& mlqt_QPointF_to_ocaml(const QPointF& v)
{
  value u = caml_alloc_small(2 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.x();
  Double_field(u, 1) = v.y();
  return mlqt_region_register(u);
}

/* QSize */

QSize mlqt_QSize_from_ocaml(const value& v)
{
  return QSize(Long_val(Field(v,0)), Long_val(Field(v,1)));
}

value& mlqt_QSize_to_ocaml(const QSize& v)
{
  value u = caml_alloc_small(2, 0);
  Field(u, 0) = v.width();
  Field(u, 1) = v.height();
  return mlqt_region_register(u);
}

/* QSizeF */

QSizeF mlqt_QSizeF_from_ocaml(const value& v)
{
  return QSizeF(Double_field(v,0), Double_field(v,1));
}

value& mlqt_QSizeF_to_ocaml(const QSizeF& v)
{
  value u = caml_alloc_small(2 * Double_wosize, Double_array_tag);
  Double_field(u, 0) = v.width();
  Double_field(u, 1) = v.height();
  return mlqt_region_register(u);
}

/* Relocatable */

#define MLQT_RELOCATABLE_DEFINE(T)                                 \
  static inline T& mlqt_##T##_val(value v)                         \
  {                                                                \
    return *(T*)Data_custom_val(v);                                \
  }                                                                \
  static void mlqt_##T##_finalize(value v)                         \
  {                                                                \
    T& t = mlqt_##T##_val(v);                                      \
    t.~T();                                                        \
  }                                                                \
  static struct custom_operations mlqt_##T##_ops = {               \
    identifier:  (char*)("MLQT relocatable " #T),                  \
    finalize:    mlqt_##T##_finalize,                              \
    compare:     custom_compare_default,                           \
    hash:        custom_hash_default,                              \
    serialize:   custom_serialize_default,                         \
    deserialize: custom_deserialize_default                        \
  };                                                               \
  static inline value mlqt_val_##T(const T& t)                     \
  {                                                                \
    value v = caml_alloc_custom(&mlqt_##T##_ops, sizeof(T), 0, 1); \
    new(Data_custom_val(v)) T(t);                                  \
    return v;                                                      \
  }

#define MLQT_RELOCATABLE_CONVERTER(T)              \
  MLQT_RELOCATABLE_DEFINE(T);                      \
  T* mlqt_##T##_from_ocaml(const value& v)         \
  { return &mlqt_##T##_val(v); };                  \
  value& mlqt_##T##_to_ocaml(const T *v)           \
  { return mlqt_region_register(mlqt_val_##T(*v)); }

MLQT_RELOCATABLE_CONVERTER(QByteArray);
MLQT_RELOCATABLE_CONVERTER(QBrush);
MLQT_RELOCATABLE_CONVERTER(QColor);
MLQT_RELOCATABLE_CONVERTER(QCursor);
MLQT_RELOCATABLE_CONVERTER(QDate);
MLQT_RELOCATABLE_CONVERTER(QDateTime);
MLQT_RELOCATABLE_CONVERTER(QDir);
MLQT_RELOCATABLE_CONVERTER(QFont);
MLQT_RELOCATABLE_CONVERTER(QFontMetrics);
MLQT_RELOCATABLE_CONVERTER(QIcon);
MLQT_RELOCATABLE_CONVERTER(QKeySequence);
MLQT_RELOCATABLE_CONVERTER(QLocale);
MLQT_RELOCATABLE_CONVERTER(QMargins);
MLQT_RELOCATABLE_CONVERTER(QMatrix4x4);
MLQT_RELOCATABLE_CONVERTER(QMatrix);
MLQT_RELOCATABLE_CONVERTER(QByteArrayList);
MLQT_RELOCATABLE_CONVERTER(QItemSelectionRange);
MLQT_RELOCATABLE_CONVERTER(QItemSelection);
MLQT_RELOCATABLE_CONVERTER(QModelIndex);
MLQT_RELOCATABLE_CONVERTER(QModelIndexList);
MLQT_RELOCATABLE_CONVERTER(QPainterPath);
MLQT_RELOCATABLE_CONVERTER(QPalette);
MLQT_RELOCATABLE_CONVERTER(QRegExp);
MLQT_RELOCATABLE_CONVERTER(QRegion);
MLQT_RELOCATABLE_CONVERTER(QStringList);
MLQT_RELOCATABLE_CONVERTER(QTextCursor);
MLQT_RELOCATABLE_CONVERTER(QTextFormat);
MLQT_RELOCATABLE_CONVERTER(QTextCharFormat);
MLQT_RELOCATABLE_CONVERTER(QTime);
MLQT_RELOCATABLE_CONVERTER(QTransform);
MLQT_RELOCATABLE_CONVERTER(QUrl);
MLQT_RELOCATABLE_CONVERTER(QVector3D);
MLQT_RELOCATABLE_CONVERTER(QPixmap);
MLQT_RELOCATABLE_CONVERTER(QFileInfo);
MLQT_RELOCATABLE_CONVERTER(QVariantOther);

MLQT_RELOCATABLE_CONVERTER(QBitmap);
MLQT_RELOCATABLE_CONVERTER(QBitArray);
MLQT_RELOCATABLE_CONVERTER(QChar);
MLQT_RELOCATABLE_CONVERTER(QEasingCurve);
MLQT_RELOCATABLE_CONVERTER(QUuid);
MLQT_RELOCATABLE_CONVERTER(QPersistentModelIndex);
MLQT_RELOCATABLE_CONVERTER(QImage);
MLQT_RELOCATABLE_CONVERTER(QLine);
MLQT_RELOCATABLE_CONVERTER(QLineF);
MLQT_RELOCATABLE_CONVERTER(QPen);
MLQT_RELOCATABLE_CONVERTER(QPolygon);
MLQT_RELOCATABLE_CONVERTER(QPolygonF);
MLQT_RELOCATABLE_CONVERTER(QQuaternion);
MLQT_RELOCATABLE_CONVERTER(QRegularExpression);
MLQT_RELOCATABLE_CONVERTER(QRegularExpressionMatch);
MLQT_RELOCATABLE_CONVERTER(QRegularExpressionMatchIterator);
MLQT_RELOCATABLE_CONVERTER(QSizePolicy);
MLQT_RELOCATABLE_CONVERTER(QTextLength);
MLQT_RELOCATABLE_CONVERTER(QVector2D);
MLQT_RELOCATABLE_CONVERTER(QVector4D);

/* Manual */

#define MLQT_MANUAL_PTR_CONVERTER(T)                             \
  static void mlqt_##T##_delete(void *vobject)                   \
  {                                                              \
    T *object = (T*)vobject;                                     \
    delete object;                                               \
  }                                                              \
  T *mlqt_##T##_from_ocaml(const value& v)                       \
  { return (T*)mlqt_manual_from_ocaml(v); };                     \
  value& mlqt_##T##_to_ocaml(const T* v)                         \
  { return mlqt_manual_to_ocaml((void*)v, &mlqt_##T##_delete); }

MLQT_MANUAL_PTR_CONVERTER(QPainter);
MLQT_MANUAL_PTR_CONVERTER(QStyleOption);
MLQT_MANUAL_PTR_CONVERTER(QItemEditorFactory);
MLQT_MANUAL_PTR_CONVERTER(QEvent);
MLQT_MANUAL_PTR_CONVERTER(QDataStream);
MLQT_MANUAL_PTR_CONVERTER(QListWidgetItem);
MLQT_MANUAL_PTR_CONVERTER(QTreeWidgetItem);
MLQT_MANUAL_PTR_CONVERTER(QTableWidgetItem);
MLQT_MANUAL_PTR_CONVERTER(QTableWidgetSelectionRange);
MLQT_MANUAL_PTR_CONVERTER(QFileIconProvider);
