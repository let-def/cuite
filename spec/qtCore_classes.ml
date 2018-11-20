open Mlspec.Decl

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
  ];
  self

let qObject = qclass "QObject"
let qEvent = qclass "QEvent"
let qCoreApplication = qextends "QCoreApplication" qObject
let qModelIndex = qstruct "QModelIndex" ~modifier:`Const_ref
let qModelIndexList = qList "QModelIndexList" qModelIndex
let qMessageLogContext = qclass "QMessageLogContext"
let qAbstractEventDispatcher'TimerInfo =
  qclass "QAbstractEventDispatcher::TimerInfo"
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
let qDateTime = qstruct "QDateTime"
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
let qUrl = qstruct "QUrl" ~modifier:`Const_ref
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
let qDataStream = qclass "QDataStream"
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
let qDate = qstruct "QDate"
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
let qVariant = custom_type ~ml_name:"QVariant.t" "QVariant"
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
let qMultiMap = qextends "QMultiMap" qMap
let qUnhandledException = qextends "QUnhandledException" qException
let qItemSelection = qstruct "QItemSelection"
let qByteArrayList = qstruct "QByteArrayList" (*~extend:qList*)
(*let qQueue = qextends "QQueue" qList*)
let qStringList = qList "QStringList" string
(*let qFutureWatcher = qextends "QFutureWatcher" qFutureWatcherBase*)
(*let qStack = qextends "QStack" qVector*)
let qXmlStreamAttributes = qextends "QXmlStreamAttributes" qVector
let qGenericReturnArgument = qextends "QGenericReturnArgument" qGenericArgument
let qMultiHash = qextends "QMultiHash" qHash
let qScopedArrayPointer = qextends "QScopedArrayPointer" qScopedPointer
let qTimerEvent = qextends "QTimerEvent" qEvent
let qChildEvent = qextends "QChildEvent" qEvent
let qDynamicPropertyChangeEvent = qextends "QDynamicPropertyChangeEvent" qEvent
let qStateMachine'SignalEvent = qextends "QStateMachine::SignalEvent" qEvent
let qStateMachine'WrappedEvent = qextends "QStateMachine::WrappedEvent" qEvent
(*let qAtomicInteger = qextends "QAtomicInteger" qBasicAtomicInteger*)
(*let qAtomicPointer = qextends "QAtomicPointer" qBasicAtomicPointer*)
(*let qMutex = qextends "QMutex" qBasicMutex*)
let qAbstractAnimation = qextends "QAbstractAnimation" qObject
let qFileSelector = qextends "QFileSelector" qObject
let qFileSystemWatcher = qextends "QFileSystemWatcher" qObject
let qIODevice = qextends "QIODevice" qObject
let qSettings = qextends "QSettings" qObject
let qAbstractItemModel = qextends "QAbstractItemModel" qObject
let qItemSelectionModel = qextends "QItemSelectionModel" qObject
let qAbstractEventDispatcher = qextends "QAbstractEventDispatcher" qObject
let qEventLoop = qextends "QEventLoop" qObject
let qMimeData = qextends "QMimeData" qObject
let qObjectCleanupHandler = qextends "QObjectCleanupHandler" qObject
let qSharedMemory = qextends "QSharedMemory" qObject
let qSignalMapper = qextends "QSignalMapper" qObject
let qSocketNotifier = qextends "QSocketNotifier" qObject
let qTimer = qextends "QTimer" qObject
let qTranslator = qextends "QTranslator" qObject
(*let qWinEventNotifier = qextends "QWinEventNotifier" qObject*)
let qLibrary = qextends "QLibrary" qObject
let qPluginLoader = qextends "QPluginLoader" qObject
let qAbstractState = qextends "QAbstractState" qObject
let qAbstractTransition = qextends "QAbstractTransition" qObject
let qThread = qextends "QThread" qObject
let qThreadPool = qextends "QThreadPool" qObject
let qTimeLine = qextends "QTimeLine" qObject
let qEventTransition = qextends "QEventTransition" qAbstractTransition
let qSignalTransition = qextends "QSignalTransition" qAbstractTransition
let qFinalState = qextends "QFinalState" qAbstractState
let qHistoryState = qextends "QHistoryState" qAbstractState
let qState = qextends "QState" qAbstractState
let qAbstractTableModel = qextends "QAbstractTableModel" qAbstractItemModel
let qAbstractListModel = qextends "QAbstractListModel" qAbstractItemModel
let qAbstractProxyModel = qextends "QAbstractProxyModel" qAbstractItemModel
let qBuffer = qextends "QBuffer" qIODevice
let qFileDevice = qextends "QFileDevice" qIODevice
let qProcess = qextends "QProcess" qIODevice
let qAnimationGroup = qextends "QAnimationGroup" qAbstractAnimation
let qPauseAnimation = qextends "QPauseAnimation" qAbstractAnimation
let qVariantAnimation = qextends "QVariantAnimation" qAbstractAnimation
(*let qAtomicInt = qextends "QAtomicInt" qAtomicInteger*)
let qPropertyAnimation = qextends "QPropertyAnimation" qVariantAnimation
let qParallelAnimationGroup = qextends "QParallelAnimationGroup" qAnimationGroup
let qSequentialAnimationGroup = qextends "QSequentialAnimationGroup" qAnimationGroup
let qFile = qextends "QFile" qFileDevice
let qSaveFile = qextends "QSaveFile" qFileDevice
let qIdentityProxyModel = qextends "QIdentityProxyModel" qAbstractProxyModel
let qSortFilterProxyModel = qextends "QSortFilterProxyModel" qAbstractProxyModel
let qStringListModel = qextends "QStringListModel" qAbstractListModel
let qStateMachine = qextends "QStateMachine" qState
let qTemporaryFile = qextends "QTemporaryFile" qFile
