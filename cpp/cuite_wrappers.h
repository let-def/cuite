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
#define CUITE_PTR_CONVERTER(T) CUITE_GENERIC_CONVERTER(T, T*, T*)

/* Custom types */
CUITE_IMMEDIATE_CONVERTER(int);
CUITE_IMMEDIATE_CONVERTER(qint64);
CUITE_IMMEDIATE_CONVERTER(bool);
CUITE_IMMEDIATE_CONVERTER(double);
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

/* Relocatable */
CUITE_PTR_CONVERTER(QByteArray);
CUITE_PTR_CONVERTER(QBrush);
CUITE_PTR_CONVERTER(QColor);
CUITE_PTR_CONVERTER(QCursor);
CUITE_PTR_CONVERTER(QDate);
CUITE_PTR_CONVERTER(QDateTime);
CUITE_PTR_CONVERTER(QDir);
CUITE_PTR_CONVERTER(QFont);
CUITE_PTR_CONVERTER(QFontMetrics);
CUITE_PTR_CONVERTER(QGradient);
CUITE_PTR_CONVERTER(QIcon);
CUITE_PTR_CONVERTER(QKeySequence);
CUITE_PTR_CONVERTER(QLocale);
CUITE_PTR_CONVERTER(QMargins);
CUITE_PTR_CONVERTER(QMatrix4x4);
CUITE_PTR_CONVERTER(QMatrix);
CUITE_PTR_CONVERTER(QByteArrayList);
CUITE_PTR_CONVERTER(QItemSelectionRange);
CUITE_PTR_CONVERTER(QItemSelection);
CUITE_PTR_CONVERTER(QModelIndexList);
CUITE_PTR_CONVERTER(QModelIndex);
value& cuite_QModelIndex_to_ocaml(const QModelIndex& v);
CUITE_PTR_CONVERTER(QPainterPath);
CUITE_PTR_CONVERTER(QPalette);
CUITE_PTR_CONVERTER(QRegExp);
CUITE_PTR_CONVERTER(QRegion);
CUITE_PTR_CONVERTER(QStringList);
CUITE_PTR_CONVERTER(QTextBlock);
CUITE_PTR_CONVERTER(QTextCursor);
CUITE_PTR_CONVERTER(QTextDocumentFragment);
CUITE_PTR_CONVERTER(QTextFormat);
CUITE_PTR_CONVERTER(QTextBlockFormat);
CUITE_PTR_CONVERTER(QTextCharFormat);
CUITE_PTR_CONVERTER(QTextFrameFormat);
CUITE_PTR_CONVERTER(QTextImageFormat);
CUITE_PTR_CONVERTER(QTextListFormat);
CUITE_PTR_CONVERTER(QTextTableFormat);
CUITE_PTR_CONVERTER(QTextTableCellFormat);
CUITE_PTR_CONVERTER(QTime);
CUITE_PTR_CONVERTER(QTransform);
CUITE_PTR_CONVERTER(QUrl);
CUITE_PTR_CONVERTER(QVector3D);
CUITE_PTR_CONVERTER(QPixmap);
CUITE_PTR_CONVERTER(QFileInfo);

typedef QTextEdit::ExtraSelection QTextEdit_ExtraSelection;
typedef QList<QTextEdit_ExtraSelection> QList_QTextEdit_ExtraSelection_;
CUITE_CONVERTER(QTextEdit_ExtraSelection);
CUITE_CONVERTER(QList_QTextEdit_ExtraSelection_);

typedef QVariant QVariantOther;
CUITE_PTR_CONVERTER(QVariantOther);

CUITE_PTR_CONVERTER(QBitArray);
CUITE_PTR_CONVERTER(QChar);
CUITE_PTR_CONVERTER(QEasingCurve);
CUITE_PTR_CONVERTER(QUuid);
CUITE_PTR_CONVERTER(QPersistentModelIndex);
CUITE_PTR_CONVERTER(QImage);
CUITE_PTR_CONVERTER(QLine);
CUITE_PTR_CONVERTER(QLineF);
CUITE_PTR_CONVERTER(QPen);
CUITE_PTR_CONVERTER(QPolygon);
CUITE_PTR_CONVERTER(QPolygonF);
CUITE_PTR_CONVERTER(QQuaternion);
CUITE_PTR_CONVERTER(QRegularExpression);
CUITE_PTR_CONVERTER(QSizePolicy);
CUITE_PTR_CONVERTER(QTextLength);
CUITE_PTR_CONVERTER(QVector2D);
CUITE_PTR_CONVERTER(QVector4D);
CUITE_PTR_CONVERTER(QBitmap);

/* Manual */

CUITE_PTR_CONVERTER(QPainter);
CUITE_PTR_CONVERTER(QPaintEngine);
CUITE_PTR_CONVERTER(QStyleOption);
CUITE_PTR_CONVERTER(QTextOption);
CUITE_PTR_CONVERTER(QItemEditorFactory);
CUITE_PTR_CONVERTER(QEvent);
CUITE_PTR_CONVERTER(QDataStream);
CUITE_PTR_CONVERTER(QListWidgetItem);
CUITE_PTR_CONVERTER(QTreeWidgetItem);
CUITE_PTR_CONVERTER(QTableWidgetItem);
CUITE_PTR_CONVERTER(QTableWidgetSelectionRange);
CUITE_PTR_CONVERTER(QFileIconProvider);
CUITE_PTR_CONVERTER(QRegularExpressionMatch);
CUITE_PTR_CONVERTER(QRegularExpressionMatchIterator);
CUITE_PTR_CONVERTER(QStringRef);
CUITE_PTR_CONVERTER(QSurfaceFormat);

QPaintDevice *cuite_pQPaintDevice_from_ocaml(const value& v);
value& cuite_pQPaintDevice_to_ocaml(const value& object, const QPaintDevice *device);

#endif
