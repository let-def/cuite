open Qt
open Cuite_types

type qVariantList and qVariantMap and qVariantHash and qVariantOther

type t =
 | UnknownType           of qVariantOther
 | QBitArray             of qBitArray Qt.t
 | QBitmap               of qBitmap Qt.t
 | Bool                  of bool
 | QBrush                of qBrush Qt.t
 | QByteArray            of qByteArray Qt.t
 | QChar                 of qChar Qt.t
 | QColor                of qColor Qt.t
 | QCursor               of qCursor Qt.t
 | QDate                 of qDate Qt.t
 | QDateTime             of qDateTime Qt.t
 | Double                of float
 | QEasingCurve          of qEasingCurve Qt.t
 | QUuid                 of qUuid Qt.t
 | QModelIndex           of qModelIndex Qt.t
 | QPersistentModelIndex of qPersistentModelIndex Qt.t
 | QFont                 of qFont Qt.t
 | QVariantHash          of qVariantHash
 | QIcon                 of qIcon Qt.t
 | QImage                of qImage Qt.t
 | Int                   of int
 | QKeySequence          of qKeySequence Qt.t
 | QLine                 of qLine Qt.t
 | QLineF                of qLineF Qt.t
 | QVariantList          of qVariantList
 | QLocale               of qLocale Qt.t
 | LongLong              of nativeint
 | QVariantMap           of qVariantMap
 | QMatrix               of qMatrix Qt.t
 | QTransform            of qTransform Qt.t
 | QMatrix4x4            of qMatrix4x4 Qt.t
 | QPalette              of qPalette Qt.t
 | QPen                  of qPen Qt.t
 | QPixmap               of qPixmap Qt.t
 | QPoint                of qPoint
 | QPointF               of qPointF
 | QPolygon              of qPolygon Qt.t
 | QPolygonF             of qPolygonF Qt.t
 | QQuaternion           of qQuaternion Qt.t
 | QRect                 of qRect
 | QRectF                of qRectF
 | QRegExp               of qRegExp Qt.t
 | QRegularExpression    of qRegularExpression Qt.t
 | QRegion               of qRegion Qt.t
 | QSize                 of qSize
 | QSizeF                of qSizeF
 | QSizePolicy           of qSizePolicy Qt.t
 | QString               of string
 | QStringList           of qStringList Qt.t
 | QTextFormat           of qTextFormat Qt.t
 | QTextLength           of qTextLength Qt.t
 | QTime                 of qTime Qt.t
 | UInt                  of nativeint
 | ULongLong             of int64
 | QUrl                  of qUrl Qt.t
 | QVector2D             of qVector2D Qt.t
 | QVector3D             of qVector3D Qt.t
 | QVector4D             of qVector4D Qt.t
 | User                  of qVariantOther

external null : unit -> qVariantOther = "mlqt_QVariant_null"
let null = UnknownType (null ())

external to_string : t -> string = "mlqt_QVariant_to_string"
