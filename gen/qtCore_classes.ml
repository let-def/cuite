open Shared

let qList name t =
  let self = qstruct name in
  with_class self [
    constructor "" [];
    constructor "" [arg "other" self];
    dynamic "swap" [arg "other" self];
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "at" [arg "i" int] ~ret:t;
    dynamic "reserve" [arg "alloc" int];
    dynamic "append" [arg "value" t];
    dynamic "append" [arg "value" self];
    dynamic "prepend" [arg "value" t];
    dynamic "insert" [arg "i" int; arg "value" t];
    dynamic "replace" [arg "i" int; arg "value" t];
    dynamic "removeAt" [arg "i" int];
    dynamic "removeAll" [arg "value" t] ~ret:int;
    dynamic "removeOne" [arg "value" t] ~ret:bool;
    dynamic "takeAt" [arg "i" int] ~ret:t;
    dynamic "takeFirst" [] ~ret:t;
    dynamic "takeLast" [] ~ret:t;
    dynamic "move" [arg "from" int;arg "to" int];
    dynamic "swap" [arg "i" int;arg "j" int];
    dynamic "indexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "contains" [arg "value" t] ~ret:bool;
    dynamic "count" [arg "value" t] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "first" [] ~ret:t;
    dynamic "last" [] ~ret:t;
    dynamic "removeFirst" [];
    dynamic "removeLast" [];
    dynamic "startsWith" [arg "value" t] ~ret:bool;
    dynamic "endsWith" [arg "value" t] ~ret:bool;
    dynamic "value" [arg "i" int] ~ret:t;
    dynamic "push_back" [arg "value" t];
    dynamic "push_front" [arg "value" t];
    dynamic "front" [] ~ret:t;
    dynamic "back" [] ~ret:t;
    dynamic "pop_front" [];
    dynamic "pop_back" [];
    dynamic "empty" [] ~ret:bool;
    (*dynamic "operator=" [arg "other" self] ~ret:self;*)
    (*constructor "" [arg "other" self];*)
    (*dynamic "operator=" [arg "other" self] ~ret:self;*)
    (*constructor "" [arg "args" std'initializer_list<T>];*)
    (*dynamic "operator==" [arg "other" self] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" self] ~ret:bool;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "begin" [] ~ret:iterator;*)
    (*dynamic "begin" [] ~ret:const_iterator;*)
    (*dynamic "cbegin" [] ~ret:const_iterator;*)
    (*dynamic "constBegin" [] ~ret:const_iterator;*)
    (*dynamic "end" [] ~ret:iterator;*)
    (*dynamic "end" [] ~ret:const_iterator;*)
    (*dynamic "cend" [] ~ret:const_iterator;*)
    (*dynamic "constEnd" [] ~ret:const_iterator;*)
    (*dynamic "rbegin" [] ~ret:reverse_iterator;*)
    (*dynamic "rend" [] ~ret:reverse_iterator;*)
    (*dynamic "rbegin" [] ~ret:const_reverse_iterator;*)
    (*dynamic "rend" [] ~ret:const_reverse_iterator;*)
    (*dynamic "crbegin" [] ~ret:const_reverse_iterator;*)
    (*dynamic "crend" [] ~ret:const_reverse_iterator;*)
    (*dynamic "insert" [arg "before" iterator;arg "value" t] ~ret:iterator;*)
    (*dynamic "erase" [arg "pos" iterator] ~ret:iterator;*)
    (*dynamic "erase" [arg "begin" iterator;arg "end" iterator] ~ret:iterator;*)
    (*dynamic "constFirst" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "constLast" [] ~ret:t;*)
    (*dynamic "mid" [arg "pos" int;arg "length" int] ~ret:self;*)
    (*dynamic "value" [arg "i" int;arg "defaultValue" t] ~ret:t;*)
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    (*dynamic "operator+=" [arg "other" self] ~ret:self;*)
    (*dynamic "operator+" [arg "other" self] ~ret:self;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:self;*)
    (*dynamic "operator<<" [arg "value" t] ~ret:self;*)
    (*dynamic "operator<<" [arg "other" self] ~ret:self;*)
    (*dynamic "toVector" [] ~ret:qVector<T>;*)
    (*dynamic "toSet" [] ~ret:qSet<T>;*)
    (*static  "fromVector" [arg "vector" qVector<T>] ~ret:self;*)
    (*static  "fromSet" [arg "set" qSet<T>] ~ret:self;*)
    (*static  "fromStdList" [arg "list" std'list<T>] ~ret:self;*)
    (*dynamic "toStdList" [] ~ret:std'list<T>;*)
  ];
  self
  (*with_class str [
    constructor "" [];
    constructor "copy" [arg "other" str];
    dynamic "append" [arg "value" t];
    dynamic "at" [arg "i" int] ~ret:t;
    dynamic "set" [arg "i" int; arg "value" t];
    dynamic "indexOf" [arg "value" t];
    dynamic "indexOf" [arg "value" t; arg "from" int];
    dynamic "insert" [arg "i" int; arg "value" t];
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "length" [] ~ret:int;
    dynamic "move" [arg "from" int; arg "to" int];
    dynamic "pop_back" [];
    dynamic "pop_front" [];
    dynamic "push_back" [arg "value" t];
    dynamic "push_front" [arg "value" t];

    dynamic "removeAll" [arg "value" t];
    dynamic "removeAt"
  ]*)


let qObject = qclass "QObject" ~converter:"QObject"
let qEvent = qclass "QEvent" ~converter:"QEvent"
let qCoreApplication = qclass "QCoreApplication" ~extend:qObject
let qModelIndex = const (qstruct "QModelIndex")
let qModelIndexList = qList "QModelIndexList" qModelIndex
let qMessageLogContext = qclass "QMessageLogContext"
let qAbstractEventDispatcher'TimerInfo = qclass "QAbstractEventDispatcher::TimerInfo"
let qVectorIterator = qclass "QVectorIterator"
let qUrlQuery = qclass "QUrlQuery"
let qMap'const_iterator = qclass "QMap::const_iterator"
(*let qPoint = qclass ~immediate:true "QPoint"*)
let qFileInfo = qstruct "QFileInfo"
let qSet'const_iterator = qclass "QSet::const_iterator"
let qJsonObject'iterator = qclass "QJsonObject::iterator"
let qXmlStreamNotationDeclaration = qclass "QXmlStreamNotationDeclaration"
let qJsonParseError = qclass "QJsonParseError"
let qMetaObject = qclass "QMetaObject"
let qTextDecoder = qclass "QTextDecoder"
let qEasingCurve = qclass "QEasingCurve"
let qMap'key_iterator = qclass "QMap::key_iterator"
let qTimeZone = qclass "QTimeZone"
let qWeakPointer = qclass "QWeakPointer"
let qLineF = qclass "QLineF"
let qPair = qclass "QPair"
let qMimeDatabase = qclass "QMimeDatabase"
let qSet'iterator = qclass "QSet::iterator"
let qXmlStreamEntityDeclaration = qclass "QXmlStreamEntityDeclaration"
let qSignalBlocker = qclass "QSignalBlocker"
(*let qFlag = qclass "QFlag"*)
let qMutexLocker = qclass "QMutexLocker"
let qCollator = qclass "QCollator"
let qMapIterator = qclass "QMapIterator"
let qByteArrayMatcher = qclass "QByteArrayMatcher"
let qJsonDocument = qclass "QJsonDocument"
let qSequentialIterable'const_iterator = qclass "QSequentialIterable::const_iterator"
let qMap'iterator = qclass "QMap::iterator"
let qVersionNumber = qclass "QVersionNumber"
let qXmlStreamEntityResolver = qclass "QXmlStreamEntityResolver"
let qByteArray = qstruct "QByteArray"
let qPointer = qclass "QPointer"
let qLatin1Char = qclass "QLatin1Char"
let qScopedPointer = qclass "QScopedPointer"
let qDebug = qclass "QDebug"
let qResource = qclass "QResource"
let qMutableSetIterator = qclass "QMutableSetIterator"
let qEnableSharedFromThis = qclass "QEnableSharedFromThis"
let qHash = qclass "QHash"
let qLocale = qstruct "QLocale"
let qXmlStreamWriter = qclass "QXmlStreamWriter"
let qJsonObject'const_iterator = qclass "QJsonObject::const_iterator"
let qBitArray = qclass "QBitArray"
let qMessageAuthenticationCode = qclass "QMessageAuthenticationCode"
(*let qRect = qclass ~immediate:true "QRect"*)
let qLatin1String = qclass "QLatin1String"
let qReadWriteLock = qclass "QReadWriteLock"
let qWriteLocker = qclass "QWriteLocker"
let qStringMatcher = qclass "QStringMatcher"
let qXmlStreamReader = qclass "QXmlStreamReader"
let qMetaMethod = qclass "QMetaMethod"
let qLinkedList'const_iterator = qclass "QLinkedList::const_iterator"
let qMarginsF = qstruct "QMarginsF"
let qStaticPlugin = qclass "QStaticPlugin"
let qAssociativeIterable = qclass "QAssociativeIterable"
let qDateTime = const (qstruct "QDateTime")
(*let qSizeF = const (qclass ~immediate:true "QSizeF")*)
let qOperatingSystemVersion = qclass "QOperatingSystemVersion"
let qMetaType = qclass "QMetaType"
let qJsonArray = qclass "QJsonArray"
let qMutableMapIterator = qclass "QMutableMapIterator"
let qDebugStateSaver = qclass "QDebugStateSaver"
let qLoggingCategory = qclass "QLoggingCategory"
let qGenericArgument = qclass "QGenericArgument"
let qFuture'const_iterator = qclass "QFuture::const_iterator"
let qAbstractNativeEventFilter = qclass "QAbstractNativeEventFilter"
let qChar = qstruct "QChar"
let qGlobalStatic = qclass "QGlobalStatic"
let qElapsedTimer = qclass "QElapsedTimer"
let qHash'iterator = qclass "QHash::iterator"
let qVector = qclass "QVector"
let qTextCodec'ConverterState = qclass "QTextCodec::ConverterState"
let qStandardPaths = qclass "QStandardPaths"
let qDirIterator = qclass "QDirIterator"
let qItemSelectionRange = qclass "QItemSelectionRange"
let qStorageInfo = qclass "QStorageInfo"
let qLinkedList'iterator = qclass "QLinkedList::iterator"
let qRegularExpressionMatch = qstruct "QRegularExpressionMatch"
let qRegExp = qstruct "QRegExp"
let qMutableListIterator = qclass "QMutableListIterator"
let qMutableHashIterator = qclass "QMutableHashIterator"
let qStaticByteArrayMatcher = qclass "QStaticByteArrayMatcher"
(*let qPointF = qclass ~immediate:true "QPointF"*)
let qFutureSynchronizer = qclass "QFutureSynchronizer"
let qListIterator = qclass "QListIterator"
let qStringRef = qstruct "QStringRef"
let qTextCodec = qclass "QTextCodec"
let qJsonArray'const_iterator = qclass "QJsonArray::const_iterator"
let qSystemSemaphore = qclass "QSystemSemaphore"
let qUrl = const (qstruct "QUrl")
let qReadLocker = qclass "QReadLocker"
let qHash'key_iterator = qclass "QHash::key_iterator"
let qFuture = qclass "QFuture"
let qRegularExpressionMatchIterator = qstruct "QRegularExpressionMatchIterator"
let qFutureIterator = qclass "QFutureIterator"
let qTextEncoder = qclass "QTextEncoder"
let qUuid = qclass "QUuid"
let qMessageLogger = qclass "QMessageLogger"
let qSequentialIterable = qclass "QSequentialIterable"
let qContiguousCache = qclass "QContiguousCache"
let qMetaEnum = qclass "QMetaEnum"
let qCryptographicHash = qclass "QCryptographicHash"
let qLibraryInfo = qclass "QLibraryInfo"
let qProcess'CreateProcessArguments = qclass "QProcess::CreateProcessArguments"
let qCommandLineOption = qclass "QCommandLineOption"
(*let qList'const_iterator = qclass "QList::const_iterator"*)
let qMutableVectorIterator = qclass "QMutableVectorIterator"
let qRegularExpression = qstruct "QRegularExpression"
let qMetaProperty = qclass "QMetaProperty"
(*let qString = const (qclass ~immediate:true "QString")*)
let qLine = qclass "QLine"
let qSharedData = qclass "QSharedData"
let qExplicitlySharedDataPointer = qclass "QExplicitlySharedDataPointer"
let qWaitCondition = qclass "QWaitCondition"
let qMargins = qstruct "QMargins"
let qTimeZone'OffsetData = qclass "QTimeZone::OffsetData"
let qXmlStreamNamespaceDeclaration = qclass "QXmlStreamNamespaceDeclaration"
let qMimeType = qclass "QMimeType"
let qCollatorSortKey = qclass "QCollatorSortKey"
let qDataStream = reference (qclass "QDataStream")
let qTemporaryDir = qclass "QTemporaryDir"
let qRunnable = qclass "QRunnable"
let qThreadStorage = qclass "QThreadStorage"
let qJsonValue = qclass "QJsonValue"
(*let qList'iterator = qclass "QList::iterator"*)
let qVarLengthArray = qclass "QVarLengthArray"
let qBasicTimer = qclass "QBasicTimer"
let qEventLoopLocker = qclass "QEventLoopLocker"
let qJsonArray'iterator = qclass "QJsonArray::iterator"
let qCommandLineParser = qclass "QCommandLineParser"
let qTextStream = qclass "QTextStream"
let qSet = qclass "QSet"
let qSemaphore = qclass "QSemaphore"
let qXmlStreamAttribute = qclass "QXmlStreamAttribute"
(*let qSize = const (qclass ~immediate:true "QSize"*)
let qDeadlineTimer = qclass "QDeadlineTimer"
let qDate = const (qstruct "QDate")
let qMutableLinkedListIterator = qclass "QMutableLinkedListIterator"
let qHash'const_iterator = qclass "QHash::const_iterator"
(*let qFlags = qclass "QFlags"*)
let qLockFile = qclass "QLockFile"
(*let qRectF = qclass ~immediate:true "QRectF"*)
let qMetaObject'Connection = qclass "QMetaObject::Connection"
let qSharedDataPointer = qclass "QSharedDataPointer"
let qSysInfo = qclass "QSysInfo"
let qJsonObject = qclass "QJsonObject"
let qException = qclass "QException"
let qVariant = custom_type ~ml_pos:"QVariant.t" "QVariant"
let qMap = qclass "QMap"
let qAssociativeIterable'const_iterator = qclass "QAssociativeIterable::const_iterator"
let qTime = qstruct "QTime"
let qTextBoundaryFinder = qclass "QTextBoundaryFinder"
let qMetaClassInfo = qclass "QMetaClassInfo"
let qSetIterator = qclass "QSetIterator"
let qSharedPointer = qclass "QSharedPointer"
let qProcessEnvironment = qclass "QProcessEnvironment"
let qHashIterator = qclass "QHashIterator"
let qLinkedListIterator = qclass "QLinkedListIterator"
let qPersistentModelIndex = qclass "QPersistentModelIndex"
let qCache = qclass "QCache"
let qLinkedList = qclass "QLinkedList"
let qScopedValueRollback = qclass "QScopedValueRollback"
let qDir = qstruct "QDir"
let qMultiMap = qclass "QMultiMap" ~extend:qMap
let qUnhandledException = qclass "QUnhandledException" ~extend:qException
let qItemSelection = const (qstruct "QItemSelection") (*private qList "QItemSelection" qItemSelectionRange*)
let qByteArrayList = qstruct "QByteArrayList" (*~extend:qList*)
(*let qQueue = qclass "QQueue" ~extend:qList*)
let qStringList = qList "QStringList" string
(*let qFutureWatcher = qclass "QFutureWatcher" ~extend:qFutureWatcherBase*)
(*let qStack = qclass "QStack" ~extend:qVector*)
let qXmlStreamAttributes = qclass "QXmlStreamAttributes" ~extend:qVector
let qGenericReturnArgument = qclass "QGenericReturnArgument" ~extend:qGenericArgument
let qMultiHash = qclass "QMultiHash" ~extend:qHash
let qScopedArrayPointer = qclass "QScopedArrayPointer" ~extend:qScopedPointer
let qTimerEvent = qclass "QTimerEvent" ~extend:qEvent
let qChildEvent = qclass "QChildEvent" ~extend:qEvent
let qDynamicPropertyChangeEvent = qclass "QDynamicPropertyChangeEvent" ~extend:qEvent
let qStateMachine'SignalEvent = qclass "QStateMachine::SignalEvent" ~extend:qEvent
let qStateMachine'WrappedEvent = qclass "QStateMachine::WrappedEvent" ~extend:qEvent
(*let qAtomicInteger = qclass "QAtomicInteger" ~extend:qBasicAtomicInteger*)
(*let qAtomicPointer = qclass "QAtomicPointer" ~extend:qBasicAtomicPointer*)
(*let qMutex = qclass "QMutex" ~extend:qBasicMutex*)
let qAbstractAnimation = qclass "QAbstractAnimation" ~extend:qObject
let qFileSelector = qclass "QFileSelector" ~extend:qObject
let qFileSystemWatcher = qclass "QFileSystemWatcher" ~extend:qObject
let qIODevice = qclass "QIODevice" ~extend:qObject
let qSettings = qclass "QSettings" ~extend:qObject
let qAbstractItemModel = qclass "QAbstractItemModel" ~extend:qObject
let qItemSelectionModel = qclass "QItemSelectionModel" ~extend:qObject
let qAbstractEventDispatcher = qclass "QAbstractEventDispatcher" ~extend:qObject
let qEventLoop = qclass "QEventLoop" ~extend:qObject
let qMimeData = qclass "QMimeData" ~extend:qObject
let qObjectCleanupHandler = qclass "QObjectCleanupHandler" ~extend:qObject
let qSharedMemory = qclass "QSharedMemory" ~extend:qObject
let qSignalMapper = qclass "QSignalMapper" ~extend:qObject
let qSocketNotifier = qclass "QSocketNotifier" ~extend:qObject
let qTimer = qclass "QTimer" ~extend:qObject
let qTranslator = qclass "QTranslator" ~extend:qObject
(*let qWinEventNotifier = qclass "QWinEventNotifier" ~extend:qObject*)
let qLibrary = qclass "QLibrary" ~extend:qObject
let qPluginLoader = qclass "QPluginLoader" ~extend:qObject
let qAbstractState = qclass "QAbstractState" ~extend:qObject
let qAbstractTransition = qclass "QAbstractTransition" ~extend:qObject
let qThread = qclass "QThread" ~extend:qObject
let qThreadPool = qclass "QThreadPool" ~extend:qObject
let qTimeLine = qclass "QTimeLine" ~extend:qObject
let qEventTransition = qclass "QEventTransition" ~extend:qAbstractTransition
let qSignalTransition = qclass "QSignalTransition" ~extend:qAbstractTransition
let qFinalState = qclass "QFinalState" ~extend:qAbstractState
let qHistoryState = qclass "QHistoryState" ~extend:qAbstractState
let qState = qclass "QState" ~extend:qAbstractState
let qAbstractTableModel = qclass "QAbstractTableModel" ~extend:qAbstractItemModel
let qAbstractListModel = qclass "QAbstractListModel" ~extend:qAbstractItemModel
let qAbstractProxyModel = qclass "QAbstractProxyModel" ~extend:qAbstractItemModel
let qBuffer = qclass "QBuffer" ~extend:qIODevice
let qFileDevice = qclass "QFileDevice" ~extend:qIODevice
let qProcess = qclass "QProcess" ~extend:qIODevice
let qAnimationGroup = qclass "QAnimationGroup" ~extend:qAbstractAnimation
let qPauseAnimation = qclass "QPauseAnimation" ~extend:qAbstractAnimation
let qVariantAnimation = qclass "QVariantAnimation" ~extend:qAbstractAnimation
(*let qAtomicInt = qclass "QAtomicInt" ~extend:qAtomicInteger*)
let qPropertyAnimation = qclass "QPropertyAnimation" ~extend:qVariantAnimation
let qParallelAnimationGroup = qclass "QParallelAnimationGroup" ~extend:qAnimationGroup
let qSequentialAnimationGroup = qclass "QSequentialAnimationGroup" ~extend:qAnimationGroup
let qFile = qclass "QFile" ~extend:qFileDevice
let qSaveFile = qclass "QSaveFile" ~extend:qFileDevice
let qIdentityProxyModel = qclass "QIdentityProxyModel" ~extend:qAbstractProxyModel
let qSortFilterProxyModel = qclass "QSortFilterProxyModel" ~extend:qAbstractProxyModel
let qStringListModel = qclass "QStringListModel" ~extend:qAbstractListModel
let qStateMachine = qclass "QStateMachine" ~extend:qState
let qTemporaryFile = qclass "QTemporaryFile" ~extend:qFile
