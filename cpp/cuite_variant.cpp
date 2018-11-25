#include "cuite_variant.h"
#include "cuite_wrappers.h"
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

QVariant cuite_QVariant_from_ocaml(const value& v)
{
  value x = Field(v,0);
  switch (Tag_val(v))
  {
    case TAG_UnknownType:
    case TAG_User:
      return QVariant(cuite_QVariantOther_from_ocaml(x));
    case TAG_QBitArray:
      return QVariant(cuite_QBitArray_from_ocaml(x));
    case TAG_QBitmap:
      return QVariant(cuite_QBitmap_from_ocaml(x));
    case TAG_Bool:
      return QVariant(cuite_bool_from_ocaml(x));
    case TAG_QBrush:
      return QVariant(cuite_QBrush_from_ocaml(x));
    case TAG_QByteArray:
      return QVariant(*cuite_QByteArray_from_ocaml(x));
    case TAG_QChar:
      return QVariant(cuite_QChar_from_ocaml(x));
    case TAG_QColor:
      return QVariant(cuite_QColor_from_ocaml(x));
    case TAG_QCursor:
      return QVariant(cuite_QCursor_from_ocaml(x));
    case TAG_QDate:
      return QVariant(cuite_QDate_from_ocaml(x));
    case TAG_QDateTime:
      return QVariant(cuite_QDateTime_from_ocaml(x));
    case TAG_Double:
      return QVariant(cuite_double_from_ocaml(x));
    case TAG_QEasingCurve:
      return QVariant(cuite_QEasingCurve_from_ocaml(x));
    case TAG_QUuid:
      return QVariant(cuite_QUuid_from_ocaml(x));
    case TAG_QModelIndex:
      return QVariant(cuite_QModelIndex_from_ocaml(x));
    case TAG_QPersistentModelIndex:
      return QVariant(cuite_QPersistentModelIndex_from_ocaml(x));
    case TAG_QFont:
      return QVariant(cuite_QFont_from_ocaml(x));
    //case TAG_QVariantHash:
    //  return QVariant(cuite_QVariantHash_from_ocaml(x));
    case TAG_QIcon:
      return QVariant(cuite_QIcon_from_ocaml(x));
    case TAG_QImage:
      return QVariant(cuite_QImage_from_ocaml(x));
    case TAG_Int:
      return QVariant((int)cuite_int_from_ocaml(x));
    case TAG_QKeySequence:
      return QVariant(cuite_QKeySequence_from_ocaml(x));
    case TAG_QLine:
      return QVariant(cuite_QLine_from_ocaml(x));
    case TAG_QLineF:
      return QVariant(cuite_QLineF_from_ocaml(x));
    //case TAG_QVariantList:
    //  return QVariant(cuite_QVariantList_from_ocaml(x));
    case TAG_QLocale:
      return QVariant(cuite_QLocale_from_ocaml(x));
    case TAG_LongLong:
      return QVariant((qlonglong)cuite_intnat_from_ocaml(x));
    //case TAG_QVariantMap:
    //  return QVariant(cuite_QVariantMap_from_ocaml(x));
    case TAG_QMatrix:
      return QVariant(cuite_QMatrix_from_ocaml(x));
    case TAG_QTransform:
      return QVariant(cuite_QTransform_from_ocaml(x));
    case TAG_QMatrix4x4:
      return QVariant(cuite_QMatrix4x4_from_ocaml(x));
    case TAG_QPalette:
      return QVariant(cuite_QPalette_from_ocaml(x));
    case TAG_QPen:
      return QVariant(cuite_QPen_from_ocaml(x));
    case TAG_QPixmap:
      return QVariant(cuite_QPixmap_from_ocaml(x));
    case TAG_QPoint:
      return QVariant(cuite_QPoint_from_ocaml(x));
    case TAG_QPointF:
      return QVariant(cuite_QPointF_from_ocaml(x));
    case TAG_QPolygon:
      return QVariant(cuite_QPolygon_from_ocaml(x));
    case TAG_QPolygonF:
      return QVariant(cuite_QPolygonF_from_ocaml(x));
    case TAG_QQuaternion:
      return QVariant(cuite_QQuaternion_from_ocaml(x));
    case TAG_QRect:
      return QVariant(cuite_QRect_from_ocaml(x));
    case TAG_QRectF:
      return QVariant(cuite_QRectF_from_ocaml(x));
    case TAG_QRegExp:
      return QVariant(cuite_QRegExp_from_ocaml(x));
    case TAG_QRegularExpression:
      return QVariant(cuite_QRegularExpression_from_ocaml(x));
    case TAG_QRegion:
      return QVariant(cuite_QRegion_from_ocaml(x));
    case TAG_QSize:
      return QVariant(cuite_QSize_from_ocaml(x));
    case TAG_QSizeF:
      return QVariant(cuite_QSizeF_from_ocaml(x));
    case TAG_QSizePolicy:
      return QVariant(cuite_QSizePolicy_from_ocaml(x));
    case TAG_QString:
      {
        CUITE_LOG("converting %s to QVariant\n", String_val(x));
        QVariant v(cuite_QString_from_ocaml(x));
        if (cuite_is_logging())
          qDebug() << "cuite_QVariant_from_ocaml(" << v << ")";
        return v;
      }
    case TAG_QStringList:
      return QVariant(cuite_QStringList_from_ocaml(x));
    case TAG_QTextFormat:
      return QVariant(cuite_QTextFormat_from_ocaml(x));
    case TAG_QTextLength:
      return QVariant(cuite_QTextLength_from_ocaml(x));
    case TAG_QTime:
      return QVariant(cuite_QTime_from_ocaml(x));
    case TAG_UInt:
      return QVariant((uint)cuite_int_from_ocaml(x));
    case TAG_ULongLong:
      return QVariant((qulonglong)cuite_intnat_from_ocaml(x));
    case TAG_QUrl:
      return QVariant(cuite_QUrl_from_ocaml(x));
    case TAG_QVector2D:
      return QVariant(cuite_QVector2D_from_ocaml(x));
    case TAG_QVector3D:
      return QVariant(cuite_QVector3D_from_ocaml(x));
    case TAG_QVector4D:
      return QVariant(cuite_QVector4D_from_ocaml(x));
    default:
      abort();
  }
}

static value& cuite_QVariant_wrap(int tag, const value& v)
{
  value& result = *cuite_region_alloc();
  result = caml_alloc_small(1, tag);
  Field(result, 0) = v;
  return result;
}

value& cuite_QVariant_to_ocaml(const QVariant *x)
{
  return cuite_QVariant_to_ocaml(x);
}

value& cuite_QVariant_to_ocaml(const QVariant& x)
{
  qDebug() << "cuite_QVariant_to_ocaml(" << x << ")";
  switch (x.type())
  {
    case QMetaType::UnknownType:
      return cuite_QVariant_wrap(TAG_UnknownType, cuite_QVariantOther_to_ocaml(x));
    case QMetaType::User:
      return cuite_QVariant_wrap(TAG_User, cuite_QVariantOther_to_ocaml(x));
    case QMetaType::QBitArray:
      {
        auto y = x.toBitArray();
        return cuite_QVariant_wrap(TAG_QBitArray, cuite_QBitArray_to_ocaml(y));
      }
    case QMetaType::QBitmap:
      {
        auto y = x.value<QBitmap>();
        return cuite_QVariant_wrap(TAG_QBitmap, cuite_QBitmap_to_ocaml(y));
      }
    case QMetaType::Bool:
      return cuite_QVariant_wrap(TAG_Bool, cuite_bool_to_ocaml(x.toBool()));
    case QMetaType::QBrush:
      {
        auto y = x.value<QBrush>();
        return cuite_QVariant_wrap(TAG_QBrush, cuite_QBrush_to_ocaml(y));
      }
    case QMetaType::QByteArray:
      {
        auto y = x.toByteArray();
        return cuite_QVariant_wrap(TAG_QByteArray, cuite_QByteArray_to_ocaml(y));
      }
    case QMetaType::QChar:
      {
        auto y = x.toChar();
        return cuite_QVariant_wrap(TAG_QChar, cuite_QChar_to_ocaml(y));
      }
    case QMetaType::QColor:
      {
        auto y = x.value<QColor>();
        return cuite_QVariant_wrap(TAG_QColor, cuite_QColor_to_ocaml(y));
      }
    case QMetaType::QCursor:
      {
        auto y = x.value<QCursor>();
        return cuite_QVariant_wrap(TAG_QCursor, cuite_QCursor_to_ocaml(y));
      }
    case QMetaType::QDate:
      {
        auto y = x.toDate();
        return cuite_QVariant_wrap(TAG_QDate, cuite_QDate_to_ocaml(y));
      }
    case QMetaType::QDateTime:
      {
        auto y = x.toDateTime();
        return cuite_QVariant_wrap(TAG_QDateTime, cuite_QDateTime_to_ocaml(y));
      }
    case QMetaType::Double:
      return cuite_QVariant_wrap(TAG_Double, cuite_double_to_ocaml(x.toDouble()));
    case QMetaType::QEasingCurve:
      {
        auto y = x.toEasingCurve();
        return cuite_QVariant_wrap(TAG_QEasingCurve, cuite_QEasingCurve_to_ocaml(y));
      }
    case QMetaType::QUuid:
      {
        auto y = x.toUuid();
        return cuite_QVariant_wrap(TAG_QUuid, cuite_QUuid_to_ocaml(y));
      }
    case QMetaType::QModelIndex:
      {
        auto y = x.toModelIndex();
        return cuite_QVariant_wrap(TAG_QModelIndex, cuite_QModelIndex_to_ocaml(y));
      }
    case QMetaType::QPersistentModelIndex:
      {
        auto y = x.toPersistentModelIndex();
        return cuite_QVariant_wrap(TAG_QPersistentModelIndex, cuite_QPersistentModelIndex_to_ocaml(y));
      }
    case QMetaType::QFont:
      {
        auto y = x.value<QFont>();
        return cuite_QVariant_wrap(TAG_QFont, cuite_QFont_to_ocaml(y));
      }
    //case QMetaType::QVariantHash:
    //  return cuite_QVariant_wrap(TAG_QVariantHash, cuite_QVariantHash_to_ocaml(x.toVariantHash()));
    case QMetaType::QIcon:
      {
        auto y = x.value<QIcon>();
        return cuite_QVariant_wrap(TAG_QIcon, cuite_QIcon_to_ocaml(y));
      }
    case QMetaType::QImage:
      {
        auto y = x.value<QImage>();
        return cuite_QVariant_wrap(TAG_QImage, cuite_QImage_to_ocaml(y));
      }
    case QMetaType::Int:
      return cuite_QVariant_wrap(TAG_Int, cuite_int_to_ocaml(x.toInt()));
    case QMetaType::QKeySequence:
      {
        auto y = x.value<QKeySequence>();
        return cuite_QVariant_wrap(TAG_QKeySequence, cuite_QKeySequence_to_ocaml(y));
      }
    case QMetaType::QLine:
      {
        auto y = x.toLine();
        return cuite_QVariant_wrap(TAG_QLine, cuite_QLine_to_ocaml(y));
      }
    case QMetaType::QLineF:
      {
        auto y = x.toLineF();
        return cuite_QVariant_wrap(TAG_QLineF, cuite_QLineF_to_ocaml(y));
      }
    //case QMetaType::QVariantList:
    //  return cuite_QVariant_wrap(TAG_QVariantList, cuite_QVariantList_to_ocaml(x.toVariantList()));
    case QMetaType::QLocale:
      {
        auto y = x.toLocale();
        return cuite_QVariant_wrap(TAG_QLocale, cuite_QLocale_to_ocaml(y));
      }
    case QMetaType::LongLong:
      return cuite_QVariant_wrap(TAG_LongLong, cuite_intnat_to_ocaml(x.toLongLong()));
    //case QMetaType::QVariantMap:
    //  return cuite_QVariant_wrap(TAG_QVariantMap, cuite_QVariantMap_to_ocaml(x.toVariantMap()));
    case QMetaType::QMatrix:
      {
        auto y = x.value<QMatrix>();
        return cuite_QVariant_wrap(TAG_QMatrix, cuite_QMatrix_to_ocaml(y));
      }
    case QMetaType::QTransform:
      {
        auto y = x.value<QTransform>();
        return cuite_QVariant_wrap(TAG_QTransform, cuite_QTransform_to_ocaml(y));
      }
    case QMetaType::QMatrix4x4:
      {
        auto y = x.value<QMatrix4x4>();
        return cuite_QVariant_wrap(TAG_QMatrix4x4, cuite_QMatrix4x4_to_ocaml(y));
      }
    case QMetaType::QPalette:
      {
        auto y = x.value<QPalette>();
        return cuite_QVariant_wrap(TAG_QPalette, cuite_QPalette_to_ocaml(y));
      }
    case QMetaType::QPen:
      {
        auto y = x.value<QPen>();
        return cuite_QVariant_wrap(TAG_QPen, cuite_QPen_to_ocaml(y));
      }
    case QMetaType::QPixmap:
      {
        auto y = x.value<QPixmap>();
        return cuite_QVariant_wrap(TAG_QPixmap, cuite_QPixmap_to_ocaml(y));
      }
    case QMetaType::QPoint:
      return cuite_QVariant_wrap(TAG_QPoint, cuite_QPoint_to_ocaml(x.toPoint()));
    case QMetaType::QPointF:
      return cuite_QVariant_wrap(TAG_QPointF, cuite_QPointF_to_ocaml(x.toPointF()));
    case QMetaType::QPolygon:
      {
        auto y = x.value<QPolygon>();
        return cuite_QVariant_wrap(TAG_QPolygon, cuite_QPolygon_to_ocaml(y));
      }
    case QMetaType::QPolygonF:
      {
        auto y = x.value<QPolygonF>();
        return cuite_QVariant_wrap(TAG_QPolygonF, cuite_QPolygonF_to_ocaml(y));
      }
    case QMetaType::QQuaternion:
      {
        auto y = x.value<QQuaternion>();
        return cuite_QVariant_wrap(TAG_QQuaternion, cuite_QQuaternion_to_ocaml(y));
      }
    case QMetaType::QRect:
      return cuite_QVariant_wrap(TAG_QRect, cuite_QRect_to_ocaml(x.toRect()));
    case QMetaType::QRectF:
      return cuite_QVariant_wrap(TAG_QRectF, cuite_QRectF_to_ocaml(x.toRectF()));
    case QMetaType::QRegExp:
      {
        auto y = x.toRegExp();
        return cuite_QVariant_wrap(TAG_QRegExp, cuite_QRegExp_to_ocaml(y));
      }
    case QMetaType::QRegularExpression:
      {
        auto y = x.toRegularExpression();
        return cuite_QVariant_wrap(TAG_QRegularExpression, cuite_QRegularExpression_to_ocaml(y));
      }
    case TAG_QRegion:
      {
        auto y = x.value<QRegion>();
        return cuite_QVariant_wrap(TAG_QRegion, cuite_QRegion_to_ocaml(y));
      }
    case QMetaType::QSize:
      return cuite_QVariant_wrap(TAG_QSize, cuite_QSize_to_ocaml(x.toSize()));
    case QMetaType::QSizeF:
      return cuite_QVariant_wrap(TAG_QSizeF, cuite_QSizeF_to_ocaml(x.toSizeF()));
    case QMetaType::QSizePolicy:
      {
        auto y = x.value<QSizePolicy>();
        return cuite_QVariant_wrap(TAG_QSizePolicy, cuite_QSizePolicy_to_ocaml(y));
      }
    case QMetaType::QString:
      return cuite_QVariant_wrap(TAG_QString, cuite_QString_to_ocaml(x.toString()));
    case QMetaType::QStringList:
      {
        auto y = x.toStringList();
        return cuite_QVariant_wrap(TAG_QStringList, cuite_QStringList_to_ocaml(y));
      }
    case QMetaType::QTextFormat:
      {
        auto y = x.value<QTextFormat>();
        return cuite_QVariant_wrap(TAG_QTextFormat, cuite_QTextFormat_to_ocaml(y));
      }
    case QMetaType::QTextLength:
      {
        auto y = x.value<QTextLength>();
        return cuite_QVariant_wrap(TAG_QTextLength, cuite_QTextLength_to_ocaml(y));
      }
    case QMetaType::QTime:
      {
        auto y = x.toTime();
        return cuite_QVariant_wrap(TAG_QTime, cuite_QTime_to_ocaml(y));
      }
    case QMetaType::UInt:
      return cuite_QVariant_wrap(TAG_UInt, cuite_int_to_ocaml(x.toUInt()));
    case QMetaType::ULongLong:
      return cuite_QVariant_wrap(TAG_ULongLong, cuite_intnat_to_ocaml(x.toULongLong()));
    case QMetaType::QUrl:
      {
        auto y = x.toUrl();
        return cuite_QVariant_wrap(TAG_QUrl, cuite_QUrl_to_ocaml(y));
      }
    case QMetaType::QVector2D:
      {
        auto y = x.value<QVector2D>();
        return cuite_QVariant_wrap(TAG_QVector2D, cuite_QVector2D_to_ocaml(y));
      }
    case QMetaType::QVector3D:
      {
        auto y = x.value<QVector3D>();
        return cuite_QVariant_wrap(TAG_QVector3D, cuite_QVector3D_to_ocaml(y));
      }
    case QMetaType::QVector4D:
      {
        auto y = x.value<QVector4D>();
        return cuite_QVariant_wrap(TAG_QVector4D, cuite_QVector4D_to_ocaml(y));
      }
    default:
      abort();
  }
}

external value cuite_QVariant_null(value vunit)
{
  CUITE_GC_REGION();
  QVariant x;
  return cuite_QVariantOther_to_ocaml(x);
}

external value cuite_QVariant_to_string(value variant)
{
  QVariant v(cuite_QVariant_from_ocaml(variant));
  QString s = v.toString();
  return cuite_QString_to_ocaml(s);
}
