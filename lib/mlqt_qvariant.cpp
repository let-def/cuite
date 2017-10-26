#include "mlqt_qvariant.h"
#include "mlqt_lib.h"
#include <caml/alloc.h>
#include <QDebug>

#define TAG_UnknownType           0
#define TAG_QBitArray             1
#define TAG_QBitmap               2
#define TAG_Bool                  3
#define TAG_QBrush                4
#define TAG_QByteArray            5
#define TAG_QChar                 6
#define TAG_QColor                7
#define TAG_QCursor               8
#define TAG_QDate                 9
#define TAG_QDateTime             10
#define TAG_Double                11
#define TAG_QEasingCurve          12
#define TAG_QUuid                 13
#define TAG_QModelIndex           14
#define TAG_QPersistentModelIndex 15
#define TAG_QFont                 16
#define TAG_QVariantHash          17
#define TAG_QIcon                 18
#define TAG_QImage                19
#define TAG_Int                   20
#define TAG_QKeySequence          21
#define TAG_QLine                 22
#define TAG_QLineF                23
#define TAG_QVariantList          24
#define TAG_QLocale               25
#define TAG_LongLong              26
#define TAG_QVariantMap           27
#define TAG_QMatrix               28
#define TAG_QTransform            29
#define TAG_QMatrix4x4            30
#define TAG_QPalette              31
#define TAG_QPen                  32
#define TAG_QPixmap               33
#define TAG_QPoint                34
#define TAG_QPointF               35
#define TAG_QPolygon              36
#define TAG_QPolygonF             37
#define TAG_QQuaternion           38
#define TAG_QRect                 39
#define TAG_QRectF                40
#define TAG_QRegExp               41
#define TAG_QRegularExpression    42
#define TAG_QRegion               43
#define TAG_QSize                 44
#define TAG_QSizeF                45
#define TAG_QSizePolicy           46
#define TAG_QString               47
#define TAG_QStringList           48
#define TAG_QTextFormat           49
#define TAG_QTextLength           50
#define TAG_QTime                 51
#define TAG_UInt                  52
#define TAG_ULongLong             53
#define TAG_QUrl                  54
#define TAG_QVector2D             55
#define TAG_QVector3D             56
#define TAG_QVector4D             57
#define TAG_User                  58

QVariant mlqt_QVariant_from_ocaml(const value& v)
{
  value x = Field(v,0);
  switch (Tag_val(v))
  {
    case TAG_UnknownType:
    case TAG_User:
      return QVariant(*mlqt_QVariantOther_from_ocaml(x));
    case TAG_QBitArray:
      return QVariant(*mlqt_QBitArray_from_ocaml(x));
    case TAG_QBitmap:
      return QVariant(*mlqt_QBitmap_from_ocaml(x));
    case TAG_Bool:
      return QVariant(mlqt_bool_from_ocaml(x));
    case TAG_QBrush:
      return QVariant(*mlqt_QBrush_from_ocaml(x));
    case TAG_QByteArray:
      return QVariant(*mlqt_QByteArray_from_ocaml(x));
    case TAG_QChar:
      return QVariant(*mlqt_QChar_from_ocaml(x));
    case TAG_QColor:
      return QVariant(*mlqt_QColor_from_ocaml(x));
    case TAG_QCursor:
      return QVariant(*mlqt_QCursor_from_ocaml(x));
    case TAG_QDate:
      return QVariant(*mlqt_QDate_from_ocaml(x));
    case TAG_QDateTime:
      return QVariant(*mlqt_QDateTime_from_ocaml(x));
    case TAG_Double:
      return QVariant(mlqt_double_from_ocaml(x));
    case TAG_QEasingCurve:
      return QVariant(*mlqt_QEasingCurve_from_ocaml(x));
    case TAG_QUuid:
      return QVariant(*mlqt_QUuid_from_ocaml(x));
    case TAG_QModelIndex:
      return QVariant(*mlqt_QModelIndex_from_ocaml(x));
    case TAG_QPersistentModelIndex:
      return QVariant(*mlqt_QPersistentModelIndex_from_ocaml(x));
    case TAG_QFont:
      return QVariant(*mlqt_QFont_from_ocaml(x));
    //case TAG_QVariantHash:
    //  return QVariant(mlqt_QVariantHash_from_ocaml(x));
    case TAG_QIcon:
      return QVariant(*mlqt_QIcon_from_ocaml(x));
    case TAG_QImage:
      return QVariant(*mlqt_QImage_from_ocaml(x));
    case TAG_Int:
      return QVariant((int)mlqt_int_from_ocaml(x));
    case TAG_QKeySequence:
      return QVariant(*mlqt_QKeySequence_from_ocaml(x));
    case TAG_QLine:
      return QVariant(*mlqt_QLine_from_ocaml(x));
    case TAG_QLineF:
      return QVariant(*mlqt_QLineF_from_ocaml(x));
    //case TAG_QVariantList:
    //  return QVariant(mlqt_QVariantList_from_ocaml(x));
    case TAG_QLocale:
      return QVariant(*mlqt_QLocale_from_ocaml(x));
    case TAG_LongLong:
      return QVariant((qlonglong)mlqt_intnat_from_ocaml(x));
    //case TAG_QVariantMap:
    //  return QVariant(mlqt_QVariantMap_from_ocaml(x));
    case TAG_QMatrix:
      return QVariant(*mlqt_QMatrix_from_ocaml(x));
    case TAG_QTransform:
      return QVariant(*mlqt_QTransform_from_ocaml(x));
    case TAG_QMatrix4x4:
      return QVariant(*mlqt_QMatrix4x4_from_ocaml(x));
    case TAG_QPalette:
      return QVariant(*mlqt_QPalette_from_ocaml(x));
    case TAG_QPen:
      return QVariant(*mlqt_QPen_from_ocaml(x));
    case TAG_QPixmap:
      return QVariant(*mlqt_QPixmap_from_ocaml(x));
    case TAG_QPoint:
      return QVariant(mlqt_QPoint_from_ocaml(x));
    case TAG_QPointF:
      return QVariant(mlqt_QPointF_from_ocaml(x));
    case TAG_QPolygon:
      return QVariant(*mlqt_QPolygon_from_ocaml(x));
    case TAG_QPolygonF:
      return QVariant(*mlqt_QPolygonF_from_ocaml(x));
    case TAG_QQuaternion:
      return QVariant(*mlqt_QQuaternion_from_ocaml(x));
    case TAG_QRect:
      return QVariant(mlqt_QRect_from_ocaml(x));
    case TAG_QRectF:
      return QVariant(mlqt_QRectF_from_ocaml(x));
    case TAG_QRegExp:
      return QVariant(*mlqt_QRegExp_from_ocaml(x));
    case TAG_QRegularExpression:
      return QVariant(*mlqt_QRegularExpression_from_ocaml(x));
    case TAG_QRegion:
      return QVariant(*mlqt_QRegion_from_ocaml(x));
    case TAG_QSize:
      return QVariant(mlqt_QSize_from_ocaml(x));
    case TAG_QSizeF:
      return QVariant(mlqt_QSizeF_from_ocaml(x));
    case TAG_QSizePolicy:
      return QVariant(*mlqt_QSizePolicy_from_ocaml(x));
    case TAG_QString:
      {
        printf("converting %s to QVariant\n", String_val(x));
        QVariant v(mlqt_QString_from_ocaml(x));
        qDebug() << "mlqt_QVariant_from_ocaml(" << v << ")";
        return v;
      }
    case TAG_QStringList:
      return QVariant(*mlqt_QStringList_from_ocaml(x));
    case TAG_QTextFormat:
      return QVariant(*mlqt_QTextFormat_from_ocaml(x));
    case TAG_QTextLength:
      return QVariant(*mlqt_QTextLength_from_ocaml(x));
    case TAG_QTime:
      return QVariant(*mlqt_QTime_from_ocaml(x));
    case TAG_UInt:
      return QVariant((uint)mlqt_int_from_ocaml(x));
    case TAG_ULongLong:
      return QVariant((qulonglong)mlqt_intnat_from_ocaml(x));
    case TAG_QUrl:
      return QVariant(*mlqt_QUrl_from_ocaml(x));
    case TAG_QVector2D:
      return QVariant(*mlqt_QVector2D_from_ocaml(x));
    case TAG_QVector3D:
      return QVariant(*mlqt_QVector3D_from_ocaml(x));
    case TAG_QVector4D:
      return QVariant(*mlqt_QVector4D_from_ocaml(x));
    default:
      abort();
  }
}

static value& mlqt_QVariant_wrap(int tag, const value& v)
{
  value& result = *mlqt_region_alloc();
  result = caml_alloc_small(1, tag);
  Field(result, 0) = v;
  return result;
}

value& mlqt_QVariant_to_ocaml(const QVariant *x)
{
  return mlqt_QVariant_to_ocaml(*x);
}

value& mlqt_QVariant_to_ocaml(const QVariant& x)
{
  qDebug() << "mlqt_QVariant_to_ocaml(" << x << ")";
  switch (x.type())
  {
    case QMetaType::UnknownType:
      return mlqt_QVariant_wrap(TAG_UnknownType, mlqt_QVariantOther_to_ocaml(&x));
    case QMetaType::User:
      return mlqt_QVariant_wrap(TAG_User, mlqt_QVariantOther_to_ocaml(&x));
    case QMetaType::QBitArray:
      {
        auto y = x.toBitArray();
        return mlqt_QVariant_wrap(TAG_QBitArray, mlqt_QBitArray_to_ocaml(&y));
      }
    case QMetaType::QBitmap:
      {
        auto y = x.value<QBitmap>();
        return mlqt_QVariant_wrap(TAG_QBitmap, mlqt_QBitmap_to_ocaml(&y));
      }
    case QMetaType::Bool:
      return mlqt_QVariant_wrap(TAG_Bool, mlqt_bool_to_ocaml(x.toBool()));
    case QMetaType::QBrush:
      {
        auto y = x.value<QBrush>();
        return mlqt_QVariant_wrap(TAG_QBrush, mlqt_QBrush_to_ocaml(&y));
      }
    case QMetaType::QByteArray:
      {
        auto y = x.toByteArray();
        return mlqt_QVariant_wrap(TAG_QByteArray, mlqt_QByteArray_to_ocaml(&y));
      }
    case QMetaType::QChar:
      {
        auto y = x.toChar();
        return mlqt_QVariant_wrap(TAG_QChar, mlqt_QChar_to_ocaml(&y));
      }
    case QMetaType::QColor:
      {
        auto y = x.value<QColor>();
        return mlqt_QVariant_wrap(TAG_QColor, mlqt_QColor_to_ocaml(&y));
      }
    case QMetaType::QCursor:
      {
        auto y = x.value<QCursor>();
        return mlqt_QVariant_wrap(TAG_QCursor, mlqt_QCursor_to_ocaml(&y));
      }
    case QMetaType::QDate:
      {
        auto y = x.toDate();
        return mlqt_QVariant_wrap(TAG_QDate, mlqt_QDate_to_ocaml(&y));
      }
    case QMetaType::QDateTime:
      {
        auto y = x.toDateTime();
        return mlqt_QVariant_wrap(TAG_QDateTime, mlqt_QDateTime_to_ocaml(&y));
      }
    case QMetaType::Double:
      return mlqt_QVariant_wrap(TAG_Double, mlqt_double_to_ocaml(x.toDouble()));
    case QMetaType::QEasingCurve:
      {
        auto y = x.toEasingCurve();
        return mlqt_QVariant_wrap(TAG_QEasingCurve, mlqt_QEasingCurve_to_ocaml(&y));
      }
    case QMetaType::QUuid:
      {
        auto y = x.toUuid();
        return mlqt_QVariant_wrap(TAG_QUuid, mlqt_QUuid_to_ocaml(&y));
      }
    case QMetaType::QModelIndex:
      {
        auto y = x.toModelIndex();
        return mlqt_QVariant_wrap(TAG_QModelIndex, mlqt_QModelIndex_to_ocaml(&y));
      }
    case QMetaType::QPersistentModelIndex:
      {
        auto y = x.toPersistentModelIndex();
        return mlqt_QVariant_wrap(TAG_QPersistentModelIndex, mlqt_QPersistentModelIndex_to_ocaml(&y));
      }
    case QMetaType::QFont:
      {
        auto y = x.value<QFont>();
        return mlqt_QVariant_wrap(TAG_QFont, mlqt_QFont_to_ocaml(&y));
      }
    //case QMetaType::QVariantHash:
    //  return mlqt_QVariant_wrap(TAG_QVariantHash, mlqt_QVariantHash_to_ocaml(x.toVariantHash()));
    case QMetaType::QIcon:
      {
        auto y = x.value<QIcon>();
        return mlqt_QVariant_wrap(TAG_QIcon, mlqt_QIcon_to_ocaml(&y));
      }
    case QMetaType::QImage:
      {
        auto y = x.value<QImage>();
        return mlqt_QVariant_wrap(TAG_QImage, mlqt_QImage_to_ocaml(&y));
      }
    case QMetaType::Int:
      return mlqt_QVariant_wrap(TAG_Int, mlqt_int_to_ocaml(x.toInt()));
    case QMetaType::QKeySequence:
      {
        auto y = x.value<QKeySequence>();
        return mlqt_QVariant_wrap(TAG_QKeySequence, mlqt_QKeySequence_to_ocaml(&y));
      }
    case QMetaType::QLine:
      {
        auto y = x.toLine();
        return mlqt_QVariant_wrap(TAG_QLine, mlqt_QLine_to_ocaml(&y));
      }
    case QMetaType::QLineF:
      {
        auto y = x.toLineF();
        return mlqt_QVariant_wrap(TAG_QLineF, mlqt_QLineF_to_ocaml(&y));
      }
    //case QMetaType::QVariantList:
    //  return mlqt_QVariant_wrap(TAG_QVariantList, mlqt_QVariantList_to_ocaml(x.toVariantList()));
    case QMetaType::QLocale:
      {
        auto y = x.toLocale();
        return mlqt_QVariant_wrap(TAG_QLocale, mlqt_QLocale_to_ocaml(&y));
      }
    case QMetaType::LongLong:
      return mlqt_QVariant_wrap(TAG_LongLong, mlqt_intnat_to_ocaml(x.toLongLong()));
    //case QMetaType::QVariantMap:
    //  return mlqt_QVariant_wrap(TAG_QVariantMap, mlqt_QVariantMap_to_ocaml(x.toVariantMap()));
    case QMetaType::QMatrix:
      {
        auto y = x.value<QMatrix>();
        return mlqt_QVariant_wrap(TAG_QMatrix, mlqt_QMatrix_to_ocaml(&y));
      }
    case QMetaType::QTransform:
      {
        auto y = x.value<QTransform>();
        return mlqt_QVariant_wrap(TAG_QTransform, mlqt_QTransform_to_ocaml(&y));
      }
    case QMetaType::QMatrix4x4:
      {
        auto y = x.value<QMatrix4x4>();
        return mlqt_QVariant_wrap(TAG_QMatrix4x4, mlqt_QMatrix4x4_to_ocaml(&y));
      }
    case QMetaType::QPalette:
      {
        auto y = x.value<QPalette>();
        return mlqt_QVariant_wrap(TAG_QPalette, mlqt_QPalette_to_ocaml(&y));
      }
    case QMetaType::QPen:
      {
        auto y = x.value<QPen>();
        return mlqt_QVariant_wrap(TAG_QPen, mlqt_QPen_to_ocaml(&y));
      }
    case QMetaType::QPixmap:
      {
        auto y = x.value<QPixmap>();
        return mlqt_QVariant_wrap(TAG_QPixmap, mlqt_QPixmap_to_ocaml(&y));
      }
    case QMetaType::QPoint:
      return mlqt_QVariant_wrap(TAG_QPoint, mlqt_QPoint_to_ocaml(x.toPoint()));
    case QMetaType::QPointF:
      return mlqt_QVariant_wrap(TAG_QPointF, mlqt_QPointF_to_ocaml(x.toPointF()));
    case QMetaType::QPolygon:
      {
        auto y = x.value<QPolygon>();
        return mlqt_QVariant_wrap(TAG_QPolygon, mlqt_QPolygon_to_ocaml(&y));
      }
    case QMetaType::QPolygonF:
      {
        auto y = x.value<QPolygonF>();
        return mlqt_QVariant_wrap(TAG_QPolygonF, mlqt_QPolygonF_to_ocaml(&y));
      }
    case QMetaType::QQuaternion:
      {
        auto y = x.value<QQuaternion>();
        return mlqt_QVariant_wrap(TAG_QQuaternion, mlqt_QQuaternion_to_ocaml(&y));
      }
    case QMetaType::QRect:
      return mlqt_QVariant_wrap(TAG_QRect, mlqt_QRect_to_ocaml(x.toRect()));
    case QMetaType::QRectF:
      return mlqt_QVariant_wrap(TAG_QRectF, mlqt_QRectF_to_ocaml(x.toRectF()));
    case QMetaType::QRegExp:
      {
        auto y = x.toRegExp();
        return mlqt_QVariant_wrap(TAG_QRegExp, mlqt_QRegExp_to_ocaml(&y));
      }
    case QMetaType::QRegularExpression:
      {
        auto y = x.toRegularExpression();
        return mlqt_QVariant_wrap(TAG_QRegularExpression, mlqt_QRegularExpression_to_ocaml(&y));
      }
    case TAG_QRegion:
      {
        auto y = x.value<QRegion>();
        return mlqt_QVariant_wrap(TAG_QRegion, mlqt_QRegion_to_ocaml(&y));
      }
    case QMetaType::QSize:
      return mlqt_QVariant_wrap(TAG_QSize, mlqt_QSize_to_ocaml(x.toSize()));
    case QMetaType::QSizeF:
      return mlqt_QVariant_wrap(TAG_QSizeF, mlqt_QSizeF_to_ocaml(x.toSizeF()));
    case QMetaType::QSizePolicy:
      {
        auto y = x.value<QSizePolicy>();
        return mlqt_QVariant_wrap(TAG_QSizePolicy, mlqt_QSizePolicy_to_ocaml(&y));
      }
    case QMetaType::QString:
      return mlqt_QVariant_wrap(TAG_QString, mlqt_QString_to_ocaml(x.toString()));
    case QMetaType::QStringList:
      {
        auto y = x.toStringList();
        return mlqt_QVariant_wrap(TAG_QStringList, mlqt_QStringList_to_ocaml(&y));
      }
    case QMetaType::QTextFormat:
      {
        auto y = x.value<QTextFormat>();
        return mlqt_QVariant_wrap(TAG_QTextFormat, mlqt_QTextFormat_to_ocaml(&y));
      }
    case QMetaType::QTextLength:
      {
        auto y = x.value<QTextLength>();
        return mlqt_QVariant_wrap(TAG_QTextLength, mlqt_QTextLength_to_ocaml(&y));
      }
    case QMetaType::QTime:
      {
        auto y = x.toTime();
        return mlqt_QVariant_wrap(TAG_QTime, mlqt_QTime_to_ocaml(&y));
      }
    case QMetaType::UInt:
      return mlqt_QVariant_wrap(TAG_UInt, mlqt_int_to_ocaml(x.toUInt()));
    case QMetaType::ULongLong:
      return mlqt_QVariant_wrap(TAG_ULongLong, mlqt_intnat_to_ocaml(x.toULongLong()));
    case QMetaType::QUrl:
      {
        auto y = x.toUrl();
        return mlqt_QVariant_wrap(TAG_QUrl, mlqt_QUrl_to_ocaml(&y));
      }
    case QMetaType::QVector2D:
      {
        auto y = x.value<QVector2D>();
        return mlqt_QVariant_wrap(TAG_QVector2D, mlqt_QVector2D_to_ocaml(&y));
      }
    case QMetaType::QVector3D:
      {
        auto y = x.value<QVector3D>();
        return mlqt_QVariant_wrap(TAG_QVector3D, mlqt_QVector3D_to_ocaml(&y));
      }
    case QMetaType::QVector4D:
      {
        auto y = x.value<QVector4D>();
        return mlqt_QVariant_wrap(TAG_QVector4D, mlqt_QVector4D_to_ocaml(&y));
      }
    default:
      abort();
  }
}

external value mlqt_QVariant_null(value vunit)
{
  MLQT_Region region;
  QVariant x;
  return mlqt_QVariantOther_to_ocaml(&x);
}

external value mlqt_QVariant_to_string(value variant)
{
  QVariant v(mlqt_QVariant_from_ocaml(variant));
  QString s = v.toString();
  return mlqt_QString_to_ocaml(s);
}
