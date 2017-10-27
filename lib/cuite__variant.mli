open Cuite

type qVariantList and qVariantMap and qVariantHash and qVariantOther

type t =
 | UnknownType           of qVariantOther
 | QBitArray             of qBitArray qt
 | QBitmap               of qBitmap qt
 | Bool                  of bool
 | QBrush                of qBrush qt
 | QByteArray            of qByteArray qt
 | QChar                 of qChar qt
 | QColor                of qColor qt
 | QCursor               of qCursor qt
 | QDate                 of qDate qt
 | QDateTime             of qDateTime qt
 | Double                of float
 | QEasingCurve          of qEasingCurve qt
 | QUuid                 of qUuid qt
 | QModelIndex           of qModelIndex qt
 | QPersistentModelIndex of qPersistentModelIndex qt
 | QFont                 of qFont qt
 | QVariantHash          of qVariantHash
 | QIcon                 of qIcon qt
 | QImage                of qImage qt
 | Int                   of int
 | QKeySequence          of qKeySequence qt
 | QLine                 of qLine qt
 | QLineF                of qLineF qt
 | QVariantList          of qVariantList
 | QLocale               of qLocale qt
 | LongLong              of nativeint
 | QVariantMap           of qVariantMap
 | QMatrix               of qMatrix qt
 | QTransform            of qTransform qt
 | QMatrix4x4            of qMatrix4x4 qt
 | QPalette              of qPalette qt
 | QPen                  of qPen qt
 | QPixmap               of qPixmap qt
 | QPoint                of qPoint
 | QPointF               of qPointF
 | QPolygon              of qPolygon qt
 | QPolygonF             of qPolygonF qt
 | QQuaternion           of qQuaternion qt
 | QRect                 of qRect
 | QRectF                of qRectF
 | QRegExp               of qRegExp qt
 | QRegularExpression    of qRegularExpression qt
 | QRegion               of qRegion qt
 | QSize                 of qSize
 | QSizeF                of qSizeF
 | QSizePolicy           of qSizePolicy qt
 | QString               of string
 | QStringList           of qStringList qt
 | QTextFormat           of qTextFormat qt
 | QTextLength           of qTextLength qt
 | QTime                 of qTime qt
 | UInt                  of nativeint
 | ULongLong             of int64
 | QUrl                  of qUrl qt
 | QVector2D             of qVector2D qt
 | QVector3D             of qVector3D qt
 | QVector4D             of qVector4D qt
 | User                  of qVariantOther

val null : t
external to_string : t -> string = "cuite_QVariant_to_string"
