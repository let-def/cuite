open Qt
open Cuite_types

module QObject = struct
  external class' : unit -> qObject Qt.qt_class = "mlqt_class_QObject" [@@noalloc]
  external signal'destroyed : unit -> ([> qObject], qObject Qt.t) Qt.signal = "mlqt_signal_QObject_destroyed" [@@noalloc]
  external slot'deleteLater : unit -> ([> qObject], unit) Qt.slot = "mlqt_slot_QObject_deleteLater" [@@noalloc]
end
module QEvent = struct
end
module QCoreApplication = struct
  include QObject
  external class' : unit -> qCoreApplication Qt.qt_class = "mlqt_class_QCoreApplication" [@@noalloc]
end
external new'QModelIndex : unit -> qModelIndex Qt.t = "mlqt_QModelIndex_new_"
module QModelIndex = struct
  external row : [> qModelIndex] Qt.t -> int = "mlqt_QModelIndex_row"
  external column : [> qModelIndex] Qt.t -> int = "mlqt_QModelIndex_column"
  external parent : [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndex_parent"
  external sibling : [> qModelIndex] Qt.t -> int -> int -> qModelIndex Qt.t = "mlqt_QModelIndex_sibling"
  external child : [> qModelIndex] Qt.t -> int -> int -> qModelIndex Qt.t = "mlqt_QModelIndex_child"
  external data : [> qModelIndex] Qt.t -> int -> QVariant.t = "mlqt_QModelIndex_data"
  external flags : [> qModelIndex] Qt.t -> qt'ItemFlags = "mlqt_QModelIndex_flags"
  external model : [> qModelIndex] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QModelIndex_model"
  external isValid : [> qModelIndex] Qt.t -> bool = "mlqt_QModelIndex_isValid"
end
external new'QModelIndexList : unit -> qModelIndexList Qt.t = "mlqt_QModelIndexList_new_"
external new'QModelIndexList'1 : [> qModelIndexList] Qt.t -> qModelIndexList Qt.t = "mlqt_QModelIndexList_new_1"
module QModelIndexList = struct
  external swap : [> qModelIndexList] Qt.t -> [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_swap"
  external size : [> qModelIndexList] Qt.t -> int = "mlqt_QModelIndexList_size"
  external isEmpty : [> qModelIndexList] Qt.t -> bool = "mlqt_QModelIndexList_isEmpty"
  external clear : [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_clear"
  external at : [> qModelIndexList] Qt.t -> int -> qModelIndex Qt.t = "mlqt_QModelIndexList_at"
  external reserve : [> qModelIndexList] Qt.t -> int -> unit = "mlqt_QModelIndexList_reserve"
  external append : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_append"
  external append1 : [> qModelIndexList] Qt.t -> [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_append1"
  external prepend : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_prepend"
  external insert : [> qModelIndexList] Qt.t -> int -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_insert"
  external replace : [> qModelIndexList] Qt.t -> int -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_replace"
  external removeAt : [> qModelIndexList] Qt.t -> int -> unit = "mlqt_QModelIndexList_removeAt"
  external removeAll : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QModelIndexList_removeAll"
  external removeOne : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QModelIndexList_removeOne"
  external takeAt : [> qModelIndexList] Qt.t -> int -> qModelIndex Qt.t = "mlqt_QModelIndexList_takeAt"
  external takeFirst : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_takeFirst"
  external takeLast : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_takeLast"
  external move : [> qModelIndexList] Qt.t -> int -> int -> unit = "mlqt_QModelIndexList_move"
  external swap1 : [> qModelIndexList] Qt.t -> int -> int -> unit = "mlqt_QModelIndexList_swap1"
  external indexOf : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> int -> int = "mlqt_QModelIndexList_indexOf"
  external lastIndexOf : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> int -> int = "mlqt_QModelIndexList_lastIndexOf"
  external contains : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QModelIndexList_contains"
  external count : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QModelIndexList_count"
  external count1 : [> qModelIndexList] Qt.t -> int = "mlqt_QModelIndexList_count1"
  external length : [> qModelIndexList] Qt.t -> int = "mlqt_QModelIndexList_length"
  external first : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_first"
  external last : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_last"
  external removeFirst : [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_removeFirst"
  external removeLast : [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_removeLast"
  external startsWith : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QModelIndexList_startsWith"
  external endsWith : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QModelIndexList_endsWith"
  external value : [> qModelIndexList] Qt.t -> int -> qModelIndex Qt.t = "mlqt_QModelIndexList_value"
  external push_back : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_push_back"
  external push_front : [> qModelIndexList] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QModelIndexList_push_front"
  external front : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_front"
  external back : [> qModelIndexList] Qt.t -> qModelIndex Qt.t = "mlqt_QModelIndexList_back"
  external pop_front : [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_pop_front"
  external pop_back : [> qModelIndexList] Qt.t -> unit = "mlqt_QModelIndexList_pop_back"
  external empty : [> qModelIndexList] Qt.t -> bool = "mlqt_QModelIndexList_empty"
end
module QMessageLogContext = struct
end
module QAbstractEventDispatcher'TimerInfo = struct
end
module QVectorIterator = struct
end
module QUrlQuery = struct
end
module QMap'const_iterator = struct
end
module QFileInfo = struct
end
module QSet'const_iterator = struct
end
module QJsonObject'iterator = struct
end
module QXmlStreamNotationDeclaration = struct
end
module QJsonParseError = struct
end
module QMetaObject = struct
end
module QTextDecoder = struct
end
module QEasingCurve = struct
end
module QMap'key_iterator = struct
end
module QTimeZone = struct
end
module QWeakPointer = struct
end
module QLineF = struct
end
module QPair = struct
end
module QMimeDatabase = struct
end
module QSet'iterator = struct
end
module QXmlStreamEntityDeclaration = struct
end
module QSignalBlocker = struct
end
module QMutexLocker = struct
end
module QCollator = struct
end
module QMapIterator = struct
end
module QByteArrayMatcher = struct
end
module QJsonDocument = struct
end
module QSequentialIterable'const_iterator = struct
end
module QMap'iterator = struct
end
module QVersionNumber = struct
end
module QXmlStreamEntityResolver = struct
end
module QByteArray = struct
end
module QPointer = struct
end
module QLatin1Char = struct
end
module QScopedPointer = struct
end
module QDebug = struct
end
module QResource = struct
end
module QMutableSetIterator = struct
end
module QEnableSharedFromThis = struct
end
module QHash = struct
end
module QLocale = struct
end
module QXmlStreamWriter = struct
end
module QJsonObject'const_iterator = struct
end
module QBitArray = struct
end
module QMessageAuthenticationCode = struct
end
module QLatin1String = struct
end
module QReadWriteLock = struct
end
module QWriteLocker = struct
end
module QStringMatcher = struct
end
module QXmlStreamReader = struct
end
module QMetaMethod = struct
end
module QLinkedList'const_iterator = struct
end
module QMarginsF = struct
end
module QStaticPlugin = struct
end
module QAssociativeIterable = struct
end
module QDateTime = struct
end
module QOperatingSystemVersion = struct
end
module QMetaType = struct
end
module QJsonArray = struct
end
module QMutableMapIterator = struct
end
module QDebugStateSaver = struct
end
module QLoggingCategory = struct
end
module QGenericArgument = struct
end
module QFuture'const_iterator = struct
end
module QAbstractNativeEventFilter = struct
end
module QChar = struct
end
module QGlobalStatic = struct
end
module QElapsedTimer = struct
end
module QHash'iterator = struct
end
module QVector = struct
end
module QTextCodec'ConverterState = struct
end
module QStandardPaths = struct
end
module QDirIterator = struct
end
external new'QItemSelectionRange : unit -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_new_"
external new'QItemSelectionRange'1 : [> qItemSelectionRange] Qt.t -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_new_1"
external new'QItemSelectionRange'2 : [> qItemSelectionRange] Qt.t -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_new_2"
external new'QItemSelectionRange'3 : [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_new_3"
external new'QItemSelectionRange'4 : [> qModelIndex] Qt.t -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_new_4"
module QItemSelectionRange = struct
  external swap : [> qItemSelectionRange] Qt.t -> [> qItemSelectionRange] Qt.t -> unit = "mlqt_QItemSelectionRange_swap"
  external top : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_top"
  external left : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_left"
  external bottom : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_bottom"
  external right : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_right"
  external width : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_width"
  external height : [> qItemSelectionRange] Qt.t -> int = "mlqt_QItemSelectionRange_height"
  external topLeft : [> qItemSelectionRange] Qt.t -> qPersistentModelIndex Qt.t = "mlqt_QItemSelectionRange_topLeft"
  external bottomRight : [> qItemSelectionRange] Qt.t -> qPersistentModelIndex Qt.t = "mlqt_QItemSelectionRange_bottomRight"
  external parent : [> qItemSelectionRange] Qt.t -> qModelIndex Qt.t = "mlqt_QItemSelectionRange_parent"
  external model : [> qItemSelectionRange] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QItemSelectionRange_model"
  external contains : [> qItemSelectionRange] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionRange_contains"
  external contains1 : [> qItemSelectionRange] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionRange_contains1"
  external intersects : [> qItemSelectionRange] Qt.t -> [> qItemSelectionRange] Qt.t -> bool = "mlqt_QItemSelectionRange_intersects"
  external intersected : [> qItemSelectionRange] Qt.t -> [> qItemSelectionRange] Qt.t -> qItemSelectionRange Qt.t = "mlqt_QItemSelectionRange_intersected"
  external isValid : [> qItemSelectionRange] Qt.t -> bool = "mlqt_QItemSelectionRange_isValid"
  external isEmpty : [> qItemSelectionRange] Qt.t -> bool = "mlqt_QItemSelectionRange_isEmpty"
  external indexes : [> qItemSelectionRange] Qt.t -> qModelIndexList Qt.t = "mlqt_QItemSelectionRange_indexes"
end
module QStorageInfo = struct
end
module QLinkedList'iterator = struct
end
external new'QRegularExpressionMatch : unit -> qRegularExpressionMatch Qt.t = "mlqt_QRegularExpressionMatch_new_"
external new'QRegularExpressionMatch'1 : [> qRegularExpressionMatch] Qt.t -> qRegularExpressionMatch Qt.t = "mlqt_QRegularExpressionMatch_new_1"
module QRegularExpressionMatch = struct
  external swap : [> qRegularExpressionMatch] Qt.t -> [> qRegularExpressionMatch] Qt.t -> unit = "mlqt_QRegularExpressionMatch_swap"
  external regularExpression : [> qRegularExpressionMatch] Qt.t -> qRegularExpression Qt.t = "mlqt_QRegularExpressionMatch_regularExpression"
  external matchType : [> qRegularExpressionMatch] Qt.t -> qRegularExpression'MatchType = "mlqt_QRegularExpressionMatch_matchType"
  external matchOptions : [> qRegularExpressionMatch] Qt.t -> qRegularExpression'MatchOptions = "mlqt_QRegularExpressionMatch_matchOptions"
  external hasMatch : [> qRegularExpressionMatch] Qt.t -> bool = "mlqt_QRegularExpressionMatch_hasMatch"
  external hasPartialMatch : [> qRegularExpressionMatch] Qt.t -> bool = "mlqt_QRegularExpressionMatch_hasPartialMatch"
  external isValid : [> qRegularExpressionMatch] Qt.t -> bool = "mlqt_QRegularExpressionMatch_isValid"
  external lastCapturedIndex : [> qRegularExpressionMatch] Qt.t -> int = "mlqt_QRegularExpressionMatch_lastCapturedIndex"
  external captured : [> qRegularExpressionMatch] Qt.t -> int -> string = "mlqt_QRegularExpressionMatch_captured"
  external captured1 : [> qRegularExpressionMatch] Qt.t -> string -> string = "mlqt_QRegularExpressionMatch_captured1"
  external capturedTexts : [> qRegularExpressionMatch] Qt.t -> qStringList Qt.t = "mlqt_QRegularExpressionMatch_capturedTexts"
  external capturedStart : [> qRegularExpressionMatch] Qt.t -> int -> int = "mlqt_QRegularExpressionMatch_capturedStart"
  external capturedLength : [> qRegularExpressionMatch] Qt.t -> int -> int = "mlqt_QRegularExpressionMatch_capturedLength"
  external capturedEnd : [> qRegularExpressionMatch] Qt.t -> int -> int = "mlqt_QRegularExpressionMatch_capturedEnd"
  external capturedStart1 : [> qRegularExpressionMatch] Qt.t -> string -> int = "mlqt_QRegularExpressionMatch_capturedStart1"
  external capturedLength1 : [> qRegularExpressionMatch] Qt.t -> string -> int = "mlqt_QRegularExpressionMatch_capturedLength1"
  external capturedEnd1 : [> qRegularExpressionMatch] Qt.t -> string -> int = "mlqt_QRegularExpressionMatch_capturedEnd1"
end
external new'QRegExp : unit -> qRegExp Qt.t = "mlqt_QRegExp_new_"
external new'QRegExp'1 : string -> qt'CaseSensitivity -> qRegExp'PatternSyntax -> qRegExp Qt.t = "mlqt_QRegExp_new_1"
external new'QRegExp'2 : [> qRegExp] Qt.t -> qRegExp Qt.t = "mlqt_QRegExp_new_2"
module QRegExp = struct
  external isEmpty : [> qRegExp] Qt.t -> bool = "mlqt_QRegExp_isEmpty"
  external isValid : [> qRegExp] Qt.t -> bool = "mlqt_QRegExp_isValid"
  external pattern : [> qRegExp] Qt.t -> string = "mlqt_QRegExp_pattern"
  external setPattern : [> qRegExp] Qt.t -> string -> unit = "mlqt_QRegExp_setPattern"
  external caseSensitivity : [> qRegExp] Qt.t -> qt'CaseSensitivity = "mlqt_QRegExp_caseSensitivity"
  external setCaseSensitivity : [> qRegExp] Qt.t -> qt'CaseSensitivity -> unit = "mlqt_QRegExp_setCaseSensitivity"
  external patternSyntax : [> qRegExp] Qt.t -> qRegExp'PatternSyntax = "mlqt_QRegExp_patternSyntax"
  external setPatternSyntax : [> qRegExp] Qt.t -> qRegExp'PatternSyntax -> unit = "mlqt_QRegExp_setPatternSyntax"
  external isMinimal : [> qRegExp] Qt.t -> bool = "mlqt_QRegExp_isMinimal"
  external setMinimal : [> qRegExp] Qt.t -> bool -> unit = "mlqt_QRegExp_setMinimal"
  external exactMatch : [> qRegExp] Qt.t -> string -> bool = "mlqt_QRegExp_exactMatch"
  external indexIn : [> qRegExp] Qt.t -> string -> int -> qRegExp'CaretMode -> int = "mlqt_QRegExp_indexIn"
  external lastIndexIn : [> qRegExp] Qt.t -> string -> int -> qRegExp'CaretMode -> int = "mlqt_QRegExp_lastIndexIn"
  external matchedLength : [> qRegExp] Qt.t -> int = "mlqt_QRegExp_matchedLength"
  external captureCount : [> qRegExp] Qt.t -> int = "mlqt_QRegExp_captureCount"
  external capturedTexts : [> qRegExp] Qt.t -> qStringList Qt.t = "mlqt_QRegExp_capturedTexts"
  external cap : [> qRegExp] Qt.t -> int -> string = "mlqt_QRegExp_cap"
  external pos : [> qRegExp] Qt.t -> int -> int = "mlqt_QRegExp_pos"
  external errorString : [> qRegExp] Qt.t -> string = "mlqt_QRegExp_errorString"
  external escape : string -> string = "mlqt_QRegExp_escape"
end
module QMutableListIterator = struct
end
module QMutableHashIterator = struct
end
module QStaticByteArrayMatcher = struct
end
module QFutureSynchronizer = struct
end
module QListIterator = struct
end
module QStringRef = struct
end
module QTextCodec = struct
end
module QJsonArray'const_iterator = struct
end
module QSystemSemaphore = struct
end
module QUrl = struct
end
module QReadLocker = struct
end
module QHash'key_iterator = struct
end
module QFuture = struct
end
external new'QRegularExpressionMatchIterator : unit -> qRegularExpressionMatchIterator Qt.t = "mlqt_QRegularExpressionMatchIterator_new_"
external new'QRegularExpressionMatchIterator'1 : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpressionMatchIterator Qt.t = "mlqt_QRegularExpressionMatchIterator_new_1"
module QRegularExpressionMatchIterator = struct
  external swap : [> qRegularExpressionMatchIterator] Qt.t -> [> qRegularExpressionMatchIterator] Qt.t -> unit = "mlqt_QRegularExpressionMatchIterator_swap"
  external isValid : [> qRegularExpressionMatchIterator] Qt.t -> bool = "mlqt_QRegularExpressionMatchIterator_isValid"
  external hasNext : [> qRegularExpressionMatchIterator] Qt.t -> bool = "mlqt_QRegularExpressionMatchIterator_hasNext"
  external next : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpressionMatch Qt.t = "mlqt_QRegularExpressionMatchIterator_next"
  external peekNext : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpressionMatch Qt.t = "mlqt_QRegularExpressionMatchIterator_peekNext"
  external regularExpression : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpression Qt.t = "mlqt_QRegularExpressionMatchIterator_regularExpression"
  external matchType : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpression'MatchType = "mlqt_QRegularExpressionMatchIterator_matchType"
  external matchOptions : [> qRegularExpressionMatchIterator] Qt.t -> qRegularExpression'MatchOptions = "mlqt_QRegularExpressionMatchIterator_matchOptions"
end
module QFutureIterator = struct
end
module QTextEncoder = struct
end
module QUuid = struct
end
module QMessageLogger = struct
end
module QSequentialIterable = struct
end
module QContiguousCache = struct
end
module QMetaEnum = struct
end
module QCryptographicHash = struct
end
module QLibraryInfo = struct
end
module QProcess'CreateProcessArguments = struct
end
module QCommandLineOption = struct
end
module QMutableVectorIterator = struct
end
external new'QRegularExpression : unit -> qRegularExpression Qt.t = "mlqt_QRegularExpression_new_"
external new'QRegularExpression'1 : string -> qRegularExpression'PatternOptions -> qRegularExpression Qt.t = "mlqt_QRegularExpression_new_1"
external new'QRegularExpression'2 : [> qRegularExpression] Qt.t -> qRegularExpression Qt.t = "mlqt_QRegularExpression_new_2"
module QRegularExpression = struct
  external patternOptions : [> qRegularExpression] Qt.t -> qRegularExpression'PatternOptions = "mlqt_QRegularExpression_patternOptions"
  external setPatternOptions : [> qRegularExpression] Qt.t -> qRegularExpression'PatternOptions -> unit = "mlqt_QRegularExpression_setPatternOptions"
  external swap : [> qRegularExpression] Qt.t -> [> qRegularExpression] Qt.t -> unit = "mlqt_QRegularExpression_swap"
  external pattern : [> qRegularExpression] Qt.t -> string = "mlqt_QRegularExpression_pattern"
  external setPattern : [> qRegularExpression] Qt.t -> string -> unit = "mlqt_QRegularExpression_setPattern"
  external isValid : [> qRegularExpression] Qt.t -> bool = "mlqt_QRegularExpression_isValid"
  external patternErrorOffset : [> qRegularExpression] Qt.t -> int = "mlqt_QRegularExpression_patternErrorOffset"
  external errorString : [> qRegularExpression] Qt.t -> string = "mlqt_QRegularExpression_errorString"
  external captureCount : [> qRegularExpression] Qt.t -> int = "mlqt_QRegularExpression_captureCount"
  external namedCaptureGroups : [> qRegularExpression] Qt.t -> qStringList Qt.t = "mlqt_QRegularExpression_namedCaptureGroups"
  external match_ : [> qRegularExpression] Qt.t -> string -> int -> qRegularExpression'MatchType -> qRegularExpression'MatchOptions -> qRegularExpressionMatch Qt.t = "mlqt_QRegularExpression_match_"
  external globalMatch : [> qRegularExpression] Qt.t -> string -> int -> qRegularExpression'MatchType -> qRegularExpression'MatchOptions -> qRegularExpressionMatchIterator Qt.t = "mlqt_QRegularExpression_globalMatch"
  external optimize : [> qRegularExpression] Qt.t -> unit = "mlqt_QRegularExpression_optimize"
  external escape : string -> string = "mlqt_QRegularExpression_escape"
end
module QMetaProperty = struct
end
module QLine = struct
end
module QSharedData = struct
end
module QExplicitlySharedDataPointer = struct
end
module QWaitCondition = struct
end
module QMargins = struct
end
module QTimeZone'OffsetData = struct
end
module QXmlStreamNamespaceDeclaration = struct
end
module QMimeType = struct
end
module QCollatorSortKey = struct
end
module QDataStream = struct
end
module QTemporaryDir = struct
end
module QRunnable = struct
end
module QThreadStorage = struct
end
module QJsonValue = struct
end
module QVarLengthArray = struct
end
module QBasicTimer = struct
end
module QEventLoopLocker = struct
end
module QJsonArray'iterator = struct
end
module QCommandLineParser = struct
end
module QTextStream = struct
end
module QSet = struct
end
module QSemaphore = struct
end
module QXmlStreamAttribute = struct
end
module QDeadlineTimer = struct
end
module QDate = struct
end
module QMutableLinkedListIterator = struct
end
module QHash'const_iterator = struct
end
module QFlags = struct
end
module QLockFile = struct
end
module QMetaObject'Connection = struct
end
module QSharedDataPointer = struct
end
module QSysInfo = struct
end
module QJsonObject = struct
end
module QException = struct
end
module QMap = struct
end
module QAssociativeIterable'const_iterator = struct
end
module QTime = struct
end
module QTextBoundaryFinder = struct
end
module QMetaClassInfo = struct
end
module QSetIterator = struct
end
module QSharedPointer = struct
end
module QProcessEnvironment = struct
end
module QHashIterator = struct
end
module QLinkedListIterator = struct
end
module QPersistentModelIndex = struct
end
module QCache = struct
end
module QLinkedList = struct
end
module QScopedValueRollback = struct
end
module QDir = struct
end
module QMultiMap = struct
  include QMap
end
module QUnhandledException = struct
  include QException
end
external new'QItemSelection : unit -> qItemSelection Qt.t = "mlqt_QItemSelection_new_"
external new'QItemSelection'1 : [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> qItemSelection Qt.t = "mlqt_QItemSelection_new_1"
module QItemSelection = struct
  external select : [> qItemSelection] Qt.t -> [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QItemSelection_select"
  external contains : [> qItemSelection] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelection_contains"
  external indexes : [> qItemSelection] Qt.t -> qModelIndexList Qt.t = "mlqt_QItemSelection_indexes"
  external merge : [> qItemSelection] Qt.t -> [> qItemSelection] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QItemSelection_merge"
  external split : [> qItemSelectionRange] Qt.t -> [> qItemSelectionRange] Qt.t -> [> qItemSelection] Qt.t -> unit = "mlqt_QItemSelection_split"
end
module QByteArrayList = struct
end
module QStringList = struct
end
module QXmlStreamAttributes = struct
  include QVector
end
module QGenericReturnArgument = struct
  include QGenericArgument
end
module QMultiHash = struct
  include QHash
end
module QScopedArrayPointer = struct
  include QScopedPointer
end
module QTimerEvent = struct
  include QEvent
end
module QChildEvent = struct
  include QEvent
end
module QDynamicPropertyChangeEvent = struct
  include QEvent
end
module QStateMachine'SignalEvent = struct
  include QEvent
end
module QStateMachine'WrappedEvent = struct
  include QEvent
end
module QAbstractAnimation = struct
  include QObject
  external class' : unit -> qAbstractAnimation Qt.qt_class = "mlqt_class_QAbstractAnimation" [@@noalloc]
end
module QFileSelector = struct
  include QObject
  external class' : unit -> qFileSelector Qt.qt_class = "mlqt_class_QFileSelector" [@@noalloc]
end
module QFileSystemWatcher = struct
  include QObject
  external class' : unit -> qFileSystemWatcher Qt.qt_class = "mlqt_class_QFileSystemWatcher" [@@noalloc]
end
module QIODevice = struct
  include QObject
  external class' : unit -> qIODevice Qt.qt_class = "mlqt_class_QIODevice" [@@noalloc]
end
module QSettings = struct
  include QObject
  external class' : unit -> qSettings Qt.qt_class = "mlqt_class_QSettings" [@@noalloc]
end
module QAbstractItemModel = struct
  include QObject
  external class' : unit -> qAbstractItemModel Qt.qt_class = "mlqt_class_QAbstractItemModel" [@@noalloc]
  external hasIndex : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_hasIndex"
  external index : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemModel_index"
  external parent : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemModel_parent"
  external sibling : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemModel_sibling"
  external rowCount : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QAbstractItemModel_rowCount"
  external columnCount : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QAbstractItemModel_columnCount"
  external hasChildren : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_hasChildren"
  external data : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> QVariant.t = "mlqt_QAbstractItemModel_data"
  external setData : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> QVariant.t -> int -> bool = "mlqt_QAbstractItemModel_setData"
  external headerData : [> qAbstractItemModel] Qt.t -> int -> qt'Orientation -> int -> QVariant.t = "mlqt_QAbstractItemModel_headerData"
  external setHeaderData : [> qAbstractItemModel] Qt.t -> int -> qt'Orientation -> QVariant.t -> int -> bool = "mlqt_QAbstractItemModel_setHeaderData"
  external mimeTypes : [> qAbstractItemModel] Qt.t -> qStringList Qt.t = "mlqt_QAbstractItemModel_mimeTypes"
  external mimeData : [> qAbstractItemModel] Qt.t -> [> qModelIndexList] Qt.t -> qMimeData Qt.t = "mlqt_QAbstractItemModel_mimeData"
  external canDropMimeData : [> qAbstractItemModel] Qt.t -> [> qMimeData] Qt.t -> qt'DropAction -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_canDropMimeData_bc" "mlqt_QAbstractItemModel_canDropMimeData"
  external dropMimeData : [> qAbstractItemModel] Qt.t -> [> qMimeData] Qt.t -> qt'DropAction -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_dropMimeData_bc" "mlqt_QAbstractItemModel_dropMimeData"
  external supportedDropActions : [> qAbstractItemModel] Qt.t -> qt'DropActions = "mlqt_QAbstractItemModel_supportedDropActions"
  external supportedDragActions : [> qAbstractItemModel] Qt.t -> qt'DropActions = "mlqt_QAbstractItemModel_supportedDragActions"
  external insertRows : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_insertRows"
  external insertColumns : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_insertColumns"
  external removeRows : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_removeRows"
  external removeColumns : [> qAbstractItemModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_removeColumns"
  external moveRows : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> int -> bool = "mlqt_QAbstractItemModel_moveRows_bc" "mlqt_QAbstractItemModel_moveRows"
  external moveColumns : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> int -> bool = "mlqt_QAbstractItemModel_moveColumns_bc" "mlqt_QAbstractItemModel_moveColumns"
  external insertRow : [> qAbstractItemModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_insertRow"
  external insertColumn : [> qAbstractItemModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_insertColumn"
  external removeRow : [> qAbstractItemModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_removeRow"
  external removeColumn : [> qAbstractItemModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_removeColumn"
  external moveRow : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> [> qModelIndex] Qt.t -> int -> bool = "mlqt_QAbstractItemModel_moveRow"
  external moveColumn : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> [> qModelIndex] Qt.t -> int -> bool = "mlqt_QAbstractItemModel_moveColumn"
  external fetchMore : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemModel_fetchMore"
  external canFetchMore : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractItemModel_canFetchMore"
  external flags : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> qt'ItemFlags = "mlqt_QAbstractItemModel_flags"
  external sort : [> qAbstractItemModel] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QAbstractItemModel_sort"
  external buddy : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemModel_buddy"
  external match_ : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> int -> QVariant.t -> int -> qt'MatchFlags -> qModelIndexList Qt.t = "mlqt_QAbstractItemModel_match__bc" "mlqt_QAbstractItemModel_match_"
  external span : [> qAbstractItemModel] Qt.t -> [> qModelIndex] Qt.t -> qSize = "mlqt_QAbstractItemModel_span"
  external headerDataChanged : [> qAbstractItemModel] Qt.t -> qt'Orientation -> int -> int -> unit = "mlqt_QAbstractItemModel_headerDataChanged"
  external submit : [> qAbstractItemModel] Qt.t -> bool = "mlqt_QAbstractItemModel_submit"
  external revert : [> qAbstractItemModel] Qt.t -> unit = "mlqt_QAbstractItemModel_revert"
end
external new'QItemSelectionModel : [> qAbstractItemModel] Qt.t -> qItemSelectionModel Qt.t = "mlqt_QItemSelectionModel_new_"
external new'QItemSelectionModel'1 : [> qAbstractItemModel] Qt.t -> [> qObject] Qt.t option -> qItemSelectionModel Qt.t = "mlqt_QItemSelectionModel_new_1"
module QItemSelectionModel = struct
  include QObject
  external class' : unit -> qItemSelectionModel Qt.qt_class = "mlqt_class_QItemSelectionModel" [@@noalloc]
  external currentIndex : [> qItemSelectionModel] Qt.t -> qModelIndex Qt.t = "mlqt_QItemSelectionModel_currentIndex"
  external isSelected : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionModel_isSelected"
  external isRowSelected : [> qItemSelectionModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionModel_isRowSelected"
  external isColumnSelected : [> qItemSelectionModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionModel_isColumnSelected"
  external rowIntersectsSelection : [> qItemSelectionModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionModel_rowIntersectsSelection"
  external columnIntersectsSelection : [> qItemSelectionModel] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QItemSelectionModel_columnIntersectsSelection"
  external hasSelection : [> qItemSelectionModel] Qt.t -> bool = "mlqt_QItemSelectionModel_hasSelection"
  external selectedIndexes : [> qItemSelectionModel] Qt.t -> qModelIndexList Qt.t = "mlqt_QItemSelectionModel_selectedIndexes"
  external selectedRows : [> qItemSelectionModel] Qt.t -> int -> qModelIndexList Qt.t = "mlqt_QItemSelectionModel_selectedRows"
  external selectedColumns : [> qItemSelectionModel] Qt.t -> int -> qModelIndexList Qt.t = "mlqt_QItemSelectionModel_selectedColumns"
  external selection : [> qItemSelectionModel] Qt.t -> qItemSelection Qt.t = "mlqt_QItemSelectionModel_selection"
  external model : [> qItemSelectionModel] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QItemSelectionModel_model"
  external model1 : [> qItemSelectionModel] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QItemSelectionModel_model1"
  external setModel : [> qItemSelectionModel] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QItemSelectionModel_setModel"
  external setCurrentIndex : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QItemSelectionModel_setCurrentIndex"
  external select : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QItemSelectionModel_select"
  external select1 : [> qItemSelectionModel] Qt.t -> [> qItemSelection] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QItemSelectionModel_select1"
  external clear : [> qItemSelectionModel] Qt.t -> unit = "mlqt_QItemSelectionModel_clear"
  external reset : [> qItemSelectionModel] Qt.t -> unit = "mlqt_QItemSelectionModel_reset"
  external clearSelection : [> qItemSelectionModel] Qt.t -> unit = "mlqt_QItemSelectionModel_clearSelection"
  external clearCurrentIndex : [> qItemSelectionModel] Qt.t -> unit = "mlqt_QItemSelectionModel_clearCurrentIndex"
  external selectionChanged : [> qItemSelectionModel] Qt.t -> [> qItemSelection] Qt.t -> [> qItemSelection] Qt.t -> unit = "mlqt_QItemSelectionModel_selectionChanged"
  external currentChanged : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QItemSelectionModel_currentChanged"
  external currentRowChanged : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QItemSelectionModel_currentRowChanged"
  external currentColumnChanged : [> qItemSelectionModel] Qt.t -> [> qModelIndex] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QItemSelectionModel_currentColumnChanged"
  external modelChanged : [> qItemSelectionModel] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QItemSelectionModel_modelChanged"
  external slot'setCurrentIndex1 : unit -> ([> qItemSelectionModel], [> qModelIndex] Qt.t * qItemSelectionModel'SelectionFlags) Qt.slot = "mlqt_slot_QItemSelectionModel_setCurrentIndex1" [@@noalloc]
  external slot'select2 : unit -> ([> qItemSelectionModel], [> qModelIndex] Qt.t * qItemSelectionModel'SelectionFlags) Qt.slot = "mlqt_slot_QItemSelectionModel_select2" [@@noalloc]
  external slot'select3 : unit -> ([> qItemSelectionModel], [> qItemSelection] Qt.t * qItemSelectionModel'SelectionFlags) Qt.slot = "mlqt_slot_QItemSelectionModel_select3" [@@noalloc]
  external slot'clear1 : unit -> ([> qItemSelectionModel], unit) Qt.slot = "mlqt_slot_QItemSelectionModel_clear1" [@@noalloc]
  external slot'reset1 : unit -> ([> qItemSelectionModel], unit) Qt.slot = "mlqt_slot_QItemSelectionModel_reset1" [@@noalloc]
  external slot'clearSelection1 : unit -> ([> qItemSelectionModel], unit) Qt.slot = "mlqt_slot_QItemSelectionModel_clearSelection1" [@@noalloc]
  external slot'clearCurrentIndex1 : unit -> ([> qItemSelectionModel], unit) Qt.slot = "mlqt_slot_QItemSelectionModel_clearCurrentIndex1" [@@noalloc]
  external signal'selectionChanged1 : unit -> ([> qItemSelectionModel], qItemSelection Qt.t * qItemSelection Qt.t) Qt.signal = "mlqt_signal_QItemSelectionModel_selectionChanged1" [@@noalloc]
  external signal'currentChanged1 : unit -> ([> qItemSelectionModel], qModelIndex Qt.t * qModelIndex Qt.t) Qt.signal = "mlqt_signal_QItemSelectionModel_currentChanged1" [@@noalloc]
  external signal'currentRowChanged1 : unit -> ([> qItemSelectionModel], qModelIndex Qt.t * qModelIndex Qt.t) Qt.signal = "mlqt_signal_QItemSelectionModel_currentRowChanged1" [@@noalloc]
  external signal'currentColumnChanged1 : unit -> ([> qItemSelectionModel], qModelIndex Qt.t * qModelIndex Qt.t) Qt.signal = "mlqt_signal_QItemSelectionModel_currentColumnChanged1" [@@noalloc]
  external signal'modelChanged1 : unit -> ([> qItemSelectionModel], qAbstractItemModel Qt.t) Qt.signal = "mlqt_signal_QItemSelectionModel_modelChanged1" [@@noalloc]
end
module QAbstractEventDispatcher = struct
  include QObject
  external class' : unit -> qAbstractEventDispatcher Qt.qt_class = "mlqt_class_QAbstractEventDispatcher" [@@noalloc]
end
module QEventLoop = struct
  include QObject
  external class' : unit -> qEventLoop Qt.qt_class = "mlqt_class_QEventLoop" [@@noalloc]
end
module QMimeData = struct
  include QObject
  external class' : unit -> qMimeData Qt.qt_class = "mlqt_class_QMimeData" [@@noalloc]
end
module QObjectCleanupHandler = struct
  include QObject
  external class' : unit -> qObjectCleanupHandler Qt.qt_class = "mlqt_class_QObjectCleanupHandler" [@@noalloc]
end
module QSharedMemory = struct
  include QObject
  external class' : unit -> qSharedMemory Qt.qt_class = "mlqt_class_QSharedMemory" [@@noalloc]
end
module QSignalMapper = struct
  include QObject
  external class' : unit -> qSignalMapper Qt.qt_class = "mlqt_class_QSignalMapper" [@@noalloc]
end
module QSocketNotifier = struct
  include QObject
  external class' : unit -> qSocketNotifier Qt.qt_class = "mlqt_class_QSocketNotifier" [@@noalloc]
end
module QTimer = struct
  include QObject
  external class' : unit -> qTimer Qt.qt_class = "mlqt_class_QTimer" [@@noalloc]
end
module QTranslator = struct
  include QObject
  external class' : unit -> qTranslator Qt.qt_class = "mlqt_class_QTranslator" [@@noalloc]
end
module QLibrary = struct
  include QObject
  external class' : unit -> qLibrary Qt.qt_class = "mlqt_class_QLibrary" [@@noalloc]
end
module QPluginLoader = struct
  include QObject
  external class' : unit -> qPluginLoader Qt.qt_class = "mlqt_class_QPluginLoader" [@@noalloc]
end
module QAbstractState = struct
  include QObject
  external class' : unit -> qAbstractState Qt.qt_class = "mlqt_class_QAbstractState" [@@noalloc]
end
module QAbstractTransition = struct
  include QObject
  external class' : unit -> qAbstractTransition Qt.qt_class = "mlqt_class_QAbstractTransition" [@@noalloc]
end
module QThread = struct
  include QObject
  external class' : unit -> qThread Qt.qt_class = "mlqt_class_QThread" [@@noalloc]
end
module QThreadPool = struct
  include QObject
  external class' : unit -> qThreadPool Qt.qt_class = "mlqt_class_QThreadPool" [@@noalloc]
end
module QTimeLine = struct
  include QObject
  external class' : unit -> qTimeLine Qt.qt_class = "mlqt_class_QTimeLine" [@@noalloc]
end
module QEventTransition = struct
  include QAbstractTransition
  external class' : unit -> qEventTransition Qt.qt_class = "mlqt_class_QEventTransition" [@@noalloc]
end
module QSignalTransition = struct
  include QAbstractTransition
  external class' : unit -> qSignalTransition Qt.qt_class = "mlqt_class_QSignalTransition" [@@noalloc]
end
module QFinalState = struct
  include QAbstractState
  external class' : unit -> qFinalState Qt.qt_class = "mlqt_class_QFinalState" [@@noalloc]
end
module QHistoryState = struct
  include QAbstractState
  external class' : unit -> qHistoryState Qt.qt_class = "mlqt_class_QHistoryState" [@@noalloc]
end
module QState = struct
  include QAbstractState
  external class' : unit -> qState Qt.qt_class = "mlqt_class_QState" [@@noalloc]
end
module QAbstractTableModel = struct
  include QAbstractItemModel
  external class' : unit -> qAbstractTableModel Qt.qt_class = "mlqt_class_QAbstractTableModel" [@@noalloc]
end
module QAbstractListModel = struct
  include QAbstractItemModel
  external class' : unit -> qAbstractListModel Qt.qt_class = "mlqt_class_QAbstractListModel" [@@noalloc]
end
module QAbstractProxyModel = struct
  include QAbstractItemModel
  external class' : unit -> qAbstractProxyModel Qt.qt_class = "mlqt_class_QAbstractProxyModel" [@@noalloc]
  external setSourceModel : [> qAbstractProxyModel] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QAbstractProxyModel_setSourceModel"
  external sourceModel : [> qAbstractProxyModel] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QAbstractProxyModel_sourceModel"
  external mapToSource : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractProxyModel_mapToSource"
  external mapFromSource : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractProxyModel_mapFromSource"
  external mapSelectionToSource : [> qAbstractProxyModel] Qt.t -> [> qItemSelection] Qt.t -> qItemSelection Qt.t = "mlqt_QAbstractProxyModel_mapSelectionToSource"
  external mapSelectionFromSource : [> qAbstractProxyModel] Qt.t -> [> qItemSelection] Qt.t -> qItemSelection Qt.t = "mlqt_QAbstractProxyModel_mapSelectionFromSource"
  external submit : [> qAbstractProxyModel] Qt.t -> bool = "mlqt_QAbstractProxyModel_submit"
  external revert : [> qAbstractProxyModel] Qt.t -> unit = "mlqt_QAbstractProxyModel_revert"
  external data : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> int -> QVariant.t = "mlqt_QAbstractProxyModel_data"
  external headerData : [> qAbstractProxyModel] Qt.t -> int -> qt'Orientation -> int -> QVariant.t = "mlqt_QAbstractProxyModel_headerData"
  external flags : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qt'ItemFlags = "mlqt_QAbstractProxyModel_flags"
  external setData : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> QVariant.t -> int -> bool = "mlqt_QAbstractProxyModel_setData"
  external setHeaderData : [> qAbstractProxyModel] Qt.t -> int -> qt'Orientation -> QVariant.t -> int -> bool = "mlqt_QAbstractProxyModel_setHeaderData"
  external buddy : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractProxyModel_buddy"
  external canFetchMore : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractProxyModel_canFetchMore"
  external fetchMore : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractProxyModel_fetchMore"
  external sort : [> qAbstractProxyModel] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QAbstractProxyModel_sort"
  external span : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qSize = "mlqt_QAbstractProxyModel_span"
  external hasChildren : [> qAbstractProxyModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractProxyModel_hasChildren"
  external sibling : [> qAbstractProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractProxyModel_sibling"
  external mimeData : [> qAbstractProxyModel] Qt.t -> [> qModelIndexList] Qt.t -> qMimeData Qt.t = "mlqt_QAbstractProxyModel_mimeData"
  external canDropMimeData : [> qAbstractProxyModel] Qt.t -> [> qMimeData] Qt.t -> qt'DropAction -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractProxyModel_canDropMimeData_bc" "mlqt_QAbstractProxyModel_canDropMimeData"
  external dropMimeData : [> qAbstractProxyModel] Qt.t -> [> qMimeData] Qt.t -> qt'DropAction -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QAbstractProxyModel_dropMimeData_bc" "mlqt_QAbstractProxyModel_dropMimeData"
  external mimeTypes : [> qAbstractProxyModel] Qt.t -> qStringList Qt.t = "mlqt_QAbstractProxyModel_mimeTypes"
  external supportedDragActions : [> qAbstractProxyModel] Qt.t -> qt'DropActions = "mlqt_QAbstractProxyModel_supportedDragActions"
  external supportedDropActions : [> qAbstractProxyModel] Qt.t -> qt'DropActions = "mlqt_QAbstractProxyModel_supportedDropActions"
end
module QBuffer = struct
  include QIODevice
  external class' : unit -> qBuffer Qt.qt_class = "mlqt_class_QBuffer" [@@noalloc]
end
module QFileDevice = struct
  include QIODevice
  external class' : unit -> qFileDevice Qt.qt_class = "mlqt_class_QFileDevice" [@@noalloc]
end
module QProcess = struct
  include QIODevice
  external class' : unit -> qProcess Qt.qt_class = "mlqt_class_QProcess" [@@noalloc]
end
module QAnimationGroup = struct
  include QAbstractAnimation
  external class' : unit -> qAnimationGroup Qt.qt_class = "mlqt_class_QAnimationGroup" [@@noalloc]
end
module QPauseAnimation = struct
  include QAbstractAnimation
  external class' : unit -> qPauseAnimation Qt.qt_class = "mlqt_class_QPauseAnimation" [@@noalloc]
end
module QVariantAnimation = struct
  include QAbstractAnimation
  external class' : unit -> qVariantAnimation Qt.qt_class = "mlqt_class_QVariantAnimation" [@@noalloc]
end
module QPropertyAnimation = struct
  include QVariantAnimation
  external class' : unit -> qPropertyAnimation Qt.qt_class = "mlqt_class_QPropertyAnimation" [@@noalloc]
end
module QParallelAnimationGroup = struct
  include QAnimationGroup
  external class' : unit -> qParallelAnimationGroup Qt.qt_class = "mlqt_class_QParallelAnimationGroup" [@@noalloc]
end
module QSequentialAnimationGroup = struct
  include QAnimationGroup
  external class' : unit -> qSequentialAnimationGroup Qt.qt_class = "mlqt_class_QSequentialAnimationGroup" [@@noalloc]
end
module QFile = struct
  include QFileDevice
  external class' : unit -> qFile Qt.qt_class = "mlqt_class_QFile" [@@noalloc]
end
module QSaveFile = struct
  include QFileDevice
  external class' : unit -> qSaveFile Qt.qt_class = "mlqt_class_QSaveFile" [@@noalloc]
end
module QIdentityProxyModel = struct
  include QAbstractProxyModel
  external class' : unit -> qIdentityProxyModel Qt.qt_class = "mlqt_class_QIdentityProxyModel" [@@noalloc]
end
external new'QSortFilterProxyModel : [> qObject] Qt.t option -> qSortFilterProxyModel Qt.t = "mlqt_QSortFilterProxyModel_new_"
module QSortFilterProxyModel = struct
  include QAbstractProxyModel
  external class' : unit -> qSortFilterProxyModel Qt.qt_class = "mlqt_class_QSortFilterProxyModel" [@@noalloc]
  external setSourceModel : [> qSortFilterProxyModel] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QSortFilterProxyModel_setSourceModel"
  external mapToSource : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_mapToSource"
  external mapFromSource : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_mapFromSource"
  external mapSelectionToSource : [> qSortFilterProxyModel] Qt.t -> [> qItemSelection] Qt.t -> qItemSelection Qt.t = "mlqt_QSortFilterProxyModel_mapSelectionToSource"
  external mapSelectionFromSource : [> qSortFilterProxyModel] Qt.t -> [> qItemSelection] Qt.t -> qItemSelection Qt.t = "mlqt_QSortFilterProxyModel_mapSelectionFromSource"
  external filterRegExp : [> qSortFilterProxyModel] Qt.t -> qRegExp Qt.t = "mlqt_QSortFilterProxyModel_filterRegExp"
  external setFilterRegExp : [> qSortFilterProxyModel] Qt.t -> [> qRegExp] Qt.t -> unit = "mlqt_QSortFilterProxyModel_setFilterRegExp"
  external filterKeyColumn : [> qSortFilterProxyModel] Qt.t -> int = "mlqt_QSortFilterProxyModel_filterKeyColumn"
  external setFilterKeyColumn : [> qSortFilterProxyModel] Qt.t -> int -> unit = "mlqt_QSortFilterProxyModel_setFilterKeyColumn"
  external filterCaseSensitivity : [> qSortFilterProxyModel] Qt.t -> qt'CaseSensitivity = "mlqt_QSortFilterProxyModel_filterCaseSensitivity"
  external setFilterCaseSensitivity : [> qSortFilterProxyModel] Qt.t -> qt'CaseSensitivity -> unit = "mlqt_QSortFilterProxyModel_setFilterCaseSensitivity"
  external sortCaseSensitivity : [> qSortFilterProxyModel] Qt.t -> qt'CaseSensitivity = "mlqt_QSortFilterProxyModel_sortCaseSensitivity"
  external setSortCaseSensitivity : [> qSortFilterProxyModel] Qt.t -> qt'CaseSensitivity -> unit = "mlqt_QSortFilterProxyModel_setSortCaseSensitivity"
  external isSortLocaleAware : [> qSortFilterProxyModel] Qt.t -> bool = "mlqt_QSortFilterProxyModel_isSortLocaleAware"
  external setSortLocaleAware : [> qSortFilterProxyModel] Qt.t -> bool -> unit = "mlqt_QSortFilterProxyModel_setSortLocaleAware"
  external sortColumn : [> qSortFilterProxyModel] Qt.t -> int = "mlqt_QSortFilterProxyModel_sortColumn"
  external sortOrder : [> qSortFilterProxyModel] Qt.t -> qt'SortOrder = "mlqt_QSortFilterProxyModel_sortOrder"
  external dynamicSortFilter : [> qSortFilterProxyModel] Qt.t -> bool = "mlqt_QSortFilterProxyModel_dynamicSortFilter"
  external setDynamicSortFilter : [> qSortFilterProxyModel] Qt.t -> bool -> unit = "mlqt_QSortFilterProxyModel_setDynamicSortFilter"
  external sortRole : [> qSortFilterProxyModel] Qt.t -> int = "mlqt_QSortFilterProxyModel_sortRole"
  external setSortRole : [> qSortFilterProxyModel] Qt.t -> int -> unit = "mlqt_QSortFilterProxyModel_setSortRole"
  external filterRole : [> qSortFilterProxyModel] Qt.t -> int = "mlqt_QSortFilterProxyModel_filterRole"
  external setFilterRole : [> qSortFilterProxyModel] Qt.t -> int -> unit = "mlqt_QSortFilterProxyModel_setFilterRole"
  external setFilterRegExp1 : [> qSortFilterProxyModel] Qt.t -> string -> unit = "mlqt_QSortFilterProxyModel_setFilterRegExp1"
  external setFilterWildcard : [> qSortFilterProxyModel] Qt.t -> string -> unit = "mlqt_QSortFilterProxyModel_setFilterWildcard"
  external setFilterFixedString : [> qSortFilterProxyModel] Qt.t -> string -> unit = "mlqt_QSortFilterProxyModel_setFilterFixedString"
  external clear : [> qSortFilterProxyModel] Qt.t -> unit = "mlqt_QSortFilterProxyModel_clear"
  external invalidate : [> qSortFilterProxyModel] Qt.t -> unit = "mlqt_QSortFilterProxyModel_invalidate"
  external index : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_index"
  external parent : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_parent"
  external sibling : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_sibling"
  external rowCount : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QSortFilterProxyModel_rowCount"
  external columnCount : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> int = "mlqt_QSortFilterProxyModel_columnCount"
  external hasChildren : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_hasChildren"
  external data : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> int -> QVariant.t = "mlqt_QSortFilterProxyModel_data"
  external setData : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> QVariant.t -> int -> bool = "mlqt_QSortFilterProxyModel_setData"
  external headerData : [> qSortFilterProxyModel] Qt.t -> int -> qt'Orientation -> int -> QVariant.t = "mlqt_QSortFilterProxyModel_headerData"
  external setHeaderData : [> qSortFilterProxyModel] Qt.t -> int -> qt'Orientation -> QVariant.t -> int -> bool = "mlqt_QSortFilterProxyModel_setHeaderData"
  external mimeData : [> qSortFilterProxyModel] Qt.t -> [> qModelIndexList] Qt.t -> qMimeData Qt.t = "mlqt_QSortFilterProxyModel_mimeData"
  external dropMimeData : [> qSortFilterProxyModel] Qt.t -> [> qMimeData] Qt.t -> qt'DropAction -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_dropMimeData_bc" "mlqt_QSortFilterProxyModel_dropMimeData"
  external insertRows : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_insertRows"
  external insertColumns : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_insertColumns"
  external removeRows : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_removeRows"
  external removeColumns : [> qSortFilterProxyModel] Qt.t -> int -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_removeColumns"
  external fetchMore : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QSortFilterProxyModel_fetchMore"
  external canFetchMore : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QSortFilterProxyModel_canFetchMore"
  external flags : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qt'ItemFlags = "mlqt_QSortFilterProxyModel_flags"
  external buddy : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QSortFilterProxyModel_buddy"
  external match_ : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> int -> QVariant.t -> int -> qt'MatchFlags -> qModelIndexList Qt.t = "mlqt_QSortFilterProxyModel_match__bc" "mlqt_QSortFilterProxyModel_match_"
  external span : [> qSortFilterProxyModel] Qt.t -> [> qModelIndex] Qt.t -> qSize = "mlqt_QSortFilterProxyModel_span"
  external sort : [> qSortFilterProxyModel] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QSortFilterProxyModel_sort"
  external mimeTypes : [> qSortFilterProxyModel] Qt.t -> qStringList Qt.t = "mlqt_QSortFilterProxyModel_mimeTypes"
  external supportedDropActions : [> qSortFilterProxyModel] Qt.t -> qt'DropActions = "mlqt_QSortFilterProxyModel_supportedDropActions"
end
module QStringListModel = struct
  include QAbstractListModel
  external class' : unit -> qStringListModel Qt.qt_class = "mlqt_class_QStringListModel" [@@noalloc]
end
module QStateMachine = struct
  include QState
  external class' : unit -> qStateMachine Qt.qt_class = "mlqt_class_QStateMachine" [@@noalloc]
end
module QTemporaryFile = struct
  include QFile
  external class' : unit -> qTemporaryFile Qt.qt_class = "mlqt_class_QTemporaryFile" [@@noalloc]
end
module QAccessibleEditableTextInterface = struct
end
module QAccessibleInterface = struct
end
module QTextLength = struct
end
module QPaintEngine = struct
end
module QTextBlock = struct
end
module QTextOption = struct
end
module QRgba64 = struct
end
module QQuaternion = struct
end
module QMatrix = struct
end
module QAccessibleValueInterface = struct
end
module QTextItem = struct
end
module QTextLine = struct
end
module QTextInlineObject = struct
end
module QTextBlockUserData = struct
end
module QGenericPluginFactory = struct
end
module QSurfaceFormat = struct
end
module QOpenGLPixelTransferOptions = struct
end
module QOpenGLFramebufferObjectFormat = struct
end
module QGradient = struct
end
module QImageReader = struct
end
module QPainter'PixmapFragment = struct
end
module QTextLayout = struct
end
module QPixelFormat = struct
end
module QOpenGLTextureBlitter = struct
end
module QCursor = struct
end
module QDesktopServices = struct
end
module QTextCursor = struct
end
module QVector4D = struct
end
module QTextDocumentFragment = struct
end
module QAccessibleEvent = struct
end
module QOpenGLTexture = struct
end
module QPageSize = struct
end
module QTouchEvent'TouchPoint = struct
end
module QTouchDevice = struct
end
module QPictureIO = struct
end
module QInputMethodEvent'Attribute = struct
end
module QFontInfo = struct
end
module QStaticText = struct
end
module QPainterPath = struct
end
module QPaintEngineState = struct
end
module QOpenGLFramebufferObject = struct
end
module QIcon = struct
end
module QTextOption'Tab = struct
end
module QAbstractOpenGLFunctions = struct
end
module QAccessibleTextInterface = struct
end
module QTextBlock'iterator = struct
end
module QPalette = struct
end
module QFontMetricsF = struct
end
module QRawFont = struct
end
module QFontMetrics = struct
end
module QAccessibleTableInterface = struct
end
module QOpenGLDebugMessage = struct
end
module QPainter = struct
end
module QOpenGLFunctions = struct
end
module QBackingStore = struct
end
module QTextFormat = struct
end
module QColor = struct
end
module QMatrix4x4 = struct
end
module QAccessible = struct
end
module QPixmapCache = struct
end
module QVector2D = struct
end
module QAccessible'State = struct
end
module QPainterPathStroker = struct
end
module QOpenGLVertexArrayObject'Binder = struct
end
module QImageIOHandler = struct
end
module QRegion = struct
end
module QTextFrame'iterator = struct
end
module QAccessibleActionInterface = struct
end
module QFontDatabase = struct
end
module QIconEngine = struct
end
module QTextObjectInterface = struct
end
module QTextTableCell = struct
end
module QPixmapCache'Key = struct
end
module QSupportedWritingSystems = struct
end
module QImageWriter = struct
end
module QBrush = struct
end
module QPageLayout = struct
end
module QPainterPath'Element = struct
end
module QTextFragment = struct
end
module QAccessibleTableCellInterface = struct
end
module QStandardItem = struct
end
module QOpenGLBuffer = struct
end
module QGlyphRun = struct
end
module QGenericMatrix = struct
end
module QTransform = struct
end
module QFont = struct
end
module QPointingDeviceUniqueId = struct
end
module QOpenGLVersionProfile = struct
end
module QPen = struct
end
module QVector3D = struct
end
module QKeySequence = struct
end
module QTextLayout'FormatRange = struct
end
module QSurface = struct
end
module QTextDocumentWriter = struct
end
module QOffscreenSurface = struct
  include QObject
  external class' : unit -> qOffscreenSurface Qt.qt_class = "mlqt_class_QOffscreenSurface" [@@noalloc]
end
module QRasterPaintEngine = struct
  include QPaintEngine
end
module QStandardItemModel = struct
  include QAbstractItemModel
  external class' : unit -> qStandardItemModel Qt.qt_class = "mlqt_class_QStandardItemModel" [@@noalloc]
end
module QTextCharFormat = struct
  include QTextFormat
end
module QTextBlockFormat = struct
  include QTextFormat
end
module QTextListFormat = struct
  include QTextFormat
end
module QTextFrameFormat = struct
  include QTextFormat
end
module QPolygon = struct
  include QVector
end
module QPolygonF = struct
  include QVector
end
module QOpenGLExtraFunctions = struct
  include QOpenGLFunctions
end
module QImage = struct
end
module QPicture = struct
end
module QPixmap = struct
end
module QOpenGLPaintDevice = struct
end
module QPagedPaintDevice = struct
end
module QOpenGLFunctions_1_0 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_1_1 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_1_2 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_1_3 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_1_4 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_1_5 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_2_0 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_2_1 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_0 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_1 = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_2_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_2_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_3_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_3_3_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_0_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_0_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_1_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_1_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_2_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_2_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_3_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_3_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_4_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_4_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_5_Compatibility = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_4_5_Core = struct
  include QAbstractOpenGLFunctions
end
module QOpenGLFunctions_ES2 = struct
  include QAbstractOpenGLFunctions
end
module QAccessibleStateChangeEvent = struct
  include QAccessibleEvent
end
module QAccessibleTextCursorEvent = struct
  include QAccessibleEvent
end
module QAccessibleValueChangeEvent = struct
  include QAccessibleEvent
end
module QAccessibleTableModelChangeEvent = struct
  include QAccessibleEvent
end
module QLinearGradient = struct
  include QGradient
end
module QRadialGradient = struct
  include QGradient
end
module QConicalGradient = struct
  include QGradient
end
module QInputEvent = struct
  include QEvent
end
module QEnterEvent = struct
  include QEvent
end
module QFocusEvent = struct
  include QEvent
end
module QPaintEvent = struct
  include QEvent
end
module QMoveEvent = struct
  include QEvent
end
module QExposeEvent = struct
  include QEvent
end
module QPlatformSurfaceEvent = struct
  include QEvent
end
module QResizeEvent = struct
  include QEvent
end
module QCloseEvent = struct
  include QEvent
end
module QIconDragEvent = struct
  include QEvent
end
module QShowEvent = struct
  include QEvent
end
module QHideEvent = struct
  include QEvent
end
module QInputMethodEvent = struct
  include QEvent
end
module QInputMethodQueryEvent = struct
  include QEvent
end
module QDropEvent = struct
  include QEvent
end
module QDragLeaveEvent = struct
  include QEvent
end
module QHelpEvent = struct
  include QEvent
end
module QStatusTipEvent = struct
  include QEvent
end
module QWhatsThisClickedEvent = struct
  include QEvent
end
module QActionEvent = struct
  include QEvent
end
module QFileOpenEvent = struct
  include QEvent
end
module QShortcutEvent = struct
  include QEvent
end
module QWindowStateChangeEvent = struct
  include QEvent
end
module QScrollPrepareEvent = struct
  include QEvent
end
module QScrollEvent = struct
  include QEvent
end
module QAccessibleObject = struct
  include QAccessibleInterface
end
module QAccessiblePlugin = struct
  include QObject
  external class' : unit -> qAccessiblePlugin Qt.qt_class = "mlqt_class_QAccessiblePlugin" [@@noalloc]
end
module QIconEnginePlugin = struct
  include QObject
  external class' : unit -> qIconEnginePlugin Qt.qt_class = "mlqt_class_QIconEnginePlugin" [@@noalloc]
end
module QImageIOPlugin = struct
  include QObject
  external class' : unit -> qImageIOPlugin Qt.qt_class = "mlqt_class_QImageIOPlugin" [@@noalloc]
end
module QMovie = struct
  include QObject
  external class' : unit -> qMovie Qt.qt_class = "mlqt_class_QMovie" [@@noalloc]
end
module QPictureFormatPlugin = struct
  include QObject
  external class' : unit -> qPictureFormatPlugin Qt.qt_class = "mlqt_class_QPictureFormatPlugin" [@@noalloc]
end
module QClipboard = struct
  include QObject
  external class' : unit -> qClipboard Qt.qt_class = "mlqt_class_QClipboard" [@@noalloc]
end
module QDrag = struct
  include QObject
  external class' : unit -> qDrag Qt.qt_class = "mlqt_class_QDrag" [@@noalloc]
end
module QGenericPlugin = struct
  include QObject
  external class' : unit -> qGenericPlugin Qt.qt_class = "mlqt_class_QGenericPlugin" [@@noalloc]
end
module QInputMethod = struct
  include QObject
  external class' : unit -> qInputMethod Qt.qt_class = "mlqt_class_QInputMethod" [@@noalloc]
end
module QOpenGLContextGroup = struct
  include QObject
  external class' : unit -> qOpenGLContextGroup Qt.qt_class = "mlqt_class_QOpenGLContextGroup" [@@noalloc]
end
module QOpenGLContext = struct
  include QObject
  external class' : unit -> qOpenGLContext Qt.qt_class = "mlqt_class_QOpenGLContext" [@@noalloc]
end
module QScreen = struct
  include QObject
  external class' : unit -> qScreen Qt.qt_class = "mlqt_class_QScreen" [@@noalloc]
end
module QSessionManager = struct
  include QObject
  external class' : unit -> qSessionManager Qt.qt_class = "mlqt_class_QSessionManager" [@@noalloc]
end
module QStyleHints = struct
  include QObject
  external class' : unit -> qStyleHints Qt.qt_class = "mlqt_class_QStyleHints" [@@noalloc]
end
module QOpenGLDebugLogger = struct
  include QObject
  external class' : unit -> qOpenGLDebugLogger Qt.qt_class = "mlqt_class_QOpenGLDebugLogger" [@@noalloc]
end
module QOpenGLShader = struct
  include QObject
  external class' : unit -> qOpenGLShader Qt.qt_class = "mlqt_class_QOpenGLShader" [@@noalloc]
end
module QOpenGLShaderProgram = struct
  include QObject
  external class' : unit -> qOpenGLShaderProgram Qt.qt_class = "mlqt_class_QOpenGLShaderProgram" [@@noalloc]
end
module QOpenGLTimerQuery = struct
  include QObject
  external class' : unit -> qOpenGLTimerQuery Qt.qt_class = "mlqt_class_QOpenGLTimerQuery" [@@noalloc]
end
module QOpenGLTimeMonitor = struct
  include QObject
  external class' : unit -> qOpenGLTimeMonitor Qt.qt_class = "mlqt_class_QOpenGLTimeMonitor" [@@noalloc]
end
module QOpenGLVertexArrayObject = struct
  include QObject
  external class' : unit -> qOpenGLVertexArrayObject Qt.qt_class = "mlqt_class_QOpenGLVertexArrayObject" [@@noalloc]
end
module QAbstractTextDocumentLayout = struct
  include QObject
  external class' : unit -> qAbstractTextDocumentLayout Qt.qt_class = "mlqt_class_QAbstractTextDocumentLayout" [@@noalloc]
end
module QSyntaxHighlighter = struct
  include QObject
  external class' : unit -> qSyntaxHighlighter Qt.qt_class = "mlqt_class_QSyntaxHighlighter" [@@noalloc]
end
module QTextDocument = struct
  include QObject
  external class' : unit -> qTextDocument Qt.qt_class = "mlqt_class_QTextDocument" [@@noalloc]
end
module QTextObject = struct
  include QObject
  external class' : unit -> qTextObject Qt.qt_class = "mlqt_class_QTextObject" [@@noalloc]
end
module QValidator = struct
  include QObject
  external class' : unit -> qValidator Qt.qt_class = "mlqt_class_QValidator" [@@noalloc]
end
module QIntValidator = struct
  include QValidator
  external class' : unit -> qIntValidator Qt.qt_class = "mlqt_class_QIntValidator" [@@noalloc]
end
module QDoubleValidator = struct
  include QValidator
  external class' : unit -> qDoubleValidator Qt.qt_class = "mlqt_class_QDoubleValidator" [@@noalloc]
end
module QRegExpValidator = struct
  include QValidator
  external class' : unit -> qRegExpValidator Qt.qt_class = "mlqt_class_QRegExpValidator" [@@noalloc]
end
module QRegularExpressionValidator = struct
  include QValidator
  external class' : unit -> qRegularExpressionValidator Qt.qt_class = "mlqt_class_QRegularExpressionValidator" [@@noalloc]
end
module QTextBlockGroup = struct
  include QTextObject
  external class' : unit -> qTextBlockGroup Qt.qt_class = "mlqt_class_QTextBlockGroup" [@@noalloc]
end
module QTextFrame = struct
  include QTextObject
  external class' : unit -> qTextFrame Qt.qt_class = "mlqt_class_QTextFrame" [@@noalloc]
end
module QDragMoveEvent = struct
  include QDropEvent
end
module QMouseEvent = struct
  include QInputEvent
end
module QHoverEvent = struct
  include QInputEvent
end
module QWheelEvent = struct
  include QInputEvent
end
module QTabletEvent = struct
  include QInputEvent
end
module QNativeGestureEvent = struct
  include QInputEvent
end
module QKeyEvent = struct
  include QInputEvent
end
module QContextMenuEvent = struct
  include QInputEvent
end
module QTouchEvent = struct
  include QInputEvent
end
module QAccessibleTextSelectionEvent = struct
  include QAccessibleTextCursorEvent
end
module QAccessibleTextInsertEvent = struct
  include QAccessibleTextCursorEvent
end
module QAccessibleTextRemoveEvent = struct
  include QAccessibleTextCursorEvent
end
module QAccessibleTextUpdateEvent = struct
  include QAccessibleTextCursorEvent
end
module QPdfWriter = struct
  include QObject
  external class' : unit -> qPdfWriter Qt.qt_class = "mlqt_class_QPdfWriter" [@@noalloc]
end
module QBitmap = struct
  include QPixmap
end
module QTextTableFormat = struct
  include QTextFrameFormat
end
module QTextImageFormat = struct
  include QTextCharFormat
end
module QTextTableCellFormat = struct
  include QTextCharFormat
end
module QWindow = struct
  include QObject
  external class' : unit -> qWindow Qt.qt_class = "mlqt_class_QWindow" [@@noalloc]
  external signal'activeChanged : unit -> ([> qWindow], unit) Qt.signal = "mlqt_signal_QWindow_activeChanged" [@@noalloc]
  external signal'contentOrientationChanged : unit -> ([> qWindow], qt'ScreenOrientation) Qt.signal = "mlqt_signal_QWindow_contentOrientationChanged" [@@noalloc]
  external signal'focusObjectChanged : unit -> ([> qWindow], qObject Qt.t) Qt.signal = "mlqt_signal_QWindow_focusObjectChanged" [@@noalloc]
  external signal'heightChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_heightChanged" [@@noalloc]
  external signal'maximumHeightChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_maximumHeightChanged" [@@noalloc]
  external signal'maximumWidthChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_maximumWidthChanged" [@@noalloc]
  external signal'minimumHeightChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_minimumHeightChanged" [@@noalloc]
  external signal'minimumWidthChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_minimumWidthChanged" [@@noalloc]
  external signal'modalityChanged : unit -> ([> qWindow], qt'WindowModality) Qt.signal = "mlqt_signal_QWindow_modalityChanged" [@@noalloc]
  external signal'opacityChanged : unit -> ([> qWindow], float) Qt.signal = "mlqt_signal_QWindow_opacityChanged" [@@noalloc]
  external signal'visibilityChanged : unit -> ([> qWindow], qWindow'Visibility) Qt.signal = "mlqt_signal_QWindow_visibilityChanged" [@@noalloc]
  external signal'visibleChanged : unit -> ([> qWindow], bool) Qt.signal = "mlqt_signal_QWindow_visibleChanged" [@@noalloc]
  external signal'widthChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_widthChanged" [@@noalloc]
  external signal'windowStateChanged : unit -> ([> qWindow], qt'WindowState) Qt.signal = "mlqt_signal_QWindow_windowStateChanged" [@@noalloc]
  external signal'windowTitleChanged : unit -> ([> qWindow], string) Qt.signal = "mlqt_signal_QWindow_windowTitleChanged" [@@noalloc]
  external signal'xChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_xChanged" [@@noalloc]
  external signal'yChanged : unit -> ([> qWindow], int) Qt.signal = "mlqt_signal_QWindow_yChanged" [@@noalloc]
  external slot'alert : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_alert" [@@noalloc]
  external slot'close : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_close" [@@noalloc]
  external slot'hide : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_hide" [@@noalloc]
  external slot'lower : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_lower" [@@noalloc]
  external slot'_q_clearAlert : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow__q_clearAlert" [@@noalloc]
  external slot'raise : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_raise" [@@noalloc]
  external slot'requestActivate : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_requestActivate" [@@noalloc]
  external slot'requestUpdate : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_requestUpdate" [@@noalloc]
  external slot'setHeight : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setHeight" [@@noalloc]
  external slot'setMaximumHeight : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setMaximumHeight" [@@noalloc]
  external slot'setMaximumWidth : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setMaximumWidth" [@@noalloc]
  external slot'setMinimumHeight : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setMinimumHeight" [@@noalloc]
  external slot'setMinimumWidth : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setMinimumWidth" [@@noalloc]
  external slot'setTitle : unit -> ([> qWindow], string) Qt.slot = "mlqt_slot_QWindow_setTitle" [@@noalloc]
  external slot'setVisible : unit -> ([> qWindow], bool) Qt.slot = "mlqt_slot_QWindow_setVisible" [@@noalloc]
  external slot'setWidth : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setWidth" [@@noalloc]
  external slot'setX : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setX" [@@noalloc]
  external slot'setY : unit -> ([> qWindow], int) Qt.slot = "mlqt_slot_QWindow_setY" [@@noalloc]
  external slot'show : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_show" [@@noalloc]
  external slot'showFullScreen : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_showFullScreen" [@@noalloc]
  external slot'showMaximized : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_showMaximized" [@@noalloc]
  external slot'showMinimized : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_showMinimized" [@@noalloc]
  external slot'showNormal : unit -> ([> qWindow], unit) Qt.slot = "mlqt_slot_QWindow_showNormal" [@@noalloc]
end
module QPaintDeviceWindow = struct
  include QWindow
  external class' : unit -> qPaintDeviceWindow Qt.qt_class = "mlqt_class_QPaintDeviceWindow" [@@noalloc]
end
module QOpenGLWindow = struct
  include QPaintDeviceWindow
  external class' : unit -> qOpenGLWindow Qt.qt_class = "mlqt_class_QOpenGLWindow" [@@noalloc]
end
module QRasterWindow = struct
  include QPaintDeviceWindow
  external class' : unit -> qRasterWindow Qt.qt_class = "mlqt_class_QRasterWindow" [@@noalloc]
end
module QDragEnterEvent = struct
  include QDragMoveEvent
end
module QTextTable = struct
  include QTextFrame
  external class' : unit -> qTextTable Qt.qt_class = "mlqt_class_QTextTable" [@@noalloc]
end
module QTextList = struct
  include QTextBlockGroup
  external class' : unit -> qTextList Qt.qt_class = "mlqt_class_QTextList" [@@noalloc]
end
module QGuiApplication = struct
  include QCoreApplication
  external class' : unit -> qGuiApplication Qt.qt_class = "mlqt_class_QGuiApplication" [@@noalloc]
end
external new'QWidget : [> qWidget] Qt.t option -> qWidget Qt.t = "mlqt_QWidget_new_"
module QWidget = struct
  include QObject
  external class' : unit -> qWidget Qt.qt_class = "mlqt_class_QWidget" [@@noalloc]
  external isTopLevel : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isTopLevel"
  external isWindow : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isWindow"
  external isModal : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isModal"
  external isEnabled : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isEnabled"
  external isEnabledTo : [> qWidget] Qt.t -> [> qWidget] Qt.t -> bool = "mlqt_QWidget_isEnabledTo"
  external isEnabledToTLW : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isEnabledToTLW"
  external setEnabled : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setEnabled"
  external setDisabled : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setDisabled"
  external setWindowModified : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setWindowModified"
  external frameGeometry : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_frameGeometry"
  external geometry : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_geometry"
  external normalGeometry : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_normalGeometry"
  external x : [> qWidget] Qt.t -> int = "mlqt_QWidget_x"
  external y : [> qWidget] Qt.t -> int = "mlqt_QWidget_y"
  external pos : [> qWidget] Qt.t -> qPoint = "mlqt_QWidget_pos"
  external frameSize : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_frameSize"
  external size : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_size"
  external width : [> qWidget] Qt.t -> int = "mlqt_QWidget_width"
  external height : [> qWidget] Qt.t -> int = "mlqt_QWidget_height"
  external rect : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_rect"
  external childrenRect : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_childrenRect"
  external childrenRegion : [> qWidget] Qt.t -> qRegion Qt.t = "mlqt_QWidget_childrenRegion"
  external minimumSize : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_minimumSize"
  external maximumSize : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_maximumSize"
  external minimumWidth : [> qWidget] Qt.t -> int = "mlqt_QWidget_minimumWidth"
  external minimumHeight : [> qWidget] Qt.t -> int = "mlqt_QWidget_minimumHeight"
  external maximumWidth : [> qWidget] Qt.t -> int = "mlqt_QWidget_maximumWidth"
  external maximumHeight : [> qWidget] Qt.t -> int = "mlqt_QWidget_maximumHeight"
  external setMinimumSize : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_setMinimumSize"
  external setMinimumSize1 : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_setMinimumSize1"
  external setMaximumSize : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_setMaximumSize"
  external setMaximumSize1 : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_setMaximumSize1"
  external setMinimumWidth : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setMinimumWidth"
  external setMinimumHeight : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setMinimumHeight"
  external setMaximumWidth : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setMaximumWidth"
  external setMaximumHeight : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setMaximumHeight"
  external sizeIncrement : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_sizeIncrement"
  external setSizeIncrement : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_setSizeIncrement"
  external setSizeIncrement1 : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_setSizeIncrement1"
  external baseSize : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_baseSize"
  external setBaseSize : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_setBaseSize"
  external setBaseSize1 : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_setBaseSize1"
  external setFixedSize : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_setFixedSize"
  external setFixedSize1 : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_setFixedSize1"
  external setFixedWidth : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setFixedWidth"
  external setFixedHeight : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setFixedHeight"
  external mapToGlobal : [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapToGlobal"
  external mapFromGlobal : [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapFromGlobal"
  external mapToParent : [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapToParent"
  external mapFromParent : [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapFromParent"
  external mapTo : [> qWidget] Qt.t -> [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapTo"
  external mapFrom : [> qWidget] Qt.t -> [> qWidget] Qt.t -> qPoint -> qPoint = "mlqt_QWidget_mapFrom"
  external window : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_window"
  external nativeParentWidget : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_nativeParentWidget"
  external topLevelWidget : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_topLevelWidget"
  external font : [> qWidget] Qt.t -> qFont Qt.t = "mlqt_QWidget_font"
  external setFont : [> qWidget] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QWidget_setFont"
  external fontMetrics : [> qWidget] Qt.t -> qFontMetrics Qt.t = "mlqt_QWidget_fontMetrics"
  external unsetCursor : [> qWidget] Qt.t -> unit = "mlqt_QWidget_unsetCursor"
  external setMouseTracking : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setMouseTracking"
  external hasMouseTracking : [> qWidget] Qt.t -> bool = "mlqt_QWidget_hasMouseTracking"
  external underMouse : [> qWidget] Qt.t -> bool = "mlqt_QWidget_underMouse"
  external setTabletTracking : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setTabletTracking"
  external hasTabletTracking : [> qWidget] Qt.t -> bool = "mlqt_QWidget_hasTabletTracking"
  external setMask : [> qWidget] Qt.t -> [> qBitmap] Qt.t -> unit = "mlqt_QWidget_setMask"
  external setMask1 : [> qWidget] Qt.t -> [> qRegion] Qt.t -> unit = "mlqt_QWidget_setMask1"
  external mask : [> qWidget] Qt.t -> qRegion Qt.t = "mlqt_QWidget_mask"
  external clearMask : [> qWidget] Qt.t -> unit = "mlqt_QWidget_clearMask"
  external setWindowTitle : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setWindowTitle"
  external setStyleSheet : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setStyleSheet"
  external styleSheet : [> qWidget] Qt.t -> string = "mlqt_QWidget_styleSheet"
  external windowTitle : [> qWidget] Qt.t -> string = "mlqt_QWidget_windowTitle"
  external setWindowIconText : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setWindowIconText"
  external windowIconText : [> qWidget] Qt.t -> string = "mlqt_QWidget_windowIconText"
  external setWindowRole : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setWindowRole"
  external windowRole : [> qWidget] Qt.t -> string = "mlqt_QWidget_windowRole"
  external setWindowFilePath : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setWindowFilePath"
  external windowFilePath : [> qWidget] Qt.t -> string = "mlqt_QWidget_windowFilePath"
  external setWindowOpacity : [> qWidget] Qt.t -> float -> unit = "mlqt_QWidget_setWindowOpacity"
  external windowOpacity : [> qWidget] Qt.t -> float = "mlqt_QWidget_windowOpacity"
  external isWindowModified : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isWindowModified"
  external setToolTip : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setToolTip"
  external toolTip : [> qWidget] Qt.t -> string = "mlqt_QWidget_toolTip"
  external setToolTipDuration : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_setToolTipDuration"
  external toolTipDuration : [> qWidget] Qt.t -> int = "mlqt_QWidget_toolTipDuration"
  external setStatusTip : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setStatusTip"
  external statusTip : [> qWidget] Qt.t -> string = "mlqt_QWidget_statusTip"
  external setWhatsThis : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setWhatsThis"
  external whatsThis : [> qWidget] Qt.t -> string = "mlqt_QWidget_whatsThis"
  external accessibleName : [> qWidget] Qt.t -> string = "mlqt_QWidget_accessibleName"
  external setAccessibleName : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setAccessibleName"
  external accessibleDescription : [> qWidget] Qt.t -> string = "mlqt_QWidget_accessibleDescription"
  external setAccessibleDescription : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_setAccessibleDescription"
  external unsetLayoutDirection : [> qWidget] Qt.t -> unit = "mlqt_QWidget_unsetLayoutDirection"
  external unsetLocale : [> qWidget] Qt.t -> unit = "mlqt_QWidget_unsetLocale"
  external setFocus : [> qWidget] Qt.t -> unit = "mlqt_QWidget_setFocus"
  external isActiveWindow : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isActiveWindow"
  external activateWindow : [> qWidget] Qt.t -> unit = "mlqt_QWidget_activateWindow"
  external clearFocus : [> qWidget] Qt.t -> unit = "mlqt_QWidget_clearFocus"
  external hasFocus : [> qWidget] Qt.t -> bool = "mlqt_QWidget_hasFocus"
  external setTabOrder : [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWidget_setTabOrder"
  external setFocusProxy : [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWidget_setFocusProxy"
  external focusProxy : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_focusProxy"
  external grabMouse : [> qWidget] Qt.t -> unit = "mlqt_QWidget_grabMouse"
  external releaseMouse : [> qWidget] Qt.t -> unit = "mlqt_QWidget_releaseMouse"
  external grabKeyboard : [> qWidget] Qt.t -> unit = "mlqt_QWidget_grabKeyboard"
  external releaseKeyboard : [> qWidget] Qt.t -> unit = "mlqt_QWidget_releaseKeyboard"
  external releaseShortcut : [> qWidget] Qt.t -> int -> unit = "mlqt_QWidget_releaseShortcut"
  external setShortcutEnabled : [> qWidget] Qt.t -> int -> bool -> unit = "mlqt_QWidget_setShortcutEnabled"
  external setShortcutAutoRepeat : [> qWidget] Qt.t -> int -> bool -> unit = "mlqt_QWidget_setShortcutAutoRepeat"
  external mouseGrabber : unit -> qWidget Qt.t = "mlqt_QWidget_mouseGrabber"
  external keyboardGrabber : unit -> qWidget Qt.t = "mlqt_QWidget_keyboardGrabber"
  external updatesEnabled : [> qWidget] Qt.t -> bool = "mlqt_QWidget_updatesEnabled"
  external setUpdatesEnabled : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setUpdatesEnabled"
  external update : [> qWidget] Qt.t -> unit = "mlqt_QWidget_update"
  external repaint : [> qWidget] Qt.t -> unit = "mlqt_QWidget_repaint"
  external update1 : [> qWidget] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QWidget_update1"
  external update2 : [> qWidget] Qt.t -> qRect -> unit = "mlqt_QWidget_update2"
  external update3 : [> qWidget] Qt.t -> [> qRegion] Qt.t -> unit = "mlqt_QWidget_update3"
  external repaint1 : [> qWidget] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QWidget_repaint1"
  external repaint2 : [> qWidget] Qt.t -> qRect -> unit = "mlqt_QWidget_repaint2"
  external repaint3 : [> qWidget] Qt.t -> [> qRegion] Qt.t -> unit = "mlqt_QWidget_repaint3"
  external setVisible : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setVisible"
  external setHidden : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setHidden"
  external show : [> qWidget] Qt.t -> unit = "mlqt_QWidget_show"
  external hide : [> qWidget] Qt.t -> unit = "mlqt_QWidget_hide"
  external showMinimized : [> qWidget] Qt.t -> unit = "mlqt_QWidget_showMinimized"
  external showMaximized : [> qWidget] Qt.t -> unit = "mlqt_QWidget_showMaximized"
  external showFullScreen : [> qWidget] Qt.t -> unit = "mlqt_QWidget_showFullScreen"
  external showNormal : [> qWidget] Qt.t -> unit = "mlqt_QWidget_showNormal"
  external close : [> qWidget] Qt.t -> bool = "mlqt_QWidget_close"
  external raise : [> qWidget] Qt.t -> unit = "mlqt_QWidget_raise"
  external lower : [> qWidget] Qt.t -> unit = "mlqt_QWidget_lower"
  external stackUnder : [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWidget_stackUnder"
  external move : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_move"
  external move1 : [> qWidget] Qt.t -> qPoint -> unit = "mlqt_QWidget_move1"
  external resize : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_resize"
  external resize1 : [> qWidget] Qt.t -> qSize -> unit = "mlqt_QWidget_resize1"
  external setGeometry : [> qWidget] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QWidget_setGeometry"
  external setGeometry1 : [> qWidget] Qt.t -> qRect -> unit = "mlqt_QWidget_setGeometry1"
  external adjustSize : [> qWidget] Qt.t -> unit = "mlqt_QWidget_adjustSize"
  external isVisible : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isVisible"
  external isVisibleTo : [> qWidget] Qt.t -> [> qWidget] Qt.t -> bool = "mlqt_QWidget_isVisibleTo"
  external isHidden : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isHidden"
  external isMinimized : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isMinimized"
  external isMaximized : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isMaximized"
  external isFullScreen : [> qWidget] Qt.t -> bool = "mlqt_QWidget_isFullScreen"
  external sizeHint : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_sizeHint"
  external minimumSizeHint : [> qWidget] Qt.t -> qSize = "mlqt_QWidget_minimumSizeHint"
  external heightForWidth : [> qWidget] Qt.t -> int -> int = "mlqt_QWidget_heightForWidth"
  external hasHeightForWidth : [> qWidget] Qt.t -> bool = "mlqt_QWidget_hasHeightForWidth"
  external visibleRegion : [> qWidget] Qt.t -> qRegion Qt.t = "mlqt_QWidget_visibleRegion"
  external setContentsMargins : [> qWidget] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QWidget_setContentsMargins"
  external contentsRect : [> qWidget] Qt.t -> qRect = "mlqt_QWidget_contentsRect"
  external layout : [> qWidget] Qt.t -> qLayout Qt.t option = "mlqt_QWidget_layout"
  external setLayout : [> qWidget] Qt.t -> [> qLayout] Qt.t option -> unit = "mlqt_QWidget_setLayout"
  external updateGeometry : [> qWidget] Qt.t -> unit = "mlqt_QWidget_updateGeometry"
  external setParent : [> qWidget] Qt.t -> [> qWidget] Qt.t option -> unit = "mlqt_QWidget_setParent"
  external scroll : [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QWidget_scroll"
  external scroll1 : [> qWidget] Qt.t -> int -> int -> qRect -> unit = "mlqt_QWidget_scroll1"
  external focusWidget : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_focusWidget"
  external nextInFocusChain : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_nextInFocusChain"
  external previousInFocusChain : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_previousInFocusChain"
  external acceptDrops : [> qWidget] Qt.t -> bool = "mlqt_QWidget_acceptDrops"
  external setAcceptDrops : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setAcceptDrops"
  external parentWidget : [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidget_parentWidget"
  external childAt : [> qWidget] Qt.t -> int -> int -> qWidget Qt.t = "mlqt_QWidget_childAt"
  external childAt1 : [> qWidget] Qt.t -> qPoint -> qWidget Qt.t = "mlqt_QWidget_childAt1"
  external ensurePolished : [> qWidget] Qt.t -> unit = "mlqt_QWidget_ensurePolished"
  external isAncestorOf : [> qWidget] Qt.t -> [> qWidget] Qt.t -> bool = "mlqt_QWidget_isAncestorOf"
  external autoFillBackground : [> qWidget] Qt.t -> bool = "mlqt_QWidget_autoFillBackground"
  external setAutoFillBackground : [> qWidget] Qt.t -> bool -> unit = "mlqt_QWidget_setAutoFillBackground"
  external windowTitleChanged : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_windowTitleChanged"
  external windowIconTextChanged : [> qWidget] Qt.t -> string -> unit = "mlqt_QWidget_windowIconTextChanged"
  external customContextMenuRequested : [> qWidget] Qt.t -> qPoint -> unit = "mlqt_QWidget_customContextMenuRequested"
  external signal'customContextMenuRequested1 : unit -> ([> qWidget], qPoint) Qt.signal = "mlqt_signal_QWidget_customContextMenuRequested1" [@@noalloc]
  external signal'windowIconChanged : unit -> ([> qWidget], qIcon Qt.t) Qt.signal = "mlqt_signal_QWidget_windowIconChanged" [@@noalloc]
  external signal'windowIconTextChanged1 : unit -> ([> qWidget], string) Qt.signal = "mlqt_signal_QWidget_windowIconTextChanged1" [@@noalloc]
  external signal'windowTitleChanged1 : unit -> ([> qWidget], string) Qt.signal = "mlqt_signal_QWidget_windowTitleChanged1" [@@noalloc]
  external slot'close1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_close1" [@@noalloc]
  external slot'hide1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_hide1" [@@noalloc]
  external slot'lower1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_lower1" [@@noalloc]
  external slot'_q_showIfNotHidden : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget__q_showIfNotHidden" [@@noalloc]
  external slot'raise1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_raise1" [@@noalloc]
  external slot'repaint4 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_repaint4" [@@noalloc]
  external slot'setDisabled1 : unit -> ([> qWidget], bool) Qt.slot = "mlqt_slot_QWidget_setDisabled1" [@@noalloc]
  external slot'setEnabled1 : unit -> ([> qWidget], bool) Qt.slot = "mlqt_slot_QWidget_setEnabled1" [@@noalloc]
  external slot'setFocus1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_setFocus1" [@@noalloc]
  external slot'setHidden1 : unit -> ([> qWidget], bool) Qt.slot = "mlqt_slot_QWidget_setHidden1" [@@noalloc]
  external slot'setStyleSheet1 : unit -> ([> qWidget], string) Qt.slot = "mlqt_slot_QWidget_setStyleSheet1" [@@noalloc]
  external slot'setVisible1 : unit -> ([> qWidget], bool) Qt.slot = "mlqt_slot_QWidget_setVisible1" [@@noalloc]
  external slot'setWindowModified1 : unit -> ([> qWidget], bool) Qt.slot = "mlqt_slot_QWidget_setWindowModified1" [@@noalloc]
  external slot'setWindowTitle1 : unit -> ([> qWidget], string) Qt.slot = "mlqt_slot_QWidget_setWindowTitle1" [@@noalloc]
  external slot'show1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_show1" [@@noalloc]
  external slot'showFullScreen1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_showFullScreen1" [@@noalloc]
  external slot'showMaximized1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_showMaximized1" [@@noalloc]
  external slot'showMinimized1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_showMinimized1" [@@noalloc]
  external slot'showNormal1 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_showNormal1" [@@noalloc]
  external slot'update4 : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_update4" [@@noalloc]
  external slot'updateMicroFocus : unit -> ([> qWidget], unit) Qt.slot = "mlqt_slot_QWidget_updateMicroFocus" [@@noalloc]
end
module QAbstractButton = struct
  include QWidget
  external class' : unit -> qAbstractButton Qt.qt_class = "mlqt_class_QAbstractButton" [@@noalloc]
  external setText : [> qAbstractButton] Qt.t -> string -> unit = "mlqt_QAbstractButton_setText"
  external text : [> qAbstractButton] Qt.t -> string = "mlqt_QAbstractButton_text"
  external iconSize : [> qAbstractButton] Qt.t -> qSize = "mlqt_QAbstractButton_iconSize"
  external setCheckable : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_setCheckable"
  external isCheckable : [> qAbstractButton] Qt.t -> bool = "mlqt_QAbstractButton_isCheckable"
  external isChecked : [> qAbstractButton] Qt.t -> bool = "mlqt_QAbstractButton_isChecked"
  external setDown : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_setDown"
  external isDown : [> qAbstractButton] Qt.t -> bool = "mlqt_QAbstractButton_isDown"
  external setAutoRepeat : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_setAutoRepeat"
  external autoRepeat : [> qAbstractButton] Qt.t -> bool = "mlqt_QAbstractButton_autoRepeat"
  external setAutoRepeatDelay : [> qAbstractButton] Qt.t -> int -> unit = "mlqt_QAbstractButton_setAutoRepeatDelay"
  external autoRepeatDelay : [> qAbstractButton] Qt.t -> int = "mlqt_QAbstractButton_autoRepeatDelay"
  external setAutoRepeatInterval : [> qAbstractButton] Qt.t -> int -> unit = "mlqt_QAbstractButton_setAutoRepeatInterval"
  external autoRepeatInterval : [> qAbstractButton] Qt.t -> int = "mlqt_QAbstractButton_autoRepeatInterval"
  external setAutoExclusive : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_setAutoExclusive"
  external autoExclusive : [> qAbstractButton] Qt.t -> bool = "mlqt_QAbstractButton_autoExclusive"
  external setIconSize : [> qAbstractButton] Qt.t -> qSize -> unit = "mlqt_QAbstractButton_setIconSize"
  external animateClick : [> qAbstractButton] Qt.t -> int -> unit = "mlqt_QAbstractButton_animateClick"
  external click : [> qAbstractButton] Qt.t -> unit = "mlqt_QAbstractButton_click"
  external toggle : [> qAbstractButton] Qt.t -> unit = "mlqt_QAbstractButton_toggle"
  external setChecked : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_setChecked"
  external pressed : [> qAbstractButton] Qt.t -> unit = "mlqt_QAbstractButton_pressed"
  external released : [> qAbstractButton] Qt.t -> unit = "mlqt_QAbstractButton_released"
  external clicked : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_clicked"
  external toggled : [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QAbstractButton_toggled"
  external signal'clicked1 : unit -> ([> qAbstractButton], bool) Qt.signal = "mlqt_signal_QAbstractButton_clicked1" [@@noalloc]
  external signal'pressed1 : unit -> ([> qAbstractButton], unit) Qt.signal = "mlqt_signal_QAbstractButton_pressed1" [@@noalloc]
  external signal'released1 : unit -> ([> qAbstractButton], unit) Qt.signal = "mlqt_signal_QAbstractButton_released1" [@@noalloc]
  external signal'toggled1 : unit -> ([> qAbstractButton], bool) Qt.signal = "mlqt_signal_QAbstractButton_toggled1" [@@noalloc]
  external slot'animateClick1 : unit -> ([> qAbstractButton], unit) Qt.slot = "mlqt_slot_QAbstractButton_animateClick1" [@@noalloc]
  external slot'animateClick2 : unit -> ([> qAbstractButton], int) Qt.slot = "mlqt_slot_QAbstractButton_animateClick2" [@@noalloc]
  external slot'click1 : unit -> ([> qAbstractButton], unit) Qt.slot = "mlqt_slot_QAbstractButton_click1" [@@noalloc]
  external slot'setChecked1 : unit -> ([> qAbstractButton], bool) Qt.slot = "mlqt_slot_QAbstractButton_setChecked1" [@@noalloc]
  external slot'setIconSize1 : unit -> ([> qAbstractButton], qSize) Qt.slot = "mlqt_slot_QAbstractButton_setIconSize1" [@@noalloc]
  external slot'toggle1 : unit -> ([> qAbstractButton], unit) Qt.slot = "mlqt_slot_QAbstractButton_toggle1" [@@noalloc]
end
external new'QPushButton : [> qWidget] Qt.t option -> qPushButton Qt.t = "mlqt_QPushButton_new_"
external new'QPushButton'1 : string -> [> qWidget] Qt.t option -> qPushButton Qt.t = "mlqt_QPushButton_new_1"
module QPushButton = struct
  include QAbstractButton
  external class' : unit -> qPushButton Qt.qt_class = "mlqt_class_QPushButton" [@@noalloc]
  external sizeHint : [> qPushButton] Qt.t -> qSize = "mlqt_QPushButton_sizeHint"
  external minimumSizeHint : [> qPushButton] Qt.t -> qSize = "mlqt_QPushButton_minimumSizeHint"
  external autoDefault : [> qPushButton] Qt.t -> bool = "mlqt_QPushButton_autoDefault"
  external setAutoDefault : [> qPushButton] Qt.t -> bool -> unit = "mlqt_QPushButton_setAutoDefault"
  external isDefault : [> qPushButton] Qt.t -> bool = "mlqt_QPushButton_isDefault"
  external setDefault : [> qPushButton] Qt.t -> bool -> unit = "mlqt_QPushButton_setDefault"
  external setMenu : [> qPushButton] Qt.t -> [> qMenu] Qt.t -> unit = "mlqt_QPushButton_setMenu"
  external menu : [> qPushButton] Qt.t -> qMenu Qt.t = "mlqt_QPushButton_menu"
  external setFlat : [> qPushButton] Qt.t -> bool -> unit = "mlqt_QPushButton_setFlat"
  external isFlat : [> qPushButton] Qt.t -> bool = "mlqt_QPushButton_isFlat"
  external showMenu : [> qPushButton] Qt.t -> unit = "mlqt_QPushButton_showMenu"
  external slot'_q_popupPressed : unit -> ([> qPushButton], unit) Qt.slot = "mlqt_slot_QPushButton__q_popupPressed" [@@noalloc]
  external slot'showMenu1 : unit -> ([> qPushButton], unit) Qt.slot = "mlqt_slot_QPushButton_showMenu1" [@@noalloc]
end
external new'QTreeWidgetItem : int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_"
external new'QTreeWidgetItem'1 : [> qStringList] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_1"
external new'QTreeWidgetItem'2 : [> qTreeWidget] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_2"
external new'QTreeWidgetItem'3 : [> qTreeWidget] Qt.t -> [> qStringList] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_3"
external new'QTreeWidgetItem'4 : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_4"
external new'QTreeWidgetItem'5 : [> qTreeWidgetItem] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_5"
external new'QTreeWidgetItem'6 : [> qTreeWidgetItem] Qt.t -> [> qStringList] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_6"
external new'QTreeWidgetItem'7 : [> qTreeWidgetItem] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_7"
external new'QTreeWidgetItem'8 : [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_new_8"
module QTreeWidgetItem = struct
  external clone : [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_clone"
  external treeWidget : [> qTreeWidgetItem] Qt.t -> qTreeWidget Qt.t = "mlqt_QTreeWidgetItem_treeWidget"
  external setSelected : [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidgetItem_setSelected"
  external isSelected : [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidgetItem_isSelected"
  external setHidden : [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidgetItem_setHidden"
  external isHidden : [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidgetItem_isHidden"
  external setExpanded : [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidgetItem_setExpanded"
  external isExpanded : [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidgetItem_isExpanded"
  external setFirstColumnSpanned : [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidgetItem_setFirstColumnSpanned"
  external isFirstColumnSpanned : [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidgetItem_isFirstColumnSpanned"
  external setDisabled : [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidgetItem_setDisabled"
  external isDisabled : [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidgetItem_isDisabled"
  external setChildIndicatorPolicy : [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem'ChildIndicatorPolicy -> unit = "mlqt_QTreeWidgetItem_setChildIndicatorPolicy"
  external childIndicatorPolicy : [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem'ChildIndicatorPolicy = "mlqt_QTreeWidgetItem_childIndicatorPolicy"
  external flags : [> qTreeWidgetItem] Qt.t -> qt'ItemFlags = "mlqt_QTreeWidgetItem_flags"
  external setFlags : [> qTreeWidgetItem] Qt.t -> qt'ItemFlags -> unit = "mlqt_QTreeWidgetItem_setFlags"
  external text : [> qTreeWidgetItem] Qt.t -> int -> string = "mlqt_QTreeWidgetItem_text"
  external setText : [> qTreeWidgetItem] Qt.t -> int -> string -> unit = "mlqt_QTreeWidgetItem_setText"
  external icon : [> qTreeWidgetItem] Qt.t -> int -> qIcon Qt.t = "mlqt_QTreeWidgetItem_icon"
  external setIcon : [> qTreeWidgetItem] Qt.t -> int -> [> qIcon] Qt.t -> unit = "mlqt_QTreeWidgetItem_setIcon"
  external statusTip : [> qTreeWidgetItem] Qt.t -> int -> string = "mlqt_QTreeWidgetItem_statusTip"
  external setStatusTip : [> qTreeWidgetItem] Qt.t -> int -> string -> unit = "mlqt_QTreeWidgetItem_setStatusTip"
  external toolTip : [> qTreeWidgetItem] Qt.t -> int -> string = "mlqt_QTreeWidgetItem_toolTip"
  external setToolTip : [> qTreeWidgetItem] Qt.t -> int -> string -> unit = "mlqt_QTreeWidgetItem_setToolTip"
  external whatsThis : [> qTreeWidgetItem] Qt.t -> int -> string = "mlqt_QTreeWidgetItem_whatsThis"
  external setWhatsThis : [> qTreeWidgetItem] Qt.t -> int -> string -> unit = "mlqt_QTreeWidgetItem_setWhatsThis"
  external font : [> qTreeWidgetItem] Qt.t -> int -> qFont Qt.t = "mlqt_QTreeWidgetItem_font"
  external setFont : [> qTreeWidgetItem] Qt.t -> int -> [> qFont] Qt.t -> unit = "mlqt_QTreeWidgetItem_setFont"
  external textAlignment : [> qTreeWidgetItem] Qt.t -> int -> int = "mlqt_QTreeWidgetItem_textAlignment"
  external setTextAlignment : [> qTreeWidgetItem] Qt.t -> int -> int -> unit = "mlqt_QTreeWidgetItem_setTextAlignment"
  external backgroundColor : [> qTreeWidgetItem] Qt.t -> int -> qColor Qt.t = "mlqt_QTreeWidgetItem_backgroundColor"
  external setBackgroundColor : [> qTreeWidgetItem] Qt.t -> int -> [> qColor] Qt.t -> unit = "mlqt_QTreeWidgetItem_setBackgroundColor"
  external background : [> qTreeWidgetItem] Qt.t -> int -> qBrush Qt.t = "mlqt_QTreeWidgetItem_background"
  external setBackground : [> qTreeWidgetItem] Qt.t -> int -> [> qBrush] Qt.t -> unit = "mlqt_QTreeWidgetItem_setBackground"
  external textColor : [> qTreeWidgetItem] Qt.t -> int -> qColor Qt.t = "mlqt_QTreeWidgetItem_textColor"
  external setTextColor : [> qTreeWidgetItem] Qt.t -> int -> [> qColor] Qt.t -> unit = "mlqt_QTreeWidgetItem_setTextColor"
  external foreground : [> qTreeWidgetItem] Qt.t -> int -> qBrush Qt.t = "mlqt_QTreeWidgetItem_foreground"
  external setForeground : [> qTreeWidgetItem] Qt.t -> int -> [> qBrush] Qt.t -> unit = "mlqt_QTreeWidgetItem_setForeground"
  external checkState : [> qTreeWidgetItem] Qt.t -> int -> qt'CheckState = "mlqt_QTreeWidgetItem_checkState"
  external setCheckState : [> qTreeWidgetItem] Qt.t -> int -> qt'CheckState -> unit = "mlqt_QTreeWidgetItem_setCheckState"
  external sizeHint : [> qTreeWidgetItem] Qt.t -> int -> qSize = "mlqt_QTreeWidgetItem_sizeHint"
  external setSizeHint : [> qTreeWidgetItem] Qt.t -> int -> qSize -> unit = "mlqt_QTreeWidgetItem_setSizeHint"
  external data : [> qTreeWidgetItem] Qt.t -> int -> int -> QVariant.t = "mlqt_QTreeWidgetItem_data"
  external setData : [> qTreeWidgetItem] Qt.t -> int -> int -> QVariant.t -> unit = "mlqt_QTreeWidgetItem_setData"
  external read : [> qTreeWidgetItem] Qt.t -> [> qDataStream] Qt.t -> unit = "mlqt_QTreeWidgetItem_read"
  external write : [> qTreeWidgetItem] Qt.t -> [> qDataStream] Qt.t -> unit = "mlqt_QTreeWidgetItem_write"
  external parent : [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_parent"
  external child : [> qTreeWidgetItem] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_child"
  external childCount : [> qTreeWidgetItem] Qt.t -> int = "mlqt_QTreeWidgetItem_childCount"
  external columnCount : [> qTreeWidgetItem] Qt.t -> int = "mlqt_QTreeWidgetItem_columnCount"
  external indexOfChild : [> qTreeWidgetItem] Qt.t -> [> qTreeWidgetItem] Qt.t -> int = "mlqt_QTreeWidgetItem_indexOfChild"
  external addChild : [> qTreeWidgetItem] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidgetItem_addChild"
  external insertChild : [> qTreeWidgetItem] Qt.t -> int -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidgetItem_insertChild"
  external removeChild : [> qTreeWidgetItem] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidgetItem_removeChild"
  external takeChild : [> qTreeWidgetItem] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidgetItem_takeChild"
  external type_ : [> qTreeWidgetItem] Qt.t -> int = "mlqt_QTreeWidgetItem_type_"
  external sortChildren : [> qTreeWidgetItem] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QTreeWidgetItem_sortChildren"
end
external new'QFileIconProvider : unit -> qFileIconProvider Qt.t = "mlqt_QFileIconProvider_new_"
module QFileIconProvider = struct
  external icon : [> qFileIconProvider] Qt.t -> qFileIconProvider'IconType -> qIcon Qt.t = "mlqt_QFileIconProvider_icon"
  external icon1 : [> qFileIconProvider] Qt.t -> [> qFileInfo] Qt.t -> qIcon Qt.t = "mlqt_QFileIconProvider_icon1"
  external type_ : [> qFileIconProvider] Qt.t -> [> qFileInfo] Qt.t -> string = "mlqt_QFileIconProvider_type_"
  external setOptions : [> qFileIconProvider] Qt.t -> qFileIconProvider'Options -> unit = "mlqt_QFileIconProvider_setOptions"
  external options : [> qFileIconProvider] Qt.t -> qFileIconProvider'Options = "mlqt_QFileIconProvider_options"
end
module QTileRules = struct
end
module QItemEditorCreatorBase = struct
end
module QGestureRecognizer = struct
end
module QTreeWidgetItemIterator = struct
end
module QStyleFactory = struct
end
module QGraphicsLayoutItem = struct
end
module QItemEditorFactory = struct
end
module QWhatsThis = struct
end
external new'QTableWidgetSelectionRange : unit -> qTableWidgetSelectionRange Qt.t = "mlqt_QTableWidgetSelectionRange_new_"
external new'QTableWidgetSelectionRange'1 : int -> int -> int -> int -> qTableWidgetSelectionRange Qt.t = "mlqt_QTableWidgetSelectionRange_new_1"
external new'QTableWidgetSelectionRange'2 : [> qTableWidgetSelectionRange] Qt.t -> qTableWidgetSelectionRange Qt.t = "mlqt_QTableWidgetSelectionRange_new_2"
module QTableWidgetSelectionRange = struct
  external topRow : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_topRow"
  external bottomRow : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_bottomRow"
  external leftColumn : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_leftColumn"
  external rightColumn : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_rightColumn"
  external rowCount : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_rowCount"
  external columnCount : [> qTableWidgetSelectionRange] Qt.t -> int = "mlqt_QTableWidgetSelectionRange_columnCount"
end
module QScrollerProperties = struct
end
module QTableWidgetItem = struct
end
module QGraphicsItem = struct
end
module QToolTip = struct
end
external new'QListWidgetItem : [> qListWidget] Qt.t -> int -> qListWidgetItem Qt.t = "mlqt_QListWidgetItem_new_"
external new'QListWidgetItem'1 : string -> [> qListWidget] Qt.t -> int -> qListWidgetItem Qt.t = "mlqt_QListWidgetItem_new_1"
external new'QListWidgetItem'2 : [> qIcon] Qt.t -> string -> [> qListWidget] Qt.t -> int -> qListWidgetItem Qt.t = "mlqt_QListWidgetItem_new_2"
external new'QListWidgetItem'3 : [> qListWidgetItem] Qt.t -> qListWidgetItem Qt.t = "mlqt_QListWidgetItem_new_3"
module QListWidgetItem = struct
  external clone : [> qListWidgetItem] Qt.t -> qListWidgetItem Qt.t = "mlqt_QListWidgetItem_clone"
  external listWidget : [> qListWidgetItem] Qt.t -> qListWidget Qt.t = "mlqt_QListWidgetItem_listWidget"
  external setSelected : [> qListWidgetItem] Qt.t -> bool -> unit = "mlqt_QListWidgetItem_setSelected"
  external isSelected : [> qListWidgetItem] Qt.t -> bool = "mlqt_QListWidgetItem_isSelected"
  external setHidden : [> qListWidgetItem] Qt.t -> bool -> unit = "mlqt_QListWidgetItem_setHidden"
  external isHidden : [> qListWidgetItem] Qt.t -> bool = "mlqt_QListWidgetItem_isHidden"
  external flags : [> qListWidgetItem] Qt.t -> qt'ItemFlags = "mlqt_QListWidgetItem_flags"
  external setFlags : [> qListWidgetItem] Qt.t -> qt'ItemFlags -> unit = "mlqt_QListWidgetItem_setFlags"
  external text : [> qListWidgetItem] Qt.t -> string = "mlqt_QListWidgetItem_text"
  external setText : [> qListWidgetItem] Qt.t -> string -> unit = "mlqt_QListWidgetItem_setText"
  external icon : [> qListWidgetItem] Qt.t -> qIcon Qt.t = "mlqt_QListWidgetItem_icon"
  external setIcon : [> qListWidgetItem] Qt.t -> [> qIcon] Qt.t -> unit = "mlqt_QListWidgetItem_setIcon"
  external statusTip : [> qListWidgetItem] Qt.t -> string = "mlqt_QListWidgetItem_statusTip"
  external setStatusTip : [> qListWidgetItem] Qt.t -> string -> unit = "mlqt_QListWidgetItem_setStatusTip"
  external toolTip : [> qListWidgetItem] Qt.t -> string = "mlqt_QListWidgetItem_toolTip"
  external setToolTip : [> qListWidgetItem] Qt.t -> string -> unit = "mlqt_QListWidgetItem_setToolTip"
  external whatsThis : [> qListWidgetItem] Qt.t -> string = "mlqt_QListWidgetItem_whatsThis"
  external setWhatsThis : [> qListWidgetItem] Qt.t -> string -> unit = "mlqt_QListWidgetItem_setWhatsThis"
  external font : [> qListWidgetItem] Qt.t -> qFont Qt.t = "mlqt_QListWidgetItem_font"
  external setFont : [> qListWidgetItem] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QListWidgetItem_setFont"
  external textAlignment : [> qListWidgetItem] Qt.t -> int = "mlqt_QListWidgetItem_textAlignment"
  external setTextAlignment : [> qListWidgetItem] Qt.t -> int -> unit = "mlqt_QListWidgetItem_setTextAlignment"
  external backgroundColor : [> qListWidgetItem] Qt.t -> qColor Qt.t = "mlqt_QListWidgetItem_backgroundColor"
  external setBackgroundColor : [> qListWidgetItem] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QListWidgetItem_setBackgroundColor"
  external background : [> qListWidgetItem] Qt.t -> qBrush Qt.t = "mlqt_QListWidgetItem_background"
  external setBackground : [> qListWidgetItem] Qt.t -> [> qBrush] Qt.t -> unit = "mlqt_QListWidgetItem_setBackground"
  external textColor : [> qListWidgetItem] Qt.t -> qColor Qt.t = "mlqt_QListWidgetItem_textColor"
  external setTextColor : [> qListWidgetItem] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QListWidgetItem_setTextColor"
  external foreground : [> qListWidgetItem] Qt.t -> qBrush Qt.t = "mlqt_QListWidgetItem_foreground"
  external setForeground : [> qListWidgetItem] Qt.t -> [> qBrush] Qt.t -> unit = "mlqt_QListWidgetItem_setForeground"
  external checkState : [> qListWidgetItem] Qt.t -> qt'CheckState = "mlqt_QListWidgetItem_checkState"
  external setCheckState : [> qListWidgetItem] Qt.t -> qt'CheckState -> unit = "mlqt_QListWidgetItem_setCheckState"
  external sizeHint : [> qListWidgetItem] Qt.t -> qSize = "mlqt_QListWidgetItem_sizeHint"
  external setSizeHint : [> qListWidgetItem] Qt.t -> qSize -> unit = "mlqt_QListWidgetItem_setSizeHint"
  external data : [> qListWidgetItem] Qt.t -> int -> QVariant.t = "mlqt_QListWidgetItem_data"
  external setData : [> qListWidgetItem] Qt.t -> int -> QVariant.t -> unit = "mlqt_QListWidgetItem_setData"
  external read : [> qListWidgetItem] Qt.t -> [> qDataStream] Qt.t -> unit = "mlqt_QListWidgetItem_read"
  external write : [> qListWidgetItem] Qt.t -> [> qDataStream] Qt.t -> unit = "mlqt_QListWidgetItem_write"
  external type_ : [> qListWidgetItem] Qt.t -> int = "mlqt_QListWidgetItem_type_"
end
module QColormap = struct
end
module QUndoCommand = struct
end
module QTextEdit'ExtraSelection = struct
end
module QFormLayout'TakeRowResult = struct
end
module QStyleHintReturn = struct
end
module QLayoutItem = struct
end
module QStyleOption = struct
end
module QSizePolicy = struct
end
external new'QApplication : string array -> qApplication Qt.t = "mlqt_QApplication_new_"
module QApplication = struct
  include QGuiApplication
  external class' : unit -> qApplication Qt.qt_class = "mlqt_class_QApplication" [@@noalloc]
  external style : unit -> qStyle Qt.t = "mlqt_QApplication_style"
  external setStyle : [> qStyle] Qt.t -> unit = "mlqt_QApplication_setStyle"
  external setStyle1 : string -> qStyle Qt.t = "mlqt_QApplication_setStyle1"
  external colorSpec : unit -> int = "mlqt_QApplication_colorSpec"
  external setColorSpec : int -> unit = "mlqt_QApplication_setColorSpec"
  external font : unit -> qFont Qt.t = "mlqt_QApplication_font"
  external font1 : [> qWidget] Qt.t -> qFont Qt.t = "mlqt_QApplication_font1"
  external font2 : string -> qFont Qt.t = "mlqt_QApplication_font2"
  external setFont : [> qFont] Qt.t -> string -> unit = "mlqt_QApplication_setFont"
  external fontMetrics : unit -> qFontMetrics Qt.t = "mlqt_QApplication_fontMetrics"
  external setWindowIcon : [> qIcon] Qt.t -> unit = "mlqt_QApplication_setWindowIcon"
  external windowIcon : unit -> qIcon Qt.t = "mlqt_QApplication_windowIcon"
  external desktop : unit -> qDesktopWidget Qt.t = "mlqt_QApplication_desktop"
  external activePopupWidget : unit -> qWidget Qt.t = "mlqt_QApplication_activePopupWidget"
  external activeModalWidget : unit -> qWidget Qt.t = "mlqt_QApplication_activeModalWidget"
  external focusWidget : unit -> qWidget Qt.t = "mlqt_QApplication_focusWidget"
  external activeWindow : unit -> qWidget Qt.t = "mlqt_QApplication_activeWindow"
  external setActiveWindow : [> qWidget] Qt.t -> unit = "mlqt_QApplication_setActiveWindow"
  external widgetAt : qPoint -> qWidget Qt.t = "mlqt_QApplication_widgetAt"
  external widgetAt1 : int -> int -> qWidget Qt.t = "mlqt_QApplication_widgetAt1"
  external topLevelAt : qPoint -> qWidget Qt.t = "mlqt_QApplication_topLevelAt"
  external topLevelAt1 : int -> int -> qWidget Qt.t = "mlqt_QApplication_topLevelAt1"
  external beep : unit -> unit = "mlqt_QApplication_beep"
  external alert : [> qWidget] Qt.t -> int -> unit = "mlqt_QApplication_alert"
  external setCursorFlashTime : int -> unit = "mlqt_QApplication_setCursorFlashTime"
  external cursorFlashTime : unit -> int = "mlqt_QApplication_cursorFlashTime"
  external setDoubleClickInterval : int -> unit = "mlqt_QApplication_setDoubleClickInterval"
  external doubleClickInterval : unit -> int = "mlqt_QApplication_doubleClickInterval"
  external setKeyboardInputInterval : int -> unit = "mlqt_QApplication_setKeyboardInputInterval"
  external keyboardInputInterval : unit -> int = "mlqt_QApplication_keyboardInputInterval"
  external setWheelScrollLines : int -> unit = "mlqt_QApplication_setWheelScrollLines"
  external wheelScrollLines : unit -> int = "mlqt_QApplication_wheelScrollLines"
  external setGlobalStrut : qSize -> unit = "mlqt_QApplication_setGlobalStrut"
  external globalStrut : unit -> qSize = "mlqt_QApplication_globalStrut"
  external setStartDragTime : int -> unit = "mlqt_QApplication_setStartDragTime"
  external startDragTime : unit -> int = "mlqt_QApplication_startDragTime"
  external setStartDragDistance : int -> unit = "mlqt_QApplication_setStartDragDistance"
  external startDragDistance : unit -> int = "mlqt_QApplication_startDragDistance"
  external isEffectEnabled : qt'UIEffect -> bool = "mlqt_QApplication_isEffectEnabled"
  external setEffectEnabled : qt'UIEffect -> bool -> unit = "mlqt_QApplication_setEffectEnabled"
  external exec : unit -> int = "mlqt_QApplication_exec"
  external notify : [> qApplication] Qt.t -> [> qObject] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QApplication_notify"
  external focusChanged : [> qApplication] Qt.t -> [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QApplication_focusChanged"
  external styleSheet : [> qApplication] Qt.t -> string = "mlqt_QApplication_styleSheet"
  external setStyleSheet : [> qApplication] Qt.t -> string -> unit = "mlqt_QApplication_setStyleSheet"
  external setAutoSipEnabled : [> qApplication] Qt.t -> bool -> unit = "mlqt_QApplication_setAutoSipEnabled"
  external autoSipEnabled : [> qApplication] Qt.t -> bool = "mlqt_QApplication_autoSipEnabled"
  external closeAllWindows : unit -> unit = "mlqt_QApplication_closeAllWindows"
  external aboutQt : unit -> unit = "mlqt_QApplication_aboutQt"
end
module QKeyEventTransition = struct
  include QEventTransition
  external class' : unit -> qKeyEventTransition Qt.qt_class = "mlqt_class_QKeyEventTransition" [@@noalloc]
end
module QMouseEventTransition = struct
  include QEventTransition
  external class' : unit -> qMouseEventTransition Qt.qt_class = "mlqt_class_QMouseEventTransition" [@@noalloc]
end
module QFileSystemModel = struct
  include QAbstractItemModel
  external class' : unit -> qFileSystemModel Qt.qt_class = "mlqt_class_QFileSystemModel" [@@noalloc]
end
module QDirModel = struct
  include QAbstractItemModel
  external class' : unit -> qDirModel Qt.qt_class = "mlqt_class_QDirModel" [@@noalloc]
end
module QAccessibleWidget = struct
  include QAccessibleObject
end
module QStyleOptionFocusRect = struct
  include QStyleOption
end
module QStyleOptionFrame = struct
  include QStyleOption
end
module QStyleOptionTabWidgetFrame = struct
  include QStyleOption
end
module QStyleOptionTabBarBase = struct
  include QStyleOption
end
module QStyleOptionHeader = struct
  include QStyleOption
end
module QStyleOptionButton = struct
  include QStyleOption
end
module QStyleOptionTab = struct
  include QStyleOption
end
module QStyleOptionToolBar = struct
  include QStyleOption
end
module QStyleOptionProgressBar = struct
  include QStyleOption
end
module QStyleOptionMenuItem = struct
  include QStyleOption
end
module QStyleOptionDockWidget = struct
  include QStyleOption
end
module QStyleOptionViewItem = struct
  include QStyleOption
end
module QStyleOptionToolBox = struct
  include QStyleOption
end
module QStyleOptionRubberBand = struct
  include QStyleOption
end
module QStyleOptionComplex = struct
  include QStyleOption
end
module QStyleOptionGraphicsItem = struct
  include QStyleOption
end
module QLayout = struct
  include QObject
  external class' : unit -> qLayout Qt.qt_class = "mlqt_class_QLayout" [@@noalloc]
  external margin : [> qLayout] Qt.t -> int = "mlqt_QLayout_margin"
  external spacing : [> qLayout] Qt.t -> int = "mlqt_QLayout_spacing"
  external setMargin : [> qLayout] Qt.t -> int -> unit = "mlqt_QLayout_setMargin"
  external setSpacing : [> qLayout] Qt.t -> int -> unit = "mlqt_QLayout_setSpacing"
  external setContentsMargins : [> qLayout] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QLayout_setContentsMargins"
  external contentsRect : [> qLayout] Qt.t -> qRect = "mlqt_QLayout_contentsRect"
  external setAlignment : [> qLayout] Qt.t -> [> qWidget] Qt.t -> qt'Alignment -> bool = "mlqt_QLayout_setAlignment"
  external setAlignment1 : [> qLayout] Qt.t -> [> qLayout] Qt.t -> qt'Alignment -> bool = "mlqt_QLayout_setAlignment1"
  external setSizeConstraint : [> qLayout] Qt.t -> qLayout'SizeConstraint -> unit = "mlqt_QLayout_setSizeConstraint"
  external sizeConstraint : [> qLayout] Qt.t -> qLayout'SizeConstraint = "mlqt_QLayout_sizeConstraint"
  external setMenuBar : [> qLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QLayout_setMenuBar"
  external menuBar : [> qLayout] Qt.t -> qWidget Qt.t = "mlqt_QLayout_menuBar"
  external parentWidget : [> qLayout] Qt.t -> qWidget Qt.t = "mlqt_QLayout_parentWidget"
  external invalidate : [> qLayout] Qt.t -> unit = "mlqt_QLayout_invalidate"
  external geometry : [> qLayout] Qt.t -> qRect = "mlqt_QLayout_geometry"
  external activate : [> qLayout] Qt.t -> bool = "mlqt_QLayout_activate"
  external update : [> qLayout] Qt.t -> unit = "mlqt_QLayout_update"
  external addWidget : [> qLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QLayout_addWidget"
  external removeWidget : [> qLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QLayout_removeWidget"
  external expandingDirections : [> qLayout] Qt.t -> qt'Orientations = "mlqt_QLayout_expandingDirections"
  external minimumSize : [> qLayout] Qt.t -> qSize = "mlqt_QLayout_minimumSize"
  external maximumSize : [> qLayout] Qt.t -> qSize = "mlqt_QLayout_maximumSize"
  external setGeometry : [> qLayout] Qt.t -> qRect -> unit = "mlqt_QLayout_setGeometry"
  external indexOf : [> qLayout] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QLayout_indexOf"
  external count : [> qLayout] Qt.t -> int = "mlqt_QLayout_count"
  external isEmpty : [> qLayout] Qt.t -> bool = "mlqt_QLayout_isEmpty"
  external controlTypes : [> qLayout] Qt.t -> qSizePolicy'ControlTypes = "mlqt_QLayout_controlTypes"
  external layout : [> qLayout] Qt.t -> qLayout Qt.t = "mlqt_QLayout_layout"
  external setEnabled : [> qLayout] Qt.t -> bool -> unit = "mlqt_QLayout_setEnabled"
  external isEnabled : [> qLayout] Qt.t -> bool = "mlqt_QLayout_isEnabled"
  external closestAcceptableSize : [> qWidget] Qt.t -> qSize -> qSize = "mlqt_QLayout_closestAcceptableSize"
end
module QSpacerItem = struct
  include QLayoutItem
end
module QWidgetItem = struct
  include QLayoutItem
end
module QStyleHintReturnMask = struct
  include QStyleHintReturn
end
module QStyleHintReturnVariant = struct
  include QStyleHintReturn
end
module QStylePainter = struct
  include QPainter
end
module QGraphicsObject = struct
  include QObject
  external class' : unit -> qGraphicsObject Qt.qt_class = "mlqt_class_QGraphicsObject" [@@noalloc]
end
module QAbstractGraphicsShapeItem = struct
  include QGraphicsItem
end
module QGraphicsLineItem = struct
  include QGraphicsItem
end
module QGraphicsPixmapItem = struct
  include QGraphicsItem
end
module QGraphicsItemGroup = struct
  include QGraphicsItem
end
module QPlainTextDocumentLayout = struct
  include QAbstractTextDocumentLayout
  external class' : unit -> qPlainTextDocumentLayout Qt.qt_class = "mlqt_class_QPlainTextDocumentLayout" [@@noalloc]
end
module QGraphicsLayout = struct
  include QGraphicsLayoutItem
end
module QItemEditorCreator = struct
  include QItemEditorCreatorBase
end
module QStandardItemEditorCreator = struct
  include QItemEditorCreatorBase
end
module QGraphicsSceneEvent = struct
  include QEvent
end
module QGestureEvent = struct
  include QEvent
end
module QGraphicsEffect = struct
  include QObject
  external class' : unit -> qGraphicsEffect Qt.qt_class = "mlqt_class_QGraphicsEffect" [@@noalloc]
end
module QGraphicsAnchor = struct
  include QObject
  external class' : unit -> qGraphicsAnchor Qt.qt_class = "mlqt_class_QGraphicsAnchor" [@@noalloc]
end
module QGraphicsItemAnimation = struct
  include QObject
  external class' : unit -> qGraphicsItemAnimation Qt.qt_class = "mlqt_class_QGraphicsItemAnimation" [@@noalloc]
end
module QGraphicsScene = struct
  include QObject
  external class' : unit -> qGraphicsScene Qt.qt_class = "mlqt_class_QGraphicsScene" [@@noalloc]
end
module QGraphicsTransform = struct
  include QObject
  external class' : unit -> qGraphicsTransform Qt.qt_class = "mlqt_class_QGraphicsTransform" [@@noalloc]
end
module QAbstractItemDelegate = struct
  include QObject
  external class' : unit -> qAbstractItemDelegate Qt.qt_class = "mlqt_class_QAbstractItemDelegate" [@@noalloc]
end
external new'QDataWidgetMapper : [> qObject] Qt.t -> qDataWidgetMapper Qt.t = "mlqt_QDataWidgetMapper_new_"
module QDataWidgetMapper = struct
  include QObject
  external class' : unit -> qDataWidgetMapper Qt.qt_class = "mlqt_class_QDataWidgetMapper" [@@noalloc]
  external setModel : [> qDataWidgetMapper] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QDataWidgetMapper_setModel"
  external model : [> qDataWidgetMapper] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QDataWidgetMapper_model"
  external setItemDelegate : [> qDataWidgetMapper] Qt.t -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QDataWidgetMapper_setItemDelegate"
  external itemDelegate : [> qDataWidgetMapper] Qt.t -> qAbstractItemDelegate Qt.t = "mlqt_QDataWidgetMapper_itemDelegate"
  external setRootIndex : [> qDataWidgetMapper] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QDataWidgetMapper_setRootIndex"
  external rootIndex : [> qDataWidgetMapper] Qt.t -> qModelIndex Qt.t = "mlqt_QDataWidgetMapper_rootIndex"
  external setOrientation : [> qDataWidgetMapper] Qt.t -> qt'Orientation -> unit = "mlqt_QDataWidgetMapper_setOrientation"
  external orientation : [> qDataWidgetMapper] Qt.t -> qt'Orientation = "mlqt_QDataWidgetMapper_orientation"
  external setSubmitPolicy : [> qDataWidgetMapper] Qt.t -> qDataWidgetMapper'SubmitPolicy -> unit = "mlqt_QDataWidgetMapper_setSubmitPolicy"
  external submitPolicy : [> qDataWidgetMapper] Qt.t -> qDataWidgetMapper'SubmitPolicy = "mlqt_QDataWidgetMapper_submitPolicy"
  external addMapping : [> qDataWidgetMapper] Qt.t -> [> qWidget] Qt.t -> int -> unit = "mlqt_QDataWidgetMapper_addMapping"
  external addMapping1 : [> qDataWidgetMapper] Qt.t -> [> qWidget] Qt.t -> int -> [> qByteArray] Qt.t -> unit = "mlqt_QDataWidgetMapper_addMapping1"
  external removeMapping : [> qDataWidgetMapper] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QDataWidgetMapper_removeMapping"
  external mappedSection : [> qDataWidgetMapper] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QDataWidgetMapper_mappedSection"
  external mappedPropertyName : [> qDataWidgetMapper] Qt.t -> [> qWidget] Qt.t -> qByteArray Qt.t = "mlqt_QDataWidgetMapper_mappedPropertyName"
  external mappedWidgetAt : [> qDataWidgetMapper] Qt.t -> int -> qWidget Qt.t = "mlqt_QDataWidgetMapper_mappedWidgetAt"
  external clearMapping : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_clearMapping"
  external currentIndex : [> qDataWidgetMapper] Qt.t -> int = "mlqt_QDataWidgetMapper_currentIndex"
  external revert : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_revert"
  external submit : [> qDataWidgetMapper] Qt.t -> bool = "mlqt_QDataWidgetMapper_submit"
  external toFirst : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_toFirst"
  external toLast : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_toLast"
  external toNext : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_toNext"
  external toPrevious : [> qDataWidgetMapper] Qt.t -> unit = "mlqt_QDataWidgetMapper_toPrevious"
  external setCurrentIndex : [> qDataWidgetMapper] Qt.t -> int -> unit = "mlqt_QDataWidgetMapper_setCurrentIndex"
  external setCurrentModelIndex : [> qDataWidgetMapper] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QDataWidgetMapper_setCurrentModelIndex"
  external currentIndexChanged : [> qDataWidgetMapper] Qt.t -> int -> unit = "mlqt_QDataWidgetMapper_currentIndexChanged"
end
external new'QAction : [> qObject] Qt.t -> qAction Qt.t = "mlqt_QAction_new_"
external new'QAction'1 : string -> [> qObject] Qt.t -> qAction Qt.t = "mlqt_QAction_new_1"
external new'QAction'2 : [> qIcon] Qt.t -> string -> [> qObject] Qt.t -> qAction Qt.t = "mlqt_QAction_new_2"
module QAction = struct
  include QObject
  external class' : unit -> qAction Qt.qt_class = "mlqt_class_QAction" [@@noalloc]
  external setActionGroup : [> qAction] Qt.t -> [> qActionGroup] Qt.t -> unit = "mlqt_QAction_setActionGroup"
  external actionGroup : [> qAction] Qt.t -> qActionGroup Qt.t = "mlqt_QAction_actionGroup"
  external setIcon : [> qAction] Qt.t -> [> qIcon] Qt.t -> unit = "mlqt_QAction_setIcon"
  external icon : [> qAction] Qt.t -> qIcon Qt.t = "mlqt_QAction_icon"
  external setText : [> qAction] Qt.t -> string -> unit = "mlqt_QAction_setText"
  external text : [> qAction] Qt.t -> string = "mlqt_QAction_text"
  external setIconText : [> qAction] Qt.t -> string -> unit = "mlqt_QAction_setIconText"
  external iconText : [> qAction] Qt.t -> string = "mlqt_QAction_iconText"
  external setToolTip : [> qAction] Qt.t -> string -> unit = "mlqt_QAction_setToolTip"
  external toolTip : [> qAction] Qt.t -> string = "mlqt_QAction_toolTip"
  external setStatusTip : [> qAction] Qt.t -> string -> unit = "mlqt_QAction_setStatusTip"
  external statusTip : [> qAction] Qt.t -> string = "mlqt_QAction_statusTip"
  external setWhatsThis : [> qAction] Qt.t -> string -> unit = "mlqt_QAction_setWhatsThis"
  external whatsThis : [> qAction] Qt.t -> string = "mlqt_QAction_whatsThis"
  external setPriority : [> qAction] Qt.t -> qAction'Priority -> unit = "mlqt_QAction_setPriority"
  external priority : [> qAction] Qt.t -> qAction'Priority = "mlqt_QAction_priority"
  external menu : [> qAction] Qt.t -> qMenu Qt.t = "mlqt_QAction_menu"
  external setMenu : [> qAction] Qt.t -> [> qMenu] Qt.t -> unit = "mlqt_QAction_setMenu"
  external setSeparator : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setSeparator"
  external isSeparator : [> qAction] Qt.t -> bool = "mlqt_QAction_isSeparator"
  external setShortcut : [> qAction] Qt.t -> [> qKeySequence] Qt.t -> unit = "mlqt_QAction_setShortcut"
  external shortcut : [> qAction] Qt.t -> qKeySequence Qt.t = "mlqt_QAction_shortcut"
  external setShortcuts : [> qAction] Qt.t -> qKeySequence'StandardKey -> unit = "mlqt_QAction_setShortcuts"
  external setShortcutContext : [> qAction] Qt.t -> qt'ShortcutContext -> unit = "mlqt_QAction_setShortcutContext"
  external shortcutContext : [> qAction] Qt.t -> qt'ShortcutContext = "mlqt_QAction_shortcutContext"
  external setAutoRepeat : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setAutoRepeat"
  external autoRepeat : [> qAction] Qt.t -> bool = "mlqt_QAction_autoRepeat"
  external setFont : [> qAction] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QAction_setFont"
  external font : [> qAction] Qt.t -> qFont Qt.t = "mlqt_QAction_font"
  external setCheckable : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setCheckable"
  external isCheckable : [> qAction] Qt.t -> bool = "mlqt_QAction_isCheckable"
  external data : [> qAction] Qt.t -> QVariant.t = "mlqt_QAction_data"
  external setData : [> qAction] Qt.t -> QVariant.t -> unit = "mlqt_QAction_setData"
  external isChecked : [> qAction] Qt.t -> bool = "mlqt_QAction_isChecked"
  external isEnabled : [> qAction] Qt.t -> bool = "mlqt_QAction_isEnabled"
  external isVisible : [> qAction] Qt.t -> bool = "mlqt_QAction_isVisible"
  external activate : [> qAction] Qt.t -> qAction'ActionEvent -> unit = "mlqt_QAction_activate"
  external showStatusText : [> qAction] Qt.t -> [> qWidget] Qt.t -> bool = "mlqt_QAction_showStatusText"
  external setMenuRole : [> qAction] Qt.t -> qAction'MenuRole -> unit = "mlqt_QAction_setMenuRole"
  external menuRole : [> qAction] Qt.t -> qAction'MenuRole = "mlqt_QAction_menuRole"
  external setIconVisibleInMenu : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setIconVisibleInMenu"
  external isIconVisibleInMenu : [> qAction] Qt.t -> bool = "mlqt_QAction_isIconVisibleInMenu"
  external parentWidget : [> qAction] Qt.t -> qWidget Qt.t = "mlqt_QAction_parentWidget"
  external trigger : [> qAction] Qt.t -> unit = "mlqt_QAction_trigger"
  external hover : [> qAction] Qt.t -> unit = "mlqt_QAction_hover"
  external setChecked : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setChecked"
  external toggle : [> qAction] Qt.t -> unit = "mlqt_QAction_toggle"
  external setEnabled : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setEnabled"
  external setDisabled : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setDisabled"
  external setVisible : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_setVisible"
  external changed : [> qAction] Qt.t -> unit = "mlqt_QAction_changed"
  external triggered : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_triggered"
  external hovered : [> qAction] Qt.t -> unit = "mlqt_QAction_hovered"
  external toggled : [> qAction] Qt.t -> bool -> unit = "mlqt_QAction_toggled"
  external signal'changed1 : unit -> ([> qAction], unit) Qt.signal = "mlqt_signal_QAction_changed1" [@@noalloc]
  external signal'hovered1 : unit -> ([> qAction], unit) Qt.signal = "mlqt_signal_QAction_hovered1" [@@noalloc]
  external signal'toggled1 : unit -> ([> qAction], bool) Qt.signal = "mlqt_signal_QAction_toggled1" [@@noalloc]
  external signal'triggered1 : unit -> ([> qAction], bool) Qt.signal = "mlqt_signal_QAction_triggered1" [@@noalloc]
  external slot'hover1 : unit -> ([> qAction], unit) Qt.slot = "mlqt_slot_QAction_hover1" [@@noalloc]
  external slot'setChecked1 : unit -> ([> qAction], bool) Qt.slot = "mlqt_slot_QAction_setChecked1" [@@noalloc]
  external slot'setDisabled1 : unit -> ([> qAction], bool) Qt.slot = "mlqt_slot_QAction_setDisabled1" [@@noalloc]
  external slot'setEnabled1 : unit -> ([> qAction], bool) Qt.slot = "mlqt_slot_QAction_setEnabled1" [@@noalloc]
  external slot'setVisible1 : unit -> ([> qAction], bool) Qt.slot = "mlqt_slot_QAction_setVisible1" [@@noalloc]
  external slot'toggle1 : unit -> ([> qAction], unit) Qt.slot = "mlqt_slot_QAction_toggle1" [@@noalloc]
  external slot'trigger1 : unit -> ([> qAction], unit) Qt.slot = "mlqt_slot_QAction_trigger1" [@@noalloc]
end
external new'QActionGroup : [> qObject] Qt.t -> qActionGroup Qt.t = "mlqt_QActionGroup_new_"
module QActionGroup = struct
  include QObject
  external class' : unit -> qActionGroup Qt.qt_class = "mlqt_class_QActionGroup" [@@noalloc]
  external addAction : [> qActionGroup] Qt.t -> [> qAction] Qt.t -> qAction Qt.t = "mlqt_QActionGroup_addAction"
  external addAction1 : [> qActionGroup] Qt.t -> string -> qAction Qt.t = "mlqt_QActionGroup_addAction1"
  external addAction2 : [> qActionGroup] Qt.t -> [> qIcon] Qt.t -> string -> qAction Qt.t = "mlqt_QActionGroup_addAction2"
  external removeAction : [> qActionGroup] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QActionGroup_removeAction"
  external checkedAction : [> qActionGroup] Qt.t -> qAction Qt.t = "mlqt_QActionGroup_checkedAction"
  external isExclusive : [> qActionGroup] Qt.t -> bool = "mlqt_QActionGroup_isExclusive"
  external isEnabled : [> qActionGroup] Qt.t -> bool = "mlqt_QActionGroup_isEnabled"
  external isVisible : [> qActionGroup] Qt.t -> bool = "mlqt_QActionGroup_isVisible"
  external setEnabled : [> qActionGroup] Qt.t -> bool -> unit = "mlqt_QActionGroup_setEnabled"
  external setDisabled : [> qActionGroup] Qt.t -> bool -> unit = "mlqt_QActionGroup_setDisabled"
  external setVisible : [> qActionGroup] Qt.t -> bool -> unit = "mlqt_QActionGroup_setVisible"
  external setExclusive : [> qActionGroup] Qt.t -> bool -> unit = "mlqt_QActionGroup_setExclusive"
  external triggered : [> qActionGroup] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QActionGroup_triggered"
  external hovered : [> qActionGroup] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QActionGroup_hovered"
end
external new'QGesture : [> qObject] Qt.t -> qGesture Qt.t = "mlqt_QGesture_new_"
module QGesture = struct
  include QObject
  external class' : unit -> qGesture Qt.qt_class = "mlqt_class_QGesture" [@@noalloc]
  external gestureType : [> qGesture] Qt.t -> qt'GestureType = "mlqt_QGesture_gestureType"
  external state : [> qGesture] Qt.t -> qt'GestureState = "mlqt_QGesture_state"
  external hotSpot : [> qGesture] Qt.t -> qPointF = "mlqt_QGesture_hotSpot"
  external setHotSpot : [> qGesture] Qt.t -> qPointF -> unit = "mlqt_QGesture_setHotSpot"
  external hasHotSpot : [> qGesture] Qt.t -> bool = "mlqt_QGesture_hasHotSpot"
  external unsetHotSpot : [> qGesture] Qt.t -> unit = "mlqt_QGesture_unsetHotSpot"
  external setGestureCancelPolicy : [> qGesture] Qt.t -> qGesture'GestureCancelPolicy -> unit = "mlqt_QGesture_setGestureCancelPolicy"
  external gestureCancelPolicy : [> qGesture] Qt.t -> qGesture'GestureCancelPolicy = "mlqt_QGesture_gestureCancelPolicy"
end
external new'QShortcut : [> qWidget] Qt.t option -> qShortcut Qt.t = "mlqt_QShortcut_new_"
module QShortcut = struct
  include QObject
  external class' : unit -> qShortcut Qt.qt_class = "mlqt_class_QShortcut" [@@noalloc]
  external setKey : [> qShortcut] Qt.t -> [> qKeySequence] Qt.t -> unit = "mlqt_QShortcut_setKey"
  external key : [> qShortcut] Qt.t -> qKeySequence Qt.t = "mlqt_QShortcut_key"
  external setEnabled : [> qShortcut] Qt.t -> bool -> unit = "mlqt_QShortcut_setEnabled"
  external isEnabled : [> qShortcut] Qt.t -> bool = "mlqt_QShortcut_isEnabled"
  external setContext : [> qShortcut] Qt.t -> qt'ShortcutContext -> unit = "mlqt_QShortcut_setContext"
  external context : [> qShortcut] Qt.t -> qt'ShortcutContext = "mlqt_QShortcut_context"
  external setWhatsThis : [> qShortcut] Qt.t -> string -> unit = "mlqt_QShortcut_setWhatsThis"
  external whatsThis : [> qShortcut] Qt.t -> string = "mlqt_QShortcut_whatsThis"
  external setAutoRepeat : [> qShortcut] Qt.t -> bool -> unit = "mlqt_QShortcut_setAutoRepeat"
  external autoRepeat : [> qShortcut] Qt.t -> bool = "mlqt_QShortcut_autoRepeat"
  external id : [> qShortcut] Qt.t -> int = "mlqt_QShortcut_id"
  external parentWidget : [> qShortcut] Qt.t -> qWidget Qt.t = "mlqt_QShortcut_parentWidget"
  external activated : [> qShortcut] Qt.t -> unit = "mlqt_QShortcut_activated"
  external activatedAmbiguously : [> qShortcut] Qt.t -> unit = "mlqt_QShortcut_activatedAmbiguously"
end
module QStyle = struct
  include QObject
  external class' : unit -> qStyle Qt.qt_class = "mlqt_class_QStyle" [@@noalloc]
end
module QStylePlugin = struct
  include QObject
  external class' : unit -> qStylePlugin Qt.qt_class = "mlqt_class_QStylePlugin" [@@noalloc]
end
external new'QCompleter : [> qObject] Qt.t -> qCompleter Qt.t = "mlqt_QCompleter_new_"
external new'QCompleter'1 : [> qAbstractItemModel] Qt.t -> [> qObject] Qt.t -> qCompleter Qt.t = "mlqt_QCompleter_new_1"
external new'QCompleter'2 : [> qStringList] Qt.t -> [> qObject] Qt.t -> qCompleter Qt.t = "mlqt_QCompleter_new_2"
module QCompleter = struct
  include QObject
  external class' : unit -> qCompleter Qt.qt_class = "mlqt_class_QCompleter" [@@noalloc]
  external setWidget : [> qCompleter] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QCompleter_setWidget"
  external widget : [> qCompleter] Qt.t -> qWidget Qt.t = "mlqt_QCompleter_widget"
  external setModel : [> qCompleter] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QCompleter_setModel"
  external model : [> qCompleter] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QCompleter_model"
  external setCompletionMode : [> qCompleter] Qt.t -> qCompleter'CompletionMode -> unit = "mlqt_QCompleter_setCompletionMode"
  external completionMode : [> qCompleter] Qt.t -> qCompleter'CompletionMode = "mlqt_QCompleter_completionMode"
  external setFilterMode : [> qCompleter] Qt.t -> qt'MatchFlags -> unit = "mlqt_QCompleter_setFilterMode"
  external filterMode : [> qCompleter] Qt.t -> qt'MatchFlags = "mlqt_QCompleter_filterMode"
  external popup : [> qCompleter] Qt.t -> qAbstractItemView Qt.t = "mlqt_QCompleter_popup"
  external setPopup : [> qCompleter] Qt.t -> [> qAbstractItemView] Qt.t -> unit = "mlqt_QCompleter_setPopup"
  external setCaseSensitivity : [> qCompleter] Qt.t -> qt'CaseSensitivity -> unit = "mlqt_QCompleter_setCaseSensitivity"
  external caseSensitivity : [> qCompleter] Qt.t -> qt'CaseSensitivity = "mlqt_QCompleter_caseSensitivity"
  external setModelSorting : [> qCompleter] Qt.t -> qCompleter'ModelSorting -> unit = "mlqt_QCompleter_setModelSorting"
  external modelSorting : [> qCompleter] Qt.t -> qCompleter'ModelSorting = "mlqt_QCompleter_modelSorting"
  external setCompletionColumn : [> qCompleter] Qt.t -> int -> unit = "mlqt_QCompleter_setCompletionColumn"
  external completionColumn : [> qCompleter] Qt.t -> int = "mlqt_QCompleter_completionColumn"
  external setCompletionRole : [> qCompleter] Qt.t -> int -> unit = "mlqt_QCompleter_setCompletionRole"
  external completionRole : [> qCompleter] Qt.t -> int = "mlqt_QCompleter_completionRole"
  external wrapAround : [> qCompleter] Qt.t -> bool = "mlqt_QCompleter_wrapAround"
  external maxVisibleItems : [> qCompleter] Qt.t -> int = "mlqt_QCompleter_maxVisibleItems"
  external setMaxVisibleItems : [> qCompleter] Qt.t -> int -> unit = "mlqt_QCompleter_setMaxVisibleItems"
  external completionCount : [> qCompleter] Qt.t -> int = "mlqt_QCompleter_completionCount"
  external setCurrentRow : [> qCompleter] Qt.t -> int -> bool = "mlqt_QCompleter_setCurrentRow"
  external currentRow : [> qCompleter] Qt.t -> int = "mlqt_QCompleter_currentRow"
  external currentIndex : [> qCompleter] Qt.t -> qModelIndex Qt.t = "mlqt_QCompleter_currentIndex"
  external currentCompletion : [> qCompleter] Qt.t -> string = "mlqt_QCompleter_currentCompletion"
  external completionModel : [> qCompleter] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QCompleter_completionModel"
  external completionPrefix : [> qCompleter] Qt.t -> string = "mlqt_QCompleter_completionPrefix"
  external setCompletionPrefix : [> qCompleter] Qt.t -> string -> unit = "mlqt_QCompleter_setCompletionPrefix"
  external complete : [> qCompleter] Qt.t -> qRect -> unit = "mlqt_QCompleter_complete"
  external setWrapAround : [> qCompleter] Qt.t -> bool -> unit = "mlqt_QCompleter_setWrapAround"
  external pathFromIndex : [> qCompleter] Qt.t -> [> qModelIndex] Qt.t -> string = "mlqt_QCompleter_pathFromIndex"
  external splitPath : [> qCompleter] Qt.t -> string -> qStringList Qt.t = "mlqt_QCompleter_splitPath"
  external activated : [> qCompleter] Qt.t -> string -> unit = "mlqt_QCompleter_activated"
  external activated1 : [> qCompleter] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QCompleter_activated1"
  external highlighted : [> qCompleter] Qt.t -> string -> unit = "mlqt_QCompleter_highlighted"
  external highlighted1 : [> qCompleter] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QCompleter_highlighted1"
end
module QScroller = struct
  include QObject
  external class' : unit -> qScroller Qt.qt_class = "mlqt_class_QScroller" [@@noalloc]
end
external new'QSystemTrayIcon : [> qObject] Qt.t -> qSystemTrayIcon Qt.t = "mlqt_QSystemTrayIcon_new_"
external new'QSystemTrayIcon'1 : [> qIcon] Qt.t -> [> qObject] Qt.t -> qSystemTrayIcon Qt.t = "mlqt_QSystemTrayIcon_new_1"
module QSystemTrayIcon = struct
  include QObject
  external class' : unit -> qSystemTrayIcon Qt.qt_class = "mlqt_class_QSystemTrayIcon" [@@noalloc]
  external setContextMenu : [> qSystemTrayIcon] Qt.t -> [> qMenu] Qt.t -> unit = "mlqt_QSystemTrayIcon_setContextMenu"
  external contextMenu : [> qSystemTrayIcon] Qt.t -> qMenu Qt.t = "mlqt_QSystemTrayIcon_contextMenu"
  external icon : [> qSystemTrayIcon] Qt.t -> qIcon Qt.t = "mlqt_QSystemTrayIcon_icon"
  external setIcon : [> qSystemTrayIcon] Qt.t -> [> qIcon] Qt.t -> unit = "mlqt_QSystemTrayIcon_setIcon"
  external toolTip : [> qSystemTrayIcon] Qt.t -> string = "mlqt_QSystemTrayIcon_toolTip"
  external setToolTip : [> qSystemTrayIcon] Qt.t -> string -> unit = "mlqt_QSystemTrayIcon_setToolTip"
  external isSystemTrayAvailable : unit -> bool = "mlqt_QSystemTrayIcon_isSystemTrayAvailable"
  external supportsMessages : unit -> bool = "mlqt_QSystemTrayIcon_supportsMessages"
  external geometry : [> qSystemTrayIcon] Qt.t -> qRect = "mlqt_QSystemTrayIcon_geometry"
  external isVisible : [> qSystemTrayIcon] Qt.t -> bool = "mlqt_QSystemTrayIcon_isVisible"
  external setVisible : [> qSystemTrayIcon] Qt.t -> bool -> unit = "mlqt_QSystemTrayIcon_setVisible"
  external show : [> qSystemTrayIcon] Qt.t -> unit = "mlqt_QSystemTrayIcon_show"
  external hide : [> qSystemTrayIcon] Qt.t -> unit = "mlqt_QSystemTrayIcon_hide"
  external showMessage : [> qSystemTrayIcon] Qt.t -> string -> string -> [> qIcon] Qt.t -> int -> unit = "mlqt_QSystemTrayIcon_showMessage"
  external showMessage1 : [> qSystemTrayIcon] Qt.t -> string -> string -> qSystemTrayIcon'MessageIcon -> int -> unit = "mlqt_QSystemTrayIcon_showMessage1"
  external activated : [> qSystemTrayIcon] Qt.t -> qSystemTrayIcon'ActivationReason -> unit = "mlqt_QSystemTrayIcon_activated"
  external messageClicked : [> qSystemTrayIcon] Qt.t -> unit = "mlqt_QSystemTrayIcon_messageClicked"
end
module QUndoGroup = struct
  include QObject
  external class' : unit -> qUndoGroup Qt.qt_class = "mlqt_class_QUndoGroup" [@@noalloc]
end
module QUndoStack = struct
  include QObject
  external class' : unit -> qUndoStack Qt.qt_class = "mlqt_class_QUndoStack" [@@noalloc]
end
external new'QButtonGroup : [> qObject] Qt.t -> qButtonGroup Qt.t = "mlqt_QButtonGroup_new_"
module QButtonGroup = struct
  include QObject
  external class' : unit -> qButtonGroup Qt.qt_class = "mlqt_class_QButtonGroup" [@@noalloc]
  external setExclusive : [> qButtonGroup] Qt.t -> bool -> unit = "mlqt_QButtonGroup_setExclusive"
  external exclusive : [> qButtonGroup] Qt.t -> bool = "mlqt_QButtonGroup_exclusive"
  external addButton : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> int -> unit = "mlqt_QButtonGroup_addButton"
  external removeButton : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QButtonGroup_removeButton"
  external checkedButton : [> qButtonGroup] Qt.t -> qAbstractButton Qt.t = "mlqt_QButtonGroup_checkedButton"
  external button : [> qButtonGroup] Qt.t -> int -> qAbstractButton Qt.t = "mlqt_QButtonGroup_button"
  external setId : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> int -> unit = "mlqt_QButtonGroup_setId"
  external id : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> int = "mlqt_QButtonGroup_id"
  external checkedId : [> qButtonGroup] Qt.t -> int = "mlqt_QButtonGroup_checkedId"
  external buttonClicked : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QButtonGroup_buttonClicked"
  external buttonClicked1 : [> qButtonGroup] Qt.t -> int -> unit = "mlqt_QButtonGroup_buttonClicked1"
  external buttonPressed : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QButtonGroup_buttonPressed"
  external buttonPressed1 : [> qButtonGroup] Qt.t -> int -> unit = "mlqt_QButtonGroup_buttonPressed1"
  external buttonReleased : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QButtonGroup_buttonReleased"
  external buttonReleased1 : [> qButtonGroup] Qt.t -> int -> unit = "mlqt_QButtonGroup_buttonReleased1"
  external buttonToggled : [> qButtonGroup] Qt.t -> [> qAbstractButton] Qt.t -> bool -> unit = "mlqt_QButtonGroup_buttonToggled"
  external buttonToggled1 : [> qButtonGroup] Qt.t -> int -> bool -> unit = "mlqt_QButtonGroup_buttonToggled1"
  external signal'buttonClicked2 : unit -> ([> qButtonGroup], int) Qt.signal = "mlqt_signal_QButtonGroup_buttonClicked2" [@@noalloc]
  external signal'buttonClicked3 : unit -> ([> qButtonGroup], qAbstractButton Qt.t) Qt.signal = "mlqt_signal_QButtonGroup_buttonClicked3" [@@noalloc]
  external signal'buttonPressed2 : unit -> ([> qButtonGroup], int) Qt.signal = "mlqt_signal_QButtonGroup_buttonPressed2" [@@noalloc]
  external signal'buttonPressed3 : unit -> ([> qButtonGroup], qAbstractButton Qt.t) Qt.signal = "mlqt_signal_QButtonGroup_buttonPressed3" [@@noalloc]
  external signal'buttonReleased2 : unit -> ([> qButtonGroup], int) Qt.signal = "mlqt_signal_QButtonGroup_buttonReleased2" [@@noalloc]
  external signal'buttonReleased3 : unit -> ([> qButtonGroup], qAbstractButton Qt.t) Qt.signal = "mlqt_signal_QButtonGroup_buttonReleased3" [@@noalloc]
  external signal'buttonToggled2 : unit -> ([> qButtonGroup], int * bool) Qt.signal = "mlqt_signal_QButtonGroup_buttonToggled2" [@@noalloc]
  external signal'buttonToggled3 : unit -> ([> qButtonGroup], qAbstractButton Qt.t * bool) Qt.signal = "mlqt_signal_QButtonGroup_buttonToggled3" [@@noalloc]
end
module QCommonStyle = struct
  include QStyle
  external class' : unit -> qCommonStyle Qt.qt_class = "mlqt_class_QCommonStyle" [@@noalloc]
end
module QPanGesture = struct
  include QGesture
  external class' : unit -> qPanGesture Qt.qt_class = "mlqt_class_QPanGesture" [@@noalloc]
end
module QPinchGesture = struct
  include QGesture
  external class' : unit -> qPinchGesture Qt.qt_class = "mlqt_class_QPinchGesture" [@@noalloc]
end
module QSwipeGesture = struct
  include QGesture
  external class' : unit -> qSwipeGesture Qt.qt_class = "mlqt_class_QSwipeGesture" [@@noalloc]
end
module QTapGesture = struct
  include QGesture
  external class' : unit -> qTapGesture Qt.qt_class = "mlqt_class_QTapGesture" [@@noalloc]
end
module QTapAndHoldGesture = struct
  include QGesture
  external class' : unit -> qTapAndHoldGesture Qt.qt_class = "mlqt_class_QTapAndHoldGesture" [@@noalloc]
end
external new'QWidgetAction : [> qObject] Qt.t -> qWidgetAction Qt.t = "mlqt_QWidgetAction_new_"
module QWidgetAction = struct
  include QAction
  external class' : unit -> qWidgetAction Qt.qt_class = "mlqt_class_QWidgetAction" [@@noalloc]
  external setDefaultWidget : [> qWidgetAction] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWidgetAction_setDefaultWidget"
  external defaultWidget : [> qWidgetAction] Qt.t -> qWidget Qt.t = "mlqt_QWidgetAction_defaultWidget"
  external requestWidget : [> qWidgetAction] Qt.t -> [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QWidgetAction_requestWidget"
  external releaseWidget : [> qWidgetAction] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWidgetAction_releaseWidget"
end
module QItemDelegate = struct
  include QAbstractItemDelegate
  external class' : unit -> qItemDelegate Qt.qt_class = "mlqt_class_QItemDelegate" [@@noalloc]
end
module QStyledItemDelegate = struct
  include QAbstractItemDelegate
  external class' : unit -> qStyledItemDelegate Qt.qt_class = "mlqt_class_QStyledItemDelegate" [@@noalloc]
end
external new'QGraphicsScale : [> qObject] Qt.t -> qGraphicsScale Qt.t = "mlqt_QGraphicsScale_new_"
module QGraphicsScale = struct
  include QGraphicsTransform
  external class' : unit -> qGraphicsScale Qt.qt_class = "mlqt_class_QGraphicsScale" [@@noalloc]
  external origin : [> qGraphicsScale] Qt.t -> qVector3D Qt.t = "mlqt_QGraphicsScale_origin"
  external setOrigin : [> qGraphicsScale] Qt.t -> [> qVector3D] Qt.t -> unit = "mlqt_QGraphicsScale_setOrigin"
  external xScale : [> qGraphicsScale] Qt.t -> float = "mlqt_QGraphicsScale_xScale"
  external setXScale : [> qGraphicsScale] Qt.t -> float -> unit = "mlqt_QGraphicsScale_setXScale"
  external yScale : [> qGraphicsScale] Qt.t -> float = "mlqt_QGraphicsScale_yScale"
  external setYScale : [> qGraphicsScale] Qt.t -> float -> unit = "mlqt_QGraphicsScale_setYScale"
  external zScale : [> qGraphicsScale] Qt.t -> float = "mlqt_QGraphicsScale_zScale"
  external setZScale : [> qGraphicsScale] Qt.t -> float -> unit = "mlqt_QGraphicsScale_setZScale"
  external applyTo : [> qGraphicsScale] Qt.t -> [> qMatrix4x4] Qt.t -> unit = "mlqt_QGraphicsScale_applyTo"
  external originChanged : [> qGraphicsScale] Qt.t -> unit = "mlqt_QGraphicsScale_originChanged"
  external xScaleChanged : [> qGraphicsScale] Qt.t -> unit = "mlqt_QGraphicsScale_xScaleChanged"
  external yScaleChanged : [> qGraphicsScale] Qt.t -> unit = "mlqt_QGraphicsScale_yScaleChanged"
  external zScaleChanged : [> qGraphicsScale] Qt.t -> unit = "mlqt_QGraphicsScale_zScaleChanged"
  external scaleChanged : [> qGraphicsScale] Qt.t -> unit = "mlqt_QGraphicsScale_scaleChanged"
end
external new'QGraphicsRotation : [> qObject] Qt.t -> qGraphicsRotation Qt.t = "mlqt_QGraphicsRotation_new_"
module QGraphicsRotation = struct
  include QGraphicsTransform
  external class' : unit -> qGraphicsRotation Qt.qt_class = "mlqt_class_QGraphicsRotation" [@@noalloc]
  external origin : [> qGraphicsRotation] Qt.t -> qVector3D Qt.t = "mlqt_QGraphicsRotation_origin"
  external setOrigin : [> qGraphicsRotation] Qt.t -> [> qVector3D] Qt.t -> unit = "mlqt_QGraphicsRotation_setOrigin"
  external angle : [> qGraphicsRotation] Qt.t -> float = "mlqt_QGraphicsRotation_angle"
  external setAngle : [> qGraphicsRotation] Qt.t -> float -> unit = "mlqt_QGraphicsRotation_setAngle"
  external axis : [> qGraphicsRotation] Qt.t -> qVector3D Qt.t = "mlqt_QGraphicsRotation_axis"
  external setAxis : [> qGraphicsRotation] Qt.t -> [> qVector3D] Qt.t -> unit = "mlqt_QGraphicsRotation_setAxis"
  external setAxis1 : [> qGraphicsRotation] Qt.t -> qt'Axis -> unit = "mlqt_QGraphicsRotation_setAxis1"
  external applyTo : [> qGraphicsRotation] Qt.t -> [> qMatrix4x4] Qt.t -> unit = "mlqt_QGraphicsRotation_applyTo"
  external originChanged : [> qGraphicsRotation] Qt.t -> unit = "mlqt_QGraphicsRotation_originChanged"
  external angleChanged : [> qGraphicsRotation] Qt.t -> unit = "mlqt_QGraphicsRotation_angleChanged"
  external axisChanged : [> qGraphicsRotation] Qt.t -> unit = "mlqt_QGraphicsRotation_axisChanged"
end
external new'QGraphicsColorizeEffect : [> qObject] Qt.t -> qGraphicsColorizeEffect Qt.t = "mlqt_QGraphicsColorizeEffect_new_"
module QGraphicsColorizeEffect = struct
  include QGraphicsEffect
  external class' : unit -> qGraphicsColorizeEffect Qt.qt_class = "mlqt_class_QGraphicsColorizeEffect" [@@noalloc]
  external color : [> qGraphicsColorizeEffect] Qt.t -> qColor Qt.t = "mlqt_QGraphicsColorizeEffect_color"
  external strength : [> qGraphicsColorizeEffect] Qt.t -> float = "mlqt_QGraphicsColorizeEffect_strength"
  external setColor : [> qGraphicsColorizeEffect] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QGraphicsColorizeEffect_setColor"
  external setStrength : [> qGraphicsColorizeEffect] Qt.t -> float -> unit = "mlqt_QGraphicsColorizeEffect_setStrength"
  external colorChanged : [> qGraphicsColorizeEffect] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QGraphicsColorizeEffect_colorChanged"
  external strengthChanged : [> qGraphicsColorizeEffect] Qt.t -> float -> unit = "mlqt_QGraphicsColorizeEffect_strengthChanged"
end
external new'QGraphicsBlurEffect : [> qObject] Qt.t -> qGraphicsBlurEffect Qt.t = "mlqt_QGraphicsBlurEffect_new_"
module QGraphicsBlurEffect = struct
  include QGraphicsEffect
  external class' : unit -> qGraphicsBlurEffect Qt.qt_class = "mlqt_class_QGraphicsBlurEffect" [@@noalloc]
  external boundingRectFor : [> qGraphicsBlurEffect] Qt.t -> qRectF -> qRectF = "mlqt_QGraphicsBlurEffect_boundingRectFor"
  external blurRadius : [> qGraphicsBlurEffect] Qt.t -> float = "mlqt_QGraphicsBlurEffect_blurRadius"
  external blurHints : [> qGraphicsBlurEffect] Qt.t -> qGraphicsBlurEffect'BlurHints = "mlqt_QGraphicsBlurEffect_blurHints"
  external setBlurRadius : [> qGraphicsBlurEffect] Qt.t -> float -> unit = "mlqt_QGraphicsBlurEffect_setBlurRadius"
  external setBlurHints : [> qGraphicsBlurEffect] Qt.t -> qGraphicsBlurEffect'BlurHints -> unit = "mlqt_QGraphicsBlurEffect_setBlurHints"
  external blurRadiusChanged : [> qGraphicsBlurEffect] Qt.t -> float -> unit = "mlqt_QGraphicsBlurEffect_blurRadiusChanged"
  external blurHintsChanged : [> qGraphicsBlurEffect] Qt.t -> qGraphicsBlurEffect'BlurHints -> unit = "mlqt_QGraphicsBlurEffect_blurHintsChanged"
end
external new'QGraphicsDropShadowEffect : [> qObject] Qt.t -> qGraphicsDropShadowEffect Qt.t = "mlqt_QGraphicsDropShadowEffect_new_"
module QGraphicsDropShadowEffect = struct
  include QGraphicsEffect
  external class' : unit -> qGraphicsDropShadowEffect Qt.qt_class = "mlqt_class_QGraphicsDropShadowEffect" [@@noalloc]
  external boundingRectFor : [> qGraphicsDropShadowEffect] Qt.t -> qRectF -> qRectF = "mlqt_QGraphicsDropShadowEffect_boundingRectFor"
  external offset : [> qGraphicsDropShadowEffect] Qt.t -> qPointF = "mlqt_QGraphicsDropShadowEffect_offset"
  external xOffset : [> qGraphicsDropShadowEffect] Qt.t -> float = "mlqt_QGraphicsDropShadowEffect_xOffset"
  external yOffset : [> qGraphicsDropShadowEffect] Qt.t -> float = "mlqt_QGraphicsDropShadowEffect_yOffset"
  external blurRadius : [> qGraphicsDropShadowEffect] Qt.t -> float = "mlqt_QGraphicsDropShadowEffect_blurRadius"
  external color : [> qGraphicsDropShadowEffect] Qt.t -> qColor Qt.t = "mlqt_QGraphicsDropShadowEffect_color"
  external setOffset : [> qGraphicsDropShadowEffect] Qt.t -> qPointF -> unit = "mlqt_QGraphicsDropShadowEffect_setOffset"
  external setOffset1 : [> qGraphicsDropShadowEffect] Qt.t -> float -> float -> unit = "mlqt_QGraphicsDropShadowEffect_setOffset1"
  external setOffset2 : [> qGraphicsDropShadowEffect] Qt.t -> float -> unit = "mlqt_QGraphicsDropShadowEffect_setOffset2"
  external setXOffset : [> qGraphicsDropShadowEffect] Qt.t -> float -> unit = "mlqt_QGraphicsDropShadowEffect_setXOffset"
  external setYOffset : [> qGraphicsDropShadowEffect] Qt.t -> float -> unit = "mlqt_QGraphicsDropShadowEffect_setYOffset"
  external setBlurRadius : [> qGraphicsDropShadowEffect] Qt.t -> float -> unit = "mlqt_QGraphicsDropShadowEffect_setBlurRadius"
  external setColor : [> qGraphicsDropShadowEffect] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QGraphicsDropShadowEffect_setColor"
  external offsetChanged : [> qGraphicsDropShadowEffect] Qt.t -> qPointF -> unit = "mlqt_QGraphicsDropShadowEffect_offsetChanged"
  external blurRadiusChanged : [> qGraphicsDropShadowEffect] Qt.t -> float -> unit = "mlqt_QGraphicsDropShadowEffect_blurRadiusChanged"
  external colorChanged : [> qGraphicsDropShadowEffect] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QGraphicsDropShadowEffect_colorChanged"
end
external new'QGraphicsOpacityEffect : [> qObject] Qt.t -> qGraphicsOpacityEffect Qt.t = "mlqt_QGraphicsOpacityEffect_new_"
module QGraphicsOpacityEffect = struct
  include QGraphicsEffect
  external class' : unit -> qGraphicsOpacityEffect Qt.qt_class = "mlqt_class_QGraphicsOpacityEffect" [@@noalloc]
  external opacity : [> qGraphicsOpacityEffect] Qt.t -> float = "mlqt_QGraphicsOpacityEffect_opacity"
  external opacityMask : [> qGraphicsOpacityEffect] Qt.t -> qBrush Qt.t = "mlqt_QGraphicsOpacityEffect_opacityMask"
  external setOpacity : [> qGraphicsOpacityEffect] Qt.t -> float -> unit = "mlqt_QGraphicsOpacityEffect_setOpacity"
  external setOpacityMask : [> qGraphicsOpacityEffect] Qt.t -> [> qBrush] Qt.t -> unit = "mlqt_QGraphicsOpacityEffect_setOpacityMask"
  external opacityChanged : [> qGraphicsOpacityEffect] Qt.t -> float -> unit = "mlqt_QGraphicsOpacityEffect_opacityChanged"
  external opacityMaskChanged : [> qGraphicsOpacityEffect] Qt.t -> [> qBrush] Qt.t -> unit = "mlqt_QGraphicsOpacityEffect_opacityMaskChanged"
end
module QGraphicsSceneMouseEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneWheelEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneContextMenuEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneHoverEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneHelpEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneDragDropEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneResizeEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsSceneMoveEvent = struct
  include QGraphicsSceneEvent
end
module QGraphicsAnchorLayout = struct
  include QGraphicsLayout
end
module QGraphicsGridLayout = struct
  include QGraphicsLayout
end
module QGraphicsLinearLayout = struct
  include QGraphicsLayout
end
module QGraphicsPathItem = struct
  include QAbstractGraphicsShapeItem
end
module QGraphicsRectItem = struct
  include QAbstractGraphicsShapeItem
end
module QGraphicsEllipseItem = struct
  include QAbstractGraphicsShapeItem
end
module QGraphicsPolygonItem = struct
  include QAbstractGraphicsShapeItem
end
module QGraphicsSimpleTextItem = struct
  include QAbstractGraphicsShapeItem
end
module QGraphicsTextItem = struct
  include QGraphicsObject
  external class' : unit -> qGraphicsTextItem Qt.qt_class = "mlqt_class_QGraphicsTextItem" [@@noalloc]
end
module QGraphicsWidget = struct
  include QGraphicsObject
  external class' : unit -> qGraphicsWidget Qt.qt_class = "mlqt_class_QGraphicsWidget" [@@noalloc]
end
external new'QDialog : [> qWidget] Qt.t option -> qt'WindowFlags -> qDialog Qt.t = "mlqt_QDialog_new_"
module QDialog = struct
  include QWidget
  external class' : unit -> qDialog Qt.qt_class = "mlqt_class_QDialog" [@@noalloc]
  external result : [> qDialog] Qt.t -> int = "mlqt_QDialog_result"
  external setVisible : [> qDialog] Qt.t -> bool -> unit = "mlqt_QDialog_setVisible"
  external setOrientation : [> qDialog] Qt.t -> qt'Orientation -> unit = "mlqt_QDialog_setOrientation"
  external orientation : [> qDialog] Qt.t -> qt'Orientation = "mlqt_QDialog_orientation"
  external setExtension : [> qDialog] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QDialog_setExtension"
  external extension : [> qDialog] Qt.t -> qWidget Qt.t = "mlqt_QDialog_extension"
  external sizeHint : [> qDialog] Qt.t -> qSize = "mlqt_QDialog_sizeHint"
  external minimumSizeHint : [> qDialog] Qt.t -> qSize = "mlqt_QDialog_minimumSizeHint"
  external setSizeGripEnabled : [> qDialog] Qt.t -> bool -> unit = "mlqt_QDialog_setSizeGripEnabled"
  external isSizeGripEnabled : [> qDialog] Qt.t -> bool = "mlqt_QDialog_isSizeGripEnabled"
  external setModal : [> qDialog] Qt.t -> bool -> unit = "mlqt_QDialog_setModal"
  external setResult : [> qDialog] Qt.t -> int -> unit = "mlqt_QDialog_setResult"
  external finished : [> qDialog] Qt.t -> int -> unit = "mlqt_QDialog_finished"
  external accepted : [> qDialog] Qt.t -> unit = "mlqt_QDialog_accepted"
  external rejected : [> qDialog] Qt.t -> unit = "mlqt_QDialog_rejected"
  external open_ : [> qDialog] Qt.t -> unit = "mlqt_QDialog_open_"
  external exec : [> qDialog] Qt.t -> int = "mlqt_QDialog_exec"
  external done_ : [> qDialog] Qt.t -> int -> unit = "mlqt_QDialog_done_"
  external accept : [> qDialog] Qt.t -> unit = "mlqt_QDialog_accept"
  external reject : [> qDialog] Qt.t -> unit = "mlqt_QDialog_reject"
  external showExtension : [> qDialog] Qt.t -> bool -> unit = "mlqt_QDialog_showExtension"
  external signal'accepted1 : unit -> ([> qDialog], unit) Qt.signal = "mlqt_signal_QDialog_accepted1" [@@noalloc]
  external signal'finished1 : unit -> ([> qDialog], int) Qt.signal = "mlqt_signal_QDialog_finished1" [@@noalloc]
  external signal'rejected1 : unit -> ([> qDialog], unit) Qt.signal = "mlqt_signal_QDialog_rejected1" [@@noalloc]
  external slot'accept1 : unit -> ([> qDialog], unit) Qt.slot = "mlqt_slot_QDialog_accept1" [@@noalloc]
  external slot'done_1 : unit -> ([> qDialog], int) Qt.slot = "mlqt_slot_QDialog_done_1" [@@noalloc]
  external slot'exec1 : unit -> ([> qDialog], unit) Qt.slot = "mlqt_slot_QDialog_exec1" [@@noalloc]
  external slot'open_1 : unit -> ([> qDialog], unit) Qt.slot = "mlqt_slot_QDialog_open_1" [@@noalloc]
  external slot'reject1 : unit -> ([> qDialog], unit) Qt.slot = "mlqt_slot_QDialog_reject1" [@@noalloc]
  external slot'showExtension1 : unit -> ([> qDialog], bool) Qt.slot = "mlqt_slot_QDialog_showExtension1" [@@noalloc]
end
external new'QWizardPage : [> qWidget] Qt.t option -> qWizardPage Qt.t = "mlqt_QWizardPage_new_"
module QWizardPage = struct
  include QWidget
  external class' : unit -> qWizardPage Qt.qt_class = "mlqt_class_QWizardPage" [@@noalloc]
  external setTitle : [> qWizardPage] Qt.t -> string -> unit = "mlqt_QWizardPage_setTitle"
  external title : [> qWizardPage] Qt.t -> string = "mlqt_QWizardPage_title"
  external setSubTitle : [> qWizardPage] Qt.t -> string -> unit = "mlqt_QWizardPage_setSubTitle"
  external subTitle : [> qWizardPage] Qt.t -> string = "mlqt_QWizardPage_subTitle"
  external setFinalPage : [> qWizardPage] Qt.t -> bool -> unit = "mlqt_QWizardPage_setFinalPage"
  external isFinalPage : [> qWizardPage] Qt.t -> bool = "mlqt_QWizardPage_isFinalPage"
  external setCommitPage : [> qWizardPage] Qt.t -> bool -> unit = "mlqt_QWizardPage_setCommitPage"
  external isCommitPage : [> qWizardPage] Qt.t -> bool = "mlqt_QWizardPage_isCommitPage"
  external setButtonText : [> qWizardPage] Qt.t -> qWizard'WizardButton -> string -> unit = "mlqt_QWizardPage_setButtonText"
  external buttonText : [> qWizardPage] Qt.t -> qWizard'WizardButton -> string = "mlqt_QWizardPage_buttonText"
  external initializePage : [> qWizardPage] Qt.t -> unit = "mlqt_QWizardPage_initializePage"
  external cleanupPage : [> qWizardPage] Qt.t -> unit = "mlqt_QWizardPage_cleanupPage"
  external validatePage : [> qWizardPage] Qt.t -> bool = "mlqt_QWizardPage_validatePage"
  external isComplete : [> qWizardPage] Qt.t -> bool = "mlqt_QWizardPage_isComplete"
  external nextId : [> qWizardPage] Qt.t -> int = "mlqt_QWizardPage_nextId"
  external completeChanged : [> qWizardPage] Qt.t -> unit = "mlqt_QWizardPage_completeChanged"
end
module QDesktopWidget = struct
  include QWidget
  external class' : unit -> qDesktopWidget Qt.qt_class = "mlqt_class_QDesktopWidget" [@@noalloc]
  external signal'primaryScreenChanged : unit -> ([> qDesktopWidget], unit) Qt.signal = "mlqt_signal_QDesktopWidget_primaryScreenChanged" [@@noalloc]
  external signal'resized : unit -> ([> qDesktopWidget], int) Qt.signal = "mlqt_signal_QDesktopWidget_resized" [@@noalloc]
  external signal'screenCountChanged : unit -> ([> qDesktopWidget], int) Qt.signal = "mlqt_signal_QDesktopWidget_screenCountChanged" [@@noalloc]
  external signal'workAreaResized : unit -> ([> qDesktopWidget], int) Qt.signal = "mlqt_signal_QDesktopWidget_workAreaResized" [@@noalloc]
  external slot'_q_availableGeometryChanged : unit -> ([> qDesktopWidget], unit) Qt.slot = "mlqt_slot_QDesktopWidget__q_availableGeometryChanged" [@@noalloc]
  external slot'_q_updateScreens : unit -> ([> qDesktopWidget], unit) Qt.slot = "mlqt_slot_QDesktopWidget__q_updateScreens" [@@noalloc]
end
external new'QOpenGLWidget : [> qWidget] Qt.t option -> qt'WindowFlags -> qOpenGLWidget Qt.t = "mlqt_QOpenGLWidget_new_"
module QOpenGLWidget = struct
  include QWidget
  external class' : unit -> qOpenGLWidget Qt.qt_class = "mlqt_class_QOpenGLWidget" [@@noalloc]
  external setUpdateBehavior : [> qOpenGLWidget] Qt.t -> qOpenGLWidget'UpdateBehavior -> unit = "mlqt_QOpenGLWidget_setUpdateBehavior"
  external updateBehavior : [> qOpenGLWidget] Qt.t -> qOpenGLWidget'UpdateBehavior = "mlqt_QOpenGLWidget_updateBehavior"
  external isValid : [> qOpenGLWidget] Qt.t -> bool = "mlqt_QOpenGLWidget_isValid"
  external makeCurrent : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_makeCurrent"
  external doneCurrent : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_doneCurrent"
  external context : [> qOpenGLWidget] Qt.t -> qOpenGLContext Qt.t = "mlqt_QOpenGLWidget_context"
  external defaultFramebufferObject : [> qOpenGLWidget] Qt.t -> nativeint = "mlqt_QOpenGLWidget_defaultFramebufferObject"
  external aboutToCompose : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_aboutToCompose"
  external frameSwapped : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_frameSwapped"
  external aboutToResize : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_aboutToResize"
  external resized : [> qOpenGLWidget] Qt.t -> unit = "mlqt_QOpenGLWidget_resized"
end
external new'QAbstractSlider : [> qWidget] Qt.t option -> qAbstractSlider Qt.t = "mlqt_QAbstractSlider_new_"
module QAbstractSlider = struct
  include QWidget
  external class' : unit -> qAbstractSlider Qt.qt_class = "mlqt_class_QAbstractSlider" [@@noalloc]
  external orientation : [> qAbstractSlider] Qt.t -> qt'Orientation = "mlqt_QAbstractSlider_orientation"
  external setMinimum : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setMinimum"
  external minimum : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_minimum"
  external setMaximum : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setMaximum"
  external maximum : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_maximum"
  external setSingleStep : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setSingleStep"
  external singleStep : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_singleStep"
  external setPageStep : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setPageStep"
  external pageStep : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_pageStep"
  external setTracking : [> qAbstractSlider] Qt.t -> bool -> unit = "mlqt_QAbstractSlider_setTracking"
  external hasTracking : [> qAbstractSlider] Qt.t -> bool = "mlqt_QAbstractSlider_hasTracking"
  external setSliderDown : [> qAbstractSlider] Qt.t -> bool -> unit = "mlqt_QAbstractSlider_setSliderDown"
  external isSliderDown : [> qAbstractSlider] Qt.t -> bool = "mlqt_QAbstractSlider_isSliderDown"
  external setSliderPosition : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setSliderPosition"
  external sliderPosition : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_sliderPosition"
  external setInvertedAppearance : [> qAbstractSlider] Qt.t -> bool -> unit = "mlqt_QAbstractSlider_setInvertedAppearance"
  external invertedAppearance : [> qAbstractSlider] Qt.t -> bool = "mlqt_QAbstractSlider_invertedAppearance"
  external setInvertedControls : [> qAbstractSlider] Qt.t -> bool -> unit = "mlqt_QAbstractSlider_setInvertedControls"
  external invertedControls : [> qAbstractSlider] Qt.t -> bool = "mlqt_QAbstractSlider_invertedControls"
  external value : [> qAbstractSlider] Qt.t -> int = "mlqt_QAbstractSlider_value"
  external triggerAction : [> qAbstractSlider] Qt.t -> qAbstractSlider'SliderAction -> unit = "mlqt_QAbstractSlider_triggerAction"
  external setValue : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_setValue"
  external setOrientation : [> qAbstractSlider] Qt.t -> qt'Orientation -> unit = "mlqt_QAbstractSlider_setOrientation"
  external setRange : [> qAbstractSlider] Qt.t -> int -> int -> unit = "mlqt_QAbstractSlider_setRange"
  external valueChanged : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_valueChanged"
  external sliderPressed : [> qAbstractSlider] Qt.t -> unit = "mlqt_QAbstractSlider_sliderPressed"
  external sliderMoved : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_sliderMoved"
  external sliderReleased : [> qAbstractSlider] Qt.t -> unit = "mlqt_QAbstractSlider_sliderReleased"
  external rangeChanged : [> qAbstractSlider] Qt.t -> int -> int -> unit = "mlqt_QAbstractSlider_rangeChanged"
  external actionTriggered : [> qAbstractSlider] Qt.t -> int -> unit = "mlqt_QAbstractSlider_actionTriggered"
  external signal'actionTriggered1 : unit -> ([> qAbstractSlider], int) Qt.signal = "mlqt_signal_QAbstractSlider_actionTriggered1" [@@noalloc]
  external signal'rangeChanged1 : unit -> ([> qAbstractSlider], int * int) Qt.signal = "mlqt_signal_QAbstractSlider_rangeChanged1" [@@noalloc]
  external signal'sliderMoved1 : unit -> ([> qAbstractSlider], int) Qt.signal = "mlqt_signal_QAbstractSlider_sliderMoved1" [@@noalloc]
  external signal'sliderPressed1 : unit -> ([> qAbstractSlider], unit) Qt.signal = "mlqt_signal_QAbstractSlider_sliderPressed1" [@@noalloc]
  external signal'sliderReleased1 : unit -> ([> qAbstractSlider], unit) Qt.signal = "mlqt_signal_QAbstractSlider_sliderReleased1" [@@noalloc]
  external signal'valueChanged1 : unit -> ([> qAbstractSlider], int) Qt.signal = "mlqt_signal_QAbstractSlider_valueChanged1" [@@noalloc]
  external slot'setOrientation1 : unit -> ([> qAbstractSlider], qt'Orientation) Qt.slot = "mlqt_slot_QAbstractSlider_setOrientation1" [@@noalloc]
  external slot'setRange1 : unit -> ([> qAbstractSlider], int * int) Qt.slot = "mlqt_slot_QAbstractSlider_setRange1" [@@noalloc]
  external slot'setValue1 : unit -> ([> qAbstractSlider], int) Qt.slot = "mlqt_slot_QAbstractSlider_setValue1" [@@noalloc]
end
external new'QAbstractSpinBox : [> qWidget] Qt.t option -> qAbstractSpinBox Qt.t = "mlqt_QAbstractSpinBox_new_"
module QAbstractSpinBox = struct
  include QWidget
  external class' : unit -> qAbstractSpinBox Qt.qt_class = "mlqt_class_QAbstractSpinBox" [@@noalloc]
  external buttonSymbols : [> qAbstractSpinBox] Qt.t -> qAbstractSpinBox'ButtonSymbols = "mlqt_QAbstractSpinBox_buttonSymbols"
  external setButtonSymbols : [> qAbstractSpinBox] Qt.t -> qAbstractSpinBox'ButtonSymbols -> unit = "mlqt_QAbstractSpinBox_setButtonSymbols"
  external setCorrectionMode : [> qAbstractSpinBox] Qt.t -> qAbstractSpinBox'CorrectionMode -> unit = "mlqt_QAbstractSpinBox_setCorrectionMode"
  external correctionMode : [> qAbstractSpinBox] Qt.t -> qAbstractSpinBox'CorrectionMode = "mlqt_QAbstractSpinBox_correctionMode"
  external hasAcceptableInput : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_hasAcceptableInput"
  external text : [> qAbstractSpinBox] Qt.t -> string = "mlqt_QAbstractSpinBox_text"
  external specialValueText : [> qAbstractSpinBox] Qt.t -> string = "mlqt_QAbstractSpinBox_specialValueText"
  external setSpecialValueText : [> qAbstractSpinBox] Qt.t -> string -> unit = "mlqt_QAbstractSpinBox_setSpecialValueText"
  external wrapping : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_wrapping"
  external setWrapping : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setWrapping"
  external setReadOnly : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setReadOnly"
  external isReadOnly : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_isReadOnly"
  external setKeyboardTracking : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setKeyboardTracking"
  external keyboardTracking : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_keyboardTracking"
  external setAlignment : [> qAbstractSpinBox] Qt.t -> qt'Alignment -> unit = "mlqt_QAbstractSpinBox_setAlignment"
  external alignment : [> qAbstractSpinBox] Qt.t -> qt'Alignment = "mlqt_QAbstractSpinBox_alignment"
  external setFrame : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setFrame"
  external hasFrame : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_hasFrame"
  external setAccelerated : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setAccelerated"
  external isAccelerated : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_isAccelerated"
  external setGroupSeparatorShown : [> qAbstractSpinBox] Qt.t -> bool -> unit = "mlqt_QAbstractSpinBox_setGroupSeparatorShown"
  external isGroupSeparatorShown : [> qAbstractSpinBox] Qt.t -> bool = "mlqt_QAbstractSpinBox_isGroupSeparatorShown"
  external sizeHint : [> qAbstractSpinBox] Qt.t -> qSize = "mlqt_QAbstractSpinBox_sizeHint"
  external minimumSizeHint : [> qAbstractSpinBox] Qt.t -> qSize = "mlqt_QAbstractSpinBox_minimumSizeHint"
  external interpretText : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_interpretText"
  external event : [> qAbstractSpinBox] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QAbstractSpinBox_event"
  external stepBy : [> qAbstractSpinBox] Qt.t -> int -> unit = "mlqt_QAbstractSpinBox_stepBy"
  external stepUp : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_stepUp"
  external stepDown : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_stepDown"
  external selectAll : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_selectAll"
  external clear : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_clear"
  external editingFinished : [> qAbstractSpinBox] Qt.t -> unit = "mlqt_QAbstractSpinBox_editingFinished"
  external signal'editingFinished1 : unit -> ([> qAbstractSpinBox], unit) Qt.signal = "mlqt_signal_QAbstractSpinBox_editingFinished1" [@@noalloc]
  external slot'clear1 : unit -> ([> qAbstractSpinBox], unit) Qt.slot = "mlqt_slot_QAbstractSpinBox_clear1" [@@noalloc]
  external slot'_q_editorCursorPositionChanged : unit -> ([> qAbstractSpinBox], int * int) Qt.slot = "mlqt_slot_QAbstractSpinBox__q_editorCursorPositionChanged" [@@noalloc]
  external slot'_q_editorTextChanged : unit -> ([> qAbstractSpinBox], string) Qt.slot = "mlqt_slot_QAbstractSpinBox__q_editorTextChanged" [@@noalloc]
  external slot'selectAll1 : unit -> ([> qAbstractSpinBox], unit) Qt.slot = "mlqt_slot_QAbstractSpinBox_selectAll1" [@@noalloc]
  external slot'stepDown1 : unit -> ([> qAbstractSpinBox], unit) Qt.slot = "mlqt_slot_QAbstractSpinBox_stepDown1" [@@noalloc]
  external slot'stepUp1 : unit -> ([> qAbstractSpinBox], unit) Qt.slot = "mlqt_slot_QAbstractSpinBox_stepUp1" [@@noalloc]
end
external new'QCalendarWidget : [> qWidget] Qt.t option -> qCalendarWidget Qt.t = "mlqt_QCalendarWidget_new_"
module QCalendarWidget = struct
  include QWidget
  external class' : unit -> qCalendarWidget Qt.qt_class = "mlqt_class_QCalendarWidget" [@@noalloc]
  external sizeHint : [> qCalendarWidget] Qt.t -> qSize = "mlqt_QCalendarWidget_sizeHint"
  external minimumSizeHint : [> qCalendarWidget] Qt.t -> qSize = "mlqt_QCalendarWidget_minimumSizeHint"
  external selectedDate : [> qCalendarWidget] Qt.t -> qDate Qt.t = "mlqt_QCalendarWidget_selectedDate"
  external yearShown : [> qCalendarWidget] Qt.t -> int = "mlqt_QCalendarWidget_yearShown"
  external monthShown : [> qCalendarWidget] Qt.t -> int = "mlqt_QCalendarWidget_monthShown"
  external minimumDate : [> qCalendarWidget] Qt.t -> qDate Qt.t = "mlqt_QCalendarWidget_minimumDate"
  external setMinimumDate : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_setMinimumDate"
  external maximumDate : [> qCalendarWidget] Qt.t -> qDate Qt.t = "mlqt_QCalendarWidget_maximumDate"
  external setMaximumDate : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_setMaximumDate"
  external firstDayOfWeek : [> qCalendarWidget] Qt.t -> qt'DayOfWeek = "mlqt_QCalendarWidget_firstDayOfWeek"
  external setFirstDayOfWeek : [> qCalendarWidget] Qt.t -> qt'DayOfWeek -> unit = "mlqt_QCalendarWidget_setFirstDayOfWeek"
  external isNavigationBarVisible : [> qCalendarWidget] Qt.t -> bool = "mlqt_QCalendarWidget_isNavigationBarVisible"
  external isGridVisible : [> qCalendarWidget] Qt.t -> bool = "mlqt_QCalendarWidget_isGridVisible"
  external selectionMode : [> qCalendarWidget] Qt.t -> qCalendarWidget'SelectionMode = "mlqt_QCalendarWidget_selectionMode"
  external setSelectionMode : [> qCalendarWidget] Qt.t -> qCalendarWidget'SelectionMode -> unit = "mlqt_QCalendarWidget_setSelectionMode"
  external horizontalHeaderFormat : [> qCalendarWidget] Qt.t -> qCalendarWidget'HorizontalHeaderFormat = "mlqt_QCalendarWidget_horizontalHeaderFormat"
  external setHorizontalHeaderFormat : [> qCalendarWidget] Qt.t -> qCalendarWidget'HorizontalHeaderFormat -> unit = "mlqt_QCalendarWidget_setHorizontalHeaderFormat"
  external verticalHeaderFormat : [> qCalendarWidget] Qt.t -> qCalendarWidget'VerticalHeaderFormat = "mlqt_QCalendarWidget_verticalHeaderFormat"
  external setVerticalHeaderFormat : [> qCalendarWidget] Qt.t -> qCalendarWidget'VerticalHeaderFormat -> unit = "mlqt_QCalendarWidget_setVerticalHeaderFormat"
  external headerTextFormat : [> qCalendarWidget] Qt.t -> qTextCharFormat Qt.t = "mlqt_QCalendarWidget_headerTextFormat"
  external setHeaderTextFormat : [> qCalendarWidget] Qt.t -> [> qTextCharFormat] Qt.t -> unit = "mlqt_QCalendarWidget_setHeaderTextFormat"
  external weekdayTextFormat : [> qCalendarWidget] Qt.t -> qt'DayOfWeek -> qTextCharFormat Qt.t = "mlqt_QCalendarWidget_weekdayTextFormat"
  external setWeekdayTextFormat : [> qCalendarWidget] Qt.t -> qt'DayOfWeek -> [> qTextCharFormat] Qt.t -> unit = "mlqt_QCalendarWidget_setWeekdayTextFormat"
  external dateTextFormat : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> qTextCharFormat Qt.t = "mlqt_QCalendarWidget_dateTextFormat"
  external setDateTextFormat : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> [> qTextCharFormat] Qt.t -> unit = "mlqt_QCalendarWidget_setDateTextFormat"
  external isDateEditEnabled : [> qCalendarWidget] Qt.t -> bool = "mlqt_QCalendarWidget_isDateEditEnabled"
  external setDateEditEnabled : [> qCalendarWidget] Qt.t -> bool -> unit = "mlqt_QCalendarWidget_setDateEditEnabled"
  external dateEditAcceptDelay : [> qCalendarWidget] Qt.t -> int = "mlqt_QCalendarWidget_dateEditAcceptDelay"
  external setDateEditAcceptDelay : [> qCalendarWidget] Qt.t -> int -> unit = "mlqt_QCalendarWidget_setDateEditAcceptDelay"
  external setSelectedDate : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_setSelectedDate"
  external setDateRange : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_setDateRange"
  external setCurrentPage : [> qCalendarWidget] Qt.t -> int -> int -> unit = "mlqt_QCalendarWidget_setCurrentPage"
  external setGridVisible : [> qCalendarWidget] Qt.t -> bool -> unit = "mlqt_QCalendarWidget_setGridVisible"
  external setNavigationBarVisible : [> qCalendarWidget] Qt.t -> bool -> unit = "mlqt_QCalendarWidget_setNavigationBarVisible"
  external showNextMonth : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showNextMonth"
  external showPreviousMonth : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showPreviousMonth"
  external showNextYear : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showNextYear"
  external showPreviousYear : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showPreviousYear"
  external showSelectedDate : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showSelectedDate"
  external showToday : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_showToday"
  external selectionChanged : [> qCalendarWidget] Qt.t -> unit = "mlqt_QCalendarWidget_selectionChanged"
  external clicked : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_clicked"
  external activated : [> qCalendarWidget] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QCalendarWidget_activated"
  external currentPageChanged : [> qCalendarWidget] Qt.t -> int -> int -> unit = "mlqt_QCalendarWidget_currentPageChanged"
  external signal'activated1 : unit -> ([> qCalendarWidget], qDate Qt.t) Qt.signal = "mlqt_signal_QCalendarWidget_activated1" [@@noalloc]
  external signal'clicked1 : unit -> ([> qCalendarWidget], qDate Qt.t) Qt.signal = "mlqt_signal_QCalendarWidget_clicked1" [@@noalloc]
  external signal'currentPageChanged1 : unit -> ([> qCalendarWidget], int * int) Qt.signal = "mlqt_signal_QCalendarWidget_currentPageChanged1" [@@noalloc]
  external signal'selectionChanged1 : unit -> ([> qCalendarWidget], unit) Qt.signal = "mlqt_signal_QCalendarWidget_selectionChanged1" [@@noalloc]
  external slot'_q_editingFinished : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget__q_editingFinished" [@@noalloc]
  external slot'_q_monthChanged : unit -> ([> qCalendarWidget], [> qAction] Qt.t) Qt.slot = "mlqt_slot_QCalendarWidget__q_monthChanged" [@@noalloc]
  external slot'_q_nextMonthClicked : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget__q_nextMonthClicked" [@@noalloc]
  external slot'_q_prevMonthClicked : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget__q_prevMonthClicked" [@@noalloc]
  external slot'_q_slotChangeDate : unit -> ([> qCalendarWidget], [> qDate] Qt.t) Qt.slot = "mlqt_slot_QCalendarWidget__q_slotChangeDate" [@@noalloc]
  external slot'_q_slotChangeDate1 : unit -> ([> qCalendarWidget], [> qDate] Qt.t * bool) Qt.slot = "mlqt_slot_QCalendarWidget__q_slotChangeDate1" [@@noalloc]
  external slot'_q_slotShowDate : unit -> ([> qCalendarWidget], [> qDate] Qt.t) Qt.slot = "mlqt_slot_QCalendarWidget__q_slotShowDate" [@@noalloc]
  external slot'_q_yearClicked : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget__q_yearClicked" [@@noalloc]
  external slot'_q_yearEditingFinished : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget__q_yearEditingFinished" [@@noalloc]
  external slot'setCurrentPage1 : unit -> ([> qCalendarWidget], int * int) Qt.slot = "mlqt_slot_QCalendarWidget_setCurrentPage1" [@@noalloc]
  external slot'setDateRange1 : unit -> ([> qCalendarWidget], [> qDate] Qt.t * [> qDate] Qt.t) Qt.slot = "mlqt_slot_QCalendarWidget_setDateRange1" [@@noalloc]
  external slot'setGridVisible1 : unit -> ([> qCalendarWidget], bool) Qt.slot = "mlqt_slot_QCalendarWidget_setGridVisible1" [@@noalloc]
  external slot'setNavigationBarVisible1 : unit -> ([> qCalendarWidget], bool) Qt.slot = "mlqt_slot_QCalendarWidget_setNavigationBarVisible1" [@@noalloc]
  external slot'setSelectedDate1 : unit -> ([> qCalendarWidget], [> qDate] Qt.t) Qt.slot = "mlqt_slot_QCalendarWidget_setSelectedDate1" [@@noalloc]
  external slot'showNextMonth1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showNextMonth1" [@@noalloc]
  external slot'showNextYear1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showNextYear1" [@@noalloc]
  external slot'showPreviousMonth1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showPreviousMonth1" [@@noalloc]
  external slot'showPreviousYear1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showPreviousYear1" [@@noalloc]
  external slot'showSelectedDate1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showSelectedDate1" [@@noalloc]
  external slot'showToday1 : unit -> ([> qCalendarWidget], unit) Qt.slot = "mlqt_slot_QCalendarWidget_showToday1" [@@noalloc]
end
external new'QComboBox : [> qWidget] Qt.t option -> qComboBox Qt.t = "mlqt_QComboBox_new_"
module QComboBox = struct
  include QWidget
  external class' : unit -> qComboBox Qt.qt_class = "mlqt_class_QComboBox" [@@noalloc]
  external maxVisibleItems : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_maxVisibleItems"
  external setMaxVisibleItems : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_setMaxVisibleItems"
  external count : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_count"
  external setMaxCount : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_setMaxCount"
  external maxCount : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_maxCount"
  external autoCompletion : [> qComboBox] Qt.t -> bool = "mlqt_QComboBox_autoCompletion"
  external setAutoCompletion : [> qComboBox] Qt.t -> bool -> unit = "mlqt_QComboBox_setAutoCompletion"
  external autoCompletionCaseSensitivity : [> qComboBox] Qt.t -> qt'CaseSensitivity = "mlqt_QComboBox_autoCompletionCaseSensitivity"
  external setAutoCompletionCaseSensitivity : [> qComboBox] Qt.t -> qt'CaseSensitivity -> unit = "mlqt_QComboBox_setAutoCompletionCaseSensitivity"
  external duplicatesEnabled : [> qComboBox] Qt.t -> bool = "mlqt_QComboBox_duplicatesEnabled"
  external setDuplicatesEnabled : [> qComboBox] Qt.t -> bool -> unit = "mlqt_QComboBox_setDuplicatesEnabled"
  external setFrame : [> qComboBox] Qt.t -> bool -> unit = "mlqt_QComboBox_setFrame"
  external hasFrame : [> qComboBox] Qt.t -> bool = "mlqt_QComboBox_hasFrame"
  external findText : [> qComboBox] Qt.t -> string -> qt'MatchFlags -> int = "mlqt_QComboBox_findText"
  external findData : [> qComboBox] Qt.t -> QVariant.t -> int -> qt'MatchFlags -> int = "mlqt_QComboBox_findData"
  external insertPolicy : [> qComboBox] Qt.t -> qComboBox'InsertPolicy = "mlqt_QComboBox_insertPolicy"
  external setInsertPolicy : [> qComboBox] Qt.t -> qComboBox'InsertPolicy -> unit = "mlqt_QComboBox_setInsertPolicy"
  external sizeAdjustPolicy : [> qComboBox] Qt.t -> qComboBox'SizeAdjustPolicy = "mlqt_QComboBox_sizeAdjustPolicy"
  external setSizeAdjustPolicy : [> qComboBox] Qt.t -> qComboBox'SizeAdjustPolicy -> unit = "mlqt_QComboBox_setSizeAdjustPolicy"
  external minimumContentsLength : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_minimumContentsLength"
  external setMinimumContentsLength : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_setMinimumContentsLength"
  external iconSize : [> qComboBox] Qt.t -> qSize = "mlqt_QComboBox_iconSize"
  external setIconSize : [> qComboBox] Qt.t -> qSize -> unit = "mlqt_QComboBox_setIconSize"
  external isEditable : [> qComboBox] Qt.t -> bool = "mlqt_QComboBox_isEditable"
  external setEditable : [> qComboBox] Qt.t -> bool -> unit = "mlqt_QComboBox_setEditable"
  external setLineEdit : [> qComboBox] Qt.t -> [> qLineEdit] Qt.t -> unit = "mlqt_QComboBox_setLineEdit"
  external lineEdit : [> qComboBox] Qt.t -> qLineEdit Qt.t = "mlqt_QComboBox_lineEdit"
  external setValidator : [> qComboBox] Qt.t -> [> qValidator] Qt.t -> unit = "mlqt_QComboBox_setValidator"
  external validator : [> qComboBox] Qt.t -> qValidator Qt.t = "mlqt_QComboBox_validator"
  external setCompleter : [> qComboBox] Qt.t -> [> qCompleter] Qt.t -> unit = "mlqt_QComboBox_setCompleter"
  external completer : [> qComboBox] Qt.t -> qCompleter Qt.t = "mlqt_QComboBox_completer"
  external itemDelegate : [> qComboBox] Qt.t -> qAbstractItemDelegate Qt.t = "mlqt_QComboBox_itemDelegate"
  external setItemDelegate : [> qComboBox] Qt.t -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QComboBox_setItemDelegate"
  external model : [> qComboBox] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QComboBox_model"
  external setModel : [> qComboBox] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QComboBox_setModel"
  external rootModelIndex : [> qComboBox] Qt.t -> qModelIndex Qt.t = "mlqt_QComboBox_rootModelIndex"
  external setRootModelIndex : [> qComboBox] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QComboBox_setRootModelIndex"
  external modelColumn : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_modelColumn"
  external setModelColumn : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_setModelColumn"
  external currentIndex : [> qComboBox] Qt.t -> int = "mlqt_QComboBox_currentIndex"
  external currentText : [> qComboBox] Qt.t -> string = "mlqt_QComboBox_currentText"
  external currentData : [> qComboBox] Qt.t -> int -> QVariant.t = "mlqt_QComboBox_currentData"
  external itemText : [> qComboBox] Qt.t -> int -> string = "mlqt_QComboBox_itemText"
  external itemIcon : [> qComboBox] Qt.t -> int -> qIcon Qt.t = "mlqt_QComboBox_itemIcon"
  external itemData : [> qComboBox] Qt.t -> int -> int -> QVariant.t = "mlqt_QComboBox_itemData"
  external addItem : [> qComboBox] Qt.t -> string -> QVariant.t -> unit = "mlqt_QComboBox_addItem"
  external addItem1 : [> qComboBox] Qt.t -> [> qIcon] Qt.t -> string -> QVariant.t -> unit = "mlqt_QComboBox_addItem1"
  external addItems : [> qComboBox] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QComboBox_addItems"
  external insertItem : [> qComboBox] Qt.t -> int -> string -> QVariant.t -> unit = "mlqt_QComboBox_insertItem"
  external insertItem1 : [> qComboBox] Qt.t -> int -> [> qIcon] Qt.t -> string -> QVariant.t -> unit = "mlqt_QComboBox_insertItem1"
  external insertItems : [> qComboBox] Qt.t -> int -> [> qStringList] Qt.t -> unit = "mlqt_QComboBox_insertItems"
  external insertSeparator : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_insertSeparator"
  external removeItem : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_removeItem"
  external setItemText : [> qComboBox] Qt.t -> int -> string -> unit = "mlqt_QComboBox_setItemText"
  external setItemIcon : [> qComboBox] Qt.t -> int -> [> qIcon] Qt.t -> unit = "mlqt_QComboBox_setItemIcon"
  external setItemData : [> qComboBox] Qt.t -> int -> QVariant.t -> int -> unit = "mlqt_QComboBox_setItemData"
  external view : [> qComboBox] Qt.t -> qAbstractItemView Qt.t = "mlqt_QComboBox_view"
  external setView : [> qComboBox] Qt.t -> [> qAbstractItemView] Qt.t -> unit = "mlqt_QComboBox_setView"
  external sizeHint : [> qComboBox] Qt.t -> qSize = "mlqt_QComboBox_sizeHint"
  external minimumSizeHint : [> qComboBox] Qt.t -> qSize = "mlqt_QComboBox_minimumSizeHint"
  external showPopup : [> qComboBox] Qt.t -> unit = "mlqt_QComboBox_showPopup"
  external hidePopup : [> qComboBox] Qt.t -> unit = "mlqt_QComboBox_hidePopup"
  external event : [> qComboBox] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QComboBox_event"
  external inputMethodQuery : [> qComboBox] Qt.t -> qt'InputMethodQuery -> QVariant.t = "mlqt_QComboBox_inputMethodQuery"
  external clear : [> qComboBox] Qt.t -> unit = "mlqt_QComboBox_clear"
  external clearEditText : [> qComboBox] Qt.t -> unit = "mlqt_QComboBox_clearEditText"
  external setEditText : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_setEditText"
  external setCurrentIndex : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_setCurrentIndex"
  external setCurrentText : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_setCurrentText"
  external editTextChanged : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_editTextChanged"
  external activated : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_activated"
  external activated1 : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_activated1"
  external highlighted : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_highlighted"
  external highlighted1 : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_highlighted1"
  external currentIndexChanged : [> qComboBox] Qt.t -> int -> unit = "mlqt_QComboBox_currentIndexChanged"
  external currentIndexChanged1 : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_currentIndexChanged1"
  external currentTextChanged : [> qComboBox] Qt.t -> string -> unit = "mlqt_QComboBox_currentTextChanged"
  external signal'activated2 : unit -> ([> qComboBox], int) Qt.signal = "mlqt_signal_QComboBox_activated2" [@@noalloc]
  external signal'activated3 : unit -> ([> qComboBox], string) Qt.signal = "mlqt_signal_QComboBox_activated3" [@@noalloc]
  external signal'currentIndexChanged2 : unit -> ([> qComboBox], int) Qt.signal = "mlqt_signal_QComboBox_currentIndexChanged2" [@@noalloc]
  external signal'currentIndexChanged3 : unit -> ([> qComboBox], string) Qt.signal = "mlqt_signal_QComboBox_currentIndexChanged3" [@@noalloc]
  external signal'currentTextChanged1 : unit -> ([> qComboBox], string) Qt.signal = "mlqt_signal_QComboBox_currentTextChanged1" [@@noalloc]
  external signal'editTextChanged1 : unit -> ([> qComboBox], string) Qt.signal = "mlqt_signal_QComboBox_editTextChanged1" [@@noalloc]
  external signal'highlighted2 : unit -> ([> qComboBox], int) Qt.signal = "mlqt_signal_QComboBox_highlighted2" [@@noalloc]
  external signal'highlighted3 : unit -> ([> qComboBox], string) Qt.signal = "mlqt_signal_QComboBox_highlighted3" [@@noalloc]
  external slot'clear1 : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox_clear1" [@@noalloc]
  external slot'clearEditText1 : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox_clearEditText1" [@@noalloc]
  external slot'_q_completerActivated : unit -> ([> qComboBox], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QComboBox__q_completerActivated" [@@noalloc]
  external slot'_q_dataChanged : unit -> ([> qComboBox], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QComboBox__q_dataChanged" [@@noalloc]
  external slot'_q_editingFinished : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_editingFinished" [@@noalloc]
  external slot'_q_emitCurrentIndexChanged : unit -> ([> qComboBox], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QComboBox__q_emitCurrentIndexChanged" [@@noalloc]
  external slot'_q_emitHighlighted : unit -> ([> qComboBox], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QComboBox__q_emitHighlighted" [@@noalloc]
  external slot'_q_itemSelected : unit -> ([> qComboBox], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QComboBox__q_itemSelected" [@@noalloc]
  external slot'_q_modelDestroyed : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_modelDestroyed" [@@noalloc]
  external slot'_q_modelReset : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_modelReset" [@@noalloc]
  external slot'_q_resetButton : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_resetButton" [@@noalloc]
  external slot'_q_returnPressed : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_returnPressed" [@@noalloc]
  external slot'_q_rowsInserted : unit -> ([> qComboBox], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QComboBox__q_rowsInserted" [@@noalloc]
  external slot'_q_rowsRemoved : unit -> ([> qComboBox], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QComboBox__q_rowsRemoved" [@@noalloc]
  external slot'_q_updateIndexBeforeChange : unit -> ([> qComboBox], unit) Qt.slot = "mlqt_slot_QComboBox__q_updateIndexBeforeChange" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qComboBox], int) Qt.slot = "mlqt_slot_QComboBox_setCurrentIndex1" [@@noalloc]
  external slot'setCurrentText1 : unit -> ([> qComboBox], string) Qt.slot = "mlqt_slot_QComboBox_setCurrentText1" [@@noalloc]
  external slot'setEditText1 : unit -> ([> qComboBox], string) Qt.slot = "mlqt_slot_QComboBox_setEditText1" [@@noalloc]
end
external new'QDialogButtonBox : [> qWidget] Qt.t option -> qDialogButtonBox Qt.t = "mlqt_QDialogButtonBox_new_"
external new'QDialogButtonBox'1 : qt'Orientation -> [> qWidget] Qt.t option -> qDialogButtonBox Qt.t = "mlqt_QDialogButtonBox_new_1"
external new'QDialogButtonBox'2 : qDialogButtonBox'StandardButtons -> [> qWidget] Qt.t option -> qDialogButtonBox Qt.t = "mlqt_QDialogButtonBox_new_2"
external new'QDialogButtonBox'3 : qDialogButtonBox'StandardButtons -> qt'Orientation -> [> qWidget] Qt.t option -> qDialogButtonBox Qt.t = "mlqt_QDialogButtonBox_new_3"
module QDialogButtonBox = struct
  include QWidget
  external class' : unit -> qDialogButtonBox Qt.qt_class = "mlqt_class_QDialogButtonBox" [@@noalloc]
  external setOrientation : [> qDialogButtonBox] Qt.t -> qt'Orientation -> unit = "mlqt_QDialogButtonBox_setOrientation"
  external orientation : [> qDialogButtonBox] Qt.t -> qt'Orientation = "mlqt_QDialogButtonBox_orientation"
  external addButton : [> qDialogButtonBox] Qt.t -> [> qAbstractButton] Qt.t -> qDialogButtonBox'ButtonRole -> unit = "mlqt_QDialogButtonBox_addButton"
  external addButton1 : [> qDialogButtonBox] Qt.t -> string -> qDialogButtonBox'ButtonRole -> qPushButton Qt.t = "mlqt_QDialogButtonBox_addButton1"
  external addButton2 : [> qDialogButtonBox] Qt.t -> qDialogButtonBox'StandardButton -> qPushButton Qt.t = "mlqt_QDialogButtonBox_addButton2"
  external removeButton : [> qDialogButtonBox] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QDialogButtonBox_removeButton"
  external clear : [> qDialogButtonBox] Qt.t -> unit = "mlqt_QDialogButtonBox_clear"
  external buttonRole : [> qDialogButtonBox] Qt.t -> [> qAbstractButton] Qt.t -> qDialogButtonBox'ButtonRole = "mlqt_QDialogButtonBox_buttonRole"
  external setStandardButtons : [> qDialogButtonBox] Qt.t -> qDialogButtonBox'StandardButtons -> unit = "mlqt_QDialogButtonBox_setStandardButtons"
  external standardButtons : [> qDialogButtonBox] Qt.t -> qDialogButtonBox'StandardButtons = "mlqt_QDialogButtonBox_standardButtons"
  external standardButton : [> qDialogButtonBox] Qt.t -> [> qAbstractButton] Qt.t -> qDialogButtonBox'StandardButton = "mlqt_QDialogButtonBox_standardButton"
  external button : [> qDialogButtonBox] Qt.t -> qDialogButtonBox'StandardButton -> qPushButton Qt.t = "mlqt_QDialogButtonBox_button"
  external setCenterButtons : [> qDialogButtonBox] Qt.t -> bool -> unit = "mlqt_QDialogButtonBox_setCenterButtons"
  external centerButtons : [> qDialogButtonBox] Qt.t -> bool = "mlqt_QDialogButtonBox_centerButtons"
  external clicked : [> qDialogButtonBox] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QDialogButtonBox_clicked"
  external accepted : [> qDialogButtonBox] Qt.t -> unit = "mlqt_QDialogButtonBox_accepted"
  external helpRequested : [> qDialogButtonBox] Qt.t -> unit = "mlqt_QDialogButtonBox_helpRequested"
  external rejected : [> qDialogButtonBox] Qt.t -> unit = "mlqt_QDialogButtonBox_rejected"
end
external new'QDockWidget : string -> [> qWidget] Qt.t option -> qt'WindowFlags -> qDockWidget Qt.t = "mlqt_QDockWidget_new_"
external new'QDockWidget'1 : [> qWidget] Qt.t option -> qt'WindowFlags -> qDockWidget Qt.t = "mlqt_QDockWidget_new_1"
module QDockWidget = struct
  include QWidget
  external class' : unit -> qDockWidget Qt.qt_class = "mlqt_class_QDockWidget" [@@noalloc]
  external widget : [> qDockWidget] Qt.t -> qWidget Qt.t = "mlqt_QDockWidget_widget"
  external setWidget : [> qDockWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QDockWidget_setWidget"
  external setFeatures : [> qDockWidget] Qt.t -> qDockWidget'DockWidgetFeatures -> unit = "mlqt_QDockWidget_setFeatures"
  external features : [> qDockWidget] Qt.t -> qDockWidget'DockWidgetFeatures = "mlqt_QDockWidget_features"
  external setFloating : [> qDockWidget] Qt.t -> bool -> unit = "mlqt_QDockWidget_setFloating"
  external isFloating : [> qDockWidget] Qt.t -> bool = "mlqt_QDockWidget_isFloating"
  external setAllowedAreas : [> qDockWidget] Qt.t -> qt'DockWidgetAreas -> unit = "mlqt_QDockWidget_setAllowedAreas"
  external allowedAreas : [> qDockWidget] Qt.t -> qt'DockWidgetAreas = "mlqt_QDockWidget_allowedAreas"
  external setTitleBarWidget : [> qDockWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QDockWidget_setTitleBarWidget"
  external titleBarWidget : [> qDockWidget] Qt.t -> qWidget Qt.t = "mlqt_QDockWidget_titleBarWidget"
  external isAreaAllowed : [> qDockWidget] Qt.t -> qt'DockWidgetArea -> bool = "mlqt_QDockWidget_isAreaAllowed"
  external toggleViewAction : [> qDockWidget] Qt.t -> qAction Qt.t = "mlqt_QDockWidget_toggleViewAction"
  external featuresChanged : [> qDockWidget] Qt.t -> qDockWidget'DockWidgetFeatures -> unit = "mlqt_QDockWidget_featuresChanged"
  external topLevelChanged : [> qDockWidget] Qt.t -> bool -> unit = "mlqt_QDockWidget_topLevelChanged"
  external allowedAreasChanged : [> qDockWidget] Qt.t -> qt'DockWidgetAreas -> unit = "mlqt_QDockWidget_allowedAreasChanged"
  external visibilityChanged : [> qDockWidget] Qt.t -> bool -> unit = "mlqt_QDockWidget_visibilityChanged"
  external dockLocationChanged : [> qDockWidget] Qt.t -> qt'DockWidgetArea -> unit = "mlqt_QDockWidget_dockLocationChanged"
  external signal'allowedAreasChanged1 : unit -> ([> qDockWidget], qt'DockWidgetAreas) Qt.signal = "mlqt_signal_QDockWidget_allowedAreasChanged1" [@@noalloc]
  external signal'dockLocationChanged1 : unit -> ([> qDockWidget], qt'DockWidgetArea) Qt.signal = "mlqt_signal_QDockWidget_dockLocationChanged1" [@@noalloc]
  external signal'featuresChanged1 : unit -> ([> qDockWidget], qDockWidget'DockWidgetFeatures) Qt.signal = "mlqt_signal_QDockWidget_featuresChanged1" [@@noalloc]
  external signal'topLevelChanged1 : unit -> ([> qDockWidget], bool) Qt.signal = "mlqt_signal_QDockWidget_topLevelChanged1" [@@noalloc]
  external signal'visibilityChanged1 : unit -> ([> qDockWidget], bool) Qt.signal = "mlqt_signal_QDockWidget_visibilityChanged1" [@@noalloc]
  external slot'_q_toggleTopLevel : unit -> ([> qDockWidget], unit) Qt.slot = "mlqt_slot_QDockWidget__q_toggleTopLevel" [@@noalloc]
  external slot'_q_toggleView : unit -> ([> qDockWidget], bool) Qt.slot = "mlqt_slot_QDockWidget__q_toggleView" [@@noalloc]
end
external new'QFocusFrame : [> qWidget] Qt.t option -> qFocusFrame Qt.t = "mlqt_QFocusFrame_new_"
module QFocusFrame = struct
  include QWidget
  external class' : unit -> qFocusFrame Qt.qt_class = "mlqt_class_QFocusFrame" [@@noalloc]
  external setWidget : [> qFocusFrame] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QFocusFrame_setWidget"
  external widget : [> qFocusFrame] Qt.t -> qWidget Qt.t = "mlqt_QFocusFrame_widget"
end
external new'QFrame : [> qWidget] Qt.t option -> qt'WindowFlags -> qFrame Qt.t = "mlqt_QFrame_new_"
module QFrame = struct
  include QWidget
  external class' : unit -> qFrame Qt.qt_class = "mlqt_class_QFrame" [@@noalloc]
  external frameStyle : [> qFrame] Qt.t -> int = "mlqt_QFrame_frameStyle"
  external setFrameStyle : [> qFrame] Qt.t -> int -> unit = "mlqt_QFrame_setFrameStyle"
  external frameWidth : [> qFrame] Qt.t -> int = "mlqt_QFrame_frameWidth"
  external sizeHint : [> qFrame] Qt.t -> qSize = "mlqt_QFrame_sizeHint"
  external frameShape : [> qFrame] Qt.t -> qFrame'Shape = "mlqt_QFrame_frameShape"
  external setFrameShape : [> qFrame] Qt.t -> qFrame'Shape -> unit = "mlqt_QFrame_setFrameShape"
  external frameShadow : [> qFrame] Qt.t -> qFrame'Shadow = "mlqt_QFrame_frameShadow"
  external setFrameShadow : [> qFrame] Qt.t -> qFrame'Shadow -> unit = "mlqt_QFrame_setFrameShadow"
  external lineWidth : [> qFrame] Qt.t -> int = "mlqt_QFrame_lineWidth"
  external setLineWidth : [> qFrame] Qt.t -> int -> unit = "mlqt_QFrame_setLineWidth"
  external midLineWidth : [> qFrame] Qt.t -> int = "mlqt_QFrame_midLineWidth"
  external setMidLineWidth : [> qFrame] Qt.t -> int -> unit = "mlqt_QFrame_setMidLineWidth"
  external frameRect : [> qFrame] Qt.t -> qRect = "mlqt_QFrame_frameRect"
  external setFrameRect : [> qFrame] Qt.t -> qRect -> unit = "mlqt_QFrame_setFrameRect"
end
external new'QGroupBox : [> qWidget] Qt.t option -> qGroupBox Qt.t = "mlqt_QGroupBox_new_"
external new'QGroupBox'1 : string -> [> qWidget] Qt.t option -> qGroupBox Qt.t = "mlqt_QGroupBox_new_1"
module QGroupBox = struct
  include QWidget
  external class' : unit -> qGroupBox Qt.qt_class = "mlqt_class_QGroupBox" [@@noalloc]
  external title : [> qGroupBox] Qt.t -> string = "mlqt_QGroupBox_title"
  external setTitle : [> qGroupBox] Qt.t -> string -> unit = "mlqt_QGroupBox_setTitle"
  external alignment : [> qGroupBox] Qt.t -> qt'Alignment = "mlqt_QGroupBox_alignment"
  external setAlignment : [> qGroupBox] Qt.t -> int -> unit = "mlqt_QGroupBox_setAlignment"
  external minimumSizeHint : [> qGroupBox] Qt.t -> qSize = "mlqt_QGroupBox_minimumSizeHint"
  external isFlat : [> qGroupBox] Qt.t -> bool = "mlqt_QGroupBox_isFlat"
  external setFlat : [> qGroupBox] Qt.t -> bool -> unit = "mlqt_QGroupBox_setFlat"
  external isCheckable : [> qGroupBox] Qt.t -> bool = "mlqt_QGroupBox_isCheckable"
  external setCheckable : [> qGroupBox] Qt.t -> bool -> unit = "mlqt_QGroupBox_setCheckable"
  external isChecked : [> qGroupBox] Qt.t -> bool = "mlqt_QGroupBox_isChecked"
  external setChecked : [> qGroupBox] Qt.t -> bool -> unit = "mlqt_QGroupBox_setChecked"
  external clicked : [> qGroupBox] Qt.t -> bool -> unit = "mlqt_QGroupBox_clicked"
  external toggled : [> qGroupBox] Qt.t -> bool -> unit = "mlqt_QGroupBox_toggled"
  external signal'clicked1 : unit -> ([> qGroupBox], bool) Qt.signal = "mlqt_signal_QGroupBox_clicked1" [@@noalloc]
  external signal'toggled1 : unit -> ([> qGroupBox], bool) Qt.signal = "mlqt_signal_QGroupBox_toggled1" [@@noalloc]
  external slot'_q_setChildrenEnabled : unit -> ([> qGroupBox], bool) Qt.slot = "mlqt_slot_QGroupBox__q_setChildrenEnabled" [@@noalloc]
  external slot'setChecked1 : unit -> ([> qGroupBox], bool) Qt.slot = "mlqt_slot_QGroupBox_setChecked1" [@@noalloc]
end
external new'QKeySequenceEdit : [> qWidget] Qt.t option -> qKeySequenceEdit Qt.t = "mlqt_QKeySequenceEdit_new_"
external new'QKeySequenceEdit'1 : [> qKeySequence] Qt.t -> [> qWidget] Qt.t option -> qKeySequenceEdit Qt.t = "mlqt_QKeySequenceEdit_new_1"
module QKeySequenceEdit = struct
  include QWidget
  external class' : unit -> qKeySequenceEdit Qt.qt_class = "mlqt_class_QKeySequenceEdit" [@@noalloc]
  external keySequence : [> qKeySequenceEdit] Qt.t -> qKeySequence Qt.t = "mlqt_QKeySequenceEdit_keySequence"
  external setKeySequence : [> qKeySequenceEdit] Qt.t -> [> qKeySequence] Qt.t -> unit = "mlqt_QKeySequenceEdit_setKeySequence"
  external clear : [> qKeySequenceEdit] Qt.t -> unit = "mlqt_QKeySequenceEdit_clear"
  external editingFinished : [> qKeySequenceEdit] Qt.t -> unit = "mlqt_QKeySequenceEdit_editingFinished"
  external keySequenceChanged : [> qKeySequenceEdit] Qt.t -> [> qKeySequence] Qt.t -> unit = "mlqt_QKeySequenceEdit_keySequenceChanged"
end
external new'QLineEdit : [> qWidget] Qt.t option -> qLineEdit Qt.t = "mlqt_QLineEdit_new_"
external new'QLineEdit'1 : string -> [> qWidget] Qt.t option -> qLineEdit Qt.t = "mlqt_QLineEdit_new_1"
module QLineEdit = struct
  include QWidget
  external class' : unit -> qLineEdit Qt.qt_class = "mlqt_class_QLineEdit" [@@noalloc]
  external text : [> qLineEdit] Qt.t -> string = "mlqt_QLineEdit_text"
  external displayText : [> qLineEdit] Qt.t -> string = "mlqt_QLineEdit_displayText"
  external placeholderText : [> qLineEdit] Qt.t -> string = "mlqt_QLineEdit_placeholderText"
  external setPlaceholderText : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_setPlaceholderText"
  external maxLength : [> qLineEdit] Qt.t -> int = "mlqt_QLineEdit_maxLength"
  external setMaxLength : [> qLineEdit] Qt.t -> int -> unit = "mlqt_QLineEdit_setMaxLength"
  external setFrame : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_setFrame"
  external hasFrame : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_hasFrame"
  external setClearButtonEnabled : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_setClearButtonEnabled"
  external isClearButtonEnabled : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_isClearButtonEnabled"
  external echoMode : [> qLineEdit] Qt.t -> qLineEdit'EchoMode = "mlqt_QLineEdit_echoMode"
  external setEchoMode : [> qLineEdit] Qt.t -> qLineEdit'EchoMode -> unit = "mlqt_QLineEdit_setEchoMode"
  external isReadOnly : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_isReadOnly"
  external setReadOnly : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_setReadOnly"
  external setValidator : [> qLineEdit] Qt.t -> [> qValidator] Qt.t -> unit = "mlqt_QLineEdit_setValidator"
  external validator : [> qLineEdit] Qt.t -> qValidator Qt.t = "mlqt_QLineEdit_validator"
  external setCompleter : [> qLineEdit] Qt.t -> [> qCompleter] Qt.t -> unit = "mlqt_QLineEdit_setCompleter"
  external completer : [> qLineEdit] Qt.t -> qCompleter Qt.t = "mlqt_QLineEdit_completer"
  external sizeHint : [> qLineEdit] Qt.t -> qSize = "mlqt_QLineEdit_sizeHint"
  external minimumSizeHint : [> qLineEdit] Qt.t -> qSize = "mlqt_QLineEdit_minimumSizeHint"
  external cursorPosition : [> qLineEdit] Qt.t -> int = "mlqt_QLineEdit_cursorPosition"
  external setCursorPosition : [> qLineEdit] Qt.t -> int -> unit = "mlqt_QLineEdit_setCursorPosition"
  external cursorPositionAt : [> qLineEdit] Qt.t -> qPoint -> int = "mlqt_QLineEdit_cursorPositionAt"
  external setAlignment : [> qLineEdit] Qt.t -> qt'Alignment -> unit = "mlqt_QLineEdit_setAlignment"
  external alignment : [> qLineEdit] Qt.t -> qt'Alignment = "mlqt_QLineEdit_alignment"
  external cursorForward : [> qLineEdit] Qt.t -> bool -> int -> unit = "mlqt_QLineEdit_cursorForward"
  external cursorBackward : [> qLineEdit] Qt.t -> bool -> int -> unit = "mlqt_QLineEdit_cursorBackward"
  external cursorWordForward : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_cursorWordForward"
  external cursorWordBackward : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_cursorWordBackward"
  external backspace : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_backspace"
  external del : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_del"
  external home : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_home"
  external end_ : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_end_"
  external isModified : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_isModified"
  external setModified : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_setModified"
  external setSelection : [> qLineEdit] Qt.t -> int -> int -> unit = "mlqt_QLineEdit_setSelection"
  external hasSelectedText : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_hasSelectedText"
  external selectedText : [> qLineEdit] Qt.t -> string = "mlqt_QLineEdit_selectedText"
  external selectionStart : [> qLineEdit] Qt.t -> int = "mlqt_QLineEdit_selectionStart"
  external isUndoAvailable : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_isUndoAvailable"
  external isRedoAvailable : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_isRedoAvailable"
  external setDragEnabled : [> qLineEdit] Qt.t -> bool -> unit = "mlqt_QLineEdit_setDragEnabled"
  external dragEnabled : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_dragEnabled"
  external setCursorMoveStyle : [> qLineEdit] Qt.t -> qt'CursorMoveStyle -> unit = "mlqt_QLineEdit_setCursorMoveStyle"
  external cursorMoveStyle : [> qLineEdit] Qt.t -> qt'CursorMoveStyle = "mlqt_QLineEdit_cursorMoveStyle"
  external inputMask : [> qLineEdit] Qt.t -> string = "mlqt_QLineEdit_inputMask"
  external setInputMask : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_setInputMask"
  external hasAcceptableInput : [> qLineEdit] Qt.t -> bool = "mlqt_QLineEdit_hasAcceptableInput"
  external setTextMargins : [> qLineEdit] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QLineEdit_setTextMargins"
  external addAction : [> qLineEdit] Qt.t -> [> qAction] Qt.t -> qLineEdit'ActionPosition -> unit = "mlqt_QLineEdit_addAction"
  external addAction1 : [> qLineEdit] Qt.t -> [> qIcon] Qt.t -> qLineEdit'ActionPosition -> qAction Qt.t = "mlqt_QLineEdit_addAction1"
  external setText : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_setText"
  external clear : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_clear"
  external selectAll : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_selectAll"
  external undo : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_undo"
  external redo : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_redo"
  external cut : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_cut"
  external copy : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_copy"
  external paste : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_paste"
  external deselect : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_deselect"
  external insert : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_insert"
  external createStandardContextMenu : [> qLineEdit] Qt.t -> qMenu Qt.t = "mlqt_QLineEdit_createStandardContextMenu"
  external textChanged : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_textChanged"
  external textEdited : [> qLineEdit] Qt.t -> string -> unit = "mlqt_QLineEdit_textEdited"
  external cursorPositionChanged : [> qLineEdit] Qt.t -> int -> int -> unit = "mlqt_QLineEdit_cursorPositionChanged"
  external returnPressed : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_returnPressed"
  external editingFinished : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_editingFinished"
  external selectionChanged : [> qLineEdit] Qt.t -> unit = "mlqt_QLineEdit_selectionChanged"
  external event : [> qLineEdit] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QLineEdit_event"
  external signal'cursorPositionChanged1 : unit -> ([> qLineEdit], int * int) Qt.signal = "mlqt_signal_QLineEdit_cursorPositionChanged1" [@@noalloc]
  external signal'editingFinished1 : unit -> ([> qLineEdit], unit) Qt.signal = "mlqt_signal_QLineEdit_editingFinished1" [@@noalloc]
  external signal'returnPressed1 : unit -> ([> qLineEdit], unit) Qt.signal = "mlqt_signal_QLineEdit_returnPressed1" [@@noalloc]
  external signal'selectionChanged1 : unit -> ([> qLineEdit], unit) Qt.signal = "mlqt_signal_QLineEdit_selectionChanged1" [@@noalloc]
  external signal'textChanged1 : unit -> ([> qLineEdit], string) Qt.signal = "mlqt_signal_QLineEdit_textChanged1" [@@noalloc]
  external signal'textEdited1 : unit -> ([> qLineEdit], string) Qt.signal = "mlqt_signal_QLineEdit_textEdited1" [@@noalloc]
  external slot'clear1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_clear1" [@@noalloc]
  external slot'copy1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_copy1" [@@noalloc]
  external slot'cut1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_cut1" [@@noalloc]
  external slot'paste1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_paste1" [@@noalloc]
  external slot'_q_clearButtonClicked : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit__q_clearButtonClicked" [@@noalloc]
  external slot'_q_completionHighlighted : unit -> ([> qLineEdit], string) Qt.slot = "mlqt_slot_QLineEdit__q_completionHighlighted" [@@noalloc]
  external slot'_q_cursorPositionChanged : unit -> ([> qLineEdit], int * int) Qt.slot = "mlqt_slot_QLineEdit__q_cursorPositionChanged" [@@noalloc]
  external slot'_q_handleWindowActivate : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit__q_handleWindowActivate" [@@noalloc]
  external slot'_q_selectionChanged : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit__q_selectionChanged" [@@noalloc]
  external slot'_q_textChanged : unit -> ([> qLineEdit], string) Qt.slot = "mlqt_slot_QLineEdit__q_textChanged" [@@noalloc]
  external slot'_q_textEdited : unit -> ([> qLineEdit], string) Qt.slot = "mlqt_slot_QLineEdit__q_textEdited" [@@noalloc]
  external slot'_q_updateNeeded : unit -> ([> qLineEdit], qRect) Qt.slot = "mlqt_slot_QLineEdit__q_updateNeeded" [@@noalloc]
  external slot'redo1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_redo1" [@@noalloc]
  external slot'selectAll1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_selectAll1" [@@noalloc]
  external slot'setText1 : unit -> ([> qLineEdit], string) Qt.slot = "mlqt_slot_QLineEdit_setText1" [@@noalloc]
  external slot'undo1 : unit -> ([> qLineEdit], unit) Qt.slot = "mlqt_slot_QLineEdit_undo1" [@@noalloc]
end
external new'QMainWindow : [> qWidget] Qt.t option -> qt'WindowFlags -> qMainWindow Qt.t = "mlqt_QMainWindow_new_"
module QMainWindow = struct
  include QWidget
  external class' : unit -> qMainWindow Qt.qt_class = "mlqt_class_QMainWindow" [@@noalloc]
  external iconSize : [> qMainWindow] Qt.t -> qSize = "mlqt_QMainWindow_iconSize"
  external setIconSize : [> qMainWindow] Qt.t -> qSize -> unit = "mlqt_QMainWindow_setIconSize"
  external toolButtonStyle : [> qMainWindow] Qt.t -> qt'ToolButtonStyle = "mlqt_QMainWindow_toolButtonStyle"
  external setToolButtonStyle : [> qMainWindow] Qt.t -> qt'ToolButtonStyle -> unit = "mlqt_QMainWindow_setToolButtonStyle"
  external isAnimated : [> qMainWindow] Qt.t -> bool = "mlqt_QMainWindow_isAnimated"
  external isDockNestingEnabled : [> qMainWindow] Qt.t -> bool = "mlqt_QMainWindow_isDockNestingEnabled"
  external documentMode : [> qMainWindow] Qt.t -> bool = "mlqt_QMainWindow_documentMode"
  external setDocumentMode : [> qMainWindow] Qt.t -> bool -> unit = "mlqt_QMainWindow_setDocumentMode"
  external tabShape : [> qMainWindow] Qt.t -> qTabWidget'TabShape = "mlqt_QMainWindow_tabShape"
  external setTabShape : [> qMainWindow] Qt.t -> qTabWidget'TabShape -> unit = "mlqt_QMainWindow_setTabShape"
  external tabPosition : [> qMainWindow] Qt.t -> qt'DockWidgetArea -> qTabWidget'TabPosition = "mlqt_QMainWindow_tabPosition"
  external setTabPosition : [> qMainWindow] Qt.t -> qt'DockWidgetAreas -> qTabWidget'TabPosition -> unit = "mlqt_QMainWindow_setTabPosition"
  external setDockOptions : [> qMainWindow] Qt.t -> qMainWindow'DockOptions -> unit = "mlqt_QMainWindow_setDockOptions"
  external dockOptions : [> qMainWindow] Qt.t -> qMainWindow'DockOptions = "mlqt_QMainWindow_dockOptions"
  external menuBar : [> qMainWindow] Qt.t -> qMenuBar Qt.t = "mlqt_QMainWindow_menuBar"
  external setMenuBar : [> qMainWindow] Qt.t -> [> qMenuBar] Qt.t -> unit = "mlqt_QMainWindow_setMenuBar"
  external menuWidget : [> qMainWindow] Qt.t -> qWidget Qt.t = "mlqt_QMainWindow_menuWidget"
  external setMenuWidget : [> qMainWindow] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QMainWindow_setMenuWidget"
  external statusBar : [> qMainWindow] Qt.t -> qStatusBar Qt.t = "mlqt_QMainWindow_statusBar"
  external setStatusBar : [> qMainWindow] Qt.t -> [> qStatusBar] Qt.t -> unit = "mlqt_QMainWindow_setStatusBar"
  external centralWidget : [> qMainWindow] Qt.t -> qWidget Qt.t = "mlqt_QMainWindow_centralWidget"
  external setCentralWidget : [> qMainWindow] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QMainWindow_setCentralWidget"
  external takeCentralWidget : [> qMainWindow] Qt.t -> qWidget Qt.t = "mlqt_QMainWindow_takeCentralWidget"
  external setCorner : [> qMainWindow] Qt.t -> qt'Corner -> qt'DockWidgetArea -> unit = "mlqt_QMainWindow_setCorner"
  external corner : [> qMainWindow] Qt.t -> qt'Corner -> qt'DockWidgetArea = "mlqt_QMainWindow_corner"
  external addToolBarBreak : [> qMainWindow] Qt.t -> qt'ToolBarArea -> unit = "mlqt_QMainWindow_addToolBarBreak"
  external insertToolBarBreak : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_insertToolBarBreak"
  external addToolBar : [> qMainWindow] Qt.t -> qt'ToolBarArea -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_addToolBar"
  external addToolBar1 : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_addToolBar1"
  external addToolBar2 : [> qMainWindow] Qt.t -> string -> qToolBar Qt.t = "mlqt_QMainWindow_addToolBar2"
  external insertToolBar : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_insertToolBar"
  external removeToolBar : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_removeToolBar"
  external removeToolBarBreak : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> unit = "mlqt_QMainWindow_removeToolBarBreak"
  external unifiedTitleAndToolBarOnMac : [> qMainWindow] Qt.t -> bool = "mlqt_QMainWindow_unifiedTitleAndToolBarOnMac"
  external toolBarArea : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> qt'ToolBarArea = "mlqt_QMainWindow_toolBarArea"
  external toolBarBreak : [> qMainWindow] Qt.t -> [> qToolBar] Qt.t -> bool = "mlqt_QMainWindow_toolBarBreak"
  external addDockWidget : [> qMainWindow] Qt.t -> qt'DockWidgetArea -> [> qDockWidget] Qt.t -> unit = "mlqt_QMainWindow_addDockWidget"
  external addDockWidget1 : [> qMainWindow] Qt.t -> qt'DockWidgetArea -> [> qDockWidget] Qt.t -> qt'Orientation -> unit = "mlqt_QMainWindow_addDockWidget1"
  external splitDockWidget : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> [> qDockWidget] Qt.t -> qt'Orientation -> unit = "mlqt_QMainWindow_splitDockWidget"
  external tabifyDockWidget : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> [> qDockWidget] Qt.t -> unit = "mlqt_QMainWindow_tabifyDockWidget"
  external removeDockWidget : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> unit = "mlqt_QMainWindow_removeDockWidget"
  external restoreDockWidget : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> bool = "mlqt_QMainWindow_restoreDockWidget"
  external dockWidgetArea : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> qt'DockWidgetArea = "mlqt_QMainWindow_dockWidgetArea"
  external saveState : [> qMainWindow] Qt.t -> int -> qByteArray Qt.t = "mlqt_QMainWindow_saveState"
  external restoreState : [> qMainWindow] Qt.t -> [> qByteArray] Qt.t -> int -> bool = "mlqt_QMainWindow_restoreState"
  external createPopupMenu : [> qMainWindow] Qt.t -> qMenu Qt.t = "mlqt_QMainWindow_createPopupMenu"
  external setAnimated : [> qMainWindow] Qt.t -> bool -> unit = "mlqt_QMainWindow_setAnimated"
  external setDockNestingEnabled : [> qMainWindow] Qt.t -> bool -> unit = "mlqt_QMainWindow_setDockNestingEnabled"
  external setUnifiedTitleAndToolBarOnMac : [> qMainWindow] Qt.t -> bool -> unit = "mlqt_QMainWindow_setUnifiedTitleAndToolBarOnMac"
  external iconSizeChanged : [> qMainWindow] Qt.t -> qSize -> unit = "mlqt_QMainWindow_iconSizeChanged"
  external toolButtonStyleChanged : [> qMainWindow] Qt.t -> qt'ToolButtonStyle -> unit = "mlqt_QMainWindow_toolButtonStyleChanged"
  external tabifiedDockWidgetActivated : [> qMainWindow] Qt.t -> [> qDockWidget] Qt.t -> unit = "mlqt_QMainWindow_tabifiedDockWidgetActivated"
  external signal'iconSizeChanged1 : unit -> ([> qMainWindow], qSize) Qt.signal = "mlqt_signal_QMainWindow_iconSizeChanged1" [@@noalloc]
  external signal'tabifiedDockWidgetActivated1 : unit -> ([> qMainWindow], qDockWidget Qt.t) Qt.signal = "mlqt_signal_QMainWindow_tabifiedDockWidgetActivated1" [@@noalloc]
  external signal'toolButtonStyleChanged1 : unit -> ([> qMainWindow], qt'ToolButtonStyle) Qt.signal = "mlqt_signal_QMainWindow_toolButtonStyleChanged1" [@@noalloc]
  external slot'setAnimated1 : unit -> ([> qMainWindow], bool) Qt.slot = "mlqt_slot_QMainWindow_setAnimated1" [@@noalloc]
  external slot'setDockNestingEnabled1 : unit -> ([> qMainWindow], bool) Qt.slot = "mlqt_slot_QMainWindow_setDockNestingEnabled1" [@@noalloc]
  external slot'setUnifiedTitleAndToolBarOnMac1 : unit -> ([> qMainWindow], bool) Qt.slot = "mlqt_slot_QMainWindow_setUnifiedTitleAndToolBarOnMac1" [@@noalloc]
end
external new'QMdiSubWindow : [> qWidget] Qt.t option -> qt'WindowFlags -> qMdiSubWindow Qt.t = "mlqt_QMdiSubWindow_new_"
module QMdiSubWindow = struct
  include QWidget
  external class' : unit -> qMdiSubWindow Qt.qt_class = "mlqt_class_QMdiSubWindow" [@@noalloc]
  external sizeHint : [> qMdiSubWindow] Qt.t -> qSize = "mlqt_QMdiSubWindow_sizeHint"
  external minimumSizeHint : [> qMdiSubWindow] Qt.t -> qSize = "mlqt_QMdiSubWindow_minimumSizeHint"
  external setWidget : [> qMdiSubWindow] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QMdiSubWindow_setWidget"
  external widget : [> qMdiSubWindow] Qt.t -> qWidget Qt.t = "mlqt_QMdiSubWindow_widget"
  external isShaded : [> qMdiSubWindow] Qt.t -> bool = "mlqt_QMdiSubWindow_isShaded"
  external setOption : [> qMdiSubWindow] Qt.t -> qMdiSubWindow'SubWindowOption -> bool -> unit = "mlqt_QMdiSubWindow_setOption"
  external testOption : [> qMdiSubWindow] Qt.t -> qMdiSubWindow'SubWindowOption -> bool = "mlqt_QMdiSubWindow_testOption"
  external setKeyboardSingleStep : [> qMdiSubWindow] Qt.t -> int -> unit = "mlqt_QMdiSubWindow_setKeyboardSingleStep"
  external keyboardSingleStep : [> qMdiSubWindow] Qt.t -> int = "mlqt_QMdiSubWindow_keyboardSingleStep"
  external setKeyboardPageStep : [> qMdiSubWindow] Qt.t -> int -> unit = "mlqt_QMdiSubWindow_setKeyboardPageStep"
  external keyboardPageStep : [> qMdiSubWindow] Qt.t -> int = "mlqt_QMdiSubWindow_keyboardPageStep"
  external setSystemMenu : [> qMdiSubWindow] Qt.t -> [> qMenu] Qt.t -> unit = "mlqt_QMdiSubWindow_setSystemMenu"
  external systemMenu : [> qMdiSubWindow] Qt.t -> qMenu Qt.t = "mlqt_QMdiSubWindow_systemMenu"
  external mdiArea : [> qMdiSubWindow] Qt.t -> qMdiArea Qt.t = "mlqt_QMdiSubWindow_mdiArea"
  external windowStateChanged : [> qMdiSubWindow] Qt.t -> qt'WindowStates -> qt'WindowStates -> unit = "mlqt_QMdiSubWindow_windowStateChanged"
  external aboutToActivate : [> qMdiSubWindow] Qt.t -> unit = "mlqt_QMdiSubWindow_aboutToActivate"
  external showSystemMenu : [> qMdiSubWindow] Qt.t -> unit = "mlqt_QMdiSubWindow_showSystemMenu"
  external showShaded : [> qMdiSubWindow] Qt.t -> unit = "mlqt_QMdiSubWindow_showShaded"
  external signal'aboutToActivate1 : unit -> ([> qMdiSubWindow], unit) Qt.signal = "mlqt_signal_QMdiSubWindow_aboutToActivate1" [@@noalloc]
  external signal'windowStateChanged1 : unit -> ([> qMdiSubWindow], qt'WindowStates * qt'WindowStates) Qt.signal = "mlqt_signal_QMdiSubWindow_windowStateChanged1" [@@noalloc]
  external slot'_q_enterInteractiveMode : unit -> ([> qMdiSubWindow], unit) Qt.slot = "mlqt_slot_QMdiSubWindow__q_enterInteractiveMode" [@@noalloc]
  external slot'_q_processFocusChanged : unit -> ([> qMdiSubWindow], [> qWidget] Qt.t * [> qWidget] Qt.t) Qt.slot = "mlqt_slot_QMdiSubWindow__q_processFocusChanged" [@@noalloc]
  external slot'_q_updateStaysOnTopHint : unit -> ([> qMdiSubWindow], unit) Qt.slot = "mlqt_slot_QMdiSubWindow__q_updateStaysOnTopHint" [@@noalloc]
  external slot'showShaded1 : unit -> ([> qMdiSubWindow], unit) Qt.slot = "mlqt_slot_QMdiSubWindow_showShaded1" [@@noalloc]
  external slot'showSystemMenu1 : unit -> ([> qMdiSubWindow], unit) Qt.slot = "mlqt_slot_QMdiSubWindow_showSystemMenu1" [@@noalloc]
end
external new'QMenu : [> qWidget] Qt.t option -> qMenu Qt.t = "mlqt_QMenu_new_"
external new'QMenu'1 : string -> [> qWidget] Qt.t option -> qMenu Qt.t = "mlqt_QMenu_new_1"
module QMenu = struct
  include QWidget
  external class' : unit -> qMenu Qt.qt_class = "mlqt_class_QMenu" [@@noalloc]
  external addAction : [> qMenu] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_addAction"
  external addAction1 : [> qMenu] Qt.t -> [> qIcon] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_addAction1"
  external addMenu : [> qMenu] Qt.t -> [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_addMenu"
  external addMenu1 : [> qMenu] Qt.t -> string -> qMenu Qt.t = "mlqt_QMenu_addMenu1"
  external addMenu2 : [> qMenu] Qt.t -> [> qIcon] Qt.t -> string -> qMenu Qt.t = "mlqt_QMenu_addMenu2"
  external addSeparator : [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_addSeparator"
  external addSection : [> qMenu] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_addSection"
  external addSection1 : [> qMenu] Qt.t -> [> qIcon] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_addSection1"
  external insertMenu : [> qMenu] Qt.t -> [> qAction] Qt.t -> [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_insertMenu"
  external insertSeparator : [> qMenu] Qt.t -> [> qAction] Qt.t -> qAction Qt.t = "mlqt_QMenu_insertSeparator"
  external insertSection : [> qMenu] Qt.t -> [> qAction] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_insertSection"
  external insertSection1 : [> qMenu] Qt.t -> [> qAction] Qt.t -> [> qIcon] Qt.t -> string -> qAction Qt.t = "mlqt_QMenu_insertSection1"
  external isEmpty : [> qMenu] Qt.t -> bool = "mlqt_QMenu_isEmpty"
  external clear : [> qMenu] Qt.t -> unit = "mlqt_QMenu_clear"
  external setTearOffEnabled : [> qMenu] Qt.t -> bool -> unit = "mlqt_QMenu_setTearOffEnabled"
  external isTearOffEnabled : [> qMenu] Qt.t -> bool = "mlqt_QMenu_isTearOffEnabled"
  external isTearOffMenuVisible : [> qMenu] Qt.t -> bool = "mlqt_QMenu_isTearOffMenuVisible"
  external showTearOffMenu : [> qMenu] Qt.t -> unit = "mlqt_QMenu_showTearOffMenu"
  external showTearOffMenu1 : [> qMenu] Qt.t -> qPoint -> unit = "mlqt_QMenu_showTearOffMenu1"
  external hideTearOffMenu : [> qMenu] Qt.t -> unit = "mlqt_QMenu_hideTearOffMenu"
  external setDefaultAction : [> qMenu] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenu_setDefaultAction"
  external defaultAction : [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_defaultAction"
  external setActiveAction : [> qMenu] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenu_setActiveAction"
  external activeAction : [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_activeAction"
  external popup : [> qMenu] Qt.t -> qPoint -> [> qAction] Qt.t -> unit = "mlqt_QMenu_popup"
  external exec : [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_exec"
  external exec1 : [> qMenu] Qt.t -> qPoint -> [> qAction] Qt.t -> qAction Qt.t = "mlqt_QMenu_exec1"
  external sizeHint : [> qMenu] Qt.t -> qSize = "mlqt_QMenu_sizeHint"
  external actionGeometry : [> qMenu] Qt.t -> [> qAction] Qt.t -> qRect = "mlqt_QMenu_actionGeometry"
  external actionAt : [> qMenu] Qt.t -> qPoint -> qAction Qt.t = "mlqt_QMenu_actionAt"
  external menuAction : [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenu_menuAction"
  external title : [> qMenu] Qt.t -> string = "mlqt_QMenu_title"
  external setTitle : [> qMenu] Qt.t -> string -> unit = "mlqt_QMenu_setTitle"
  external icon : [> qMenu] Qt.t -> qIcon Qt.t = "mlqt_QMenu_icon"
  external setIcon : [> qMenu] Qt.t -> [> qIcon] Qt.t -> unit = "mlqt_QMenu_setIcon"
  external separatorsCollapsible : [> qMenu] Qt.t -> bool = "mlqt_QMenu_separatorsCollapsible"
  external setSeparatorsCollapsible : [> qMenu] Qt.t -> bool -> unit = "mlqt_QMenu_setSeparatorsCollapsible"
  external toolTipsVisible : [> qMenu] Qt.t -> bool = "mlqt_QMenu_toolTipsVisible"
  external setToolTipsVisible : [> qMenu] Qt.t -> bool -> unit = "mlqt_QMenu_setToolTipsVisible"
  external aboutToShow : [> qMenu] Qt.t -> unit = "mlqt_QMenu_aboutToShow"
  external aboutToHide : [> qMenu] Qt.t -> unit = "mlqt_QMenu_aboutToHide"
  external triggered : [> qMenu] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenu_triggered"
  external hovered : [> qMenu] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenu_hovered"
  external signal'aboutToHide1 : unit -> ([> qMenu], unit) Qt.signal = "mlqt_signal_QMenu_aboutToHide1" [@@noalloc]
  external signal'aboutToShow1 : unit -> ([> qMenu], unit) Qt.signal = "mlqt_signal_QMenu_aboutToShow1" [@@noalloc]
  external signal'hovered1 : unit -> ([> qMenu], qAction Qt.t) Qt.signal = "mlqt_signal_QMenu_hovered1" [@@noalloc]
  external signal'triggered1 : unit -> ([> qMenu], qAction Qt.t) Qt.signal = "mlqt_signal_QMenu_triggered1" [@@noalloc]
  external slot'internalDelayedPopup : unit -> ([> qMenu], unit) Qt.slot = "mlqt_slot_QMenu_internalDelayedPopup" [@@noalloc]
  external slot'_q_actionHovered : unit -> ([> qMenu], unit) Qt.slot = "mlqt_slot_QMenu__q_actionHovered" [@@noalloc]
  external slot'_q_actionTriggered : unit -> ([> qMenu], unit) Qt.slot = "mlqt_slot_QMenu__q_actionTriggered" [@@noalloc]
  external slot'_q_overrideMenuActionDestroyed : unit -> ([> qMenu], unit) Qt.slot = "mlqt_slot_QMenu__q_overrideMenuActionDestroyed" [@@noalloc]
  external slot'_q_platformMenuAboutToShow : unit -> ([> qMenu], unit) Qt.slot = "mlqt_slot_QMenu__q_platformMenuAboutToShow" [@@noalloc]
end
external new'QMenuBar : [> qWidget] Qt.t option -> qMenuBar Qt.t = "mlqt_QMenuBar_new_"
module QMenuBar = struct
  include QWidget
  external class' : unit -> qMenuBar Qt.qt_class = "mlqt_class_QMenuBar" [@@noalloc]
  external addAction : [> qMenuBar] Qt.t -> string -> qAction Qt.t = "mlqt_QMenuBar_addAction"
  external addMenu : [> qMenuBar] Qt.t -> [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenuBar_addMenu"
  external addMenu1 : [> qMenuBar] Qt.t -> string -> qMenu Qt.t = "mlqt_QMenuBar_addMenu1"
  external addMenu2 : [> qMenuBar] Qt.t -> [> qIcon] Qt.t -> string -> qMenu Qt.t = "mlqt_QMenuBar_addMenu2"
  external addSeparator : [> qMenuBar] Qt.t -> qAction Qt.t = "mlqt_QMenuBar_addSeparator"
  external insertSeparator : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> qAction Qt.t = "mlqt_QMenuBar_insertSeparator"
  external insertMenu : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> [> qMenu] Qt.t -> qAction Qt.t = "mlqt_QMenuBar_insertMenu"
  external clear : [> qMenuBar] Qt.t -> unit = "mlqt_QMenuBar_clear"
  external activeAction : [> qMenuBar] Qt.t -> qAction Qt.t = "mlqt_QMenuBar_activeAction"
  external setActiveAction : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenuBar_setActiveAction"
  external setDefaultUp : [> qMenuBar] Qt.t -> bool -> unit = "mlqt_QMenuBar_setDefaultUp"
  external isDefaultUp : [> qMenuBar] Qt.t -> bool = "mlqt_QMenuBar_isDefaultUp"
  external sizeHint : [> qMenuBar] Qt.t -> qSize = "mlqt_QMenuBar_sizeHint"
  external minimumSizeHint : [> qMenuBar] Qt.t -> qSize = "mlqt_QMenuBar_minimumSizeHint"
  external heightForWidth : [> qMenuBar] Qt.t -> int -> int = "mlqt_QMenuBar_heightForWidth"
  external actionGeometry : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> qRect = "mlqt_QMenuBar_actionGeometry"
  external actionAt : [> qMenuBar] Qt.t -> qPoint -> qAction Qt.t = "mlqt_QMenuBar_actionAt"
  external setCornerWidget : [> qMenuBar] Qt.t -> [> qWidget] Qt.t -> qt'Corner -> unit = "mlqt_QMenuBar_setCornerWidget"
  external cornerWidget : [> qMenuBar] Qt.t -> qt'Corner -> qWidget Qt.t = "mlqt_QMenuBar_cornerWidget"
  external isNativeMenuBar : [> qMenuBar] Qt.t -> bool = "mlqt_QMenuBar_isNativeMenuBar"
  external setNativeMenuBar : [> qMenuBar] Qt.t -> bool -> unit = "mlqt_QMenuBar_setNativeMenuBar"
  external setVisible : [> qMenuBar] Qt.t -> bool -> unit = "mlqt_QMenuBar_setVisible"
  external triggered : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenuBar_triggered"
  external hovered : [> qMenuBar] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QMenuBar_hovered"
  external signal'hovered1 : unit -> ([> qMenuBar], qAction Qt.t) Qt.signal = "mlqt_signal_QMenuBar_hovered1" [@@noalloc]
  external signal'triggered1 : unit -> ([> qMenuBar], qAction Qt.t) Qt.signal = "mlqt_signal_QMenuBar_triggered1" [@@noalloc]
  external slot'_q_actionHovered : unit -> ([> qMenuBar], unit) Qt.slot = "mlqt_slot_QMenuBar__q_actionHovered" [@@noalloc]
  external slot'_q_actionTriggered : unit -> ([> qMenuBar], unit) Qt.slot = "mlqt_slot_QMenuBar__q_actionTriggered" [@@noalloc]
  external slot'_q_internalShortcutActivated : unit -> ([> qMenuBar], int) Qt.slot = "mlqt_slot_QMenuBar__q_internalShortcutActivated" [@@noalloc]
  external slot'_q_updateLayout : unit -> ([> qMenuBar], unit) Qt.slot = "mlqt_slot_QMenuBar__q_updateLayout" [@@noalloc]
  external slot'setVisible1 : unit -> ([> qMenuBar], bool) Qt.slot = "mlqt_slot_QMenuBar_setVisible1" [@@noalloc]
end
external new'QProgressBar : [> qWidget] Qt.t option -> qProgressBar Qt.t = "mlqt_QProgressBar_new_"
module QProgressBar = struct
  include QWidget
  external class' : unit -> qProgressBar Qt.qt_class = "mlqt_class_QProgressBar" [@@noalloc]
  external minimum : [> qProgressBar] Qt.t -> int = "mlqt_QProgressBar_minimum"
  external maximum : [> qProgressBar] Qt.t -> int = "mlqt_QProgressBar_maximum"
  external value : [> qProgressBar] Qt.t -> int = "mlqt_QProgressBar_value"
  external text : [> qProgressBar] Qt.t -> string = "mlqt_QProgressBar_text"
  external setTextVisible : [> qProgressBar] Qt.t -> bool -> unit = "mlqt_QProgressBar_setTextVisible"
  external isTextVisible : [> qProgressBar] Qt.t -> bool = "mlqt_QProgressBar_isTextVisible"
  external alignment : [> qProgressBar] Qt.t -> qt'Alignment = "mlqt_QProgressBar_alignment"
  external setAlignment : [> qProgressBar] Qt.t -> qt'Alignment -> unit = "mlqt_QProgressBar_setAlignment"
  external sizeHint : [> qProgressBar] Qt.t -> qSize = "mlqt_QProgressBar_sizeHint"
  external minimumSizeHint : [> qProgressBar] Qt.t -> qSize = "mlqt_QProgressBar_minimumSizeHint"
  external orientation : [> qProgressBar] Qt.t -> qt'Orientation = "mlqt_QProgressBar_orientation"
  external setInvertedAppearance : [> qProgressBar] Qt.t -> bool -> unit = "mlqt_QProgressBar_setInvertedAppearance"
  external invertedAppearance : [> qProgressBar] Qt.t -> bool = "mlqt_QProgressBar_invertedAppearance"
  external setTextDirection : [> qProgressBar] Qt.t -> qProgressBar'Direction -> unit = "mlqt_QProgressBar_setTextDirection"
  external textDirection : [> qProgressBar] Qt.t -> qProgressBar'Direction = "mlqt_QProgressBar_textDirection"
  external setFormat : [> qProgressBar] Qt.t -> string -> unit = "mlqt_QProgressBar_setFormat"
  external resetFormat : [> qProgressBar] Qt.t -> unit = "mlqt_QProgressBar_resetFormat"
  external format : [> qProgressBar] Qt.t -> string = "mlqt_QProgressBar_format"
  external reset : [> qProgressBar] Qt.t -> unit = "mlqt_QProgressBar_reset"
  external setRange : [> qProgressBar] Qt.t -> int -> int -> unit = "mlqt_QProgressBar_setRange"
  external setMinimum : [> qProgressBar] Qt.t -> int -> unit = "mlqt_QProgressBar_setMinimum"
  external setMaximum : [> qProgressBar] Qt.t -> int -> unit = "mlqt_QProgressBar_setMaximum"
  external setValue : [> qProgressBar] Qt.t -> int -> unit = "mlqt_QProgressBar_setValue"
  external setOrientation : [> qProgressBar] Qt.t -> qt'Orientation -> unit = "mlqt_QProgressBar_setOrientation"
  external valueChanged : [> qProgressBar] Qt.t -> int -> unit = "mlqt_QProgressBar_valueChanged"
  external signal'valueChanged1 : unit -> ([> qProgressBar], int) Qt.signal = "mlqt_signal_QProgressBar_valueChanged1" [@@noalloc]
  external slot'reset1 : unit -> ([> qProgressBar], unit) Qt.slot = "mlqt_slot_QProgressBar_reset1" [@@noalloc]
  external slot'setMaximum1 : unit -> ([> qProgressBar], int) Qt.slot = "mlqt_slot_QProgressBar_setMaximum1" [@@noalloc]
  external slot'setMinimum1 : unit -> ([> qProgressBar], int) Qt.slot = "mlqt_slot_QProgressBar_setMinimum1" [@@noalloc]
  external slot'setOrientation1 : unit -> ([> qProgressBar], qt'Orientation) Qt.slot = "mlqt_slot_QProgressBar_setOrientation1" [@@noalloc]
  external slot'setRange1 : unit -> ([> qProgressBar], int * int) Qt.slot = "mlqt_slot_QProgressBar_setRange1" [@@noalloc]
  external slot'setValue1 : unit -> ([> qProgressBar], int) Qt.slot = "mlqt_slot_QProgressBar_setValue1" [@@noalloc]
end
external new'QRubberBand : qRubberBand'Shape -> [> qWidget] Qt.t option -> qRubberBand Qt.t = "mlqt_QRubberBand_new_"
module QRubberBand = struct
  include QWidget
  external class' : unit -> qRubberBand Qt.qt_class = "mlqt_class_QRubberBand" [@@noalloc]
  external shape : [> qRubberBand] Qt.t -> qRubberBand'Shape = "mlqt_QRubberBand_shape"
  external setGeometry : [> qRubberBand] Qt.t -> qRect -> unit = "mlqt_QRubberBand_setGeometry"
  external setGeometry1 : [> qRubberBand] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QRubberBand_setGeometry1"
  external move : [> qRubberBand] Qt.t -> int -> int -> unit = "mlqt_QRubberBand_move"
  external move1 : [> qRubberBand] Qt.t -> qPoint -> unit = "mlqt_QRubberBand_move1"
  external resize : [> qRubberBand] Qt.t -> int -> int -> unit = "mlqt_QRubberBand_resize"
  external resize1 : [> qRubberBand] Qt.t -> qSize -> unit = "mlqt_QRubberBand_resize1"
end
external new'QSizeGrip : [> qWidget] Qt.t option -> qSizeGrip Qt.t = "mlqt_QSizeGrip_new_"
module QSizeGrip = struct
  include QWidget
  external class' : unit -> qSizeGrip Qt.qt_class = "mlqt_class_QSizeGrip" [@@noalloc]
  external sizeHint : [> qSizeGrip] Qt.t -> qSize = "mlqt_QSizeGrip_sizeHint"
  external setVisible : [> qSizeGrip] Qt.t -> bool -> unit = "mlqt_QSizeGrip_setVisible"
  external slot'_q_showIfNotHidden : unit -> ([> qSizeGrip], unit) Qt.slot = "mlqt_slot_QSizeGrip__q_showIfNotHidden" [@@noalloc]
end
module QSplashScreen = struct
  include QWidget
  external class' : unit -> qSplashScreen Qt.qt_class = "mlqt_class_QSplashScreen" [@@noalloc]
  external finish : [> qSplashScreen] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QSplashScreen_finish"
  external repaint : [> qSplashScreen] Qt.t -> unit = "mlqt_QSplashScreen_repaint"
  external message : [> qSplashScreen] Qt.t -> string = "mlqt_QSplashScreen_message"
  external showMessage : [> qSplashScreen] Qt.t -> string -> int -> [> qColor] Qt.t -> unit = "mlqt_QSplashScreen_showMessage"
  external clearMessage : [> qSplashScreen] Qt.t -> unit = "mlqt_QSplashScreen_clearMessage"
  external messageChanged : [> qSplashScreen] Qt.t -> string -> unit = "mlqt_QSplashScreen_messageChanged"
end
module QSplitterHandle = struct
  include QWidget
  external class' : unit -> qSplitterHandle Qt.qt_class = "mlqt_class_QSplitterHandle" [@@noalloc]
end
external new'QStatusBar : [> qWidget] Qt.t option -> qStatusBar Qt.t = "mlqt_QStatusBar_new_"
module QStatusBar = struct
  include QWidget
  external class' : unit -> qStatusBar Qt.qt_class = "mlqt_class_QStatusBar" [@@noalloc]
  external addWidget : [> qStatusBar] Qt.t -> [> qWidget] Qt.t -> int -> unit = "mlqt_QStatusBar_addWidget"
  external insertWidget : [> qStatusBar] Qt.t -> int -> [> qWidget] Qt.t -> int -> int = "mlqt_QStatusBar_insertWidget"
  external addPermanentWidget : [> qStatusBar] Qt.t -> [> qWidget] Qt.t -> int -> unit = "mlqt_QStatusBar_addPermanentWidget"
  external insertPermanentWidget : [> qStatusBar] Qt.t -> int -> [> qWidget] Qt.t -> int -> int = "mlqt_QStatusBar_insertPermanentWidget"
  external removeWidget : [> qStatusBar] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QStatusBar_removeWidget"
  external setSizeGripEnabled : [> qStatusBar] Qt.t -> bool -> unit = "mlqt_QStatusBar_setSizeGripEnabled"
  external isSizeGripEnabled : [> qStatusBar] Qt.t -> bool = "mlqt_QStatusBar_isSizeGripEnabled"
  external currentMessage : [> qStatusBar] Qt.t -> string = "mlqt_QStatusBar_currentMessage"
  external showMessage : [> qStatusBar] Qt.t -> string -> int -> unit = "mlqt_QStatusBar_showMessage"
  external clearMessage : [> qStatusBar] Qt.t -> unit = "mlqt_QStatusBar_clearMessage"
  external messageChanged : [> qStatusBar] Qt.t -> string -> unit = "mlqt_QStatusBar_messageChanged"
  external signal'messageChanged1 : unit -> ([> qStatusBar], string) Qt.signal = "mlqt_signal_QStatusBar_messageChanged1" [@@noalloc]
  external slot'clearMessage1 : unit -> ([> qStatusBar], unit) Qt.slot = "mlqt_slot_QStatusBar_clearMessage1" [@@noalloc]
  external slot'showMessage1 : unit -> ([> qStatusBar], string) Qt.slot = "mlqt_slot_QStatusBar_showMessage1" [@@noalloc]
  external slot'showMessage2 : unit -> ([> qStatusBar], string * int) Qt.slot = "mlqt_slot_QStatusBar_showMessage2" [@@noalloc]
end
external new'QTabBar : [> qWidget] Qt.t option -> qTabBar Qt.t = "mlqt_QTabBar_new_"
module QTabBar = struct
  include QWidget
  external class' : unit -> qTabBar Qt.qt_class = "mlqt_class_QTabBar" [@@noalloc]
  external shape : [> qTabBar] Qt.t -> qTabBar'Shape = "mlqt_QTabBar_shape"
  external setShape : [> qTabBar] Qt.t -> qTabBar'Shape -> unit = "mlqt_QTabBar_setShape"
  external addTab : [> qTabBar] Qt.t -> string -> int = "mlqt_QTabBar_addTab"
  external addTab1 : [> qTabBar] Qt.t -> [> qIcon] Qt.t -> string -> int = "mlqt_QTabBar_addTab1"
  external insertTab : [> qTabBar] Qt.t -> int -> string -> int = "mlqt_QTabBar_insertTab"
  external insertTab1 : [> qTabBar] Qt.t -> int -> [> qIcon] Qt.t -> string -> int = "mlqt_QTabBar_insertTab1"
  external removeTab : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_removeTab"
  external moveTab : [> qTabBar] Qt.t -> int -> int -> unit = "mlqt_QTabBar_moveTab"
  external isTabEnabled : [> qTabBar] Qt.t -> int -> bool = "mlqt_QTabBar_isTabEnabled"
  external setTabEnabled : [> qTabBar] Qt.t -> int -> bool -> unit = "mlqt_QTabBar_setTabEnabled"
  external tabText : [> qTabBar] Qt.t -> int -> string = "mlqt_QTabBar_tabText"
  external setTabText : [> qTabBar] Qt.t -> int -> string -> unit = "mlqt_QTabBar_setTabText"
  external tabTextColor : [> qTabBar] Qt.t -> int -> qColor Qt.t = "mlqt_QTabBar_tabTextColor"
  external setTabTextColor : [> qTabBar] Qt.t -> int -> [> qColor] Qt.t -> unit = "mlqt_QTabBar_setTabTextColor"
  external tabIcon : [> qTabBar] Qt.t -> int -> qIcon Qt.t = "mlqt_QTabBar_tabIcon"
  external setTabIcon : [> qTabBar] Qt.t -> int -> [> qIcon] Qt.t -> unit = "mlqt_QTabBar_setTabIcon"
  external elideMode : [> qTabBar] Qt.t -> qt'TextElideMode = "mlqt_QTabBar_elideMode"
  external setElideMode : [> qTabBar] Qt.t -> qt'TextElideMode -> unit = "mlqt_QTabBar_setElideMode"
  external setTabToolTip : [> qTabBar] Qt.t -> int -> string -> unit = "mlqt_QTabBar_setTabToolTip"
  external tabToolTip : [> qTabBar] Qt.t -> int -> string = "mlqt_QTabBar_tabToolTip"
  external setTabWhatsThis : [> qTabBar] Qt.t -> int -> string -> unit = "mlqt_QTabBar_setTabWhatsThis"
  external tabWhatsThis : [> qTabBar] Qt.t -> int -> string = "mlqt_QTabBar_tabWhatsThis"
  external setTabData : [> qTabBar] Qt.t -> int -> QVariant.t -> unit = "mlqt_QTabBar_setTabData"
  external tabData : [> qTabBar] Qt.t -> int -> QVariant.t = "mlqt_QTabBar_tabData"
  external tabRect : [> qTabBar] Qt.t -> int -> qRect = "mlqt_QTabBar_tabRect"
  external tabAt : [> qTabBar] Qt.t -> qPoint -> int = "mlqt_QTabBar_tabAt"
  external currentIndex : [> qTabBar] Qt.t -> int = "mlqt_QTabBar_currentIndex"
  external count : [> qTabBar] Qt.t -> int = "mlqt_QTabBar_count"
  external sizeHint : [> qTabBar] Qt.t -> qSize = "mlqt_QTabBar_sizeHint"
  external minimumSizeHint : [> qTabBar] Qt.t -> qSize = "mlqt_QTabBar_minimumSizeHint"
  external setDrawBase : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setDrawBase"
  external drawBase : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_drawBase"
  external iconSize : [> qTabBar] Qt.t -> qSize = "mlqt_QTabBar_iconSize"
  external setIconSize : [> qTabBar] Qt.t -> qSize -> unit = "mlqt_QTabBar_setIconSize"
  external usesScrollButtons : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_usesScrollButtons"
  external setUsesScrollButtons : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setUsesScrollButtons"
  external tabsClosable : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_tabsClosable"
  external setTabsClosable : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setTabsClosable"
  external setTabButton : [> qTabBar] Qt.t -> int -> qTabBar'ButtonPosition -> [> qWidget] Qt.t -> unit = "mlqt_QTabBar_setTabButton"
  external tabButton : [> qTabBar] Qt.t -> int -> qTabBar'ButtonPosition -> qWidget Qt.t = "mlqt_QTabBar_tabButton"
  external selectionBehaviorOnRemove : [> qTabBar] Qt.t -> qTabBar'SelectionBehavior = "mlqt_QTabBar_selectionBehaviorOnRemove"
  external setSelectionBehaviorOnRemove : [> qTabBar] Qt.t -> qTabBar'SelectionBehavior -> unit = "mlqt_QTabBar_setSelectionBehaviorOnRemove"
  external expanding : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_expanding"
  external setExpanding : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setExpanding"
  external isMovable : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_isMovable"
  external setMovable : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setMovable"
  external documentMode : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_documentMode"
  external setDocumentMode : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setDocumentMode"
  external autoHide : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_autoHide"
  external setAutoHide : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setAutoHide"
  external changeCurrentOnDrag : [> qTabBar] Qt.t -> bool = "mlqt_QTabBar_changeCurrentOnDrag"
  external setChangeCurrentOnDrag : [> qTabBar] Qt.t -> bool -> unit = "mlqt_QTabBar_setChangeCurrentOnDrag"
  external accessibleTabName : [> qTabBar] Qt.t -> int -> string = "mlqt_QTabBar_accessibleTabName"
  external setAccessibleTabName : [> qTabBar] Qt.t -> int -> string -> unit = "mlqt_QTabBar_setAccessibleTabName"
  external setCurrentIndex : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_setCurrentIndex"
  external currentChanged : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_currentChanged"
  external tabCloseRequested : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_tabCloseRequested"
  external tabMoved : [> qTabBar] Qt.t -> int -> int -> unit = "mlqt_QTabBar_tabMoved"
  external tabBarClicked : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_tabBarClicked"
  external tabBarDoubleClicked : [> qTabBar] Qt.t -> int -> unit = "mlqt_QTabBar_tabBarDoubleClicked"
  external signal'currentChanged1 : unit -> ([> qTabBar], int) Qt.signal = "mlqt_signal_QTabBar_currentChanged1" [@@noalloc]
  external signal'tabBarClicked1 : unit -> ([> qTabBar], int) Qt.signal = "mlqt_signal_QTabBar_tabBarClicked1" [@@noalloc]
  external signal'tabBarDoubleClicked1 : unit -> ([> qTabBar], int) Qt.signal = "mlqt_signal_QTabBar_tabBarDoubleClicked1" [@@noalloc]
  external signal'tabCloseRequested1 : unit -> ([> qTabBar], int) Qt.signal = "mlqt_signal_QTabBar_tabCloseRequested1" [@@noalloc]
  external signal'tabMoved1 : unit -> ([> qTabBar], int * int) Qt.signal = "mlqt_signal_QTabBar_tabMoved1" [@@noalloc]
  external slot'_q_closeTab : unit -> ([> qTabBar], unit) Qt.slot = "mlqt_slot_QTabBar__q_closeTab" [@@noalloc]
  external slot'_q_scrollTabs : unit -> ([> qTabBar], unit) Qt.slot = "mlqt_slot_QTabBar__q_scrollTabs" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qTabBar], int) Qt.slot = "mlqt_slot_QTabBar_setCurrentIndex1" [@@noalloc]
end
external new'QTabWidget : [> qWidget] Qt.t option -> qTabWidget Qt.t = "mlqt_QTabWidget_new_"
module QTabWidget = struct
  include QWidget
  external class' : unit -> qTabWidget Qt.qt_class = "mlqt_class_QTabWidget" [@@noalloc]
  external addTab : [> qTabWidget] Qt.t -> [> qWidget] Qt.t -> string -> int = "mlqt_QTabWidget_addTab"
  external addTab1 : [> qTabWidget] Qt.t -> [> qWidget] Qt.t -> [> qIcon] Qt.t -> string -> int = "mlqt_QTabWidget_addTab1"
  external insertTab : [> qTabWidget] Qt.t -> int -> [> qWidget] Qt.t -> string -> int = "mlqt_QTabWidget_insertTab"
  external insertTab1 : [> qTabWidget] Qt.t -> int -> [> qWidget] Qt.t -> [> qIcon] Qt.t -> string -> int = "mlqt_QTabWidget_insertTab1"
  external removeTab : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_removeTab"
  external isTabEnabled : [> qTabWidget] Qt.t -> int -> bool = "mlqt_QTabWidget_isTabEnabled"
  external setTabEnabled : [> qTabWidget] Qt.t -> int -> bool -> unit = "mlqt_QTabWidget_setTabEnabled"
  external tabText : [> qTabWidget] Qt.t -> int -> string = "mlqt_QTabWidget_tabText"
  external setTabText : [> qTabWidget] Qt.t -> int -> string -> unit = "mlqt_QTabWidget_setTabText"
  external tabIcon : [> qTabWidget] Qt.t -> int -> qIcon Qt.t = "mlqt_QTabWidget_tabIcon"
  external setTabIcon : [> qTabWidget] Qt.t -> int -> [> qIcon] Qt.t -> unit = "mlqt_QTabWidget_setTabIcon"
  external setTabToolTip : [> qTabWidget] Qt.t -> int -> string -> unit = "mlqt_QTabWidget_setTabToolTip"
  external tabToolTip : [> qTabWidget] Qt.t -> int -> string = "mlqt_QTabWidget_tabToolTip"
  external setTabWhatsThis : [> qTabWidget] Qt.t -> int -> string -> unit = "mlqt_QTabWidget_setTabWhatsThis"
  external tabWhatsThis : [> qTabWidget] Qt.t -> int -> string = "mlqt_QTabWidget_tabWhatsThis"
  external currentIndex : [> qTabWidget] Qt.t -> int = "mlqt_QTabWidget_currentIndex"
  external currentWidget : [> qTabWidget] Qt.t -> qWidget Qt.t = "mlqt_QTabWidget_currentWidget"
  external widget : [> qTabWidget] Qt.t -> int -> qWidget Qt.t = "mlqt_QTabWidget_widget"
  external indexOf : [> qTabWidget] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QTabWidget_indexOf"
  external count : [> qTabWidget] Qt.t -> int = "mlqt_QTabWidget_count"
  external tabPosition : [> qTabWidget] Qt.t -> qTabWidget'TabPosition = "mlqt_QTabWidget_tabPosition"
  external setTabPosition : [> qTabWidget] Qt.t -> qTabWidget'TabPosition -> unit = "mlqt_QTabWidget_setTabPosition"
  external tabsClosable : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_tabsClosable"
  external setTabsClosable : [> qTabWidget] Qt.t -> bool -> unit = "mlqt_QTabWidget_setTabsClosable"
  external isMovable : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_isMovable"
  external setMovable : [> qTabWidget] Qt.t -> bool -> unit = "mlqt_QTabWidget_setMovable"
  external tabShape : [> qTabWidget] Qt.t -> qTabWidget'TabShape = "mlqt_QTabWidget_tabShape"
  external setTabShape : [> qTabWidget] Qt.t -> qTabWidget'TabShape -> unit = "mlqt_QTabWidget_setTabShape"
  external sizeHint : [> qTabWidget] Qt.t -> qSize = "mlqt_QTabWidget_sizeHint"
  external minimumSizeHint : [> qTabWidget] Qt.t -> qSize = "mlqt_QTabWidget_minimumSizeHint"
  external heightForWidth : [> qTabWidget] Qt.t -> int -> int = "mlqt_QTabWidget_heightForWidth"
  external hasHeightForWidth : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_hasHeightForWidth"
  external setCornerWidget : [> qTabWidget] Qt.t -> [> qWidget] Qt.t -> qt'Corner -> unit = "mlqt_QTabWidget_setCornerWidget"
  external cornerWidget : [> qTabWidget] Qt.t -> qt'Corner -> qWidget Qt.t = "mlqt_QTabWidget_cornerWidget"
  external elideMode : [> qTabWidget] Qt.t -> qt'TextElideMode = "mlqt_QTabWidget_elideMode"
  external setElideMode : [> qTabWidget] Qt.t -> qt'TextElideMode -> unit = "mlqt_QTabWidget_setElideMode"
  external iconSize : [> qTabWidget] Qt.t -> qSize = "mlqt_QTabWidget_iconSize"
  external setIconSize : [> qTabWidget] Qt.t -> qSize -> unit = "mlqt_QTabWidget_setIconSize"
  external usesScrollButtons : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_usesScrollButtons"
  external setUsesScrollButtons : [> qTabWidget] Qt.t -> bool -> unit = "mlqt_QTabWidget_setUsesScrollButtons"
  external documentMode : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_documentMode"
  external setDocumentMode : [> qTabWidget] Qt.t -> bool -> unit = "mlqt_QTabWidget_setDocumentMode"
  external tabBarAutoHide : [> qTabWidget] Qt.t -> bool = "mlqt_QTabWidget_tabBarAutoHide"
  external setTabBarAutoHide : [> qTabWidget] Qt.t -> bool -> unit = "mlqt_QTabWidget_setTabBarAutoHide"
  external clear : [> qTabWidget] Qt.t -> unit = "mlqt_QTabWidget_clear"
  external tabBar : [> qTabWidget] Qt.t -> qTabBar Qt.t = "mlqt_QTabWidget_tabBar"
  external setCurrentIndex : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_setCurrentIndex"
  external setCurrentWidget : [> qTabWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QTabWidget_setCurrentWidget"
  external currentChanged : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_currentChanged"
  external tabCloseRequested : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_tabCloseRequested"
  external tabBarClicked : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_tabBarClicked"
  external tabBarDoubleClicked : [> qTabWidget] Qt.t -> int -> unit = "mlqt_QTabWidget_tabBarDoubleClicked"
  external signal'currentChanged1 : unit -> ([> qTabWidget], int) Qt.signal = "mlqt_signal_QTabWidget_currentChanged1" [@@noalloc]
  external signal'tabBarClicked1 : unit -> ([> qTabWidget], int) Qt.signal = "mlqt_signal_QTabWidget_tabBarClicked1" [@@noalloc]
  external signal'tabBarDoubleClicked1 : unit -> ([> qTabWidget], int) Qt.signal = "mlqt_signal_QTabWidget_tabBarDoubleClicked1" [@@noalloc]
  external signal'tabCloseRequested1 : unit -> ([> qTabWidget], int) Qt.signal = "mlqt_signal_QTabWidget_tabCloseRequested1" [@@noalloc]
  external slot'_q_removeTab : unit -> ([> qTabWidget], int) Qt.slot = "mlqt_slot_QTabWidget__q_removeTab" [@@noalloc]
  external slot'_q_showTab : unit -> ([> qTabWidget], int) Qt.slot = "mlqt_slot_QTabWidget__q_showTab" [@@noalloc]
  external slot'_q_tabMoved : unit -> ([> qTabWidget], int * int) Qt.slot = "mlqt_slot_QTabWidget__q_tabMoved" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qTabWidget], int) Qt.slot = "mlqt_slot_QTabWidget_setCurrentIndex1" [@@noalloc]
end
external new'QToolBar : string -> [> qWidget] Qt.t option -> qToolBar Qt.t = "mlqt_QToolBar_new_"
external new'QToolBar'1 : [> qWidget] Qt.t option -> qToolBar Qt.t = "mlqt_QToolBar_new_1"
module QToolBar = struct
  include QWidget
  external class' : unit -> qToolBar Qt.qt_class = "mlqt_class_QToolBar" [@@noalloc]
  external setMovable : [> qToolBar] Qt.t -> bool -> unit = "mlqt_QToolBar_setMovable"
  external isMovable : [> qToolBar] Qt.t -> bool = "mlqt_QToolBar_isMovable"
  external setAllowedAreas : [> qToolBar] Qt.t -> qt'ToolBarAreas -> unit = "mlqt_QToolBar_setAllowedAreas"
  external allowedAreas : [> qToolBar] Qt.t -> qt'ToolBarAreas = "mlqt_QToolBar_allowedAreas"
  external isAreaAllowed : [> qToolBar] Qt.t -> qt'ToolBarArea -> bool = "mlqt_QToolBar_isAreaAllowed"
  external setOrientation : [> qToolBar] Qt.t -> qt'Orientation -> unit = "mlqt_QToolBar_setOrientation"
  external orientation : [> qToolBar] Qt.t -> qt'Orientation = "mlqt_QToolBar_orientation"
  external clear : [> qToolBar] Qt.t -> unit = "mlqt_QToolBar_clear"
  external addAction : [> qToolBar] Qt.t -> string -> qAction Qt.t = "mlqt_QToolBar_addAction"
  external addAction1 : [> qToolBar] Qt.t -> [> qIcon] Qt.t -> string -> qAction Qt.t = "mlqt_QToolBar_addAction1"
  external addSeparator : [> qToolBar] Qt.t -> qAction Qt.t = "mlqt_QToolBar_addSeparator"
  external insertSeparator : [> qToolBar] Qt.t -> [> qAction] Qt.t -> qAction Qt.t = "mlqt_QToolBar_insertSeparator"
  external addWidget : [> qToolBar] Qt.t -> [> qWidget] Qt.t -> qAction Qt.t = "mlqt_QToolBar_addWidget"
  external insertWidget : [> qToolBar] Qt.t -> [> qAction] Qt.t -> [> qWidget] Qt.t -> qAction Qt.t = "mlqt_QToolBar_insertWidget"
  external actionAt : [> qToolBar] Qt.t -> qPoint -> qAction Qt.t = "mlqt_QToolBar_actionAt"
  external actionAt1 : [> qToolBar] Qt.t -> int -> int -> qAction Qt.t = "mlqt_QToolBar_actionAt1"
  external toggleViewAction : [> qToolBar] Qt.t -> qAction Qt.t = "mlqt_QToolBar_toggleViewAction"
  external iconSize : [> qToolBar] Qt.t -> qSize = "mlqt_QToolBar_iconSize"
  external toolButtonStyle : [> qToolBar] Qt.t -> qt'ToolButtonStyle = "mlqt_QToolBar_toolButtonStyle"
  external widgetForAction : [> qToolBar] Qt.t -> [> qAction] Qt.t -> qWidget Qt.t = "mlqt_QToolBar_widgetForAction"
  external isFloatable : [> qToolBar] Qt.t -> bool = "mlqt_QToolBar_isFloatable"
  external setFloatable : [> qToolBar] Qt.t -> bool -> unit = "mlqt_QToolBar_setFloatable"
  external isFloating : [> qToolBar] Qt.t -> bool = "mlqt_QToolBar_isFloating"
  external setIconSize : [> qToolBar] Qt.t -> qSize -> unit = "mlqt_QToolBar_setIconSize"
  external setToolButtonStyle : [> qToolBar] Qt.t -> qt'ToolButtonStyle -> unit = "mlqt_QToolBar_setToolButtonStyle"
  external actionTriggered : [> qToolBar] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QToolBar_actionTriggered"
  external movableChanged : [> qToolBar] Qt.t -> bool -> unit = "mlqt_QToolBar_movableChanged"
  external allowedAreasChanged : [> qToolBar] Qt.t -> qt'ToolBarAreas -> unit = "mlqt_QToolBar_allowedAreasChanged"
  external orientationChanged : [> qToolBar] Qt.t -> qt'Orientation -> unit = "mlqt_QToolBar_orientationChanged"
  external iconSizeChanged : [> qToolBar] Qt.t -> qSize -> unit = "mlqt_QToolBar_iconSizeChanged"
  external toolButtonStyleChanged : [> qToolBar] Qt.t -> qt'ToolButtonStyle -> unit = "mlqt_QToolBar_toolButtonStyleChanged"
  external topLevelChanged : [> qToolBar] Qt.t -> bool -> unit = "mlqt_QToolBar_topLevelChanged"
  external visibilityChanged : [> qToolBar] Qt.t -> bool -> unit = "mlqt_QToolBar_visibilityChanged"
  external signal'actionTriggered1 : unit -> ([> qToolBar], qAction Qt.t) Qt.signal = "mlqt_signal_QToolBar_actionTriggered1" [@@noalloc]
  external signal'allowedAreasChanged1 : unit -> ([> qToolBar], qt'ToolBarAreas) Qt.signal = "mlqt_signal_QToolBar_allowedAreasChanged1" [@@noalloc]
  external signal'iconSizeChanged1 : unit -> ([> qToolBar], qSize) Qt.signal = "mlqt_signal_QToolBar_iconSizeChanged1" [@@noalloc]
  external signal'movableChanged1 : unit -> ([> qToolBar], bool) Qt.signal = "mlqt_signal_QToolBar_movableChanged1" [@@noalloc]
  external signal'orientationChanged1 : unit -> ([> qToolBar], qt'Orientation) Qt.signal = "mlqt_signal_QToolBar_orientationChanged1" [@@noalloc]
  external signal'toolButtonStyleChanged1 : unit -> ([> qToolBar], qt'ToolButtonStyle) Qt.signal = "mlqt_signal_QToolBar_toolButtonStyleChanged1" [@@noalloc]
  external signal'topLevelChanged1 : unit -> ([> qToolBar], bool) Qt.signal = "mlqt_signal_QToolBar_topLevelChanged1" [@@noalloc]
  external signal'visibilityChanged1 : unit -> ([> qToolBar], bool) Qt.signal = "mlqt_signal_QToolBar_visibilityChanged1" [@@noalloc]
  external slot'_q_toggleView : unit -> ([> qToolBar], bool) Qt.slot = "mlqt_slot_QToolBar__q_toggleView" [@@noalloc]
  external slot'_q_updateIconSize : unit -> ([> qToolBar], qSize) Qt.slot = "mlqt_slot_QToolBar__q_updateIconSize" [@@noalloc]
  external slot'_q_updateToolButtonStyle : unit -> ([> qToolBar], qt'ToolButtonStyle) Qt.slot = "mlqt_slot_QToolBar__q_updateToolButtonStyle" [@@noalloc]
  external slot'setIconSize1 : unit -> ([> qToolBar], qSize) Qt.slot = "mlqt_slot_QToolBar_setIconSize1" [@@noalloc]
  external slot'setToolButtonStyle1 : unit -> ([> qToolBar], qt'ToolButtonStyle) Qt.slot = "mlqt_slot_QToolBar_setToolButtonStyle1" [@@noalloc]
end
external new'QBoxLayout : qBoxLayout'Direction -> [> qWidget] Qt.t option -> qBoxLayout Qt.t = "mlqt_QBoxLayout_new_"
module QBoxLayout = struct
  include QLayout
  external class' : unit -> qBoxLayout Qt.qt_class = "mlqt_class_QBoxLayout" [@@noalloc]
  external direction : [> qBoxLayout] Qt.t -> qBoxLayout'Direction = "mlqt_QBoxLayout_direction"
  external setDirection : [> qBoxLayout] Qt.t -> qBoxLayout'Direction -> unit = "mlqt_QBoxLayout_setDirection"
  external addSpacing : [> qBoxLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_addSpacing"
  external addStretch : [> qBoxLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_addStretch"
  external addWidget : [> qBoxLayout] Qt.t -> [> qWidget] Qt.t -> int -> qt'Alignment -> unit = "mlqt_QBoxLayout_addWidget"
  external addLayout : [> qBoxLayout] Qt.t -> [> qLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_addLayout"
  external addStrut : [> qBoxLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_addStrut"
  external insertSpacing : [> qBoxLayout] Qt.t -> int -> int -> unit = "mlqt_QBoxLayout_insertSpacing"
  external insertStretch : [> qBoxLayout] Qt.t -> int -> int -> unit = "mlqt_QBoxLayout_insertStretch"
  external insertWidget : [> qBoxLayout] Qt.t -> int -> [> qWidget] Qt.t -> int -> qt'Alignment -> unit = "mlqt_QBoxLayout_insertWidget"
  external insertLayout : [> qBoxLayout] Qt.t -> int -> [> qLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_insertLayout"
  external spacing : [> qBoxLayout] Qt.t -> int = "mlqt_QBoxLayout_spacing"
  external setSpacing : [> qBoxLayout] Qt.t -> int -> unit = "mlqt_QBoxLayout_setSpacing"
  external setStretchFactor : [> qBoxLayout] Qt.t -> [> qWidget] Qt.t -> int -> bool = "mlqt_QBoxLayout_setStretchFactor"
  external setStretchFactor1 : [> qBoxLayout] Qt.t -> [> qLayout] Qt.t -> int -> bool = "mlqt_QBoxLayout_setStretchFactor1"
  external setStretch : [> qBoxLayout] Qt.t -> int -> int -> unit = "mlqt_QBoxLayout_setStretch"
  external stretch : [> qBoxLayout] Qt.t -> int -> int = "mlqt_QBoxLayout_stretch"
  external sizeHint : [> qBoxLayout] Qt.t -> qSize = "mlqt_QBoxLayout_sizeHint"
  external minimumSize : [> qBoxLayout] Qt.t -> qSize = "mlqt_QBoxLayout_minimumSize"
  external maximumSize : [> qBoxLayout] Qt.t -> qSize = "mlqt_QBoxLayout_maximumSize"
  external hasHeightForWidth : [> qBoxLayout] Qt.t -> bool = "mlqt_QBoxLayout_hasHeightForWidth"
  external heightForWidth : [> qBoxLayout] Qt.t -> int -> int = "mlqt_QBoxLayout_heightForWidth"
  external minimumHeightForWidth : [> qBoxLayout] Qt.t -> int -> int = "mlqt_QBoxLayout_minimumHeightForWidth"
  external expandingDirections : [> qBoxLayout] Qt.t -> qt'Orientations = "mlqt_QBoxLayout_expandingDirections"
  external invalidate : [> qBoxLayout] Qt.t -> unit = "mlqt_QBoxLayout_invalidate"
  external count : [> qBoxLayout] Qt.t -> int = "mlqt_QBoxLayout_count"
  external setGeometry : [> qBoxLayout] Qt.t -> qRect -> unit = "mlqt_QBoxLayout_setGeometry"
end
external new'QFormLayout : [> qWidget] Qt.t option -> qFormLayout Qt.t = "mlqt_QFormLayout_new_"
module QFormLayout = struct
  include QLayout
  external class' : unit -> qFormLayout Qt.qt_class = "mlqt_class_QFormLayout" [@@noalloc]
  external setFieldGrowthPolicy : [> qFormLayout] Qt.t -> qFormLayout'FieldGrowthPolicy -> unit = "mlqt_QFormLayout_setFieldGrowthPolicy"
  external fieldGrowthPolicy : [> qFormLayout] Qt.t -> qFormLayout'FieldGrowthPolicy = "mlqt_QFormLayout_fieldGrowthPolicy"
  external setRowWrapPolicy : [> qFormLayout] Qt.t -> qFormLayout'RowWrapPolicy -> unit = "mlqt_QFormLayout_setRowWrapPolicy"
  external rowWrapPolicy : [> qFormLayout] Qt.t -> qFormLayout'RowWrapPolicy = "mlqt_QFormLayout_rowWrapPolicy"
  external setLabelAlignment : [> qFormLayout] Qt.t -> qt'Alignment -> unit = "mlqt_QFormLayout_setLabelAlignment"
  external labelAlignment : [> qFormLayout] Qt.t -> qt'Alignment = "mlqt_QFormLayout_labelAlignment"
  external setFormAlignment : [> qFormLayout] Qt.t -> qt'Alignment -> unit = "mlqt_QFormLayout_setFormAlignment"
  external formAlignment : [> qFormLayout] Qt.t -> qt'Alignment = "mlqt_QFormLayout_formAlignment"
  external setHorizontalSpacing : [> qFormLayout] Qt.t -> int -> unit = "mlqt_QFormLayout_setHorizontalSpacing"
  external horizontalSpacing : [> qFormLayout] Qt.t -> int = "mlqt_QFormLayout_horizontalSpacing"
  external setVerticalSpacing : [> qFormLayout] Qt.t -> int -> unit = "mlqt_QFormLayout_setVerticalSpacing"
  external verticalSpacing : [> qFormLayout] Qt.t -> int = "mlqt_QFormLayout_verticalSpacing"
  external spacing : [> qFormLayout] Qt.t -> int = "mlqt_QFormLayout_spacing"
  external setSpacing : [> qFormLayout] Qt.t -> int -> unit = "mlqt_QFormLayout_setSpacing"
  external addRow : [> qFormLayout] Qt.t -> [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_addRow"
  external addRow1 : [> qFormLayout] Qt.t -> [> qWidget] Qt.t -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_addRow1"
  external addRow2 : [> qFormLayout] Qt.t -> string -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_addRow2"
  external addRow3 : [> qFormLayout] Qt.t -> string -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_addRow3"
  external addRow4 : [> qFormLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_addRow4"
  external addRow5 : [> qFormLayout] Qt.t -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_addRow5"
  external insertRow : [> qFormLayout] Qt.t -> int -> [> qWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_insertRow"
  external insertRow1 : [> qFormLayout] Qt.t -> int -> [> qWidget] Qt.t -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_insertRow1"
  external insertRow2 : [> qFormLayout] Qt.t -> int -> string -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_insertRow2"
  external insertRow3 : [> qFormLayout] Qt.t -> int -> string -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_insertRow3"
  external insertRow4 : [> qFormLayout] Qt.t -> int -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_insertRow4"
  external insertRow5 : [> qFormLayout] Qt.t -> int -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_insertRow5"
  external removeRow : [> qFormLayout] Qt.t -> int -> unit = "mlqt_QFormLayout_removeRow"
  external removeRow1 : [> qFormLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QFormLayout_removeRow1"
  external removeRow2 : [> qFormLayout] Qt.t -> [> qLayout] Qt.t -> unit = "mlqt_QFormLayout_removeRow2"
  external setWidget : [> qFormLayout] Qt.t -> int -> qFormLayout'ItemRole -> [> qWidget] Qt.t option -> unit = "mlqt_QFormLayout_setWidget"
  external setLayout : [> qFormLayout] Qt.t -> int -> qFormLayout'ItemRole -> [> qLayout] Qt.t option -> unit = "mlqt_QFormLayout_setLayout"
  external labelForField : [> qFormLayout] Qt.t -> [> qWidget] Qt.t -> qWidget Qt.t option = "mlqt_QFormLayout_labelForField"
  external labelForField1 : [> qFormLayout] Qt.t -> [> qLayout] Qt.t -> qWidget Qt.t option = "mlqt_QFormLayout_labelForField1"
  external setGeometry : [> qFormLayout] Qt.t -> qRect -> unit = "mlqt_QFormLayout_setGeometry"
  external minimumSize : [> qFormLayout] Qt.t -> qSize = "mlqt_QFormLayout_minimumSize"
  external sizeHint : [> qFormLayout] Qt.t -> qSize = "mlqt_QFormLayout_sizeHint"
  external invalidate : [> qFormLayout] Qt.t -> unit = "mlqt_QFormLayout_invalidate"
  external hasHeightForWidth : [> qFormLayout] Qt.t -> bool = "mlqt_QFormLayout_hasHeightForWidth"
  external heightForWidth : [> qFormLayout] Qt.t -> int -> int = "mlqt_QFormLayout_heightForWidth"
  external expandingDirections : [> qFormLayout] Qt.t -> qt'Orientations = "mlqt_QFormLayout_expandingDirections"
  external count : [> qFormLayout] Qt.t -> int = "mlqt_QFormLayout_count"
  external rowCount : [> qFormLayout] Qt.t -> int = "mlqt_QFormLayout_rowCount"
end
external new'QGridLayout : [> qWidget] Qt.t option -> qGridLayout Qt.t = "mlqt_QGridLayout_new_"
external new'QGridLayout'1 : unit -> qGridLayout Qt.t = "mlqt_QGridLayout_new_1"
module QGridLayout = struct
  include QLayout
  external class' : unit -> qGridLayout Qt.qt_class = "mlqt_class_QGridLayout" [@@noalloc]
  external sizeHint : [> qGridLayout] Qt.t -> qSize = "mlqt_QGridLayout_sizeHint"
  external minimumSize : [> qGridLayout] Qt.t -> qSize = "mlqt_QGridLayout_minimumSize"
  external maximumSize : [> qGridLayout] Qt.t -> qSize = "mlqt_QGridLayout_maximumSize"
  external setHorizontalSpacing : [> qGridLayout] Qt.t -> int -> unit = "mlqt_QGridLayout_setHorizontalSpacing"
  external horizontalSpacing : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_horizontalSpacing"
  external setVerticalSpacing : [> qGridLayout] Qt.t -> int -> unit = "mlqt_QGridLayout_setVerticalSpacing"
  external verticalSpacing : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_verticalSpacing"
  external setSpacing : [> qGridLayout] Qt.t -> int -> unit = "mlqt_QGridLayout_setSpacing"
  external spacing : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_spacing"
  external setRowStretch : [> qGridLayout] Qt.t -> int -> int -> unit = "mlqt_QGridLayout_setRowStretch"
  external setColumnStretch : [> qGridLayout] Qt.t -> int -> int -> unit = "mlqt_QGridLayout_setColumnStretch"
  external rowStretch : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_rowStretch"
  external columnStretch : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_columnStretch"
  external setRowMinimumHeight : [> qGridLayout] Qt.t -> int -> int -> unit = "mlqt_QGridLayout_setRowMinimumHeight"
  external setColumnMinimumWidth : [> qGridLayout] Qt.t -> int -> int -> unit = "mlqt_QGridLayout_setColumnMinimumWidth"
  external rowMinimumHeight : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_rowMinimumHeight"
  external columnMinimumWidth : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_columnMinimumWidth"
  external columnCount : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_columnCount"
  external rowCount : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_rowCount"
  external cellRect : [> qGridLayout] Qt.t -> int -> int -> qRect = "mlqt_QGridLayout_cellRect"
  external hasHeightForWidth : [> qGridLayout] Qt.t -> bool = "mlqt_QGridLayout_hasHeightForWidth"
  external heightForWidth : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_heightForWidth"
  external minimumHeightForWidth : [> qGridLayout] Qt.t -> int -> int = "mlqt_QGridLayout_minimumHeightForWidth"
  external expandingDirections : [> qGridLayout] Qt.t -> qt'Orientations = "mlqt_QGridLayout_expandingDirections"
  external invalidate : [> qGridLayout] Qt.t -> unit = "mlqt_QGridLayout_invalidate"
  external addWidget : [> qGridLayout] Qt.t -> [> qWidget] Qt.t -> int -> int -> qt'Alignment -> unit = "mlqt_QGridLayout_addWidget"
  external addWidget1 : [> qGridLayout] Qt.t -> [> qWidget] Qt.t -> int -> int -> int -> int -> qt'Alignment -> unit = "mlqt_QGridLayout_addWidget1_bc" "mlqt_QGridLayout_addWidget1"
  external addLayout : [> qGridLayout] Qt.t -> [> qLayout] Qt.t -> int -> int -> qt'Alignment -> unit = "mlqt_QGridLayout_addLayout"
  external addLayout1 : [> qGridLayout] Qt.t -> [> qLayout] Qt.t -> int -> int -> int -> int -> qt'Alignment -> unit = "mlqt_QGridLayout_addLayout1_bc" "mlqt_QGridLayout_addLayout1"
  external setOriginCorner : [> qGridLayout] Qt.t -> qt'Corner -> unit = "mlqt_QGridLayout_setOriginCorner"
  external originCorner : [> qGridLayout] Qt.t -> qt'Corner = "mlqt_QGridLayout_originCorner"
  external count : [> qGridLayout] Qt.t -> int = "mlqt_QGridLayout_count"
  external setGeometry : [> qGridLayout] Qt.t -> qRect -> unit = "mlqt_QGridLayout_setGeometry"
end
external new'QStackedLayout : unit -> qStackedLayout Qt.t = "mlqt_QStackedLayout_new_"
external new'QStackedLayout'1 : [> qWidget] Qt.t option -> qStackedLayout Qt.t = "mlqt_QStackedLayout_new_1"
external new'QStackedLayout'2 : [> qLayout] Qt.t -> qStackedLayout Qt.t = "mlqt_QStackedLayout_new_2"
module QStackedLayout = struct
  include QLayout
  external class' : unit -> qStackedLayout Qt.qt_class = "mlqt_class_QStackedLayout" [@@noalloc]
  external addWidget : [> qStackedLayout] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QStackedLayout_addWidget"
  external insertWidget : [> qStackedLayout] Qt.t -> int -> [> qWidget] Qt.t -> int = "mlqt_QStackedLayout_insertWidget"
  external currentWidget : [> qStackedLayout] Qt.t -> qWidget Qt.t = "mlqt_QStackedLayout_currentWidget"
  external currentIndex : [> qStackedLayout] Qt.t -> int = "mlqt_QStackedLayout_currentIndex"
  external widget : [> qStackedLayout] Qt.t -> int -> qWidget Qt.t = "mlqt_QStackedLayout_widget"
  external count : [> qStackedLayout] Qt.t -> int = "mlqt_QStackedLayout_count"
  external stackingMode : [> qStackedLayout] Qt.t -> qStackedLayout'StackingMode = "mlqt_QStackedLayout_stackingMode"
  external setStackingMode : [> qStackedLayout] Qt.t -> qStackedLayout'StackingMode -> unit = "mlqt_QStackedLayout_setStackingMode"
  external sizeHint : [> qStackedLayout] Qt.t -> qSize = "mlqt_QStackedLayout_sizeHint"
  external minimumSize : [> qStackedLayout] Qt.t -> qSize = "mlqt_QStackedLayout_minimumSize"
  external setGeometry : [> qStackedLayout] Qt.t -> qRect -> unit = "mlqt_QStackedLayout_setGeometry"
  external hasHeightForWidth : [> qStackedLayout] Qt.t -> bool = "mlqt_QStackedLayout_hasHeightForWidth"
  external heightForWidth : [> qStackedLayout] Qt.t -> int -> int = "mlqt_QStackedLayout_heightForWidth"
  external widgetRemoved : [> qStackedLayout] Qt.t -> int -> unit = "mlqt_QStackedLayout_widgetRemoved"
  external currentChanged : [> qStackedLayout] Qt.t -> int -> unit = "mlqt_QStackedLayout_currentChanged"
  external setCurrentIndex : [> qStackedLayout] Qt.t -> int -> unit = "mlqt_QStackedLayout_setCurrentIndex"
  external setCurrentWidget : [> qStackedLayout] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QStackedLayout_setCurrentWidget"
end
module QStyleOptionSlider = struct
  include QStyleOptionComplex
end
module QStyleOptionSpinBox = struct
  include QStyleOptionComplex
end
module QStyleOptionToolButton = struct
  include QStyleOptionComplex
end
module QStyleOptionComboBox = struct
  include QStyleOptionComplex
end
module QStyleOptionTitleBar = struct
  include QStyleOptionComplex
end
module QStyleOptionGroupBox = struct
  include QStyleOptionComplex
end
module QStyleOptionSizeGrip = struct
  include QStyleOptionComplex
end
external new'QHBoxLayout : unit -> qHBoxLayout Qt.t = "mlqt_QHBoxLayout_new_"
external new'QHBoxLayout'1 : [> qWidget] Qt.t option -> qHBoxLayout Qt.t = "mlqt_QHBoxLayout_new_1"
module QHBoxLayout = struct
  include QBoxLayout
  external class' : unit -> qHBoxLayout Qt.qt_class = "mlqt_class_QHBoxLayout" [@@noalloc]
end
external new'QVBoxLayout : unit -> qVBoxLayout Qt.t = "mlqt_QVBoxLayout_new_"
external new'QVBoxLayout'1 : [> qWidget] Qt.t option -> qVBoxLayout Qt.t = "mlqt_QVBoxLayout_new_1"
module QVBoxLayout = struct
  include QBoxLayout
  external class' : unit -> qVBoxLayout Qt.qt_class = "mlqt_class_QVBoxLayout" [@@noalloc]
end
external new'QAbstractScrollArea : [> qWidget] Qt.t option -> qAbstractScrollArea Qt.t = "mlqt_QAbstractScrollArea_new_"
module QAbstractScrollArea = struct
  include QFrame
  external class' : unit -> qAbstractScrollArea Qt.qt_class = "mlqt_class_QAbstractScrollArea" [@@noalloc]
  external verticalScrollBarPolicy : [> qAbstractScrollArea] Qt.t -> qt'ScrollBarPolicy = "mlqt_QAbstractScrollArea_verticalScrollBarPolicy"
  external setVerticalScrollBarPolicy : [> qAbstractScrollArea] Qt.t -> qt'ScrollBarPolicy -> unit = "mlqt_QAbstractScrollArea_setVerticalScrollBarPolicy"
  external verticalScrollBar : [> qAbstractScrollArea] Qt.t -> qScrollBar Qt.t = "mlqt_QAbstractScrollArea_verticalScrollBar"
  external setVerticalScrollBar : [> qAbstractScrollArea] Qt.t -> [> qScrollBar] Qt.t -> unit = "mlqt_QAbstractScrollArea_setVerticalScrollBar"
  external horizontalScrollBarPolicy : [> qAbstractScrollArea] Qt.t -> qt'ScrollBarPolicy = "mlqt_QAbstractScrollArea_horizontalScrollBarPolicy"
  external setHorizontalScrollBarPolicy : [> qAbstractScrollArea] Qt.t -> qt'ScrollBarPolicy -> unit = "mlqt_QAbstractScrollArea_setHorizontalScrollBarPolicy"
  external horizontalScrollBar : [> qAbstractScrollArea] Qt.t -> qScrollBar Qt.t = "mlqt_QAbstractScrollArea_horizontalScrollBar"
  external setHorizontalScrollBar : [> qAbstractScrollArea] Qt.t -> [> qScrollBar] Qt.t -> unit = "mlqt_QAbstractScrollArea_setHorizontalScrollBar"
  external cornerWidget : [> qAbstractScrollArea] Qt.t -> qWidget Qt.t = "mlqt_QAbstractScrollArea_cornerWidget"
  external setCornerWidget : [> qAbstractScrollArea] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QAbstractScrollArea_setCornerWidget"
  external addScrollBarWidget : [> qAbstractScrollArea] Qt.t -> [> qWidget] Qt.t -> qt'Alignment -> unit = "mlqt_QAbstractScrollArea_addScrollBarWidget"
  external viewport : [> qAbstractScrollArea] Qt.t -> qWidget Qt.t = "mlqt_QAbstractScrollArea_viewport"
  external setViewport : [> qAbstractScrollArea] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QAbstractScrollArea_setViewport"
  external maximumViewportSize : [> qAbstractScrollArea] Qt.t -> qSize = "mlqt_QAbstractScrollArea_maximumViewportSize"
  external minimumSizeHint : [> qAbstractScrollArea] Qt.t -> qSize = "mlqt_QAbstractScrollArea_minimumSizeHint"
  external sizeHint : [> qAbstractScrollArea] Qt.t -> qSize = "mlqt_QAbstractScrollArea_sizeHint"
  external setupViewport : [> qAbstractScrollArea] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QAbstractScrollArea_setupViewport"
  external sizeAdjustPolicy : [> qAbstractScrollArea] Qt.t -> qAbstractScrollArea'SizeAdjustPolicy = "mlqt_QAbstractScrollArea_sizeAdjustPolicy"
  external setSizeAdjustPolicy : [> qAbstractScrollArea] Qt.t -> qAbstractScrollArea'SizeAdjustPolicy -> unit = "mlqt_QAbstractScrollArea_setSizeAdjustPolicy"
  external slot'_q_hslide : unit -> ([> qAbstractScrollArea], int) Qt.slot = "mlqt_slot_QAbstractScrollArea__q_hslide" [@@noalloc]
  external slot'_q_showOrHideScrollBars : unit -> ([> qAbstractScrollArea], unit) Qt.slot = "mlqt_slot_QAbstractScrollArea__q_showOrHideScrollBars" [@@noalloc]
  external slot'_q_vslide : unit -> ([> qAbstractScrollArea], int) Qt.slot = "mlqt_slot_QAbstractScrollArea__q_vslide" [@@noalloc]
end
external new'QLabel : [> qWidget] Qt.t option -> qt'WindowFlags -> qLabel Qt.t = "mlqt_QLabel_new_"
external new'QLabel'1 : string -> [> qWidget] Qt.t option -> qt'WindowFlags -> qLabel Qt.t = "mlqt_QLabel_new_1"
module QLabel = struct
  include QFrame
  external class' : unit -> qLabel Qt.qt_class = "mlqt_class_QLabel" [@@noalloc]
  external text : [> qLabel] Qt.t -> string = "mlqt_QLabel_text"
  external textFormat : [> qLabel] Qt.t -> qt'TextFormat = "mlqt_QLabel_textFormat"
  external setTextFormat : [> qLabel] Qt.t -> qt'TextFormat -> unit = "mlqt_QLabel_setTextFormat"
  external alignment : [> qLabel] Qt.t -> qt'Alignment = "mlqt_QLabel_alignment"
  external setAlignment : [> qLabel] Qt.t -> qt'Alignment -> unit = "mlqt_QLabel_setAlignment"
  external setWordWrap : [> qLabel] Qt.t -> bool -> unit = "mlqt_QLabel_setWordWrap"
  external wordWrap : [> qLabel] Qt.t -> bool = "mlqt_QLabel_wordWrap"
  external indent : [> qLabel] Qt.t -> int = "mlqt_QLabel_indent"
  external setIndent : [> qLabel] Qt.t -> int -> unit = "mlqt_QLabel_setIndent"
  external margin : [> qLabel] Qt.t -> int = "mlqt_QLabel_margin"
  external setMargin : [> qLabel] Qt.t -> int -> unit = "mlqt_QLabel_setMargin"
  external hasScaledContents : [> qLabel] Qt.t -> bool = "mlqt_QLabel_hasScaledContents"
  external setScaledContents : [> qLabel] Qt.t -> bool -> unit = "mlqt_QLabel_setScaledContents"
  external sizeHint : [> qLabel] Qt.t -> qSize = "mlqt_QLabel_sizeHint"
  external minimumSizeHint : [> qLabel] Qt.t -> qSize = "mlqt_QLabel_minimumSizeHint"
  external setBuddy : [> qLabel] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QLabel_setBuddy"
  external buddy : [> qLabel] Qt.t -> qWidget Qt.t = "mlqt_QLabel_buddy"
  external heightForWidth : [> qLabel] Qt.t -> int -> int = "mlqt_QLabel_heightForWidth"
  external openExternalLinks : [> qLabel] Qt.t -> bool = "mlqt_QLabel_openExternalLinks"
  external setOpenExternalLinks : [> qLabel] Qt.t -> bool -> unit = "mlqt_QLabel_setOpenExternalLinks"
  external setTextInteractionFlags : [> qLabel] Qt.t -> qt'TextInteractionFlags -> unit = "mlqt_QLabel_setTextInteractionFlags"
  external textInteractionFlags : [> qLabel] Qt.t -> qt'TextInteractionFlags = "mlqt_QLabel_textInteractionFlags"
  external setSelection : [> qLabel] Qt.t -> int -> int -> unit = "mlqt_QLabel_setSelection"
  external hasSelectedText : [> qLabel] Qt.t -> bool = "mlqt_QLabel_hasSelectedText"
  external selectedText : [> qLabel] Qt.t -> string = "mlqt_QLabel_selectedText"
  external selectionStart : [> qLabel] Qt.t -> int = "mlqt_QLabel_selectionStart"
  external setText : [> qLabel] Qt.t -> string -> unit = "mlqt_QLabel_setText"
  external setMovie : [> qLabel] Qt.t -> [> qMovie] Qt.t -> unit = "mlqt_QLabel_setMovie"
  external setNum : [> qLabel] Qt.t -> int -> unit = "mlqt_QLabel_setNum"
  external setNum1 : [> qLabel] Qt.t -> float -> unit = "mlqt_QLabel_setNum1"
  external clear : [> qLabel] Qt.t -> unit = "mlqt_QLabel_clear"
  external linkActivated : [> qLabel] Qt.t -> string -> unit = "mlqt_QLabel_linkActivated"
  external linkHovered : [> qLabel] Qt.t -> string -> unit = "mlqt_QLabel_linkHovered"
  external signal'linkActivated1 : unit -> ([> qLabel], string) Qt.signal = "mlqt_signal_QLabel_linkActivated1" [@@noalloc]
  external signal'linkHovered1 : unit -> ([> qLabel], string) Qt.signal = "mlqt_signal_QLabel_linkHovered1" [@@noalloc]
  external slot'clear1 : unit -> ([> qLabel], unit) Qt.slot = "mlqt_slot_QLabel_clear1" [@@noalloc]
  external slot'_q_linkHovered : unit -> ([> qLabel], string) Qt.slot = "mlqt_slot_QLabel__q_linkHovered" [@@noalloc]
  external slot'_q_movieResized : unit -> ([> qLabel], qSize) Qt.slot = "mlqt_slot_QLabel__q_movieResized" [@@noalloc]
  external slot'_q_movieUpdated : unit -> ([> qLabel], qRect) Qt.slot = "mlqt_slot_QLabel__q_movieUpdated" [@@noalloc]
  external slot'setNum2 : unit -> ([> qLabel], float) Qt.slot = "mlqt_slot_QLabel_setNum2" [@@noalloc]
  external slot'setNum3 : unit -> ([> qLabel], int) Qt.slot = "mlqt_slot_QLabel_setNum3" [@@noalloc]
  external slot'setPixmap : unit -> ([> qLabel], [> qPixmap] Qt.t) Qt.slot = "mlqt_slot_QLabel_setPixmap" [@@noalloc]
  external slot'setText1 : unit -> ([> qLabel], string) Qt.slot = "mlqt_slot_QLabel_setText1" [@@noalloc]
end
external new'QLCDNumber : [> qWidget] Qt.t option -> qLCDNumber Qt.t = "mlqt_QLCDNumber_new_"
external new'QLCDNumber'1 : int -> [> qWidget] Qt.t option -> qLCDNumber Qt.t = "mlqt_QLCDNumber_new_1"
module QLCDNumber = struct
  include QFrame
  external class' : unit -> qLCDNumber Qt.qt_class = "mlqt_class_QLCDNumber" [@@noalloc]
  external smallDecimalPoint : [> qLCDNumber] Qt.t -> bool = "mlqt_QLCDNumber_smallDecimalPoint"
  external digitCount : [> qLCDNumber] Qt.t -> int = "mlqt_QLCDNumber_digitCount"
  external setDigitCount : [> qLCDNumber] Qt.t -> int -> unit = "mlqt_QLCDNumber_setDigitCount"
  external checkOverflow : [> qLCDNumber] Qt.t -> float -> bool = "mlqt_QLCDNumber_checkOverflow"
  external checkOverflow1 : [> qLCDNumber] Qt.t -> int -> bool = "mlqt_QLCDNumber_checkOverflow1"
  external mode : [> qLCDNumber] Qt.t -> qLCDNumber'Mode = "mlqt_QLCDNumber_mode"
  external setMode : [> qLCDNumber] Qt.t -> qLCDNumber'Mode -> unit = "mlqt_QLCDNumber_setMode"
  external segmentStyle : [> qLCDNumber] Qt.t -> qLCDNumber'SegmentStyle = "mlqt_QLCDNumber_segmentStyle"
  external setSegmentStyle : [> qLCDNumber] Qt.t -> qLCDNumber'SegmentStyle -> unit = "mlqt_QLCDNumber_setSegmentStyle"
  external value : [> qLCDNumber] Qt.t -> float = "mlqt_QLCDNumber_value"
  external intValue : [> qLCDNumber] Qt.t -> int = "mlqt_QLCDNumber_intValue"
  external sizeHint : [> qLCDNumber] Qt.t -> qSize = "mlqt_QLCDNumber_sizeHint"
  external display : [> qLCDNumber] Qt.t -> string -> unit = "mlqt_QLCDNumber_display"
  external display1 : [> qLCDNumber] Qt.t -> int -> unit = "mlqt_QLCDNumber_display1"
  external display2 : [> qLCDNumber] Qt.t -> float -> unit = "mlqt_QLCDNumber_display2"
  external setHexMode : [> qLCDNumber] Qt.t -> unit = "mlqt_QLCDNumber_setHexMode"
  external setDecMode : [> qLCDNumber] Qt.t -> unit = "mlqt_QLCDNumber_setDecMode"
  external setOctMode : [> qLCDNumber] Qt.t -> unit = "mlqt_QLCDNumber_setOctMode"
  external setBinMode : [> qLCDNumber] Qt.t -> unit = "mlqt_QLCDNumber_setBinMode"
  external setSmallDecimalPoint : [> qLCDNumber] Qt.t -> bool -> unit = "mlqt_QLCDNumber_setSmallDecimalPoint"
  external overflow : [> qLCDNumber] Qt.t -> unit = "mlqt_QLCDNumber_overflow"
  external signal'overflow1 : unit -> ([> qLCDNumber], unit) Qt.signal = "mlqt_signal_QLCDNumber_overflow1" [@@noalloc]
  external slot'display3 : unit -> ([> qLCDNumber], float) Qt.slot = "mlqt_slot_QLCDNumber_display3" [@@noalloc]
  external slot'display4 : unit -> ([> qLCDNumber], int) Qt.slot = "mlqt_slot_QLCDNumber_display4" [@@noalloc]
  external slot'display5 : unit -> ([> qLCDNumber], string) Qt.slot = "mlqt_slot_QLCDNumber_display5" [@@noalloc]
  external slot'setBinMode1 : unit -> ([> qLCDNumber], unit) Qt.slot = "mlqt_slot_QLCDNumber_setBinMode1" [@@noalloc]
  external slot'setDecMode1 : unit -> ([> qLCDNumber], unit) Qt.slot = "mlqt_slot_QLCDNumber_setDecMode1" [@@noalloc]
  external slot'setHexMode1 : unit -> ([> qLCDNumber], unit) Qt.slot = "mlqt_slot_QLCDNumber_setHexMode1" [@@noalloc]
  external slot'setOctMode1 : unit -> ([> qLCDNumber], unit) Qt.slot = "mlqt_slot_QLCDNumber_setOctMode1" [@@noalloc]
  external slot'setSmallDecimalPoint1 : unit -> ([> qLCDNumber], bool) Qt.slot = "mlqt_slot_QLCDNumber_setSmallDecimalPoint1" [@@noalloc]
end
external new'QSplitter : [> qWidget] Qt.t option -> qSplitter Qt.t = "mlqt_QSplitter_new_"
external new'QSplitter'1 : qt'Orientation -> [> qWidget] Qt.t option -> qSplitter Qt.t = "mlqt_QSplitter_new_1"
module QSplitter = struct
  include QFrame
  external class' : unit -> qSplitter Qt.qt_class = "mlqt_class_QSplitter" [@@noalloc]
  external addWidget : [> qSplitter] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QSplitter_addWidget"
  external insertWidget : [> qSplitter] Qt.t -> int -> [> qWidget] Qt.t -> unit = "mlqt_QSplitter_insertWidget"
  external replaceWidget : [> qSplitter] Qt.t -> int -> [> qWidget] Qt.t -> qWidget Qt.t = "mlqt_QSplitter_replaceWidget"
  external setOrientation : [> qSplitter] Qt.t -> qt'Orientation -> unit = "mlqt_QSplitter_setOrientation"
  external orientation : [> qSplitter] Qt.t -> qt'Orientation = "mlqt_QSplitter_orientation"
  external setChildrenCollapsible : [> qSplitter] Qt.t -> bool -> unit = "mlqt_QSplitter_setChildrenCollapsible"
  external childrenCollapsible : [> qSplitter] Qt.t -> bool = "mlqt_QSplitter_childrenCollapsible"
  external setCollapsible : [> qSplitter] Qt.t -> int -> bool -> unit = "mlqt_QSplitter_setCollapsible"
  external isCollapsible : [> qSplitter] Qt.t -> int -> bool = "mlqt_QSplitter_isCollapsible"
  external setOpaqueResize : [> qSplitter] Qt.t -> bool -> unit = "mlqt_QSplitter_setOpaqueResize"
  external opaqueResize : [> qSplitter] Qt.t -> bool = "mlqt_QSplitter_opaqueResize"
  external refresh : [> qSplitter] Qt.t -> unit = "mlqt_QSplitter_refresh"
  external sizeHint : [> qSplitter] Qt.t -> qSize = "mlqt_QSplitter_sizeHint"
  external minimumSizeHint : [> qSplitter] Qt.t -> qSize = "mlqt_QSplitter_minimumSizeHint"
  external saveState : [> qSplitter] Qt.t -> qByteArray Qt.t = "mlqt_QSplitter_saveState"
  external restoreState : [> qSplitter] Qt.t -> [> qByteArray] Qt.t -> bool = "mlqt_QSplitter_restoreState"
  external handleWidth : [> qSplitter] Qt.t -> int = "mlqt_QSplitter_handleWidth"
  external setHandleWidth : [> qSplitter] Qt.t -> int -> unit = "mlqt_QSplitter_setHandleWidth"
  external indexOf : [> qSplitter] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QSplitter_indexOf"
  external widget : [> qSplitter] Qt.t -> int -> qWidget Qt.t = "mlqt_QSplitter_widget"
  external count : [> qSplitter] Qt.t -> int = "mlqt_QSplitter_count"
  external handle : [> qSplitter] Qt.t -> int -> qSplitterHandle Qt.t = "mlqt_QSplitter_handle"
  external setStretchFactor : [> qSplitter] Qt.t -> int -> int -> unit = "mlqt_QSplitter_setStretchFactor"
  external splitterMoved : [> qSplitter] Qt.t -> int -> int -> unit = "mlqt_QSplitter_splitterMoved"
  external signal'splitterMoved1 : unit -> ([> qSplitter], int * int) Qt.signal = "mlqt_signal_QSplitter_splitterMoved1" [@@noalloc]
end
external new'QStackedWidget : [> qWidget] Qt.t option -> qStackedWidget Qt.t = "mlqt_QStackedWidget_new_"
module QStackedWidget = struct
  include QFrame
  external class' : unit -> qStackedWidget Qt.qt_class = "mlqt_class_QStackedWidget" [@@noalloc]
  external addWidget : [> qStackedWidget] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QStackedWidget_addWidget"
  external insertWidget : [> qStackedWidget] Qt.t -> int -> [> qWidget] Qt.t -> int = "mlqt_QStackedWidget_insertWidget"
  external removeWidget : [> qStackedWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QStackedWidget_removeWidget"
  external currentWidget : [> qStackedWidget] Qt.t -> qWidget Qt.t = "mlqt_QStackedWidget_currentWidget"
  external currentIndex : [> qStackedWidget] Qt.t -> int = "mlqt_QStackedWidget_currentIndex"
  external indexOf : [> qStackedWidget] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QStackedWidget_indexOf"
  external widget : [> qStackedWidget] Qt.t -> int -> qWidget Qt.t = "mlqt_QStackedWidget_widget"
  external count : [> qStackedWidget] Qt.t -> int = "mlqt_QStackedWidget_count"
  external setCurrentIndex : [> qStackedWidget] Qt.t -> int -> unit = "mlqt_QStackedWidget_setCurrentIndex"
  external setCurrentWidget : [> qStackedWidget] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QStackedWidget_setCurrentWidget"
  external currentChanged : [> qStackedWidget] Qt.t -> int -> unit = "mlqt_QStackedWidget_currentChanged"
  external widgetRemoved : [> qStackedWidget] Qt.t -> int -> unit = "mlqt_QStackedWidget_widgetRemoved"
  external signal'currentChanged1 : unit -> ([> qStackedWidget], int) Qt.signal = "mlqt_signal_QStackedWidget_currentChanged1" [@@noalloc]
  external signal'widgetRemoved1 : unit -> ([> qStackedWidget], int) Qt.signal = "mlqt_signal_QStackedWidget_widgetRemoved1" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qStackedWidget], int) Qt.slot = "mlqt_slot_QStackedWidget_setCurrentIndex1" [@@noalloc]
  external slot'setCurrentWidget1 : unit -> ([> qStackedWidget], [> qWidget] Qt.t) Qt.slot = "mlqt_slot_QStackedWidget_setCurrentWidget1" [@@noalloc]
end
external new'QToolBox : [> qWidget] Qt.t option -> qt'WindowFlags -> qToolBox Qt.t = "mlqt_QToolBox_new_"
module QToolBox = struct
  include QFrame
  external class' : unit -> qToolBox Qt.qt_class = "mlqt_class_QToolBox" [@@noalloc]
  external addItem : [> qToolBox] Qt.t -> [> qWidget] Qt.t -> string -> int = "mlqt_QToolBox_addItem"
  external addItem1 : [> qToolBox] Qt.t -> [> qWidget] Qt.t -> [> qIcon] Qt.t -> string -> int = "mlqt_QToolBox_addItem1"
  external insertItem : [> qToolBox] Qt.t -> int -> [> qWidget] Qt.t -> string -> int = "mlqt_QToolBox_insertItem"
  external insertItem1 : [> qToolBox] Qt.t -> int -> [> qWidget] Qt.t -> [> qIcon] Qt.t -> string -> int = "mlqt_QToolBox_insertItem1"
  external removeItem : [> qToolBox] Qt.t -> int -> unit = "mlqt_QToolBox_removeItem"
  external setItemEnabled : [> qToolBox] Qt.t -> int -> bool -> unit = "mlqt_QToolBox_setItemEnabled"
  external isItemEnabled : [> qToolBox] Qt.t -> int -> bool = "mlqt_QToolBox_isItemEnabled"
  external setItemText : [> qToolBox] Qt.t -> int -> string -> unit = "mlqt_QToolBox_setItemText"
  external itemText : [> qToolBox] Qt.t -> int -> string = "mlqt_QToolBox_itemText"
  external setItemIcon : [> qToolBox] Qt.t -> int -> [> qIcon] Qt.t -> unit = "mlqt_QToolBox_setItemIcon"
  external itemIcon : [> qToolBox] Qt.t -> int -> qIcon Qt.t = "mlqt_QToolBox_itemIcon"
  external setItemToolTip : [> qToolBox] Qt.t -> int -> string -> unit = "mlqt_QToolBox_setItemToolTip"
  external itemToolTip : [> qToolBox] Qt.t -> int -> string = "mlqt_QToolBox_itemToolTip"
  external currentIndex : [> qToolBox] Qt.t -> int = "mlqt_QToolBox_currentIndex"
  external currentWidget : [> qToolBox] Qt.t -> qWidget Qt.t = "mlqt_QToolBox_currentWidget"
  external widget : [> qToolBox] Qt.t -> int -> qWidget Qt.t = "mlqt_QToolBox_widget"
  external indexOf : [> qToolBox] Qt.t -> [> qWidget] Qt.t -> int = "mlqt_QToolBox_indexOf"
  external count : [> qToolBox] Qt.t -> int = "mlqt_QToolBox_count"
  external setCurrentIndex : [> qToolBox] Qt.t -> int -> unit = "mlqt_QToolBox_setCurrentIndex"
  external setCurrentWidget : [> qToolBox] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QToolBox_setCurrentWidget"
  external currentChanged : [> qToolBox] Qt.t -> int -> unit = "mlqt_QToolBox_currentChanged"
  external signal'currentChanged1 : unit -> ([> qToolBox], int) Qt.signal = "mlqt_signal_QToolBox_currentChanged1" [@@noalloc]
  external slot'_q_buttonClicked : unit -> ([> qToolBox], unit) Qt.slot = "mlqt_slot_QToolBox__q_buttonClicked" [@@noalloc]
  external slot'_q_widgetDestroyed : unit -> ([> qToolBox], [> qObject] Qt.t) Qt.slot = "mlqt_slot_QToolBox__q_widgetDestroyed" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qToolBox], int) Qt.slot = "mlqt_slot_QToolBox_setCurrentIndex1" [@@noalloc]
  external slot'setCurrentWidget1 : unit -> ([> qToolBox], [> qWidget] Qt.t) Qt.slot = "mlqt_slot_QToolBox_setCurrentWidget1" [@@noalloc]
end
external new'QFontComboBox : [> qWidget] Qt.t option -> qFontComboBox Qt.t = "mlqt_QFontComboBox_new_"
module QFontComboBox = struct
  include QComboBox
  external class' : unit -> qFontComboBox Qt.qt_class = "mlqt_class_QFontComboBox" [@@noalloc]
  external setWritingSystem : [> qFontComboBox] Qt.t -> qFontDatabase'WritingSystem -> unit = "mlqt_QFontComboBox_setWritingSystem"
  external writingSystem : [> qFontComboBox] Qt.t -> qFontDatabase'WritingSystem = "mlqt_QFontComboBox_writingSystem"
  external setFontFilters : [> qFontComboBox] Qt.t -> qFontComboBox'FontFilters -> unit = "mlqt_QFontComboBox_setFontFilters"
  external fontFilters : [> qFontComboBox] Qt.t -> qFontComboBox'FontFilters = "mlqt_QFontComboBox_fontFilters"
  external currentFont : [> qFontComboBox] Qt.t -> qFont Qt.t = "mlqt_QFontComboBox_currentFont"
  external sizeHint : [> qFontComboBox] Qt.t -> qSize = "mlqt_QFontComboBox_sizeHint"
  external setCurrentFont : [> qFontComboBox] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QFontComboBox_setCurrentFont"
  external currentFontChanged : [> qFontComboBox] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QFontComboBox_currentFontChanged"
  external signal'currentFontChanged1 : unit -> ([> qFontComboBox], qFont Qt.t) Qt.signal = "mlqt_signal_QFontComboBox_currentFontChanged1" [@@noalloc]
  external slot'_q_currentChanged : unit -> ([> qFontComboBox], string) Qt.slot = "mlqt_slot_QFontComboBox__q_currentChanged" [@@noalloc]
  external slot'_q_updateModel : unit -> ([> qFontComboBox], unit) Qt.slot = "mlqt_slot_QFontComboBox__q_updateModel" [@@noalloc]
  external slot'setCurrentFont1 : unit -> ([> qFontComboBox], [> qFont] Qt.t) Qt.slot = "mlqt_slot_QFontComboBox_setCurrentFont1" [@@noalloc]
end
external new'QDateTimeEdit : [> qWidget] Qt.t option -> qDateTimeEdit Qt.t = "mlqt_QDateTimeEdit_new_"
external new'QDateTimeEdit'1 : [> qDateTime] Qt.t -> [> qWidget] Qt.t option -> qDateTimeEdit Qt.t = "mlqt_QDateTimeEdit_new_1"
external new'QDateTimeEdit'2 : [> qDate] Qt.t -> [> qWidget] Qt.t option -> qDateTimeEdit Qt.t = "mlqt_QDateTimeEdit_new_2"
external new'QDateTimeEdit'3 : [> qTime] Qt.t -> [> qWidget] Qt.t option -> qDateTimeEdit Qt.t = "mlqt_QDateTimeEdit_new_3"
module QDateTimeEdit = struct
  include QAbstractSpinBox
  external class' : unit -> qDateTimeEdit Qt.qt_class = "mlqt_class_QDateTimeEdit" [@@noalloc]
  external dateTime : [> qDateTimeEdit] Qt.t -> qDateTime Qt.t = "mlqt_QDateTimeEdit_dateTime"
  external date : [> qDateTimeEdit] Qt.t -> qDate Qt.t = "mlqt_QDateTimeEdit_date"
  external time : [> qDateTimeEdit] Qt.t -> qTime Qt.t = "mlqt_QDateTimeEdit_time"
  external minimumDateTime : [> qDateTimeEdit] Qt.t -> qDateTime Qt.t = "mlqt_QDateTimeEdit_minimumDateTime"
  external clearMinimumDateTime : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMinimumDateTime"
  external setMinimumDateTime : [> qDateTimeEdit] Qt.t -> [> qDateTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setMinimumDateTime"
  external maximumDateTime : [> qDateTimeEdit] Qt.t -> qDateTime Qt.t = "mlqt_QDateTimeEdit_maximumDateTime"
  external clearMaximumDateTime : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMaximumDateTime"
  external setMaximumDateTime : [> qDateTimeEdit] Qt.t -> [> qDateTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setMaximumDateTime"
  external setDateTimeRange : [> qDateTimeEdit] Qt.t -> [> qDateTime] Qt.t -> [> qDateTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setDateTimeRange"
  external minimumDate : [> qDateTimeEdit] Qt.t -> qDate Qt.t = "mlqt_QDateTimeEdit_minimumDate"
  external setMinimumDate : [> qDateTimeEdit] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QDateTimeEdit_setMinimumDate"
  external clearMinimumDate : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMinimumDate"
  external maximumDate : [> qDateTimeEdit] Qt.t -> qDate Qt.t = "mlqt_QDateTimeEdit_maximumDate"
  external setMaximumDate : [> qDateTimeEdit] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QDateTimeEdit_setMaximumDate"
  external clearMaximumDate : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMaximumDate"
  external setDateRange : [> qDateTimeEdit] Qt.t -> [> qDate] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QDateTimeEdit_setDateRange"
  external minimumTime : [> qDateTimeEdit] Qt.t -> qTime Qt.t = "mlqt_QDateTimeEdit_minimumTime"
  external setMinimumTime : [> qDateTimeEdit] Qt.t -> [> qTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setMinimumTime"
  external clearMinimumTime : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMinimumTime"
  external maximumTime : [> qDateTimeEdit] Qt.t -> qTime Qt.t = "mlqt_QDateTimeEdit_maximumTime"
  external setMaximumTime : [> qDateTimeEdit] Qt.t -> [> qTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setMaximumTime"
  external clearMaximumTime : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clearMaximumTime"
  external setTimeRange : [> qDateTimeEdit] Qt.t -> [> qTime] Qt.t -> [> qTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setTimeRange"
  external displayedSections : [> qDateTimeEdit] Qt.t -> qDateTimeEdit'Sections = "mlqt_QDateTimeEdit_displayedSections"
  external currentSection : [> qDateTimeEdit] Qt.t -> qDateTimeEdit'Section = "mlqt_QDateTimeEdit_currentSection"
  external sectionAt : [> qDateTimeEdit] Qt.t -> int -> qDateTimeEdit'Section = "mlqt_QDateTimeEdit_sectionAt"
  external setCurrentSection : [> qDateTimeEdit] Qt.t -> qDateTimeEdit'Section -> unit = "mlqt_QDateTimeEdit_setCurrentSection"
  external currentSectionIndex : [> qDateTimeEdit] Qt.t -> int = "mlqt_QDateTimeEdit_currentSectionIndex"
  external setCurrentSectionIndex : [> qDateTimeEdit] Qt.t -> int -> unit = "mlqt_QDateTimeEdit_setCurrentSectionIndex"
  external calendarWidget : [> qDateTimeEdit] Qt.t -> qCalendarWidget Qt.t = "mlqt_QDateTimeEdit_calendarWidget"
  external setCalendarWidget : [> qDateTimeEdit] Qt.t -> [> qCalendarWidget] Qt.t -> unit = "mlqt_QDateTimeEdit_setCalendarWidget"
  external sectionCount : [> qDateTimeEdit] Qt.t -> int = "mlqt_QDateTimeEdit_sectionCount"
  external setSelectedSection : [> qDateTimeEdit] Qt.t -> qDateTimeEdit'Section -> unit = "mlqt_QDateTimeEdit_setSelectedSection"
  external sectionText : [> qDateTimeEdit] Qt.t -> qDateTimeEdit'Section -> string = "mlqt_QDateTimeEdit_sectionText"
  external displayFormat : [> qDateTimeEdit] Qt.t -> string = "mlqt_QDateTimeEdit_displayFormat"
  external setDisplayFormat : [> qDateTimeEdit] Qt.t -> string -> unit = "mlqt_QDateTimeEdit_setDisplayFormat"
  external calendarPopup : [> qDateTimeEdit] Qt.t -> bool = "mlqt_QDateTimeEdit_calendarPopup"
  external setCalendarPopup : [> qDateTimeEdit] Qt.t -> bool -> unit = "mlqt_QDateTimeEdit_setCalendarPopup"
  external timeSpec : [> qDateTimeEdit] Qt.t -> qt'TimeSpec = "mlqt_QDateTimeEdit_timeSpec"
  external setTimeSpec : [> qDateTimeEdit] Qt.t -> qt'TimeSpec -> unit = "mlqt_QDateTimeEdit_setTimeSpec"
  external sizeHint : [> qDateTimeEdit] Qt.t -> qSize = "mlqt_QDateTimeEdit_sizeHint"
  external clear : [> qDateTimeEdit] Qt.t -> unit = "mlqt_QDateTimeEdit_clear"
  external stepBy : [> qDateTimeEdit] Qt.t -> int -> unit = "mlqt_QDateTimeEdit_stepBy"
  external event : [> qDateTimeEdit] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QDateTimeEdit_event"
  external dateTimeChanged : [> qDateTimeEdit] Qt.t -> [> qDateTime] Qt.t -> unit = "mlqt_QDateTimeEdit_dateTimeChanged"
  external timeChanged : [> qDateTimeEdit] Qt.t -> [> qTime] Qt.t -> unit = "mlqt_QDateTimeEdit_timeChanged"
  external dateChanged : [> qDateTimeEdit] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QDateTimeEdit_dateChanged"
  external setDateTime : [> qDateTimeEdit] Qt.t -> [> qDateTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setDateTime"
  external setDate : [> qDateTimeEdit] Qt.t -> [> qDate] Qt.t -> unit = "mlqt_QDateTimeEdit_setDate"
  external setTime : [> qDateTimeEdit] Qt.t -> [> qTime] Qt.t -> unit = "mlqt_QDateTimeEdit_setTime"
end
external new'QSpinBox : [> qWidget] Qt.t option -> qSpinBox Qt.t = "mlqt_QSpinBox_new_"
module QSpinBox = struct
  include QAbstractSpinBox
  external class' : unit -> qSpinBox Qt.qt_class = "mlqt_class_QSpinBox" [@@noalloc]
  external value : [> qSpinBox] Qt.t -> int = "mlqt_QSpinBox_value"
  external prefix : [> qSpinBox] Qt.t -> string = "mlqt_QSpinBox_prefix"
  external setPrefix : [> qSpinBox] Qt.t -> string -> unit = "mlqt_QSpinBox_setPrefix"
  external suffix : [> qSpinBox] Qt.t -> string = "mlqt_QSpinBox_suffix"
  external setSuffix : [> qSpinBox] Qt.t -> string -> unit = "mlqt_QSpinBox_setSuffix"
  external cleanText : [> qSpinBox] Qt.t -> string = "mlqt_QSpinBox_cleanText"
  external singleStep : [> qSpinBox] Qt.t -> int = "mlqt_QSpinBox_singleStep"
  external setSingleStep : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_setSingleStep"
  external minimum : [> qSpinBox] Qt.t -> int = "mlqt_QSpinBox_minimum"
  external setMinimum : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_setMinimum"
  external maximum : [> qSpinBox] Qt.t -> int = "mlqt_QSpinBox_maximum"
  external setMaximum : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_setMaximum"
  external setRange : [> qSpinBox] Qt.t -> int -> int -> unit = "mlqt_QSpinBox_setRange"
  external displayIntegerBase : [> qSpinBox] Qt.t -> int = "mlqt_QSpinBox_displayIntegerBase"
  external setDisplayIntegerBase : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_setDisplayIntegerBase"
  external setValue : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_setValue"
  external valueChanged : [> qSpinBox] Qt.t -> int -> unit = "mlqt_QSpinBox_valueChanged"
  external valueChanged1 : [> qSpinBox] Qt.t -> string -> unit = "mlqt_QSpinBox_valueChanged1"
  external signal'valueChanged2 : unit -> ([> qSpinBox], int) Qt.signal = "mlqt_signal_QSpinBox_valueChanged2" [@@noalloc]
  external signal'valueChanged3 : unit -> ([> qSpinBox], string) Qt.signal = "mlqt_signal_QSpinBox_valueChanged3" [@@noalloc]
  external slot'setValue1 : unit -> ([> qSpinBox], int) Qt.slot = "mlqt_slot_QSpinBox_setValue1" [@@noalloc]
end
external new'QDoubleSpinBox : [> qWidget] Qt.t option -> qDoubleSpinBox Qt.t = "mlqt_QDoubleSpinBox_new_"
module QDoubleSpinBox = struct
  include QAbstractSpinBox
  external class' : unit -> qDoubleSpinBox Qt.qt_class = "mlqt_class_QDoubleSpinBox" [@@noalloc]
  external value : [> qDoubleSpinBox] Qt.t -> float = "mlqt_QDoubleSpinBox_value"
  external prefix : [> qDoubleSpinBox] Qt.t -> string = "mlqt_QDoubleSpinBox_prefix"
  external setPrefix : [> qDoubleSpinBox] Qt.t -> string -> unit = "mlqt_QDoubleSpinBox_setPrefix"
  external suffix : [> qDoubleSpinBox] Qt.t -> string = "mlqt_QDoubleSpinBox_suffix"
  external setSuffix : [> qDoubleSpinBox] Qt.t -> string -> unit = "mlqt_QDoubleSpinBox_setSuffix"
  external cleanText : [> qDoubleSpinBox] Qt.t -> string = "mlqt_QDoubleSpinBox_cleanText"
  external singleStep : [> qDoubleSpinBox] Qt.t -> float = "mlqt_QDoubleSpinBox_singleStep"
  external setSingleStep : [> qDoubleSpinBox] Qt.t -> float -> unit = "mlqt_QDoubleSpinBox_setSingleStep"
  external minimum : [> qDoubleSpinBox] Qt.t -> float = "mlqt_QDoubleSpinBox_minimum"
  external setMinimum : [> qDoubleSpinBox] Qt.t -> float -> unit = "mlqt_QDoubleSpinBox_setMinimum"
  external maximum : [> qDoubleSpinBox] Qt.t -> float = "mlqt_QDoubleSpinBox_maximum"
  external setMaximum : [> qDoubleSpinBox] Qt.t -> float -> unit = "mlqt_QDoubleSpinBox_setMaximum"
  external setRange : [> qDoubleSpinBox] Qt.t -> float -> float -> unit = "mlqt_QDoubleSpinBox_setRange"
  external decimals : [> qDoubleSpinBox] Qt.t -> int = "mlqt_QDoubleSpinBox_decimals"
  external setDecimals : [> qDoubleSpinBox] Qt.t -> int -> unit = "mlqt_QDoubleSpinBox_setDecimals"
  external valueFromText : [> qDoubleSpinBox] Qt.t -> string -> float = "mlqt_QDoubleSpinBox_valueFromText"
  external textFromValue : [> qDoubleSpinBox] Qt.t -> float -> string = "mlqt_QDoubleSpinBox_textFromValue"
  external setValue : [> qDoubleSpinBox] Qt.t -> float -> unit = "mlqt_QDoubleSpinBox_setValue"
  external valueChanged : [> qDoubleSpinBox] Qt.t -> float -> unit = "mlqt_QDoubleSpinBox_valueChanged"
  external valueChanged1 : [> qDoubleSpinBox] Qt.t -> string -> unit = "mlqt_QDoubleSpinBox_valueChanged1"
  external signal'valueChanged2 : unit -> ([> qDoubleSpinBox], float) Qt.signal = "mlqt_signal_QDoubleSpinBox_valueChanged2" [@@noalloc]
  external signal'valueChanged3 : unit -> ([> qDoubleSpinBox], string) Qt.signal = "mlqt_signal_QDoubleSpinBox_valueChanged3" [@@noalloc]
  external slot'setValue1 : unit -> ([> qDoubleSpinBox], float) Qt.slot = "mlqt_slot_QDoubleSpinBox_setValue1" [@@noalloc]
end
external new'QDial : [> qWidget] Qt.t option -> qDial Qt.t = "mlqt_QDial_new_"
module QDial = struct
  include QAbstractSlider
  external class' : unit -> qDial Qt.qt_class = "mlqt_class_QDial" [@@noalloc]
  external wrapping : [> qDial] Qt.t -> bool = "mlqt_QDial_wrapping"
  external notchSize : [> qDial] Qt.t -> int = "mlqt_QDial_notchSize"
  external setNotchTarget : [> qDial] Qt.t -> float -> unit = "mlqt_QDial_setNotchTarget"
  external notchTarget : [> qDial] Qt.t -> float = "mlqt_QDial_notchTarget"
  external notchesVisible : [> qDial] Qt.t -> bool = "mlqt_QDial_notchesVisible"
  external sizeHint : [> qDial] Qt.t -> qSize = "mlqt_QDial_sizeHint"
  external minimumSizeHint : [> qDial] Qt.t -> qSize = "mlqt_QDial_minimumSizeHint"
  external setNotchesVisible : [> qDial] Qt.t -> bool -> unit = "mlqt_QDial_setNotchesVisible"
  external setWrapping : [> qDial] Qt.t -> bool -> unit = "mlqt_QDial_setWrapping"
end
external new'QScrollBar : [> qWidget] Qt.t option -> qScrollBar Qt.t = "mlqt_QScrollBar_new_"
external new'QScrollBar'1 : qt'Orientation -> [> qWidget] Qt.t option -> qScrollBar Qt.t = "mlqt_QScrollBar_new_1"
module QScrollBar = struct
  include QAbstractSlider
  external class' : unit -> qScrollBar Qt.qt_class = "mlqt_class_QScrollBar" [@@noalloc]
  external sizeHint : [> qScrollBar] Qt.t -> qSize = "mlqt_QScrollBar_sizeHint"
  external event : [> qScrollBar] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QScrollBar_event"
end
external new'QSlider : [> qWidget] Qt.t option -> qSlider Qt.t = "mlqt_QSlider_new_"
external new'QSlider'1 : qt'Orientation -> [> qWidget] Qt.t option -> qSlider Qt.t = "mlqt_QSlider_new_1"
module QSlider = struct
  include QAbstractSlider
  external class' : unit -> qSlider Qt.qt_class = "mlqt_class_QSlider" [@@noalloc]
  external sizeHint : [> qSlider] Qt.t -> qSize = "mlqt_QSlider_sizeHint"
  external minimumSizeHint : [> qSlider] Qt.t -> qSize = "mlqt_QSlider_minimumSizeHint"
  external setTickPosition : [> qSlider] Qt.t -> qSlider'TickPosition -> unit = "mlqt_QSlider_setTickPosition"
  external tickPosition : [> qSlider] Qt.t -> qSlider'TickPosition = "mlqt_QSlider_tickPosition"
  external setTickInterval : [> qSlider] Qt.t -> int -> unit = "mlqt_QSlider_setTickInterval"
  external tickInterval : [> qSlider] Qt.t -> int = "mlqt_QSlider_tickInterval"
  external event : [> qSlider] Qt.t -> [> qEvent] Qt.t -> bool = "mlqt_QSlider_event"
end
external new'QCheckBox : [> qWidget] Qt.t option -> qCheckBox Qt.t = "mlqt_QCheckBox_new_"
external new'QCheckBox'1 : string -> [> qWidget] Qt.t option -> qCheckBox Qt.t = "mlqt_QCheckBox_new_1"
module QCheckBox = struct
  include QAbstractButton
  external class' : unit -> qCheckBox Qt.qt_class = "mlqt_class_QCheckBox" [@@noalloc]
  external sizeHint : [> qCheckBox] Qt.t -> qSize = "mlqt_QCheckBox_sizeHint"
  external minimumSizeHint : [> qCheckBox] Qt.t -> qSize = "mlqt_QCheckBox_minimumSizeHint"
  external setTristate : [> qCheckBox] Qt.t -> bool -> unit = "mlqt_QCheckBox_setTristate"
  external isTristate : [> qCheckBox] Qt.t -> bool = "mlqt_QCheckBox_isTristate"
  external checkState : [> qCheckBox] Qt.t -> qt'CheckState = "mlqt_QCheckBox_checkState"
  external setCheckState : [> qCheckBox] Qt.t -> qt'CheckState -> unit = "mlqt_QCheckBox_setCheckState"
  external stateChanged : [> qCheckBox] Qt.t -> int -> unit = "mlqt_QCheckBox_stateChanged"
  external signal'stateChanged1 : unit -> ([> qCheckBox], int) Qt.signal = "mlqt_signal_QCheckBox_stateChanged1" [@@noalloc]
end
external new'QRadioButton : [> qWidget] Qt.t option -> qRadioButton Qt.t = "mlqt_QRadioButton_new_"
external new'QRadioButton'1 : string -> [> qWidget] Qt.t option -> qRadioButton Qt.t = "mlqt_QRadioButton_new_1"
module QRadioButton = struct
  include QAbstractButton
  external class' : unit -> qRadioButton Qt.qt_class = "mlqt_class_QRadioButton" [@@noalloc]
  external sizeHint : [> qRadioButton] Qt.t -> qSize = "mlqt_QRadioButton_sizeHint"
  external minimumSizeHint : [> qRadioButton] Qt.t -> qSize = "mlqt_QRadioButton_minimumSizeHint"
end
external new'QToolButton : [> qWidget] Qt.t option -> qToolButton Qt.t = "mlqt_QToolButton_new_"
module QToolButton = struct
  include QAbstractButton
  external class' : unit -> qToolButton Qt.qt_class = "mlqt_class_QToolButton" [@@noalloc]
  external sizeHint : [> qToolButton] Qt.t -> qSize = "mlqt_QToolButton_sizeHint"
  external minimumSizeHint : [> qToolButton] Qt.t -> qSize = "mlqt_QToolButton_minimumSizeHint"
  external toolButtonStyle : [> qToolButton] Qt.t -> qt'ToolButtonStyle = "mlqt_QToolButton_toolButtonStyle"
  external arrowType : [> qToolButton] Qt.t -> qt'ArrowType = "mlqt_QToolButton_arrowType"
  external setArrowType : [> qToolButton] Qt.t -> qt'ArrowType -> unit = "mlqt_QToolButton_setArrowType"
  external setMenu : [> qToolButton] Qt.t -> [> qMenu] Qt.t -> unit = "mlqt_QToolButton_setMenu"
  external menu : [> qToolButton] Qt.t -> qMenu Qt.t = "mlqt_QToolButton_menu"
  external setPopupMode : [> qToolButton] Qt.t -> qToolButton'ToolButtonPopupMode -> unit = "mlqt_QToolButton_setPopupMode"
  external popupMode : [> qToolButton] Qt.t -> qToolButton'ToolButtonPopupMode = "mlqt_QToolButton_popupMode"
  external defaultAction : [> qToolButton] Qt.t -> qAction Qt.t = "mlqt_QToolButton_defaultAction"
  external setAutoRaise : [> qToolButton] Qt.t -> bool -> unit = "mlqt_QToolButton_setAutoRaise"
  external autoRaise : [> qToolButton] Qt.t -> bool = "mlqt_QToolButton_autoRaise"
  external showMenu : [> qToolButton] Qt.t -> unit = "mlqt_QToolButton_showMenu"
  external setToolButtonStyle : [> qToolButton] Qt.t -> qt'ToolButtonStyle -> unit = "mlqt_QToolButton_setToolButtonStyle"
  external setDefaultAction : [> qToolButton] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QToolButton_setDefaultAction"
  external triggered : [> qToolButton] Qt.t -> [> qAction] Qt.t -> unit = "mlqt_QToolButton_triggered"
  external signal'triggered1 : unit -> ([> qToolButton], qAction Qt.t) Qt.signal = "mlqt_signal_QToolButton_triggered1" [@@noalloc]
  external slot'_q_actionTriggered : unit -> ([> qToolButton], unit) Qt.slot = "mlqt_slot_QToolButton__q_actionTriggered" [@@noalloc]
  external slot'_q_buttonPressed : unit -> ([> qToolButton], unit) Qt.slot = "mlqt_slot_QToolButton__q_buttonPressed" [@@noalloc]
  external slot'_q_buttonReleased : unit -> ([> qToolButton], unit) Qt.slot = "mlqt_slot_QToolButton__q_buttonReleased" [@@noalloc]
  external slot'_q_menuTriggered : unit -> ([> qToolButton], [> qAction] Qt.t) Qt.slot = "mlqt_slot_QToolButton__q_menuTriggered" [@@noalloc]
  external slot'_q_updateButtonDown : unit -> ([> qToolButton], unit) Qt.slot = "mlqt_slot_QToolButton__q_updateButtonDown" [@@noalloc]
  external slot'setDefaultAction1 : unit -> ([> qToolButton], [> qAction] Qt.t) Qt.slot = "mlqt_slot_QToolButton_setDefaultAction1" [@@noalloc]
  external slot'setToolButtonStyle1 : unit -> ([> qToolButton], qt'ToolButtonStyle) Qt.slot = "mlqt_slot_QToolButton_setToolButtonStyle1" [@@noalloc]
  external slot'showMenu1 : unit -> ([> qToolButton], unit) Qt.slot = "mlqt_slot_QToolButton_showMenu1" [@@noalloc]
end
external new'QColorDialog : [> qWidget] Qt.t option -> qColorDialog Qt.t = "mlqt_QColorDialog_new_"
external new'QColorDialog'1 : [> qColor] Qt.t -> [> qWidget] Qt.t option -> qColorDialog Qt.t = "mlqt_QColorDialog_new_1"
module QColorDialog = struct
  include QDialog
  external class' : unit -> qColorDialog Qt.qt_class = "mlqt_class_QColorDialog" [@@noalloc]
  external setCurrentColor : [> qColorDialog] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QColorDialog_setCurrentColor"
  external currentColor : [> qColorDialog] Qt.t -> qColor Qt.t = "mlqt_QColorDialog_currentColor"
  external selectedColor : [> qColorDialog] Qt.t -> qColor Qt.t = "mlqt_QColorDialog_selectedColor"
  external setOption : [> qColorDialog] Qt.t -> qColorDialog'ColorDialogOption -> bool -> unit = "mlqt_QColorDialog_setOption"
  external testOption : [> qColorDialog] Qt.t -> qColorDialog'ColorDialogOption -> bool = "mlqt_QColorDialog_testOption"
  external setOptions : [> qColorDialog] Qt.t -> qColorDialog'ColorDialogOptions -> unit = "mlqt_QColorDialog_setOptions"
  external options : [> qColorDialog] Qt.t -> qColorDialog'ColorDialogOptions = "mlqt_QColorDialog_options"
  external setVisible : [> qColorDialog] Qt.t -> bool -> unit = "mlqt_QColorDialog_setVisible"
  external getColor : [> qColor] Qt.t -> [> qWidget] Qt.t -> string -> qColorDialog'ColorDialogOptions -> qColor Qt.t = "mlqt_QColorDialog_getColor"
  external customCount : unit -> int = "mlqt_QColorDialog_customCount"
  external customColor : int -> qColor Qt.t = "mlqt_QColorDialog_customColor"
  external setCustomColor : int -> [> qColor] Qt.t -> unit = "mlqt_QColorDialog_setCustomColor"
  external standardColor : int -> qColor Qt.t = "mlqt_QColorDialog_standardColor"
  external setStandardColor : int -> [> qColor] Qt.t -> unit = "mlqt_QColorDialog_setStandardColor"
  external currentColorChanged : [> qColorDialog] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QColorDialog_currentColorChanged"
  external colorSelected : [> qColorDialog] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QColorDialog_colorSelected"
  external signal'colorSelected1 : unit -> ([> qColorDialog], qColor Qt.t) Qt.signal = "mlqt_signal_QColorDialog_colorSelected1" [@@noalloc]
  external signal'currentColorChanged1 : unit -> ([> qColorDialog], qColor Qt.t) Qt.signal = "mlqt_signal_QColorDialog_currentColorChanged1" [@@noalloc]
  external slot'_q_addCustom : unit -> ([> qColorDialog], unit) Qt.slot = "mlqt_slot_QColorDialog__q_addCustom" [@@noalloc]
  external slot'_q_newCustom : unit -> ([> qColorDialog], int * int) Qt.slot = "mlqt_slot_QColorDialog__q_newCustom" [@@noalloc]
  external slot'_q_newHsv : unit -> ([> qColorDialog], int * int * int) Qt.slot = "mlqt_slot_QColorDialog__q_newHsv" [@@noalloc]
  external slot'_q_newStandard : unit -> ([> qColorDialog], int * int) Qt.slot = "mlqt_slot_QColorDialog__q_newStandard" [@@noalloc]
  external slot'_q_nextCustom : unit -> ([> qColorDialog], int * int) Qt.slot = "mlqt_slot_QColorDialog__q_nextCustom" [@@noalloc]
  external slot'_q_pickScreenColor : unit -> ([> qColorDialog], unit) Qt.slot = "mlqt_slot_QColorDialog__q_pickScreenColor" [@@noalloc]
  external slot'_q_updateColorPicking : unit -> ([> qColorDialog], unit) Qt.slot = "mlqt_slot_QColorDialog__q_updateColorPicking" [@@noalloc]
end
external new'QErrorMessage : [> qWidget] Qt.t option -> qErrorMessage Qt.t = "mlqt_QErrorMessage_new_"
module QErrorMessage = struct
  include QDialog
  external class' : unit -> qErrorMessage Qt.qt_class = "mlqt_class_QErrorMessage" [@@noalloc]
  external qtHandler : unit -> qErrorMessage Qt.t = "mlqt_QErrorMessage_qtHandler"
  external showMessage : [> qErrorMessage] Qt.t -> string -> unit = "mlqt_QErrorMessage_showMessage"
  external showMessage1 : [> qErrorMessage] Qt.t -> string -> string -> unit = "mlqt_QErrorMessage_showMessage1"
end
external new'QFileDialog : [> qWidget] Qt.t option -> qt'WindowFlags -> qFileDialog Qt.t = "mlqt_QFileDialog_new_"
external new'QFileDialog'1 : [> qWidget] Qt.t option -> string -> string -> string -> qFileDialog Qt.t = "mlqt_QFileDialog_new_1"
module QFileDialog = struct
  include QDialog
  external class' : unit -> qFileDialog Qt.qt_class = "mlqt_class_QFileDialog" [@@noalloc]
  external setDirectory : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_setDirectory"
  external setDirectory1 : [> qFileDialog] Qt.t -> [> qDir] Qt.t -> unit = "mlqt_QFileDialog_setDirectory1"
  external directory : [> qFileDialog] Qt.t -> qDir Qt.t = "mlqt_QFileDialog_directory"
  external setDirectoryUrl : [> qFileDialog] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QFileDialog_setDirectoryUrl"
  external directoryUrl : [> qFileDialog] Qt.t -> qUrl Qt.t = "mlqt_QFileDialog_directoryUrl"
  external selectFile : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_selectFile"
  external selectedFiles : [> qFileDialog] Qt.t -> qStringList Qt.t = "mlqt_QFileDialog_selectedFiles"
  external selectUrl : [> qFileDialog] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QFileDialog_selectUrl"
  external setNameFilterDetailsVisible : [> qFileDialog] Qt.t -> bool -> unit = "mlqt_QFileDialog_setNameFilterDetailsVisible"
  external isNameFilterDetailsVisible : [> qFileDialog] Qt.t -> bool = "mlqt_QFileDialog_isNameFilterDetailsVisible"
  external setNameFilter : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_setNameFilter"
  external setNameFilters : [> qFileDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QFileDialog_setNameFilters"
  external nameFilters : [> qFileDialog] Qt.t -> qStringList Qt.t = "mlqt_QFileDialog_nameFilters"
  external selectNameFilter : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_selectNameFilter"
  external selectedMimeTypeFilter : [> qFileDialog] Qt.t -> string = "mlqt_QFileDialog_selectedMimeTypeFilter"
  external selectedNameFilter : [> qFileDialog] Qt.t -> string = "mlqt_QFileDialog_selectedNameFilter"
  external setMimeTypeFilters : [> qFileDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QFileDialog_setMimeTypeFilters"
  external mimeTypeFilters : [> qFileDialog] Qt.t -> qStringList Qt.t = "mlqt_QFileDialog_mimeTypeFilters"
  external selectMimeTypeFilter : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_selectMimeTypeFilter"
  external filter : [> qFileDialog] Qt.t -> qDir'Filters = "mlqt_QFileDialog_filter"
  external setFilter : [> qFileDialog] Qt.t -> qDir'Filters -> unit = "mlqt_QFileDialog_setFilter"
  external setViewMode : [> qFileDialog] Qt.t -> qFileDialog'ViewMode -> unit = "mlqt_QFileDialog_setViewMode"
  external viewMode : [> qFileDialog] Qt.t -> qFileDialog'ViewMode = "mlqt_QFileDialog_viewMode"
  external setFileMode : [> qFileDialog] Qt.t -> qFileDialog'FileMode -> unit = "mlqt_QFileDialog_setFileMode"
  external fileMode : [> qFileDialog] Qt.t -> qFileDialog'FileMode = "mlqt_QFileDialog_fileMode"
  external setAcceptMode : [> qFileDialog] Qt.t -> qFileDialog'AcceptMode -> unit = "mlqt_QFileDialog_setAcceptMode"
  external acceptMode : [> qFileDialog] Qt.t -> qFileDialog'AcceptMode = "mlqt_QFileDialog_acceptMode"
  external setReadOnly : [> qFileDialog] Qt.t -> bool -> unit = "mlqt_QFileDialog_setReadOnly"
  external isReadOnly : [> qFileDialog] Qt.t -> bool = "mlqt_QFileDialog_isReadOnly"
  external setResolveSymlinks : [> qFileDialog] Qt.t -> bool -> unit = "mlqt_QFileDialog_setResolveSymlinks"
  external resolveSymlinks : [> qFileDialog] Qt.t -> bool = "mlqt_QFileDialog_resolveSymlinks"
  external saveState : [> qFileDialog] Qt.t -> qByteArray Qt.t = "mlqt_QFileDialog_saveState"
  external restoreState : [> qFileDialog] Qt.t -> [> qByteArray] Qt.t -> bool = "mlqt_QFileDialog_restoreState"
  external setConfirmOverwrite : [> qFileDialog] Qt.t -> bool -> unit = "mlqt_QFileDialog_setConfirmOverwrite"
  external confirmOverwrite : [> qFileDialog] Qt.t -> bool = "mlqt_QFileDialog_confirmOverwrite"
  external setDefaultSuffix : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_setDefaultSuffix"
  external defaultSuffix : [> qFileDialog] Qt.t -> string = "mlqt_QFileDialog_defaultSuffix"
  external setHistory : [> qFileDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QFileDialog_setHistory"
  external history : [> qFileDialog] Qt.t -> qStringList Qt.t = "mlqt_QFileDialog_history"
  external setItemDelegate : [> qFileDialog] Qt.t -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QFileDialog_setItemDelegate"
  external itemDelegate : [> qFileDialog] Qt.t -> qAbstractItemDelegate Qt.t = "mlqt_QFileDialog_itemDelegate"
  external setLabelText : [> qFileDialog] Qt.t -> qFileDialog'DialogLabel -> string -> unit = "mlqt_QFileDialog_setLabelText"
  external labelText : [> qFileDialog] Qt.t -> qFileDialog'DialogLabel -> string = "mlqt_QFileDialog_labelText"
  external setSupportedSchemes : [> qFileDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QFileDialog_setSupportedSchemes"
  external supportedSchemes : [> qFileDialog] Qt.t -> qStringList Qt.t = "mlqt_QFileDialog_supportedSchemes"
  external setProxyModel : [> qFileDialog] Qt.t -> [> qAbstractProxyModel] Qt.t -> unit = "mlqt_QFileDialog_setProxyModel"
  external proxyModel : [> qFileDialog] Qt.t -> qAbstractProxyModel Qt.t = "mlqt_QFileDialog_proxyModel"
  external setOption : [> qFileDialog] Qt.t -> qFileDialog'Option -> bool -> unit = "mlqt_QFileDialog_setOption"
  external testOption : [> qFileDialog] Qt.t -> qFileDialog'Option -> bool = "mlqt_QFileDialog_testOption"
  external setOptions : [> qFileDialog] Qt.t -> qFileDialog'Options -> unit = "mlqt_QFileDialog_setOptions"
  external options : [> qFileDialog] Qt.t -> qFileDialog'Options = "mlqt_QFileDialog_options"
  external setVisible : [> qFileDialog] Qt.t -> bool -> unit = "mlqt_QFileDialog_setVisible"
  external fileSelected : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_fileSelected"
  external filesSelected : [> qFileDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QFileDialog_filesSelected"
  external currentChanged : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_currentChanged"
  external directoryEntered : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_directoryEntered"
  external urlSelected : [> qFileDialog] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QFileDialog_urlSelected"
  external currentUrlChanged : [> qFileDialog] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QFileDialog_currentUrlChanged"
  external directoryUrlEntered : [> qFileDialog] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QFileDialog_directoryUrlEntered"
  external filterSelected : [> qFileDialog] Qt.t -> string -> unit = "mlqt_QFileDialog_filterSelected"
  external getOpenFileName : [> qWidget] Qt.t -> string -> string -> string -> string = "mlqt_QFileDialog_getOpenFileName"
  external getSaveFileName : [> qWidget] Qt.t -> string -> string -> string -> string = "mlqt_QFileDialog_getSaveFileName"
  external signal'currentChanged1 : unit -> ([> qFileDialog], string) Qt.signal = "mlqt_signal_QFileDialog_currentChanged1" [@@noalloc]
  external signal'currentUrlChanged1 : unit -> ([> qFileDialog], qUrl Qt.t) Qt.signal = "mlqt_signal_QFileDialog_currentUrlChanged1" [@@noalloc]
  external signal'directoryEntered1 : unit -> ([> qFileDialog], string) Qt.signal = "mlqt_signal_QFileDialog_directoryEntered1" [@@noalloc]
  external signal'directoryUrlEntered1 : unit -> ([> qFileDialog], qUrl Qt.t) Qt.signal = "mlqt_signal_QFileDialog_directoryUrlEntered1" [@@noalloc]
  external signal'fileSelected1 : unit -> ([> qFileDialog], string) Qt.signal = "mlqt_signal_QFileDialog_fileSelected1" [@@noalloc]
  external signal'filesSelected1 : unit -> ([> qFileDialog], qStringList Qt.t) Qt.signal = "mlqt_signal_QFileDialog_filesSelected1" [@@noalloc]
  external signal'filterSelected1 : unit -> ([> qFileDialog], string) Qt.signal = "mlqt_signal_QFileDialog_filterSelected1" [@@noalloc]
  external signal'urlSelected1 : unit -> ([> qFileDialog], qUrl Qt.t) Qt.signal = "mlqt_signal_QFileDialog_urlSelected1" [@@noalloc]
  external slot'_q_autoCompleteFileName : unit -> ([> qFileDialog], string) Qt.slot = "mlqt_slot_QFileDialog__q_autoCompleteFileName" [@@noalloc]
  external slot'_q_createDirectory : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_createDirectory" [@@noalloc]
  external slot'_q_currentChanged : unit -> ([> qFileDialog], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_currentChanged" [@@noalloc]
  external slot'_q_deleteCurrent : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_deleteCurrent" [@@noalloc]
  external slot'_q_emitUrlSelected : unit -> ([> qFileDialog], [> qUrl] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_emitUrlSelected" [@@noalloc]
  external slot'_q_enterDirectory : unit -> ([> qFileDialog], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_enterDirectory" [@@noalloc]
  external slot'_q_fileRenamed : unit -> ([> qFileDialog], string * string * string) Qt.slot = "mlqt_slot_QFileDialog__q_fileRenamed" [@@noalloc]
  external slot'_q_goHome : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_goHome" [@@noalloc]
  external slot'_q_goToDirectory : unit -> ([> qFileDialog], string) Qt.slot = "mlqt_slot_QFileDialog__q_goToDirectory" [@@noalloc]
  external slot'_q_goToUrl : unit -> ([> qFileDialog], [> qUrl] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_goToUrl" [@@noalloc]
  external slot'_q_nativeCurrentChanged : unit -> ([> qFileDialog], [> qUrl] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_nativeCurrentChanged" [@@noalloc]
  external slot'_q_nativeEnterDirectory : unit -> ([> qFileDialog], [> qUrl] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_nativeEnterDirectory" [@@noalloc]
  external slot'_q_navigateBackward : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_navigateBackward" [@@noalloc]
  external slot'_q_navigateForward : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_navigateForward" [@@noalloc]
  external slot'_q_navigateToParent : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_navigateToParent" [@@noalloc]
  external slot'_q_pathChanged : unit -> ([> qFileDialog], string) Qt.slot = "mlqt_slot_QFileDialog__q_pathChanged" [@@noalloc]
  external slot'_q_renameCurrent : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_renameCurrent" [@@noalloc]
  external slot'_q_rowsInserted : unit -> ([> qFileDialog], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_rowsInserted" [@@noalloc]
  external slot'_q_selectionChanged : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_selectionChanged" [@@noalloc]
  external slot'_q_showContextMenu : unit -> ([> qFileDialog], qPoint) Qt.slot = "mlqt_slot_QFileDialog__q_showContextMenu" [@@noalloc]
  external slot'_q_showDetailsView : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_showDetailsView" [@@noalloc]
  external slot'_q_showHeader : unit -> ([> qFileDialog], [> qAction] Qt.t) Qt.slot = "mlqt_slot_QFileDialog__q_showHeader" [@@noalloc]
  external slot'_q_showHidden : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_showHidden" [@@noalloc]
  external slot'_q_showListView : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_showListView" [@@noalloc]
  external slot'_q_updateOkButton : unit -> ([> qFileDialog], unit) Qt.slot = "mlqt_slot_QFileDialog__q_updateOkButton" [@@noalloc]
  external slot'_q_useNameFilter : unit -> ([> qFileDialog], int) Qt.slot = "mlqt_slot_QFileDialog__q_useNameFilter" [@@noalloc]
end
external new'QFontDialog : [> qWidget] Qt.t option -> qFontDialog Qt.t = "mlqt_QFontDialog_new_"
external new'QFontDialog'1 : [> qFont] Qt.t -> [> qWidget] Qt.t option -> qFontDialog Qt.t = "mlqt_QFontDialog_new_1"
module QFontDialog = struct
  include QDialog
  external class' : unit -> qFontDialog Qt.qt_class = "mlqt_class_QFontDialog" [@@noalloc]
  external setCurrentFont : [> qFontDialog] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QFontDialog_setCurrentFont"
  external currentFont : [> qFontDialog] Qt.t -> qFont Qt.t = "mlqt_QFontDialog_currentFont"
  external selectedFont : [> qFontDialog] Qt.t -> qFont Qt.t = "mlqt_QFontDialog_selectedFont"
  external setOption : [> qFontDialog] Qt.t -> qFontDialog'FontDialogOption -> bool -> unit = "mlqt_QFontDialog_setOption"
  external testOption : [> qFontDialog] Qt.t -> qFontDialog'FontDialogOption -> bool = "mlqt_QFontDialog_testOption"
  external setOptions : [> qFontDialog] Qt.t -> qFontDialog'FontDialogOptions -> unit = "mlqt_QFontDialog_setOptions"
  external options : [> qFontDialog] Qt.t -> qFontDialog'FontDialogOptions = "mlqt_QFontDialog_options"
  external setVisible : [> qFontDialog] Qt.t -> bool -> unit = "mlqt_QFontDialog_setVisible"
  external currentFontChanged : [> qFontDialog] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QFontDialog_currentFontChanged"
  external fontSelected : [> qFontDialog] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QFontDialog_fontSelected"
  external signal'currentFontChanged1 : unit -> ([> qFontDialog], qFont Qt.t) Qt.signal = "mlqt_signal_QFontDialog_currentFontChanged1" [@@noalloc]
  external signal'fontSelected1 : unit -> ([> qFontDialog], qFont Qt.t) Qt.signal = "mlqt_signal_QFontDialog_fontSelected1" [@@noalloc]
  external slot'_q_familyHighlighted : unit -> ([> qFontDialog], int) Qt.slot = "mlqt_slot_QFontDialog__q_familyHighlighted" [@@noalloc]
  external slot'_q_sizeChanged : unit -> ([> qFontDialog], string) Qt.slot = "mlqt_slot_QFontDialog__q_sizeChanged" [@@noalloc]
  external slot'_q_sizeHighlighted : unit -> ([> qFontDialog], int) Qt.slot = "mlqt_slot_QFontDialog__q_sizeHighlighted" [@@noalloc]
  external slot'_q_styleHighlighted : unit -> ([> qFontDialog], int) Qt.slot = "mlqt_slot_QFontDialog__q_styleHighlighted" [@@noalloc]
  external slot'_q_updateSample : unit -> ([> qFontDialog], unit) Qt.slot = "mlqt_slot_QFontDialog__q_updateSample" [@@noalloc]
  external slot'_q_writingSystemHighlighted : unit -> ([> qFontDialog], int) Qt.slot = "mlqt_slot_QFontDialog__q_writingSystemHighlighted" [@@noalloc]
end
external new'QInputDialog : [> qWidget] Qt.t option -> qt'WindowFlags -> qInputDialog Qt.t = "mlqt_QInputDialog_new_"
module QInputDialog = struct
  include QDialog
  external class' : unit -> qInputDialog Qt.qt_class = "mlqt_class_QInputDialog" [@@noalloc]
  external setInputMode : [> qInputDialog] Qt.t -> qInputDialog'InputMode -> unit = "mlqt_QInputDialog_setInputMode"
  external inputMode : [> qInputDialog] Qt.t -> qInputDialog'InputMode = "mlqt_QInputDialog_inputMode"
  external setLabelText : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_setLabelText"
  external labelText : [> qInputDialog] Qt.t -> string = "mlqt_QInputDialog_labelText"
  external setOption : [> qInputDialog] Qt.t -> qInputDialog'InputDialogOption -> bool -> unit = "mlqt_QInputDialog_setOption"
  external testOption : [> qInputDialog] Qt.t -> qInputDialog'InputDialogOption -> bool = "mlqt_QInputDialog_testOption"
  external setOptions : [> qInputDialog] Qt.t -> qInputDialog'InputDialogOptions -> unit = "mlqt_QInputDialog_setOptions"
  external options : [> qInputDialog] Qt.t -> qInputDialog'InputDialogOptions = "mlqt_QInputDialog_options"
  external setTextValue : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_setTextValue"
  external textValue : [> qInputDialog] Qt.t -> string = "mlqt_QInputDialog_textValue"
  external setTextEchoMode : [> qInputDialog] Qt.t -> qLineEdit'EchoMode -> unit = "mlqt_QInputDialog_setTextEchoMode"
  external textEchoMode : [> qInputDialog] Qt.t -> qLineEdit'EchoMode = "mlqt_QInputDialog_textEchoMode"
  external setComboBoxEditable : [> qInputDialog] Qt.t -> bool -> unit = "mlqt_QInputDialog_setComboBoxEditable"
  external isComboBoxEditable : [> qInputDialog] Qt.t -> bool = "mlqt_QInputDialog_isComboBoxEditable"
  external setComboBoxItems : [> qInputDialog] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QInputDialog_setComboBoxItems"
  external comboBoxItems : [> qInputDialog] Qt.t -> qStringList Qt.t = "mlqt_QInputDialog_comboBoxItems"
  external setIntValue : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_setIntValue"
  external intValue : [> qInputDialog] Qt.t -> int = "mlqt_QInputDialog_intValue"
  external setIntMinimum : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_setIntMinimum"
  external intMinimum : [> qInputDialog] Qt.t -> int = "mlqt_QInputDialog_intMinimum"
  external setIntMaximum : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_setIntMaximum"
  external intMaximum : [> qInputDialog] Qt.t -> int = "mlqt_QInputDialog_intMaximum"
  external setIntRange : [> qInputDialog] Qt.t -> int -> int -> unit = "mlqt_QInputDialog_setIntRange"
  external setIntStep : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_setIntStep"
  external intStep : [> qInputDialog] Qt.t -> int = "mlqt_QInputDialog_intStep"
  external setDoubleValue : [> qInputDialog] Qt.t -> float -> unit = "mlqt_QInputDialog_setDoubleValue"
  external doubleValue : [> qInputDialog] Qt.t -> float = "mlqt_QInputDialog_doubleValue"
  external setDoubleMinimum : [> qInputDialog] Qt.t -> float -> unit = "mlqt_QInputDialog_setDoubleMinimum"
  external doubleMinimum : [> qInputDialog] Qt.t -> float = "mlqt_QInputDialog_doubleMinimum"
  external setDoubleMaximum : [> qInputDialog] Qt.t -> float -> unit = "mlqt_QInputDialog_setDoubleMaximum"
  external doubleMaximum : [> qInputDialog] Qt.t -> float = "mlqt_QInputDialog_doubleMaximum"
  external setDoubleRange : [> qInputDialog] Qt.t -> float -> float -> unit = "mlqt_QInputDialog_setDoubleRange"
  external setDoubleDecimals : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_setDoubleDecimals"
  external doubleDecimals : [> qInputDialog] Qt.t -> int = "mlqt_QInputDialog_doubleDecimals"
  external setOkButtonText : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_setOkButtonText"
  external okButtonText : [> qInputDialog] Qt.t -> string = "mlqt_QInputDialog_okButtonText"
  external setCancelButtonText : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_setCancelButtonText"
  external cancelButtonText : [> qInputDialog] Qt.t -> string = "mlqt_QInputDialog_cancelButtonText"
  external minimumSizeHint : [> qInputDialog] Qt.t -> qSize = "mlqt_QInputDialog_minimumSizeHint"
  external sizeHint : [> qInputDialog] Qt.t -> qSize = "mlqt_QInputDialog_sizeHint"
  external setVisible : [> qInputDialog] Qt.t -> bool -> unit = "mlqt_QInputDialog_setVisible"
  external textValueChanged : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_textValueChanged"
  external textValueSelected : [> qInputDialog] Qt.t -> string -> unit = "mlqt_QInputDialog_textValueSelected"
  external intValueChanged : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_intValueChanged"
  external intValueSelected : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_intValueSelected"
  external doubleValueChanged : [> qInputDialog] Qt.t -> float -> unit = "mlqt_QInputDialog_doubleValueChanged"
  external doubleValueSelected : [> qInputDialog] Qt.t -> float -> unit = "mlqt_QInputDialog_doubleValueSelected"
  external done_ : [> qInputDialog] Qt.t -> int -> unit = "mlqt_QInputDialog_done_"
  external signal'doubleValueChanged1 : unit -> ([> qInputDialog], float) Qt.signal = "mlqt_signal_QInputDialog_doubleValueChanged1" [@@noalloc]
  external signal'doubleValueSelected1 : unit -> ([> qInputDialog], float) Qt.signal = "mlqt_signal_QInputDialog_doubleValueSelected1" [@@noalloc]
  external signal'intValueChanged1 : unit -> ([> qInputDialog], int) Qt.signal = "mlqt_signal_QInputDialog_intValueChanged1" [@@noalloc]
  external signal'intValueSelected1 : unit -> ([> qInputDialog], int) Qt.signal = "mlqt_signal_QInputDialog_intValueSelected1" [@@noalloc]
  external signal'textValueChanged1 : unit -> ([> qInputDialog], string) Qt.signal = "mlqt_signal_QInputDialog_textValueChanged1" [@@noalloc]
  external signal'textValueSelected1 : unit -> ([> qInputDialog], string) Qt.signal = "mlqt_signal_QInputDialog_textValueSelected1" [@@noalloc]
  external slot'_q_currentRowChanged : unit -> ([> qInputDialog], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QInputDialog__q_currentRowChanged" [@@noalloc]
  external slot'_q_plainTextEditTextChanged : unit -> ([> qInputDialog], unit) Qt.slot = "mlqt_slot_QInputDialog__q_plainTextEditTextChanged" [@@noalloc]
  external slot'_q_textChanged : unit -> ([> qInputDialog], string) Qt.slot = "mlqt_slot_QInputDialog__q_textChanged" [@@noalloc]
end
external new'QMessageBox : [> qWidget] Qt.t option -> qMessageBox Qt.t = "mlqt_QMessageBox_new_"
external new'QMessageBox'1 : qMessageBox'Icon -> string -> string -> qMessageBox'StandardButtons -> [> qWidget] Qt.t option -> qt'WindowFlags -> qMessageBox Qt.t = "mlqt_QMessageBox_new_1_bc" "mlqt_QMessageBox_new_1"
external new'QMessageBox'2 : string -> string -> qMessageBox'Icon -> int -> int -> int -> [> qWidget] Qt.t option -> qt'WindowFlags -> qMessageBox Qt.t = "mlqt_QMessageBox_new_2_bc" "mlqt_QMessageBox_new_2"
module QMessageBox = struct
  include QDialog
  external class' : unit -> qMessageBox Qt.qt_class = "mlqt_class_QMessageBox" [@@noalloc]
  external addButton : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> qMessageBox'ButtonRole -> unit = "mlqt_QMessageBox_addButton"
  external addButton1 : [> qMessageBox] Qt.t -> string -> qMessageBox'ButtonRole -> qPushButton Qt.t = "mlqt_QMessageBox_addButton1"
  external addButton2 : [> qMessageBox] Qt.t -> qMessageBox'StandardButton -> qPushButton Qt.t = "mlqt_QMessageBox_addButton2"
  external removeButton : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QMessageBox_removeButton"
  external buttonRole : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> qMessageBox'ButtonRole = "mlqt_QMessageBox_buttonRole"
  external setStandardButtons : [> qMessageBox] Qt.t -> qMessageBox'StandardButtons -> unit = "mlqt_QMessageBox_setStandardButtons"
  external standardButtons : [> qMessageBox] Qt.t -> qMessageBox'StandardButtons = "mlqt_QMessageBox_standardButtons"
  external standardButton : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> qMessageBox'StandardButton = "mlqt_QMessageBox_standardButton"
  external button : [> qMessageBox] Qt.t -> qMessageBox'StandardButton -> qAbstractButton Qt.t = "mlqt_QMessageBox_button"
  external defaultButton : [> qMessageBox] Qt.t -> qPushButton Qt.t = "mlqt_QMessageBox_defaultButton"
  external setDefaultButton : [> qMessageBox] Qt.t -> [> qPushButton] Qt.t -> unit = "mlqt_QMessageBox_setDefaultButton"
  external setDefaultButton1 : [> qMessageBox] Qt.t -> qMessageBox'StandardButton -> unit = "mlqt_QMessageBox_setDefaultButton1"
  external escapeButton : [> qMessageBox] Qt.t -> qAbstractButton Qt.t = "mlqt_QMessageBox_escapeButton"
  external setEscapeButton : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QMessageBox_setEscapeButton"
  external setEscapeButton1 : [> qMessageBox] Qt.t -> qMessageBox'StandardButton -> unit = "mlqt_QMessageBox_setEscapeButton1"
  external clickedButton : [> qMessageBox] Qt.t -> qAbstractButton Qt.t = "mlqt_QMessageBox_clickedButton"
  external text : [> qMessageBox] Qt.t -> string = "mlqt_QMessageBox_text"
  external setText : [> qMessageBox] Qt.t -> string -> unit = "mlqt_QMessageBox_setText"
  external icon : [> qMessageBox] Qt.t -> qMessageBox'Icon = "mlqt_QMessageBox_icon"
  external setIcon : [> qMessageBox] Qt.t -> qMessageBox'Icon -> unit = "mlqt_QMessageBox_setIcon"
  external textFormat : [> qMessageBox] Qt.t -> qt'TextFormat = "mlqt_QMessageBox_textFormat"
  external setTextFormat : [> qMessageBox] Qt.t -> qt'TextFormat -> unit = "mlqt_QMessageBox_setTextFormat"
  external setTextInteractionFlags : [> qMessageBox] Qt.t -> qt'TextInteractionFlags -> unit = "mlqt_QMessageBox_setTextInteractionFlags"
  external textInteractionFlags : [> qMessageBox] Qt.t -> qt'TextInteractionFlags = "mlqt_QMessageBox_textInteractionFlags"
  external setCheckBox : [> qMessageBox] Qt.t -> [> qCheckBox] Qt.t -> unit = "mlqt_QMessageBox_setCheckBox"
  external checkBox : [> qMessageBox] Qt.t -> qCheckBox Qt.t = "mlqt_QMessageBox_checkBox"
  external information : [> qWidget] Qt.t -> string -> string -> qMessageBox'StandardButtons -> qMessageBox'StandardButton -> qMessageBox'StandardButton = "mlqt_QMessageBox_information"
  external question : [> qWidget] Qt.t -> string -> string -> qMessageBox'StandardButtons -> qMessageBox'StandardButton -> qMessageBox'StandardButton = "mlqt_QMessageBox_question"
  external warning : [> qWidget] Qt.t -> string -> string -> qMessageBox'StandardButtons -> qMessageBox'StandardButton -> qMessageBox'StandardButton = "mlqt_QMessageBox_warning"
  external critical : [> qWidget] Qt.t -> string -> string -> qMessageBox'StandardButtons -> qMessageBox'StandardButton -> qMessageBox'StandardButton = "mlqt_QMessageBox_critical"
  external about : [> qWidget] Qt.t -> string -> string -> unit = "mlqt_QMessageBox_about"
  external aboutQt : [> qWidget] Qt.t -> string -> unit = "mlqt_QMessageBox_aboutQt"
  external information1 : [> qWidget] Qt.t -> string -> string -> int -> int -> int -> int = "mlqt_QMessageBox_information1_bc" "mlqt_QMessageBox_information1"
  external information2 : [> qWidget] Qt.t -> string -> string -> string -> string -> string -> int -> int -> int = "mlqt_QMessageBox_information2_bc" "mlqt_QMessageBox_information2"
  external question1 : [> qWidget] Qt.t -> string -> string -> int -> int -> int -> int = "mlqt_QMessageBox_question1_bc" "mlqt_QMessageBox_question1"
  external question2 : [> qWidget] Qt.t -> string -> string -> string -> string -> string -> int -> int -> int = "mlqt_QMessageBox_question2_bc" "mlqt_QMessageBox_question2"
  external warning1 : [> qWidget] Qt.t -> string -> string -> int -> int -> int -> int = "mlqt_QMessageBox_warning1_bc" "mlqt_QMessageBox_warning1"
  external warning2 : [> qWidget] Qt.t -> string -> string -> string -> string -> string -> int -> int -> int = "mlqt_QMessageBox_warning2_bc" "mlqt_QMessageBox_warning2"
  external critical1 : [> qWidget] Qt.t -> string -> string -> int -> int -> int -> int = "mlqt_QMessageBox_critical1_bc" "mlqt_QMessageBox_critical1"
  external critical2 : [> qWidget] Qt.t -> string -> string -> string -> string -> string -> int -> int -> int = "mlqt_QMessageBox_critical2_bc" "mlqt_QMessageBox_critical2"
  external buttonText : [> qMessageBox] Qt.t -> int -> string = "mlqt_QMessageBox_buttonText"
  external setButtonText : [> qMessageBox] Qt.t -> int -> string -> unit = "mlqt_QMessageBox_setButtonText"
  external informativeText : [> qMessageBox] Qt.t -> string = "mlqt_QMessageBox_informativeText"
  external setInformativeText : [> qMessageBox] Qt.t -> string -> unit = "mlqt_QMessageBox_setInformativeText"
  external detailedText : [> qMessageBox] Qt.t -> string = "mlqt_QMessageBox_detailedText"
  external setDetailedText : [> qMessageBox] Qt.t -> string -> unit = "mlqt_QMessageBox_setDetailedText"
  external setWindowTitle : [> qMessageBox] Qt.t -> string -> unit = "mlqt_QMessageBox_setWindowTitle"
  external setWindowModality : [> qMessageBox] Qt.t -> qt'WindowModality -> unit = "mlqt_QMessageBox_setWindowModality"
  external buttonClicked : [> qMessageBox] Qt.t -> [> qAbstractButton] Qt.t -> unit = "mlqt_QMessageBox_buttonClicked"
  external exec : [> qMessageBox] Qt.t -> int = "mlqt_QMessageBox_exec"
  external signal'buttonClicked1 : unit -> ([> qMessageBox], qAbstractButton Qt.t) Qt.signal = "mlqt_signal_QMessageBox_buttonClicked1" [@@noalloc]
  external slot'_q_buttonClicked : unit -> ([> qMessageBox], [> qAbstractButton] Qt.t) Qt.slot = "mlqt_slot_QMessageBox__q_buttonClicked" [@@noalloc]
end
external new'QProgressDialog : [> qWidget] Qt.t option -> qt'WindowFlags -> qProgressDialog Qt.t = "mlqt_QProgressDialog_new_"
external new'QProgressDialog'1 : string -> string -> int -> int -> [> qWidget] Qt.t option -> qt'WindowFlags -> qProgressDialog Qt.t = "mlqt_QProgressDialog_new_1_bc" "mlqt_QProgressDialog_new_1"
module QProgressDialog = struct
  include QDialog
  external class' : unit -> qProgressDialog Qt.qt_class = "mlqt_class_QProgressDialog" [@@noalloc]
  external setLabel : [> qProgressDialog] Qt.t -> [> qLabel] Qt.t -> unit = "mlqt_QProgressDialog_setLabel"
  external setCancelButton : [> qProgressDialog] Qt.t -> [> qPushButton] Qt.t -> unit = "mlqt_QProgressDialog_setCancelButton"
  external setBar : [> qProgressDialog] Qt.t -> [> qProgressBar] Qt.t -> unit = "mlqt_QProgressDialog_setBar"
  external wasCanceled : [> qProgressDialog] Qt.t -> bool = "mlqt_QProgressDialog_wasCanceled"
  external minimum : [> qProgressDialog] Qt.t -> int = "mlqt_QProgressDialog_minimum"
  external maximum : [> qProgressDialog] Qt.t -> int = "mlqt_QProgressDialog_maximum"
  external value : [> qProgressDialog] Qt.t -> int = "mlqt_QProgressDialog_value"
  external sizeHint : [> qProgressDialog] Qt.t -> qSize = "mlqt_QProgressDialog_sizeHint"
  external labelText : [> qProgressDialog] Qt.t -> string = "mlqt_QProgressDialog_labelText"
  external minimumDuration : [> qProgressDialog] Qt.t -> int = "mlqt_QProgressDialog_minimumDuration"
  external setAutoReset : [> qProgressDialog] Qt.t -> bool -> unit = "mlqt_QProgressDialog_setAutoReset"
  external autoReset : [> qProgressDialog] Qt.t -> bool = "mlqt_QProgressDialog_autoReset"
  external setAutoClose : [> qProgressDialog] Qt.t -> bool -> unit = "mlqt_QProgressDialog_setAutoClose"
  external autoClose : [> qProgressDialog] Qt.t -> bool = "mlqt_QProgressDialog_autoClose"
  external cancel : [> qProgressDialog] Qt.t -> unit = "mlqt_QProgressDialog_cancel"
  external reset : [> qProgressDialog] Qt.t -> unit = "mlqt_QProgressDialog_reset"
  external setMaximum : [> qProgressDialog] Qt.t -> int -> unit = "mlqt_QProgressDialog_setMaximum"
  external setMinimum : [> qProgressDialog] Qt.t -> int -> unit = "mlqt_QProgressDialog_setMinimum"
  external setRange : [> qProgressDialog] Qt.t -> int -> int -> unit = "mlqt_QProgressDialog_setRange"
  external setValue : [> qProgressDialog] Qt.t -> int -> unit = "mlqt_QProgressDialog_setValue"
  external setLabelText : [> qProgressDialog] Qt.t -> string -> unit = "mlqt_QProgressDialog_setLabelText"
  external setCancelButtonText : [> qProgressDialog] Qt.t -> string -> unit = "mlqt_QProgressDialog_setCancelButtonText"
  external setMinimumDuration : [> qProgressDialog] Qt.t -> int -> unit = "mlqt_QProgressDialog_setMinimumDuration"
  external canceled : [> qProgressDialog] Qt.t -> unit = "mlqt_QProgressDialog_canceled"
  external signal'canceled1 : unit -> ([> qProgressDialog], unit) Qt.signal = "mlqt_signal_QProgressDialog_canceled1" [@@noalloc]
  external slot'cancel1 : unit -> ([> qProgressDialog], unit) Qt.slot = "mlqt_slot_QProgressDialog_cancel1" [@@noalloc]
  external slot'forceShow : unit -> ([> qProgressDialog], unit) Qt.slot = "mlqt_slot_QProgressDialog_forceShow" [@@noalloc]
  external slot'_q_disconnectOnClose : unit -> ([> qProgressDialog], unit) Qt.slot = "mlqt_slot_QProgressDialog__q_disconnectOnClose" [@@noalloc]
  external slot'reset1 : unit -> ([> qProgressDialog], unit) Qt.slot = "mlqt_slot_QProgressDialog_reset1" [@@noalloc]
  external slot'setCancelButtonText1 : unit -> ([> qProgressDialog], string) Qt.slot = "mlqt_slot_QProgressDialog_setCancelButtonText1" [@@noalloc]
  external slot'setLabelText1 : unit -> ([> qProgressDialog], string) Qt.slot = "mlqt_slot_QProgressDialog_setLabelText1" [@@noalloc]
  external slot'setMaximum1 : unit -> ([> qProgressDialog], int) Qt.slot = "mlqt_slot_QProgressDialog_setMaximum1" [@@noalloc]
  external slot'setMinimumDuration1 : unit -> ([> qProgressDialog], int) Qt.slot = "mlqt_slot_QProgressDialog_setMinimumDuration1" [@@noalloc]
  external slot'setMinimum1 : unit -> ([> qProgressDialog], int) Qt.slot = "mlqt_slot_QProgressDialog_setMinimum1" [@@noalloc]
  external slot'setRange1 : unit -> ([> qProgressDialog], int * int) Qt.slot = "mlqt_slot_QProgressDialog_setRange1" [@@noalloc]
  external slot'setValue1 : unit -> ([> qProgressDialog], int) Qt.slot = "mlqt_slot_QProgressDialog_setValue1" [@@noalloc]
end
external new'QWizard : [> qWidget] Qt.t option -> qt'WindowFlags -> qWizard Qt.t = "mlqt_QWizard_new_"
module QWizard = struct
  include QDialog
  external class' : unit -> qWizard Qt.qt_class = "mlqt_class_QWizard" [@@noalloc]
  external addPage : [> qWizard] Qt.t -> [> qWizardPage] Qt.t -> int = "mlqt_QWizard_addPage"
  external setPage : [> qWizard] Qt.t -> int -> [> qWizardPage] Qt.t -> unit = "mlqt_QWizard_setPage"
  external removePage : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_removePage"
  external page : [> qWizard] Qt.t -> int -> qWizardPage Qt.t = "mlqt_QWizard_page"
  external hasVisitedPage : [> qWizard] Qt.t -> int -> bool = "mlqt_QWizard_hasVisitedPage"
  external setStartId : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_setStartId"
  external startId : [> qWizard] Qt.t -> int = "mlqt_QWizard_startId"
  external currentPage : [> qWizard] Qt.t -> qWizardPage Qt.t = "mlqt_QWizard_currentPage"
  external currentId : [> qWizard] Qt.t -> int = "mlqt_QWizard_currentId"
  external validateCurrentPage : [> qWizard] Qt.t -> bool = "mlqt_QWizard_validateCurrentPage"
  external nextId : [> qWizard] Qt.t -> int = "mlqt_QWizard_nextId"
  external setField : [> qWizard] Qt.t -> string -> QVariant.t -> unit = "mlqt_QWizard_setField"
  external field : [> qWizard] Qt.t -> string -> QVariant.t = "mlqt_QWizard_field"
  external setWizardStyle : [> qWizard] Qt.t -> qWizard'WizardStyle -> unit = "mlqt_QWizard_setWizardStyle"
  external wizardStyle : [> qWizard] Qt.t -> qWizard'WizardStyle = "mlqt_QWizard_wizardStyle"
  external setOption : [> qWizard] Qt.t -> qWizard'WizardOption -> bool -> unit = "mlqt_QWizard_setOption"
  external testOption : [> qWizard] Qt.t -> qWizard'WizardOption -> bool = "mlqt_QWizard_testOption"
  external setOptions : [> qWizard] Qt.t -> qWizard'WizardOptions -> unit = "mlqt_QWizard_setOptions"
  external options : [> qWizard] Qt.t -> qWizard'WizardOptions = "mlqt_QWizard_options"
  external setButtonText : [> qWizard] Qt.t -> qWizard'WizardButton -> string -> unit = "mlqt_QWizard_setButtonText"
  external buttonText : [> qWizard] Qt.t -> qWizard'WizardButton -> string = "mlqt_QWizard_buttonText"
  external setButton : [> qWizard] Qt.t -> qWizard'WizardButton -> [> qAbstractButton] Qt.t -> unit = "mlqt_QWizard_setButton"
  external button : [> qWizard] Qt.t -> qWizard'WizardButton -> qAbstractButton Qt.t = "mlqt_QWizard_button"
  external setTitleFormat : [> qWizard] Qt.t -> qt'TextFormat -> unit = "mlqt_QWizard_setTitleFormat"
  external titleFormat : [> qWizard] Qt.t -> qt'TextFormat = "mlqt_QWizard_titleFormat"
  external setSubTitleFormat : [> qWizard] Qt.t -> qt'TextFormat -> unit = "mlqt_QWizard_setSubTitleFormat"
  external subTitleFormat : [> qWizard] Qt.t -> qt'TextFormat = "mlqt_QWizard_subTitleFormat"
  external setSideWidget : [> qWizard] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QWizard_setSideWidget"
  external sideWidget : [> qWizard] Qt.t -> qWidget Qt.t = "mlqt_QWizard_sideWidget"
  external setVisible : [> qWizard] Qt.t -> bool -> unit = "mlqt_QWizard_setVisible"
  external sizeHint : [> qWizard] Qt.t -> qSize = "mlqt_QWizard_sizeHint"
  external currentIdChanged : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_currentIdChanged"
  external helpRequested : [> qWizard] Qt.t -> unit = "mlqt_QWizard_helpRequested"
  external customButtonClicked : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_customButtonClicked"
  external pageAdded : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_pageAdded"
  external pageRemoved : [> qWizard] Qt.t -> int -> unit = "mlqt_QWizard_pageRemoved"
  external back : [> qWizard] Qt.t -> unit = "mlqt_QWizard_back"
  external next : [> qWizard] Qt.t -> unit = "mlqt_QWizard_next"
  external restart : [> qWizard] Qt.t -> unit = "mlqt_QWizard_restart"
end
module QGraphicsProxyWidget = struct
  include QGraphicsWidget
  external class' : unit -> qGraphicsProxyWidget Qt.qt_class = "mlqt_class_QGraphicsProxyWidget" [@@noalloc]
end
module QProxyStyle = struct
  include QCommonStyle
  external class' : unit -> qProxyStyle Qt.qt_class = "mlqt_class_QProxyStyle" [@@noalloc]
end
external new'QCommandLinkButton : [> qWidget] Qt.t option -> qCommandLinkButton Qt.t = "mlqt_QCommandLinkButton_new_"
external new'QCommandLinkButton'1 : string -> [> qWidget] Qt.t option -> qCommandLinkButton Qt.t = "mlqt_QCommandLinkButton_new_1"
external new'QCommandLinkButton'2 : string -> string -> [> qWidget] Qt.t option -> qCommandLinkButton Qt.t = "mlqt_QCommandLinkButton_new_2"
module QCommandLinkButton = struct
  include QPushButton
  external class' : unit -> qCommandLinkButton Qt.qt_class = "mlqt_class_QCommandLinkButton" [@@noalloc]
  external description : [> qCommandLinkButton] Qt.t -> string = "mlqt_QCommandLinkButton_description"
  external setDescription : [> qCommandLinkButton] Qt.t -> string -> unit = "mlqt_QCommandLinkButton_setDescription"
end
external new'QTimeEdit : [> qWidget] Qt.t option -> qTimeEdit Qt.t = "mlqt_QTimeEdit_new_"
external new'QTimeEdit'1 : [> qTime] Qt.t -> [> qWidget] Qt.t option -> qTimeEdit Qt.t = "mlqt_QTimeEdit_new_1"
module QTimeEdit = struct
  include QDateTimeEdit
  external class' : unit -> qTimeEdit Qt.qt_class = "mlqt_class_QTimeEdit" [@@noalloc]
end
external new'QDateEdit : [> qWidget] Qt.t option -> qDateEdit Qt.t = "mlqt_QDateEdit_new_"
external new'QDateEdit'1 : [> qDate] Qt.t -> [> qWidget] Qt.t option -> qDateEdit Qt.t = "mlqt_QDateEdit_new_1"
module QDateEdit = struct
  include QDateTimeEdit
  external class' : unit -> qDateEdit Qt.qt_class = "mlqt_class_QDateEdit" [@@noalloc]
end
module QGraphicsView = struct
  include QAbstractScrollArea
  external class' : unit -> qGraphicsView Qt.qt_class = "mlqt_class_QGraphicsView" [@@noalloc]
  external signal'rubberBandChanged : unit -> ([> qGraphicsView], qRect * qPointF * qPointF) Qt.signal = "mlqt_signal_QGraphicsView_rubberBandChanged" [@@noalloc]
  external slot'invalidateScene : unit -> ([> qGraphicsView], unit) Qt.slot = "mlqt_slot_QGraphicsView_invalidateScene" [@@noalloc]
  external slot'invalidateScene1 : unit -> ([> qGraphicsView], qRectF) Qt.slot = "mlqt_slot_QGraphicsView_invalidateScene1" [@@noalloc]
  external slot'invalidateScene2 : unit -> ([> qGraphicsView], qRectF * qGraphicsScene'SceneLayers) Qt.slot = "mlqt_slot_QGraphicsView_invalidateScene2" [@@noalloc]
  external slot'_q_setViewportCursor : unit -> ([> qGraphicsView], [> qCursor] Qt.t) Qt.slot = "mlqt_slot_QGraphicsView__q_setViewportCursor" [@@noalloc]
  external slot'_q_unsetViewportCursor : unit -> ([> qGraphicsView], unit) Qt.slot = "mlqt_slot_QGraphicsView__q_unsetViewportCursor" [@@noalloc]
  external slot'setupViewport : unit -> ([> qGraphicsView], [> qWidget] Qt.t) Qt.slot = "mlqt_slot_QGraphicsView_setupViewport" [@@noalloc]
  external slot'updateSceneRect : unit -> ([> qGraphicsView], qRectF) Qt.slot = "mlqt_slot_QGraphicsView_updateSceneRect" [@@noalloc]
end
module QAbstractItemView = struct
  include QAbstractScrollArea
  external class' : unit -> qAbstractItemView Qt.qt_class = "mlqt_class_QAbstractItemView" [@@noalloc]
  external setModel : [> qAbstractItemView] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QAbstractItemView_setModel"
  external model : [> qAbstractItemView] Qt.t -> qAbstractItemModel Qt.t = "mlqt_QAbstractItemView_model"
  external setSelectionModel : [> qAbstractItemView] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QAbstractItemView_setSelectionModel"
  external selectionModel : [> qAbstractItemView] Qt.t -> qItemSelectionModel Qt.t = "mlqt_QAbstractItemView_selectionModel"
  external setItemDelegate : [> qAbstractItemView] Qt.t -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QAbstractItemView_setItemDelegate"
  external itemDelegate : [> qAbstractItemView] Qt.t -> qAbstractItemDelegate Qt.t = "mlqt_QAbstractItemView_itemDelegate"
  external setSelectionMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'SelectionMode -> unit = "mlqt_QAbstractItemView_setSelectionMode"
  external selectionMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'SelectionMode = "mlqt_QAbstractItemView_selectionMode"
  external setSelectionBehavior : [> qAbstractItemView] Qt.t -> qAbstractItemView'SelectionBehavior -> unit = "mlqt_QAbstractItemView_setSelectionBehavior"
  external selectionBehavior : [> qAbstractItemView] Qt.t -> qAbstractItemView'SelectionBehavior = "mlqt_QAbstractItemView_selectionBehavior"
  external currentIndex : [> qAbstractItemView] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemView_currentIndex"
  external rootIndex : [> qAbstractItemView] Qt.t -> qModelIndex Qt.t = "mlqt_QAbstractItemView_rootIndex"
  external setEditTriggers : [> qAbstractItemView] Qt.t -> qAbstractItemView'EditTriggers -> unit = "mlqt_QAbstractItemView_setEditTriggers"
  external editTriggers : [> qAbstractItemView] Qt.t -> qAbstractItemView'EditTriggers = "mlqt_QAbstractItemView_editTriggers"
  external setVerticalScrollMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'ScrollMode -> unit = "mlqt_QAbstractItemView_setVerticalScrollMode"
  external verticalScrollMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'ScrollMode = "mlqt_QAbstractItemView_verticalScrollMode"
  external resetVerticalScrollMode : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_resetVerticalScrollMode"
  external setHorizontalScrollMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'ScrollMode -> unit = "mlqt_QAbstractItemView_setHorizontalScrollMode"
  external horizontalScrollMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'ScrollMode = "mlqt_QAbstractItemView_horizontalScrollMode"
  external resetHorizontalScrollMode : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_resetHorizontalScrollMode"
  external setAutoScroll : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setAutoScroll"
  external hasAutoScroll : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_hasAutoScroll"
  external setAutoScrollMargin : [> qAbstractItemView] Qt.t -> int -> unit = "mlqt_QAbstractItemView_setAutoScrollMargin"
  external autoScrollMargin : [> qAbstractItemView] Qt.t -> int = "mlqt_QAbstractItemView_autoScrollMargin"
  external setTabKeyNavigation : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setTabKeyNavigation"
  external tabKeyNavigation : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_tabKeyNavigation"
  external setDropIndicatorShown : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setDropIndicatorShown"
  external showDropIndicator : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_showDropIndicator"
  external setDragEnabled : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setDragEnabled"
  external dragEnabled : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_dragEnabled"
  external setDragDropOverwriteMode : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setDragDropOverwriteMode"
  external dragDropOverwriteMode : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_dragDropOverwriteMode"
  external setDragDropMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'DragDropMode -> unit = "mlqt_QAbstractItemView_setDragDropMode"
  external dragDropMode : [> qAbstractItemView] Qt.t -> qAbstractItemView'DragDropMode = "mlqt_QAbstractItemView_dragDropMode"
  external setDefaultDropAction : [> qAbstractItemView] Qt.t -> qt'DropAction -> unit = "mlqt_QAbstractItemView_setDefaultDropAction"
  external defaultDropAction : [> qAbstractItemView] Qt.t -> qt'DropAction = "mlqt_QAbstractItemView_defaultDropAction"
  external setAlternatingRowColors : [> qAbstractItemView] Qt.t -> bool -> unit = "mlqt_QAbstractItemView_setAlternatingRowColors"
  external alternatingRowColors : [> qAbstractItemView] Qt.t -> bool = "mlqt_QAbstractItemView_alternatingRowColors"
  external setIconSize : [> qAbstractItemView] Qt.t -> qSize -> unit = "mlqt_QAbstractItemView_setIconSize"
  external iconSize : [> qAbstractItemView] Qt.t -> qSize = "mlqt_QAbstractItemView_iconSize"
  external setTextElideMode : [> qAbstractItemView] Qt.t -> qt'TextElideMode -> unit = "mlqt_QAbstractItemView_setTextElideMode"
  external textElideMode : [> qAbstractItemView] Qt.t -> qt'TextElideMode = "mlqt_QAbstractItemView_textElideMode"
  external keyboardSearch : [> qAbstractItemView] Qt.t -> string -> unit = "mlqt_QAbstractItemView_keyboardSearch"
  external visualRect : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> qRect = "mlqt_QAbstractItemView_visualRect"
  external scrollTo : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QAbstractItemView_scrollTo"
  external indexAt : [> qAbstractItemView] Qt.t -> qPoint -> qModelIndex Qt.t = "mlqt_QAbstractItemView_indexAt"
  external sizeHintForIndex : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> qSize = "mlqt_QAbstractItemView_sizeHintForIndex"
  external sizeHintForRow : [> qAbstractItemView] Qt.t -> int -> int = "mlqt_QAbstractItemView_sizeHintForRow"
  external sizeHintForColumn : [> qAbstractItemView] Qt.t -> int -> int = "mlqt_QAbstractItemView_sizeHintForColumn"
  external openPersistentEditor : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_openPersistentEditor"
  external closePersistentEditor : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_closePersistentEditor"
  external setIndexWidget : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QAbstractItemView_setIndexWidget"
  external indexWidget : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> qWidget Qt.t = "mlqt_QAbstractItemView_indexWidget"
  external setItemDelegateForRow : [> qAbstractItemView] Qt.t -> int -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QAbstractItemView_setItemDelegateForRow"
  external itemDelegateForRow : [> qAbstractItemView] Qt.t -> int -> qAbstractItemDelegate Qt.t = "mlqt_QAbstractItemView_itemDelegateForRow"
  external setItemDelegateForColumn : [> qAbstractItemView] Qt.t -> int -> [> qAbstractItemDelegate] Qt.t -> unit = "mlqt_QAbstractItemView_setItemDelegateForColumn"
  external itemDelegateForColumn : [> qAbstractItemView] Qt.t -> int -> qAbstractItemDelegate Qt.t = "mlqt_QAbstractItemView_itemDelegateForColumn"
  external itemDelegate1 : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> qAbstractItemDelegate Qt.t = "mlqt_QAbstractItemView_itemDelegate1"
  external reset : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_reset"
  external setRootIndex : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_setRootIndex"
  external selectAll : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_selectAll"
  external edit : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_edit"
  external clearSelection : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_clearSelection"
  external setCurrentIndex : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_setCurrentIndex"
  external scrollToTop : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_scrollToTop"
  external scrollToBottom : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_scrollToBottom"
  external update : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_update"
  external pressed : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_pressed"
  external clicked : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_clicked"
  external doubleClicked : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_doubleClicked"
  external activated : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_activated"
  external entered : [> qAbstractItemView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QAbstractItemView_entered"
  external viewportEntered : [> qAbstractItemView] Qt.t -> unit = "mlqt_QAbstractItemView_viewportEntered"
  external iconSizeChanged : [> qAbstractItemView] Qt.t -> qSize -> unit = "mlqt_QAbstractItemView_iconSizeChanged"
  external signal'activated1 : unit -> ([> qAbstractItemView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QAbstractItemView_activated1" [@@noalloc]
  external signal'clicked1 : unit -> ([> qAbstractItemView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QAbstractItemView_clicked1" [@@noalloc]
  external signal'doubleClicked1 : unit -> ([> qAbstractItemView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QAbstractItemView_doubleClicked1" [@@noalloc]
  external signal'entered1 : unit -> ([> qAbstractItemView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QAbstractItemView_entered1" [@@noalloc]
  external signal'iconSizeChanged1 : unit -> ([> qAbstractItemView], qSize) Qt.signal = "mlqt_signal_QAbstractItemView_iconSizeChanged1" [@@noalloc]
  external signal'pressed1 : unit -> ([> qAbstractItemView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QAbstractItemView_pressed1" [@@noalloc]
  external signal'viewportEntered1 : unit -> ([> qAbstractItemView], unit) Qt.signal = "mlqt_signal_QAbstractItemView_viewportEntered1" [@@noalloc]
  external slot'clearSelection1 : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_clearSelection1" [@@noalloc]
  external slot'currentChanged : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_currentChanged" [@@noalloc]
  external slot'dataChanged : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_dataChanged" [@@noalloc]
  external slot'doItemsLayout : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_doItemsLayout" [@@noalloc]
  external slot'edit1 : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_edit1" [@@noalloc]
  external slot'horizontalScrollbarAction : unit -> ([> qAbstractItemView], int) Qt.slot = "mlqt_slot_QAbstractItemView_horizontalScrollbarAction" [@@noalloc]
  external slot'horizontalScrollbarValueChanged : unit -> ([> qAbstractItemView], int) Qt.slot = "mlqt_slot_QAbstractItemView_horizontalScrollbarValueChanged" [@@noalloc]
  external slot'_q_columnsAboutToBeRemoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_columnsAboutToBeRemoved" [@@noalloc]
  external slot'_q_columnsInserted : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_columnsInserted" [@@noalloc]
  external slot'_q_columnsMoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int * [> qModelIndex] Qt.t * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_columnsMoved" [@@noalloc]
  external slot'_q_columnsRemoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_columnsRemoved" [@@noalloc]
  external slot'_q_headerDataChanged : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView__q_headerDataChanged" [@@noalloc]
  external slot'_q_layoutChanged : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView__q_layoutChanged" [@@noalloc]
  external slot'_q_modelDestroyed : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView__q_modelDestroyed" [@@noalloc]
  external slot'_q_rowsInserted : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_rowsInserted" [@@noalloc]
  external slot'_q_rowsMoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int * [> qModelIndex] Qt.t * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_rowsMoved" [@@noalloc]
  external slot'_q_rowsRemoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView__q_rowsRemoved" [@@noalloc]
  external slot'_q_scrollerStateChanged : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView__q_scrollerStateChanged" [@@noalloc]
  external slot'reset1 : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_reset1" [@@noalloc]
  external slot'rowsAboutToBeRemoved : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView_rowsAboutToBeRemoved" [@@noalloc]
  external slot'rowsInserted : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QAbstractItemView_rowsInserted" [@@noalloc]
  external slot'scrollToBottom1 : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_scrollToBottom1" [@@noalloc]
  external slot'scrollToTop1 : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_scrollToTop1" [@@noalloc]
  external slot'selectAll1 : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_selectAll1" [@@noalloc]
  external slot'selectionChanged : unit -> ([> qAbstractItemView], [> qItemSelection] Qt.t * [> qItemSelection] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_selectionChanged" [@@noalloc]
  external slot'setCurrentIndex1 : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_setCurrentIndex1" [@@noalloc]
  external slot'setRootIndex1 : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_setRootIndex1" [@@noalloc]
  external slot'updateEditorData : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_updateEditorData" [@@noalloc]
  external slot'updateEditorGeometries : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_updateEditorGeometries" [@@noalloc]
  external slot'updateGeometries : unit -> ([> qAbstractItemView], unit) Qt.slot = "mlqt_slot_QAbstractItemView_updateGeometries" [@@noalloc]
  external slot'update1 : unit -> ([> qAbstractItemView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QAbstractItemView_update1" [@@noalloc]
  external slot'verticalScrollbarAction : unit -> ([> qAbstractItemView], int) Qt.slot = "mlqt_slot_QAbstractItemView_verticalScrollbarAction" [@@noalloc]
  external slot'verticalScrollbarValueChanged : unit -> ([> qAbstractItemView], int) Qt.slot = "mlqt_slot_QAbstractItemView_verticalScrollbarValueChanged" [@@noalloc]
end
external new'QMdiArea : [> qWidget] Qt.t option -> qMdiArea Qt.t = "mlqt_QMdiArea_new_"
module QMdiArea = struct
  include QAbstractScrollArea
  external class' : unit -> qMdiArea Qt.qt_class = "mlqt_class_QMdiArea" [@@noalloc]
  external sizeHint : [> qMdiArea] Qt.t -> qSize = "mlqt_QMdiArea_sizeHint"
  external minimumSizeHint : [> qMdiArea] Qt.t -> qSize = "mlqt_QMdiArea_minimumSizeHint"
  external currentSubWindow : [> qMdiArea] Qt.t -> qMdiSubWindow Qt.t = "mlqt_QMdiArea_currentSubWindow"
  external activeSubWindow : [> qMdiArea] Qt.t -> qMdiSubWindow Qt.t = "mlqt_QMdiArea_activeSubWindow"
  external addSubWindow : [> qMdiArea] Qt.t -> [> qWidget] Qt.t -> qt'WindowFlags -> qMdiSubWindow Qt.t = "mlqt_QMdiArea_addSubWindow"
  external removeSubWindow : [> qMdiArea] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QMdiArea_removeSubWindow"
  external background : [> qMdiArea] Qt.t -> qBrush Qt.t = "mlqt_QMdiArea_background"
  external setBackground : [> qMdiArea] Qt.t -> [> qBrush] Qt.t -> unit = "mlqt_QMdiArea_setBackground"
  external activationOrder : [> qMdiArea] Qt.t -> qMdiArea'WindowOrder = "mlqt_QMdiArea_activationOrder"
  external setActivationOrder : [> qMdiArea] Qt.t -> qMdiArea'WindowOrder -> unit = "mlqt_QMdiArea_setActivationOrder"
  external setOption : [> qMdiArea] Qt.t -> qMdiArea'AreaOption -> bool -> unit = "mlqt_QMdiArea_setOption"
  external testOption : [> qMdiArea] Qt.t -> qMdiArea'AreaOption -> bool = "mlqt_QMdiArea_testOption"
  external setViewMode : [> qMdiArea] Qt.t -> qMdiArea'ViewMode -> unit = "mlqt_QMdiArea_setViewMode"
  external viewMode : [> qMdiArea] Qt.t -> qMdiArea'ViewMode = "mlqt_QMdiArea_viewMode"
  external documentMode : [> qMdiArea] Qt.t -> bool = "mlqt_QMdiArea_documentMode"
  external setDocumentMode : [> qMdiArea] Qt.t -> bool -> unit = "mlqt_QMdiArea_setDocumentMode"
  external setTabsClosable : [> qMdiArea] Qt.t -> bool -> unit = "mlqt_QMdiArea_setTabsClosable"
  external tabsClosable : [> qMdiArea] Qt.t -> bool = "mlqt_QMdiArea_tabsClosable"
  external setTabsMovable : [> qMdiArea] Qt.t -> bool -> unit = "mlqt_QMdiArea_setTabsMovable"
  external tabsMovable : [> qMdiArea] Qt.t -> bool = "mlqt_QMdiArea_tabsMovable"
  external setTabShape : [> qMdiArea] Qt.t -> qTabWidget'TabShape -> unit = "mlqt_QMdiArea_setTabShape"
  external tabShape : [> qMdiArea] Qt.t -> qTabWidget'TabShape = "mlqt_QMdiArea_tabShape"
  external setTabPosition : [> qMdiArea] Qt.t -> qTabWidget'TabPosition -> unit = "mlqt_QMdiArea_setTabPosition"
  external tabPosition : [> qMdiArea] Qt.t -> qTabWidget'TabPosition = "mlqt_QMdiArea_tabPosition"
  external subWindowActivated : [> qMdiArea] Qt.t -> [> qMdiSubWindow] Qt.t -> unit = "mlqt_QMdiArea_subWindowActivated"
  external setActiveSubWindow : [> qMdiArea] Qt.t -> [> qMdiSubWindow] Qt.t -> unit = "mlqt_QMdiArea_setActiveSubWindow"
  external tileSubWindows : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_tileSubWindows"
  external cascadeSubWindows : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_cascadeSubWindows"
  external closeActiveSubWindow : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_closeActiveSubWindow"
  external closeAllSubWindows : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_closeAllSubWindows"
  external activateNextSubWindow : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_activateNextSubWindow"
  external activatePreviousSubWindow : [> qMdiArea] Qt.t -> unit = "mlqt_QMdiArea_activatePreviousSubWindow"
  external signal'subWindowActivated1 : unit -> ([> qMdiArea], qMdiSubWindow Qt.t) Qt.signal = "mlqt_signal_QMdiArea_subWindowActivated1" [@@noalloc]
  external slot'activateNextSubWindow1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_activateNextSubWindow1" [@@noalloc]
  external slot'activatePreviousSubWindow1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_activatePreviousSubWindow1" [@@noalloc]
  external slot'cascadeSubWindows1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_cascadeSubWindows1" [@@noalloc]
  external slot'closeActiveSubWindow1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_closeActiveSubWindow1" [@@noalloc]
  external slot'closeAllSubWindows1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_closeAllSubWindows1" [@@noalloc]
  external slot'_q_closeTab : unit -> ([> qMdiArea], int) Qt.slot = "mlqt_slot_QMdiArea__q_closeTab" [@@noalloc]
  external slot'_q_currentTabChanged : unit -> ([> qMdiArea], int) Qt.slot = "mlqt_slot_QMdiArea__q_currentTabChanged" [@@noalloc]
  external slot'_q_deactivateAllWindows : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea__q_deactivateAllWindows" [@@noalloc]
  external slot'_q_moveTab : unit -> ([> qMdiArea], int * int) Qt.slot = "mlqt_slot_QMdiArea__q_moveTab" [@@noalloc]
  external slot'_q_processWindowStateChanged : unit -> ([> qMdiArea], qt'WindowStates * qt'WindowStates) Qt.slot = "mlqt_slot_QMdiArea__q_processWindowStateChanged" [@@noalloc]
  external slot'setActiveSubWindow1 : unit -> ([> qMdiArea], [> qMdiSubWindow] Qt.t) Qt.slot = "mlqt_slot_QMdiArea_setActiveSubWindow1" [@@noalloc]
  external slot'setupViewport : unit -> ([> qMdiArea], [> qWidget] Qt.t) Qt.slot = "mlqt_slot_QMdiArea_setupViewport" [@@noalloc]
  external slot'tileSubWindows1 : unit -> ([> qMdiArea], unit) Qt.slot = "mlqt_slot_QMdiArea_tileSubWindows1" [@@noalloc]
end
external new'QPlainTextEdit : [> qWidget] Qt.t option -> qPlainTextEdit Qt.t = "mlqt_QPlainTextEdit_new_"
external new'QPlainTextEdit'1 : string -> [> qWidget] Qt.t option -> qPlainTextEdit Qt.t = "mlqt_QPlainTextEdit_new_1"
module QPlainTextEdit = struct
  include QAbstractScrollArea
  external class' : unit -> qPlainTextEdit Qt.qt_class = "mlqt_class_QPlainTextEdit" [@@noalloc]
  external setDocument : [> qPlainTextEdit] Qt.t -> [> qTextDocument] Qt.t -> unit = "mlqt_QPlainTextEdit_setDocument"
  external document : [> qPlainTextEdit] Qt.t -> qTextDocument Qt.t = "mlqt_QPlainTextEdit_document"
  external setPlaceholderText : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_setPlaceholderText"
  external placeholderText : [> qPlainTextEdit] Qt.t -> string = "mlqt_QPlainTextEdit_placeholderText"
  external setTextCursor : [> qPlainTextEdit] Qt.t -> [> qTextCursor] Qt.t -> unit = "mlqt_QPlainTextEdit_setTextCursor"
  external textCursor : [> qPlainTextEdit] Qt.t -> qTextCursor Qt.t = "mlqt_QPlainTextEdit_textCursor"
  external isReadOnly : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_isReadOnly"
  external setReadOnly : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setReadOnly"
  external setTextInteractionFlags : [> qPlainTextEdit] Qt.t -> qt'TextInteractionFlags -> unit = "mlqt_QPlainTextEdit_setTextInteractionFlags"
  external textInteractionFlags : [> qPlainTextEdit] Qt.t -> qt'TextInteractionFlags = "mlqt_QPlainTextEdit_textInteractionFlags"
  external mergeCurrentCharFormat : [> qPlainTextEdit] Qt.t -> [> qTextCharFormat] Qt.t -> unit = "mlqt_QPlainTextEdit_mergeCurrentCharFormat"
  external setCurrentCharFormat : [> qPlainTextEdit] Qt.t -> [> qTextCharFormat] Qt.t -> unit = "mlqt_QPlainTextEdit_setCurrentCharFormat"
  external currentCharFormat : [> qPlainTextEdit] Qt.t -> qTextCharFormat Qt.t = "mlqt_QPlainTextEdit_currentCharFormat"
  external tabChangesFocus : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_tabChangesFocus"
  external setTabChangesFocus : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setTabChangesFocus"
  external setDocumentTitle : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_setDocumentTitle"
  external documentTitle : [> qPlainTextEdit] Qt.t -> string = "mlqt_QPlainTextEdit_documentTitle"
  external isUndoRedoEnabled : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_isUndoRedoEnabled"
  external setUndoRedoEnabled : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setUndoRedoEnabled"
  external setMaximumBlockCount : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_setMaximumBlockCount"
  external maximumBlockCount : [> qPlainTextEdit] Qt.t -> int = "mlqt_QPlainTextEdit_maximumBlockCount"
  external lineWrapMode : [> qPlainTextEdit] Qt.t -> qPlainTextEdit'LineWrapMode = "mlqt_QPlainTextEdit_lineWrapMode"
  external setLineWrapMode : [> qPlainTextEdit] Qt.t -> qPlainTextEdit'LineWrapMode -> unit = "mlqt_QPlainTextEdit_setLineWrapMode"
  external wordWrapMode : [> qPlainTextEdit] Qt.t -> qTextOption'WrapMode = "mlqt_QPlainTextEdit_wordWrapMode"
  external setWordWrapMode : [> qPlainTextEdit] Qt.t -> qTextOption'WrapMode -> unit = "mlqt_QPlainTextEdit_setWordWrapMode"
  external setBackgroundVisible : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setBackgroundVisible"
  external backgroundVisible : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_backgroundVisible"
  external setCenterOnScroll : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setCenterOnScroll"
  external centerOnScroll : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_centerOnScroll"
  external find : [> qPlainTextEdit] Qt.t -> string -> qTextDocument'FindFlags -> bool = "mlqt_QPlainTextEdit_find"
  external find1 : [> qPlainTextEdit] Qt.t -> [> qRegExp] Qt.t -> qTextDocument'FindFlags -> bool = "mlqt_QPlainTextEdit_find1"
  external toPlainText : [> qPlainTextEdit] Qt.t -> string = "mlqt_QPlainTextEdit_toPlainText"
  external ensureCursorVisible : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_ensureCursorVisible"
  external loadResource : [> qPlainTextEdit] Qt.t -> int -> [> qUrl] Qt.t -> QVariant.t = "mlqt_QPlainTextEdit_loadResource"
  external createStandardContextMenu : [> qPlainTextEdit] Qt.t -> qMenu Qt.t = "mlqt_QPlainTextEdit_createStandardContextMenu"
  external createStandardContextMenu1 : [> qPlainTextEdit] Qt.t -> qPoint -> qMenu Qt.t = "mlqt_QPlainTextEdit_createStandardContextMenu1"
  external cursorForPosition : [> qPlainTextEdit] Qt.t -> qPoint -> qTextCursor Qt.t = "mlqt_QPlainTextEdit_cursorForPosition"
  external cursorRect : [> qPlainTextEdit] Qt.t -> [> qTextCursor] Qt.t -> qRect = "mlqt_QPlainTextEdit_cursorRect"
  external cursorRect1 : [> qPlainTextEdit] Qt.t -> qRect = "mlqt_QPlainTextEdit_cursorRect1"
  external anchorAt : [> qPlainTextEdit] Qt.t -> qPoint -> string = "mlqt_QPlainTextEdit_anchorAt"
  external overwriteMode : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_overwriteMode"
  external setOverwriteMode : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_setOverwriteMode"
  external tabStopWidth : [> qPlainTextEdit] Qt.t -> int = "mlqt_QPlainTextEdit_tabStopWidth"
  external setTabStopWidth : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_setTabStopWidth"
  external cursorWidth : [> qPlainTextEdit] Qt.t -> int = "mlqt_QPlainTextEdit_cursorWidth"
  external setCursorWidth : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_setCursorWidth"
  external moveCursor : [> qPlainTextEdit] Qt.t -> qTextCursor'MoveOperation -> qTextCursor'MoveMode -> unit = "mlqt_QPlainTextEdit_moveCursor"
  external canPaste : [> qPlainTextEdit] Qt.t -> bool = "mlqt_QPlainTextEdit_canPaste"
  external blockCount : [> qPlainTextEdit] Qt.t -> int = "mlqt_QPlainTextEdit_blockCount"
  external inputMethodQuery : [> qPlainTextEdit] Qt.t -> qt'InputMethodQuery -> QVariant.t = "mlqt_QPlainTextEdit_inputMethodQuery"
  external setPlainText : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_setPlainText"
  external cut : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_cut"
  external copy : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_copy"
  external paste : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_paste"
  external undo : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_undo"
  external redo : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_redo"
  external clear : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_clear"
  external selectAll : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_selectAll"
  external insertPlainText : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_insertPlainText"
  external appendPlainText : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_appendPlainText"
  external appendHtml : [> qPlainTextEdit] Qt.t -> string -> unit = "mlqt_QPlainTextEdit_appendHtml"
  external centerCursor : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_centerCursor"
  external zoomIn : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_zoomIn"
  external zoomOut : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_zoomOut"
  external textChanged : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_textChanged"
  external undoAvailable : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_undoAvailable"
  external redoAvailable : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_redoAvailable"
  external copyAvailable : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_copyAvailable"
  external selectionChanged : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_selectionChanged"
  external cursorPositionChanged : [> qPlainTextEdit] Qt.t -> unit = "mlqt_QPlainTextEdit_cursorPositionChanged"
  external updateRequest : [> qPlainTextEdit] Qt.t -> qRect -> int -> unit = "mlqt_QPlainTextEdit_updateRequest"
  external blockCountChanged : [> qPlainTextEdit] Qt.t -> int -> unit = "mlqt_QPlainTextEdit_blockCountChanged"
  external modificationChanged : [> qPlainTextEdit] Qt.t -> bool -> unit = "mlqt_QPlainTextEdit_modificationChanged"
  external signal'blockCountChanged1 : unit -> ([> qPlainTextEdit], int) Qt.signal = "mlqt_signal_QPlainTextEdit_blockCountChanged1" [@@noalloc]
  external signal'copyAvailable1 : unit -> ([> qPlainTextEdit], bool) Qt.signal = "mlqt_signal_QPlainTextEdit_copyAvailable1" [@@noalloc]
  external signal'cursorPositionChanged1 : unit -> ([> qPlainTextEdit], unit) Qt.signal = "mlqt_signal_QPlainTextEdit_cursorPositionChanged1" [@@noalloc]
  external signal'modificationChanged1 : unit -> ([> qPlainTextEdit], bool) Qt.signal = "mlqt_signal_QPlainTextEdit_modificationChanged1" [@@noalloc]
  external signal'redoAvailable1 : unit -> ([> qPlainTextEdit], bool) Qt.signal = "mlqt_signal_QPlainTextEdit_redoAvailable1" [@@noalloc]
  external signal'selectionChanged1 : unit -> ([> qPlainTextEdit], unit) Qt.signal = "mlqt_signal_QPlainTextEdit_selectionChanged1" [@@noalloc]
  external signal'textChanged1 : unit -> ([> qPlainTextEdit], unit) Qt.signal = "mlqt_signal_QPlainTextEdit_textChanged1" [@@noalloc]
  external signal'undoAvailable1 : unit -> ([> qPlainTextEdit], bool) Qt.signal = "mlqt_signal_QPlainTextEdit_undoAvailable1" [@@noalloc]
  external signal'updateRequest1 : unit -> ([> qPlainTextEdit], qRect * int) Qt.signal = "mlqt_signal_QPlainTextEdit_updateRequest1" [@@noalloc]
  external slot'appendHtml1 : unit -> ([> qPlainTextEdit], string) Qt.slot = "mlqt_slot_QPlainTextEdit_appendHtml1" [@@noalloc]
  external slot'appendPlainText1 : unit -> ([> qPlainTextEdit], string) Qt.slot = "mlqt_slot_QPlainTextEdit_appendPlainText1" [@@noalloc]
  external slot'centerCursor1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_centerCursor1" [@@noalloc]
  external slot'clear1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_clear1" [@@noalloc]
  external slot'copy1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_copy1" [@@noalloc]
  external slot'cut1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_cut1" [@@noalloc]
  external slot'insertPlainText1 : unit -> ([> qPlainTextEdit], string) Qt.slot = "mlqt_slot_QPlainTextEdit_insertPlainText1" [@@noalloc]
  external slot'paste1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_paste1" [@@noalloc]
  external slot'_q_adjustScrollbars : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit__q_adjustScrollbars" [@@noalloc]
  external slot'_q_cursorPositionChanged : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit__q_cursorPositionChanged" [@@noalloc]
  external slot'_q_repaintContents : unit -> ([> qPlainTextEdit], qRectF) Qt.slot = "mlqt_slot_QPlainTextEdit__q_repaintContents" [@@noalloc]
  external slot'_q_verticalScrollbarActionTriggered : unit -> ([> qPlainTextEdit], int) Qt.slot = "mlqt_slot_QPlainTextEdit__q_verticalScrollbarActionTriggered" [@@noalloc]
  external slot'redo1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_redo1" [@@noalloc]
  external slot'selectAll1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_selectAll1" [@@noalloc]
  external slot'setPlainText1 : unit -> ([> qPlainTextEdit], string) Qt.slot = "mlqt_slot_QPlainTextEdit_setPlainText1" [@@noalloc]
  external slot'undo1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_undo1" [@@noalloc]
  external slot'zoomIn1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_zoomIn1" [@@noalloc]
  external slot'zoomIn2 : unit -> ([> qPlainTextEdit], int) Qt.slot = "mlqt_slot_QPlainTextEdit_zoomIn2" [@@noalloc]
  external slot'zoomOut1 : unit -> ([> qPlainTextEdit], unit) Qt.slot = "mlqt_slot_QPlainTextEdit_zoomOut1" [@@noalloc]
  external slot'zoomOut2 : unit -> ([> qPlainTextEdit], int) Qt.slot = "mlqt_slot_QPlainTextEdit_zoomOut2" [@@noalloc]
end
external new'QScrollArea : [> qWidget] Qt.t option -> qScrollArea Qt.t = "mlqt_QScrollArea_new_"
module QScrollArea = struct
  include QAbstractScrollArea
  external class' : unit -> qScrollArea Qt.qt_class = "mlqt_class_QScrollArea" [@@noalloc]
  external widget : [> qScrollArea] Qt.t -> qWidget Qt.t = "mlqt_QScrollArea_widget"
  external setWidget : [> qScrollArea] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QScrollArea_setWidget"
  external takeWidget : [> qScrollArea] Qt.t -> qWidget Qt.t = "mlqt_QScrollArea_takeWidget"
  external widgetResizable : [> qScrollArea] Qt.t -> bool = "mlqt_QScrollArea_widgetResizable"
  external setWidgetResizable : [> qScrollArea] Qt.t -> bool -> unit = "mlqt_QScrollArea_setWidgetResizable"
  external sizeHint : [> qScrollArea] Qt.t -> qSize = "mlqt_QScrollArea_sizeHint"
  external focusNextPrevChild : [> qScrollArea] Qt.t -> bool -> bool = "mlqt_QScrollArea_focusNextPrevChild"
  external alignment : [> qScrollArea] Qt.t -> qt'Alignment = "mlqt_QScrollArea_alignment"
  external setAlignment : [> qScrollArea] Qt.t -> qt'Alignment -> unit = "mlqt_QScrollArea_setAlignment"
  external ensureVisible : [> qScrollArea] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QScrollArea_ensureVisible"
  external ensureWidgetVisible : [> qScrollArea] Qt.t -> [> qWidget] Qt.t -> int -> int -> unit = "mlqt_QScrollArea_ensureWidgetVisible"
end
external new'QTextEdit : [> qWidget] Qt.t option -> qTextEdit Qt.t = "mlqt_QTextEdit_new_"
external new'QTextEdit'1 : string -> [> qWidget] Qt.t option -> qTextEdit Qt.t = "mlqt_QTextEdit_new_1"
module QTextEdit = struct
  include QAbstractScrollArea
  external class' : unit -> qTextEdit Qt.qt_class = "mlqt_class_QTextEdit" [@@noalloc]
  external setDocument : [> qTextEdit] Qt.t -> [> qTextDocument] Qt.t -> unit = "mlqt_QTextEdit_setDocument"
  external document : [> qTextEdit] Qt.t -> qTextDocument Qt.t = "mlqt_QTextEdit_document"
  external setPlaceholderText : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setPlaceholderText"
  external placeholderText : [> qTextEdit] Qt.t -> string = "mlqt_QTextEdit_placeholderText"
  external isReadOnly : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_isReadOnly"
  external setReadOnly : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setReadOnly"
  external setTextInteractionFlags : [> qTextEdit] Qt.t -> qt'TextInteractionFlags -> unit = "mlqt_QTextEdit_setTextInteractionFlags"
  external textInteractionFlags : [> qTextEdit] Qt.t -> qt'TextInteractionFlags = "mlqt_QTextEdit_textInteractionFlags"
  external fontPointSize : [> qTextEdit] Qt.t -> float = "mlqt_QTextEdit_fontPointSize"
  external fontFamily : [> qTextEdit] Qt.t -> string = "mlqt_QTextEdit_fontFamily"
  external fontWeight : [> qTextEdit] Qt.t -> int = "mlqt_QTextEdit_fontWeight"
  external fontUnderline : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_fontUnderline"
  external fontItalic : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_fontItalic"
  external textColor : [> qTextEdit] Qt.t -> qColor Qt.t = "mlqt_QTextEdit_textColor"
  external textBackgroundColor : [> qTextEdit] Qt.t -> qColor Qt.t = "mlqt_QTextEdit_textBackgroundColor"
  external currentFont : [> qTextEdit] Qt.t -> qFont Qt.t = "mlqt_QTextEdit_currentFont"
  external alignment : [> qTextEdit] Qt.t -> qt'Alignment = "mlqt_QTextEdit_alignment"
  external autoFormatting : [> qTextEdit] Qt.t -> qTextEdit'AutoFormatting = "mlqt_QTextEdit_autoFormatting"
  external setAutoFormatting : [> qTextEdit] Qt.t -> qTextEdit'AutoFormatting -> unit = "mlqt_QTextEdit_setAutoFormatting"
  external tabChangesFocus : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_tabChangesFocus"
  external setTabChangesFocus : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setTabChangesFocus"
  external setDocumentTitle : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setDocumentTitle"
  external documentTitle : [> qTextEdit] Qt.t -> string = "mlqt_QTextEdit_documentTitle"
  external isUndoRedoEnabled : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_isUndoRedoEnabled"
  external setUndoRedoEnabled : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setUndoRedoEnabled"
  external lineWrapMode : [> qTextEdit] Qt.t -> qTextEdit'LineWrapMode = "mlqt_QTextEdit_lineWrapMode"
  external setLineWrapMode : [> qTextEdit] Qt.t -> qTextEdit'LineWrapMode -> unit = "mlqt_QTextEdit_setLineWrapMode"
  external lineWrapColumnOrWidth : [> qTextEdit] Qt.t -> int = "mlqt_QTextEdit_lineWrapColumnOrWidth"
  external setLineWrapColumnOrWidth : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_setLineWrapColumnOrWidth"
  external wordWrapMode : [> qTextEdit] Qt.t -> qTextOption'WrapMode = "mlqt_QTextEdit_wordWrapMode"
  external setWordWrapMode : [> qTextEdit] Qt.t -> qTextOption'WrapMode -> unit = "mlqt_QTextEdit_setWordWrapMode"
  external find : [> qTextEdit] Qt.t -> string -> qTextDocument'FindFlags -> bool = "mlqt_QTextEdit_find"
  external toPlainText : [> qTextEdit] Qt.t -> string = "mlqt_QTextEdit_toPlainText"
  external toHtml : [> qTextEdit] Qt.t -> string = "mlqt_QTextEdit_toHtml"
  external ensureCursorVisible : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_ensureCursorVisible"
  external loadResource : [> qTextEdit] Qt.t -> int -> [> qUrl] Qt.t -> QVariant.t = "mlqt_QTextEdit_loadResource"
  external createStandardContextMenu : [> qTextEdit] Qt.t -> qMenu Qt.t = "mlqt_QTextEdit_createStandardContextMenu"
  external createStandardContextMenu1 : [> qTextEdit] Qt.t -> qPoint -> qMenu Qt.t = "mlqt_QTextEdit_createStandardContextMenu1"
  external cursorRect : [> qTextEdit] Qt.t -> qRect = "mlqt_QTextEdit_cursorRect"
  external anchorAt : [> qTextEdit] Qt.t -> qPoint -> string = "mlqt_QTextEdit_anchorAt"
  external overwriteMode : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_overwriteMode"
  external setOverwriteMode : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setOverwriteMode"
  external tabStopWidth : [> qTextEdit] Qt.t -> int = "mlqt_QTextEdit_tabStopWidth"
  external setTabStopWidth : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_setTabStopWidth"
  external cursorWidth : [> qTextEdit] Qt.t -> int = "mlqt_QTextEdit_cursorWidth"
  external setCursorWidth : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_setCursorWidth"
  external acceptRichText : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_acceptRichText"
  external setAcceptRichText : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setAcceptRichText"
  external moveCursor : [> qTextEdit] Qt.t -> qTextCursor'MoveOperation -> qTextCursor'MoveMode -> unit = "mlqt_QTextEdit_moveCursor"
  external canPaste : [> qTextEdit] Qt.t -> bool = "mlqt_QTextEdit_canPaste"
  external setFontPointSize : [> qTextEdit] Qt.t -> float -> unit = "mlqt_QTextEdit_setFontPointSize"
  external setFontFamily : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setFontFamily"
  external setFontWeight : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_setFontWeight"
  external setFontUnderline : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setFontUnderline"
  external setFontItalic : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_setFontItalic"
  external setTextColor : [> qTextEdit] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QTextEdit_setTextColor"
  external setTextBackgroundColor : [> qTextEdit] Qt.t -> [> qColor] Qt.t -> unit = "mlqt_QTextEdit_setTextBackgroundColor"
  external setCurrentFont : [> qTextEdit] Qt.t -> [> qFont] Qt.t -> unit = "mlqt_QTextEdit_setCurrentFont"
  external setAlignment : [> qTextEdit] Qt.t -> qt'Alignment -> unit = "mlqt_QTextEdit_setAlignment"
  external setPlainText : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setPlainText"
  external setHtml : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setHtml"
  external setText : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_setText"
  external cut : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_cut"
  external copy : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_copy"
  external paste : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_paste"
  external undo : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_undo"
  external redo : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_redo"
  external clear : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_clear"
  external selectAll : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_selectAll"
  external insertPlainText : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_insertPlainText"
  external insertHtml : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_insertHtml"
  external append : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_append"
  external scrollToAnchor : [> qTextEdit] Qt.t -> string -> unit = "mlqt_QTextEdit_scrollToAnchor"
  external zoomIn : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_zoomIn"
  external zoomOut : [> qTextEdit] Qt.t -> int -> unit = "mlqt_QTextEdit_zoomOut"
  external textChanged : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_textChanged"
  external undoAvailable : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_undoAvailable"
  external redoAvailable : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_redoAvailable"
  external copyAvailable : [> qTextEdit] Qt.t -> bool -> unit = "mlqt_QTextEdit_copyAvailable"
  external selectionChanged : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_selectionChanged"
  external cursorPositionChanged : [> qTextEdit] Qt.t -> unit = "mlqt_QTextEdit_cursorPositionChanged"
  external signal'copyAvailable1 : unit -> ([> qTextEdit], bool) Qt.signal = "mlqt_signal_QTextEdit_copyAvailable1" [@@noalloc]
  external signal'cursorPositionChanged1 : unit -> ([> qTextEdit], unit) Qt.signal = "mlqt_signal_QTextEdit_cursorPositionChanged1" [@@noalloc]
  external signal'redoAvailable1 : unit -> ([> qTextEdit], bool) Qt.signal = "mlqt_signal_QTextEdit_redoAvailable1" [@@noalloc]
  external signal'selectionChanged1 : unit -> ([> qTextEdit], unit) Qt.signal = "mlqt_signal_QTextEdit_selectionChanged1" [@@noalloc]
  external signal'textChanged1 : unit -> ([> qTextEdit], unit) Qt.signal = "mlqt_signal_QTextEdit_textChanged1" [@@noalloc]
  external signal'undoAvailable1 : unit -> ([> qTextEdit], bool) Qt.signal = "mlqt_signal_QTextEdit_undoAvailable1" [@@noalloc]
  external slot'append1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_append1" [@@noalloc]
  external slot'clear1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_clear1" [@@noalloc]
  external slot'copy1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_copy1" [@@noalloc]
  external slot'cut1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_cut1" [@@noalloc]
  external slot'insertHtml1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_insertHtml1" [@@noalloc]
  external slot'insertPlainText1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_insertPlainText1" [@@noalloc]
  external slot'paste1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_paste1" [@@noalloc]
  external slot'_q_adjustScrollbars : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit__q_adjustScrollbars" [@@noalloc]
  external slot'_q_cursorPositionChanged : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit__q_cursorPositionChanged" [@@noalloc]
  external slot'_q_ensureVisible : unit -> ([> qTextEdit], qRectF) Qt.slot = "mlqt_slot_QTextEdit__q_ensureVisible" [@@noalloc]
  external slot'_q_repaintContents : unit -> ([> qTextEdit], qRectF) Qt.slot = "mlqt_slot_QTextEdit__q_repaintContents" [@@noalloc]
  external slot'redo1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_redo1" [@@noalloc]
  external slot'scrollToAnchor1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_scrollToAnchor1" [@@noalloc]
  external slot'selectAll1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_selectAll1" [@@noalloc]
  external slot'setAlignment1 : unit -> ([> qTextEdit], qt'Alignment) Qt.slot = "mlqt_slot_QTextEdit_setAlignment1" [@@noalloc]
  external slot'setCurrentFont1 : unit -> ([> qTextEdit], [> qFont] Qt.t) Qt.slot = "mlqt_slot_QTextEdit_setCurrentFont1" [@@noalloc]
  external slot'setFontFamily1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_setFontFamily1" [@@noalloc]
  external slot'setFontItalic1 : unit -> ([> qTextEdit], bool) Qt.slot = "mlqt_slot_QTextEdit_setFontItalic1" [@@noalloc]
  external slot'setFontPointSize1 : unit -> ([> qTextEdit], float) Qt.slot = "mlqt_slot_QTextEdit_setFontPointSize1" [@@noalloc]
  external slot'setFontUnderline1 : unit -> ([> qTextEdit], bool) Qt.slot = "mlqt_slot_QTextEdit_setFontUnderline1" [@@noalloc]
  external slot'setFontWeight1 : unit -> ([> qTextEdit], int) Qt.slot = "mlqt_slot_QTextEdit_setFontWeight1" [@@noalloc]
  external slot'setHtml1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_setHtml1" [@@noalloc]
  external slot'setPlainText1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_setPlainText1" [@@noalloc]
  external slot'setTextBackgroundColor1 : unit -> ([> qTextEdit], [> qColor] Qt.t) Qt.slot = "mlqt_slot_QTextEdit_setTextBackgroundColor1" [@@noalloc]
  external slot'setTextColor1 : unit -> ([> qTextEdit], [> qColor] Qt.t) Qt.slot = "mlqt_slot_QTextEdit_setTextColor1" [@@noalloc]
  external slot'setText1 : unit -> ([> qTextEdit], string) Qt.slot = "mlqt_slot_QTextEdit_setText1" [@@noalloc]
  external slot'undo1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_undo1" [@@noalloc]
  external slot'zoomIn1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_zoomIn1" [@@noalloc]
  external slot'zoomIn2 : unit -> ([> qTextEdit], int) Qt.slot = "mlqt_slot_QTextEdit_zoomIn2" [@@noalloc]
  external slot'zoomOut1 : unit -> ([> qTextEdit], unit) Qt.slot = "mlqt_slot_QTextEdit_zoomOut1" [@@noalloc]
  external slot'zoomOut2 : unit -> ([> qTextEdit], int) Qt.slot = "mlqt_slot_QTextEdit_zoomOut2" [@@noalloc]
end
external new'QTextBrowser : [> qWidget] Qt.t option -> qTextBrowser Qt.t = "mlqt_QTextBrowser_new_"
module QTextBrowser = struct
  include QTextEdit
  external class' : unit -> qTextBrowser Qt.qt_class = "mlqt_class_QTextBrowser" [@@noalloc]
  external source : [> qTextBrowser] Qt.t -> qUrl Qt.t = "mlqt_QTextBrowser_source"
  external searchPaths : [> qTextBrowser] Qt.t -> qStringList Qt.t = "mlqt_QTextBrowser_searchPaths"
  external setSearchPaths : [> qTextBrowser] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QTextBrowser_setSearchPaths"
  external loadResource : [> qTextBrowser] Qt.t -> int -> [> qUrl] Qt.t -> QVariant.t = "mlqt_QTextBrowser_loadResource"
  external isBackwardAvailable : [> qTextBrowser] Qt.t -> bool = "mlqt_QTextBrowser_isBackwardAvailable"
  external isForwardAvailable : [> qTextBrowser] Qt.t -> bool = "mlqt_QTextBrowser_isForwardAvailable"
  external clearHistory : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_clearHistory"
  external historyTitle : [> qTextBrowser] Qt.t -> int -> string = "mlqt_QTextBrowser_historyTitle"
  external historyUrl : [> qTextBrowser] Qt.t -> int -> qUrl Qt.t = "mlqt_QTextBrowser_historyUrl"
  external backwardHistoryCount : [> qTextBrowser] Qt.t -> int = "mlqt_QTextBrowser_backwardHistoryCount"
  external forwardHistoryCount : [> qTextBrowser] Qt.t -> int = "mlqt_QTextBrowser_forwardHistoryCount"
  external openExternalLinks : [> qTextBrowser] Qt.t -> bool = "mlqt_QTextBrowser_openExternalLinks"
  external setOpenExternalLinks : [> qTextBrowser] Qt.t -> bool -> unit = "mlqt_QTextBrowser_setOpenExternalLinks"
  external openLinks : [> qTextBrowser] Qt.t -> bool = "mlqt_QTextBrowser_openLinks"
  external setOpenLinks : [> qTextBrowser] Qt.t -> bool -> unit = "mlqt_QTextBrowser_setOpenLinks"
  external setSource : [> qTextBrowser] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QTextBrowser_setSource"
  external backward : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_backward"
  external forward : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_forward"
  external home : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_home"
  external reload : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_reload"
  external backwardAvailable : [> qTextBrowser] Qt.t -> bool -> unit = "mlqt_QTextBrowser_backwardAvailable"
  external forwardAvailable : [> qTextBrowser] Qt.t -> bool -> unit = "mlqt_QTextBrowser_forwardAvailable"
  external historyChanged : [> qTextBrowser] Qt.t -> unit = "mlqt_QTextBrowser_historyChanged"
  external sourceChanged : [> qTextBrowser] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QTextBrowser_sourceChanged"
  external highlighted : [> qTextBrowser] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QTextBrowser_highlighted"
  external highlighted1 : [> qTextBrowser] Qt.t -> string -> unit = "mlqt_QTextBrowser_highlighted1"
  external anchorClicked : [> qTextBrowser] Qt.t -> [> qUrl] Qt.t -> unit = "mlqt_QTextBrowser_anchorClicked"
  external signal'anchorClicked1 : unit -> ([> qTextBrowser], qUrl Qt.t) Qt.signal = "mlqt_signal_QTextBrowser_anchorClicked1" [@@noalloc]
  external signal'backwardAvailable1 : unit -> ([> qTextBrowser], bool) Qt.signal = "mlqt_signal_QTextBrowser_backwardAvailable1" [@@noalloc]
  external signal'forwardAvailable1 : unit -> ([> qTextBrowser], bool) Qt.signal = "mlqt_signal_QTextBrowser_forwardAvailable1" [@@noalloc]
  external signal'highlighted2 : unit -> ([> qTextBrowser], string) Qt.signal = "mlqt_signal_QTextBrowser_highlighted2" [@@noalloc]
  external signal'highlighted3 : unit -> ([> qTextBrowser], qUrl Qt.t) Qt.signal = "mlqt_signal_QTextBrowser_highlighted3" [@@noalloc]
  external signal'historyChanged1 : unit -> ([> qTextBrowser], unit) Qt.signal = "mlqt_signal_QTextBrowser_historyChanged1" [@@noalloc]
  external signal'sourceChanged1 : unit -> ([> qTextBrowser], qUrl Qt.t) Qt.signal = "mlqt_signal_QTextBrowser_sourceChanged1" [@@noalloc]
  external slot'backward1 : unit -> ([> qTextBrowser], unit) Qt.slot = "mlqt_slot_QTextBrowser_backward1" [@@noalloc]
  external slot'forward1 : unit -> ([> qTextBrowser], unit) Qt.slot = "mlqt_slot_QTextBrowser_forward1" [@@noalloc]
  external slot'home1 : unit -> ([> qTextBrowser], unit) Qt.slot = "mlqt_slot_QTextBrowser_home1" [@@noalloc]
  external slot'_q_activateAnchor : unit -> ([> qTextBrowser], string) Qt.slot = "mlqt_slot_QTextBrowser__q_activateAnchor" [@@noalloc]
  external slot'_q_documentModified : unit -> ([> qTextBrowser], unit) Qt.slot = "mlqt_slot_QTextBrowser__q_documentModified" [@@noalloc]
  external slot'_q_highlightLink : unit -> ([> qTextBrowser], string) Qt.slot = "mlqt_slot_QTextBrowser__q_highlightLink" [@@noalloc]
  external slot'reload1 : unit -> ([> qTextBrowser], unit) Qt.slot = "mlqt_slot_QTextBrowser_reload1" [@@noalloc]
  external slot'setSource1 : unit -> ([> qTextBrowser], [> qUrl] Qt.t) Qt.slot = "mlqt_slot_QTextBrowser_setSource1" [@@noalloc]
end
external new'QColumnView : [> qWidget] Qt.t option -> qColumnView Qt.t = "mlqt_QColumnView_new_"
module QColumnView = struct
  include QAbstractItemView
  external class' : unit -> qColumnView Qt.qt_class = "mlqt_class_QColumnView" [@@noalloc]
  external updatePreviewWidget : [> qColumnView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QColumnView_updatePreviewWidget"
  external indexAt : [> qColumnView] Qt.t -> qPoint -> qModelIndex Qt.t = "mlqt_QColumnView_indexAt"
  external scrollTo : [> qColumnView] Qt.t -> [> qModelIndex] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QColumnView_scrollTo"
  external sizeHint : [> qColumnView] Qt.t -> qSize = "mlqt_QColumnView_sizeHint"
  external visualRect : [> qColumnView] Qt.t -> [> qModelIndex] Qt.t -> qRect = "mlqt_QColumnView_visualRect"
  external setModel : [> qColumnView] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QColumnView_setModel"
  external setSelectionModel : [> qColumnView] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QColumnView_setSelectionModel"
  external setRootIndex : [> qColumnView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QColumnView_setRootIndex"
  external selectAll : [> qColumnView] Qt.t -> unit = "mlqt_QColumnView_selectAll"
  external setResizeGripsVisible : [> qColumnView] Qt.t -> bool -> unit = "mlqt_QColumnView_setResizeGripsVisible"
  external resizeGripsVisible : [> qColumnView] Qt.t -> bool = "mlqt_QColumnView_resizeGripsVisible"
  external previewWidget : [> qColumnView] Qt.t -> qWidget Qt.t = "mlqt_QColumnView_previewWidget"
  external setPreviewWidget : [> qColumnView] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QColumnView_setPreviewWidget"
end
external new'QHeaderView : qt'Orientation -> [> qWidget] Qt.t option -> qHeaderView Qt.t = "mlqt_QHeaderView_new_"
module QHeaderView = struct
  include QAbstractItemView
  external class' : unit -> qHeaderView Qt.qt_class = "mlqt_class_QHeaderView" [@@noalloc]
  external setModel : [> qHeaderView] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QHeaderView_setModel"
  external orientation : [> qHeaderView] Qt.t -> qt'Orientation = "mlqt_QHeaderView_orientation"
  external offset : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_offset"
  external length : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_length"
  external sizeHint : [> qHeaderView] Qt.t -> qSize = "mlqt_QHeaderView_sizeHint"
  external setVisible : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setVisible"
  external sectionSizeHint : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_sectionSizeHint"
  external visualIndexAt : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_visualIndexAt"
  external logicalIndexAt : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_logicalIndexAt"
  external logicalIndexAt1 : [> qHeaderView] Qt.t -> int -> int -> int = "mlqt_QHeaderView_logicalIndexAt1"
  external logicalIndexAt2 : [> qHeaderView] Qt.t -> qPoint -> int = "mlqt_QHeaderView_logicalIndexAt2"
  external sectionSize : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_sectionSize"
  external sectionPosition : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_sectionPosition"
  external sectionViewportPosition : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_sectionViewportPosition"
  external moveSection : [> qHeaderView] Qt.t -> int -> int -> unit = "mlqt_QHeaderView_moveSection"
  external swapSections : [> qHeaderView] Qt.t -> int -> int -> unit = "mlqt_QHeaderView_swapSections"
  external resizeSection : [> qHeaderView] Qt.t -> int -> int -> unit = "mlqt_QHeaderView_resizeSection"
  external resizeSections : [> qHeaderView] Qt.t -> qHeaderView'ResizeMode -> unit = "mlqt_QHeaderView_resizeSections"
  external isSectionHidden : [> qHeaderView] Qt.t -> int -> bool = "mlqt_QHeaderView_isSectionHidden"
  external setSectionHidden : [> qHeaderView] Qt.t -> int -> bool -> unit = "mlqt_QHeaderView_setSectionHidden"
  external hiddenSectionCount : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_hiddenSectionCount"
  external hideSection : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_hideSection"
  external showSection : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_showSection"
  external count : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_count"
  external visualIndex : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_visualIndex"
  external logicalIndex : [> qHeaderView] Qt.t -> int -> int = "mlqt_QHeaderView_logicalIndex"
  external setSectionsMovable : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setSectionsMovable"
  external sectionsMovable : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_sectionsMovable"
  external setSectionsClickable : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setSectionsClickable"
  external sectionsClickable : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_sectionsClickable"
  external setHighlightSections : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setHighlightSections"
  external highlightSections : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_highlightSections"
  external sectionResizeMode : [> qHeaderView] Qt.t -> int -> qHeaderView'ResizeMode = "mlqt_QHeaderView_sectionResizeMode"
  external setSectionResizeMode : [> qHeaderView] Qt.t -> qHeaderView'ResizeMode -> unit = "mlqt_QHeaderView_setSectionResizeMode"
  external setSectionResizeMode1 : [> qHeaderView] Qt.t -> int -> qHeaderView'ResizeMode -> unit = "mlqt_QHeaderView_setSectionResizeMode1"
  external setResizeContentsPrecision : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setResizeContentsPrecision"
  external resizeContentsPrecision : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_resizeContentsPrecision"
  external stretchSectionCount : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_stretchSectionCount"
  external setSortIndicatorShown : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setSortIndicatorShown"
  external isSortIndicatorShown : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_isSortIndicatorShown"
  external setSortIndicator : [> qHeaderView] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QHeaderView_setSortIndicator"
  external sortIndicatorSection : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_sortIndicatorSection"
  external sortIndicatorOrder : [> qHeaderView] Qt.t -> qt'SortOrder = "mlqt_QHeaderView_sortIndicatorOrder"
  external stretchLastSection : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_stretchLastSection"
  external setStretchLastSection : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setStretchLastSection"
  external cascadingSectionResizes : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_cascadingSectionResizes"
  external setCascadingSectionResizes : [> qHeaderView] Qt.t -> bool -> unit = "mlqt_QHeaderView_setCascadingSectionResizes"
  external defaultSectionSize : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_defaultSectionSize"
  external setDefaultSectionSize : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setDefaultSectionSize"
  external resetDefaultSectionSize : [> qHeaderView] Qt.t -> unit = "mlqt_QHeaderView_resetDefaultSectionSize"
  external minimumSectionSize : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_minimumSectionSize"
  external setMinimumSectionSize : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setMinimumSectionSize"
  external maximumSectionSize : [> qHeaderView] Qt.t -> int = "mlqt_QHeaderView_maximumSectionSize"
  external setMaximumSectionSize : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setMaximumSectionSize"
  external defaultAlignment : [> qHeaderView] Qt.t -> qt'Alignment = "mlqt_QHeaderView_defaultAlignment"
  external setDefaultAlignment : [> qHeaderView] Qt.t -> qt'Alignment -> unit = "mlqt_QHeaderView_setDefaultAlignment"
  external sectionsMoved : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_sectionsMoved"
  external sectionsHidden : [> qHeaderView] Qt.t -> bool = "mlqt_QHeaderView_sectionsHidden"
  external saveState : [> qHeaderView] Qt.t -> qByteArray Qt.t = "mlqt_QHeaderView_saveState"
  external restoreState : [> qHeaderView] Qt.t -> [> qByteArray] Qt.t -> bool = "mlqt_QHeaderView_restoreState"
  external reset : [> qHeaderView] Qt.t -> unit = "mlqt_QHeaderView_reset"
  external setOffset : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setOffset"
  external setOffsetToSectionPosition : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_setOffsetToSectionPosition"
  external setOffsetToLastSection : [> qHeaderView] Qt.t -> unit = "mlqt_QHeaderView_setOffsetToLastSection"
  external headerDataChanged : [> qHeaderView] Qt.t -> qt'Orientation -> int -> int -> unit = "mlqt_QHeaderView_headerDataChanged"
  external sectionMoved : [> qHeaderView] Qt.t -> int -> int -> int -> unit = "mlqt_QHeaderView_sectionMoved"
  external sectionResized : [> qHeaderView] Qt.t -> int -> int -> int -> unit = "mlqt_QHeaderView_sectionResized"
  external sectionPressed : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_sectionPressed"
  external sectionClicked : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_sectionClicked"
  external sectionEntered : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_sectionEntered"
  external sectionDoubleClicked : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_sectionDoubleClicked"
  external sectionCountChanged : [> qHeaderView] Qt.t -> int -> int -> unit = "mlqt_QHeaderView_sectionCountChanged"
  external sectionHandleDoubleClicked : [> qHeaderView] Qt.t -> int -> unit = "mlqt_QHeaderView_sectionHandleDoubleClicked"
  external geometriesChanged : [> qHeaderView] Qt.t -> unit = "mlqt_QHeaderView_geometriesChanged"
  external sortIndicatorChanged : [> qHeaderView] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QHeaderView_sortIndicatorChanged"
  external signal'geometriesChanged1 : unit -> ([> qHeaderView], unit) Qt.signal = "mlqt_signal_QHeaderView_geometriesChanged1" [@@noalloc]
  external signal'sectionClicked1 : unit -> ([> qHeaderView], int) Qt.signal = "mlqt_signal_QHeaderView_sectionClicked1" [@@noalloc]
  external signal'sectionCountChanged1 : unit -> ([> qHeaderView], int * int) Qt.signal = "mlqt_signal_QHeaderView_sectionCountChanged1" [@@noalloc]
  external signal'sectionDoubleClicked1 : unit -> ([> qHeaderView], int) Qt.signal = "mlqt_signal_QHeaderView_sectionDoubleClicked1" [@@noalloc]
  external signal'sectionEntered1 : unit -> ([> qHeaderView], int) Qt.signal = "mlqt_signal_QHeaderView_sectionEntered1" [@@noalloc]
  external signal'sectionHandleDoubleClicked1 : unit -> ([> qHeaderView], int) Qt.signal = "mlqt_signal_QHeaderView_sectionHandleDoubleClicked1" [@@noalloc]
  external signal'sectionMoved1 : unit -> ([> qHeaderView], int * int * int) Qt.signal = "mlqt_signal_QHeaderView_sectionMoved1" [@@noalloc]
  external signal'sectionPressed1 : unit -> ([> qHeaderView], int) Qt.signal = "mlqt_signal_QHeaderView_sectionPressed1" [@@noalloc]
  external signal'sectionResized1 : unit -> ([> qHeaderView], int * int * int) Qt.signal = "mlqt_signal_QHeaderView_sectionResized1" [@@noalloc]
  external signal'sortIndicatorChanged1 : unit -> ([> qHeaderView], int * qt'SortOrder) Qt.signal = "mlqt_signal_QHeaderView_sortIndicatorChanged1" [@@noalloc]
  external slot'headerDataChanged1 : unit -> ([> qHeaderView], qt'Orientation * int * int) Qt.slot = "mlqt_slot_QHeaderView_headerDataChanged1" [@@noalloc]
  external slot'_q_layoutAboutToBeChanged : unit -> ([> qHeaderView], unit) Qt.slot = "mlqt_slot_QHeaderView__q_layoutAboutToBeChanged" [@@noalloc]
  external slot'_q_sectionsRemoved : unit -> ([> qHeaderView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QHeaderView__q_sectionsRemoved" [@@noalloc]
  external slot'resizeSections1 : unit -> ([> qHeaderView], unit) Qt.slot = "mlqt_slot_QHeaderView_resizeSections1" [@@noalloc]
  external slot'sectionsAboutToBeRemoved : unit -> ([> qHeaderView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QHeaderView_sectionsAboutToBeRemoved" [@@noalloc]
  external slot'sectionsInserted : unit -> ([> qHeaderView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QHeaderView_sectionsInserted" [@@noalloc]
  external slot'setOffset1 : unit -> ([> qHeaderView], int) Qt.slot = "mlqt_slot_QHeaderView_setOffset1" [@@noalloc]
  external slot'setOffsetToLastSection1 : unit -> ([> qHeaderView], unit) Qt.slot = "mlqt_slot_QHeaderView_setOffsetToLastSection1" [@@noalloc]
  external slot'setOffsetToSectionPosition1 : unit -> ([> qHeaderView], int) Qt.slot = "mlqt_slot_QHeaderView_setOffsetToSectionPosition1" [@@noalloc]
  external slot'updateSection : unit -> ([> qHeaderView], int) Qt.slot = "mlqt_slot_QHeaderView_updateSection" [@@noalloc]
end
external new'QListView : [> qWidget] Qt.t option -> qListView Qt.t = "mlqt_QListView_new_"
module QListView = struct
  include QAbstractItemView
  external class' : unit -> qListView Qt.qt_class = "mlqt_class_QListView" [@@noalloc]
  external setMovement : [> qListView] Qt.t -> qListView'Movement -> unit = "mlqt_QListView_setMovement"
  external movement : [> qListView] Qt.t -> qListView'Movement = "mlqt_QListView_movement"
  external setFlow : [> qListView] Qt.t -> qListView'Flow -> unit = "mlqt_QListView_setFlow"
  external flow : [> qListView] Qt.t -> qListView'Flow = "mlqt_QListView_flow"
  external setWrapping : [> qListView] Qt.t -> bool -> unit = "mlqt_QListView_setWrapping"
  external isWrapping : [> qListView] Qt.t -> bool = "mlqt_QListView_isWrapping"
  external setResizeMode : [> qListView] Qt.t -> qListView'ResizeMode -> unit = "mlqt_QListView_setResizeMode"
  external resizeMode : [> qListView] Qt.t -> qListView'ResizeMode = "mlqt_QListView_resizeMode"
  external setLayoutMode : [> qListView] Qt.t -> qListView'LayoutMode -> unit = "mlqt_QListView_setLayoutMode"
  external layoutMode : [> qListView] Qt.t -> qListView'LayoutMode = "mlqt_QListView_layoutMode"
  external setSpacing : [> qListView] Qt.t -> int -> unit = "mlqt_QListView_setSpacing"
  external spacing : [> qListView] Qt.t -> int = "mlqt_QListView_spacing"
  external setBatchSize : [> qListView] Qt.t -> int -> unit = "mlqt_QListView_setBatchSize"
  external batchSize : [> qListView] Qt.t -> int = "mlqt_QListView_batchSize"
  external setGridSize : [> qListView] Qt.t -> qSize -> unit = "mlqt_QListView_setGridSize"
  external gridSize : [> qListView] Qt.t -> qSize = "mlqt_QListView_gridSize"
  external setViewMode : [> qListView] Qt.t -> qListView'ViewMode -> unit = "mlqt_QListView_setViewMode"
  external viewMode : [> qListView] Qt.t -> qListView'ViewMode = "mlqt_QListView_viewMode"
  external clearPropertyFlags : [> qListView] Qt.t -> unit = "mlqt_QListView_clearPropertyFlags"
  external isRowHidden : [> qListView] Qt.t -> int -> bool = "mlqt_QListView_isRowHidden"
  external setRowHidden : [> qListView] Qt.t -> int -> bool -> unit = "mlqt_QListView_setRowHidden"
  external setModelColumn : [> qListView] Qt.t -> int -> unit = "mlqt_QListView_setModelColumn"
  external modelColumn : [> qListView] Qt.t -> int = "mlqt_QListView_modelColumn"
  external setUniformItemSizes : [> qListView] Qt.t -> bool -> unit = "mlqt_QListView_setUniformItemSizes"
  external uniformItemSizes : [> qListView] Qt.t -> bool = "mlqt_QListView_uniformItemSizes"
  external setWordWrap : [> qListView] Qt.t -> bool -> unit = "mlqt_QListView_setWordWrap"
  external wordWrap : [> qListView] Qt.t -> bool = "mlqt_QListView_wordWrap"
  external setSelectionRectVisible : [> qListView] Qt.t -> bool -> unit = "mlqt_QListView_setSelectionRectVisible"
  external isSelectionRectVisible : [> qListView] Qt.t -> bool = "mlqt_QListView_isSelectionRectVisible"
  external visualRect : [> qListView] Qt.t -> [> qModelIndex] Qt.t -> qRect = "mlqt_QListView_visualRect"
  external scrollTo : [> qListView] Qt.t -> [> qModelIndex] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QListView_scrollTo"
  external indexAt : [> qListView] Qt.t -> qPoint -> qModelIndex Qt.t = "mlqt_QListView_indexAt"
  external indexesMoved : [> qListView] Qt.t -> [> qModelIndexList] Qt.t -> unit = "mlqt_QListView_indexesMoved"
end
external new'QTableView : [> qWidget] Qt.t option -> qTableView Qt.t = "mlqt_QTableView_new_"
module QTableView = struct
  include QAbstractItemView
  external class' : unit -> qTableView Qt.qt_class = "mlqt_class_QTableView" [@@noalloc]
  external setModel : [> qTableView] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QTableView_setModel"
  external setRootIndex : [> qTableView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTableView_setRootIndex"
  external setSelectionModel : [> qTableView] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QTableView_setSelectionModel"
  external horizontalHeader : [> qTableView] Qt.t -> qHeaderView Qt.t = "mlqt_QTableView_horizontalHeader"
  external verticalHeader : [> qTableView] Qt.t -> qHeaderView Qt.t = "mlqt_QTableView_verticalHeader"
  external setHorizontalHeader : [> qTableView] Qt.t -> [> qHeaderView] Qt.t -> unit = "mlqt_QTableView_setHorizontalHeader"
  external setVerticalHeader : [> qTableView] Qt.t -> [> qHeaderView] Qt.t -> unit = "mlqt_QTableView_setVerticalHeader"
  external rowViewportPosition : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_rowViewportPosition"
  external rowAt : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_rowAt"
  external setRowHeight : [> qTableView] Qt.t -> int -> int -> unit = "mlqt_QTableView_setRowHeight"
  external rowHeight : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_rowHeight"
  external columnViewportPosition : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_columnViewportPosition"
  external columnAt : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_columnAt"
  external setColumnWidth : [> qTableView] Qt.t -> int -> int -> unit = "mlqt_QTableView_setColumnWidth"
  external columnWidth : [> qTableView] Qt.t -> int -> int = "mlqt_QTableView_columnWidth"
  external isRowHidden : [> qTableView] Qt.t -> int -> bool = "mlqt_QTableView_isRowHidden"
  external setRowHidden : [> qTableView] Qt.t -> int -> bool -> unit = "mlqt_QTableView_setRowHidden"
  external isColumnHidden : [> qTableView] Qt.t -> int -> bool = "mlqt_QTableView_isColumnHidden"
  external setColumnHidden : [> qTableView] Qt.t -> int -> bool -> unit = "mlqt_QTableView_setColumnHidden"
  external setSortingEnabled : [> qTableView] Qt.t -> bool -> unit = "mlqt_QTableView_setSortingEnabled"
  external isSortingEnabled : [> qTableView] Qt.t -> bool = "mlqt_QTableView_isSortingEnabled"
  external showGrid : [> qTableView] Qt.t -> bool = "mlqt_QTableView_showGrid"
  external gridStyle : [> qTableView] Qt.t -> qt'PenStyle = "mlqt_QTableView_gridStyle"
  external setGridStyle : [> qTableView] Qt.t -> qt'PenStyle -> unit = "mlqt_QTableView_setGridStyle"
  external setWordWrap : [> qTableView] Qt.t -> bool -> unit = "mlqt_QTableView_setWordWrap"
  external wordWrap : [> qTableView] Qt.t -> bool = "mlqt_QTableView_wordWrap"
  external setCornerButtonEnabled : [> qTableView] Qt.t -> bool -> unit = "mlqt_QTableView_setCornerButtonEnabled"
  external isCornerButtonEnabled : [> qTableView] Qt.t -> bool = "mlqt_QTableView_isCornerButtonEnabled"
  external indexAt : [> qTableView] Qt.t -> qPoint -> qModelIndex Qt.t = "mlqt_QTableView_indexAt"
  external setSpan : [> qTableView] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QTableView_setSpan"
  external rowSpan : [> qTableView] Qt.t -> int -> int -> int = "mlqt_QTableView_rowSpan"
  external columnSpan : [> qTableView] Qt.t -> int -> int -> int = "mlqt_QTableView_columnSpan"
  external clearSpans : [> qTableView] Qt.t -> unit = "mlqt_QTableView_clearSpans"
  external sortByColumn : [> qTableView] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QTableView_sortByColumn"
  external selectRow : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_selectRow"
  external selectColumn : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_selectColumn"
  external hideRow : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_hideRow"
  external hideColumn : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_hideColumn"
  external showRow : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_showRow"
  external showColumn : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_showColumn"
  external resizeRowToContents : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_resizeRowToContents"
  external resizeRowsToContents : [> qTableView] Qt.t -> unit = "mlqt_QTableView_resizeRowsToContents"
  external resizeColumnToContents : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_resizeColumnToContents"
  external resizeColumnsToContents : [> qTableView] Qt.t -> unit = "mlqt_QTableView_resizeColumnsToContents"
  external sortByColumn1 : [> qTableView] Qt.t -> int -> unit = "mlqt_QTableView_sortByColumn1"
  external setShowGrid : [> qTableView] Qt.t -> bool -> unit = "mlqt_QTableView_setShowGrid"
  external slot'columnCountChanged : unit -> ([> qTableView], int * int) Qt.slot = "mlqt_slot_QTableView_columnCountChanged" [@@noalloc]
  external slot'columnMoved : unit -> ([> qTableView], int * int * int) Qt.slot = "mlqt_slot_QTableView_columnMoved" [@@noalloc]
  external slot'columnResized : unit -> ([> qTableView], int * int * int) Qt.slot = "mlqt_slot_QTableView_columnResized" [@@noalloc]
  external slot'hideColumn1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_hideColumn1" [@@noalloc]
  external slot'hideRow1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_hideRow1" [@@noalloc]
  external slot'_q_selectColumn : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView__q_selectColumn" [@@noalloc]
  external slot'_q_selectRow : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView__q_selectRow" [@@noalloc]
  external slot'_q_updateSpanInsertedColumns : unit -> ([> qTableView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QTableView__q_updateSpanInsertedColumns" [@@noalloc]
  external slot'_q_updateSpanInsertedRows : unit -> ([> qTableView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QTableView__q_updateSpanInsertedRows" [@@noalloc]
  external slot'_q_updateSpanRemovedColumns : unit -> ([> qTableView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QTableView__q_updateSpanRemovedColumns" [@@noalloc]
  external slot'_q_updateSpanRemovedRows : unit -> ([> qTableView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QTableView__q_updateSpanRemovedRows" [@@noalloc]
  external slot'resizeColumnsToContents1 : unit -> ([> qTableView], unit) Qt.slot = "mlqt_slot_QTableView_resizeColumnsToContents1" [@@noalloc]
  external slot'resizeColumnToContents1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_resizeColumnToContents1" [@@noalloc]
  external slot'resizeRowsToContents1 : unit -> ([> qTableView], unit) Qt.slot = "mlqt_slot_QTableView_resizeRowsToContents1" [@@noalloc]
  external slot'resizeRowToContents1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_resizeRowToContents1" [@@noalloc]
  external slot'rowCountChanged : unit -> ([> qTableView], int * int) Qt.slot = "mlqt_slot_QTableView_rowCountChanged" [@@noalloc]
  external slot'rowMoved : unit -> ([> qTableView], int * int * int) Qt.slot = "mlqt_slot_QTableView_rowMoved" [@@noalloc]
  external slot'rowResized : unit -> ([> qTableView], int * int * int) Qt.slot = "mlqt_slot_QTableView_rowResized" [@@noalloc]
  external slot'selectColumn1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_selectColumn1" [@@noalloc]
  external slot'selectRow1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_selectRow1" [@@noalloc]
  external slot'setShowGrid1 : unit -> ([> qTableView], bool) Qt.slot = "mlqt_slot_QTableView_setShowGrid1" [@@noalloc]
  external slot'showColumn1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_showColumn1" [@@noalloc]
  external slot'showRow1 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_showRow1" [@@noalloc]
  external slot'sortByColumn2 : unit -> ([> qTableView], int) Qt.slot = "mlqt_slot_QTableView_sortByColumn2" [@@noalloc]
end
external new'QTreeView : [> qWidget] Qt.t option -> qTreeView Qt.t = "mlqt_QTreeView_new_"
module QTreeView = struct
  include QAbstractItemView
  external class' : unit -> qTreeView Qt.qt_class = "mlqt_class_QTreeView" [@@noalloc]
  external setModel : [> qTreeView] Qt.t -> [> qAbstractItemModel] Qt.t -> unit = "mlqt_QTreeView_setModel"
  external setRootIndex : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTreeView_setRootIndex"
  external setSelectionModel : [> qTreeView] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QTreeView_setSelectionModel"
  external header : [> qTreeView] Qt.t -> qHeaderView Qt.t = "mlqt_QTreeView_header"
  external setHeader : [> qTreeView] Qt.t -> [> qHeaderView] Qt.t -> unit = "mlqt_QTreeView_setHeader"
  external autoExpandDelay : [> qTreeView] Qt.t -> int = "mlqt_QTreeView_autoExpandDelay"
  external setAutoExpandDelay : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_setAutoExpandDelay"
  external indentation : [> qTreeView] Qt.t -> int = "mlqt_QTreeView_indentation"
  external setIndentation : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_setIndentation"
  external resetIndentation : [> qTreeView] Qt.t -> unit = "mlqt_QTreeView_resetIndentation"
  external rootIsDecorated : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_rootIsDecorated"
  external setRootIsDecorated : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setRootIsDecorated"
  external uniformRowHeights : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_uniformRowHeights"
  external setUniformRowHeights : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setUniformRowHeights"
  external itemsExpandable : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_itemsExpandable"
  external setItemsExpandable : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setItemsExpandable"
  external expandsOnDoubleClick : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_expandsOnDoubleClick"
  external setExpandsOnDoubleClick : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setExpandsOnDoubleClick"
  external columnViewportPosition : [> qTreeView] Qt.t -> int -> int = "mlqt_QTreeView_columnViewportPosition"
  external columnWidth : [> qTreeView] Qt.t -> int -> int = "mlqt_QTreeView_columnWidth"
  external setColumnWidth : [> qTreeView] Qt.t -> int -> int -> unit = "mlqt_QTreeView_setColumnWidth"
  external columnAt : [> qTreeView] Qt.t -> int -> int = "mlqt_QTreeView_columnAt"
  external isColumnHidden : [> qTreeView] Qt.t -> int -> bool = "mlqt_QTreeView_isColumnHidden"
  external setColumnHidden : [> qTreeView] Qt.t -> int -> bool -> unit = "mlqt_QTreeView_setColumnHidden"
  external isHeaderHidden : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_isHeaderHidden"
  external setHeaderHidden : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setHeaderHidden"
  external isRowHidden : [> qTreeView] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QTreeView_isRowHidden"
  external setRowHidden : [> qTreeView] Qt.t -> int -> [> qModelIndex] Qt.t -> bool -> unit = "mlqt_QTreeView_setRowHidden"
  external isFirstColumnSpanned : [> qTreeView] Qt.t -> int -> [> qModelIndex] Qt.t -> bool = "mlqt_QTreeView_isFirstColumnSpanned"
  external setFirstColumnSpanned : [> qTreeView] Qt.t -> int -> [> qModelIndex] Qt.t -> bool -> unit = "mlqt_QTreeView_setFirstColumnSpanned"
  external isExpanded : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> bool = "mlqt_QTreeView_isExpanded"
  external setExpanded : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> bool -> unit = "mlqt_QTreeView_setExpanded"
  external setSortingEnabled : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setSortingEnabled"
  external isSortingEnabled : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_isSortingEnabled"
  external setAnimated : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setAnimated"
  external isAnimated : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_isAnimated"
  external setAllColumnsShowFocus : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setAllColumnsShowFocus"
  external allColumnsShowFocus : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_allColumnsShowFocus"
  external setWordWrap : [> qTreeView] Qt.t -> bool -> unit = "mlqt_QTreeView_setWordWrap"
  external wordWrap : [> qTreeView] Qt.t -> bool = "mlqt_QTreeView_wordWrap"
  external setTreePosition : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_setTreePosition"
  external treePosition : [> qTreeView] Qt.t -> int = "mlqt_QTreeView_treePosition"
  external keyboardSearch : [> qTreeView] Qt.t -> string -> unit = "mlqt_QTreeView_keyboardSearch"
  external visualRect : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> qRect = "mlqt_QTreeView_visualRect"
  external scrollTo : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QTreeView_scrollTo"
  external indexAt : [> qTreeView] Qt.t -> qPoint -> qModelIndex Qt.t = "mlqt_QTreeView_indexAt"
  external indexAbove : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QTreeView_indexAbove"
  external indexBelow : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> qModelIndex Qt.t = "mlqt_QTreeView_indexBelow"
  external reset : [> qTreeView] Qt.t -> unit = "mlqt_QTreeView_reset"
  external sortByColumn : [> qTreeView] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QTreeView_sortByColumn"
  external selectAll : [> qTreeView] Qt.t -> unit = "mlqt_QTreeView_selectAll"
  external expanded : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTreeView_expanded"
  external collapsed : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTreeView_collapsed"
  external hideColumn : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_hideColumn"
  external showColumn : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_showColumn"
  external expand : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTreeView_expand"
  external collapse : [> qTreeView] Qt.t -> [> qModelIndex] Qt.t -> unit = "mlqt_QTreeView_collapse"
  external resizeColumnToContents : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_resizeColumnToContents"
  external sortByColumn1 : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_sortByColumn1"
  external expandAll : [> qTreeView] Qt.t -> unit = "mlqt_QTreeView_expandAll"
  external collapseAll : [> qTreeView] Qt.t -> unit = "mlqt_QTreeView_collapseAll"
  external expandToDepth : [> qTreeView] Qt.t -> int -> unit = "mlqt_QTreeView_expandToDepth"
  external signal'collapsed1 : unit -> ([> qTreeView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QTreeView_collapsed1" [@@noalloc]
  external signal'expanded1 : unit -> ([> qTreeView], qModelIndex Qt.t) Qt.signal = "mlqt_signal_QTreeView_expanded1" [@@noalloc]
  external slot'collapseAll1 : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView_collapseAll1" [@@noalloc]
  external slot'collapse1 : unit -> ([> qTreeView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeView_collapse1" [@@noalloc]
  external slot'columnCountChanged : unit -> ([> qTreeView], int * int) Qt.slot = "mlqt_slot_QTreeView_columnCountChanged" [@@noalloc]
  external slot'columnMoved : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView_columnMoved" [@@noalloc]
  external slot'columnResized : unit -> ([> qTreeView], int * int * int) Qt.slot = "mlqt_slot_QTreeView_columnResized" [@@noalloc]
  external slot'expandAll1 : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView_expandAll1" [@@noalloc]
  external slot'expand1 : unit -> ([> qTreeView], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeView_expand1" [@@noalloc]
  external slot'expandToDepth1 : unit -> ([> qTreeView], int) Qt.slot = "mlqt_slot_QTreeView_expandToDepth1" [@@noalloc]
  external slot'hideColumn1 : unit -> ([> qTreeView], int) Qt.slot = "mlqt_slot_QTreeView_hideColumn1" [@@noalloc]
  external slot'_q_endAnimatedOperation : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView__q_endAnimatedOperation" [@@noalloc]
  external slot'_q_modelAboutToBeReset : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView__q_modelAboutToBeReset" [@@noalloc]
  external slot'_q_sortIndicatorChanged : unit -> ([> qTreeView], int * qt'SortOrder) Qt.slot = "mlqt_slot_QTreeView__q_sortIndicatorChanged" [@@noalloc]
  external slot'reexpand : unit -> ([> qTreeView], unit) Qt.slot = "mlqt_slot_QTreeView_reexpand" [@@noalloc]
  external slot'resizeColumnToContents1 : unit -> ([> qTreeView], int) Qt.slot = "mlqt_slot_QTreeView_resizeColumnToContents1" [@@noalloc]
  external slot'rowsRemoved : unit -> ([> qTreeView], [> qModelIndex] Qt.t * int * int) Qt.slot = "mlqt_slot_QTreeView_rowsRemoved" [@@noalloc]
  external slot'showColumn1 : unit -> ([> qTreeView], int) Qt.slot = "mlqt_slot_QTreeView_showColumn1" [@@noalloc]
  external slot'sortByColumn2 : unit -> ([> qTreeView], int) Qt.slot = "mlqt_slot_QTreeView_sortByColumn2" [@@noalloc]
end
external new'QTreeWidget : [> qWidget] Qt.t option -> qTreeWidget Qt.t = "mlqt_QTreeWidget_new_"
module QTreeWidget = struct
  include QTreeView
  external class' : unit -> qTreeWidget Qt.qt_class = "mlqt_class_QTreeWidget" [@@noalloc]
  external columnCount : [> qTreeWidget] Qt.t -> int = "mlqt_QTreeWidget_columnCount"
  external setColumnCount : [> qTreeWidget] Qt.t -> int -> unit = "mlqt_QTreeWidget_setColumnCount"
  external invisibleRootItem : [> qTreeWidget] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_invisibleRootItem"
  external topLevelItem : [> qTreeWidget] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_topLevelItem"
  external topLevelItemCount : [> qTreeWidget] Qt.t -> int = "mlqt_QTreeWidget_topLevelItemCount"
  external insertTopLevelItem : [> qTreeWidget] Qt.t -> int -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_insertTopLevelItem"
  external addTopLevelItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_addTopLevelItem"
  external takeTopLevelItem : [> qTreeWidget] Qt.t -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_takeTopLevelItem"
  external indexOfTopLevelItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int = "mlqt_QTreeWidget_indexOfTopLevelItem"
  external headerItem : [> qTreeWidget] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_headerItem"
  external setHeaderItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_setHeaderItem"
  external setHeaderLabels : [> qTreeWidget] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QTreeWidget_setHeaderLabels"
  external setHeaderLabel : [> qTreeWidget] Qt.t -> string -> unit = "mlqt_QTreeWidget_setHeaderLabel"
  external currentItem : [> qTreeWidget] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_currentItem"
  external currentColumn : [> qTreeWidget] Qt.t -> int = "mlqt_QTreeWidget_currentColumn"
  external setCurrentItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_setCurrentItem"
  external setCurrentItem1 : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_setCurrentItem1"
  external setCurrentItem2 : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QTreeWidget_setCurrentItem2"
  external itemAt : [> qTreeWidget] Qt.t -> qPoint -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_itemAt"
  external itemAt1 : [> qTreeWidget] Qt.t -> int -> int -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_itemAt1"
  external visualItemRect : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> qRect = "mlqt_QTreeWidget_visualItemRect"
  external sortColumn : [> qTreeWidget] Qt.t -> int = "mlqt_QTreeWidget_sortColumn"
  external sortItems : [> qTreeWidget] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QTreeWidget_sortItems"
  external editItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_editItem"
  external openPersistentEditor : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_openPersistentEditor"
  external closePersistentEditor : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_closePersistentEditor"
  external itemWidget : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> qWidget Qt.t = "mlqt_QTreeWidget_itemWidget"
  external setItemWidget : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> [> qWidget] Qt.t -> unit = "mlqt_QTreeWidget_setItemWidget"
  external removeItemWidget : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_removeItemWidget"
  external isItemSelected : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidget_isItemSelected"
  external setItemSelected : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidget_setItemSelected"
  external isItemHidden : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidget_isItemHidden"
  external setItemHidden : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidget_setItemHidden"
  external isItemExpanded : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidget_isItemExpanded"
  external setItemExpanded : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidget_setItemExpanded"
  external isFirstItemColumnSpanned : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool = "mlqt_QTreeWidget_isFirstItemColumnSpanned"
  external setFirstItemColumnSpanned : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> bool -> unit = "mlqt_QTreeWidget_setFirstItemColumnSpanned"
  external itemAbove : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_itemAbove"
  external itemBelow : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> qTreeWidgetItem Qt.t = "mlqt_QTreeWidget_itemBelow"
  external setSelectionModel : [> qTreeWidget] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QTreeWidget_setSelectionModel"
  external scrollToItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QTreeWidget_scrollToItem"
  external expandItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_expandItem"
  external collapseItem : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_collapseItem"
  external clear : [> qTreeWidget] Qt.t -> unit = "mlqt_QTreeWidget_clear"
  external itemPressed : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemPressed"
  external itemClicked : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemClicked"
  external itemDoubleClicked : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemDoubleClicked"
  external itemActivated : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemActivated"
  external itemEntered : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemEntered"
  external itemChanged : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> int -> unit = "mlqt_QTreeWidget_itemChanged"
  external itemExpanded : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_itemExpanded"
  external itemCollapsed : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_itemCollapsed"
  external currentItemChanged : [> qTreeWidget] Qt.t -> [> qTreeWidgetItem] Qt.t -> [> qTreeWidgetItem] Qt.t -> unit = "mlqt_QTreeWidget_currentItemChanged"
  external itemSelectionChanged : [> qTreeWidget] Qt.t -> unit = "mlqt_QTreeWidget_itemSelectionChanged"
  external signal'itemSelectionChanged1 : unit -> ([> qTreeWidget], unit) Qt.signal = "mlqt_signal_QTreeWidget_itemSelectionChanged1" [@@noalloc]
  external slot'clear1 : unit -> ([> qTreeWidget], unit) Qt.slot = "mlqt_slot_QTreeWidget_clear1" [@@noalloc]
  external slot'_q_dataChanged : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_dataChanged" [@@noalloc]
  external slot'_q_emitCurrentItemChanged : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitCurrentItemChanged" [@@noalloc]
  external slot'_q_emitItemActivated : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemActivated" [@@noalloc]
  external slot'_q_emitItemChanged : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemChanged" [@@noalloc]
  external slot'_q_emitItemClicked : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemClicked" [@@noalloc]
  external slot'_q_emitItemCollapsed : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemCollapsed" [@@noalloc]
  external slot'_q_emitItemDoubleClicked : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemDoubleClicked" [@@noalloc]
  external slot'_q_emitItemEntered : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemEntered" [@@noalloc]
  external slot'_q_emitItemExpanded : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemExpanded" [@@noalloc]
  external slot'_q_emitItemPressed : unit -> ([> qTreeWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTreeWidget__q_emitItemPressed" [@@noalloc]
  external slot'_q_sort : unit -> ([> qTreeWidget], unit) Qt.slot = "mlqt_slot_QTreeWidget__q_sort" [@@noalloc]
end
external new'QTableWidget : [> qWidget] Qt.t option -> qTableWidget Qt.t = "mlqt_QTableWidget_new_"
external new'QTableWidget'1 : int -> int -> [> qWidget] Qt.t option -> qTableWidget Qt.t = "mlqt_QTableWidget_new_1"
module QTableWidget = struct
  include QTableView
  external class' : unit -> qTableWidget Qt.qt_class = "mlqt_class_QTableWidget" [@@noalloc]
  external setRowCount : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_setRowCount"
  external rowCount : [> qTableWidget] Qt.t -> int = "mlqt_QTableWidget_rowCount"
  external setColumnCount : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_setColumnCount"
  external columnCount : [> qTableWidget] Qt.t -> int = "mlqt_QTableWidget_columnCount"
  external row : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> int = "mlqt_QTableWidget_row"
  external column : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> int = "mlqt_QTableWidget_column"
  external item : [> qTableWidget] Qt.t -> int -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_item"
  external setItem : [> qTableWidget] Qt.t -> int -> int -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_setItem"
  external takeItem : [> qTableWidget] Qt.t -> int -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_takeItem"
  external verticalHeaderItem : [> qTableWidget] Qt.t -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_verticalHeaderItem"
  external setVerticalHeaderItem : [> qTableWidget] Qt.t -> int -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_setVerticalHeaderItem"
  external takeVerticalHeaderItem : [> qTableWidget] Qt.t -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_takeVerticalHeaderItem"
  external horizontalHeaderItem : [> qTableWidget] Qt.t -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_horizontalHeaderItem"
  external setHorizontalHeaderItem : [> qTableWidget] Qt.t -> int -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_setHorizontalHeaderItem"
  external takeHorizontalHeaderItem : [> qTableWidget] Qt.t -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_takeHorizontalHeaderItem"
  external setVerticalHeaderLabels : [> qTableWidget] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QTableWidget_setVerticalHeaderLabels"
  external setHorizontalHeaderLabels : [> qTableWidget] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QTableWidget_setHorizontalHeaderLabels"
  external currentRow : [> qTableWidget] Qt.t -> int = "mlqt_QTableWidget_currentRow"
  external currentColumn : [> qTableWidget] Qt.t -> int = "mlqt_QTableWidget_currentColumn"
  external currentItem : [> qTableWidget] Qt.t -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_currentItem"
  external setCurrentItem : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_setCurrentItem"
  external setCurrentItem1 : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QTableWidget_setCurrentItem1"
  external setCurrentCell : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_setCurrentCell"
  external setCurrentCell1 : [> qTableWidget] Qt.t -> int -> int -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QTableWidget_setCurrentCell1"
  external sortItems : [> qTableWidget] Qt.t -> int -> qt'SortOrder -> unit = "mlqt_QTableWidget_sortItems"
  external editItem : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_editItem"
  external openPersistentEditor : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_openPersistentEditor"
  external closePersistentEditor : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_closePersistentEditor"
  external cellWidget : [> qTableWidget] Qt.t -> int -> int -> qWidget Qt.t = "mlqt_QTableWidget_cellWidget"
  external setCellWidget : [> qTableWidget] Qt.t -> int -> int -> [> qWidget] Qt.t -> unit = "mlqt_QTableWidget_setCellWidget"
  external removeCellWidget : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_removeCellWidget"
  external isItemSelected : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> bool = "mlqt_QTableWidget_isItemSelected"
  external setItemSelected : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> bool -> unit = "mlqt_QTableWidget_setItemSelected"
  external setRangeSelected : [> qTableWidget] Qt.t -> [> qTableWidgetSelectionRange] Qt.t -> bool -> unit = "mlqt_QTableWidget_setRangeSelected"
  external visualRow : [> qTableWidget] Qt.t -> int -> int = "mlqt_QTableWidget_visualRow"
  external visualColumn : [> qTableWidget] Qt.t -> int -> int = "mlqt_QTableWidget_visualColumn"
  external itemAt : [> qTableWidget] Qt.t -> qPoint -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_itemAt"
  external itemAt1 : [> qTableWidget] Qt.t -> int -> int -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_itemAt1"
  external visualItemRect : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> qRect = "mlqt_QTableWidget_visualItemRect"
  external itemPrototype : [> qTableWidget] Qt.t -> qTableWidgetItem Qt.t = "mlqt_QTableWidget_itemPrototype"
  external setItemPrototype : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_setItemPrototype"
  external scrollToItem : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QTableWidget_scrollToItem"
  external insertRow : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_insertRow"
  external insertColumn : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_insertColumn"
  external removeRow : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_removeRow"
  external removeColumn : [> qTableWidget] Qt.t -> int -> unit = "mlqt_QTableWidget_removeColumn"
  external clear : [> qTableWidget] Qt.t -> unit = "mlqt_QTableWidget_clear"
  external clearContents : [> qTableWidget] Qt.t -> unit = "mlqt_QTableWidget_clearContents"
  external itemPressed : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemPressed"
  external itemClicked : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemClicked"
  external itemDoubleClicked : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemDoubleClicked"
  external itemActivated : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemActivated"
  external itemEntered : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemEntered"
  external itemChanged : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_itemChanged"
  external currentItemChanged : [> qTableWidget] Qt.t -> [> qTableWidgetItem] Qt.t -> [> qTableWidgetItem] Qt.t -> unit = "mlqt_QTableWidget_currentItemChanged"
  external itemSelectionChanged : [> qTableWidget] Qt.t -> unit = "mlqt_QTableWidget_itemSelectionChanged"
  external cellPressed : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellPressed"
  external cellClicked : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellClicked"
  external cellDoubleClicked : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellDoubleClicked"
  external cellActivated : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellActivated"
  external cellEntered : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellEntered"
  external cellChanged : [> qTableWidget] Qt.t -> int -> int -> unit = "mlqt_QTableWidget_cellChanged"
  external currentCellChanged : [> qTableWidget] Qt.t -> int -> int -> int -> int -> unit = "mlqt_QTableWidget_currentCellChanged"
  external signal'cellActivated1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellActivated1" [@@noalloc]
  external signal'cellChanged1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellChanged1" [@@noalloc]
  external signal'cellClicked1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellClicked1" [@@noalloc]
  external signal'cellDoubleClicked1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellDoubleClicked1" [@@noalloc]
  external signal'cellEntered1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellEntered1" [@@noalloc]
  external signal'cellPressed1 : unit -> ([> qTableWidget], int * int) Qt.signal = "mlqt_signal_QTableWidget_cellPressed1" [@@noalloc]
  external signal'currentCellChanged1 : unit -> ([> qTableWidget], int * int * int * int) Qt.signal = "mlqt_signal_QTableWidget_currentCellChanged1" [@@noalloc]
  external signal'itemSelectionChanged1 : unit -> ([> qTableWidget], unit) Qt.signal = "mlqt_signal_QTableWidget_itemSelectionChanged1" [@@noalloc]
  external slot'clear1 : unit -> ([> qTableWidget], unit) Qt.slot = "mlqt_slot_QTableWidget_clear1" [@@noalloc]
  external slot'clearContents1 : unit -> ([> qTableWidget], unit) Qt.slot = "mlqt_slot_QTableWidget_clearContents1" [@@noalloc]
  external slot'insertColumn1 : unit -> ([> qTableWidget], int) Qt.slot = "mlqt_slot_QTableWidget_insertColumn1" [@@noalloc]
  external slot'insertRow1 : unit -> ([> qTableWidget], int) Qt.slot = "mlqt_slot_QTableWidget_insertRow1" [@@noalloc]
  external slot'_q_dataChanged : unit -> ([> qTableWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_dataChanged" [@@noalloc]
  external slot'_q_emitCurrentItemChanged : unit -> ([> qTableWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitCurrentItemChanged" [@@noalloc]
  external slot'_q_emitItemActivated : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemActivated" [@@noalloc]
  external slot'_q_emitItemChanged : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemChanged" [@@noalloc]
  external slot'_q_emitItemClicked : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemClicked" [@@noalloc]
  external slot'_q_emitItemDoubleClicked : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemDoubleClicked" [@@noalloc]
  external slot'_q_emitItemEntered : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemEntered" [@@noalloc]
  external slot'_q_emitItemPressed : unit -> ([> qTableWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QTableWidget__q_emitItemPressed" [@@noalloc]
  external slot'_q_sort : unit -> ([> qTableWidget], unit) Qt.slot = "mlqt_slot_QTableWidget__q_sort" [@@noalloc]
  external slot'removeColumn1 : unit -> ([> qTableWidget], int) Qt.slot = "mlqt_slot_QTableWidget_removeColumn1" [@@noalloc]
  external slot'removeRow1 : unit -> ([> qTableWidget], int) Qt.slot = "mlqt_slot_QTableWidget_removeRow1" [@@noalloc]
end
external new'QListWidget : [> qWidget] Qt.t option -> qListWidget Qt.t = "mlqt_QListWidget_new_"
module QListWidget = struct
  include QListView
  external class' : unit -> qListWidget Qt.qt_class = "mlqt_class_QListWidget" [@@noalloc]
  external setSelectionModel : [> qListWidget] Qt.t -> [> qItemSelectionModel] Qt.t -> unit = "mlqt_QListWidget_setSelectionModel"
  external item : [> qListWidget] Qt.t -> int -> qListWidgetItem Qt.t = "mlqt_QListWidget_item"
  external row : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> int = "mlqt_QListWidget_row"
  external insertItem : [> qListWidget] Qt.t -> int -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_insertItem"
  external insertItem1 : [> qListWidget] Qt.t -> int -> string -> unit = "mlqt_QListWidget_insertItem1"
  external insertItems : [> qListWidget] Qt.t -> int -> [> qStringList] Qt.t -> unit = "mlqt_QListWidget_insertItems"
  external addItem : [> qListWidget] Qt.t -> string -> unit = "mlqt_QListWidget_addItem"
  external addItem1 : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_addItem1"
  external addItems : [> qListWidget] Qt.t -> [> qStringList] Qt.t -> unit = "mlqt_QListWidget_addItems"
  external takeItem : [> qListWidget] Qt.t -> int -> qListWidgetItem Qt.t = "mlqt_QListWidget_takeItem"
  external count : [> qListWidget] Qt.t -> int = "mlqt_QListWidget_count"
  external currentItem : [> qListWidget] Qt.t -> qListWidgetItem Qt.t = "mlqt_QListWidget_currentItem"
  external setCurrentItem : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_setCurrentItem"
  external setCurrentItem1 : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QListWidget_setCurrentItem1"
  external currentRow : [> qListWidget] Qt.t -> int = "mlqt_QListWidget_currentRow"
  external setCurrentRow : [> qListWidget] Qt.t -> int -> unit = "mlqt_QListWidget_setCurrentRow"
  external setCurrentRow1 : [> qListWidget] Qt.t -> int -> qItemSelectionModel'SelectionFlags -> unit = "mlqt_QListWidget_setCurrentRow1"
  external itemAt : [> qListWidget] Qt.t -> qPoint -> qListWidgetItem Qt.t = "mlqt_QListWidget_itemAt"
  external itemAt1 : [> qListWidget] Qt.t -> int -> int -> qListWidgetItem Qt.t = "mlqt_QListWidget_itemAt1"
  external visualItemRect : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> qRect = "mlqt_QListWidget_visualItemRect"
  external sortItems : [> qListWidget] Qt.t -> qt'SortOrder -> unit = "mlqt_QListWidget_sortItems"
  external setSortingEnabled : [> qListWidget] Qt.t -> bool -> unit = "mlqt_QListWidget_setSortingEnabled"
  external isSortingEnabled : [> qListWidget] Qt.t -> bool = "mlqt_QListWidget_isSortingEnabled"
  external editItem : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_editItem"
  external openPersistentEditor : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_openPersistentEditor"
  external closePersistentEditor : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_closePersistentEditor"
  external itemWidget : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> qWidget Qt.t = "mlqt_QListWidget_itemWidget"
  external setItemWidget : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> [> qWidget] Qt.t -> unit = "mlqt_QListWidget_setItemWidget"
  external removeItemWidget : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_removeItemWidget"
  external isItemSelected : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> bool = "mlqt_QListWidget_isItemSelected"
  external setItemSelected : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> bool -> unit = "mlqt_QListWidget_setItemSelected"
  external isItemHidden : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> bool = "mlqt_QListWidget_isItemHidden"
  external setItemHidden : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> bool -> unit = "mlqt_QListWidget_setItemHidden"
  external dropEvent : [> qListWidget] Qt.t -> [> qDropEvent] Qt.t -> unit = "mlqt_QListWidget_dropEvent"
  external scrollToItem : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> qAbstractItemView'ScrollHint -> unit = "mlqt_QListWidget_scrollToItem"
  external clear : [> qListWidget] Qt.t -> unit = "mlqt_QListWidget_clear"
  external itemPressed : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemPressed"
  external itemClicked : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemClicked"
  external itemDoubleClicked : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemDoubleClicked"
  external itemActivated : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemActivated"
  external itemEntered : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemEntered"
  external itemChanged : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_itemChanged"
  external currentItemChanged : [> qListWidget] Qt.t -> [> qListWidgetItem] Qt.t -> [> qListWidgetItem] Qt.t -> unit = "mlqt_QListWidget_currentItemChanged"
  external currentTextChanged : [> qListWidget] Qt.t -> string -> unit = "mlqt_QListWidget_currentTextChanged"
  external currentRowChanged : [> qListWidget] Qt.t -> int -> unit = "mlqt_QListWidget_currentRowChanged"
  external itemSelectionChanged : [> qListWidget] Qt.t -> unit = "mlqt_QListWidget_itemSelectionChanged"
  external signal'currentItemChanged1 : unit -> ([> qListWidget], qListWidgetItem Qt.t * qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_currentItemChanged1" [@@noalloc]
  external signal'currentRowChanged1 : unit -> ([> qListWidget], int) Qt.signal = "mlqt_signal_QListWidget_currentRowChanged1" [@@noalloc]
  external signal'currentTextChanged1 : unit -> ([> qListWidget], string) Qt.signal = "mlqt_signal_QListWidget_currentTextChanged1" [@@noalloc]
  external signal'itemActivated1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemActivated1" [@@noalloc]
  external signal'itemChanged1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemChanged1" [@@noalloc]
  external signal'itemClicked1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemClicked1" [@@noalloc]
  external signal'itemDoubleClicked1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemDoubleClicked1" [@@noalloc]
  external signal'itemEntered1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemEntered1" [@@noalloc]
  external signal'itemPressed1 : unit -> ([> qListWidget], qListWidgetItem Qt.t) Qt.signal = "mlqt_signal_QListWidget_itemPressed1" [@@noalloc]
  external signal'itemSelectionChanged1 : unit -> ([> qListWidget], unit) Qt.signal = "mlqt_signal_QListWidget_itemSelectionChanged1" [@@noalloc]
  external slot'clear1 : unit -> ([> qListWidget], unit) Qt.slot = "mlqt_slot_QListWidget_clear1" [@@noalloc]
  external slot'_q_dataChanged : unit -> ([> qListWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_dataChanged" [@@noalloc]
  external slot'_q_emitCurrentItemChanged : unit -> ([> qListWidget], [> qModelIndex] Qt.t * [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitCurrentItemChanged" [@@noalloc]
  external slot'_q_emitItemActivated : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemActivated" [@@noalloc]
  external slot'_q_emitItemChanged : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemChanged" [@@noalloc]
  external slot'_q_emitItemClicked : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemClicked" [@@noalloc]
  external slot'_q_emitItemDoubleClicked : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemDoubleClicked" [@@noalloc]
  external slot'_q_emitItemEntered : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemEntered" [@@noalloc]
  external slot'_q_emitItemPressed : unit -> ([> qListWidget], [> qModelIndex] Qt.t) Qt.slot = "mlqt_slot_QListWidget__q_emitItemPressed" [@@noalloc]
  external slot'_q_sort : unit -> ([> qListWidget], unit) Qt.slot = "mlqt_slot_QListWidget__q_sort" [@@noalloc]
  external slot'scrollToItem1 : unit -> ([> qListWidget], [> qListWidgetItem] Qt.t) Qt.slot = "mlqt_slot_QListWidget_scrollToItem1" [@@noalloc]
  external slot'scrollToItem2 : unit -> ([> qListWidget], [> qListWidgetItem] Qt.t * qAbstractItemView'ScrollHint) Qt.slot = "mlqt_slot_QListWidget_scrollToItem2" [@@noalloc]
end
external new'QUndoView : [> qWidget] Qt.t option -> qUndoView Qt.t = "mlqt_QUndoView_new_"
external new'QUndoView'1 : [> qUndoStack] Qt.t -> [> qWidget] Qt.t option -> qUndoView Qt.t = "mlqt_QUndoView_new_1"
external new'QUndoView'2 : [> qUndoGroup] Qt.t -> [> qWidget] Qt.t option -> qUndoView Qt.t = "mlqt_QUndoView_new_2"
module QUndoView = struct
  include QListView
  external class' : unit -> qUndoView Qt.qt_class = "mlqt_class_QUndoView" [@@noalloc]
  external stack : [> qUndoView] Qt.t -> qUndoStack Qt.t = "mlqt_QUndoView_stack"
  external group : [> qUndoView] Qt.t -> qUndoGroup Qt.t = "mlqt_QUndoView_group"
  external setEmptyLabel : [> qUndoView] Qt.t -> string -> unit = "mlqt_QUndoView_setEmptyLabel"
  external emptyLabel : [> qUndoView] Qt.t -> string = "mlqt_QUndoView_emptyLabel"
  external setCleanIcon : [> qUndoView] Qt.t -> [> qIcon] Qt.t -> unit = "mlqt_QUndoView_setCleanIcon"
  external cleanIcon : [> qUndoView] Qt.t -> qIcon Qt.t = "mlqt_QUndoView_cleanIcon"
  external setStack : [> qUndoView] Qt.t -> [> qUndoStack] Qt.t -> unit = "mlqt_QUndoView_setStack"
  external setGroup : [> qUndoView] Qt.t -> [> qUndoGroup] Qt.t -> unit = "mlqt_QUndoView_setGroup"
end
