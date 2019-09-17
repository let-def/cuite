#ifndef __CUITE_LIB_H__
#define __CUITE_LIB_H__

#include <QtCore>
#include <QtGui>
#include <QtWidgets>
#include <caml/mlvalues.h>
#include "cuite_support.h"

#define CUITE_GENERIC_CONVERTER(T, RET, ARG)        \
  static inline bool cuite_##T##_check_use(value v) \
  { return cuite_qt_check_use(v); }                 \
  RET cuite_##T##_from_ocaml(const value& v);       \
  value& cuite_##T##_to_ocaml(const ARG v)

#define CUITE_IMMEDIATE_CONVERTER(T) CUITE_GENERIC_CONVERTER(T, T, T)
#define CUITE_CONVERTER(T) CUITE_GENERIC_CONVERTER(T, T, T&)
#define CUITE_REF_CONVERTER(T) CUITE_GENERIC_CONVERTER(T, T*, T*)
#define CUITE_VAL_CONVERTER(T) CUITE_GENERIC_CONVERTER(T, T&, T&)

/* Custom types */
CUITE_IMMEDIATE_CONVERTER(int);
CUITE_IMMEDIATE_CONVERTER(qint64);
CUITE_IMMEDIATE_CONVERTER(bool);
CUITE_IMMEDIATE_CONVERTER(double);
CUITE_IMMEDIATE_CONVERTER(qreal);
CUITE_IMMEDIATE_CONVERTER(intnat);
typedef char *pchar;
typedef QPaintDevice *pQPaintDevice;
CUITE_CONVERTER(pchar);
CUITE_CONVERTER(QString);
CUITE_CONVERTER(QRect);
CUITE_CONVERTER(QRectF);
CUITE_CONVERTER(QPoint);
CUITE_CONVERTER(QPointF);
CUITE_CONVERTER(QSize);
CUITE_CONVERTER(QSizeF);

typedef QTextEdit::ExtraSelection QTextEdit_ExtraSelection;
typedef QList<QTextEdit_ExtraSelection> QList_QTextEdit_ExtraSelection_;
CUITE_CONVERTER(QTextEdit_ExtraSelection);
CUITE_CONVERTER(QList_QTextEdit_ExtraSelection_);

/* Manual */

CUITE_REF_CONVERTER(QPainter);
CUITE_REF_CONVERTER(QPaintEngine);
CUITE_REF_CONVERTER(QStyleOption);
CUITE_REF_CONVERTER(QTextOption);
CUITE_REF_CONVERTER(QItemEditorFactory);
CUITE_REF_CONVERTER(QEvent);
CUITE_REF_CONVERTER(QDataStream);
CUITE_REF_CONVERTER(QListWidgetItem);
CUITE_REF_CONVERTER(QTreeWidgetItem);
CUITE_REF_CONVERTER(QTableWidgetItem);
CUITE_REF_CONVERTER(QTableWidgetSelectionRange);
CUITE_REF_CONVERTER(QFileIconProvider);
CUITE_REF_CONVERTER(QStringRef);
CUITE_REF_CONVERTER(QSurfaceFormat);
CUITE_REF_CONVERTER(QTextDocumentFragment);

/* Relocatable */
typedef QVariant QVariantOther;

CUITE_VAL_CONVERTER(QBitArray);
CUITE_VAL_CONVERTER(QBitmap);
CUITE_VAL_CONVERTER(QBrush);
CUITE_VAL_CONVERTER(QByteArray);
CUITE_VAL_CONVERTER(QByteArrayList);
CUITE_VAL_CONVERTER(QChar);
CUITE_VAL_CONVERTER(QColor);
CUITE_VAL_CONVERTER(QCursor);
CUITE_VAL_CONVERTER(QDate);
CUITE_VAL_CONVERTER(QDateTime);
CUITE_VAL_CONVERTER(QDir);
CUITE_VAL_CONVERTER(QEasingCurve);
CUITE_VAL_CONVERTER(QFileInfo);
CUITE_VAL_CONVERTER(QFont);
CUITE_VAL_CONVERTER(QFontMetrics);
CUITE_REF_CONVERTER(QGradient);
CUITE_VAL_CONVERTER(QIcon);
CUITE_VAL_CONVERTER(QImage);
CUITE_VAL_CONVERTER(QItemSelection);
CUITE_VAL_CONVERTER(QItemSelectionRange);
CUITE_VAL_CONVERTER(QKeySequence);
CUITE_VAL_CONVERTER(QLine);
CUITE_VAL_CONVERTER(QLineF);
CUITE_VAL_CONVERTER(QLocale);
CUITE_VAL_CONVERTER(QMargins);
CUITE_VAL_CONVERTER(QMatrix);
CUITE_VAL_CONVERTER(QMatrix4x4);
CUITE_VAL_CONVERTER(QModelIndex);
CUITE_VAL_CONVERTER(QModelIndexList);
CUITE_VAL_CONVERTER(QPainterPath);
CUITE_VAL_CONVERTER(QPalette);
CUITE_VAL_CONVERTER(QPen);
CUITE_VAL_CONVERTER(QPersistentModelIndex);
CUITE_VAL_CONVERTER(QPixmap);
CUITE_VAL_CONVERTER(QPolygon);
CUITE_VAL_CONVERTER(QPolygonF);
CUITE_VAL_CONVERTER(QQuaternion);
CUITE_VAL_CONVERTER(QRegExp);
CUITE_VAL_CONVERTER(QRegion);
CUITE_VAL_CONVERTER(QRegularExpression);
CUITE_VAL_CONVERTER(QRegularExpressionMatch);
CUITE_VAL_CONVERTER(QRegularExpressionMatchIterator);
CUITE_VAL_CONVERTER(QSizePolicy);
CUITE_VAL_CONVERTER(QStringList);
CUITE_VAL_CONVERTER(QTextBlock);
CUITE_VAL_CONVERTER(QTextBlockFormat);
CUITE_VAL_CONVERTER(QTextCharFormat);
CUITE_VAL_CONVERTER(QTextCursor);
CUITE_VAL_CONVERTER(QTextFormat);
CUITE_VAL_CONVERTER(QTextFrameFormat);
CUITE_VAL_CONVERTER(QTextImageFormat);
CUITE_VAL_CONVERTER(QTextLength);
CUITE_VAL_CONVERTER(QTextListFormat);
CUITE_VAL_CONVERTER(QTextTableCellFormat);
CUITE_VAL_CONVERTER(QTextTableFormat);
CUITE_VAL_CONVERTER(QTime);
CUITE_VAL_CONVERTER(QTransform);
CUITE_VAL_CONVERTER(QUrl);
CUITE_VAL_CONVERTER(QUuid);
CUITE_VAL_CONVERTER(QVariantOther);
CUITE_VAL_CONVERTER(QVector2D);
CUITE_VAL_CONVERTER(QVector3D);
CUITE_VAL_CONVERTER(QVector4D);

QPaintDevice *cuite_pQPaintDevice_from_ocaml(const value& v);
value& cuite_pQPaintDevice_to_ocaml(const value& object, const QPaintDevice *device);

#endif