open Mlspec.Decl
open QtCore_enum
open QtCore_classes

  (* signal ~cl:qPrintDialog "accepted" [qPrinter*];
     slot ~cl:qPrintDialog "_q_checkFields" [];
     slot ~cl:qPrintDialog "_q_collapseOrExpandDialog" [];
     slot ~cl:qPrintDialog "_q_togglePageSetCombo" [bool];*)

let () = with_class qSignalMapper [
    constructor "" [opt "parent" qObject];
    dynamic "setMapping" [arg "sender" qObject;arg "id" int];
    dynamic "setMapping" [arg "sender" qObject;arg "text" qString];
    dynamic "setMapping" [arg "sender" qObject;arg "object" qObject];
    dynamic "removeMappings" [arg "sender" qObject];
    dynamic "mapping" [arg "id" int] ~ret:qObject;
    dynamic "mapping" [arg "id" qString] ~ret:qObject;
    dynamic "mapping" [arg "object" qObject] ~ret:qObject;
    dynamic "mapped" [arg "i" int];
    dynamic "mapped" [arg "text" qString];
    dynamic "mapped" [arg "object" qObject];
    dynamic "map" [];
    dynamic "map" [arg "sender" qObject];
    signal "mapped" [arg "" int];
    signal "mapped" [arg "" qString];
    signal "mapped" [arg "" qObject];
  ]

let () = with_class qRegExp [
    constructor "" [];
    constructor "" [arg "pattern" qString;arg "cs" qt'CaseSensitivity;arg "syntax" qRegExp'PatternSyntax];
    constructor "" [arg "rx" qRegExp];
    (*dynamic "operator=" [arg "rx" qRegExp] ~ret:qRegExp;*)
    (*dynamic "operator=" [arg "other" qRegExp] ~ret:qRegExp;*)
    (*dynamic "swap" [arg "other" qRegExp];*)
    (*dynamic "operator==" [arg "rx" qRegExp] ~ret:bool;*)
    (*dynamic "operator!=" [arg "rx" qRegExp] ~ret:bool;*)
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "pattern" [] ~ret:qString;
    dynamic "setPattern" [arg "pattern" qString];
    dynamic "caseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setCaseSensitivity" [arg "cs" qt'CaseSensitivity];
    dynamic "patternSyntax" [] ~ret:qRegExp'PatternSyntax;
    dynamic "setPatternSyntax" [arg "syntax" qRegExp'PatternSyntax];
    dynamic "isMinimal" [] ~ret:bool;
    dynamic "setMinimal" [arg "minimal" bool];
    dynamic "exactMatch" [arg "str" qString] ~ret:bool;
    dynamic "indexIn" [arg "str" qString;arg "offset" int;arg "caretMode" qRegExp'CaretMode] ~ret:int;
    dynamic "lastIndexIn" [arg "str" qString;arg "offset" int;arg "caretMode" qRegExp'CaretMode] ~ret:int;
    dynamic "matchedLength" [] ~ret:int;
    dynamic "captureCount" [] ~ret:int;
    dynamic "capturedTexts" [] ~ret:qStringList;
    dynamic "cap" [arg "nth" int] ~ret:qString;
    dynamic "pos" [arg "nth" int] ~ret:int;
    dynamic "errorString" [] ~ret:qString;
    static  "escape" [arg "str" qString] ~ret:qString;
  ]

let () = with_class qRegularExpressionMatch [
    constructor "" [];
    constructor "" [arg "match" qRegularExpressionMatch];
    (*dynamic "operator=" [arg "match" qRegularExpressionMatch] ~ret:qRegularExpressionMatch;*)
    (*dynamic "operator=" [arg "match" qRegularExpressionMatch] ~ret:qRegularExpressionMatch;*)
    dynamic "swap" [arg "other" qRegularExpressionMatch];
    dynamic "regularExpression" [] ~ret:qRegularExpression;
    dynamic "matchType" [] ~ret:qRegularExpression'MatchType;
    dynamic "matchOptions" [] ~ret:qRegularExpression'MatchOptions;
    dynamic "hasMatch" [] ~ret:bool;
    dynamic "hasPartialMatch" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "lastCapturedIndex" [] ~ret:int;
    dynamic "captured" [arg "nth" int] ~ret:qString;
    (*dynamic "capturedRef" [arg "nth" int] ~ret:qStringRef;*)
    dynamic "captured" [arg "name" qString] ~ret:qString;
    (*dynamic "capturedRef" [arg "name" qString] ~ret:qStringRef;*)
    dynamic "capturedTexts" [] ~ret:qStringList;
    dynamic "capturedStart" [arg "nth" int] ~ret:int;
    dynamic "capturedLength" [arg "nth" int] ~ret:int;
    dynamic "capturedEnd" [arg "nth" int] ~ret:int;
    dynamic "capturedStart" [arg "name" qString] ~ret:int;
    dynamic "capturedLength" [arg "name" qString] ~ret:int;
    dynamic "capturedEnd" [arg "name" qString] ~ret:int;
  ]

let () = with_class qRegularExpression [
    dynamic "patternOptions" [] ~ret:qRegularExpression'PatternOptions;
    dynamic "setPatternOptions" [arg "options" qRegularExpression'PatternOptions];
    constructor "" [];
    constructor "" [arg "pattern" qString;arg "options" qRegularExpression'PatternOptions];
    constructor "" [arg "re" qRegularExpression];
    (*dynamic "operator=" [arg "re" qRegularExpression] ~ret:qRegularExpression;*)
    (*dynamic "operator=" [arg "re" qRegularExpression] ~ret:qRegularExpression;*)
    dynamic "swap" [arg "other" qRegularExpression];
    dynamic "pattern" [] ~ret:qString;
    dynamic "setPattern" [arg "pattern" qString];
    dynamic "isValid" [] ~ret:bool;
    dynamic "patternErrorOffset" [] ~ret:int;
    dynamic "errorString" [] ~ret:qString;
    dynamic "captureCount" [] ~ret:int;
    dynamic "namedCaptureGroups" [] ~ret:qStringList;
    dynamic "match" [arg "subject" qString;arg "offset" int;arg "matchType" qRegularExpression'MatchType;arg "matchOptions" qRegularExpression'MatchOptions] ~ret:qRegularExpressionMatch;
    (*dynamic "match" [arg "subjectRef" qStringRef;arg "offset" int;arg "matchType" qRegularExpression'MatchType;arg "matchOptions" qRegularExpression'MatchOptions] ~ret:qRegularExpressionMatch;*)
    dynamic "globalMatch" [arg "subject" qString;arg "offset" int;arg "matchType" qRegularExpression'MatchType;arg "matchOptions" qRegularExpression'MatchOptions] ~ret:qRegularExpressionMatchIterator;
    (*dynamic "globalMatch" [arg "subjectRef" qStringRef;arg "offset" int;arg "matchType" qRegularExpression'MatchType;arg "matchOptions" qRegularExpression'MatchOptions] ~ret:qRegularExpressionMatchIterator;*)
    dynamic "optimize" [];
    static  "escape" [arg "str" qString] ~ret:qString;
    (*dynamic "operator==" [arg "re" qRegularExpression] ~ret:bool;*)
    (*dynamic "operator!=" [arg "re" qRegularExpression] ~ret:bool;*)
  ]

let () = with_class qRegularExpressionMatchIterator [
    constructor "" [];
    constructor "" [arg "iterator" qRegularExpressionMatchIterator];
    (*dynamic "operator=" [arg "iterator" qRegularExpressionMatchIterator] ~ret:qRegularExpressionMatchIterator;*)
    (*dynamic "operator=" [arg "iterator" qRegularExpressionMatchIterator] ~ret:qRegularExpressionMatchIterator;*)
    dynamic "swap" [arg "other" qRegularExpressionMatchIterator];
    dynamic "isValid" [] ~ret:bool;
    dynamic "hasNext" [] ~ret:bool;
    dynamic "next" [] ~ret:qRegularExpressionMatch;
    dynamic "peekNext" [] ~ret:qRegularExpressionMatch;
    dynamic "regularExpression" [] ~ret:qRegularExpression;
    dynamic "matchType" [] ~ret:qRegularExpression'MatchType;
    dynamic "matchOptions" [] ~ret:qRegularExpression'MatchOptions;
  ]

let () = with_class qModelIndex [
    constructor "" [];
    dynamic "row" [] ~ret:int;
    dynamic "column" [] ~ret:int;
    (*dynamic "internalId" [] ~ret:quintptr;*)
    (*dynamic "internalPointer" [] ~ret:void;*)
    dynamic "parent" [] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int] ~ret:qModelIndex;
    dynamic "child" [arg "row" int;arg "column" int] ~ret:qModelIndex;
    dynamic "data" [arg "role" int] ~ret:qVariant;
    dynamic "flags" [] ~ret:qt'ItemFlags;
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "isValid" [] ~ret:bool;
    (*dynamic "operator==" [arg "other" qModelIndex] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qModelIndex] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qModelIndex] ~ret:bool;*)
  ]

let () = with_class qAbstractItemModel [
    (*constructor "" [arg "parent" (optional qObject)];*)
    dynamic "hasIndex" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "parent" [arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "rowCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "columnCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "hasChildren" [arg "parent" qModelIndex] ~ret:bool;
    dynamic "data" [arg "index" qModelIndex;arg "role" qt'ItemDataRole] ~ret:qVariant;
    dynamic "setData" [arg "index" qModelIndex;arg "value" qVariant;arg "role" qt'ItemDataRole] ~ret:bool;
    dynamic "headerData" [arg "section" int;arg "orientation" qt'Orientation;arg "role" qt'ItemDataRole] ~ret:qVariant;
    dynamic "setHeaderData" [arg "section" int;arg "orientation" qt'Orientation;arg "value" qVariant;arg "role" qt'ItemDataRole] ~ret:bool;
    (*dynamic "itemData" [arg "index" qModelIndex] ~ret:qMap<int, QVariant>;*)
    (*dynamic "setItemData" [arg "index" qModelIndex;arg "roles" qMap<int,QVariant>] ~ret:bool;*)
    dynamic "mimeTypes" [] ~ret:qStringList;
    dynamic "mimeData" [arg "indexes" qModelIndexList] ~ret:qMimeData;
    dynamic "canDropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "supportedDropActions" [] ~ret:qt'DropActions;
    dynamic "supportedDragActions" [] ~ret:qt'DropActions;
    (*dynamic "setSupportedDragActions" [arg "actions" qt'DropActions];*)
    dynamic "insertRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "insertColumns" [arg "column" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeColumns" [arg "column" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "moveRows" [arg "sourceParent" qModelIndex;arg "sourceRow" int;arg "count" int;arg "destinationParent" qModelIndex;arg "destinationChild" int] ~ret:bool;
    dynamic "moveColumns" [arg "sourceParent" qModelIndex;arg "sourceColumn" int;arg "count" int;arg "destinationParent" qModelIndex;arg "destinationChild" int] ~ret:bool;
    dynamic "insertRow" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "insertColumn" [arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeRow" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeColumn" [arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "moveRow" [arg "sourceParent" qModelIndex;arg "sourceRow" int;arg "destinationParent" qModelIndex;arg "destinationChild" int] ~ret:bool;
    dynamic "moveColumn" [arg "sourceParent" qModelIndex;arg "sourceColumn" int;arg "destinationParent" qModelIndex;arg "destinationChild" int] ~ret:bool;
    dynamic "fetchMore" [arg "parent" qModelIndex];
    dynamic "canFetchMore" [arg "parent" qModelIndex] ~ret:bool;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
    dynamic "sort" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "buddy" [arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "match" [arg "start" qModelIndex;arg "role" int;arg "value" qVariant;arg "hits" int;arg "flags" qt'MatchFlags] ~ret:qModelIndexList;
    dynamic "span" [arg "index" qModelIndex] ~ret:qSize;
    (*dynamic "roleNames" [] ~ret:qHash<int, QByteArray>;*)
    (*dynamic "dataChanged" [arg "topLeft" qModelIndex;arg "bottomRight" qModelIndex;arg "roles" qVector<int>];*)
    dynamic "headerDataChanged" [arg "orientation" qt'Orientation;arg "first" int;arg "last" int];
    (*dynamic "layoutChanged" [arg "parents" qList<QPersistentModelIndex>;arg "hint" qAbstractItemModel'LayoutChangeHint];*)
    (*dynamic "layoutAboutToBeChanged" [arg "parents" qList<QPersistentModelIndex>;arg "hint" qAbstractItemModel'LayoutChangeHint];*)
    (*dynamic "rowsAboutToBeInserted" [arg "parent" qModelIndex;arg "start" int;arg "end" int];*)
    (*dynamic "rowsInserted" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "rowsAboutToBeRemoved" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "rowsRemoved" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "columnsAboutToBeInserted" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "columnsInserted" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "columnsAboutToBeRemoved" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "columnsRemoved" [arg "parent" qModelIndex;arg "first" int;arg "last" int];*)
    (*dynamic "modelAboutToBeReset" [];*)
    (*dynamic "modelReset" [];*)
    (*dynamic "rowsAboutToBeMoved" [arg "sourceParent" qModelIndex;arg "sourceStart" int;arg "sourceEnd" int;arg "destinationParent" qModelIndex;arg "destinationRow" int];*)
    (*dynamic "rowsMoved" [arg "parent" qModelIndex;arg "start" int;arg "end" int;arg "destination" qModelIndex;arg "row" int];*)
    (*dynamic "columnsAboutToBeMoved" [arg "sourceParent" qModelIndex;arg "sourceStart" int;arg "sourceEnd" int;arg "destinationParent" qModelIndex;arg "destinationColumn" int];*)
    (*dynamic "columnsMoved" [arg "parent" qModelIndex;arg "start" int;arg "end" int;arg "destination" qModelIndex;arg "column" int];*)
    dynamic "submit" [] ~ret:bool;
    dynamic "revert" [];
  ]

let () = with_class qItemSelection [
    constructor "" [];
    constructor "" [arg "topLeft" qModelIndex;arg "bottomRight" qModelIndex];
    dynamic "select" [arg "topLeft" qModelIndex;arg "bottomRight" qModelIndex];
    dynamic "contains" [arg "index" qModelIndex] ~ret:bool;
    dynamic "indexes" [] ~ret:qModelIndexList;
    dynamic "merge" [arg "other" qItemSelection;arg "command" qItemSelectionModel'SelectionFlags];
    static  "split" [arg "range" qItemSelectionRange; arg "other" qItemSelectionRange; arg "result" qItemSelection];
  ]

let () = with_class qItemSelectionModel [
    constructor "" [arg "model" qAbstractItemModel];
    constructor "" [arg "model" qAbstractItemModel; opt "parent" qObject];
    dynamic "currentIndex" [] ~ret:qModelIndex;
    dynamic "isSelected" [arg "index" qModelIndex] ~ret:bool;
    dynamic "isRowSelected" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "isColumnSelected" [arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "rowIntersectsSelection" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "columnIntersectsSelection" [arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "hasSelection" [] ~ret:bool;
    dynamic "selectedIndexes" [] ~ret:qModelIndexList;
    dynamic "selectedRows" [arg "column" int] ~ret:qModelIndexList;
    dynamic "selectedColumns" [arg "row" int] ~ret:qModelIndexList;
    dynamic "selection" [] ~ret:qItemSelection;
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "setCurrentIndex" [arg "index" qModelIndex;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "select" [arg "index" qModelIndex;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "select" [arg "selection" qItemSelection;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "clear" [];
    dynamic "reset" [];
    dynamic "clearSelection" [];
    dynamic "clearCurrentIndex" [];
    dynamic "selectionChanged" [arg "selected" qItemSelection;arg "deselected" qItemSelection];
    dynamic "currentChanged" [arg "current" qModelIndex;arg "previous" qModelIndex];
    dynamic "currentRowChanged" [arg "current" qModelIndex;arg "previous" qModelIndex];
    dynamic "currentColumnChanged" [arg "current" qModelIndex;arg "previous" qModelIndex];
    dynamic "modelChanged" [arg "model" qAbstractItemModel];

    signal  "selectionChanged"     [arg "" qItemSelection; arg "" qItemSelection];
    signal  "currentChanged"       [arg "" qModelIndex; arg "" qModelIndex];
    signal  "currentRowChanged"    [arg "" qModelIndex; arg "" qModelIndex];
    signal  "currentColumnChanged" [arg "" qModelIndex; arg "" qModelIndex];
    signal  "modelChanged"         [arg "" qAbstractItemModel];
    slot  "setCurrentIndex" [arg "" qModelIndex; arg "" qItemSelectionModel'SelectionFlags];
    slot  "select" [arg "" qModelIndex; arg "" qItemSelectionModel'SelectionFlags];
    slot  "select" [arg "" qItemSelection; arg "" qItemSelectionModel'SelectionFlags];
    slot  "clear" [];
    slot  "reset" [];
    slot  "clearSelection" [];
    slot  "clearCurrentIndex" [];
  ]
let () = with_class qAbstractProxyModel [
    (*constructor "" [arg "parent" (optional qObject)];*)
    dynamic "setSourceModel" [arg "sourceModel" qAbstractItemModel];
    dynamic "sourceModel" [] ~ret:qAbstractItemModel;
    dynamic "mapToSource" [arg "proxyIndex" qModelIndex] ~ret:qModelIndex;
    dynamic "mapFromSource" [arg "sourceIndex" qModelIndex] ~ret:qModelIndex;
    dynamic "mapSelectionToSource" [arg "proxySelection" qItemSelection] ~ret:qItemSelection;
    dynamic "mapSelectionFromSource" [arg "sourceSelection" qItemSelection] ~ret:qItemSelection;
    dynamic "data" [arg "proxyIndex" qModelIndex;arg "role" int] ~ret:qVariant;
    dynamic "headerData" [arg "section" int;arg "orientation" qt'Orientation;arg "role" int] ~ret:qVariant;
    (*dynamic "itemData" [arg "proxyIndex" qModelIndex] ~ret:qMap<int, QVariant>;*)
    dynamic "setData" [arg "index" qModelIndex;arg "value" qVariant;arg "role" int] ~ret:bool;
    (*dynamic "setItemData" [arg "index" qModelIndex;arg "roles" qMap<int,QVariant>] ~ret:bool;*)
    dynamic "setHeaderData" [arg "section" int;arg "orientation" qt'Orientation;arg "value" qVariant;arg "role" int] ~ret:bool;
    (*dynamic "sourceModelChanged" [];*)
  ]

let () = with_class qSortFilterProxyModel [
    constructor "" [opt "parent" qObject];
    dynamic "filterRegExp" [] ~ret:qRegExp;
    dynamic "setFilterRegExp" [arg "regExp" qRegExp];
    dynamic "filterKeyColumn" [] ~ret:int;
    dynamic "setFilterKeyColumn" [arg "column" int];
    dynamic "filterCaseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setFilterCaseSensitivity" [arg "cs" qt'CaseSensitivity];
    dynamic "sortCaseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setSortCaseSensitivity" [arg "cs" qt'CaseSensitivity];
    dynamic "isSortLocaleAware" [] ~ret:bool;
    dynamic "setSortLocaleAware" [arg "on" bool];
    dynamic "sortColumn" [] ~ret:int;
    dynamic "sortOrder" [] ~ret:qt'SortOrder;
    dynamic "dynamicSortFilter" [] ~ret:bool;
    dynamic "setDynamicSortFilter" [arg "enable" bool];
    dynamic "sortRole" [] ~ret:int;
    dynamic "setSortRole" [arg "role" int];
    dynamic "filterRole" [] ~ret:int;
    dynamic "setFilterRole" [arg "role" int];
    dynamic "setFilterRegExp" [arg "pattern" qString];
    dynamic "setFilterWildcard" [arg "pattern" qString];
    dynamic "setFilterFixedString" [arg "pattern" qString];
    dynamic "clear" [];
    dynamic "invalidate" [];
  ]

let () = with_class qItemSelectionRange [
    constructor "" [];
    constructor "" [arg "other" qItemSelectionRange];
    (*dynamic "operator=" [arg "other" qItemSelectionRange] ~ret:qItemSelectionRange;*)
    (*dynamic "operator=" [arg "other" qItemSelectionRange] ~ret:qItemSelectionRange;*)
    constructor "" [arg "topLeft" qModelIndex;arg "bottomRight" qModelIndex];
    constructor "" [arg "index" qModelIndex];
    dynamic "swap" [arg "other" qItemSelectionRange];
    dynamic "top" [] ~ret:int;
    dynamic "left" [] ~ret:int;
    dynamic "bottom" [] ~ret:int;
    dynamic "right" [] ~ret:int;
    dynamic "width" [] ~ret:int;
    dynamic "height" [] ~ret:int;
    dynamic "topLeft" [] ~ret:qPersistentModelIndex;
    dynamic "bottomRight" [] ~ret:qPersistentModelIndex;
    dynamic "parent" [] ~ret:qModelIndex;
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "contains" [arg "index" qModelIndex] ~ret:bool;
    dynamic "contains" [arg "row" int;arg "column" int;arg "parentIndex" qModelIndex] ~ret:bool;
    dynamic "intersects" [arg "other" qItemSelectionRange] ~ret:bool;
    (*dynamic "intersect" [arg "other" qItemSelectionRange] ~ret:qItemSelectionRange;*)
    dynamic "intersected" [arg "other" qItemSelectionRange] ~ret:qItemSelectionRange;
    (*dynamic "operator==" [arg "other" qItemSelectionRange] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qItemSelectionRange] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qItemSelectionRange] ~ret:bool;*)
    dynamic "isValid" [] ~ret:bool;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "indexes" [] ~ret:qModelIndexList;
  ]

let () = with_class qCoreApplication [
    (*constructor "" [arg "argc" int;arg "argv" pchar];*)
    (*static  "arguments" [] ~ret:qStringList;*)
    (*static  "setAttribute" [arg "attribute" qt'ApplicationAttribute;arg "on" bool];*)
    (*static  "testAttribute" [arg "attribute" qt'ApplicationAttribute] ~ret:bool;*)
    static  "setOrganizationDomain" [arg "orgDomain" qString];
    static  "organizationDomain" [] ~ret:qString;
    static  "setOrganizationName" [arg "orgName" qString];
    static  "organizationName" [] ~ret:qString;
    static  "setApplicationName" [arg "application" qString];
    static  "applicationName" [] ~ret:qString;
    static  "setApplicationVersion" [arg "version" qString];
    static  "applicationVersion" [] ~ret:qString;
    static  "setSetuidAllowed" [arg "allow" bool];
    static  "isSetuidAllowed" [] ~ret:bool;
    static  "instance" [] ~ret:qCoreApplication;
    static  "exec" [] ~ret:int;
    (*static  "processEvents" [arg "flags" qEventLoop'ProcessEventsFlags];*)
    (*static  "processEvents" [arg "flags" qEventLoop'ProcessEventsFlags;arg "maxtime" int];*)
    static  "exit" [arg "returnCode" int];
    static  "sendEvent" [arg "receiver" qObject;arg "event" qEvent] ~ret:bool;
    static  "postEvent" [arg "receiver" qObject;arg "event" qEvent;arg "priority" int];
    static  "sendPostedEvents" [arg "receiver" qObject;arg "event_type" int];
    static  "removePostedEvents" [arg "receiver" qObject;arg "eventType" int];
    static  "hasPendingEvents" [] ~ret:bool;
    (*static  "eventDispatcher" [] ~ret:qAbstractEventDispatcher;*)
    (*static  "setEventDispatcher" [arg "eventDispatcher" qAbstractEventDispatcher];*)
    dynamic "notify" [arg "receiver" qObject;arg "event" qEvent] ~ret:bool;
    static  "startingUp" [] ~ret:bool;
    static  "closingDown" [] ~ret:bool;
    static  "applicationDirPath" [] ~ret:qString;
    static  "applicationFilePath" [] ~ret:qString;
    static  "applicationPid" [] ~ret:qint64;
    (*static  "setLibraryPaths" [arg "paths" qStringList];*)
    (*static  "libraryPaths" [] ~ret:qStringList;*)
    static  "addLibraryPath" [arg "path" qString];
    static  "removeLibraryPath" [arg "path" qString];
    (*static  "installTranslator" [arg "translationFile" qTranslator] ~ret:bool;*)
    (*static  "removeTranslator" [arg "translationFile" qTranslator] ~ret:bool;*)
    static  "translate" [arg "context" pchar;arg "sourceText" pchar;arg "disambiguation" pchar;arg "n" int] ~ret:qString;
    (*static  "translate" [arg "context" pchar;arg "key" pchar;arg "disambiguation" pchar;arg "encoding" encoding;arg "n" int] ~ret:qString;*)
    static  "flush" [];
    (*dynamic "installNativeEventFilter" [arg "filterObj" qAbstractNativeEventFilter];*)
    (*dynamic "removeNativeEventFilter" [arg "filterObject" qAbstractNativeEventFilter];*)
    static  "isQuitLockEnabled" [] ~ret:bool;
    static  "setQuitLockEnabled" [arg "enabled" bool];
    static  "quit" [];
    (*dynamic "aboutToQuit" [];*)
    (*signal "aboutToQuit" [];*)
    slot "quit" [];
  ]

let () = with_class qObject [
    dynamic "objectName" [] ~ret:qString;
    dynamic "setObjectName" [arg "name" qString];
    (*signal "objectNameChanged" [qString];*)
    signal "destroyed" [arg "" qObject];
    slot "deleteLater" [];
    (*  slot "_q_reregisterTimers" [void*];*)
    dynamic "parent" [] ~ret:qObject;
    dynamic "setParent" [arg "parent" qObject];
    dynamic "isWidgetType" [] ~ret:bool;
    dynamic "isWindowType" [] ~ret:bool;
    dynamic "dumpObjectTree" [];
    dynamic "dumpObjectInfo" [];
    dynamic "installEventFilter" [arg "filterObj" qObject];
    dynamic "removeEventFilter" [arg "obj" qObject];
  ]

let () = with_class qFileSystemWatcher [
    constructor "" [opt "parent" qObject];
    constructor "" [arg "paths" qStringList; opt "parent" qObject];
    dynamic "addPath" [arg "path" qString] ~ret:bool;
    dynamic "addPaths" [arg "paths" qStringList] ~ret:qStringList;
    dynamic "removePath" [arg "path" qString] ~ret:bool;
    dynamic "removePaths" [arg "paths" qStringList] ~ret:qStringList;
    dynamic "files" [] ~ret:qStringList;
    dynamic "directories" [] ~ret:qStringList;
    (*signal "fileChanged" [arg "path" qString] ~private_:true;*)
    (*signal "directoryChanged" [arg "path" qString] ~private_:true;*)
  ]

let () = with_class qIODevice [
    (*constructor "" [];
      constructor "" [arg "parent" (optional qObject)];*)
    dynamic "openMode" [] ~ret:qIODevice'OpenMode;
    dynamic "setTextModeEnabled" [arg "enabled" bool];
    dynamic "isTextModeEnabled" [] ~ret:bool;
    dynamic "isOpen" [] ~ret:bool;
    dynamic "isReadable" [] ~ret:bool;
    dynamic "isWritable" [] ~ret:bool;
    dynamic "isSequential" [] ~ret:bool;
    dynamic "readChannelCount" [] ~ret:int;
    dynamic "writeChannelCount" [] ~ret:int;
    dynamic "currentReadChannel" [] ~ret:int;
    dynamic "setCurrentReadChannel" [arg "channel" int];
    dynamic "currentWriteChannel" [] ~ret:int;
    dynamic "setCurrentWriteChannel" [arg "channel" int];
    dynamic "open" [arg "mode" qIODevice'OpenMode] ~ret:bool;
    dynamic "close" [];
    dynamic "pos" [] ~ret:qint64;
    dynamic "size" [] ~ret:qint64;
    dynamic "seek" [arg "pos" qint64] ~ret:bool;
    dynamic "atEnd" [] ~ret:bool;
    dynamic "reset" [] ~ret:bool;
    dynamic "bytesAvailable" [] ~ret:qint64;
    dynamic "bytesToWrite" [] ~ret:qint64;
    dynamic "read" [arg "data" pchar;arg "maxSize" qint64] ~ret:qint64;
    dynamic "read" [arg "maxSize" qint64] ~ret:qByteArray;
    dynamic "readAll" [] ~ret:qByteArray;
    dynamic "readLine" [arg "data" pchar;arg "maxSize" qint64] ~ret:qint64;
    dynamic "readLine" [arg "maxSize" qint64] ~ret:qByteArray;
    dynamic "canReadLine" [] ~ret:bool;
    dynamic "startTransaction" [];
    dynamic "commitTransaction" [];
    dynamic "rollbackTransaction" [];
    dynamic "isTransactionStarted" [] ~ret:bool;
    dynamic "write" [arg "data" pchar;arg "maxSize" qint64] ~ret:qint64;
    dynamic "write" [arg "data" pchar] ~ret:qint64;
    dynamic "write" [arg "byteArray" qByteArray] ~ret:qint64;
    dynamic "peek" [arg "data" pchar;arg "maxSize" qint64] ~ret:qint64;
    dynamic "peek" [arg "maxSize" qint64] ~ret:qByteArray;
    dynamic "waitForReadyRead" [arg "msecs" int] ~ret:bool;
    dynamic "waitForBytesWritten" [arg "msecs" int] ~ret:bool;
    (*dynamic "ungetChar" [arg "c" pchar];
    dynamic "putChar" [arg "c" pchar] ~ret:bool;
    dynamic "getChar" [arg "c" pchar] ~ret:bool;*)
    dynamic "errorString" [] ~ret:qString;
    dynamic "readyRead" [];
    dynamic "channelReadyRead" [arg "channel" int];
    dynamic "bytesWritten" [arg "bytes" qint64];
    dynamic "channelBytesWritten" [arg "channel" int;arg "bytes" qint64];
    dynamic "aboutToClose" [];
    dynamic "readChannelFinished" [];
  ]

let () = with_class qFileDevice [
    dynamic "error" [] ~ret:qFileDevice'FileError;
    dynamic "unsetError" [];
    dynamic "handle" [] ~ret:int;
    dynamic "fileName" [] ~ret:qString;
    dynamic "flush" [] ~ret:bool;
    dynamic "resize" [arg "sz" qint64] ~ret:bool;
    dynamic "permissions" [] ~ret:qFileDevice'Permissions;
    dynamic "setPermissions" [arg "permissions" qFileDevice'Permissions] ~ret:bool;
    (*dynamic "map" [arg "offset" qint64;arg "size" qint64;arg "flags" qFileDevice'MemoryMapFlags] ~ret:uchar;
    dynamic "unmap" [arg "address" uchar] ~ret:bool;*)
  ]

let () = with_class qFile [
    constructor "" [];
    constructor "" [arg "name" qString];
    constructor "" [opt "parent" qObject];
    constructor "" [arg "name" qString; opt "parent" qObject];
    dynamic "setFileName" [arg "name" qString];
    static  "encodeName" [arg "fileName" qString] ~ret:qByteArray;
    static  "decodeName" [arg "localFileName" qByteArray] ~ret:qString;
    static  "decodeName" [arg "localFileName" pchar] ~ret:qString;
    (*static  "setEncodingFunction" [arg "function" encoderFn];*)
    (*static  "setDecodingFunction" [arg "function" decoderFn];*)
    dynamic "exists" [] ~ret:bool;
    static  "exists" [arg "fileName" qString] ~ret:bool;
    dynamic "readLink" [] ~ret:qString;
    static  "readLink" [arg "fileName" qString] ~ret:qString;
    dynamic "symLinkTarget" [] ~ret:qString;
    static  "symLinkTarget" [arg "fileName" qString] ~ret:qString;
    dynamic "remove" [] ~ret:bool;
    static  "remove" [arg "fileName" qString] ~ret:bool;
    dynamic "rename" [arg "newName" qString] ~ret:bool;
    static  "rename" [arg "oldName" qString;arg "newName" qString] ~ret:bool;
    dynamic "link" [arg "linkName" qString] ~ret:bool;
    static  "link" [arg "fileName" qString;arg "linkName" qString] ~ret:bool;
    dynamic "copy" [arg "newName" qString] ~ret:bool;
    static  "copy" [arg "fileName" qString;arg "newName" qString] ~ret:bool;
    dynamic "open" [arg "fd" int;arg "mode" qIODevice'OpenMode;arg "handleFlags" qFileDevice'FileHandleFlags] ~ret:bool;
    static  "resize" [arg "fileName" qString;arg "sz" qint64] ~ret:bool;
    static  "permissions" [arg "fileName" qString] ~ret:qFileDevice'Permissions;
    static  "setPermissions" [arg "fileName" qString;arg "permissions" qFileDevice'Permissions] ~ret:bool;
  ]

let () = with_class qByteArray [
    constructor "" [];
    constructor "" [arg "data" pchar;arg "size" int];
    (*constructor "" [arg "size" int;arg "ch" pchar];
    constructor "" [arg "other" qByteArray];*)
    (*dynamic "operator=" [arg "other" qByteArray] ~ret:qByteArray;*)
    (*dynamic "operator=" [arg "str" pchar] ~ret:qByteArray;*)
    (*constructor "" [arg "other" qByteArray];*)
    (*dynamic "operator=" [arg "other" qByteArray] ~ret:qByteArray;*)
    (*dynamic "swap" [arg "other" qByteArray];
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "resize" [arg "size" int];
    dynamic "fill" [arg "ch" pchar;arg "size" int] ~ret:qByteArray;
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "squeeze" [];*)
    dynamic "data" [] ~ret:pchar;
    (*dynamic "data" [] ~ret:pchar;
    dynamic "constData" [] ~ret:pchar;
    dynamic "clear" [];
    dynamic "at" [arg "i" int] ~ret:pchar;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:pchar;*)
    (*dynamic "operator[]" [arg "i" uint] ~ret:pchar;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:qByteRef;*)
    (*dynamic "operator[]" [arg "i" uint] ~ret:qByteRef;*)
    (*dynamic "indexOf" [arg "ch" pchar;arg "from" int] ~ret:int;
    dynamic "indexOf" [arg "str" pchar;arg "from" int] ~ret:int;
    dynamic "indexOf" [arg "ba" qByteArray;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "ch" pchar;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "str" pchar;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "ba" qByteArray;arg "from" int] ~ret:int;
    dynamic "contains" [arg "ch" pchar] ~ret:bool;
    dynamic "contains" [arg "str" pchar] ~ret:bool;
    dynamic "contains" [arg "ba" qByteArray] ~ret:bool;
    dynamic "count" [arg "ch" pchar] ~ret:int;
    dynamic "count" [arg "str" pchar] ~ret:int;
    dynamic "count" [arg "ba" qByteArray] ~ret:int;
    dynamic "left" [arg "len" int] ~ret:qByteArray;
    dynamic "right" [arg "len" int] ~ret:qByteArray;
    dynamic "mid" [arg "pos" int;arg "len" int] ~ret:qByteArray;
    dynamic "startsWith" [arg "ba" qByteArray] ~ret:bool;
    dynamic "startsWith" [arg "ch" pchar] ~ret:bool;
    dynamic "startsWith" [arg "str" pchar] ~ret:bool;
    dynamic "endsWith" [arg "ba" qByteArray] ~ret:bool;
    dynamic "endsWith" [arg "ch" pchar] ~ret:bool;
    dynamic "endsWith" [arg "str" pchar] ~ret:bool;
    dynamic "truncate" [arg "pos" int];
    dynamic "chop" [arg "n" int];
    dynamic "toLower" [] ~ret:qByteArray;
    dynamic "toUpper" [] ~ret:qByteArray;
    dynamic "trimmed" [] ~ret:qByteArray;
    dynamic "simplified" [] ~ret:qByteArray;
    dynamic "leftJustified" [arg "width" int;arg "fill" pchar;arg "truncate" bool] ~ret:qByteArray;
    dynamic "rightJustified" [arg "width" int;arg "fill" pchar;arg "truncate" bool] ~ret:qByteArray;
    dynamic "prepend" [arg "ch" pchar] ~ret:qByteArray;
    dynamic "prepend" [arg "count" int;arg "ch" pchar] ~ret:qByteArray;
    dynamic "prepend" [arg "str" pchar] ~ret:qByteArray;
    dynamic "prepend" [arg "str" pchar;arg "len" int] ~ret:qByteArray;
    dynamic "prepend" [arg "ba" qByteArray] ~ret:qByteArray;
    dynamic "append" [arg "ch" pchar] ~ret:qByteArray;
    dynamic "append" [arg "count" int;arg "ch" pchar] ~ret:qByteArray;
    dynamic "append" [arg "str" pchar] ~ret:qByteArray;
    dynamic "append" [arg "str" pchar;arg "len" int] ~ret:qByteArray;
    dynamic "append" [arg "ba" qByteArray] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "ch" pchar] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "count" int;arg "ch" pchar] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "str" pchar] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "str" pchar;arg "len" int] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "ba" qByteArray] ~ret:qByteArray;
    dynamic "remove" [arg "pos" int;arg "len" int] ~ret:qByteArray;
    dynamic "replace" [arg "pos" int;arg "len" int;arg "after" pchar] ~ret:qByteArray;
    dynamic "replace" [arg "pos" int;arg "len" int;arg "after" pchar;arg "alen" int] ~ret:qByteArray;
    dynamic "replace" [arg "pos" int;arg "len" int;arg "after" qByteArray] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" pchar] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" qByteArray] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" pchar] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "bsize" int;arg "after" pchar;arg "asize" int] ~ret:qByteArray;
    dynamic "replace" [arg "before" qByteArray;arg "after" qByteArray] ~ret:qByteArray;
    dynamic "replace" [arg "before" qByteArray;arg "after" pchar] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" qByteArray] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" pchar] ~ret:qByteArray;*)
    (*dynamic "operator+=" [arg "ch" pchar] ~ret:qByteArray;*)
    (*dynamic "operator+=" [arg "str" pchar] ~ret:qByteArray;*)
    (*dynamic "operator+=" [arg "ba" qByteArray] ~ret:qByteArray;*)
    (*dynamic "split" [arg "sep" pchar] ~ret:qList<QByteArray>;*)
    (*dynamic "repeated" [arg "times" int] ~ret:qByteArray;
    dynamic "append" [arg "str" qString] ~ret:qByteArray;
    dynamic "insert" [arg "i" int;arg "str" qString] ~ret:qByteArray;
    dynamic "replace" [arg "before" qString;arg "after" pchar] ~ret:qByteArray;
    dynamic "replace" [arg "before" pchar;arg "after" qString] ~ret:qByteArray;
    dynamic "replace" [arg "before" qString;arg "after" qByteArray] ~ret:qByteArray;*)
    (*dynamic "operator+=" [arg "str" qString] ~ret:qByteArray;*)
    (*dynamic "indexOf" [arg "str" qString;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qString;arg "from" int] ~ret:int;*)
    (*dynamic "operator==" [arg "str" qString] ~ret:bool;*)
    (*dynamic "operator!=" [arg "str" qString] ~ret:bool;*)
    (*dynamic "operator<" [arg "str" qString] ~ret:bool;*)
    (*dynamic "operator>" [arg "str" qString] ~ret:bool;*)
    (*dynamic "operator<=" [arg "str" qString] ~ret:bool;*)
    (*dynamic "operator>=" [arg "str" qString] ~ret:bool;*)
    (*dynamic "toShort" [arg "ok" bool;arg "base" int] ~ret:short;
    dynamic "toUShort" [arg "ok" bool;arg "base" int] ~ret:ushort;
    dynamic "toInt" [arg "ok" bool;arg "base" int] ~ret:int;
    dynamic "toUInt" [arg "ok" bool;arg "base" int] ~ret:uint;
    dynamic "toLong" [arg "ok" bool;arg "base" int] ~ret:long;
    dynamic "toULong" [arg "ok" bool;arg "base" int] ~ret:ulong;
    dynamic "toLongLong" [arg "ok" bool;arg "base" int] ~ret:qlonglong;
    dynamic "toULongLong" [arg "ok" bool;arg "base" int] ~ret:qulonglong;
    dynamic "toFloat" [arg "ok" bool] ~ret:float;
    dynamic "toDouble" [arg "ok" bool] ~ret:double;
    dynamic "toBase64" [arg "options" base64Options] ~ret:qByteArray;
    dynamic "toBase64" [] ~ret:qByteArray;
    dynamic "toHex" [] ~ret:qByteArray;
    dynamic "toHex" [arg "separator" pchar] ~ret:qByteArray;
    dynamic "toPercentEncoding" [arg "exclude" qByteArray;arg "include" qByteArray;arg "percent" pchar] ~ret:qByteArray;
    dynamic "setNum" [arg "n" short;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" ushort;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" int;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" uint;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" qlonglong;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" qulonglong;arg "base" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" float;arg "f" pchar;arg "prec" int] ~ret:qByteArray;
    dynamic "setNum" [arg "n" double;arg "f" pchar;arg "prec" int] ~ret:qByteArray;
    dynamic "setRawData" [arg "data" pchar;arg "size" uint] ~ret:qByteArray;
    static  "number" [arg "n" int;arg "base" int] ~ret:qByteArray;
    static  "number" [arg "n" uint;arg "base" int] ~ret:qByteArray;
    static  "number" [arg "n" qlonglong;arg "base" int] ~ret:qByteArray;
    static  "number" [arg "n" qulonglong;arg "base" int] ~ret:qByteArray;
    static  "number" [arg "n" double;arg "f" pchar;arg "prec" int] ~ret:qByteArray;
    static  "fromRawData" [arg "data" pchar;arg "size" int] ~ret:qByteArray;
    static  "fromBase64" [arg "arg0" qByteArray &base64;arg "options" base64Options] ~ret:qByteArray;
    static  "fromBase64" [arg "arg0" qByteArray &base64] ~ret:qByteArray;
    static  "fromHex" [arg "hexEncoded" qByteArray] ~ret:qByteArray;
    static  "fromPercentEncoding" [arg "input" qByteArray;arg "percent" pchar] ~ret:qByteArray;
    static  "fromCFData" [arg "data" cFDataRef] ~ret:qByteArray;
    static  "fromRawCFData" [arg "data" cFDataRef] ~ret:qByteArray;
    dynamic "toCFData" [] ~ret:cFDataRef;
    dynamic "toRawCFData" [] ~ret:cFDataRef;
    static  "fromNSData" [arg "data" nSData] ~ret:qByteArray;
    static  "fromRawNSData" [arg "data" nSData] ~ret:qByteArray;
    dynamic "toNSData" [] ~ret:nSData;
    dynamic "toRawNSData" [] ~ret:nSData;
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "push_back" [arg "ch" pchar];
    dynamic "push_back" [arg "str" pchar];
    dynamic "push_back" [arg "other" qByteArray];
    dynamic "push_front" [arg "ch" pchar];
    dynamic "push_front" [arg "str" pchar];
    dynamic "push_front" [arg "other" qByteArray];
    static  "fromStdString" [arg "str" std'string] ~ret:qByteArray;
    dynamic "toStdString" [] ~ret:std'string;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "isNull" [] ~ret:bool;*)
  ]

let () = with_class qFileInfo [
    constructor "" [];
    constructor "" [arg "file" qString];
    constructor "" [arg' `Const_ref "file" qFile];
    constructor "" [arg "dir" qDir; arg "file" qString];
    (*constructor "" [arg "fileinfo" qFileInfo];*)
    (*dynamic "operator=" [arg "fileinfo" qFileInfo] ~ret:qFileInfo;*)
    (*dynamic "operator=" [arg "other" qFileInfo] ~ret:qFileInfo;*)
    (*dynamic "swap" [arg "other" qFileInfo];*)
    (*dynamic "operator==" [arg "fileinfo" qFileInfo] ~ret:bool;*)
    (*dynamic "operator!=" [arg "fileinfo" qFileInfo] ~ret:bool;*)
    dynamic "setFile" [arg "file" qString];
    dynamic "setFile" [arg "file" qFile];
    dynamic "setFile" [arg "dir" qDir; arg "file" qString];
    dynamic "exists" [] ~ret:bool;
    static  "exists" [arg "file" qString] ~ret:bool;
    dynamic "refresh" [];
    dynamic "filePath" [] ~ret:qString;
    dynamic "absoluteFilePath" [] ~ret:qString;
    dynamic "canonicalFilePath" [] ~ret:qString;
    dynamic "fileName" [] ~ret:qString;
    dynamic "baseName" [] ~ret:qString;
    dynamic "completeBaseName" [] ~ret:qString;
    dynamic "suffix" [] ~ret:qString;
    dynamic "bundleName" [] ~ret:qString;
    dynamic "completeSuffix" [] ~ret:qString;
    dynamic "path" [] ~ret:qString;
    dynamic "absolutePath" [] ~ret:qString;
    dynamic "canonicalPath" [] ~ret:qString;
    dynamic "dir" [] ~ret:qDir;
    dynamic "absoluteDir" [] ~ret:qDir;
    dynamic "isReadable" [] ~ret:bool;
    dynamic "isWritable" [] ~ret:bool;
    dynamic "isExecutable" [] ~ret:bool;
    dynamic "isHidden" [] ~ret:bool;
    dynamic "isNativePath" [] ~ret:bool;
    dynamic "isRelative" [] ~ret:bool;
    dynamic "isAbsolute" [] ~ret:bool;
    dynamic "makeAbsolute" [] ~ret:bool;
    dynamic "isFile" [] ~ret:bool;
    dynamic "isDir" [] ~ret:bool;
    dynamic "isSymLink" [] ~ret:bool;
    dynamic "isRoot" [] ~ret:bool;
    dynamic "isBundle" [] ~ret:bool;
    dynamic "readLink" [] ~ret:qString;
    dynamic "symLinkTarget" [] ~ret:qString;
    dynamic "owner" [] ~ret:qString;
    dynamic "ownerId" [] ~ret:int;
    dynamic "group" [] ~ret:qString;
    dynamic "groupId" [] ~ret:int;
    dynamic "permission" [arg "permissions" qFileDevice'Permissions] ~ret:bool;
    dynamic "permissions" [] ~ret:qFileDevice'Permissions;
    dynamic "size" [] ~ret:qint64;
    dynamic "created" [] ~ret:qDateTime;
    dynamic "lastModified" [] ~ret:qDateTime;
    dynamic "lastRead" [] ~ret:qDateTime;
    dynamic "caching" [] ~ret:bool;
    dynamic "setCaching" [arg "enable" bool];
  ]

let () = with_class qEvent [
    constructor "" [arg "type" qEvent'Type];
    dynamic "type" [] ~ret:qEvent'Type;
    dynamic "spontaneous" [] ~ret:bool;
    dynamic "setAccepted" [arg "accepted" bool];
    dynamic "isAccepted" [] ~ret:bool;
    dynamic "accept" [];
    dynamic "ignore" [];
    (*static  "registerEventType" [arg "hint" int] ~ret:int;*)
  ]

(* END

let () = with_class qObject [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "event" [arg "e" qEvent] ~ret:bool;
    dynamic "eventFilter" [arg "watched" qObject;arg "event" qEvent] ~ret:bool;
    static  "tr" [arg "sourceText" pchar;arg "disambiguation" pchar;arg "n" int] ~ret:qString;
    static  "trUtf8" [arg "sourceText" pchar;arg "disambiguation" pchar;arg "n" int] ~ret:qString;
    (*dynamic "metaObject" [] ~ret:qMetaObject;*)
    dynamic "signalsBlocked" [] ~ret:bool;
    dynamic "blockSignals" [arg "block" bool] ~ret:bool;
    (*dynamic "thread" [] ~ret:qThread;
    dynamic "moveToThread" [arg "targetThread" qThread];*)
    (*dynamic "startTimer" [arg "interval" int;arg "timerType" qt'TimerType] ~ret:int;
    dynamic "startTimer" [arg "time" std'chrono'milliseconds;arg "timerType" qt'TimerType] ~ret:int;*)
    dynamic "killTimer" [arg "id" int];
    (*dynamic "findChild" [arg "name" qString;arg "options" qt'FindChildOptions] ~ret:t;*)
    (*dynamic "findChildren" [arg "name" qString;arg "options" qt'FindChildOptions] ~ret:qList<T>;*)
    (*dynamic "findChildren" [arg "regExp" qRegExp;arg "options" qt'FindChildOptions] ~ret:qList<T>;*)
    (*dynamic "findChildren" [arg "re" qRegularExpression;arg "options" qt'FindChildOptions] ~ret:qList<T>;*)
    (*dynamic "children" [] ~ret:qObjectList;*)
    dynamic "installEventFilter" [arg "filterObj" qObject];
    dynamic "removeEventFilter" [arg "obj" qObject];
    (*static  "connect" [arg "sender" qObject;arg "signal" pchar;arg "receiver" qObject;arg "method" pchar;arg "type" qt'ConnectionType] ~ret:qMetaObject'Connection;*)
    (*static  "connect" [arg "sender" qObject;arg "signal" qMetaMethod;arg "receiver" qObject;arg "method" qMetaMethod;arg "type" qt'ConnectionType] ~ret:qMetaObject'Connection;*)
    (*dynamic "connect" [arg "sender" qObject;arg "signal" pchar;arg "method" pchar;arg "type" qt'ConnectionType] ~ret:qMetaObject'Connection;*)
    (*static  "connect" [arg "sender" qObject;arg "signal" pointerToMemberFunction;arg "receiver" qObject;arg "method" pointerToMemberFunction;arg "type" qt'ConnectionType] ~ret:qMetaObject'Connection;*)
    (*static  "connect" [arg "sender" qObject;arg "signal" pointerToMemberFunction;arg "functor" functor] ~ret:qMetaObject'Connection;*)
    (*static  "connect" [arg "sender" qObject;arg "signal" pointerToMemberFunction;arg "context" qObject;arg "functor" functor;arg "type" qt'ConnectionType] ~ret:qMetaObject'Connection;*)
    (*static  "disconnect" [arg "sender" qObject;arg "signal" pchar;arg "receiver" qObject;arg "method" pchar] ~ret:bool;*)
    (*static  "disconnect" [arg "sender" qObject;arg "signal" qMetaMethod;arg "receiver" qObject;arg "method" qMetaMethod] ~ret:bool;*)
    (*dynamic "disconnect" [arg "signal" pchar;arg "receiver" qObject;arg "method" pchar] ~ret:bool;*)
    (*dynamic "disconnect" [arg "receiver" qObject;arg "method" pchar] ~ret:bool;*)
    (*static  "disconnect" [arg "connection" qMetaObject'Connection] ~ret:bool;*)
    (*static  "disconnect" [arg "sender" qObject;arg "signal" pointerToMemberFunction;arg "receiver" qObject;arg "method" pointerToMemberFunction] ~ret:bool;*)
    (*dynamic "setProperty" [arg "name" pchar;arg "value" qVariant] ~ret:bool;*)
    (*dynamic "property" [arg "name" pchar] ~ret:qVariant;*)
    (*dynamic "dynamicPropertyNames" [] ~ret:qList<QByteArray>;*)
    dynamic "destroyed" [arg "obj" qObject];
    dynamic "inherits" [arg "className" pchar] ~ret:bool;
    dynamic "deleteLater" [];
  ]
let () = with_class qMessageLogContext [
  ]
let () = with_class qAbstractEventDispatcher'TimerInfo [
    constructor "" [arg "timerId" int;arg "interval" int;arg "timerType" qt'TimerType];
  ]
let () = with_class qVectorIterator [
    constructor "" [arg "vector" qVector<T>];
    (*dynamic "operator=" [arg "vector" qVector<T>] ~ret:qVectorIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qUrlQuery [
    constructor "" [];
    constructor "" [arg "url" qUrl];
    constructor "" [arg "queryString" qString];
    constructor "" [arg "other" qUrlQuery];
    (*dynamic "operator=" [arg "other" qUrlQuery] ~ret:qUrlQuery;*)
    (*dynamic "operator=" [arg "other" qUrlQuery] ~ret:qUrlQuery;*)
    (*dynamic "operator==" [arg "other" qUrlQuery] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qUrlQuery] ~ret:bool;*)
    dynamic "swap" [arg "other" qUrlQuery];
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "query" [arg "encoding" qUrl'ComponentFormattingOptions] ~ret:qString;
    dynamic "setQuery" [arg "queryString" qString];
    dynamic "toString" [arg "encoding" qUrl'ComponentFormattingOptions] ~ret:qString;
    dynamic "setQueryDelimiters" [arg "valueDelimiter" qChar;arg "pairDelimiter" qChar];
    dynamic "queryValueDelimiter" [] ~ret:qChar;
    dynamic "queryPairDelimiter" [] ~ret:qChar;
    dynamic "setQueryItems" [arg "query" qList<QPair<QString,QString> >];
    (*dynamic "queryItems" [arg "encoding" qUrl'ComponentFormattingOptions] ~ret:qList<QPair<QString, QString> >;*)
    dynamic "hasQueryItem" [arg "key" qString] ~ret:bool;
    dynamic "addQueryItem" [arg "key" qString;arg "value" qString];
    dynamic "removeQueryItem" [arg "key" qString];
    dynamic "queryItemValue" [arg "key" qString;arg "encoding" qUrl'ComponentFormattingOptions] ~ret:qString;
    dynamic "allQueryItemValues" [arg "key" qString;arg "encoding" qUrl'ComponentFormattingOptions] ~ret:qStringList;
    dynamic "removeAllQueryItems" [arg "key" qString];
    static  "defaultQueryValueDelimiter" [] ~ret:qChar;
    static  "defaultQueryPairDelimiter" [] ~ret:qChar;
  ]
let () = with_class qMap'const_iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    dynamic "key" [] ~ret:key;
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qPoint [
    constructor "" [];
    constructor "" [arg "xpos" int;arg "ypos" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "x" [] ~ret:int;
    dynamic "y" [] ~ret:int;
    dynamic "setX" [arg "x" int];
    dynamic "setY" [arg "y" int];
    dynamic "manhattanLength" [] ~ret:int;
    dynamic "rx" [] ~ret:int;
    dynamic "ry" [] ~ret:int;
    (*dynamic "operator+=" [arg "point" qPoint] ~ret:qPoint;*)
    (*dynamic "operator-=" [arg "point" qPoint] ~ret:qPoint;*)
    (*dynamic "operator*=" [arg "factor" float] ~ret:qPoint;*)
    (*dynamic "operator*=" [arg "factor" double] ~ret:qPoint;*)
    (*dynamic "operator*=" [arg "factor" int] ~ret:qPoint;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qPoint;*)
    static  "dotProduct" [arg "arg0" qPoint &p1;arg "arg1" qPoint &p2] ~ret:int;
    dynamic "toCGPoint" [] ~ret:cGPoint;
  ]
let () = with_class qSet'const_iterator [
    constructor "" [];
    constructor "" [arg "other" const_iterator];
    constructor "" [arg "other" iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qJsonObject'iterator [
    constructor "" [];
    dynamic "key" [] ~ret:qString;
    dynamic "value" [] ~ret:qJsonValueRef;
    (*dynamic "operator*" [] ~ret:qJsonValueRef;*)
    (*dynamic "operator->" [] ~ret:qJsonValueRef;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
  ]
let () = with_class qXmlStreamNotationDeclaration [
    constructor "" [];
    constructor "" [arg "other" qXmlStreamNotationDeclaration];
    constructor "" [arg "other" qXmlStreamNotationDeclaration];
    (*dynamic "operator=" [arg "other" qXmlStreamNotationDeclaration] ~ret:qXmlStreamNotationDeclaration;*)
    (*dynamic "operator=" [arg "other" qXmlStreamNotationDeclaration] ~ret:qXmlStreamNotationDeclaration;*)
    dynamic "name" [] ~ret:qStringRef;
    dynamic "systemId" [] ~ret:qStringRef;
    dynamic "publicId" [] ~ret:qStringRef;
    (*dynamic "operator==" [arg "other" qXmlStreamNotationDeclaration] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qXmlStreamNotationDeclaration] ~ret:bool;*)
  ]
let () = with_class qJsonParseError [
    dynamic "errorString" [] ~ret:qString;
  ]
let () = with_class qMetaObject [
    dynamic "className" [] ~ret:pchar;
    dynamic "superClass" [] ~ret:qMetaObject;
    dynamic "inherits" [arg "metaObject" qMetaObject] ~ret:bool;
    dynamic "methodOffset" [] ~ret:int;
    dynamic "enumeratorOffset" [] ~ret:int;
    dynamic "propertyOffset" [] ~ret:int;
    dynamic "classInfoOffset" [] ~ret:int;
    dynamic "constructorCount" [] ~ret:int;
    dynamic "methodCount" [] ~ret:int;
    dynamic "enumeratorCount" [] ~ret:int;
    dynamic "propertyCount" [] ~ret:int;
    dynamic "classInfoCount" [] ~ret:int;
    dynamic "indexOfConstructor" [arg "constructor" pchar] ~ret:int;
    dynamic "indexOfMethod" [arg "method" pchar] ~ret:int;
    dynamic "indexOfSignal" [arg "signal" pchar] ~ret:int;
    dynamic "indexOfSlot" [arg "slot" pchar] ~ret:int;
    dynamic "indexOfEnumerator" [arg "name" pchar] ~ret:int;
    dynamic "indexOfProperty" [arg "name" pchar] ~ret:int;
    dynamic "indexOfClassInfo" [arg "name" pchar] ~ret:int;
    dynamic "constructor" [arg "index" int] ~ret:qMetaMethod;
    dynamic "method" [arg "index" int] ~ret:qMetaMethod;
    dynamic "enumerator" [arg "index" int] ~ret:qMetaEnum;
    dynamic "property" [arg "index" int] ~ret:qMetaProperty;
    dynamic "classInfo" [arg "index" int] ~ret:qMetaClassInfo;
    dynamic "userProperty" [] ~ret:qMetaProperty;
    static  "checkConnectArgs" [arg "signal" pchar;arg "method" pchar] ~ret:bool;
    static  "checkConnectArgs" [arg "signal" qMetaMethod;arg "method" qMetaMethod] ~ret:bool;
    static  "normalizedSignature" [arg "method" pchar] ~ret:qByteArray;
    static  "normalizedType" [arg "type" pchar] ~ret:qByteArray;
    static  "connectSlotsByName" [arg "object" qObject];
    static  "invokeMethod" [arg "obj" qObject;arg "member" pchar;arg "type" qt'ConnectionType;arg "ret" qGenericReturnArgument;arg "arg4" qGenericArgument val0;arg "arg5" qGenericArgument val1;arg "arg6" qGenericArgument val2;arg "arg7" qGenericArgument val3;arg "arg8" qGenericArgument val4;arg "arg9" qGenericArgument val5;arg "arg10" qGenericArgument val6;arg "arg11" qGenericArgument val7;arg "arg12" qGenericArgument val8;arg "arg13" qGenericArgument val9] ~ret:bool;
    static  "invokeMethod" [arg "obj" qObject;arg "member" pchar;arg "ret" qGenericReturnArgument;arg "arg3" qGenericArgument val0;arg "arg4" qGenericArgument val1;arg "arg5" qGenericArgument val2;arg "arg6" qGenericArgument val3;arg "arg7" qGenericArgument val4;arg "arg8" qGenericArgument val5;arg "arg9" qGenericArgument val6;arg "arg10" qGenericArgument val7;arg "arg11" qGenericArgument val8;arg "arg12" qGenericArgument val9] ~ret:bool;
    static  "invokeMethod" [arg "obj" qObject;arg "member" pchar;arg "type" qt'ConnectionType;arg "arg3" qGenericArgument val0;arg "arg4" qGenericArgument val1;arg "arg5" qGenericArgument val2;arg "arg6" qGenericArgument val3;arg "arg7" qGenericArgument val4;arg "arg8" qGenericArgument val5;arg "arg9" qGenericArgument val6;arg "arg10" qGenericArgument val7;arg "arg11" qGenericArgument val8;arg "arg12" qGenericArgument val9] ~ret:bool;
    static  "invokeMethod" [arg "obj" qObject;arg "member" pchar;arg "arg2" qGenericArgument val0;arg "arg3" qGenericArgument val1;arg "arg4" qGenericArgument val2;arg "arg5" qGenericArgument val3;arg "arg6" qGenericArgument val4;arg "arg7" qGenericArgument val5;arg "arg8" qGenericArgument val6;arg "arg9" qGenericArgument val7;arg "arg10" qGenericArgument val8;arg "arg11" qGenericArgument val9] ~ret:bool;
    dynamic "newInstance" [arg "arg0" qGenericArgument val0;arg "arg1" qGenericArgument val1;arg "arg2" qGenericArgument val2;arg "arg3" qGenericArgument val3;arg "arg4" qGenericArgument val4;arg "arg5" qGenericArgument val5;arg "arg6" qGenericArgument val6;arg "arg7" qGenericArgument val7;arg "arg8" qGenericArgument val8;arg "arg9" qGenericArgument val9] ~ret:qObject;
  ]
let () = with_class qTextDecoder [
    constructor "" [arg "codec" qTextCodec];
    constructor "" [arg "codec" qTextCodec;arg "flags" qTextCodec'ConversionFlags];
    dynamic "toUnicode" [arg "chars" pchar;arg "len" int] ~ret:qString;
    dynamic "toUnicode" [arg "ba" qByteArray] ~ret:qString;
    dynamic "toUnicode" [arg "target" qString;arg "chars" pchar;arg "len" int];
  ]
let () = with_class qEasingCurve [
    constructor "" [arg "type" type];
    constructor "" [arg "other" qEasingCurve];
    (*dynamic "operator=" [arg "other" qEasingCurve] ~ret:qEasingCurve;*)
    constructor "" [arg "other" qEasingCurve];
    (*dynamic "operator=" [arg "other" qEasingCurve] ~ret:qEasingCurve;*)
    dynamic "swap" [arg "other" qEasingCurve];
    (*dynamic "operator==" [arg "other" qEasingCurve] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qEasingCurve] ~ret:bool;*)
    dynamic "amplitude" [] ~ret:qreal;
    dynamic "setAmplitude" [arg "amplitude" qreal];
    dynamic "period" [] ~ret:qreal;
    dynamic "setPeriod" [arg "period" qreal];
    dynamic "overshoot" [] ~ret:qreal;
    dynamic "setOvershoot" [arg "overshoot" qreal];
    dynamic "addCubicBezierSegment" [arg "arg0" qPointF &c1;arg "arg1" qPointF &c2;arg "endPoint" qPointF];
    dynamic "addTCBSegment" [arg "nextPoint" qPointF;arg "t" qreal;arg "c" qreal;arg "b" qreal];
    (*dynamic "toCubicSpline" [] ~ret:qVector<QPointF>;*)
    (*dynamic "cubicBezierSpline" [] ~ret:qList<QPointF>;*)
    (*dynamic "type" [] ~ret:type;*)
    dynamic "setType" [arg "type" type];
    dynamic "setCustomType" [arg "func" easingFunction];
    dynamic "customType" [] ~ret:easingFunction;
    dynamic "valueForProgress" [arg "progress" qreal] ~ret:qreal;
  ]
let () = with_class qMap'key_iterator [
    constructor "" [];
    constructor "" [arg "o" const_iterator];
    (*dynamic "operator*" [] ~ret:key;*)
    (*dynamic "operator->" [] ~ret:key;*)
    (*dynamic "operator==" [arg "other" key_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" key_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:key_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:key_iterator;*)
    (*dynamic "operator--" [] ~ret:key_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:key_iterator;*)
    dynamic "base" [] ~ret:const_iterator;
  ]
let () = with_class qTimeZone [
    constructor "" [];
    constructor "" [arg "ianaId" qByteArray];
    constructor "" [arg "offsetSeconds" int];
    constructor "" [arg "ianaId" qByteArray;arg "offsetSeconds" int;arg "name" qString;arg "abbreviation" qString;arg "country" qLocale'Country;arg "comment" qString];
    constructor "" [arg "other" qTimeZone];
    (*dynamic "operator=" [arg "other" qTimeZone] ~ret:qTimeZone;*)
    (*dynamic "operator=" [arg "other" qTimeZone] ~ret:qTimeZone;*)
    dynamic "swap" [arg "other" qTimeZone];
    (*dynamic "operator==" [arg "other" qTimeZone] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qTimeZone] ~ret:bool;*)
    dynamic "isValid" [] ~ret:bool;
    dynamic "id" [] ~ret:qByteArray;
    dynamic "country" [] ~ret:qLocale'Country;
    dynamic "comment" [] ~ret:qString;
    dynamic "displayName" [arg "atDateTime" qDateTime;arg "nameType" qTimeZone'NameType;arg "locale" qLocale] ~ret:qString;
    dynamic "displayName" [arg "timeType" qTimeZone'TimeType;arg "nameType" qTimeZone'NameType;arg "locale" qLocale] ~ret:qString;
    dynamic "abbreviation" [arg "atDateTime" qDateTime] ~ret:qString;
    dynamic "offsetFromUtc" [arg "atDateTime" qDateTime] ~ret:int;
    dynamic "standardTimeOffset" [arg "atDateTime" qDateTime] ~ret:int;
    dynamic "daylightTimeOffset" [arg "atDateTime" qDateTime] ~ret:int;
    dynamic "hasDaylightTime" [] ~ret:bool;
    dynamic "isDaylightTime" [arg "atDateTime" qDateTime] ~ret:bool;
    dynamic "offsetData" [arg "forDateTime" qDateTime] ~ret:offsetData;
    dynamic "hasTransitions" [] ~ret:bool;
    dynamic "nextTransition" [arg "afterDateTime" qDateTime] ~ret:offsetData;
    dynamic "previousTransition" [arg "beforeDateTime" qDateTime] ~ret:offsetData;
    dynamic "transitions" [arg "fromDateTime" qDateTime;arg "toDateTime" qDateTime] ~ret:offsetDataList;
    static  "systemTimeZoneId" [] ~ret:qByteArray;
    static  "systemTimeZone" [] ~ret:qTimeZone;
    static  "utc" [] ~ret:qTimeZone;
    static  "isTimeZoneIdAvailable" [arg "ianaId" qByteArray] ~ret:bool;
    (*static  "availableTimeZoneIds" [] ~ret:qList<QByteArray>;*)
    (*static  "availableTimeZoneIds" [arg "country" qLocale'Country] ~ret:qList<QByteArray>;*)
    (*static  "availableTimeZoneIds" [arg "offsetSeconds" int] ~ret:qList<QByteArray>;*)
    static  "ianaIdToWindowsId" [arg "ianaId" qByteArray] ~ret:qByteArray;
    static  "windowsIdToDefaultIanaId" [arg "windowsId" qByteArray] ~ret:qByteArray;
    static  "windowsIdToDefaultIanaId" [arg "windowsId" qByteArray;arg "country" qLocale'Country] ~ret:qByteArray;
    (*static  "windowsIdToIanaIds" [arg "windowsId" qByteArray] ~ret:qList<QByteArray>;*)
    (*static  "windowsIdToIanaIds" [arg "windowsId" qByteArray;arg "country" qLocale'Country] ~ret:qList<QByteArray>;*)
    static  "fromCFTimeZone" [arg "timeZone" cFTimeZoneRef] ~ret:qTimeZone;
    dynamic "toCFTimeZone" [] ~ret:cFTimeZoneRef;
    static  "fromNSTimeZone" [arg "timeZone" nSTimeZone] ~ret:qTimeZone;
    dynamic "toNSTimeZone" [] ~ret:nSTimeZone;
  ]
let () = with_class qWeakPointer [
    dynamic "isNull" [] ~ret:bool;
    constructor "" [];
    (*dynamic "operator!" [] ~ret:bool;*)
    constructor "" [];
    constructor "" [arg "other" qWeakPointer<T>];
    constructor "" [arg "other" qSharedPointer<T>];
    (*dynamic "operator=" [arg "other" qWeakPointer<T>] ~ret:qWeakPointer<T>;*)
    (*dynamic "operator=" [arg "other" qSharedPointer<T>] ~ret:qWeakPointer<T>;*)
    constructor "" [opt "obj" qObject];
    (*dynamic "operator=" [arg "obj" qObject] ~ret:qWeakPointer<T>;*)
    dynamic "swap" [arg "other" qWeakPointer<T>];
    (*dynamic "data" [] ~ret:t;*)
    dynamic "clear" [];
    (*dynamic "toStrongRef" [] ~ret:qSharedPointer<T>;*)
    (*dynamic "lock" [] ~ret:qSharedPointer<T>;*)
  ]
let () = with_class qLineF [
    constructor "" [];
    constructor "" [arg "arg0" qPointF &p1;arg "arg1" qPointF &p2];
    constructor "" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2];
    constructor "" [arg "line" qLine];
    static  "fromPolar" [arg "length" qreal;arg "angle" qreal] ~ret:qLineF;
    dynamic "isNull" [] ~ret:bool;
    dynamic "p1" [] ~ret:qPointF;
    dynamic "p2" [] ~ret:qPointF;
    dynamic "x1" [] ~ret:qreal;
    dynamic "y1" [] ~ret:qreal;
    dynamic "x2" [] ~ret:qreal;
    dynamic "y2" [] ~ret:qreal;
    dynamic "dx" [] ~ret:qreal;
    dynamic "dy" [] ~ret:qreal;
    dynamic "length" [] ~ret:qreal;
    dynamic "setLength" [arg "length" qreal];
    dynamic "angle" [] ~ret:qreal;
    dynamic "setAngle" [arg "angle" qreal];
    dynamic "angleTo" [arg "line" qLineF] ~ret:qreal;
    dynamic "unitVector" [] ~ret:qLineF;
    dynamic "normalVector" [] ~ret:qLineF;
    dynamic "intersect" [arg "line" qLineF;arg "intersectionPoint" qPointF] ~ret:intersectType;
    dynamic "angle" [arg "line" qLineF] ~ret:qreal;
    dynamic "pointAt" [arg "t" qreal] ~ret:qPointF;
    dynamic "translate" [arg "offset" qPointF];
    dynamic "translate" [arg "dx" qreal;arg "dy" qreal];
    dynamic "translated" [arg "offset" qPointF] ~ret:qLineF;
    dynamic "translated" [arg "dx" qreal;arg "dy" qreal] ~ret:qLineF;
    dynamic "center" [] ~ret:qPointF;
    dynamic "setP1" [arg "arg0" qPointF &p1];
    dynamic "setP2" [arg "arg0" qPointF &p2];
    dynamic "setPoints" [arg "arg0" qPointF &p1;arg "arg1" qPointF &p2];
    dynamic "setLine" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2];
    (*dynamic "operator==" [arg "line" qLineF] ~ret:bool;*)
    (*dynamic "operator!=" [arg "line" qLineF] ~ret:bool;*)
    dynamic "toLine" [] ~ret:qLine;
  ]
let () = with_class qPair [
    constructor "" [];
    constructor "" [arg "arg0" t1 &value1;arg "arg1" t2 &value2];
    constructor "" [arg "p" qPair<TT1,TT2>];
    (*dynamic "operator=" [arg "p" qPair<TT1,TT2>] ~ret:qPair;*)
    constructor "" [arg "p" qPair<TT1, TT2>];
    (*dynamic "operator=" [arg "p" qPair<TT1,TT2>] ~ret:qPair;*)
    dynamic "swap" [arg "other" qPair];
  ]
let () = with_class qMimeDatabase [
    constructor "" [];
    dynamic "mimeTypeForName" [arg "nameOrAlias" qString] ~ret:qMimeType;
    dynamic "mimeTypeForFile" [arg "fileName" qString;arg "mode" matchMode] ~ret:qMimeType;
    dynamic "mimeTypeForFile" [arg "fileInfo" qFileInfo;arg "mode" matchMode] ~ret:qMimeType;
    (*dynamic "mimeTypesForFileName" [arg "fileName" qString] ~ret:qList<QMimeType>;*)
    dynamic "mimeTypeForData" [arg "data" qByteArray] ~ret:qMimeType;
    dynamic "mimeTypeForData" [arg "device" qIODevice] ~ret:qMimeType;
    dynamic "mimeTypeForUrl" [arg "url" qUrl] ~ret:qMimeType;
    dynamic "mimeTypeForFileNameAndData" [arg "fileName" qString;arg "device" qIODevice] ~ret:qMimeType;
    dynamic "mimeTypeForFileNameAndData" [arg "fileName" qString;arg "data" qByteArray] ~ret:qMimeType;
    dynamic "suffixForFileName" [arg "fileName" qString] ~ret:qString;
    (*dynamic "allMimeTypes" [] ~ret:qList<QMimeType>;*)
  ]
let () = with_class qSet'iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    (*dynamic "operator=" [arg "other" iterator] ~ret:iterator;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
  ]
let () = with_class qXmlStreamEntityDeclaration [
    constructor "" [];
    constructor "" [arg "other" qXmlStreamEntityDeclaration];
    constructor "" [arg "other" qXmlStreamEntityDeclaration];
    (*dynamic "operator=" [arg "other" qXmlStreamEntityDeclaration] ~ret:qXmlStreamEntityDeclaration;*)
    (*dynamic "operator=" [arg "other" qXmlStreamEntityDeclaration] ~ret:qXmlStreamEntityDeclaration;*)
    dynamic "name" [] ~ret:qStringRef;
    dynamic "notationName" [] ~ret:qStringRef;
    dynamic "systemId" [] ~ret:qStringRef;
    dynamic "publicId" [] ~ret:qStringRef;
    dynamic "value" [] ~ret:qStringRef;
    (*dynamic "operator==" [arg "other" qXmlStreamEntityDeclaration] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qXmlStreamEntityDeclaration] ~ret:bool;*)
  ]
let () = with_class qSignalBlocker [
    constructor "" [opt "object" qObject];
    constructor "" [opt "object" qObject];
    constructor "" [arg "other" qSignalBlocker];
    (*dynamic "operator=" [arg "other" qSignalBlocker] ~ret:qSignalBlocker;*)
    dynamic "reblock" [];
    dynamic "unblock" [];
  ]
(*let () = with_class qFlag [
    constructor "" [arg "value" int];
    constructor "" [];
    constructor "" [arg "value" uint];
    constructor "" [arg "value" short];
    constructor "" [arg "value" ushort];
    constructor "" [];
  ]*)
let () = with_class qMutexLocker [
    constructor "" [arg "mutex" qMutex];
    dynamic "unlock" [];
    dynamic "relock" [];
    dynamic "mutex" [] ~ret:qMutex;
  ]
let () = with_class qCollator [
    constructor "" [arg "locale" qLocale];
    constructor "" [arg "other" qCollator];
    (*dynamic "operator=" [arg "other" qCollator] ~ret:qCollator;*)
    constructor "" [arg "other" qCollator];
    (*dynamic "operator=" [arg "other" qCollator] ~ret:qCollator;*)
    dynamic "swap" [arg "other" qCollator];
    dynamic "setLocale" [arg "locale" qLocale];
    dynamic "locale" [] ~ret:qLocale;
    dynamic "caseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setCaseSensitivity" [arg "sensitivity" qt'CaseSensitivity];
    dynamic "setNumericMode" [arg "on" bool];
    dynamic "numericMode" [] ~ret:bool;
    dynamic "setIgnorePunctuation" [arg "on" bool];
    dynamic "ignorePunctuation" [] ~ret:bool;
    dynamic "compare" [arg "arg0" qString &s1;arg "arg1" qString &s2] ~ret:int;
    dynamic "compare" [arg "arg0" qStringRef &s1;arg "arg1" qStringRef &s2] ~ret:int;
    dynamic "compare" [arg "arg0" qChar *s1;arg "arg1" int len1;arg "arg2" qChar *s2;arg "arg3" int len2] ~ret:int;
    dynamic "sortKey" [arg "string" qString] ~ret:qCollatorSortKey;
  ]
let () = with_class qMapIterator [
    constructor "" [arg "map" qMap<Key,T>];
    (*dynamic "operator=" [arg "map" qMap<Key,T>] ~ret:qMapIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    dynamic "next" [] ~ret:item;
    dynamic "peekNext" [] ~ret:item;
    dynamic "hasPrevious" [] ~ret:bool;
    dynamic "previous" [] ~ret:item;
    dynamic "peekPrevious" [] ~ret:item;
    (*dynamic "value" [] ~ret:t;*)
    dynamic "key" [] ~ret:key;
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qByteArrayMatcher [
    constructor "" [];
    constructor "" [arg "pattern" qByteArray];
    constructor "" [arg "pattern" pchar;arg "length" int];
    constructor "" [arg "other" qByteArrayMatcher];
    (*dynamic "operator=" [arg "other" qByteArrayMatcher] ~ret:qByteArrayMatcher;*)
    dynamic "setPattern" [arg "pattern" qByteArray];
    dynamic "indexIn" [arg "ba" qByteArray;arg "from" int] ~ret:int;
    dynamic "indexIn" [arg "str" pchar;arg "len" int;arg "from" int] ~ret:int;
    dynamic "pattern" [] ~ret:qByteArray;
  ]
let () = with_class qJsonDocument [
    constructor "" [];
    constructor "" [arg "object" qJsonObject];
    constructor "" [arg "array" qJsonArray];
    constructor "" [arg "other" qJsonDocument];
    (*dynamic "operator=" [arg "other" qJsonDocument] ~ret:qJsonDocument;*)
    static  "fromRawData" [arg "data" pchar;arg "size" int;arg "validation" dataValidation] ~ret:qJsonDocument;
    dynamic "rawData" [arg "size" int] ~ret:pchar;
    static  "fromBinaryData" [arg "data" qByteArray;arg "validation" dataValidation] ~ret:qJsonDocument;
    dynamic "toBinaryData" [] ~ret:qByteArray;
    static  "fromVariant" [arg "variant" qVariant] ~ret:qJsonDocument;
    dynamic "toVariant" [] ~ret:qVariant;
    static  "fromJson" [arg "json" qByteArray;arg "error" qJsonParseError] ~ret:qJsonDocument;
    dynamic "toJson" [arg "format" jsonFormat] ~ret:qByteArray;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isArray" [] ~ret:bool;
    dynamic "isObject" [] ~ret:bool;
    dynamic "object" [] ~ret:qJsonObject;
    dynamic "array" [] ~ret:qJsonArray;
    dynamic "setObject" [arg "object" qJsonObject];
    dynamic "setArray" [arg "array" qJsonArray];
    (*dynamic "operator==" [arg "other" qJsonDocument] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qJsonDocument] ~ret:bool;*)
    dynamic "isNull" [] ~ret:bool;
  ]
let () = with_class qSequentialIterable'const_iterator [
    constructor "" [arg "other" const_iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    (*dynamic "operator*" [] ~ret:qVariant;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qMap'iterator [
    constructor "" [];
    dynamic "key" [] ~ret:key;
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
  ]
let () = with_class qVersionNumber [
    constructor "" [];
    constructor "" [arg "seg" qVector<int>];
    constructor "" [arg "seg" qVector<int>];
    constructor "" [arg "args" std'initializer_list<int>];
    constructor "" [arg "maj" int];
    constructor "" [arg "maj" int;arg "min" int];
    constructor "" [arg "maj" int;arg "min" int;arg "mic" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isNormalized" [] ~ret:bool;
    dynamic "majorVersion" [] ~ret:int;
    dynamic "minorVersion" [] ~ret:int;
    dynamic "microVersion" [] ~ret:int;
    dynamic "normalized" [] ~ret:qVersionNumber;
    (*dynamic "segments" [] ~ret:qVector<int>;*)
    dynamic "segmentAt" [arg "index" int] ~ret:int;
    dynamic "segmentCount" [] ~ret:int;
    dynamic "isPrefixOf" [arg "other" qVersionNumber] ~ret:bool;
    static  "compare" [arg "arg0" qVersionNumber &v1;arg "arg1" qVersionNumber &v2] ~ret:int;
    static  "commonPrefix" [arg "arg0" qVersionNumber &v1;arg "arg1" qVersionNumber &v2] ~ret:qVersionNumber;
    dynamic "toString" [] ~ret:qString;
    static  "fromString" [arg "string" qString;arg "suffixIndex" int] ~ret:qVersionNumber;
  ]
let () = with_class qXmlStreamEntityResolver [
    dynamic "resolveUndeclaredEntity" [arg "name" qString] ~ret:qString;
  ]
let () = with_class qPointer [
    constructor "" [];
    constructor "" [arg "p" t];
    dynamic "swap" [arg "other" qPointer];
    (*dynamic "operator=" [arg "p" t] ~ret:qPointer<T>;*)
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    constructor "" [];
    dynamic "isNull" [] ~ret:bool;
    dynamic "clear" [];
  ]
let () = with_class qLatin1Char [
    constructor "" [arg "c" pchar];
    dynamic "toLatin1" [] ~ret:pchar;
    dynamic "unicode" [] ~ret:ushort;
  ]
let () = with_class qScopedPointer [
    constructor "" [arg "p" t];
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator!" [] ~ret:bool;*)
    constructor "" [];
    (*dynamic "data" [] ~ret:t;*)
    dynamic "isNull" [] ~ret:bool;
    dynamic "reset" [arg "other" t];
    (*dynamic "take" [] ~ret:t;*)
    dynamic "swap" [arg "other" qScopedPointer<T,Cleanup>];
  ]
let () = with_class qDebug [
    constructor "" [arg "device" qIODevice];
    constructor "" [arg "string" qString];
    constructor "" [arg "type" qtMsgType];
    constructor "" [arg "other" qDebug];
    (*dynamic "operator=" [arg "other" qDebug] ~ret:qDebug;*)
    dynamic "swap" [arg "other" qDebug];
    dynamic "resetFormat" [] ~ret:qDebug;
    dynamic "space" [] ~ret:qDebug;
    dynamic "nospace" [] ~ret:qDebug;
    dynamic "maybeSpace" [] ~ret:qDebug;
    dynamic "verbosity" [] ~ret:int;
    dynamic "setVerbosity" [arg "verbosityLevel" int];
    dynamic "autoInsertSpaces" [] ~ret:bool;
    dynamic "setAutoInsertSpaces" [arg "b" bool];
    dynamic "quote" [] ~ret:qDebug;
    dynamic "noquote" [] ~ret:qDebug;
    dynamic "maybeQuote" [arg "c" pchar] ~ret:qDebug;
    (*dynamic "operator<<" [arg "t" qChar] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "t" bool] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "t" pchar] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" signed short] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" unsigned short] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "t" char16_t] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "t" char32_t] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" signed int] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" unsigned int] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "l" signed long] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "l" unsigned long] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" qint64] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "i" quint64] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "f" float] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "f" double] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "s" pchar] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "s" qString] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "s" qStringRef] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "s" qLatin1String] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "b" qByteArray] ~ret:qDebug;*)
    (*dynamic "operator<<" [arg "p" void] ~ret:qDebug;*)
  ]
let () = with_class qResource [
    constructor "" [arg "file" qString;arg "locale" qLocale];
    dynamic "setFileName" [arg "file" qString];
    dynamic "fileName" [] ~ret:qString;
    dynamic "absoluteFilePath" [] ~ret:qString;
    dynamic "setLocale" [arg "locale" qLocale];
    dynamic "locale" [] ~ret:qLocale;
    dynamic "isValid" [] ~ret:bool;
    dynamic "isCompressed" [] ~ret:bool;
    dynamic "size" [] ~ret:qint64;
    dynamic "data" [] ~ret:uchar;
    dynamic "lastModified" [] ~ret:qDateTime;
    static  "addSearchPath" [arg "path" qString];
    static  "searchPaths" [] ~ret:qStringList;
    static  "registerResource" [arg "rccFileName" qString;arg "mapRoot" qString] ~ret:bool;
    static  "unregisterResource" [arg "rccFileName" qString;arg "mapRoot" qString] ~ret:bool;
    static  "registerResource" [arg "rccData" uchar;arg "mapRoot" qString] ~ret:bool;
    static  "unregisterResource" [arg "rccData" uchar;arg "mapRoot" qString] ~ret:bool;
  ]
let () = with_class qMutableSetIterator [
    constructor "" [arg "set" qSet<T>];
    (*dynamic "operator=" [arg "set" qSet<T>] ~ret:qMutableSetIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "remove" [];
    (*dynamic "value" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qEnableSharedFromThis [
    (*dynamic "sharedFromThis" [] ~ret:qSharedPointer<T>;*)
    (*dynamic "sharedFromThis" [] ~ret:qSharedPointer<const T>;*)
  ]
let () = with_class qHash [
    constructor "" [];
    constructor "" [arg "list" std'initializer_list<std'pair<Key,T> >];
    constructor "" [arg "other" qHash];
    (*dynamic "operator=" [arg "other" qHash] ~ret:qHash;*)
    constructor "" [arg "other" qHash];
    (*dynamic "operator=" [arg "other" qHash] ~ret:qHash;*)
    dynamic "swap" [arg "other" qHash];
    (*dynamic "operator==" [arg "other" qHash] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qHash] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "squeeze" [];
    dynamic "clear" [];
    dynamic "remove" [arg "key" key] ~ret:int;
    (*dynamic "take" [arg "key" key] ~ret:t;*)
    dynamic "contains" [arg "key" key] ~ret:bool;
    dynamic "key" [arg "value" t] ~ret:key;
    dynamic "key" [arg "value" t;arg "defaultKey" key] ~ret:key;
    (*dynamic "value" [arg "key" key] ~ret:t;*)
    (*dynamic "value" [arg "key" key;arg "defaultValue" t] ~ret:t;*)
    (*dynamic "operator[]" [arg "key" key] ~ret:t;*)
    (*dynamic "operator[]" [arg "key" key] ~ret:t;*)
    (*dynamic "uniqueKeys" [] ~ret:qList<Key>;*)
    (*dynamic "keys" [] ~ret:qList<Key>;*)
    (*dynamic "keys" [arg "value" t] ~ret:qList<Key>;*)
    (*dynamic "values" [] ~ret:qList<T>;*)
    (*dynamic "values" [arg "key" key] ~ret:qList<T>;*)
    dynamic "count" [arg "key" key] ~ret:int;
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "keyBegin" [] ~ret:key_iterator;
    dynamic "keyEnd" [] ~ret:key_iterator;
    (*dynamic "equal_range" [arg "key" key] ~ret:qPair<iterator, iterator>;*)
    (*dynamic "equal_range" [arg "key" key] ~ret:qPair<const_iterator, const_iterator>;*)
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "erase" [arg "pos" const_iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    dynamic "find" [arg "key" key] ~ret:iterator;
    dynamic "find" [arg "key" key] ~ret:const_iterator;
    dynamic "constFind" [arg "key" key] ~ret:const_iterator;
    dynamic "insert" [arg "key" key;arg "value" t] ~ret:iterator;
    dynamic "insertMulti" [arg "key" key;arg "value" t] ~ret:iterator;
    dynamic "unite" [arg "other" qHash] ~ret:qHash;
    dynamic "empty" [] ~ret:bool;
  ]
let () = with_class qLocale [
    constructor "" [];
    constructor "" [arg "name" qString];
    constructor "" [arg "language" language;arg "country" country];
    constructor "" [arg "language" language;arg "script" script;arg "country" country];
    constructor "" [arg "other" qLocale];
    (*dynamic "operator=" [arg "other" qLocale] ~ret:qLocale;*)
    (*dynamic "operator=" [arg "other" qLocale] ~ret:qLocale;*)
    dynamic "swap" [arg "other" qLocale];
    dynamic "language" [] ~ret:language;
    dynamic "script" [] ~ret:script;
    dynamic "country" [] ~ret:country;
    dynamic "name" [] ~ret:qString;
    dynamic "bcp47Name" [] ~ret:qString;
    dynamic "nativeLanguageName" [] ~ret:qString;
    dynamic "nativeCountryName" [] ~ret:qString;
    dynamic "toShort" [arg "s" qString;arg "ok" bool] ~ret:short;
    dynamic "toUShort" [arg "s" qString;arg "ok" bool] ~ret:ushort;
    dynamic "toInt" [arg "s" qString;arg "ok" bool] ~ret:int;
    dynamic "toUInt" [arg "s" qString;arg "ok" bool] ~ret:uint;
    dynamic "toLongLong" [arg "s" qString;arg "ok" bool] ~ret:qlonglong;
    dynamic "toULongLong" [arg "s" qString;arg "ok" bool] ~ret:qulonglong;
    dynamic "toFloat" [arg "s" qString;arg "ok" bool] ~ret:float;
    dynamic "toDouble" [arg "s" qString;arg "ok" bool] ~ret:double;
    dynamic "toShort" [arg "s" qStringRef;arg "ok" bool] ~ret:short;
    dynamic "toUShort" [arg "s" qStringRef;arg "ok" bool] ~ret:ushort;
    dynamic "toInt" [arg "s" qStringRef;arg "ok" bool] ~ret:int;
    dynamic "toUInt" [arg "s" qStringRef;arg "ok" bool] ~ret:uint;
    dynamic "toLongLong" [arg "s" qStringRef;arg "ok" bool] ~ret:qlonglong;
    dynamic "toULongLong" [arg "s" qStringRef;arg "ok" bool] ~ret:qulonglong;
    dynamic "toFloat" [arg "s" qStringRef;arg "ok" bool] ~ret:float;
    dynamic "toDouble" [arg "s" qStringRef;arg "ok" bool] ~ret:double;
    dynamic "toString" [arg "i" qlonglong] ~ret:qString;
    dynamic "toString" [arg "i" qulonglong] ~ret:qString;
    dynamic "toString" [arg "i" short] ~ret:qString;
    dynamic "toString" [arg "i" ushort] ~ret:qString;
    dynamic "toString" [arg "i" int] ~ret:qString;
    dynamic "toString" [arg "i" uint] ~ret:qString;
    dynamic "toString" [arg "i" double;arg "f" pchar;arg "prec" int] ~ret:qString;
    dynamic "toString" [arg "i" float;arg "f" pchar;arg "prec" int] ~ret:qString;
    dynamic "toString" [arg "date" qDate;arg "format" qString] ~ret:qString;
    dynamic "toString" [arg "date" qDate;arg "format" formatType] ~ret:qString;
    dynamic "toString" [arg "time" qTime;arg "format" qString] ~ret:qString;
    dynamic "toString" [arg "time" qTime;arg "format" formatType] ~ret:qString;
    dynamic "toString" [arg "dateTime" qDateTime;arg "format" formatType] ~ret:qString;
    dynamic "toString" [arg "dateTime" qDateTime;arg "format" qString] ~ret:qString;
    dynamic "dateFormat" [arg "format" formatType] ~ret:qString;
    dynamic "timeFormat" [arg "format" formatType] ~ret:qString;
    dynamic "dateTimeFormat" [arg "format" formatType] ~ret:qString;
    dynamic "toDate" [arg "string" qString;arg "format" formatType] ~ret:qDate;
    dynamic "toTime" [arg "string" qString;arg "format" formatType] ~ret:qTime;
    dynamic "toDateTime" [arg "string" qString;arg "format" formatType] ~ret:qDateTime;
    dynamic "toDate" [arg "string" qString;arg "format" qString] ~ret:qDate;
    dynamic "toTime" [arg "string" qString;arg "format" qString] ~ret:qTime;
    dynamic "toDateTime" [arg "string" qString;arg "format" qString] ~ret:qDateTime;
    dynamic "decimalPoint" [] ~ret:qChar;
    dynamic "groupSeparator" [] ~ret:qChar;
    dynamic "percent" [] ~ret:qChar;
    dynamic "zeroDigit" [] ~ret:qChar;
    dynamic "negativeSign" [] ~ret:qChar;
    dynamic "positiveSign" [] ~ret:qChar;
    dynamic "exponential" [] ~ret:qChar;
    dynamic "monthName" [arg "month" int;arg "type" formatType] ~ret:qString;
    dynamic "standaloneMonthName" [arg "month" int;arg "type" formatType] ~ret:qString;
    dynamic "dayName" [arg "day" int;arg "type" formatType] ~ret:qString;
    dynamic "standaloneDayName" [arg "day" int;arg "type" formatType] ~ret:qString;
    dynamic "firstDayOfWeek" [] ~ret:qt'DayOfWeek;
    (*dynamic "weekdays" [] ~ret:qList<Qt'DayOfWeek>;*)
    dynamic "amText" [] ~ret:qString;
    dynamic "pmText" [] ~ret:qString;
    dynamic "measurementSystem" [] ~ret:measurementSystem;
    dynamic "textDirection" [] ~ret:qt'LayoutDirection;
    dynamic "toUpper" [arg "str" qString] ~ret:qString;
    dynamic "toLower" [arg "str" qString] ~ret:qString;
    dynamic "currencySymbol" [arg "format" currencySymbolFormat] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" qlonglong;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" qulonglong;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" short;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" ushort;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" int;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" uint;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" double;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" double;arg "symbol" qString;arg "precision" int] ~ret:qString;
    dynamic "toCurrencyString" [arg "value" float;arg "symbol" qString] ~ret:qString;
    dynamic "toCurrencyString" [arg "i" float;arg "symbol" qString;arg "precision" int] ~ret:qString;
    dynamic "uiLanguages" [] ~ret:qStringList;
    (*dynamic "operator==" [arg "other" qLocale] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qLocale] ~ret:bool;*)
    static  "languageToString" [arg "language" language] ~ret:qString;
    static  "countryToString" [arg "country" country] ~ret:qString;
    static  "scriptToString" [arg "script" script] ~ret:qString;
    static  "setDefault" [arg "locale" qLocale];
    static  "c" [] ~ret:qLocale;
    static  "system" [] ~ret:qLocale;
    (*static  "matchingLocales" [arg "language" qLocale'Language;arg "script" qLocale'Script;arg "country" qLocale'Country] ~ret:qList<QLocale>;*)
    (*static  "countriesForLanguage" [arg "language" language] ~ret:qList<Country>;*)
    dynamic "setNumberOptions" [arg "options" numberOptions];
    dynamic "numberOptions" [] ~ret:numberOptions;
    dynamic "quoteString" [arg "str" qString;arg "style" quotationStyle] ~ret:qString;
    dynamic "quoteString" [arg "str" qStringRef;arg "style" quotationStyle] ~ret:qString;
    dynamic "createSeparatedList" [arg "list" qStringList] ~ret:qString;
  ]
let () = with_class qXmlStreamWriter [
    constructor "" [];
    constructor "" [arg "device" qIODevice];
    constructor "" [arg "array" qByteArray];
    constructor "" [arg "string" qString];
    dynamic "setDevice" [arg "device" qIODevice];
    dynamic "device" [] ~ret:qIODevice;
    dynamic "setCodec" [arg "codec" qTextCodec];
    dynamic "setCodec" [arg "codecName" pchar];
    dynamic "codec" [] ~ret:qTextCodec;
    dynamic "setAutoFormatting" [arg "enable" bool];
    dynamic "autoFormatting" [] ~ret:bool;
    dynamic "setAutoFormattingIndent" [arg "spacesOrTabs" int];
    dynamic "autoFormattingIndent" [] ~ret:int;
    dynamic "writeAttribute" [arg "qualifiedName" qString;arg "value" qString];
    dynamic "writeAttribute" [arg "namespaceUri" qString;arg "name" qString;arg "value" qString];
    dynamic "writeAttribute" [arg "attribute" qXmlStreamAttribute];
    dynamic "writeAttributes" [arg "attributes" qXmlStreamAttributes];
    dynamic "writeCDATA" [arg "text" qString];
    dynamic "writeCharacters" [arg "text" qString];
    dynamic "writeComment" [arg "text" qString];
    dynamic "writeDTD" [arg "dtd" qString];
    dynamic "writeEmptyElement" [arg "qualifiedName" qString];
    dynamic "writeEmptyElement" [arg "namespaceUri" qString;arg "name" qString];
    dynamic "writeTextElement" [arg "qualifiedName" qString;arg "text" qString];
    dynamic "writeTextElement" [arg "namespaceUri" qString;arg "name" qString;arg "text" qString];
    dynamic "writeEndDocument" [];
    dynamic "writeEndElement" [];
    dynamic "writeEntityReference" [arg "name" qString];
    dynamic "writeNamespace" [arg "namespaceUri" qString;arg "prefix" qString];
    dynamic "writeDefaultNamespace" [arg "namespaceUri" qString];
    dynamic "writeProcessingInstruction" [arg "target" qString;arg "data" qString];
    dynamic "writeStartDocument" [];
    dynamic "writeStartDocument" [arg "version" qString];
    dynamic "writeStartDocument" [arg "version" qString;arg "standalone" bool];
    dynamic "writeStartElement" [arg "qualifiedName" qString];
    dynamic "writeStartElement" [arg "namespaceUri" qString;arg "name" qString];
    dynamic "writeCurrentToken" [arg "reader" qXmlStreamReader];
    dynamic "hasError" [] ~ret:bool;
  ]
let () = with_class qJsonObject'const_iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    dynamic "key" [] ~ret:qString;
    dynamic "value" [] ~ret:qJsonValue;
    (*dynamic "operator*" [] ~ret:qJsonValue;*)
    (*dynamic "operator->" [] ~ret:qJsonValue;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
  ]
let () = with_class qBitArray [
    constructor "" [];
    constructor "" [arg "size" int;arg "value" bool];
    constructor "" [arg "other" qBitArray];
    (*dynamic "operator=" [arg "other" qBitArray] ~ret:qBitArray;*)
    constructor "" [arg "other" qBitArray];
    (*dynamic "operator=" [arg "other" qBitArray] ~ret:qBitArray;*)
    dynamic "swap" [arg "other" qBitArray];
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "count" [arg "on" bool] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isNull" [] ~ret:bool;
    dynamic "resize" [arg "size" int];
    dynamic "clear" [];
    dynamic "testBit" [arg "i" int] ~ret:bool;
    dynamic "setBit" [arg "i" int];
    dynamic "setBit" [arg "i" int;arg "value" bool];
    dynamic "clearBit" [arg "i" int];
    dynamic "toggleBit" [arg "i" int] ~ret:bool;
    dynamic "at" [arg "i" int] ~ret:bool;
    (*dynamic "operator[]" [arg "i" int] ~ret:qBitRef;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:bool;*)
    (*dynamic "operator[]" [arg "i" uint] ~ret:qBitRef;*)
    (*dynamic "operator[]" [arg "i" uint] ~ret:bool;*)
    (*dynamic "operator&=" [arg "other" qBitArray] ~ret:qBitArray;*)
    (*dynamic "operator|=" [arg "other" qBitArray] ~ret:qBitArray;*)
    (*dynamic "operator^=" [arg "other" qBitArray] ~ret:qBitArray;*)
    (*dynamic "operator~" [] ~ret:qBitArray;*)
    (*dynamic "operator==" [arg "other" qBitArray] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qBitArray] ~ret:bool;*)
    dynamic "fill" [arg "value" bool;arg "size" int] ~ret:bool;
    dynamic "fill" [arg "value" bool;arg "begin" int;arg "end" int];
    dynamic "truncate" [arg "pos" int];
  ]
let () = with_class qMessageAuthenticationCode [
    constructor "" [arg "method" qCryptographicHash'Algorithm;arg "key" qByteArray];
    dynamic "reset" [];
    dynamic "setKey" [arg "key" qByteArray];
    dynamic "addData" [arg "data" pchar;arg "length" int];
    dynamic "addData" [arg "data" qByteArray];
    dynamic "addData" [arg "device" qIODevice] ~ret:bool;
    dynamic "result" [] ~ret:qByteArray;
    static  "hash" [arg "message" qByteArray;arg "key" qByteArray;arg "method" qCryptographicHash'Algorithm] ~ret:qByteArray;
  ]
let () = with_class qRect [
    constructor "" [];
    constructor "" [arg "topLeft" qPoint;arg "bottomRight" qPoint];
    constructor "" [arg "topLeft" qPoint;arg "size" qSize];
    constructor "" [arg "x" int;arg "y" int;arg "width" int;arg "height" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "left" [] ~ret:int;
    dynamic "top" [] ~ret:int;
    dynamic "right" [] ~ret:int;
    dynamic "bottom" [] ~ret:int;
    dynamic "normalized" [] ~ret:qRect;
    dynamic "x" [] ~ret:int;
    dynamic "y" [] ~ret:int;
    dynamic "setLeft" [arg "x" int];
    dynamic "setTop" [arg "y" int];
    dynamic "setRight" [arg "x" int];
    dynamic "setBottom" [arg "y" int];
    dynamic "setX" [arg "x" int];
    dynamic "setY" [arg "y" int];
    dynamic "setTopLeft" [arg "position" qPoint];
    dynamic "setBottomRight" [arg "position" qPoint];
    dynamic "setTopRight" [arg "position" qPoint];
    dynamic "setBottomLeft" [arg "position" qPoint];
    dynamic "topLeft" [] ~ret:qPoint;
    dynamic "bottomRight" [] ~ret:qPoint;
    dynamic "topRight" [] ~ret:qPoint;
    dynamic "bottomLeft" [] ~ret:qPoint;
    dynamic "center" [] ~ret:qPoint;
    dynamic "moveLeft" [arg "x" int];
    dynamic "moveTop" [arg "y" int];
    dynamic "moveRight" [arg "x" int];
    dynamic "moveBottom" [arg "y" int];
    dynamic "moveTopLeft" [arg "position" qPoint];
    dynamic "moveBottomRight" [arg "position" qPoint];
    dynamic "moveTopRight" [arg "position" qPoint];
    dynamic "moveBottomLeft" [arg "position" qPoint];
    dynamic "moveCenter" [arg "position" qPoint];
    dynamic "translate" [arg "dx" int;arg "dy" int];
    dynamic "translate" [arg "offset" qPoint];
    dynamic "translated" [arg "dx" int;arg "dy" int] ~ret:qRect;
    dynamic "translated" [arg "offset" qPoint] ~ret:qRect;
    dynamic "transposed" [] ~ret:qRect;
    dynamic "moveTo" [arg "x" int;arg "y" int];
    dynamic "moveTo" [arg "position" qPoint];
    dynamic "setRect" [arg "x" int;arg "y" int;arg "width" int;arg "height" int];
    dynamic "getRect" [arg "x" int;arg "y" int;arg "width" int;arg "height" int];
    dynamic "setCoords" [arg "arg0" int x1;arg "arg1" int y1;arg "arg2" int x2;arg "arg3" int y2];
    dynamic "getCoords" [arg "arg0" int *x1;arg "arg1" int *y1;arg "arg2" int *x2;arg "arg3" int *y2];
    dynamic "adjust" [arg "arg0" int dx1;arg "arg1" int dy1;arg "arg2" int dx2;arg "arg3" int dy2];
    dynamic "adjusted" [arg "arg0" int dx1;arg "arg1" int dy1;arg "arg2" int dx2;arg "arg3" int dy2] ~ret:qRect;
    dynamic "size" [] ~ret:qSize;
    dynamic "width" [] ~ret:int;
    dynamic "height" [] ~ret:int;
    dynamic "setWidth" [arg "width" int];
    dynamic "setHeight" [arg "height" int];
    dynamic "setSize" [arg "size" qSize];
    (*dynamic "operator|" [arg "rectangle" qRect] ~ret:qRect;*)
    (*dynamic "operator&" [arg "rectangle" qRect] ~ret:qRect;*)
    (*dynamic "operator|=" [arg "rectangle" qRect] ~ret:qRect;*)
    (*dynamic "operator&=" [arg "rectangle" qRect] ~ret:qRect;*)
    dynamic "contains" [arg "rectangle" qRect;arg "proper" bool] ~ret:bool;
    dynamic "contains" [arg "point" qPoint;arg "proper" bool] ~ret:bool;
    dynamic "contains" [arg "x" int;arg "y" int] ~ret:bool;
    dynamic "contains" [arg "x" int;arg "y" int;arg "proper" bool] ~ret:bool;
    dynamic "united" [arg "rectangle" qRect] ~ret:qRect;
    dynamic "intersected" [arg "rectangle" qRect] ~ret:qRect;
    dynamic "intersects" [arg "rectangle" qRect] ~ret:bool;
    dynamic "marginsAdded" [arg "margins" qMargins] ~ret:qRect;
    dynamic "marginsRemoved" [arg "margins" qMargins] ~ret:qRect;
    (*dynamic "operator+=" [arg "margins" qMargins] ~ret:qRect;*)
    (*dynamic "operator-=" [arg "margins" qMargins] ~ret:qRect;*)
    dynamic "unite" [arg "rectangle" qRect] ~ret:qRect;
    dynamic "intersect" [arg "rectangle" qRect] ~ret:qRect;
    dynamic "toCGRect" [] ~ret:cGRect;
  ]
let () = with_class qLatin1String [
    constructor "" [];
    constructor "" [arg "str" pchar];
    constructor "" [arg "str" pchar;arg "size" int];
    constructor "" [arg "str" qByteArray];
    dynamic "latin1" [] ~ret:pchar;
    dynamic "size" [] ~ret:int;
    dynamic "data" [] ~ret:pchar;
    dynamic "at" [arg "pos" int] ~ret:qLatin1Char;
    (*dynamic "operator[]" [arg "pos" int] ~ret:qLatin1Char;*)
    dynamic "mid" [arg "start" int] ~ret:qLatin1String;
    dynamic "mid" [arg "start" int;arg "length" int] ~ret:qLatin1String;
    dynamic "left" [arg "length" int] ~ret:qLatin1String;
    dynamic "right" [arg "length" int] ~ret:qLatin1String;
    (*dynamic "operator==" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" qString] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" qByteArray] ~ret:bool;*)
  ]
let () = with_class qReadWriteLock [
    constructor "" [arg "recursionMode" recursionMode];
    dynamic "lockForRead" [];
    dynamic "tryLockForRead" [] ~ret:bool;
    dynamic "tryLockForRead" [arg "timeout" int] ~ret:bool;
    dynamic "lockForWrite" [];
    dynamic "tryLockForWrite" [] ~ret:bool;
    dynamic "tryLockForWrite" [arg "timeout" int] ~ret:bool;
    dynamic "unlock" [];
  ]
let () = with_class qWriteLocker [
    constructor "" [arg "lock" qReadWriteLock];
    dynamic "unlock" [];
    dynamic "relock" [];
    dynamic "readWriteLock" [] ~ret:qReadWriteLock;
  ]
let () = with_class qStringMatcher [
    constructor "" [];
    constructor "" [arg "pattern" qString;arg "cs" qt'CaseSensitivity];
    constructor "" [arg "uc" qChar;arg "length" int;arg "cs" qt'CaseSensitivity];
    constructor "" [arg "other" qStringMatcher];
    (*dynamic "operator=" [arg "other" qStringMatcher] ~ret:qStringMatcher;*)
    dynamic "setPattern" [arg "pattern" qString];
    dynamic "setCaseSensitivity" [arg "cs" qt'CaseSensitivity];
    dynamic "indexIn" [arg "str" qString;arg "from" int] ~ret:int;
    dynamic "indexIn" [arg "str" qChar;arg "length" int;arg "from" int] ~ret:int;
    dynamic "pattern" [] ~ret:qString;
    dynamic "caseSensitivity" [] ~ret:qt'CaseSensitivity;
  ]
let () = with_class qXmlStreamReader [
    constructor "" [];
    constructor "" [arg "device" qIODevice];
    constructor "" [arg "data" qByteArray];
    constructor "" [arg "data" qString];
    constructor "" [arg "data" pchar];
    dynamic "setDevice" [arg "device" qIODevice];
    dynamic "device" [] ~ret:qIODevice;
    dynamic "addData" [arg "data" qByteArray];
    dynamic "addData" [arg "data" qString];
    dynamic "addData" [arg "data" pchar];
    dynamic "clear" [];
    dynamic "atEnd" [] ~ret:bool;
    (*dynamic "readNext" [] ~ret:tokenType;*)
    dynamic "readNextStartElement" [] ~ret:bool;
    dynamic "skipCurrentElement" [];
    (*dynamic "tokenType" [] ~ret:tokenType;*)
    dynamic "tokenString" [] ~ret:qString;
    dynamic "setNamespaceProcessing" [arg "arg0" bool];
    dynamic "namespaceProcessing" [] ~ret:bool;
    dynamic "isStartDocument" [] ~ret:bool;
    dynamic "isEndDocument" [] ~ret:bool;
    dynamic "isStartElement" [] ~ret:bool;
    dynamic "isEndElement" [] ~ret:bool;
    dynamic "isCharacters" [] ~ret:bool;
    dynamic "isWhitespace" [] ~ret:bool;
    dynamic "isCDATA" [] ~ret:bool;
    dynamic "isComment" [] ~ret:bool;
    dynamic "isDTD" [] ~ret:bool;
    dynamic "isEntityReference" [] ~ret:bool;
    dynamic "isProcessingInstruction" [] ~ret:bool;
    dynamic "isStandaloneDocument" [] ~ret:bool;
    dynamic "documentVersion" [] ~ret:qStringRef;
    dynamic "documentEncoding" [] ~ret:qStringRef;
    dynamic "lineNumber" [] ~ret:qint64;
    dynamic "columnNumber" [] ~ret:qint64;
    dynamic "characterOffset" [] ~ret:qint64;
    dynamic "attributes" [] ~ret:qXmlStreamAttributes;
    dynamic "readElementText" [arg "behaviour" readElementTextBehaviour] ~ret:qString;
    dynamic "name" [] ~ret:qStringRef;
    dynamic "namespaceUri" [] ~ret:qStringRef;
    dynamic "qualifiedName" [] ~ret:qStringRef;
    dynamic "prefix" [] ~ret:qStringRef;
    dynamic "processingInstructionTarget" [] ~ret:qStringRef;
    dynamic "processingInstructionData" [] ~ret:qStringRef;
    dynamic "text" [] ~ret:qStringRef;
    dynamic "namespaceDeclarations" [] ~ret:qXmlStreamNamespaceDeclarations;
    dynamic "addExtraNamespaceDeclaration" [arg "extraNamespaceDeclaration" qXmlStreamNamespaceDeclaration];
    dynamic "addExtraNamespaceDeclarations" [arg "extraNamespaceDeclarations" qXmlStreamNamespaceDeclarations];
    dynamic "notationDeclarations" [] ~ret:qXmlStreamNotationDeclarations;
    dynamic "entityDeclarations" [] ~ret:qXmlStreamEntityDeclarations;
    dynamic "dtdName" [] ~ret:qStringRef;
    dynamic "dtdPublicId" [] ~ret:qStringRef;
    dynamic "dtdSystemId" [] ~ret:qStringRef;
    dynamic "raiseError" [arg "message" qString];
    dynamic "errorString" [] ~ret:qString;
    dynamic "error" [] ~ret:error;
    dynamic "hasError" [] ~ret:bool;
    dynamic "setEntityResolver" [arg "resolver" qXmlStreamEntityResolver];
    dynamic "entityResolver" [] ~ret:qXmlStreamEntityResolver;
  ]
let () = with_class qMetaMethod [
    dynamic "methodSignature" [] ~ret:qByteArray;
    dynamic "name" [] ~ret:qByteArray;
    dynamic "typeName" [] ~ret:pchar;
    dynamic "returnType" [] ~ret:int;
    dynamic "parameterCount" [] ~ret:int;
    dynamic "parameterType" [arg "index" int] ~ret:int;
    (*dynamic "parameterTypes" [] ~ret:qList<QByteArray>;*)
    (*dynamic "parameterNames" [] ~ret:qList<QByteArray>;*)
    dynamic "tag" [] ~ret:pchar;
    dynamic "access" [] ~ret:access;
    dynamic "methodType" [] ~ret:methodType;
    dynamic "methodIndex" [] ~ret:int;
    dynamic "revision" [] ~ret:int;
    dynamic "invoke" [arg "object" qObject;arg "connectionType" qt'ConnectionType;arg "returnValue" qGenericReturnArgument;arg "arg3" qGenericArgument val0;arg "arg4" qGenericArgument val1;arg "arg5" qGenericArgument val2;arg "arg6" qGenericArgument val3;arg "arg7" qGenericArgument val4;arg "arg8" qGenericArgument val5;arg "arg9" qGenericArgument val6;arg "arg10" qGenericArgument val7;arg "arg11" qGenericArgument val8;arg "arg12" qGenericArgument val9] ~ret:bool;
    dynamic "invoke" [arg "object" qObject;arg "returnValue" qGenericReturnArgument;arg "arg2" qGenericArgument val0;arg "arg3" qGenericArgument val1;arg "arg4" qGenericArgument val2;arg "arg5" qGenericArgument val3;arg "arg6" qGenericArgument val4;arg "arg7" qGenericArgument val5;arg "arg8" qGenericArgument val6;arg "arg9" qGenericArgument val7;arg "arg10" qGenericArgument val8;arg "arg11" qGenericArgument val9] ~ret:bool;
    dynamic "invoke" [arg "object" qObject;arg "connectionType" qt'ConnectionType;arg "arg2" qGenericArgument val0;arg "arg3" qGenericArgument val1;arg "arg4" qGenericArgument val2;arg "arg5" qGenericArgument val3;arg "arg6" qGenericArgument val4;arg "arg7" qGenericArgument val5;arg "arg8" qGenericArgument val6;arg "arg9" qGenericArgument val7;arg "arg10" qGenericArgument val8;arg "arg11" qGenericArgument val9] ~ret:bool;
    dynamic "invoke" [arg "object" qObject;arg "arg1" qGenericArgument val0;arg "arg2" qGenericArgument val1;arg "arg3" qGenericArgument val2;arg "arg4" qGenericArgument val3;arg "arg5" qGenericArgument val4;arg "arg6" qGenericArgument val5;arg "arg7" qGenericArgument val6;arg "arg8" qGenericArgument val7;arg "arg9" qGenericArgument val8;arg "arg10" qGenericArgument val9] ~ret:bool;
    dynamic "invokeOnGadget" [arg "gadget" void;arg "returnValue" qGenericReturnArgument;arg "arg2" qGenericArgument val0;arg "arg3" qGenericArgument val1;arg "arg4" qGenericArgument val2;arg "arg5" qGenericArgument val3;arg "arg6" qGenericArgument val4;arg "arg7" qGenericArgument val5;arg "arg8" qGenericArgument val6;arg "arg9" qGenericArgument val7;arg "arg10" qGenericArgument val8;arg "arg11" qGenericArgument val9] ~ret:bool;
    dynamic "invokeOnGadget" [arg "gadget" void;arg "arg1" qGenericArgument val0;arg "arg2" qGenericArgument val1;arg "arg3" qGenericArgument val2;arg "arg4" qGenericArgument val3;arg "arg5" qGenericArgument val4;arg "arg6" qGenericArgument val5;arg "arg7" qGenericArgument val6;arg "arg8" qGenericArgument val7;arg "arg9" qGenericArgument val8;arg "arg10" qGenericArgument val9] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    (*static  "fromSignal" [arg "signal" pointerToMemberFunction] ~ret:qMetaMethod;*)
  ]
let () = with_class qLinkedList'const_iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    constructor "" [arg "other" const_iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    constructor "" [arg "other" const_iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qMarginsF [
    constructor "" [];
    constructor "" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    constructor "" [arg "margins" qMargins];
    dynamic "isNull" [] ~ret:bool;
    dynamic "left" [] ~ret:qreal;
    dynamic "top" [] ~ret:qreal;
    dynamic "right" [] ~ret:qreal;
    dynamic "bottom" [] ~ret:qreal;
    dynamic "setLeft" [arg "left" qreal];
    dynamic "setTop" [arg "Top" qreal];
    dynamic "setRight" [arg "right" qreal];
    dynamic "setBottom" [arg "bottom" qreal];
    (*dynamic "operator+=" [arg "margins" qMarginsF] ~ret:qMarginsF;*)
    (*dynamic "operator-=" [arg "margins" qMarginsF] ~ret:qMarginsF;*)
    (*dynamic "operator+=" [arg "addend" qreal] ~ret:qMarginsF;*)
    (*dynamic "operator-=" [arg "subtrahend" qreal] ~ret:qMarginsF;*)
    (*dynamic "operator*=" [arg "factor" qreal] ~ret:qMarginsF;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qMarginsF;*)
    dynamic "toMargins" [] ~ret:qMargins;
  ]
let () = with_class qStaticPlugin [
    dynamic "instance" [] ~ret:qObject;
    dynamic "rawMetaData" [] ~ret:pchar;
    dynamic "metaData" [] ~ret:qJsonObject;
  ]
let () = with_class qAssociativeIterable [
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "find" [arg "key" qVariant] ~ret:const_iterator;
    dynamic "value" [arg "key" qVariant] ~ret:qVariant;
    dynamic "size" [] ~ret:int;
  ]
let () = with_class qDateTime [
    constructor "" [];
    constructor "" [arg "date" qDate];
    constructor "" [arg "date" qDate;arg "time" qTime;arg "spec" qt'TimeSpec];
    constructor "" [arg "date" qDate;arg "time" qTime;arg "spec" qt'TimeSpec;arg "offsetSeconds" int];
    constructor "" [arg "date" qDate;arg "time" qTime;arg "timeZone" qTimeZone];
    constructor "" [arg "other" qDateTime];
    constructor "" [arg "other" qDateTime];
    (*dynamic "operator=" [arg "other" qDateTime] ~ret:qDateTime;*)
    (*dynamic "operator=" [arg "other" qDateTime] ~ret:qDateTime;*)
    dynamic "swap" [arg "other" qDateTime];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "date" [] ~ret:qDate;
    dynamic "time" [] ~ret:qTime;
    dynamic "timeSpec" [] ~ret:qt'TimeSpec;
    dynamic "offsetFromUtc" [] ~ret:int;
    dynamic "timeZone" [] ~ret:qTimeZone;
    dynamic "timeZoneAbbreviation" [] ~ret:qString;
    dynamic "isDaylightTime" [] ~ret:bool;
    dynamic "toMSecsSinceEpoch" [] ~ret:qint64;
    dynamic "toSecsSinceEpoch" [] ~ret:qint64;
    dynamic "setDate" [arg "date" qDate];
    dynamic "setTime" [arg "time" qTime];
    dynamic "setTimeSpec" [arg "spec" qt'TimeSpec];
    dynamic "setOffsetFromUtc" [arg "offsetSeconds" int];
    dynamic "setTimeZone" [arg "toZone" qTimeZone];
    dynamic "setMSecsSinceEpoch" [arg "msecs" qint64];
    dynamic "setSecsSinceEpoch" [arg "secs" qint64];
    dynamic "toString" [arg "format" qt'DateFormat] ~ret:qString;
    dynamic "toString" [arg "format" qString] ~ret:qString;
    dynamic "addDays" [arg "ndays" qint64] ~ret:qDateTime;
    dynamic "addMonths" [arg "nmonths" int] ~ret:qDateTime;
    dynamic "addYears" [arg "nyears" int] ~ret:qDateTime;
    dynamic "addSecs" [arg "s" qint64] ~ret:qDateTime;
    dynamic "addMSecs" [arg "msecs" qint64] ~ret:qDateTime;
    dynamic "toTimeSpec" [arg "spec" qt'TimeSpec] ~ret:qDateTime;
    dynamic "toLocalTime" [] ~ret:qDateTime;
    dynamic "toUTC" [] ~ret:qDateTime;
    dynamic "toOffsetFromUtc" [arg "offsetSeconds" int] ~ret:qDateTime;
    dynamic "toTimeZone" [arg "timeZone" qTimeZone] ~ret:qDateTime;
    dynamic "daysTo" [arg "other" qDateTime] ~ret:qint64;
    dynamic "secsTo" [arg "other" qDateTime] ~ret:qint64;
    dynamic "msecsTo" [arg "other" qDateTime] ~ret:qint64;
    (*dynamic "operator==" [arg "other" qDateTime] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qDateTime] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qDateTime] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" qDateTime] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qDateTime] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" qDateTime] ~ret:bool;*)
    static  "currentDateTime" [] ~ret:qDateTime;
    static  "currentDateTimeUtc" [] ~ret:qDateTime;
    static  "fromString" [arg "string" qString;arg "format" qt'DateFormat] ~ret:qDateTime;
    static  "fromString" [arg "string" qString;arg "format" qString] ~ret:qDateTime;
    dynamic "toTime_t" [] ~ret:uint;
    dynamic "setTime_t" [arg "seconds" uint];
    static  "fromTime_t" [arg "seconds" uint] ~ret:qDateTime;
    static  "fromTime_t" [arg "seconds" uint;arg "spec" qt'TimeSpec;arg "offsetSeconds" int] ~ret:qDateTime;
    static  "fromTime_t" [arg "seconds" uint;arg "timeZone" qTimeZone] ~ret:qDateTime;
    static  "fromMSecsSinceEpoch" [arg "msecs" qint64] ~ret:qDateTime;
    static  "fromMSecsSinceEpoch" [arg "msecs" qint64;arg "spec" qt'TimeSpec;arg "offsetSeconds" int] ~ret:qDateTime;
    static  "fromSecsSinceEpoch" [arg "secs" qint64;arg "spec" qt'TimeSpec;arg "offsetSeconds" int] ~ret:qDateTime;
    static  "fromMSecsSinceEpoch" [arg "msecs" qint64;arg "timeZone" qTimeZone] ~ret:qDateTime;
    static  "fromSecsSinceEpoch" [arg "secs" qint64;arg "timeZone" qTimeZone] ~ret:qDateTime;
    static  "currentMSecsSinceEpoch" [] ~ret:qint64;
    static  "currentSecsSinceEpoch" [] ~ret:qint64;
    static  "fromCFDate" [arg "date" cFDateRef] ~ret:qDateTime;
    dynamic "toCFDate" [] ~ret:cFDateRef;
    static  "fromNSDate" [arg "date" nSDate] ~ret:qDateTime;
    dynamic "toNSDate" [] ~ret:nSDate;
  ]
let () = with_class qSizeF [
    constructor "" [];
    constructor "" [arg "size" qSize];
    constructor "" [arg "width" qreal;arg "height" qreal];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "width" [] ~ret:qreal;
    dynamic "height" [] ~ret:qreal;
    dynamic "setWidth" [arg "width" qreal];
    dynamic "setHeight" [arg "height" qreal];
    dynamic "transpose" [];
    dynamic "transposed" [] ~ret:qSizeF;
    dynamic "scale" [arg "width" qreal;arg "height" qreal;arg "mode" qt'AspectRatioMode];
    dynamic "scale" [arg "size" qSizeF;arg "mode" qt'AspectRatioMode];
    dynamic "scaled" [arg "width" qreal;arg "height" qreal;arg "mode" qt'AspectRatioMode] ~ret:qSizeF;
    dynamic "scaled" [arg "s" qSizeF;arg "mode" qt'AspectRatioMode] ~ret:qSizeF;
    dynamic "expandedTo" [arg "otherSize" qSizeF] ~ret:qSizeF;
    dynamic "boundedTo" [arg "otherSize" qSizeF] ~ret:qSizeF;
    dynamic "rwidth" [] ~ret:qreal;
    dynamic "rheight" [] ~ret:qreal;
    (*dynamic "operator+=" [arg "size" qSizeF] ~ret:qSizeF;*)
    (*dynamic "operator-=" [arg "size" qSizeF] ~ret:qSizeF;*)
    (*dynamic "operator*=" [arg "factor" qreal] ~ret:qSizeF;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qSizeF;*)
    dynamic "toSize" [] ~ret:qSize;
    static  "fromCGSize" [arg "size" cGSize] ~ret:qSizeF;
    dynamic "toCGSize" [] ~ret:cGSize;
  ]
let () = with_class qOperatingSystemVersion [
    constructor "" [arg "other" qOperatingSystemVersion];
    constructor "" [arg "osType" oSType;arg "vmajor" int;arg "vminor" int;arg "vmicro" int];
    static  "current" [] ~ret:qOperatingSystemVersion;
    dynamic "majorVersion" [] ~ret:int;
    dynamic "minorVersion" [] ~ret:int;
    dynamic "microVersion" [] ~ret:int;
    dynamic "segmentCount" [] ~ret:int;
    dynamic "isAnyOfType" [arg "types" std'initializer_list<OSType>] ~ret:bool;
    dynamic "type" [] ~ret:oSType;
    dynamic "name" [] ~ret:qString;
  ]
let () = with_class qMetaType [
    static  "type" [arg "typeName" pchar] ~ret:int;
    static  "type" [arg "typeName" qByteArray] ~ret:int;
    static  "typeName" [arg "typeId" int] ~ret:pchar;
    static  "sizeOf" [arg "type" int] ~ret:int;
    (*static  "typeFlags" [arg "type" int] ~ret:typeFlags;*)
    static  "metaObjectForType" [arg "type" int] ~ret:qMetaObject;
    static  "isRegistered" [arg "type" int] ~ret:bool;
    static  "create" [arg "type" int;arg "copy" void] ~ret:void;
    static  "construct" [arg "type" int;arg "copy" void] ~ret:void;
    static  "destroy" [arg "type" int;arg "data" void];
    static  "construct" [arg "type" int;arg "where" void;arg "copy" void] ~ret:void;
    static  "destruct" [arg "type" int;arg "where" void];
    static  "save" [arg "stream" qDataStream;arg "type" int;arg "data" void] ~ret:bool;
    static  "load" [arg "stream" qDataStream;arg "type" int;arg "data" void] ~ret:bool;
    constructor "" [arg "typeId" int];
    dynamic "isValid" [] ~ret:bool;
    dynamic "isRegistered" [] ~ret:bool;
    dynamic "sizeOf" [] ~ret:int;
    (*dynamic "flags" [] ~ret:typeFlags;*)
    dynamic "metaObject" [] ~ret:qMetaObject;
    dynamic "create" [arg "copy" void] ~ret:void;
    dynamic "destroy" [arg "data" void];
    dynamic "construct" [arg "where" void;arg "copy" void] ~ret:void;
    dynamic "destruct" [arg "data" void];
    static  "registerComparators" [] ~ret:bool;
    static  "registerEqualsComparator" [] ~ret:bool;
    static  "hasRegisteredComparators" [] ~ret:bool;
    static  "hasRegisteredComparators" [arg "typeId" int] ~ret:bool;
    static  "registerDebugStreamOperator" [] ~ret:bool;
    static  "hasRegisteredDebugStreamOperator" [] ~ret:bool;
    static  "hasRegisteredDebugStreamOperator" [arg "typeId" int] ~ret:bool;
    static  "registerConverter" [] ~ret:bool;
    static  "registerConverter" [arg "function" memberFunction] ~ret:bool;
    static  "registerConverter" [arg "function" memberFunctionOk] ~ret:bool;
    static  "registerConverter" [arg "function" unaryFunction] ~ret:bool;
    static  "convert" [arg "from" void;arg "fromTypeId" int;arg "to" void;arg "toTypeId" int] ~ret:bool;
    static  "compare" [arg "lhs" void;arg "rhs" void;arg "typeId" int;arg "result" int] ~ret:bool;
    static  "equals" [arg "lhs" void;arg "rhs" void;arg "typeId" int;arg "result" int] ~ret:bool;
    static  "debugStream" [arg "dbg" qDebug;arg "rhs" void;arg "typeId" int] ~ret:bool;
    static  "hasRegisteredConverterFunction" [] ~ret:bool;
    static  "hasRegisteredConverterFunction" [arg "fromTypeId" int;arg "toTypeId" int] ~ret:bool;
  ]
let () = with_class qJsonArray [
    constructor "" [];
    constructor "" [arg "args" std'initializer_list<QJsonValue>];
    constructor "" [arg "other" qJsonArray];
    (*dynamic "operator=" [arg "other" qJsonArray] ~ret:qJsonArray;*)
    static  "fromStringList" [arg "list" qStringList] ~ret:qJsonArray;
    static  "fromVariantList" [arg "list" qVariantList] ~ret:qJsonArray;
    dynamic "toVariantList" [] ~ret:qVariantList;
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "at" [arg "i" int] ~ret:qJsonValue;
    dynamic "first" [] ~ret:qJsonValue;
    dynamic "last" [] ~ret:qJsonValue;
    dynamic "prepend" [arg "value" qJsonValue];
    dynamic "append" [arg "value" qJsonValue];
    dynamic "removeAt" [arg "i" int];
    dynamic "takeAt" [arg "i" int] ~ret:qJsonValue;
    dynamic "removeFirst" [];
    dynamic "removeLast" [];
    dynamic "insert" [arg "i" int;arg "value" qJsonValue];
    dynamic "replace" [arg "i" int;arg "value" qJsonValue];
    dynamic "contains" [arg "value" qJsonValue] ~ret:bool;
    (*dynamic "operator[]" [arg "i" int] ~ret:qJsonValueRef;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:qJsonValue;*)
    (*dynamic "operator==" [arg "other" qJsonArray] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qJsonArray] ~ret:bool;*)
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "insert" [arg "before" iterator;arg "value" qJsonValue] ~ret:iterator;
    dynamic "erase" [arg "it" iterator] ~ret:iterator;
    (*dynamic "operator+" [arg "value" qJsonValue] ~ret:qJsonArray;*)
    (*dynamic "operator+=" [arg "value" qJsonValue] ~ret:qJsonArray;*)
    (*dynamic "operator<<" [arg "value" qJsonValue] ~ret:qJsonArray;*)
    dynamic "push_back" [arg "value" qJsonValue];
    dynamic "push_front" [arg "value" qJsonValue];
    dynamic "pop_front" [];
    dynamic "pop_back" [];
    dynamic "empty" [] ~ret:bool;
  ]
let () = with_class qMutableMapIterator [
    constructor "" [arg "map" qMap<Key,T>];
    (*dynamic "operator=" [arg "map" qMap<Key,T>] ~ret:qMutableMapIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    dynamic "next" [] ~ret:item;
    dynamic "peekNext" [] ~ret:item;
    dynamic "hasPrevious" [] ~ret:bool;
    dynamic "previous" [] ~ret:item;
    dynamic "peekPrevious" [] ~ret:item;
    dynamic "remove" [];
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "value" [] ~ret:t;*)
    dynamic "key" [] ~ret:key;
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qDebugStateSaver [
    constructor "" [arg "dbg" qDebug];
  ]
let () = with_class qLoggingCategory [
    constructor "" [arg "category" pchar];
    constructor "" [arg "category" pchar;arg "enableForLevel" qtMsgType];
    dynamic "isEnabled" [arg "msgtype" qtMsgType] ~ret:bool;
    dynamic "setEnabled" [arg "type" qtMsgType;arg "enable" bool];
    dynamic "isDebugEnabled" [] ~ret:bool;
    dynamic "isInfoEnabled" [] ~ret:bool;
    dynamic "isWarningEnabled" [] ~ret:bool;
    dynamic "isCriticalEnabled" [] ~ret:bool;
    dynamic "categoryName" [] ~ret:pchar;
    (*dynamic "operator()" [] ~ret:qLoggingCategory;*)
    (*dynamic "operator()" [] ~ret:qLoggingCategory;*)
    static  "defaultCategory" [] ~ret:qLoggingCategory;
    static  "installFilter" [arg "filter" categoryFilter] ~ret:categoryFilter;
    static  "setFilterRules" [arg "rules" qString];
  ]
let () = with_class qGenericArgument [
    constructor "" [arg "name" pchar;arg "data" void];
    dynamic "data" [] ~ret:void;
    dynamic "name" [] ~ret:pchar;
  ]
let () = with_class qFuture'const_iterator [
    constructor "" [];
    constructor "" [arg "other" const_iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qAbstractNativeEventFilter [
    constructor "" [];
    dynamic "nativeEventFilter" [arg "eventType" qByteArray;arg "message" void;arg "result" long] ~ret:bool;
  ]
let () = with_class qChar [
    constructor "" [];
    constructor "" [arg "code" ushort];
    constructor "" [arg "cell" uchar;arg "row" uchar];
    constructor "" [arg "code" short];
    constructor "" [arg "code" uint];
    constructor "" [arg "code" int];
    constructor "" [arg "ch" specialCharacter];
    constructor "" [arg "ch" qLatin1Char];
    constructor "" [arg "ch" pchar];
    constructor "" [arg "ch" uchar];
    dynamic "category" [] ~ret:category;
    dynamic "direction" [] ~ret:direction;
    dynamic "joiningType" [] ~ret:joiningType;
    dynamic "joining" [] ~ret:joining;
    dynamic "combiningClass" [] ~ret:unsigned pchar;
    dynamic "mirroredChar" [] ~ret:qChar;
    dynamic "hasMirrored" [] ~ret:bool;
    dynamic "decomposition" [] ~ret:qString;
    dynamic "decompositionTag" [] ~ret:decomposition;
    dynamic "digitValue" [] ~ret:int;
    dynamic "toLower" [] ~ret:qChar;
    dynamic "toUpper" [] ~ret:qChar;
    dynamic "toTitleCase" [] ~ret:qChar;
    dynamic "toCaseFolded" [] ~ret:qChar;
    dynamic "script" [] ~ret:script;
    dynamic "unicodeVersion" [] ~ret:unicodeVersion;
    dynamic "toAscii" [] ~ret:pchar;
    dynamic "toLatin1" [] ~ret:pchar;
    dynamic "unicode" [] ~ret:ushort;
    dynamic "unicode" [] ~ret:ushort;
    static  "fromAscii" [arg "c" pchar] ~ret:qChar;
    static  "fromLatin1" [arg "c" pchar] ~ret:qChar;
    dynamic "isNull" [] ~ret:bool;
    dynamic "isPrint" [] ~ret:bool;
    dynamic "isSpace" [] ~ret:bool;
    dynamic "isMark" [] ~ret:bool;
    dynamic "isPunct" [] ~ret:bool;
    dynamic "isSymbol" [] ~ret:bool;
    dynamic "isLetter" [] ~ret:bool;
    dynamic "isNumber" [] ~ret:bool;
    dynamic "isLetterOrNumber" [] ~ret:bool;
    dynamic "isDigit" [] ~ret:bool;
    dynamic "isLower" [] ~ret:bool;
    dynamic "isUpper" [] ~ret:bool;
    dynamic "isTitleCase" [] ~ret:bool;
    dynamic "isNonCharacter" [] ~ret:bool;
    dynamic "isHighSurrogate" [] ~ret:bool;
    dynamic "isLowSurrogate" [] ~ret:bool;
    dynamic "isSurrogate" [] ~ret:bool;
    dynamic "cell" [] ~ret:uchar;
    dynamic "row" [] ~ret:uchar;
    static  "isNonCharacter" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isHighSurrogate" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isLowSurrogate" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isSurrogate" [arg "arg0" uint ucs4] ~ret:bool;
    static  "requiresSurrogates" [arg "arg0" uint ucs4] ~ret:bool;
    static  "surrogateToUcs4" [arg "high" ushort;arg "low" ushort] ~ret:uint;
    static  "surrogateToUcs4" [arg "high" qChar;arg "low" qChar] ~ret:uint;
    static  "highSurrogate" [arg "arg0" uint ucs4] ~ret:ushort;
    static  "lowSurrogate" [arg "arg0" uint ucs4] ~ret:ushort;
    static  "category" [arg "arg0" uint ucs4] ~ret:category;
    static  "direction" [arg "arg0" uint ucs4] ~ret:direction;
    static  "joiningType" [arg "arg0" uint ucs4] ~ret:joiningType;
    static  "joining" [arg "arg0" uint ucs4] ~ret:joining;
    static  "combiningClass" [arg "arg0" uint ucs4] ~ret:unsigned pchar;
    static  "mirroredChar" [arg "arg0" uint ucs4] ~ret:uint;
    static  "hasMirrored" [arg "arg0" uint ucs4] ~ret:bool;
    static  "decomposition" [arg "arg0" uint ucs4] ~ret:qString;
    static  "decompositionTag" [arg "arg0" uint ucs4] ~ret:decomposition;
    static  "digitValue" [arg "arg0" uint ucs4] ~ret:int;
    static  "toLower" [arg "arg0" uint ucs4] ~ret:uint;
    static  "toUpper" [arg "arg0" uint ucs4] ~ret:uint;
    static  "toTitleCase" [arg "arg0" uint ucs4] ~ret:uint;
    static  "toCaseFolded" [arg "arg0" uint ucs4] ~ret:uint;
    static  "script" [arg "arg0" uint ucs4] ~ret:script;
    static  "unicodeVersion" [arg "arg0" uint ucs4] ~ret:unicodeVersion;
    static  "currentUnicodeVersion" [] ~ret:unicodeVersion;
    static  "isPrint" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isSpace" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isMark" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isPunct" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isSymbol" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isLetter" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isNumber" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isLetterOrNumber" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isDigit" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isLower" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isUpper" [arg "arg0" uint ucs4] ~ret:bool;
    static  "isTitleCase" [arg "arg0" uint ucs4] ~ret:bool;
  ]
let () = with_class qGlobalStatic [
    dynamic "isDestroyed" [] ~ret:bool;
    dynamic "exists" [] ~ret:bool;
    constructor "" [];
    (*dynamic "operator()" [] ~ret:type;*)
    (*dynamic "operator->" [] ~ret:type;*)
    (*dynamic "operator*" [] ~ret:type;*)
  ]
let () = with_class qElapsedTimer [
    constructor "" [];
    static  "clockType" [] ~ret:clockType;
    static  "isMonotonic" [] ~ret:bool;
    dynamic "start" [];
    dynamic "restart" [] ~ret:qint64;
    dynamic "invalidate" [];
    dynamic "isValid" [] ~ret:bool;
    dynamic "nsecsElapsed" [] ~ret:qint64;
    dynamic "elapsed" [] ~ret:qint64;
    dynamic "hasExpired" [arg "timeout" qint64] ~ret:bool;
    dynamic "msecsSinceReference" [] ~ret:qint64;
    dynamic "msecsTo" [arg "other" qElapsedTimer] ~ret:qint64;
    dynamic "secsTo" [arg "other" qElapsedTimer] ~ret:qint64;
    (*dynamic "operator==" [arg "other" qElapsedTimer] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qElapsedTimer] ~ret:bool;*)
  ]
let () = with_class qHash'iterator [
    constructor "" [];
    dynamic "key" [] ~ret:key;
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
  ]
let () = with_class qVector [
    constructor "" [];
    constructor "" [arg "size" int];
    constructor "" [arg "size" int;arg "value" t];
    constructor "" [arg "other" qVector<T>];
    (*dynamic "operator=" [arg "other" qVector<T>] ~ret:qVector<T>;*)
    constructor "" [arg "other" qVector<T>];
    (*dynamic "operator=" [arg "other" qVector<T>] ~ret:qVector<T>;*)
    dynamic "swap" [arg "other" qVector<T>];
    constructor "" [arg "args" std'initializer_list<T>];
    (*dynamic "operator==" [arg "other" qVector<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qVector<T>] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "resize" [arg "size" int];
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "squeeze" [];
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "constData" [] ~ret:t;*)
    dynamic "clear" [];
    (*dynamic "at" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    dynamic "append" [arg "value" t];
    dynamic "append" [arg "value" t];
    dynamic "append" [arg "value" qVector<T>];
    dynamic "prepend" [arg "value" t];
    dynamic "insert" [arg "i" int;arg "value" t];
    dynamic "insert" [arg "i" int;arg "count" int;arg "value" t];
    dynamic "replace" [arg "i" int;arg "value" t];
    dynamic "remove" [arg "i" int];
    dynamic "remove" [arg "i" int;arg "count" int];
    dynamic "removeFirst" [];
    dynamic "removeLast" [];
    (*dynamic "takeFirst" [] ~ret:t;*)
    (*dynamic "takeLast" [] ~ret:t;*)
    (*dynamic "fill" [arg "value" t;arg "size" int] ~ret:qVector<T>;*)
    dynamic "indexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "contains" [arg "value" t] ~ret:bool;
    dynamic "count" [arg "value" t] ~ret:int;
    dynamic "removeAt" [arg "i" int];
    dynamic "removeAll" [arg "t" t] ~ret:int;
    dynamic "removeOne" [arg "t" t] ~ret:bool;
    dynamic "length" [] ~ret:int;
    (*dynamic "takeAt" [arg "i" int] ~ret:t;*)
    dynamic "move" [arg "from" int;arg "to" int];
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "insert" [arg "before" iterator;arg "count" int;arg "value" t] ~ret:iterator;
    dynamic "insert" [arg "before" iterator;arg "value" t] ~ret:iterator;
    dynamic "erase" [arg "begin" iterator;arg "end" iterator] ~ret:iterator;
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "constFirst" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "constLast" [] ~ret:t;*)
    dynamic "startsWith" [arg "value" t] ~ret:bool;
    dynamic "endsWith" [arg "value" t] ~ret:bool;
    (*dynamic "mid" [arg "pos" int;arg "length" int] ~ret:qVector<T>;*)
    (*dynamic "value" [arg "i" int] ~ret:t;*)
    (*dynamic "value" [arg "i" int;arg "defaultValue" t] ~ret:t;*)
    dynamic "push_back" [arg "value" t];
    dynamic "push_back" [arg "value" t];
    dynamic "push_front" [arg "value" t];
    dynamic "pop_back" [];
    dynamic "pop_front" [];
    dynamic "empty" [] ~ret:bool;
    (*dynamic "front" [] ~ret:t;*)
    dynamic "front" [] ~ret:const_reference;
    dynamic "back" [] ~ret:reference;
    dynamic "back" [] ~ret:const_reference;
    (*dynamic "operator+=" [arg "other" qVector<T>] ~ret:qVector<T>;*)
    (*dynamic "operator+" [arg "other" qVector<T>] ~ret:qVector<T>;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:qVector<T>;*)
    (*dynamic "operator<<" [arg "value" t] ~ret:qVector<T>;*)
    (*dynamic "operator<<" [arg "other" qVector<T>] ~ret:qVector<T>;*)
    (*dynamic "toList" [] ~ret:qList<T>;*)
    (*static  "fromList" [arg "list" qList<T>] ~ret:qVector<T>;*)
    (*static  "fromStdVector" [arg "vector" std'vector<T>] ~ret:qVector<T>;*)
    (*dynamic "toStdVector" [] ~ret:std'vector<T>;*)
  ]
let () = with_class qTextCodec'ConverterState [
    constructor "" [arg "flags" conversionFlags];
  ]
let () = with_class qStandardPaths [
    static  "writableLocation" [arg "type" standardLocation] ~ret:qString;
    static  "standardLocations" [arg "type" standardLocation] ~ret:qStringList;
    static  "locate" [arg "type" standardLocation;arg "fileName" qString;arg "options" locateOptions] ~ret:qString;
    static  "locateAll" [arg "type" standardLocation;arg "fileName" qString;arg "options" locateOptions] ~ret:qStringList;
    static  "displayName" [arg "type" standardLocation] ~ret:qString;
    static  "findExecutable" [arg "executableName" qString;arg "paths" qStringList] ~ret:qString;
    static  "enableTestMode" [arg "testMode" bool];
    static  "setTestModeEnabled" [arg "testMode" bool];
  ]
let () = with_class qDirIterator [
    constructor "" [arg "dir" qDir;arg "flags" iteratorFlags];
    constructor "" [arg "path" qString;arg "flags" iteratorFlags];
    constructor "" [arg "path" qString;arg "filters" qDir'Filters;arg "flags" iteratorFlags];
    constructor "" [arg "path" qString;arg "nameFilters" qStringList;arg "filters" qDir'Filters;arg "flags" iteratorFlags];
    dynamic "next" [] ~ret:qString;
    dynamic "hasNext" [] ~ret:bool;
    dynamic "fileName" [] ~ret:qString;
    dynamic "filePath" [] ~ret:qString;
    dynamic "fileInfo" [] ~ret:qFileInfo;
    dynamic "path" [] ~ret:qString;
  ]
let () = with_class qStorageInfo [
    constructor "" [];
    constructor "" [arg "path" qString];
    constructor "" [arg "dir" qDir];
    constructor "" [arg "other" qStorageInfo];
    (*dynamic "operator=" [arg "other" qStorageInfo] ~ret:qStorageInfo;*)
    (*dynamic "operator=" [arg "other" qStorageInfo] ~ret:qStorageInfo;*)
    dynamic "swap" [arg "other" qStorageInfo];
    dynamic "setPath" [arg "path" qString];
    dynamic "rootPath" [] ~ret:qString;
    dynamic "device" [] ~ret:qByteArray;
    dynamic "subvolume" [] ~ret:qByteArray;
    dynamic "fileSystemType" [] ~ret:qByteArray;
    dynamic "name" [] ~ret:qString;
    dynamic "displayName" [] ~ret:qString;
    dynamic "bytesTotal" [] ~ret:qint64;
    dynamic "bytesFree" [] ~ret:qint64;
    dynamic "bytesAvailable" [] ~ret:qint64;
    dynamic "blockSize" [] ~ret:int;
    dynamic "isRoot" [] ~ret:bool;
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "isReady" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "refresh" [];
    (*static  "mountedVolumes" [] ~ret:qList<QStorageInfo>;*)
    static  "root" [] ~ret:qStorageInfo;
  ]
let () = with_class qLinkedList'iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    (*dynamic "operator=" [arg "other" iterator] ~ret:iterator;*)
    constructor "" [arg "other" iterator];
    (*dynamic "operator=" [arg "other" iterator] ~ret:iterator;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
  ]
let () = with_class qMutableListIterator [
    constructor "" [arg "list" qList<T>];
    (*dynamic "operator=" [arg "list" qList<T>] ~ret:qMutableListIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "remove" [];
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "value" [] ~ret:t;*)
    dynamic "insert" [arg "value" t];
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qMutableHashIterator [
    constructor "" [arg "hash" qHash<Key,T>];
    (*dynamic "operator=" [arg "hash" qHash<Key,T>] ~ret:qMutableHashIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    dynamic "next" [] ~ret:item;
    dynamic "peekNext" [] ~ret:item;
    dynamic "hasPrevious" [] ~ret:bool;
    dynamic "previous" [] ~ret:item;
    dynamic "peekPrevious" [] ~ret:item;
    dynamic "remove" [];
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "value" [] ~ret:t;*)
    dynamic "key" [] ~ret:key;
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qStaticByteArrayMatcher [
  ]
let () = with_class qPointF [
    constructor "" [];
    constructor "" [arg "point" qPoint];
    constructor "" [arg "xpos" qreal;arg "ypos" qreal];
    dynamic "manhattanLength" [] ~ret:qreal;
    dynamic "isNull" [] ~ret:bool;
    dynamic "x" [] ~ret:qreal;
    dynamic "y" [] ~ret:qreal;
    dynamic "setX" [arg "x" qreal];
    dynamic "setY" [arg "y" qreal];
    dynamic "rx" [] ~ret:qreal;
    dynamic "ry" [] ~ret:qreal;
    (*dynamic "operator+=" [arg "point" qPointF] ~ret:qPointF;*)
    (*dynamic "operator-=" [arg "point" qPointF] ~ret:qPointF;*)
    (*dynamic "operator*=" [arg "factor" qreal] ~ret:qPointF;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qPointF;*)
    static  "dotProduct" [arg "arg0" qPointF &p1;arg "arg1" qPointF &p2] ~ret:qreal;
    dynamic "toPoint" [] ~ret:qPoint;
    static  "fromCGPoint" [arg "point" cGPoint] ~ret:qPointF;
    dynamic "toCGPoint" [] ~ret:cGPoint;
  ]
let () = with_class qFutureSynchronizer [
    constructor "" [];
    constructor "" [arg "future" qFuture<T>];
    dynamic "setFuture" [arg "future" qFuture<T>];
    dynamic "addFuture" [arg "future" qFuture<T>];
    dynamic "waitForFinished" [];
    dynamic "clearFutures" [];
    (*dynamic "futures" [] ~ret:qList<QFuture<T> >;*)
    dynamic "setCancelOnWait" [arg "enabled" bool];
    dynamic "cancelOnWait" [] ~ret:bool;
  ]
let () = with_class qListIterator [
    constructor "" [arg "list" qList<T>];
    (*dynamic "operator=" [arg "list" qList<T>] ~ret:qListIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qStringRef [
    constructor "" [];
    constructor "" [arg "string" qString;arg "position" int;arg "length" int];
    constructor "" [arg "string" qString];
    constructor "" [arg "other" qStringRef];
    constructor "" [arg "other" qStringRef];
    (*dynamic "operator=" [arg "other" qStringRef] ~ret:qStringRef;*)
    (*dynamic "operator=" [arg "other" qStringRef] ~ret:qStringRef;*)
    dynamic "string" [] ~ret:qString;
    dynamic "position" [] ~ret:int;
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "indexOf" [arg "str" qString;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "ch" qChar;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "str" qLatin1String;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "str" qStringRef;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qString;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "ch" qChar;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qLatin1String;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qStringRef;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "contains" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "str" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "count" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "count" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "count" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:int;
    (*dynamic "split" [arg "sep" qString;arg "behavior" qString'SplitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qVector<QStringRef>;*)
    (*dynamic "split" [arg "sep" qChar;arg "behavior" qString'SplitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qVector<QStringRef>;*)
    dynamic "left" [arg "n" int] ~ret:qStringRef;
    dynamic "right" [arg "n" int] ~ret:qStringRef;
    dynamic "mid" [arg "position" int;arg "n" int] ~ret:qStringRef;
    dynamic "truncate" [arg "position" int];
    dynamic "chop" [arg "n" int];
    dynamic "isRightToLeft" [] ~ret:bool;
    dynamic "startsWith" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "str" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "str" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    (*dynamic "operator=" [arg "string" qString] ~ret:qStringRef;*)
    dynamic "unicode" [] ~ret:qChar;
    dynamic "data" [] ~ret:qChar;
    dynamic "constData" [] ~ret:qChar;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "toAscii" [] ~ret:qByteArray;
    dynamic "toLatin1" [] ~ret:qByteArray;
    dynamic "toUtf8" [] ~ret:qByteArray;
    dynamic "toLocal8Bit" [] ~ret:qByteArray;
    (*dynamic "toUcs4" [] ~ret:qVector<uint>;*)
    dynamic "clear" [];
    dynamic "toString" [] ~ret:qString;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isNull" [] ~ret:bool;
    dynamic "appendTo" [arg "string" qString] ~ret:qStringRef;
    dynamic "at" [arg "position" int] ~ret:qChar;
    (*dynamic "operator[]" [arg "position" int] ~ret:qChar;*)
    (*dynamic "operator==" [arg "s" pchar] ~ret:bool;*)
    (*dynamic "operator!=" [arg "s" pchar] ~ret:bool;*)
    (*dynamic "operator<" [arg "s" pchar] ~ret:bool;*)
    (*dynamic "operator<=" [arg "s" pchar] ~ret:bool;*)
    (*dynamic "operator>" [arg "s" pchar] ~ret:bool;*)
    (*dynamic "operator>=" [arg "s" pchar] ~ret:bool;*)
    dynamic "compare" [arg "other" qString;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "compare" [arg "other" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "compare" [arg "other" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "compare" [arg "other" qByteArray;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qStringRef &s1;arg "arg1" qString &s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qStringRef &s1;arg "arg1" qStringRef &s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qStringRef &s1;arg "arg1" qLatin1String s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "localeAwareCompare" [arg "other" qString] ~ret:int;
    dynamic "localeAwareCompare" [arg "other" qStringRef] ~ret:int;
    static  "localeAwareCompare" [arg "arg0" qStringRef &s1;arg "arg1" qString &s2] ~ret:int;
    static  "localeAwareCompare" [arg "arg0" qStringRef &s1;arg "arg1" qStringRef &s2] ~ret:int;
    dynamic "trimmed" [] ~ret:qStringRef;
    dynamic "toShort" [arg "ok" bool;arg "base" int] ~ret:short;
    dynamic "toUShort" [arg "ok" bool;arg "base" int] ~ret:ushort;
    dynamic "toInt" [arg "ok" bool;arg "base" int] ~ret:int;
    dynamic "toUInt" [arg "ok" bool;arg "base" int] ~ret:uint;
    dynamic "toLong" [arg "ok" bool;arg "base" int] ~ret:long;
    dynamic "toULong" [arg "ok" bool;arg "base" int] ~ret:ulong;
    dynamic "toLongLong" [arg "ok" bool;arg "base" int] ~ret:qlonglong;
    dynamic "toULongLong" [arg "ok" bool;arg "base" int] ~ret:qulonglong;
    dynamic "toFloat" [arg "ok" bool] ~ret:float;
    dynamic "toDouble" [arg "ok" bool] ~ret:double;
  ]
let () = with_class qTextCodec [
    static  "codecForName" [arg "name" qByteArray] ~ret:qTextCodec;
    static  "codecForName" [arg "name" pchar] ~ret:qTextCodec;
    static  "codecForMib" [arg "mib" int] ~ret:qTextCodec;
    (*static  "availableCodecs" [] ~ret:qList<QByteArray>;*)
    (*static  "availableMibs" [] ~ret:qList<int>;*)
    static  "codecForLocale" [] ~ret:qTextCodec;
    static  "setCodecForLocale" [arg "c" qTextCodec];
    static  "codecForTr" [] ~ret:qTextCodec;
    static  "codecForHtml" [arg "ba" qByteArray] ~ret:qTextCodec;
    static  "codecForHtml" [arg "ba" qByteArray;arg "defaultCodec" qTextCodec] ~ret:qTextCodec;
    static  "codecForUtfText" [arg "ba" qByteArray] ~ret:qTextCodec;
    static  "codecForUtfText" [arg "ba" qByteArray;arg "defaultCodec" qTextCodec] ~ret:qTextCodec;
    dynamic "canEncode" [arg "ch" qChar] ~ret:bool;
    dynamic "canEncode" [arg "s" qString] ~ret:bool;
    dynamic "toUnicode" [arg "a" qByteArray] ~ret:qString;
    dynamic "toUnicode" [arg "chars" pchar] ~ret:qString;
    dynamic "fromUnicode" [arg "str" qString] ~ret:qByteArray;
    dynamic "toUnicode" [arg "input" pchar;arg "size" int;arg "state" converterState] ~ret:qString;
    dynamic "fromUnicode" [arg "input" qChar;arg "number" int;arg "state" converterState] ~ret:qByteArray;
    dynamic "makeDecoder" [arg "flags" conversionFlags] ~ret:qTextDecoder;
    dynamic "makeEncoder" [arg "flags" conversionFlags] ~ret:qTextEncoder;
    dynamic "name" [] ~ret:qByteArray;
    (*dynamic "aliases" [] ~ret:qList<QByteArray>;*)
    dynamic "mibEnum" [] ~ret:int;
  ]
let () = with_class qJsonArray'const_iterator [
    constructor "" [];
    constructor "" [arg "other" const_iterator];
    constructor "" [arg "other" iterator];
    (*dynamic "operator*" [] ~ret:qJsonValue;*)
    (*dynamic "operator->" [] ~ret:qJsonValue;*)
    (*dynamic "operator[]" [arg "j" int] ~ret:qJsonValue;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "other" const_iterator] ~ret:int;*)
  ]
let () = with_class qSystemSemaphore [
    constructor "" [arg "key" qString;arg "initialValue" int;arg "mode" accessMode];
    dynamic "setKey" [arg "key" qString;arg "initialValue" int;arg "mode" accessMode];
    dynamic "key" [] ~ret:qString;
    dynamic "acquire" [] ~ret:bool;
    dynamic "release" [arg "n" int] ~ret:bool;
    dynamic "error" [] ~ret:systemSemaphoreError;
    dynamic "errorString" [] ~ret:qString;
  ]
let () = with_class qUrl [
    constructor "" [];
    constructor "" [arg "other" qUrl];
    (*dynamic "operator=" [arg "url" qUrl] ~ret:qUrl;*)
    constructor "" [arg "url" qString;arg "parsingMode" parsingMode];
    (*dynamic "operator=" [arg "url" qString] ~ret:qUrl;*)
    constructor "" [arg "other" qUrl];
    (*dynamic "operator=" [arg "other" qUrl] ~ret:qUrl;*)
    dynamic "swap" [arg "other" qUrl];
    dynamic "setUrl" [arg "url" qString;arg "parsingMode" parsingMode];
    dynamic "url" [arg "options" formattingOptions] ~ret:qString;
    dynamic "toString" [arg "options" formattingOptions] ~ret:qString;
    dynamic "toDisplayString" [arg "options" formattingOptions] ~ret:qString;
    dynamic "adjusted" [arg "options" formattingOptions] ~ret:qUrl;
    dynamic "toEncoded" [arg "options" formattingOptions] ~ret:qByteArray;
    static  "fromEncoded" [arg "input" qByteArray;arg "parsingMode" parsingMode] ~ret:qUrl;
    static  "fromUserInput" [arg "userInput" qString] ~ret:qUrl;
    static  "fromUserInput" [arg "userInput" qString;arg "workingDirectory" qString;arg "options" userInputResolutionOptions] ~ret:qUrl;
    dynamic "isValid" [] ~ret:bool;
    dynamic "errorString" [] ~ret:qString;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "setScheme" [arg "scheme" qString];
    dynamic "scheme" [] ~ret:qString;
    dynamic "setAuthority" [arg "authority" qString;arg "mode" parsingMode];
    dynamic "authority" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setUserInfo" [arg "userInfo" qString;arg "mode" parsingMode];
    dynamic "userInfo" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setUserName" [arg "userName" qString;arg "mode" parsingMode];
    dynamic "userName" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setPassword" [arg "password" qString;arg "mode" parsingMode];
    dynamic "password" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setHost" [arg "host" qString;arg "mode" parsingMode];
    dynamic "host" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "topLevelDomain" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setPort" [arg "port" int];
    dynamic "port" [arg "defaultPort" int] ~ret:int;
    dynamic "setPath" [arg "path" qString;arg "mode" parsingMode];
    dynamic "path" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "fileName" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "hasQuery" [] ~ret:bool;
    dynamic "setQuery" [arg "query" qString;arg "mode" parsingMode];
    dynamic "setQuery" [arg "query" qUrlQuery];
    dynamic "query" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "hasFragment" [] ~ret:bool;
    dynamic "fragment" [arg "options" componentFormattingOptions] ~ret:qString;
    dynamic "setFragment" [arg "fragment" qString;arg "mode" parsingMode];
    dynamic "resolved" [arg "relative" qUrl] ~ret:qUrl;
    dynamic "isRelative" [] ~ret:bool;
    dynamic "isParentOf" [arg "childUrl" qUrl] ~ret:bool;
    dynamic "isLocalFile" [] ~ret:bool;
    static  "fromLocalFile" [arg "localFile" qString] ~ret:qUrl;
    dynamic "toLocalFile" [] ~ret:qString;
    (*dynamic "operator==" [arg "url" qUrl] ~ret:bool;*)
    (*dynamic "operator!=" [arg "url" qUrl] ~ret:bool;*)
    dynamic "matches" [arg "url" qUrl;arg "options" formattingOptions] ~ret:bool;
    static  "fromPercentEncoding" [arg "input" qByteArray] ~ret:qString;
    static  "toPercentEncoding" [arg "input" qString;arg "exclude" qByteArray;arg "include" qByteArray] ~ret:qByteArray;
    static  "fromCFURL" [arg "url" cFURLRef] ~ret:qUrl;
    dynamic "toCFURL" [] ~ret:cFURLRef;
    static  "fromNSURL" [arg "url" nSURL] ~ret:qUrl;
    dynamic "toNSURL" [] ~ret:nSURL;
    static  "fromPunycode" [arg "pc" qByteArray] ~ret:qString;
    static  "toPunycode" [arg "uc" qString] ~ret:qByteArray;
    dynamic "setQueryItems" [arg "query" qList<QPair<QString,QString> >];
    dynamic "addQueryItem" [arg "key" qString;arg "value" qString];
    (*dynamic "queryItems" [] ~ret:qList<QPair<QString, QString> >;*)
    dynamic "hasQueryItem" [arg "key" qString] ~ret:bool;
    dynamic "queryItemValue" [arg "key" qString] ~ret:qString;
    dynamic "allQueryItemValues" [arg "key" qString] ~ret:qStringList;
    dynamic "removeQueryItem" [arg "key" qString];
    dynamic "removeAllQueryItems" [arg "key" qString];
    dynamic "setEncodedQueryItems" [arg "query" qList<QPair<QByteArray,QByteArray> >];
    dynamic "addEncodedQueryItem" [arg "key" qByteArray;arg "value" qByteArray];
    (*dynamic "encodedQueryItems" [] ~ret:qList<QPair<QByteArray, QByteArray> >;*)
    dynamic "hasEncodedQueryItem" [arg "key" qByteArray] ~ret:bool;
    dynamic "encodedQueryItemValue" [arg "key" qByteArray] ~ret:qByteArray;
    (*dynamic "allEncodedQueryItemValues" [arg "key" qByteArray] ~ret:qList<QByteArray>;*)
    dynamic "removeEncodedQueryItem" [arg "key" qByteArray];
    dynamic "removeAllEncodedQueryItems" [arg "key" qByteArray];
    dynamic "setEncodedUrl" [arg "encodedUrl" qByteArray;arg "parsingMode" parsingMode];
    dynamic "encodedUserName" [] ~ret:qByteArray;
    dynamic "setEncodedUserName" [arg "userName" qByteArray];
    dynamic "encodedPassword" [] ~ret:qByteArray;
    dynamic "setEncodedPassword" [arg "password" qByteArray];
    dynamic "encodedHost" [] ~ret:qByteArray;
    dynamic "setEncodedHost" [arg "host" qByteArray];
    dynamic "encodedPath" [] ~ret:qByteArray;
    dynamic "setEncodedPath" [arg "path" qByteArray];
    dynamic "encodedQuery" [] ~ret:qByteArray;
    dynamic "setEncodedQuery" [arg "query" qByteArray];
    dynamic "encodedFragment" [] ~ret:qByteArray;
    dynamic "setEncodedFragment" [arg "fragment" qByteArray];
    static  "fromAce" [arg "domain" qByteArray] ~ret:qString;
    static  "toAce" [arg "domain" qString] ~ret:qByteArray;
    static  "idnWhitelist" [] ~ret:qStringList;
    static  "toStringList" [arg "urls" qList<QUrl>;arg "options" formattingOptions] ~ret:qStringList;
    (*static  "fromStringList" [arg "urls" qStringList;arg "mode" parsingMode] ~ret:qList<QUrl>;*)
    static  "setIdnWhitelist" [arg "list" qStringList];
  ]
let () = with_class qReadLocker [
    constructor "" [arg "lock" qReadWriteLock];
    dynamic "unlock" [];
    dynamic "relock" [];
    dynamic "readWriteLock" [] ~ret:qReadWriteLock;
  ]
let () = with_class qHash'key_iterator [
    constructor "" [];
    constructor "" [arg "o" const_iterator];
    (*dynamic "operator*" [] ~ret:key;*)
    (*dynamic "operator->" [] ~ret:key;*)
    (*dynamic "operator==" [arg "other" key_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" key_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:key_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:key_iterator;*)
    (*dynamic "operator--" [] ~ret:key_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:key_iterator;*)
    dynamic "base" [] ~ret:const_iterator;
  ]
let () = with_class qFuture [
    constructor "" [];
    (*dynamic "operator==" [arg "other" qFuture] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qFuture] ~ret:bool;*)
    dynamic "cancel" [];
    dynamic "isCanceled" [] ~ret:bool;
    dynamic "setPaused" [arg "paused" bool];
    dynamic "isPaused" [] ~ret:bool;
    dynamic "pause" [];
    dynamic "resume" [];
    dynamic "togglePaused" [];
    dynamic "isStarted" [] ~ret:bool;
    dynamic "isFinished" [] ~ret:bool;
    dynamic "isRunning" [] ~ret:bool;
    dynamic "resultCount" [] ~ret:int;
    dynamic "progressValue" [] ~ret:int;
    dynamic "progressMinimum" [] ~ret:int;
    dynamic "progressMaximum" [] ~ret:int;
    dynamic "progressText" [] ~ret:qString;
    dynamic "waitForFinished" [];
    (*dynamic "result" [] ~ret:t;*)
    (*dynamic "resultAt" [arg "index" int] ~ret:t;*)
    dynamic "isResultReadyAt" [arg "index" int] ~ret:bool;
    constructor "" [];
    (*dynamic "results" [] ~ret:qList<T>;*)
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
  ]
let () = with_class qFutureIterator [
    constructor "" [arg "future" qFuture<T>];
    (*dynamic "operator=" [arg "future" qFuture<T>] ~ret:qFutureIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qTextEncoder [
    constructor "" [arg "codec" qTextCodec];
    constructor "" [arg "codec" qTextCodec;arg "flags" qTextCodec'ConversionFlags];
    dynamic "fromUnicode" [arg "str" qString] ~ret:qByteArray;
    dynamic "fromUnicode" [arg "uc" qChar;arg "len" int] ~ret:qByteArray;
  ]
let () = with_class qUuid [
    constructor "" [];
    constructor "" [arg "l" uint;arg "arg1" ushort w1;arg "arg2" ushort w2;arg "arg3" uchar b1;arg "arg4" uchar b2;arg "arg5" uchar b3;arg "arg6" uchar b4;arg "arg7" uchar b5;arg "arg8" uchar b6;arg "arg9" uchar b7;arg "arg10" uchar b8];
    constructor "" [arg "text" qString];
    dynamic "toString" [] ~ret:qString;
    constructor "" [arg "text" qByteArray];
    dynamic "toByteArray" [] ~ret:qByteArray;
    dynamic "toRfc4122" [] ~ret:qByteArray;
    static  "fromRfc4122" [arg "bytes" qByteArray] ~ret:qUuid;
    dynamic "isNull" [] ~ret:bool;
    (*dynamic "operator==" [arg "other" qUuid] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qUuid] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qUuid] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qUuid] ~ret:bool;*)
    constructor "" [arg "guid" gUID];
    (*dynamic "operator=" [arg "guid" gUID] ~ret:qUuid;*)
    constructor "" [];
    (*dynamic "operator==" [arg "guid" gUID] ~ret:bool;*)
    (*dynamic "operator!=" [arg "guid" gUID] ~ret:bool;*)
    static  "createUuid" [] ~ret:qUuid;
    static  "createUuidV3" [arg "ns" qUuid;arg "baseData" qByteArray] ~ret:qUuid;
    static  "createUuidV5" [arg "ns" qUuid;arg "baseData" qByteArray] ~ret:qUuid;
    static  "createUuidV3" [arg "ns" qUuid;arg "baseData" qString] ~ret:qUuid;
    static  "createUuidV5" [arg "ns" qUuid;arg "baseData" qString] ~ret:qUuid;
    dynamic "variant" [] ~ret:qUuid'Variant;
    dynamic "version" [] ~ret:qUuid'Version;
    static  "fromCFUUID" [arg "uuid" cFUUIDRef] ~ret:qUuid;
    dynamic "toCFUUID" [] ~ret:cFUUIDRef;
    static  "fromNSUUID" [arg "uuid" nSUUID] ~ret:qUuid;
    dynamic "toNSUUID" [] ~ret:nSUUID;
  ]
let () = with_class qMessageLogger [
    constructor "" [];
    constructor "" [arg "file" pchar;arg "line" int;arg "function" pchar];
    constructor "" [arg "file" pchar;arg "line" int;arg "function" pchar;arg "category" pchar];
    dynamic "debug" [arg "msg" pchar;arg "arg1" ...];
    dynamic "info" [arg "msg" pchar;arg "arg1" ...];
    dynamic "warning" [arg "msg" pchar;arg "arg1" ...];
    dynamic "critical" [arg "msg" pchar;arg "arg1" ...];
    dynamic "debug" [arg "cat" qLoggingCategory;arg "msg" pchar;arg "arg2" ...];
    dynamic "debug" [arg "catFunc" categoryFunction;arg "msg" pchar;arg "arg2" ...];
    dynamic "info" [arg "cat" qLoggingCategory;arg "msg" pchar;arg "arg2" ...];
    dynamic "info" [arg "catFunc" categoryFunction;arg "msg" pchar;arg "arg2" ...];
    dynamic "warning" [arg "cat" qLoggingCategory;arg "msg" pchar;arg "arg2" ...];
    dynamic "warning" [arg "catFunc" categoryFunction;arg "msg" pchar;arg "arg2" ...];
    dynamic "critical" [arg "cat" qLoggingCategory;arg "msg" pchar;arg "arg2" ...];
    dynamic "critical" [arg "catFunc" categoryFunction;arg "msg" pchar;arg "arg2" ...];
    dynamic "fatal" [arg "msg" pchar;arg "arg1" ...];
    dynamic "debug" [] ~ret:qDebug;
    dynamic "debug" [arg "cat" qLoggingCategory] ~ret:qDebug;
    dynamic "debug" [arg "catFunc" categoryFunction] ~ret:qDebug;
    dynamic "info" [] ~ret:qDebug;
    dynamic "info" [arg "cat" qLoggingCategory] ~ret:qDebug;
    dynamic "info" [arg "catFunc" categoryFunction] ~ret:qDebug;
    dynamic "warning" [] ~ret:qDebug;
    dynamic "warning" [arg "cat" qLoggingCategory] ~ret:qDebug;
    dynamic "warning" [arg "catFunc" categoryFunction] ~ret:qDebug;
    dynamic "critical" [] ~ret:qDebug;
    dynamic "critical" [arg "cat" qLoggingCategory] ~ret:qDebug;
    dynamic "critical" [arg "catFunc" categoryFunction] ~ret:qDebug;
  ]
let () = with_class qSequentialIterable [
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "at" [arg "idx" int] ~ret:qVariant;
    dynamic "size" [] ~ret:int;
    dynamic "canReverseIterate" [] ~ret:bool;
  ]
let () = with_class qContiguousCache [
    constructor "" [arg "capacity" int];
    constructor "" [arg "other" qContiguousCache<T>];
    (*dynamic "operator=" [arg "other" qContiguousCache<T>] ~ret:qContiguousCache<T>;*)
    (*dynamic "operator=" [arg "other" qContiguousCache<T>] ~ret:qContiguousCache<T>;*)
    dynamic "swap" [arg "other" qContiguousCache<T>];
    (*dynamic "operator==" [arg "other" qContiguousCache<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qContiguousCache<T>] ~ret:bool;*)
    dynamic "capacity" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isFull" [] ~ret:bool;
    dynamic "available" [] ~ret:int;
    dynamic "clear" [];
    dynamic "setCapacity" [arg "size" int];
    (*dynamic "at" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    dynamic "append" [arg "value" t];
    dynamic "prepend" [arg "value" t];
    dynamic "insert" [arg "i" int;arg "value" t];
    dynamic "containsIndex" [arg "i" int] ~ret:bool;
    dynamic "firstIndex" [] ~ret:int;
    dynamic "lastIndex" [] ~ret:int;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    dynamic "removeFirst" [];
    (*dynamic "takeFirst" [] ~ret:t;*)
    dynamic "removeLast" [];
    (*dynamic "takeLast" [] ~ret:t;*)
    dynamic "areIndexesValid" [] ~ret:bool;
    dynamic "normalizeIndexes" [];
  ]
let () = with_class qMetaEnum [
    dynamic "name" [] ~ret:pchar;
    dynamic "isFlag" [] ~ret:bool;
    dynamic "isScoped" [] ~ret:bool;
    dynamic "keyCount" [] ~ret:int;
    dynamic "key" [arg "index" int] ~ret:pchar;
    dynamic "value" [arg "index" int] ~ret:int;
    dynamic "scope" [] ~ret:pchar;
    dynamic "keyToValue" [arg "key" pchar;arg "ok" bool] ~ret:int;
    dynamic "valueToKey" [arg "value" int] ~ret:pchar;
    dynamic "keysToValue" [arg "keys" pchar;arg "ok" bool] ~ret:int;
    dynamic "valueToKeys" [arg "value" int] ~ret:qByteArray;
    dynamic "isValid" [] ~ret:bool;
    static  "fromType" [] ~ret:qMetaEnum;
  ]
let () = with_class qCryptographicHash [
    constructor "" [arg "method" algorithm];
    dynamic "reset" [];
    dynamic "addData" [arg "data" pchar;arg "length" int];
    dynamic "addData" [arg "data" qByteArray];
    dynamic "addData" [arg "device" qIODevice] ~ret:bool;
    dynamic "result" [] ~ret:qByteArray;
    static  "hash" [arg "data" qByteArray;arg "method" algorithm] ~ret:qByteArray;
  ]
let () = with_class qLibraryInfo [
    static  "licensee" [] ~ret:qString;
    static  "licensedProducts" [] ~ret:qString;
    static  "buildDate" [] ~ret:qDate;
    static  "isDebugBuild" [] ~ret:bool;
    static  "version" [] ~ret:qVersionNumber;
    static  "location" [arg "loc" libraryLocation] ~ret:qString;
  ]
let () = with_class qProcess'CreateProcessArguments [
  ]
let () = with_class qCommandLineOption [
    constructor "" [arg "name" qString];
    constructor "" [arg "names" qStringList];
    constructor "" [arg "name" qString;arg "description" qString;arg "valueName" qString;arg "defaultValue" qString];
    constructor "" [arg "names" qStringList;arg "description" qString;arg "valueName" qString;arg "defaultValue" qString];
    constructor "" [arg "other" qCommandLineOption];
    (*dynamic "operator=" [arg "other" qCommandLineOption] ~ret:qCommandLineOption;*)
    (*dynamic "operator=" [arg "other" qCommandLineOption] ~ret:qCommandLineOption;*)
    dynamic "swap" [arg "other" qCommandLineOption];
    dynamic "names" [] ~ret:qStringList;
    dynamic "setValueName" [arg "valueName" qString];
    dynamic "valueName" [] ~ret:qString;
    dynamic "setDescription" [arg "description" qString];
    dynamic "description" [] ~ret:qString;
    dynamic "setDefaultValue" [arg "defaultValue" qString];
    dynamic "setDefaultValues" [arg "defaultValues" qStringList];
    dynamic "defaultValues" [] ~ret:qStringList;
    dynamic "flags" [] ~ret:flags;
    dynamic "setFlags" [arg "flags" flags];
    dynamic "setHidden" [arg "hide" bool];
    dynamic "isHidden" [] ~ret:bool;
  ]
let () = with_class qList'const_iterator [
    constructor "" [];
    constructor "" [arg "other" const_iterator];
    constructor "" [arg "other" iterator];
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator[]" [arg "j" difference_type] ~ret:t;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" difference_type] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" difference_type] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" difference_type] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" difference_type] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "other" const_iterator] ~ret:int;*)
  ]
let () = with_class qMutableVectorIterator [
    constructor "" [arg "vector" qVector<T>];
    (*dynamic "operator=" [arg "vector" qVector<T>] ~ret:qMutableVectorIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "remove" [];
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "value" [] ~ret:t;*)
    dynamic "insert" [arg "value" t];
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qMetaProperty [
    dynamic "name" [] ~ret:pchar;
    dynamic "typeName" [] ~ret:pchar;
    dynamic "type" [] ~ret:qVariant'Type;
    dynamic "userType" [] ~ret:int;
    dynamic "propertyIndex" [] ~ret:int;
    dynamic "isReadable" [] ~ret:bool;
    dynamic "isWritable" [] ~ret:bool;
    dynamic "isResettable" [] ~ret:bool;
    dynamic "isDesignable" [arg "object" qObject] ~ret:bool;
    dynamic "isScriptable" [arg "object" qObject] ~ret:bool;
    dynamic "isStored" [arg "object" qObject] ~ret:bool;
    dynamic "isEditable" [arg "object" qObject] ~ret:bool;
    dynamic "isUser" [arg "object" qObject] ~ret:bool;
    dynamic "isConstant" [] ~ret:bool;
    dynamic "isFinal" [] ~ret:bool;
    dynamic "isFlagType" [] ~ret:bool;
    dynamic "isEnumType" [] ~ret:bool;
    dynamic "enumerator" [] ~ret:qMetaEnum;
    dynamic "hasNotifySignal" [] ~ret:bool;
    dynamic "notifySignal" [] ~ret:qMetaMethod;
    dynamic "notifySignalIndex" [] ~ret:int;
    dynamic "revision" [] ~ret:int;
    dynamic "read" [arg "object" qObject] ~ret:qVariant;
    dynamic "write" [arg "object" qObject;arg "value" qVariant] ~ret:bool;
    dynamic "reset" [arg "object" qObject] ~ret:bool;
    dynamic "readOnGadget" [arg "gadget" void] ~ret:qVariant;
    dynamic "writeOnGadget" [arg "gadget" void;arg "value" qVariant] ~ret:bool;
    dynamic "resetOnGadget" [arg "gadget" void] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
  ]
let () = with_class qString [
    constructor "" [];
    constructor "" [arg "unicode" qChar;arg "size" int];
    constructor "" [arg "ch" qChar];
    constructor "" [arg "size" int;arg "ch" qChar];
    constructor "" [arg "str" qLatin1String];
    constructor "" [arg "other" qString];
    (*dynamic "operator=" [arg "ch" qChar] ~ret:qString;*)
    (*dynamic "operator=" [arg "other" qString] ~ret:qString;*)
    (*dynamic "operator=" [arg "str" qLatin1String] ~ret:qString;*)
    constructor "" [arg "other" qString];
    (*dynamic "operator=" [arg "other" qString] ~ret:qString;*)
    dynamic "swap" [arg "other" qString];
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "resize" [arg "size" int];
    dynamic "resize" [arg "size" int;arg "fillChar" qChar];
    dynamic "fill" [arg "ch" qChar;arg "size" int] ~ret:qString;
    dynamic "truncate" [arg "position" int];
    dynamic "chop" [arg "n" int];
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "squeeze" [];
    dynamic "unicode" [] ~ret:qChar;
    dynamic "data" [] ~ret:qChar;
    dynamic "data" [] ~ret:qChar;
    dynamic "constData" [] ~ret:qChar;
    dynamic "clear" [];
    dynamic "at" [arg "position" int] ~ret:qChar;
    (*dynamic "operator[]" [arg "position" int] ~ret:qChar;*)
    (*dynamic "operator[]" [arg "position" int] ~ret:qCharRef;*)
    (*dynamic "operator[]" [arg "position" uint] ~ret:qChar;*)
    (*dynamic "operator[]" [arg "position" uint] ~ret:qCharRef;*)
    dynamic "arg" [arg "a" qlonglong;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" qulonglong;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" long;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" ulong;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" int;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" uint;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" short;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" ushort;arg "fieldWidth" int;arg "base" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" double;arg "fieldWidth" int;arg "format" pchar;arg "precision" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" pchar;arg "fieldWidth" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" qChar;arg "fieldWidth" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "a" qString;arg "fieldWidth" int;arg "fillChar" qChar] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4;arg "arg4" qString &a5] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4;arg "arg4" qString &a5;arg "arg5" qString &a6] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4;arg "arg4" qString &a5;arg "arg5" qString &a6;arg "arg6" qString &a7] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4;arg "arg4" qString &a5;arg "arg5" qString &a6;arg "arg6" qString &a7;arg "arg7" qString &a8] ~ret:qString;
    dynamic "arg" [arg "arg0" qString &a1;arg "arg1" qString &a2;arg "arg2" qString &a3;arg "arg3" qString &a4;arg "arg4" qString &a5;arg "arg5" qString &a6;arg "arg6" qString &a7;arg "arg7" qString &a8;arg "arg8" qString &a9] ~ret:qString;
    dynamic "vsprintf" [arg "cformat" pchar;arg "ap" va_list] ~ret:qString;
    dynamic "sprintf" [arg "cformat" pchar;arg "arg1" ...] ~ret:qString;
    static  "vasprintf" [arg "cformat" pchar;arg "ap" va_list] ~ret:qString;
    static  "asprintf" [arg "cformat" pchar;arg "arg1" ...] ~ret:qString;
    dynamic "indexOf" [arg "ch" qChar;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "str" qString;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "str" qLatin1String;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "str" qStringRef;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "ch" qChar;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qString;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qLatin1String;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "lastIndexOf" [arg "str" qStringRef;arg "from" int;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "contains" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "str" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "contains" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "count" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "count" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "count" [arg "str" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "indexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "contains" [arg "rx" qRegExp] ~ret:bool;
    dynamic "count" [arg "rx" qRegExp] ~ret:int;
    dynamic "indexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "contains" [arg "rx" qRegExp] ~ret:bool;
    dynamic "indexOf" [arg "re" qRegularExpression;arg "from" int] ~ret:int;
    dynamic "indexOf" [arg "re" qRegularExpression;arg "from" int;arg "rmatch" qRegularExpressionMatch] ~ret:int;
    dynamic "lastIndexOf" [arg "re" qRegularExpression;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "re" qRegularExpression;arg "from" int;arg "rmatch" qRegularExpressionMatch] ~ret:int;
    dynamic "contains" [arg "re" qRegularExpression] ~ret:bool;
    dynamic "contains" [arg "re" qRegularExpression;arg "match" qRegularExpressionMatch] ~ret:bool;
    dynamic "count" [arg "re" qRegularExpression] ~ret:int;
    dynamic "section" [arg "sep" qChar;arg "start" int;arg "end" int;arg "flags" sectionFlags] ~ret:qString;
    dynamic "section" [arg "sep" qString;arg "start" int;arg "end" int;arg "flags" sectionFlags] ~ret:qString;
    dynamic "section" [arg "reg" qRegExp;arg "start" int;arg "end" int;arg "flags" sectionFlags] ~ret:qString;
    dynamic "section" [arg "re" qRegularExpression;arg "start" int;arg "end" int;arg "flags" sectionFlags] ~ret:qString;
    dynamic "left" [arg "n" int] ~ret:qString;
    dynamic "right" [arg "n" int] ~ret:qString;
    dynamic "mid" [arg "position" int;arg "n" int] ~ret:qString;
    dynamic "leftRef" [arg "n" int] ~ret:qStringRef;
    dynamic "rightRef" [arg "n" int] ~ret:qStringRef;
    dynamic "midRef" [arg "position" int;arg "n" int] ~ret:qStringRef;
    dynamic "startsWith" [arg "s" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "s" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "s" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "startsWith" [arg "c" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "s" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "s" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "s" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "endsWith" [arg "c" qChar;arg "cs" qt'CaseSensitivity] ~ret:bool;
    dynamic "leftJustified" [arg "width" int;arg "fill" qChar;arg "truncate" bool] ~ret:qString;
    dynamic "rightJustified" [arg "width" int;arg "fill" qChar;arg "truncate" bool] ~ret:qString;
    dynamic "toLower" [] ~ret:qString;
    dynamic "toUpper" [] ~ret:qString;
    dynamic "toCaseFolded" [] ~ret:qString;
    dynamic "trimmed" [] ~ret:qString;
    dynamic "simplified" [] ~ret:qString;
    dynamic "toHtmlEscaped" [] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "ch" qChar] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "unicode" qChar;arg "size" int] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "str" qString] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "str" qStringRef] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "str" qLatin1String] ~ret:qString;
    dynamic "append" [arg "ch" qChar] ~ret:qString;
    dynamic "append" [arg "str" qChar;arg "len" int] ~ret:qString;
    dynamic "append" [arg "str" qString] ~ret:qString;
    dynamic "append" [arg "reference" qStringRef] ~ret:qString;
    dynamic "append" [arg "str" qLatin1String] ~ret:qString;
    dynamic "prepend" [arg "ch" qChar] ~ret:qString;
    dynamic "prepend" [arg "str" qChar;arg "len" int] ~ret:qString;
    dynamic "prepend" [arg "str" qString] ~ret:qString;
    dynamic "prepend" [arg "str" qStringRef] ~ret:qString;
    dynamic "prepend" [arg "str" qLatin1String] ~ret:qString;
    (*dynamic "operator+=" [arg "ch" qChar] ~ret:qString;*)
    (*dynamic "operator+=" [arg "other" qString] ~ret:qString;*)
    (*dynamic "operator+=" [arg "str" qStringRef] ~ret:qString;*)
    (*dynamic "operator+=" [arg "str" qLatin1String] ~ret:qString;*)
    dynamic "remove" [arg "position" int;arg "n" int] ~ret:qString;
    dynamic "remove" [arg "ch" qChar;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "remove" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "position" int;arg "n" int;arg "after" qChar] ~ret:qString;
    dynamic "replace" [arg "position" int;arg "n" int;arg "unicode" qChar;arg "size" int] ~ret:qString;
    dynamic "replace" [arg "position" int;arg "n" int;arg "after" qString] ~ret:qString;
    dynamic "replace" [arg "before" qChar;arg "after" qChar;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "before" qChar;arg "blen" int;arg "after" qChar;arg "alen" int;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "before" qLatin1String;arg "after" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "before" qLatin1String;arg "after" qString;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "before" qString;arg "after" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "before" qString;arg "after" qString;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "ch" qChar;arg "after" qString;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "c" qChar;arg "after" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:qString;
    dynamic "replace" [arg "rx" qRegExp;arg "after" qString] ~ret:qString;
    dynamic "remove" [arg "rx" qRegExp] ~ret:qString;
    dynamic "replace" [arg "re" qRegularExpression;arg "after" qString] ~ret:qString;
    dynamic "remove" [arg "re" qRegularExpression] ~ret:qString;
    dynamic "split" [arg "sep" qString;arg "behavior" splitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qStringList;
    (*dynamic "splitRef" [arg "sep" qString;arg "behavior" splitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qVector<QStringRef>;*)
    dynamic "split" [arg "sep" qChar;arg "behavior" splitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qStringList;
    (*dynamic "splitRef" [arg "sep" qChar;arg "behavior" splitBehavior;arg "cs" qt'CaseSensitivity] ~ret:qVector<QStringRef>;*)
    dynamic "split" [arg "rx" qRegExp;arg "behavior" splitBehavior] ~ret:qStringList;
    (*dynamic "splitRef" [arg "rx" qRegExp;arg "behavior" splitBehavior] ~ret:qVector<QStringRef>;*)
    dynamic "split" [arg "re" qRegularExpression;arg "behavior" splitBehavior] ~ret:qStringList;
    (*dynamic "splitRef" [arg "re" qRegularExpression;arg "behavior" splitBehavior] ~ret:qVector<QStringRef>;*)
    dynamic "normalized" [arg "mode" normalizationForm;arg "version" qChar'UnicodeVersion] ~ret:qString;
    dynamic "repeated" [arg "times" int] ~ret:qString;
    dynamic "utf16" [] ~ret:ushort;
    dynamic "toLatin1" [] ~ret:qByteArray;
    dynamic "toUtf8" [] ~ret:qByteArray;
    dynamic "toLocal8Bit" [] ~ret:qByteArray;
    (*dynamic "toUcs4" [] ~ret:qVector<uint>;*)
    static  "fromLatin1" [arg "str" pchar;arg "size" int] ~ret:qString;
    static  "fromUtf8" [arg "str" pchar;arg "size" int] ~ret:qString;
    static  "fromLocal8Bit" [arg "str" pchar;arg "size" int] ~ret:qString;
    static  "fromLatin1" [arg "str" qByteArray] ~ret:qString;
    static  "fromUtf8" [arg "str" qByteArray] ~ret:qString;
    static  "fromLocal8Bit" [arg "str" qByteArray] ~ret:qString;
    static  "fromUtf16" [arg "unicode" ushort;arg "size" int] ~ret:qString;
    static  "fromUcs4" [arg "unicode" uint;arg "size" int] ~ret:qString;
    static  "fromRawData" [arg "unicode" qChar;arg "size" int] ~ret:qString;
    static  "fromUtf16" [arg "str" char16_t;arg "size" int] ~ret:qString;
    static  "fromUcs4" [arg "str" char32_t;arg "size" int] ~ret:qString;
    static  "fromAscii" [arg "str" pchar;arg "size" int] ~ret:qString;
    static  "fromAscii" [arg "str" qByteArray] ~ret:qString;
    dynamic "toAscii" [] ~ret:qByteArray;
    dynamic "toWCharArray" [arg "array" wchar_t] ~ret:int;
    static  "fromWCharArray" [arg "string" wchar_t;arg "size" int] ~ret:qString;
    dynamic "setRawData" [arg "unicode" qChar;arg "size" int] ~ret:qString;
    dynamic "setUnicode" [arg "unicode" qChar;arg "size" int] ~ret:qString;
    dynamic "setUtf16" [arg "unicode" ushort;arg "size" int] ~ret:qString;
    dynamic "compare" [arg "other" qString;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "compare" [arg "other" qLatin1String;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qString &s1;arg "arg1" qString &s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qString &s1;arg "arg1" qLatin1String s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qLatin1String s1;arg "arg1" qString &s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "compare" [arg "ref" qStringRef;arg "cs" qt'CaseSensitivity] ~ret:int;
    static  "compare" [arg "arg0" qString &s1;arg "arg1" qStringRef &s2;arg "cs" qt'CaseSensitivity] ~ret:int;
    dynamic "localeAwareCompare" [arg "other" qString] ~ret:int;
    static  "localeAwareCompare" [arg "arg0" qString &s1;arg "arg1" qString &s2] ~ret:int;
    dynamic "localeAwareCompare" [arg "other" qStringRef] ~ret:int;
    static  "localeAwareCompare" [arg "arg0" qString &s1;arg "arg1" qStringRef &s2] ~ret:int;
    dynamic "toShort" [arg "ok" bool;arg "base" int] ~ret:short;
    dynamic "toUShort" [arg "ok" bool;arg "base" int] ~ret:ushort;
    dynamic "toInt" [arg "ok" bool;arg "base" int] ~ret:int;
    dynamic "toUInt" [arg "ok" bool;arg "base" int] ~ret:uint;
    dynamic "toLong" [arg "ok" bool;arg "base" int] ~ret:long;
    dynamic "toULong" [arg "ok" bool;arg "base" int] ~ret:ulong;
    dynamic "toLongLong" [arg "ok" bool;arg "base" int] ~ret:qlonglong;
    dynamic "toULongLong" [arg "ok" bool;arg "base" int] ~ret:qulonglong;
    dynamic "toFloat" [arg "ok" bool] ~ret:float;
    dynamic "toDouble" [arg "ok" bool] ~ret:double;
    dynamic "setNum" [arg "n" short;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" ushort;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" int;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" uint;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" long;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" ulong;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" qlonglong;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" qulonglong;arg "base" int] ~ret:qString;
    dynamic "setNum" [arg "n" float;arg "format" pchar;arg "precision" int] ~ret:qString;
    dynamic "setNum" [arg "n" double;arg "format" pchar;arg "precision" int] ~ret:qString;
    static  "number" [arg "n" int;arg "base" int] ~ret:qString;
    static  "number" [arg "n" uint;arg "base" int] ~ret:qString;
    static  "number" [arg "n" long;arg "base" int] ~ret:qString;
    static  "number" [arg "n" ulong;arg "base" int] ~ret:qString;
    static  "number" [arg "n" qlonglong;arg "base" int] ~ret:qString;
    static  "number" [arg "n" qulonglong;arg "base" int] ~ret:qString;
    static  "number" [arg "n" double;arg "format" pchar;arg "precision" int] ~ret:qString;
    (*dynamic "operator==" [arg "other" qLatin1String] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qLatin1String] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qLatin1String] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qLatin1String] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" qLatin1String] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" qLatin1String] ~ret:bool;*)
    constructor "" [arg "str" pchar];
    constructor "" [arg "ba" qByteArray];
    (*dynamic "operator=" [arg "str" pchar] ~ret:qString;*)
    (*dynamic "operator=" [arg "ba" qByteArray] ~ret:qString;*)
    (*dynamic "operator=" [arg "ch" pchar] ~ret:qString;*)
    dynamic "prepend" [arg "str" pchar] ~ret:qString;
    dynamic "prepend" [arg "ba" qByteArray] ~ret:qString;
    dynamic "append" [arg "str" pchar] ~ret:qString;
    dynamic "append" [arg "ba" qByteArray] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "str" pchar] ~ret:qString;
    dynamic "insert" [arg "position" int;arg "str" qByteArray] ~ret:qString;
    (*dynamic "operator+=" [arg "str" pchar] ~ret:qString;*)
    (*dynamic "operator+=" [arg "ba" qByteArray] ~ret:qString;*)
    (*dynamic "operator+=" [arg "ch" pchar] ~ret:qString;*)
    (*dynamic "operator==" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" pchar] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" qByteArray] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" qByteArray] ~ret:bool;*)
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "push_back" [arg "ch" qChar];
    dynamic "push_back" [arg "other" qString];
    dynamic "push_front" [arg "ch" qChar];
    dynamic "push_front" [arg "other" qString];
    static  "fromStdString" [arg "str" std'string] ~ret:qString;
    dynamic "toStdString" [] ~ret:std'string;
    static  "fromStdWString" [arg "str" std'wstring] ~ret:qString;
    dynamic "toStdWString" [] ~ret:std'wstring;
    static  "fromStdU16String" [arg "str" std'u16string] ~ret:qString;
    dynamic "toStdU16String" [] ~ret:std'u16string;
    static  "fromStdU32String" [arg "str" std'u32string] ~ret:qString;
    dynamic "toStdU32String" [] ~ret:std'u32string;
    static  "fromCFString" [arg "string" cFStringRef] ~ret:qString;
    dynamic "toCFString" [] ~ret:cFStringRef;
    static  "fromNSString" [arg "string" nSString] ~ret:qString;
    dynamic "toNSString" [] ~ret:nSString;
    (*dynamic "operator=" [arg "arg0" null] ~ret:qString;*)
    dynamic "isNull" [] ~ret:bool;
    dynamic "isRightToLeft" [] ~ret:bool;
  ]
let () = with_class qLine [
    constructor "" [];
    constructor "" [arg "arg0" qPoint &p1;arg "arg1" qPoint &p2];
    constructor "" [arg "arg0" int x1;arg "arg1" int y1;arg "arg2" int x2;arg "arg3" int y2];
    dynamic "isNull" [] ~ret:bool;
    dynamic "p1" [] ~ret:qPoint;
    dynamic "p2" [] ~ret:qPoint;
    dynamic "x1" [] ~ret:int;
    dynamic "y1" [] ~ret:int;
    dynamic "x2" [] ~ret:int;
    dynamic "y2" [] ~ret:int;
    dynamic "dx" [] ~ret:int;
    dynamic "dy" [] ~ret:int;
    dynamic "translate" [arg "offset" qPoint];
    dynamic "translate" [arg "dx" int;arg "dy" int];
    dynamic "translated" [arg "offset" qPoint] ~ret:qLine;
    dynamic "translated" [arg "dx" int;arg "dy" int] ~ret:qLine;
    dynamic "center" [] ~ret:qPoint;
    dynamic "setP1" [arg "arg0" qPoint &p1];
    dynamic "setP2" [arg "arg0" qPoint &p2];
    dynamic "setPoints" [arg "arg0" qPoint &p1;arg "arg1" qPoint &p2];
    dynamic "setLine" [arg "arg0" int x1;arg "arg1" int y1;arg "arg2" int x2;arg "arg3" int y2];
    (*dynamic "operator==" [arg "line" qLine] ~ret:bool;*)
    (*dynamic "operator!=" [arg "line" qLine] ~ret:bool;*)

    (* Lie: these functions are toplevel, but it is easier to assume they are
       static functions of strings that introduce the concept of global function. *)
    static "escape" [arg "plain" qString] ~ret:qString;
    static "mightBeRichText" [arg "text" qString] ~ret:bool;
    static "convertFromPlainText" [arg "plain" qString;arg "mode" whiteSpaceMode] ~ret:qString;
  ]
let () = with_class qSharedData [
    constructor "" [];
    constructor "" [arg "other" qSharedData];
  ]
let () = with_class qExplicitlySharedDataPointer [
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "constData" [] ~ret:t;*)
    dynamic "detach" [];
    dynamic "reset" [];
    constructor "" [];
    (*dynamic "operator==" [arg "other" qExplicitlySharedDataPointer<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qExplicitlySharedDataPointer<T>] ~ret:bool;*)
    (*dynamic "operator==" [arg "ptr" t] ~ret:bool;*)
    (*dynamic "operator!=" [arg "ptr" t] ~ret:bool;*)
    constructor "" [];
    constructor "" [arg "sharedData" t];
    constructor "" [arg "other" qExplicitlySharedDataPointer<T>];
    constructor "" [arg "other" qExplicitlySharedDataPointer<X>];
    (*dynamic "operator=" [arg "other" qExplicitlySharedDataPointer<T>] ~ret:qExplicitlySharedDataPointer<T>;*)
    (*dynamic "operator=" [arg "sharedData" t] ~ret:qExplicitlySharedDataPointer;*)
    constructor "" [arg "o" qExplicitlySharedDataPointer];
    (*dynamic "operator=" [arg "other" qExplicitlySharedDataPointer<T>] ~ret:qExplicitlySharedDataPointer<T>;*)
    (*dynamic "operator!" [] ~ret:bool;*)
    dynamic "swap" [arg "other" qExplicitlySharedDataPointer];
  ]
let () = with_class qWaitCondition [
    constructor "" [];
    dynamic "wait" [arg "lockedMutex" qMutex;arg "time" unsigned long] ~ret:bool;
    dynamic "wait" [arg "lockedReadWriteLock" qReadWriteLock;arg "time" unsigned long] ~ret:bool;
    dynamic "wakeOne" [];
    dynamic "wakeAll" [];
    dynamic "notify_one" [];
    dynamic "notify_all" [];
  ]
let () = with_class qMargins [
    constructor "" [];
    constructor "" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "left" [] ~ret:int;
    dynamic "top" [] ~ret:int;
    dynamic "right" [] ~ret:int;
    dynamic "bottom" [] ~ret:int;
    dynamic "setLeft" [arg "left" int];
    dynamic "setTop" [arg "Top" int];
    dynamic "setRight" [arg "right" int];
    dynamic "setBottom" [arg "bottom" int];
    (*dynamic "operator+=" [arg "margins" qMargins] ~ret:qMargins;*)
    (*dynamic "operator-=" [arg "margins" qMargins] ~ret:qMargins;*)
    (*dynamic "operator+=" [arg "addend" int] ~ret:qMargins;*)
    (*dynamic "operator-=" [arg "subtrahend" int] ~ret:qMargins;*)
    (*dynamic "operator*=" [arg "factor" int] ~ret:qMargins;*)
    (*dynamic "operator/=" [arg "divisor" int] ~ret:qMargins;*)
    (*dynamic "operator*=" [arg "factor" qreal] ~ret:qMargins;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qMargins;*)
  ]
let () = with_class qTimeZone'OffsetData [
  ]
let () = with_class qXmlStreamNamespaceDeclaration [
    constructor "" [];
    constructor "" [arg "other" qXmlStreamNamespaceDeclaration];
    constructor "" [arg "other" qXmlStreamNamespaceDeclaration];
    (*dynamic "operator=" [arg "other" qXmlStreamNamespaceDeclaration] ~ret:qXmlStreamNamespaceDeclaration;*)
    constructor "" [arg "prefix" qString;arg "namespaceUri" qString];
    (*dynamic "operator=" [arg "other" qXmlStreamNamespaceDeclaration] ~ret:qXmlStreamNamespaceDeclaration;*)
    dynamic "prefix" [] ~ret:qStringRef;
    dynamic "namespaceUri" [] ~ret:qStringRef;
    (*dynamic "operator==" [arg "other" qXmlStreamNamespaceDeclaration] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qXmlStreamNamespaceDeclaration] ~ret:bool;*)
  ]
let () = with_class qMimeType [
    constructor "" [];
    constructor "" [arg "other" qMimeType];
    (*dynamic "operator=" [arg "other" qMimeType] ~ret:qMimeType;*)
    (*dynamic "operator=" [arg "other" qMimeType] ~ret:qMimeType;*)
    dynamic "swap" [arg "other" qMimeType];
    (*dynamic "operator==" [arg "other" qMimeType] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qMimeType] ~ret:bool;*)
    dynamic "isValid" [] ~ret:bool;
    dynamic "isDefault" [] ~ret:bool;
    dynamic "name" [] ~ret:qString;
    dynamic "comment" [] ~ret:qString;
    dynamic "genericIconName" [] ~ret:qString;
    dynamic "iconName" [] ~ret:qString;
    dynamic "globPatterns" [] ~ret:qStringList;
    dynamic "parentMimeTypes" [] ~ret:qStringList;
    dynamic "allAncestors" [] ~ret:qStringList;
    dynamic "aliases" [] ~ret:qStringList;
    dynamic "suffixes" [] ~ret:qStringList;
    dynamic "preferredSuffix" [] ~ret:qString;
    dynamic "inherits" [arg "mimeTypeName" qString] ~ret:bool;
    dynamic "filterString" [] ~ret:qString;
  ]
let () = with_class qCollatorSortKey [
    constructor "" [arg "other" qCollatorSortKey];
    (*dynamic "operator=" [arg "other" qCollatorSortKey] ~ret:qCollatorSortKey;*)
    (*dynamic "operator=" [arg "other" qCollatorSortKey] ~ret:qCollatorSortKey;*)
    dynamic "swap" [arg "other" qCollatorSortKey];
    dynamic "compare" [arg "otherKey" qCollatorSortKey] ~ret:int;
  ]
let () = with_class qDataStream [
    constructor "" [];
    constructor "" [arg "d" qIODevice];
    constructor "" [arg "a" qByteArray;arg "mode" qIODevice'OpenMode];
    constructor "" [arg "a" qByteArray];
    dynamic "device" [] ~ret:qIODevice;
    dynamic "setDevice" [arg "d" qIODevice];
    dynamic "unsetDevice" [];
    dynamic "atEnd" [] ~ret:bool;
    dynamic "status" [] ~ret:status;
    dynamic "setStatus" [arg "status" status];
    dynamic "resetStatus" [];
    dynamic "floatingPointPrecision" [] ~ret:floatingPointPrecision;
    dynamic "setFloatingPointPrecision" [arg "precision" floatingPointPrecision];
    dynamic "byteOrder" [] ~ret:byteOrder;
    dynamic "setByteOrder" [arg "bo" byteOrder];
    dynamic "version" [] ~ret:int;
    dynamic "setVersion" [arg "v" int];
    (*dynamic "operator>>" [arg "i" qint8] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" quint8] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" qint16] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" quint16] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" qint32] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" quint32] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" qint64] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" quint64] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "ptr" std'nullptr_t] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "i" bool] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "f" qfloat16] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "f" float] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "f" double] ~ret:qDataStream;*)
    (*dynamic "operator>>" [arg "s" pchar] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" qint8] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" quint8] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" qint16] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" quint16] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" qint32] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" quint32] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" qint64] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" quint64] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "arg0" std'nullptr_t] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "i" bool] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "f" qfloat16] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "f" float] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "f" double] ~ret:qDataStream;*)
    (*dynamic "operator<<" [arg "s" pchar] ~ret:qDataStream;*)
    dynamic "readBytes" [arg "s" pchar;arg "l" uint] ~ret:qDataStream;
    dynamic "readRawData" [arg "s" pchar;arg "len" int] ~ret:int;
    dynamic "writeBytes" [arg "s" pchar;arg "len" uint] ~ret:qDataStream;
    dynamic "writeRawData" [arg "s" pchar;arg "len" int] ~ret:int;
    dynamic "skipRawData" [arg "len" int] ~ret:int;
    dynamic "startTransaction" [];
    dynamic "commitTransaction" [] ~ret:bool;
    dynamic "rollbackTransaction" [];
    dynamic "abortTransaction" [];
  ]
let () = with_class qTemporaryDir [
    constructor "" [];
    constructor "" [arg "templatePath" qString];
    dynamic "isValid" [] ~ret:bool;
    dynamic "errorString" [] ~ret:qString;
    dynamic "autoRemove" [] ~ret:bool;
    dynamic "setAutoRemove" [arg "b" bool];
    dynamic "remove" [] ~ret:bool;
    dynamic "path" [] ~ret:qString;
    dynamic "filePath" [arg "fileName" qString] ~ret:qString;
  ]
let () = with_class qRunnable [
    dynamic "run" [];
    constructor "" [];
    dynamic "autoDelete" [] ~ret:bool;
    dynamic "setAutoDelete" [arg "autoDelete" bool];
  ]
let () = with_class qThreadStorage [
    constructor "" [];
    dynamic "hasLocalData" [] ~ret:bool;
    (*dynamic "localData" [] ~ret:t;*)
    (*dynamic "localData" [] ~ret:t;*)
    dynamic "setLocalData" [arg "data" t];
  ]
let () = with_class qJsonValue [
    constructor "" [arg "type" type];
    constructor "" [arg "b" bool];
    constructor "" [arg "n" double];
    constructor "" [arg "n" int];
    constructor "" [arg "n" qint64];
    constructor "" [arg "s" qString];
    constructor "" [arg "s" qLatin1String];
    constructor "" [arg "s" pchar];
    constructor "" [arg "a" qJsonArray];
    constructor "" [arg "o" qJsonObject];
    constructor "" [arg "other" qJsonValue];
    (*dynamic "operator=" [arg "other" qJsonValue] ~ret:qJsonValue;*)
    static  "fromVariant" [arg "variant" qVariant] ~ret:qJsonValue;
    dynamic "toVariant" [] ~ret:qVariant;
    (*dynamic "type" [] ~ret:type;*)
    dynamic "isNull" [] ~ret:bool;
    dynamic "isBool" [] ~ret:bool;
    dynamic "isDouble" [] ~ret:bool;
    dynamic "isString" [] ~ret:bool;
    dynamic "isArray" [] ~ret:bool;
    dynamic "isObject" [] ~ret:bool;
    dynamic "isUndefined" [] ~ret:bool;
    dynamic "toBool" [arg "defaultValue" bool] ~ret:bool;
    dynamic "toInt" [arg "defaultValue" int] ~ret:int;
    dynamic "toDouble" [arg "defaultValue" double] ~ret:double;
    dynamic "toString" [] ~ret:qString;
    dynamic "toString" [arg "defaultValue" qString] ~ret:qString;
    dynamic "toArray" [] ~ret:qJsonArray;
    dynamic "toArray" [arg "defaultValue" qJsonArray] ~ret:qJsonArray;
    dynamic "toObject" [] ~ret:qJsonObject;
    dynamic "toObject" [arg "defaultValue" qJsonObject] ~ret:qJsonObject;
    (*dynamic "operator==" [arg "other" qJsonValue] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qJsonValue] ~ret:bool;*)
  ]
let () = with_class qList'iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator[]" [arg "j" difference_type] ~ret:t;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" difference_type] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" difference_type] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" difference_type] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" difference_type] ~ret:iterator;*)
    (*dynamic "operator-" [arg "other" iterator] ~ret:int;*)
  ]
let () = with_class qVarLengthArray [
    constructor "" [arg "size" int];
    constructor "" [arg "other" qVarLengthArray<T,Prealloc>];
    constructor "" [arg "args" std'initializer_list<T>];
    (*dynamic "operator=" [arg "other" qVarLengthArray<T,Prealloc>] ~ret:qVarLengthArray<T, Prealloc>;*)
    (*dynamic "operator=" [arg "list" std'initializer_list<T>] ~ret:qVarLengthArray<T, Prealloc>;*)
    dynamic "removeLast" [];
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "resize" [arg "size" int];
    dynamic "clear" [];
    dynamic "squeeze" [];
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "indexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "contains" [arg "value" t] ~ret:bool;
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "at" [arg "i" int] ~ret:t;*)
    (*dynamic "value" [arg "i" int] ~ret:t;*)
    (*dynamic "value" [arg "i" int;arg "defaultValue" t] ~ret:t;*)
    dynamic "append" [arg "t" t];
    dynamic "append" [arg "t" t];
    dynamic "append" [arg "buf" t;arg "size" int];
    (*dynamic "operator<<" [arg "value" t] ~ret:qVarLengthArray<T, Prealloc>;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:qVarLengthArray<T, Prealloc>;*)
    dynamic "prepend" [arg "value" t];
    dynamic "insert" [arg "i" int;arg "value" t];
    dynamic "insert" [arg "i" int;arg "count" int;arg "value" t];
    dynamic "replace" [arg "i" int;arg "value" t];
    dynamic "remove" [arg "i" int];
    dynamic "remove" [arg "i" int;arg "count" int];
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "constData" [] ~ret:t;*)
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "insert" [arg "before" const_iterator;arg "count" int;arg "value" t] ~ret:iterator;
    dynamic "insert" [arg "before" const_iterator;arg "value" t] ~ret:iterator;
    dynamic "erase" [arg "begin" const_iterator;arg "end" const_iterator] ~ret:iterator;
    dynamic "erase" [arg "pos" const_iterator] ~ret:iterator;
    dynamic "empty" [] ~ret:bool;
    dynamic "push_back" [arg "t" t];
    dynamic "push_back" [arg "t" t];
    dynamic "pop_back" [];
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
  ]
let () = with_class qBasicTimer [
    constructor "" [];
    dynamic "isActive" [] ~ret:bool;
    dynamic "timerId" [] ~ret:int;
    dynamic "start" [arg "msec" int;arg "object" qObject];
    dynamic "start" [arg "msec" int;arg "timerType" qt'TimerType;arg "obj" qObject];
    dynamic "stop" [];
  ]
let () = with_class qEventLoopLocker [
    constructor "" [];
    constructor "" [arg "loop" qEventLoop];
    constructor "" [arg "thread" qThread];
  ]
let () = with_class qJsonArray'iterator [
    constructor "" [];
    (*dynamic "operator*" [] ~ret:qJsonValueRef;*)
    (*dynamic "operator->" [] ~ret:qJsonValueRef;*)
    (*dynamic "operator[]" [arg "j" int] ~ret:qJsonValueRef;*)
    (*dynamic "operator==" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" iterator] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator<=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator>=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator--" [] ~ret:iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:iterator;*)
    (*dynamic "operator-" [arg "other" iterator] ~ret:int;*)
  ]
let () = with_class qCommandLineParser [
    constructor "" [];
    dynamic "setSingleDashWordOptionMode" [arg "singleDashWordOptionMode" singleDashWordOptionMode];
    dynamic "setOptionsAfterPositionalArgumentsMode" [arg "parsingMode" optionsAfterPositionalArgumentsMode];
    dynamic "addOption" [arg "option" qCommandLineOption] ~ret:bool;
    dynamic "addOptions" [arg "options" qList<QCommandLineOption>] ~ret:bool;
    dynamic "addVersionOption" [] ~ret:qCommandLineOption;
    dynamic "addHelpOption" [] ~ret:qCommandLineOption;
    dynamic "setApplicationDescription" [arg "description" qString];
    dynamic "applicationDescription" [] ~ret:qString;
    dynamic "addPositionalArgument" [arg "name" qString;arg "description" qString;arg "syntax" qString];
    dynamic "clearPositionalArguments" [];
    dynamic "process" [arg "arguments" qStringList];
    dynamic "process" [arg "app" qCoreApplication];
    dynamic "parse" [arg "arguments" qStringList] ~ret:bool;
    dynamic "errorText" [] ~ret:qString;
    dynamic "isSet" [arg "name" qString] ~ret:bool;
    dynamic "value" [arg "optionName" qString] ~ret:qString;
    dynamic "values" [arg "optionName" qString] ~ret:qStringList;
    dynamic "isSet" [arg "option" qCommandLineOption] ~ret:bool;
    dynamic "value" [arg "option" qCommandLineOption] ~ret:qString;
    dynamic "values" [arg "option" qCommandLineOption] ~ret:qStringList;
    dynamic "positionalArguments" [] ~ret:qStringList;
    dynamic "optionNames" [] ~ret:qStringList;
    dynamic "unknownOptionNames" [] ~ret:qStringList;
    dynamic "showVersion" [];
    dynamic "showHelp" [arg "exitCode" int];
    dynamic "helpText" [] ~ret:qString;
  ]
let () = with_class qTextStream [
    constructor "" [];
    constructor "" [arg "device" qIODevice];
    constructor "" [arg "fileHandle" fILE;arg "openMode" qIODevice'OpenMode];
    constructor "" [arg "string" qString;arg "openMode" qIODevice'OpenMode];
    constructor "" [arg "array" qByteArray;arg "openMode" qIODevice'OpenMode];
    constructor "" [arg "array" qByteArray;arg "openMode" qIODevice'OpenMode];
    dynamic "setCodec" [arg "codec" qTextCodec];
    dynamic "setCodec" [arg "codecName" pchar];
    dynamic "codec" [] ~ret:qTextCodec;
    dynamic "setAutoDetectUnicode" [arg "enabled" bool];
    dynamic "autoDetectUnicode" [] ~ret:bool;
    dynamic "setGenerateByteOrderMark" [arg "generate" bool];
    dynamic "generateByteOrderMark" [] ~ret:bool;
    dynamic "setLocale" [arg "locale" qLocale];
    dynamic "locale" [] ~ret:qLocale;
    dynamic "setDevice" [arg "device" qIODevice];
    dynamic "device" [] ~ret:qIODevice;
    dynamic "setString" [arg "string" qString;arg "openMode" qIODevice'OpenMode];
    dynamic "string" [] ~ret:qString;
    dynamic "status" [] ~ret:status;
    dynamic "setStatus" [arg "status" status];
    dynamic "resetStatus" [];
    dynamic "atEnd" [] ~ret:bool;
    dynamic "reset" [];
    dynamic "flush" [];
    dynamic "seek" [arg "pos" qint64] ~ret:bool;
    dynamic "pos" [] ~ret:qint64;
    dynamic "skipWhiteSpace" [];
    dynamic "readLine" [arg "maxlen" qint64] ~ret:qString;
    dynamic "readLineInto" [arg "line" qString;arg "maxlen" qint64] ~ret:bool;
    dynamic "readAll" [] ~ret:qString;
    dynamic "read" [arg "maxlen" qint64] ~ret:qString;
    dynamic "setFieldAlignment" [arg "mode" fieldAlignment];
    dynamic "fieldAlignment" [] ~ret:fieldAlignment;
    dynamic "setPadChar" [arg "ch" qChar];
    dynamic "padChar" [] ~ret:qChar;
    dynamic "setFieldWidth" [arg "width" int];
    dynamic "fieldWidth" [] ~ret:int;
    dynamic "setNumberFlags" [arg "flags" numberFlags];
    dynamic "numberFlags" [] ~ret:numberFlags;
    dynamic "setIntegerBase" [arg "base" int];
    dynamic "integerBase" [] ~ret:int;
    dynamic "setRealNumberNotation" [arg "notation" realNumberNotation];
    dynamic "realNumberNotation" [] ~ret:realNumberNotation;
    dynamic "setRealNumberPrecision" [arg "precision" int];
    dynamic "realNumberPrecision" [] ~ret:int;
    (*dynamic "operator>>" [arg "c" qChar] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "c" pchar] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" signed short] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" unsigned short] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" signed int] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" unsigned int] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" signed long] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" unsigned long] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" qlonglong] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "i" qulonglong] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "f" float] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "f" double] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "str" qString] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "array" qByteArray] ~ret:qTextStream;*)
    (*dynamic "operator>>" [arg "c" pchar] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "c" qChar] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "c" pchar] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" signed short] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" unsigned short] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" signed int] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" unsigned int] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" signed long] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" unsigned long] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" qlonglong] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "i" qulonglong] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "f" float] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "f" double] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "string" qString] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "string" qLatin1String] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "string" qStringRef] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "array" qByteArray] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "string" pchar] ~ret:qTextStream;*)
    (*dynamic "operator<<" [arg "ptr" void] ~ret:qTextStream;*)
  ]
let () = with_class qSet [
    constructor "" [];
    constructor "" [arg "list" std'initializer_list<T>];
    dynamic "swap" [arg "other" qSet<T>];
    (*dynamic "operator==" [arg "other" qSet<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qSet<T>] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "capacity" [] ~ret:int;
    dynamic "reserve" [arg "size" int];
    dynamic "squeeze" [];
    dynamic "clear" [];
    dynamic "remove" [arg "value" t] ~ret:bool;
    dynamic "contains" [arg "value" t] ~ret:bool;
    dynamic "contains" [arg "other" qSet<T>] ~ret:bool;
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "erase" [arg "pos" const_iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    dynamic "insert" [arg "value" t] ~ret:iterator;
    dynamic "find" [arg "value" t] ~ret:iterator;
    dynamic "find" [arg "value" t] ~ret:const_iterator;
    dynamic "constFind" [arg "value" t] ~ret:const_iterator;
    (*dynamic "unite" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "intersect" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    dynamic "intersects" [arg "other" qSet<T>] ~ret:bool;
    (*dynamic "subtract" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    dynamic "empty" [] ~ret:bool;
    (*dynamic "operator<<" [arg "value" t] ~ret:qSet<T>;*)
    (*dynamic "operator|=" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator|=" [arg "value" t] ~ret:qSet<T>;*)
    (*dynamic "operator&=" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator&=" [arg "value" t] ~ret:qSet<T>;*)
    (*dynamic "operator+=" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:qSet<T>;*)
    (*dynamic "operator-=" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator-=" [arg "value" t] ~ret:qSet<T>;*)
    (*dynamic "operator|" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator&" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator+" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "operator-" [arg "other" qSet<T>] ~ret:qSet<T>;*)
    (*dynamic "toList" [] ~ret:qList<T>;*)
    (*dynamic "values" [] ~ret:qList<T>;*)
    (*static  "fromList" [arg "list" qList<T>] ~ret:qSet<T>;*)
  ]
let () = with_class qSemaphore [
    constructor "" [arg "n" int];
    dynamic "acquire" [arg "n" int];
    dynamic "tryAcquire" [arg "n" int] ~ret:bool;
    dynamic "tryAcquire" [arg "n" int;arg "timeout" int] ~ret:bool;
    dynamic "release" [arg "n" int];
    dynamic "available" [] ~ret:int;
  ]
let () = with_class qXmlStreamAttribute [
    constructor "" [];
    constructor "" [arg "qualifiedName" qString;arg "value" qString];
    constructor "" [arg "namespaceUri" qString;arg "name" qString;arg "value" qString];
    constructor "" [arg "other" qXmlStreamAttribute];
    constructor "" [arg "other" qXmlStreamAttribute];
    (*dynamic "operator=" [arg "other" qXmlStreamAttribute] ~ret:qXmlStreamAttribute;*)
    (*dynamic "operator=" [arg "other" qXmlStreamAttribute] ~ret:qXmlStreamAttribute;*)
    dynamic "namespaceUri" [] ~ret:qStringRef;
    dynamic "name" [] ~ret:qStringRef;
    dynamic "qualifiedName" [] ~ret:qStringRef;
    dynamic "prefix" [] ~ret:qStringRef;
    dynamic "value" [] ~ret:qStringRef;
    dynamic "isDefault" [] ~ret:bool;
    (*dynamic "operator==" [arg "other" qXmlStreamAttribute] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qXmlStreamAttribute] ~ret:bool;*)
  ]
let () = with_class qSize [
    constructor "" [];
    constructor "" [arg "width" int;arg "height" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "width" [] ~ret:int;
    dynamic "height" [] ~ret:int;
    dynamic "setWidth" [arg "width" int];
    dynamic "setHeight" [arg "height" int];
    dynamic "transpose" [];
    dynamic "transposed" [] ~ret:qSize;
    dynamic "scale" [arg "width" int;arg "height" int;arg "mode" qt'AspectRatioMode];
    dynamic "scale" [arg "size" qSize;arg "mode" qt'AspectRatioMode];
    dynamic "scaled" [arg "width" int;arg "height" int;arg "mode" qt'AspectRatioMode] ~ret:qSize;
    dynamic "scaled" [arg "s" qSize;arg "mode" qt'AspectRatioMode] ~ret:qSize;
    dynamic "expandedTo" [arg "otherSize" qSize] ~ret:qSize;
    dynamic "boundedTo" [arg "otherSize" qSize] ~ret:qSize;
    dynamic "rwidth" [] ~ret:int;
    dynamic "rheight" [] ~ret:int;
    (*dynamic "operator+=" [arg "size" qSize] ~ret:qSize;*)
    (*dynamic "operator-=" [arg "size" qSize] ~ret:qSize;*)
    (*dynamic "operator*=" [arg "factor" qreal] ~ret:qSize;*)
    (*dynamic "operator/=" [arg "divisor" qreal] ~ret:qSize;*)
    dynamic "toCGSize" [] ~ret:cGSize;
  ]
let () = with_class qDeadlineTimer [
    constructor "" [arg "timerType" qt'TimerType];
    constructor "" [arg "forever" foreverConstant;arg "timerType" qt'TimerType];
    constructor "" [arg "msecs" qint64;arg "type" qt'TimerType];
    dynamic "swap" [arg "other" qDeadlineTimer];
    dynamic "isForever" [] ~ret:bool;
    dynamic "hasExpired" [] ~ret:bool;
    dynamic "timerType" [] ~ret:qt'TimerType;
    dynamic "setTimerType" [arg "timerType" qt'TimerType];
    dynamic "remainingTime" [] ~ret:qint64;
    dynamic "remainingTimeNSecs" [] ~ret:qint64;
    dynamic "setRemainingTime" [arg "msecs" qint64;arg "timerType" qt'TimerType];
    dynamic "setPreciseRemainingTime" [arg "secs" qint64;arg "nsecs" qint64;arg "timerType" qt'TimerType];
    dynamic "deadline" [] ~ret:qint64;
    dynamic "deadlineNSecs" [] ~ret:qint64;
    dynamic "setDeadline" [arg "msecs" qint64;arg "timerType" qt'TimerType];
    dynamic "setPreciseDeadline" [arg "secs" qint64;arg "nsecs" qint64;arg "timerType" qt'TimerType];
    static  "addNSecs" [arg "dt" qDeadlineTimer;arg "nsecs" qint64] ~ret:qDeadlineTimer;
    static  "current" [arg "timerType" qt'TimerType] ~ret:qDeadlineTimer;
    (*dynamic "operator+=" [arg "msecs" qint64] ~ret:qDeadlineTimer;*)
    (*dynamic "operator-=" [arg "msecs" qint64] ~ret:qDeadlineTimer;*)
    constructor "" [arg "deadline" std'chrono'time_point<Clock,Duration>;arg "type" qt'TimerType];
    (*dynamic "operator=" [arg "deadline_" std'chrono'time_point<Clock,Duration>] ~ret:qDeadlineTimer;*)
    dynamic "setDeadline" [arg "deadline" std'chrono'time_point<Clock,Duration>;arg "type" qt'TimerType];
    (*dynamic "deadline" [] ~ret:std'chrono'time_point<Clock, Duration>;*)
    constructor "" [arg "remaining" std'chrono'duration<Rep,Period>;arg "type" qt'TimerType];
    (*dynamic "operator=" [arg "remaining" std'chrono'duration<Rep,Period>] ~ret:qDeadlineTimer;*)
    dynamic "setRemainingTime" [arg "remaining" std'chrono'duration<Rep,Period>;arg "type" qt'TimerType];
    dynamic "remainingTimeAsDuration" [] ~ret:std'chrono'nanoseconds;
  ]
let () = with_class qList [
    constructor "" [];
    constructor "" [arg "other" qList<T>];
    (*dynamic "operator=" [arg "other" qList<T>] ~ret:qList<T>;*)
    constructor "" [arg "other" qList<T>];
    (*dynamic "operator=" [arg "other" qList<T>] ~ret:qList;*)
    dynamic "swap" [arg "other" qList<T>];
    constructor "" [arg "args" std'initializer_list<T>];
    (*dynamic "operator==" [arg "other" qList<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qList<T>] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    (*dynamic "at" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    dynamic "reserve" [arg "alloc" int];
    dynamic "append" [arg "value" t];
    dynamic "append" [arg "value" qList<T>];
    dynamic "prepend" [arg "value" t];
    dynamic "insert" [arg "i" int;arg "value" t];
    dynamic "replace" [arg "i" int;arg "value" t];
    dynamic "removeAt" [arg "i" int];
    dynamic "removeAll" [arg "value" t] ~ret:int;
    dynamic "removeOne" [arg "value" t] ~ret:bool;
    (*dynamic "takeAt" [arg "i" int] ~ret:t;*)
    (*dynamic "takeFirst" [] ~ret:t;*)
    (*dynamic "takeLast" [] ~ret:t;*)
    dynamic "move" [arg "from" int;arg "to" int];
    dynamic "swap" [arg "i" int;arg "j" int];
    dynamic "indexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "value" t;arg "from" int] ~ret:int;
    dynamic "contains" [arg "value" t] ~ret:bool;
    dynamic "count" [arg "value" t] ~ret:int;
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "insert" [arg "before" iterator;arg "value" t] ~ret:iterator;
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "erase" [arg "begin" iterator;arg "end" iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "constFirst" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "constLast" [] ~ret:t;*)
    dynamic "removeFirst" [];
    dynamic "removeLast" [];
    dynamic "startsWith" [arg "value" t] ~ret:bool;
    dynamic "endsWith" [arg "value" t] ~ret:bool;
    (*dynamic "mid" [arg "pos" int;arg "length" int] ~ret:qList<T>;*)
    (*dynamic "value" [arg "i" int] ~ret:t;*)
    (*dynamic "value" [arg "i" int;arg "defaultValue" t] ~ret:t;*)
    dynamic "push_back" [arg "value" t];
    dynamic "push_front" [arg "value" t];
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    dynamic "pop_front" [];
    dynamic "pop_back" [];
    dynamic "empty" [] ~ret:bool;
    (*dynamic "operator+=" [arg "other" qList<T>] ~ret:qList<T>;*)
    (*dynamic "operator+" [arg "other" qList<T>] ~ret:qList<T>;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:qList<T>;*)
    (*dynamic "operator<<" [arg "value" t] ~ret:qList<T>;*)
    (*dynamic "operator<<" [arg "other" qList<T>] ~ret:qList<T>;*)
    (*dynamic "toVector" [] ~ret:qVector<T>;*)
    (*dynamic "toSet" [] ~ret:qSet<T>;*)
    (*static  "fromVector" [arg "vector" qVector<T>] ~ret:qList<T>;*)
    (*static  "fromSet" [arg "set" qSet<T>] ~ret:qList<T>;*)
    (*static  "fromStdList" [arg "list" std'list<T>] ~ret:qList<T>;*)
    (*dynamic "toStdList" [] ~ret:std'list<T>;*)
  ]
let () = with_class qDate [
    constructor "" [];
    constructor "" [arg "y" int;arg "m" int;arg "d" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "year" [] ~ret:int;
    dynamic "month" [] ~ret:int;
    dynamic "day" [] ~ret:int;
    dynamic "dayOfWeek" [] ~ret:int;
    dynamic "dayOfYear" [] ~ret:int;
    dynamic "daysInMonth" [] ~ret:int;
    dynamic "daysInYear" [] ~ret:int;
    dynamic "weekNumber" [arg "yearNumber" int] ~ret:int;
    static  "shortMonthName" [arg "month" int;arg "type" monthNameType] ~ret:qString;
    static  "shortDayName" [arg "weekday" int;arg "type" monthNameType] ~ret:qString;
    static  "longMonthName" [arg "month" int;arg "type" monthNameType] ~ret:qString;
    static  "longDayName" [arg "weekday" int;arg "type" monthNameType] ~ret:qString;
    dynamic "toString" [arg "format" qt'DateFormat] ~ret:qString;
    dynamic "toString" [arg "format" qString] ~ret:qString;
    dynamic "setYMD" [arg "y" int;arg "m" int;arg "d" int] ~ret:bool;
    dynamic "setDate" [arg "year" int;arg "month" int;arg "day" int] ~ret:bool;
    dynamic "getDate" [arg "year" int;arg "month" int;arg "day" int];
    dynamic "addDays" [arg "ndays" qint64] ~ret:qDate;
    dynamic "addMonths" [arg "nmonths" int] ~ret:qDate;
    dynamic "addYears" [arg "nyears" int] ~ret:qDate;
    dynamic "daysTo" [arg "d" qDate] ~ret:qint64;
    (*dynamic "operator==" [arg "d" qDate] ~ret:bool;*)
    (*dynamic "operator!=" [arg "d" qDate] ~ret:bool;*)
    (*dynamic "operator<" [arg "d" qDate] ~ret:bool;*)
    (*dynamic "operator<=" [arg "d" qDate] ~ret:bool;*)
    (*dynamic "operator>" [arg "d" qDate] ~ret:bool;*)
    (*dynamic "operator>=" [arg "d" qDate] ~ret:bool;*)
    static  "currentDate" [] ~ret:qDate;
    static  "fromString" [arg "string" qString;arg "format" qt'DateFormat] ~ret:qDate;
    static  "fromString" [arg "string" qString;arg "format" qString] ~ret:qDate;
    static  "isValid" [arg "year" int;arg "month" int;arg "day" int] ~ret:bool;
    static  "isLeapYear" [arg "year" int] ~ret:bool;
    static  "fromJulianDay" [arg "jd" qint64] ~ret:qDate;
    dynamic "toJulianDay" [] ~ret:qint64;
  ]
let () = with_class qMutableLinkedListIterator [
    constructor "" [arg "list" qLinkedList<T>];
    (*dynamic "operator=" [arg "list" qLinkedList<T>] ~ret:qMutableLinkedListIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "remove" [];
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "value" [] ~ret:t;*)
    dynamic "insert" [arg "value" t];
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qHash'const_iterator [
    constructor "" [];
    constructor "" [arg "other" iterator];
    dynamic "key" [] ~ret:key;
    (*dynamic "value" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
  ]
(*let () = with_class qFlags [
    constructor "" [arg "other" qFlags];
    (*dynamic "operator=" [arg "other" qFlags] ~ret:qFlags;*)
    constructor "" [arg "flag" enum];
    constructor "" [arg "zero" zero];
    constructor "" [arg "value" qFlag];
    constructor "" [arg "flags" std'initializer_list<Enum>];
    (*dynamic "operator&=" [arg "mask" int] ~ret:qFlags;*)
    (*dynamic "operator&=" [arg "mask" uint] ~ret:qFlags;*)
    (*dynamic "operator&=" [arg "mask" enum] ~ret:qFlags;*)
    (*dynamic "operator|=" [arg "other" qFlags] ~ret:qFlags;*)
    (*dynamic "operator|=" [arg "other" enum] ~ret:qFlags;*)
    (*dynamic "operator^=" [arg "other" qFlags] ~ret:qFlags;*)
    (*dynamic "operator^=" [arg "other" enum] ~ret:qFlags;*)
    constructor "" [];
    (*dynamic "operator|" [arg "other" qFlags] ~ret:qFlags;*)
    (*dynamic "operator|" [arg "other" enum] ~ret:qFlags;*)
    (*dynamic "operator^" [arg "other" qFlags] ~ret:qFlags;*)
    (*dynamic "operator^" [arg "other" enum] ~ret:qFlags;*)
    (*dynamic "operator&" [arg "mask" int] ~ret:qFlags;*)
    (*dynamic "operator&" [arg "mask" uint] ~ret:qFlags;*)
    (*dynamic "operator&" [arg "mask" enum] ~ret:qFlags;*)
    (*dynamic "operator~" [] ~ret:qFlags;*)
    (*dynamic "operator!" [] ~ret:bool;*)
    dynamic "testFlag" [arg "flag" enum] ~ret:bool;
    dynamic "setFlag" [arg "flag" enum;arg "on" bool] ~ret:qFlags;
  ]*)
let () = with_class qLockFile [
    constructor "" [arg "fileName" qString];
    dynamic "lock" [] ~ret:bool;
    dynamic "tryLock" [arg "timeout" int] ~ret:bool;
    dynamic "unlock" [];
    dynamic "setStaleLockTime" [arg "staleLockTime" int];
    dynamic "staleLockTime" [] ~ret:int;
    dynamic "isLocked" [] ~ret:bool;
    dynamic "getLockInfo" [arg "pid" qint64;arg "hostname" qString;arg "appname" qString] ~ret:bool;
    dynamic "removeStaleLockFile" [] ~ret:bool;
    dynamic "error" [] ~ret:lockError;
  ]
let () = with_class qRectF [
    constructor "" [];
    constructor "" [arg "topLeft" qPointF;arg "size" qSizeF];
    constructor "" [arg "topLeft" qPointF;arg "bottomRight" qPointF];
    constructor "" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    constructor "" [arg "rectangle" qRect];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "normalized" [] ~ret:qRectF;
    dynamic "left" [] ~ret:qreal;
    dynamic "top" [] ~ret:qreal;
    dynamic "right" [] ~ret:qreal;
    dynamic "bottom" [] ~ret:qreal;
    dynamic "x" [] ~ret:qreal;
    dynamic "y" [] ~ret:qreal;
    dynamic "setLeft" [arg "x" qreal];
    dynamic "setTop" [arg "y" qreal];
    dynamic "setRight" [arg "x" qreal];
    dynamic "setBottom" [arg "y" qreal];
    dynamic "setX" [arg "x" qreal];
    dynamic "setY" [arg "y" qreal];
    dynamic "topLeft" [] ~ret:qPointF;
    dynamic "bottomRight" [] ~ret:qPointF;
    dynamic "topRight" [] ~ret:qPointF;
    dynamic "bottomLeft" [] ~ret:qPointF;
    dynamic "center" [] ~ret:qPointF;
    dynamic "setTopLeft" [arg "position" qPointF];
    dynamic "setBottomRight" [arg "position" qPointF];
    dynamic "setTopRight" [arg "position" qPointF];
    dynamic "setBottomLeft" [arg "position" qPointF];
    dynamic "moveLeft" [arg "x" qreal];
    dynamic "moveTop" [arg "y" qreal];
    dynamic "moveRight" [arg "x" qreal];
    dynamic "moveBottom" [arg "y" qreal];
    dynamic "moveTopLeft" [arg "position" qPointF];
    dynamic "moveBottomRight" [arg "position" qPointF];
    dynamic "moveTopRight" [arg "position" qPointF];
    dynamic "moveBottomLeft" [arg "position" qPointF];
    dynamic "moveCenter" [arg "position" qPointF];
    dynamic "translate" [arg "dx" qreal;arg "dy" qreal];
    dynamic "translate" [arg "offset" qPointF];
    dynamic "translated" [arg "dx" qreal;arg "dy" qreal] ~ret:qRectF;
    dynamic "translated" [arg "offset" qPointF] ~ret:qRectF;
    dynamic "transposed" [] ~ret:qRectF;
    dynamic "moveTo" [arg "x" qreal;arg "y" qreal];
    dynamic "moveTo" [arg "position" qPointF];
    dynamic "setRect" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    dynamic "getRect" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    dynamic "setCoords" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2];
    dynamic "getCoords" [arg "arg0" qreal *x1;arg "arg1" qreal *y1;arg "arg2" qreal *x2;arg "arg3" qreal *y2];
    dynamic "adjust" [arg "arg0" qreal dx1;arg "arg1" qreal dy1;arg "arg2" qreal dx2;arg "arg3" qreal dy2];
    dynamic "adjusted" [arg "arg0" qreal dx1;arg "arg1" qreal dy1;arg "arg2" qreal dx2;arg "arg3" qreal dy2] ~ret:qRectF;
    dynamic "size" [] ~ret:qSizeF;
    dynamic "width" [] ~ret:qreal;
    dynamic "height" [] ~ret:qreal;
    dynamic "setWidth" [arg "width" qreal];
    dynamic "setHeight" [arg "height" qreal];
    dynamic "setSize" [arg "size" qSizeF];
    (*dynamic "operator|" [arg "rectangle" qRectF] ~ret:qRectF;*)
    (*dynamic "operator&" [arg "rectangle" qRectF] ~ret:qRectF;*)
    (*dynamic "operator|=" [arg "rectangle" qRectF] ~ret:qRectF;*)
    (*dynamic "operator&=" [arg "rectangle" qRectF] ~ret:qRectF;*)
    dynamic "contains" [arg "rectangle" qRectF] ~ret:bool;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "contains" [arg "x" qreal;arg "y" qreal] ~ret:bool;
    dynamic "united" [arg "rectangle" qRectF] ~ret:qRectF;
    dynamic "intersected" [arg "rectangle" qRectF] ~ret:qRectF;
    dynamic "intersects" [arg "rectangle" qRectF] ~ret:bool;
    dynamic "marginsAdded" [arg "margins" qMarginsF] ~ret:qRectF;
    dynamic "marginsRemoved" [arg "margins" qMarginsF] ~ret:qRectF;
    (*dynamic "operator+=" [arg "margins" qMarginsF] ~ret:qRectF;*)
    (*dynamic "operator-=" [arg "margins" qMarginsF] ~ret:qRectF;*)
    dynamic "unite" [arg "rectangle" qRectF] ~ret:qRectF;
    dynamic "intersect" [arg "rectangle" qRectF] ~ret:qRectF;
    dynamic "toRect" [] ~ret:qRect;
    dynamic "toAlignedRect" [] ~ret:qRect;
    static  "fromCGRect" [arg "rect" cGRect] ~ret:qRectF;
    dynamic "toCGRect" [] ~ret:cGRect;
  ]
let () = with_class qMetaObject'Connection [
    constructor "" [];
    constructor "" [arg "other" connection];
    (*dynamic "operator=" [arg "other" connection] ~ret:connection;*)
    constructor "" [];
    constructor "" [arg "o" connection];
    (*dynamic "operator=" [arg "other" connection] ~ret:connection;*)
  ]
let () = with_class qSharedDataPointer [
    dynamic "detach" [];
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    constructor "" [];
    constructor "" [];
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "data" [] ~ret:t;*)
    (*dynamic "constData" [] ~ret:t;*)
    (*dynamic "operator==" [arg "other" qSharedDataPointer<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qSharedDataPointer<T>] ~ret:bool;*)
    constructor "" [];
    constructor "" [arg "sharedData" t];
    constructor "" [arg "other" qSharedDataPointer<T>];
    (*dynamic "operator=" [arg "other" qSharedDataPointer<T>] ~ret:qSharedDataPointer<T>;*)
    (*dynamic "operator=" [arg "sharedData" t] ~ret:qSharedDataPointer;*)
    constructor "" [arg "o" qSharedDataPointer];
    (*dynamic "operator=" [arg "other" qSharedDataPointer<T>] ~ret:qSharedDataPointer<T>;*)
    (*dynamic "operator!" [] ~ret:bool;*)
    dynamic "swap" [arg "other" qSharedDataPointer];
  ]
let () = with_class qSysInfo [
    static  "windowsVersion" [] ~ret:winVersion;
    static  "macVersion" [] ~ret:macVersion;
    static  "buildCpuArchitecture" [] ~ret:qString;
    static  "currentCpuArchitecture" [] ~ret:qString;
    static  "buildAbi" [] ~ret:qString;
    static  "kernelType" [] ~ret:qString;
    static  "kernelVersion" [] ~ret:qString;
    static  "productType" [] ~ret:qString;
    static  "productVersion" [] ~ret:qString;
    static  "prettyProductName" [] ~ret:qString;
    static  "machineHostName" [] ~ret:qString;
  ]
let () = with_class qJsonObject [
    constructor "" [];
    constructor "" [arg "args" std'initializer_list<QPair<QString,QJsonValue> >];
    constructor "" [arg "other" qJsonObject];
    (*dynamic "operator=" [arg "other" qJsonObject] ~ret:qJsonObject;*)
    static  "fromVariantMap" [arg "map" qVariantMap] ~ret:qJsonObject;
    dynamic "toVariantMap" [] ~ret:qVariantMap;
    static  "fromVariantHash" [arg "hash" qVariantHash] ~ret:qJsonObject;
    dynamic "toVariantHash" [] ~ret:qVariantHash;
    dynamic "keys" [] ~ret:qStringList;
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "value" [arg "key" qString] ~ret:qJsonValue;
    dynamic "value" [arg "key" qLatin1String] ~ret:qJsonValue;
    (*dynamic "operator[]" [arg "key" qString] ~ret:qJsonValue;*)
    (*dynamic "operator[]" [arg "key" qLatin1String] ~ret:qJsonValue;*)
    (*dynamic "operator[]" [arg "key" qString] ~ret:qJsonValueRef;*)
    (*dynamic "operator[]" [arg "key" qLatin1String] ~ret:qJsonValueRef;*)
    dynamic "remove" [arg "key" qString];
    dynamic "take" [arg "key" qString] ~ret:qJsonValue;
    dynamic "contains" [arg "key" qString] ~ret:bool;
    dynamic "contains" [arg "key" qLatin1String] ~ret:bool;
    (*dynamic "operator==" [arg "other" qJsonObject] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qJsonObject] ~ret:bool;*)
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "erase" [arg "it" iterator] ~ret:iterator;
    dynamic "find" [arg "key" qString] ~ret:iterator;
    dynamic "find" [arg "key" qLatin1String] ~ret:iterator;
    dynamic "find" [arg "key" qString] ~ret:const_iterator;
    dynamic "find" [arg "key" qLatin1String] ~ret:const_iterator;
    dynamic "constFind" [arg "key" qString] ~ret:const_iterator;
    dynamic "constFind" [arg "key" qLatin1String] ~ret:const_iterator;
    dynamic "insert" [arg "key" qString;arg "value" qJsonValue] ~ret:iterator;
    dynamic "empty" [] ~ret:bool;
  ]
let () = with_class qException [
    dynamic "raise" [];
    dynamic "clone" [] ~ret:qException;
  ]
let () = with_class qVariant [
    constructor "" [];
    constructor "" [arg "type" type];
    constructor "" [arg "typeId" int;arg "copy" void];
    constructor "" [arg "p" qVariant];
    constructor "" [arg "s" qDataStream];
    constructor "" [arg "val" int];
    constructor "" [arg "val" uint];
    constructor "" [arg "val" qlonglong];
    constructor "" [arg "val" qulonglong];
    constructor "" [arg "val" bool];
    constructor "" [arg "val" double];
    constructor "" [arg "val" float];
    constructor "" [arg "val" pchar];
    constructor "" [arg "val" qByteArray];
    constructor "" [arg "val" qBitArray];
    constructor "" [arg "val" qString];
    constructor "" [arg "val" qLatin1String];
    constructor "" [arg "val" qStringList];
    constructor "" [arg "c" qChar];
    constructor "" [arg "val" qDate];
    constructor "" [arg "val" qTime];
    constructor "" [arg "val" qDateTime];
    constructor "" [arg "val" qList<QVariant>];
    constructor "" [arg "val" qMap<QString,QVariant>];
    constructor "" [arg "val" qHash<QString,QVariant>];
    constructor "" [arg "val" qSize];
    constructor "" [arg "val" qSizeF];
    constructor "" [arg "val" qPoint];
    constructor "" [arg "val" qPointF];
    constructor "" [arg "val" qLine];
    constructor "" [arg "val" qLineF];
    constructor "" [arg "val" qRect];
    constructor "" [arg "val" qRectF];
    constructor "" [arg "l" qLocale];
    constructor "" [arg "regExp" qRegExp];
    constructor "" [arg "re" qRegularExpression];
    constructor "" [arg "val" qUrl];
    constructor "" [arg "val" qEasingCurve];
    constructor "" [arg "val" qUuid];
    constructor "" [arg "val" qModelIndex];
    constructor "" [arg "val" qPersistentModelIndex];
    constructor "" [arg "val" qJsonValue];
    constructor "" [arg "val" qJsonObject];
    constructor "" [arg "val" qJsonArray];
    constructor "" [arg "val" qJsonDocument];
    (*dynamic "operator=" [arg "variant" qVariant] ~ret:qVariant;*)
    constructor "" [arg "other" qVariant];
    (*dynamic "operator=" [arg "other" qVariant] ~ret:qVariant;*)
    dynamic "swap" [arg "other" qVariant];
    (*dynamic "type" [] ~ret:type;*)
    dynamic "userType" [] ~ret:int;
    dynamic "typeName" [] ~ret:pchar;
    dynamic "canConvert" [arg "targetTypeId" int] ~ret:bool;
    dynamic "convert" [arg "targetTypeId" int] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "isNull" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "toInt" [arg "ok" bool] ~ret:int;
    dynamic "toUInt" [arg "ok" bool] ~ret:uint;
    dynamic "toLongLong" [arg "ok" bool] ~ret:qlonglong;
    dynamic "toULongLong" [arg "ok" bool] ~ret:qulonglong;
    dynamic "toBool" [] ~ret:bool;
    dynamic "toDouble" [arg "ok" bool] ~ret:double;
    dynamic "toFloat" [arg "ok" bool] ~ret:float;
    dynamic "toReal" [arg "ok" bool] ~ret:qreal;
    dynamic "toByteArray" [] ~ret:qByteArray;
    dynamic "toBitArray" [] ~ret:qBitArray;
    dynamic "toString" [] ~ret:qString;
    dynamic "toStringList" [] ~ret:qStringList;
    dynamic "toChar" [] ~ret:qChar;
    dynamic "toDate" [] ~ret:qDate;
    dynamic "toTime" [] ~ret:qTime;
    dynamic "toDateTime" [] ~ret:qDateTime;
    (*dynamic "toList" [] ~ret:qList<QVariant>;*)
    (*dynamic "toMap" [] ~ret:qMap<QString, QVariant>;*)
    (*dynamic "toHash" [] ~ret:qHash<QString, QVariant>;*)
    dynamic "toPoint" [] ~ret:qPoint;
    dynamic "toPointF" [] ~ret:qPointF;
    dynamic "toRect" [] ~ret:qRect;
    dynamic "toSize" [] ~ret:qSize;
    dynamic "toSizeF" [] ~ret:qSizeF;
    dynamic "toLine" [] ~ret:qLine;
    dynamic "toLineF" [] ~ret:qLineF;
    dynamic "toRectF" [] ~ret:qRectF;
    dynamic "toLocale" [] ~ret:qLocale;
    dynamic "toRegExp" [] ~ret:qRegExp;
    dynamic "toRegularExpression" [] ~ret:qRegularExpression;
    dynamic "toUrl" [] ~ret:qUrl;
    dynamic "toEasingCurve" [] ~ret:qEasingCurve;
    dynamic "toUuid" [] ~ret:qUuid;
    dynamic "toModelIndex" [] ~ret:qModelIndex;
    dynamic "toPersistentModelIndex" [] ~ret:qPersistentModelIndex;
    dynamic "toJsonValue" [] ~ret:qJsonValue;
    dynamic "toJsonObject" [] ~ret:qJsonObject;
    dynamic "toJsonArray" [] ~ret:qJsonArray;
    dynamic "toJsonDocument" [] ~ret:qJsonDocument;
    static  "typeToName" [arg "typeId" int] ~ret:pchar;
    (*static  "nameToType" [arg "name" pchar] ~ret:type;*)
    dynamic "setValue" [arg "value" t];
    (*dynamic "value" [] ~ret:t;*)
    static  "fromValue" [arg "value" t] ~ret:qVariant;
    dynamic "canConvert" [] ~ret:bool;
    (*dynamic "operator==" [arg "v" qVariant] ~ret:bool;*)
    (*dynamic "operator!=" [arg "v" qVariant] ~ret:bool;*)
    (*dynamic "operator<" [arg "v" qVariant] ~ret:bool;*)
    (*dynamic "operator<=" [arg "v" qVariant] ~ret:bool;*)
    (*dynamic "operator>" [arg "v" qVariant] ~ret:bool;*)
    (*dynamic "operator>=" [arg "v" qVariant] ~ret:bool;*)
  ]
let () = with_class qMap [
    constructor "" [];
    constructor "" [arg "list" std'initializer_list<std'pair<Key,T> >];
    constructor "" [arg "other" qMap<Key,T>];
    (*dynamic "operator=" [arg "other" qMap<Key,T>] ~ret:qMap<Key, T>;*)
    constructor "" [arg "other" qMap<Key,T>];
    (*dynamic "operator=" [arg "other" qMap<Key,T>] ~ret:qMap<Key, T>;*)
    dynamic "swap" [arg "other" qMap<KeyT>];
    constructor "" [arg "other" std'map<Key,T>];
    (*dynamic "toStdMap" [] ~ret:std'map<Key, T>;*)
    (*dynamic "operator==" [arg "other" qMap<Key,T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qMap<Key,T>] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "remove" [arg "key" key] ~ret:int;
    (*dynamic "take" [arg "key" key] ~ret:t;*)
    dynamic "contains" [arg "key" key] ~ret:bool;
    dynamic "key" [arg "value" t;arg "defaultKey" key] ~ret:key;
    (*dynamic "value" [arg "key" key;arg "defaultValue" t] ~ret:t;*)
    (*dynamic "operator[]" [arg "key" key] ~ret:t;*)
    (*dynamic "operator[]" [arg "key" key] ~ret:t;*)
    (*dynamic "uniqueKeys" [] ~ret:qList<Key>;*)
    (*dynamic "keys" [] ~ret:qList<Key>;*)
    (*dynamic "keys" [arg "value" t] ~ret:qList<Key>;*)
    (*dynamic "values" [] ~ret:qList<T>;*)
    (*dynamic "values" [arg "key" key] ~ret:qList<T>;*)
    dynamic "count" [arg "key" key] ~ret:int;
    dynamic "firstKey" [] ~ret:key;
    dynamic "lastKey" [] ~ret:key;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "keyBegin" [] ~ret:key_iterator;
    dynamic "keyEnd" [] ~ret:key_iterator;
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    dynamic "find" [arg "key" key] ~ret:iterator;
    dynamic "find" [arg "key" key] ~ret:const_iterator;
    dynamic "constFind" [arg "key" key] ~ret:const_iterator;
    dynamic "lowerBound" [arg "key" key] ~ret:iterator;
    dynamic "lowerBound" [arg "key" key] ~ret:const_iterator;
    dynamic "upperBound" [arg "key" key] ~ret:iterator;
    dynamic "upperBound" [arg "key" key] ~ret:const_iterator;
    dynamic "insert" [arg "key" key;arg "value" t] ~ret:iterator;
    dynamic "insert" [arg "pos" const_iterator;arg "key" key;arg "value" t] ~ret:iterator;
    dynamic "insertMulti" [arg "key" key;arg "value" t] ~ret:iterator;
    dynamic "insertMulti" [arg "pos" const_iterator;arg "key" key;arg "value" t] ~ret:iterator;
    (*dynamic "unite" [arg "other" qMap<Key,T>] ~ret:qMap<Key, T>;*)
    dynamic "empty" [] ~ret:bool;
    (*dynamic "equal_range" [arg "key" key] ~ret:qPair<iterator, iterator>;*)
    (*dynamic "equal_range" [arg "key" key] ~ret:qPair<const_iterator, const_iterator>;*)
  ]
let () = with_class qAssociativeIterable'const_iterator [
    constructor "" [arg "other" const_iterator];
    (*dynamic "operator=" [arg "other" const_iterator] ~ret:const_iterator;*)
    dynamic "key" [] ~ret:qVariant;
    dynamic "value" [] ~ret:qVariant;
    (*dynamic "operator*" [] ~ret:qVariant;*)
    (*dynamic "operator==" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" const_iterator] ~ret:bool;*)
    (*dynamic "operator++" [] ~ret:const_iterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator--" [] ~ret:const_iterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:const_iterator;*)
    (*dynamic "operator+=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-=" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator+" [arg "j" int] ~ret:const_iterator;*)
    (*dynamic "operator-" [arg "j" int] ~ret:const_iterator;*)
  ]
let () = with_class qTime [
    constructor "" [];
    constructor "" [arg "h" int;arg "m" int;arg "s" int;arg "ms" int];
    dynamic "isNull" [] ~ret:bool;
    dynamic "isValid" [] ~ret:bool;
    dynamic "hour" [] ~ret:int;
    dynamic "minute" [] ~ret:int;
    dynamic "second" [] ~ret:int;
    dynamic "msec" [] ~ret:int;
    dynamic "toString" [arg "format" qt'DateFormat] ~ret:qString;
    dynamic "toString" [arg "format" qString] ~ret:qString;
    dynamic "setHMS" [arg "h" int;arg "m" int;arg "s" int;arg "ms" int] ~ret:bool;
    dynamic "addSecs" [arg "s" int] ~ret:qTime;
    dynamic "secsTo" [arg "t" qTime] ~ret:int;
    dynamic "addMSecs" [arg "ms" int] ~ret:qTime;
    dynamic "msecsTo" [arg "t" qTime] ~ret:int;
    (*dynamic "operator==" [arg "t" qTime] ~ret:bool;*)
    (*dynamic "operator!=" [arg "t" qTime] ~ret:bool;*)
    (*dynamic "operator<" [arg "t" qTime] ~ret:bool;*)
    (*dynamic "operator<=" [arg "t" qTime] ~ret:bool;*)
    (*dynamic "operator>" [arg "t" qTime] ~ret:bool;*)
    (*dynamic "operator>=" [arg "t" qTime] ~ret:bool;*)
    static  "fromMSecsSinceStartOfDay" [arg "msecs" int] ~ret:qTime;
    dynamic "msecsSinceStartOfDay" [] ~ret:int;
    static  "currentTime" [] ~ret:qTime;
    static  "fromString" [arg "string" qString;arg "format" qt'DateFormat] ~ret:qTime;
    static  "fromString" [arg "string" qString;arg "format" qString] ~ret:qTime;
    static  "isValid" [arg "h" int;arg "m" int;arg "s" int;arg "ms" int] ~ret:bool;
    dynamic "start" [];
    dynamic "restart" [] ~ret:int;
    dynamic "elapsed" [] ~ret:int;
  ]
let () = with_class qTextBoundaryFinder [
    constructor "" [];
    constructor "" [arg "other" qTextBoundaryFinder];
    (*dynamic "operator=" [arg "other" qTextBoundaryFinder] ~ret:qTextBoundaryFinder;*)
    constructor "" [arg "type" boundaryType;arg "string" qString];
    constructor "" [arg "type" boundaryType;arg "chars" qChar;arg "length" int;arg "buffer" unsigned pchar;arg "bufferSize" int];
    dynamic "isValid" [] ~ret:bool;
    dynamic "type" [] ~ret:boundaryType;
    dynamic "string" [] ~ret:qString;
    dynamic "toStart" [];
    dynamic "toEnd" [];
    dynamic "position" [] ~ret:int;
    dynamic "setPosition" [arg "position" int];
    dynamic "toNextBoundary" [] ~ret:int;
    dynamic "toPreviousBoundary" [] ~ret:int;
    dynamic "isAtBoundary" [] ~ret:bool;
    dynamic "boundaryReasons" [] ~ret:boundaryReasons;
  ]
let () = with_class qMetaClassInfo [
    dynamic "name" [] ~ret:pchar;
    dynamic "value" [] ~ret:pchar;
  ]
let () = with_class qSetIterator [
    constructor "" [arg "set" qSet<T>];
    (*dynamic "operator=" [arg "set" qSet<T>] ~ret:qSetIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qSharedPointer [
    (*dynamic "data" [] ~ret:t;*)
    dynamic "isNull" [] ~ret:bool;
    constructor "" [];
    (*dynamic "operator!" [] ~ret:bool;*)
    (*dynamic "operator*" [] ~ret:t;*)
    (*dynamic "operator->" [] ~ret:t;*)
    constructor "" [];
    constructor "" [arg "ptr" x];
    constructor "" [arg "ptr" x;arg "deleter" deleter];
    constructor "" [arg "arg0" std'nullptr_t];
    constructor "" [arg "arg0" std'nullptr_t;arg "d" deleter];
    constructor "" [arg "other" qSharedPointer<T>];
    constructor "" [arg "other" qWeakPointer<T>];
    (*dynamic "operator=" [arg "other" qSharedPointer<T>] ~ret:qSharedPointer<T>;*)
    (*dynamic "operator=" [arg "other" qWeakPointer<T>] ~ret:qSharedPointer<T>;*)
    dynamic "swap" [arg "other" qSharedPointer<T>];
    (*dynamic "toWeakRef" [] ~ret:qWeakPointer<T>;*)
    dynamic "clear" [];
    dynamic "reset" [];
    dynamic "reset" [arg "t" t];
    dynamic "reset" [arg "t" t;arg "deleter" deleter];
    (*dynamic "staticCast" [] ~ret:qSharedPointer<X>;*)
    (*dynamic "dynamicCast" [] ~ret:qSharedPointer<X>;*)
    (*dynamic "constCast" [] ~ret:qSharedPointer<X>;*)
    (*dynamic "objectCast" [] ~ret:qSharedPointer<X>;*)
    (*static  "create" [] ~ret:qSharedPointer<T>;*)
    (*static  "create" [arg "arg0" ...] ~ret:qSharedPointer<T>;*)
  ]
let () = with_class qProcessEnvironment [
    constructor "" [];
    constructor "" [arg "other" qProcessEnvironment];
    (*dynamic "operator=" [arg "other" qProcessEnvironment] ~ret:qProcessEnvironment;*)
    (*dynamic "operator=" [arg "other" qProcessEnvironment] ~ret:qProcessEnvironment;*)
    dynamic "swap" [arg "other" qProcessEnvironment];
    (*dynamic "operator==" [arg "other" qProcessEnvironment] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qProcessEnvironment] ~ret:bool;*)
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "contains" [arg "name" qString] ~ret:bool;
    dynamic "insert" [arg "name" qString;arg "value" qString];
    dynamic "remove" [arg "name" qString];
    dynamic "value" [arg "name" qString;arg "defaultValue" qString] ~ret:qString;
    dynamic "toStringList" [] ~ret:qStringList;
    dynamic "keys" [] ~ret:qStringList;
    dynamic "insert" [arg "e" qProcessEnvironment];
    static  "systemEnvironment" [] ~ret:qProcessEnvironment;
  ]
let () = with_class qHashIterator [
    constructor "" [arg "hash" qHash<Key,T>];
    (*dynamic "operator=" [arg "hash" qHash<Key,T>] ~ret:qHashIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    dynamic "next" [] ~ret:item;
    dynamic "peekNext" [] ~ret:item;
    dynamic "hasPrevious" [] ~ret:bool;
    dynamic "previous" [] ~ret:item;
    dynamic "peekPrevious" [] ~ret:item;
    (*dynamic "value" [] ~ret:t;*)
    dynamic "key" [] ~ret:key;
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qLinkedListIterator [
    constructor "" [arg "list" qLinkedList<T>];
    (*dynamic "operator=" [arg "list" qLinkedList<T>] ~ret:qLinkedListIterator;*)
    dynamic "toFront" [];
    dynamic "toBack" [];
    dynamic "hasNext" [] ~ret:bool;
    (*dynamic "next" [] ~ret:t;*)
    (*dynamic "peekNext" [] ~ret:t;*)
    dynamic "hasPrevious" [] ~ret:bool;
    (*dynamic "previous" [] ~ret:t;*)
    (*dynamic "peekPrevious" [] ~ret:t;*)
    dynamic "findNext" [arg "value" t] ~ret:bool;
    dynamic "findPrevious" [arg "value" t] ~ret:bool;
  ]
let () = with_class qPersistentModelIndex [
    constructor "" [arg "index" qModelIndex];
    constructor "" [arg "other" qPersistentModelIndex];
    (*dynamic "operator<" [arg "other" qPersistentModelIndex] ~ret:bool;*)
    (*dynamic "operator==" [arg "other" qPersistentModelIndex] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qPersistentModelIndex] ~ret:bool;*)
    (*dynamic "operator=" [arg "other" qPersistentModelIndex] ~ret:qPersistentModelIndex;*)
    constructor "" [arg "other" qPersistentModelIndex];
    (*dynamic "operator=" [arg "other" qPersistentModelIndex] ~ret:qPersistentModelIndex;*)
    dynamic "swap" [arg "other" qPersistentModelIndex];
    (*dynamic "operator==" [arg "other" qModelIndex] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qModelIndex] ~ret:bool;*)
    (*dynamic "operator=" [arg "other" qModelIndex] ~ret:qPersistentModelIndex;*)
    constructor "" [];
    dynamic "row" [] ~ret:int;
    dynamic "column" [] ~ret:int;
    dynamic "parent" [] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int] ~ret:qModelIndex;
    dynamic "child" [arg "row" int;arg "column" int] ~ret:qModelIndex;
    dynamic "data" [arg "role" int] ~ret:qVariant;
    dynamic "flags" [] ~ret:qt'ItemFlags;
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "isValid" [] ~ret:bool;
  ]
let () = with_class qCache [
    constructor "" [arg "maxCost" int];
    dynamic "maxCost" [] ~ret:int;
    dynamic "setMaxCost" [arg "cost" int];
    dynamic "totalCost" [] ~ret:int;
    dynamic "size" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    (*dynamic "keys" [] ~ret:qList<Key>;*)
    dynamic "clear" [];
    dynamic "insert" [arg "key" key;arg "object" t;arg "cost" int] ~ret:bool;
    (*dynamic "object" [arg "key" key] ~ret:t;*)
    dynamic "contains" [arg "key" key] ~ret:bool;
    (*dynamic "operator[]" [arg "key" key] ~ret:t;*)
    dynamic "remove" [arg "key" key] ~ret:bool;
    (*dynamic "take" [arg "key" key] ~ret:t;*)
  ]
let () = with_class qLinkedList [
    constructor "" [];
    constructor "" [arg "other" qLinkedList<T>];
    constructor "" [arg "list" std'initializer_list<T>];
    (*dynamic "operator=" [arg "other" qLinkedList<T>] ~ret:qLinkedList<T>;*)
    constructor "" [arg "other" qLinkedList<T>];
    (*dynamic "operator=" [arg "other" qLinkedList<T>] ~ret:qLinkedList<T>;*)
    dynamic "swap" [arg "other" qLinkedList<T>];
    (*dynamic "operator==" [arg "other" qLinkedList<T>] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qLinkedList<T>] ~ret:bool;*)
    dynamic "size" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "append" [arg "value" t];
    dynamic "prepend" [arg "value" t];
    (*dynamic "takeFirst" [] ~ret:t;*)
    (*dynamic "takeLast" [] ~ret:t;*)
    dynamic "removeAll" [arg "value" t] ~ret:int;
    dynamic "removeOne" [arg "value" t] ~ret:bool;
    dynamic "contains" [arg "value" t] ~ret:bool;
    dynamic "count" [arg "value" t] ~ret:int;
    dynamic "begin" [] ~ret:iterator;
    dynamic "begin" [] ~ret:const_iterator;
    dynamic "cbegin" [] ~ret:const_iterator;
    dynamic "constBegin" [] ~ret:const_iterator;
    dynamic "end" [] ~ret:iterator;
    dynamic "end" [] ~ret:const_iterator;
    dynamic "cend" [] ~ret:const_iterator;
    dynamic "constEnd" [] ~ret:const_iterator;
    dynamic "rbegin" [] ~ret:reverse_iterator;
    dynamic "rend" [] ~ret:reverse_iterator;
    dynamic "rbegin" [] ~ret:const_reverse_iterator;
    dynamic "rend" [] ~ret:const_reverse_iterator;
    dynamic "crbegin" [] ~ret:const_reverse_iterator;
    dynamic "crend" [] ~ret:const_reverse_iterator;
    dynamic "insert" [arg "before" iterator;arg "value" t] ~ret:iterator;
    dynamic "erase" [arg "pos" iterator] ~ret:iterator;
    dynamic "erase" [arg "begin" iterator;arg "end" iterator] ~ret:iterator;
    dynamic "count" [] ~ret:int;
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "first" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    (*dynamic "last" [] ~ret:t;*)
    dynamic "removeFirst" [];
    dynamic "removeLast" [];
    dynamic "startsWith" [arg "value" t] ~ret:bool;
    dynamic "endsWith" [arg "value" t] ~ret:bool;
    dynamic "push_back" [arg "value" t];
    dynamic "push_front" [arg "value" t];
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "front" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    (*dynamic "back" [] ~ret:t;*)
    dynamic "pop_front" [];
    dynamic "pop_back" [];
    dynamic "empty" [] ~ret:bool;
    (*static  "fromStdList" [arg "list" std'list<T>] ~ret:qLinkedList<T>;*)
    (*dynamic "toStdList" [] ~ret:std'list<T>;*)
    (*dynamic "operator+=" [arg "other" qLinkedList<T>] ~ret:qLinkedList<T>;*)
    (*dynamic "operator+" [arg "other" qLinkedList<T>] ~ret:qLinkedList<T>;*)
    (*dynamic "operator+=" [arg "value" t] ~ret:qLinkedList<T>;*)
    (*dynamic "operator<<" [arg "value" t] ~ret:qLinkedList<T>;*)
    (*dynamic "operator<<" [arg "other" qLinkedList<T>] ~ret:qLinkedList<T>;*)
  ]
let () = with_class qScopedValueRollback [
    constructor "" [arg "var" t];
    constructor "" [arg "var" t;arg "value" t];
    dynamic "commit" [];
  ]
let () = with_class qDir [
    constructor "" [arg "dir" qDir];
    constructor "" [arg "path" qString];
    constructor "" [arg "path" qString;arg "nameFilter" qString;arg "sort" sortFlags;arg "filters" filters];
    (*dynamic "operator=" [arg "dir" qDir] ~ret:qDir;*)
    (*dynamic "operator=" [arg "path" qString] ~ret:qDir;*)
    (*dynamic "operator=" [arg "other" qDir] ~ret:qDir;*)
    dynamic "swap" [arg "other" qDir];
    dynamic "setPath" [arg "path" qString];
    dynamic "path" [] ~ret:qString;
    dynamic "absolutePath" [] ~ret:qString;
    dynamic "canonicalPath" [] ~ret:qString;
    static  "addResourceSearchPath" [arg "path" qString];
    static  "setSearchPaths" [arg "prefix" qString;arg "searchPaths" qStringList];
    static  "addSearchPath" [arg "prefix" qString;arg "path" qString];
    static  "searchPaths" [arg "prefix" qString] ~ret:qStringList;
    dynamic "dirName" [] ~ret:qString;
    dynamic "filePath" [arg "fileName" qString] ~ret:qString;
    dynamic "absoluteFilePath" [arg "fileName" qString] ~ret:qString;
    dynamic "relativeFilePath" [arg "fileName" qString] ~ret:qString;
    static  "toNativeSeparators" [arg "pathName" qString] ~ret:qString;
    static  "fromNativeSeparators" [arg "pathName" qString] ~ret:qString;
    dynamic "cd" [arg "dirName" qString] ~ret:bool;
    dynamic "cdUp" [] ~ret:bool;
    dynamic "nameFilters" [] ~ret:qStringList;
    dynamic "setNameFilters" [arg "nameFilters" qStringList];
    dynamic "filter" [] ~ret:filters;
    dynamic "setFilter" [arg "filters" filters];
    dynamic "sorting" [] ~ret:sortFlags;
    dynamic "setSorting" [arg "sort" sortFlags];
    dynamic "count" [] ~ret:uint;
    dynamic "isEmpty" [arg "filters" filters] ~ret:bool;
    (*dynamic "operator[]" [arg "pos" int] ~ret:qString;*)
    dynamic "entryList" [arg "filters" filters;arg "sort" sortFlags] ~ret:qStringList;
    dynamic "entryList" [arg "nameFilters" qStringList;arg "filters" filters;arg "sort" sortFlags] ~ret:qStringList;
    dynamic "entryInfoList" [arg "filters" filters;arg "sort" sortFlags] ~ret:qFileInfoList;
    dynamic "entryInfoList" [arg "nameFilters" qStringList;arg "filters" filters;arg "sort" sortFlags] ~ret:qFileInfoList;
    dynamic "mkdir" [arg "dirName" qString] ~ret:bool;
    dynamic "rmdir" [arg "dirName" qString] ~ret:bool;
    dynamic "mkpath" [arg "dirPath" qString] ~ret:bool;
    dynamic "rmpath" [arg "dirPath" qString] ~ret:bool;
    dynamic "removeRecursively" [] ~ret:bool;
    dynamic "isReadable" [] ~ret:bool;
    dynamic "exists" [] ~ret:bool;
    dynamic "isRoot" [] ~ret:bool;
    static  "isRelativePath" [arg "path" qString] ~ret:bool;
    static  "isAbsolutePath" [arg "path" qString] ~ret:bool;
    dynamic "isRelative" [] ~ret:bool;
    dynamic "isAbsolute" [] ~ret:bool;
    dynamic "makeAbsolute" [] ~ret:bool;
    (*dynamic "operator==" [arg "dir" qDir] ~ret:bool;*)
    (*dynamic "operator!=" [arg "dir" qDir] ~ret:bool;*)
    dynamic "remove" [arg "fileName" qString] ~ret:bool;
    dynamic "rename" [arg "oldName" qString;arg "newName" qString] ~ret:bool;
    dynamic "exists" [arg "name" qString] ~ret:bool;
    static  "drives" [] ~ret:qFileInfoList;
    static  "listSeparator" [] ~ret:qChar;
    static  "separator" [] ~ret:qChar;
    static  "setCurrent" [arg "path" qString] ~ret:bool;
    static  "current" [] ~ret:qDir;
    static  "currentPath" [] ~ret:qString;
    static  "home" [] ~ret:qDir;
    static  "homePath" [] ~ret:qString;
    static  "root" [] ~ret:qDir;
    static  "rootPath" [] ~ret:qString;
    static  "temp" [] ~ret:qDir;
    static  "tempPath" [] ~ret:qString;
    static  "match" [arg "filters" qStringList;arg "fileName" qString] ~ret:bool;
    static  "match" [arg "filter" qString;arg "fileName" qString] ~ret:bool;
    static  "cleanPath" [arg "path" qString] ~ret:qString;
    dynamic "refresh" [];
  ]
let () = with_class qMultiMap [
    constructor "" [];
    constructor "" [arg "list" std'initializer_list<std'pair<Key,T> >];
    constructor "" [arg "other" qMap<Key,T>];
    constructor "" [arg "other" qMap<Key,T>];
    dynamic "swap" [arg "other" qMultiMap<Key,T>];
    dynamic "replace" [arg "key" key;arg "value" t] ~ret:qMap<Key, T>'iterator;
    dynamic "insert" [arg "key" key;arg "value" t] ~ret:qMap<Key, T>'iterator;
    dynamic "insert" [arg "pos" qMap<Key,T>'const_iterator;arg "key" key;arg "value" t] ~ret:qMap<Key, T>'iterator;
    (*dynamic "operator+=" [arg "other" qMultiMap] ~ret:qMultiMap;*)
    (*dynamic "operator+" [arg "other" qMultiMap] ~ret:qMultiMap;*)
    dynamic "contains" [arg "key" key;arg "value" t] ~ret:bool;
    dynamic "remove" [arg "key" key;arg "value" t] ~ret:int;
    dynamic "count" [arg "key" key;arg "value" t] ~ret:int;
    dynamic "find" [arg "key" key;arg "value" t] ~ret:qMap<Key, T>'iterator;
    dynamic "find" [arg "key" key;arg "value" t] ~ret:qMap<Key, T>'const_iterator;
    dynamic "constFind" [arg "key" key;arg "value" t] ~ret:qMap<Key, T>'const_iterator;
  ]
let () = with_class qUnhandledException [
  ]
let () = with_class qByteArrayList [
    dynamic "join" [] ~ret:qByteArray;
    dynamic "join" [arg "separator" qByteArray] ~ret:qByteArray;
    dynamic "join" [arg "separator" pchar] ~ret:qByteArray;
  ]
let () = with_class qQueue [
    dynamic "swap" [arg "other" qQueue<T>];
    dynamic "enqueue" [arg "t" t];
    (*dynamic "dequeue" [] ~ret:t;*)
    (*dynamic "head" [] ~ret:t;*)
    (*dynamic "head" [] ~ret:t;*)
  ]
let () = with_class qStringList [
    dynamic "sort" [arg "cs" qt'CaseSensitivity];
    dynamic "removeDuplicates" [] ~ret:int;
    dynamic "join" [arg "separator" qString] ~ret:qString;
    dynamic "join" [arg "separator" qLatin1String] ~ret:qString;
    dynamic "join" [arg "separator" qChar] ~ret:qString;
    dynamic "filter" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:qStringList;
    dynamic "replaceInStrings" [arg "before" qString;arg "after" qString;arg "cs" qt'CaseSensitivity] ~ret:qStringList;
    dynamic "filter" [arg "rx" qRegExp] ~ret:qStringList;
    dynamic "replaceInStrings" [arg "rx" qRegExp;arg "after" qString] ~ret:qStringList;
    dynamic "filter" [arg "re" qRegularExpression] ~ret:qStringList;
    dynamic "replaceInStrings" [arg "re" qRegularExpression;arg "after" qString] ~ret:qStringList;
    constructor "" [];
    constructor "" [arg "str" qString];
    constructor "" [arg "other" qList<QString>];
    constructor "" [arg "other" qList<QString>];
    constructor "" [arg "args" std'initializer_list<QString>];
    (*dynamic "operator=" [arg "other" qList<QString>] ~ret:qStringList;*)
    (*dynamic "operator=" [arg "other" qList<QString>] ~ret:qStringList;*)
    dynamic "contains" [arg "str" qString;arg "cs" qt'CaseSensitivity] ~ret:bool;
    (*dynamic "operator+" [arg "other" qStringList] ~ret:qStringList;*)
    (*dynamic "operator<<" [arg "str" qString] ~ret:qStringList;*)
    (*dynamic "operator<<" [arg "other" qStringList] ~ret:qStringList;*)
    (*dynamic "operator<<" [arg "other" qList<QString>] ~ret:qStringList;*)
    dynamic "indexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "indexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "rx" qRegExp;arg "from" int] ~ret:int;
    dynamic "indexOf" [arg "re" qRegularExpression;arg "from" int] ~ret:int;
    dynamic "lastIndexOf" [arg "re" qRegularExpression;arg "from" int] ~ret:int;
  ]
let () = with_class qFutureWatcher [
    constructor "" [opt "parent" qObject];
    dynamic "setFuture" [arg "future" qFuture<T>];
    (*dynamic "future" [] ~ret:qFuture<T>;*)
    (*dynamic "result" [] ~ret:t;*)
    (*dynamic "resultAt" [arg "index" int] ~ret:t;*)
    dynamic "progressValue" [] ~ret:int;
    dynamic "progressMinimum" [] ~ret:int;
    dynamic "progressMaximum" [] ~ret:int;
    dynamic "progressText" [] ~ret:qString;
    dynamic "isStarted" [] ~ret:bool;
    dynamic "isFinished" [] ~ret:bool;
    dynamic "isRunning" [] ~ret:bool;
    dynamic "isCanceled" [] ~ret:bool;
    dynamic "isPaused" [] ~ret:bool;
    dynamic "waitForFinished" [];
    dynamic "setPendingResultsLimit" [arg "limit" int];
    dynamic "started" [];
    dynamic "finished" [];
    dynamic "canceled" [];
    dynamic "paused" [];
    dynamic "resumed" [];
    dynamic "resultReadyAt" [arg "index" int];
    dynamic "resultsReadyAt" [arg "beginIndex" int;arg "endIndex" int];
    dynamic "progressRangeChanged" [arg "minimum" int;arg "maximum" int];
    dynamic "progressValueChanged" [arg "progressValue" int];
    dynamic "progressTextChanged" [arg "progressText" qString];
    dynamic "cancel" [];
    dynamic "setPaused" [arg "paused" bool];
    dynamic "pause" [];
    dynamic "resume" [];
    dynamic "togglePaused" [];
  ]
let () = with_class qStack [
    dynamic "swap" [arg "other" qStack<T>];
    dynamic "push" [arg "t" t];
    (*dynamic "pop" [] ~ret:t;*)
    (*dynamic "top" [] ~ret:t;*)
    (*dynamic "top" [] ~ret:t;*)
  ]
let () = with_class qXmlStreamAttributes [
    constructor "" [];
    (*dynamic "value" [arg "namespaceUri" qString;arg "name" qString] ~ret:qStringRef;*)
    (*dynamic "value" [arg "namespaceUri" qString;arg "name" qLatin1String] ~ret:qStringRef;*)
    (*dynamic "value" [arg "namespaceUri" qLatin1String;arg "name" qLatin1String] ~ret:qStringRef;*)
    (*dynamic "value" [arg "qualifiedName" qString] ~ret:qStringRef;*)
    (*dynamic "value" [arg "qualifiedName" qLatin1String] ~ret:qStringRef;*)
    dynamic "append" [arg "namespaceUri" qString;arg "name" qString;arg "value" qString];
    dynamic "append" [arg "qualifiedName" qString;arg "value" qString];
    dynamic "hasAttribute" [arg "qualifiedName" qString] ~ret:bool;
    dynamic "hasAttribute" [arg "qualifiedName" qLatin1String] ~ret:bool;
    dynamic "hasAttribute" [arg "namespaceUri" qString;arg "name" qString] ~ret:bool;
  ]
let () = with_class qGenericReturnArgument [
    constructor "" [arg "name" pchar;arg "data" void];
  ]
let () = with_class qMultiHash [
    constructor "" [];
    constructor "" [arg "list" std'initializer_list<std'pair<Key,T> >];
    constructor "" [arg "other" qHash<Key,T>];
    constructor "" [arg "other" qHash<Key,T>];
    dynamic "swap" [arg "other" qMultiHash];
    dynamic "replace" [arg "key" key;arg "value" t] ~ret:qHash<Key, T>'iterator;
    dynamic "insert" [arg "key" key;arg "value" t] ~ret:qHash<Key, T>'iterator;
    (*dynamic "operator+=" [arg "other" qMultiHash] ~ret:qMultiHash;*)
    (*dynamic "operator+" [arg "other" qMultiHash] ~ret:qMultiHash;*)
    dynamic "contains" [arg "key" key;arg "value" t] ~ret:bool;
    dynamic "remove" [arg "key" key;arg "value" t] ~ret:int;
    dynamic "count" [arg "key" key;arg "value" t] ~ret:int;
    dynamic "find" [arg "key" key;arg "value" t] ~ret:qHash<Key, T>'iterator;
    dynamic "find" [arg "key" key;arg "value" t] ~ret:qHash<Key, T>'const_iterator;
    dynamic "constFind" [arg "key" key;arg "value" t] ~ret:qHash<Key, T>'const_iterator;
  ]
let () = with_class qScopedArrayPointer [
    constructor "" [];
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    (*dynamic "operator[]" [arg "i" int] ~ret:t;*)
    dynamic "swap" [arg "other" qScopedArrayPointer];
  ]
let () = with_class qTimerEvent [
    constructor "" [arg "timerId" int];
    dynamic "timerId" [] ~ret:int;
  ]
let () = with_class qChildEvent [
    constructor "" [arg "type" type;arg "child" (optional qObject)];
    dynamic "child" [] ~ret:qObject;
    dynamic "added" [] ~ret:bool;
    dynamic "polished" [] ~ret:bool;
    dynamic "removed" [] ~ret:bool;
  ]
let () = with_class qDynamicPropertyChangeEvent [
    constructor "" [arg "name" qByteArray];
    dynamic "propertyName" [] ~ret:qByteArray;
  ]
let () = with_class qStateMachine'SignalEvent [
    dynamic "sender" [] ~ret:qObject;
    dynamic "signalIndex" [] ~ret:int;
    (*dynamic "arguments" [] ~ret:qList<QVariant>;*)
  ]
let () = with_class qStateMachine'WrappedEvent [
    dynamic "object" [] ~ret:qObject;
    dynamic "event" [] ~ret:qEvent;
  ]
let () = with_class qAtomicInteger [
    constructor "" [arg "value" t];
    constructor "" [arg "other" qAtomicInteger];
    (*dynamic "operator=" [arg "other" qAtomicInteger] ~ret:qAtomicInteger;*)
    (*dynamic "load" [] ~ret:t;*)
    (*dynamic "loadAcquire" [] ~ret:t;*)
    dynamic "store" [arg "newValue" t];
    dynamic "storeRelease" [arg "newValue" t];
    constructor "" [];
    (*dynamic "operator=" [arg "newValue" t] ~ret:qAtomicInteger;*)
    static  "isReferenceCountingNative" [] ~ret:bool;
    static  "isReferenceCountingWaitFree" [] ~ret:bool;
    dynamic "ref" [] ~ret:bool;
    dynamic "deref" [] ~ret:bool;
    static  "isTestAndSetNative" [] ~ret:bool;
    static  "isTestAndSetWaitFree" [] ~ret:bool;
    dynamic "testAndSetRelaxed" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetAcquire" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetRelease" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetOrdered" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    static  "isFetchAndStoreNative" [] ~ret:bool;
    static  "isFetchAndStoreWaitFree" [] ~ret:bool;
    (*dynamic "fetchAndStoreRelaxed" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreAcquire" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreRelease" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreOrdered" [arg "newValue" t] ~ret:t;*)
    static  "isFetchAndAddNative" [] ~ret:bool;
    static  "isFetchAndAddWaitFree" [] ~ret:bool;
    (*dynamic "fetchAndAddRelaxed" [arg "valueToAdd" t] ~ret:t;*)
    (*dynamic "fetchAndAddAcquire" [arg "valueToAdd" t] ~ret:t;*)
    (*dynamic "fetchAndAddRelease" [arg "valueToAdd" t] ~ret:t;*)
    (*dynamic "fetchAndAddOrdered" [arg "valueToAdd" t] ~ret:t;*)
    (*dynamic "fetchAndSubRelaxed" [arg "valueToSub" t] ~ret:t;*)
    (*dynamic "fetchAndSubAcquire" [arg "valueToSub" t] ~ret:t;*)
    (*dynamic "fetchAndSubRelease" [arg "valueToSub" t] ~ret:t;*)
    (*dynamic "fetchAndSubOrdered" [arg "valueToSub" t] ~ret:t;*)
    (*dynamic "fetchAndOrRelaxed" [arg "valueToOr" t] ~ret:t;*)
    (*dynamic "fetchAndOrAcquire" [arg "valueToOr" t] ~ret:t;*)
    (*dynamic "fetchAndOrRelease" [arg "valueToOr" t] ~ret:t;*)
    (*dynamic "fetchAndOrOrdered" [arg "valueToOr" t] ~ret:t;*)
    (*dynamic "fetchAndAndRelaxed" [arg "valueToAnd" t] ~ret:t;*)
    (*dynamic "fetchAndAndAcquire" [arg "valueToAnd" t] ~ret:t;*)
    (*dynamic "fetchAndAndRelease" [arg "valueToAnd" t] ~ret:t;*)
    (*dynamic "fetchAndAndOrdered" [arg "valueToAnd" t] ~ret:t;*)
    (*dynamic "fetchAndXorRelaxed" [arg "valueToXor" t] ~ret:t;*)
    (*dynamic "fetchAndXorAcquire" [arg "valueToXor" t] ~ret:t;*)
    (*dynamic "fetchAndXorRelease" [arg "valueToXor" t] ~ret:t;*)
    (*dynamic "fetchAndXorOrdered" [arg "valueToXor" t] ~ret:t;*)
    (*dynamic "operator++" [] ~ret:t;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:t;*)
    (*dynamic "operator--" [] ~ret:t;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:t;*)
    (*dynamic "operator+=" [arg "valueToAdd" t] ~ret:t;*)
    (*dynamic "operator-=" [arg "valueToSub" t] ~ret:t;*)
    (*dynamic "operator|=" [arg "valueToOr" t] ~ret:t;*)
    (*dynamic "operator&=" [arg "valueToAnd" t] ~ret:t;*)
    (*dynamic "operator^=" [arg "valueToXor" t] ~ret:t;*)
  ]
let () = with_class qAtomicPointer [
    constructor "" [arg "value" t];
    constructor "" [arg "other" qAtomicPointer<T>];
    (*dynamic "operator=" [arg "other" qAtomicPointer<T>] ~ret:qAtomicPointer<T>;*)
    (*dynamic "load" [] ~ret:t;*)
    (*dynamic "loadAcquire" [] ~ret:t;*)
    dynamic "store" [arg "newValue" t];
    dynamic "storeRelease" [arg "newValue" t];
    static  "isTestAndSetNative" [] ~ret:bool;
    static  "isTestAndSetWaitFree" [] ~ret:bool;
    dynamic "testAndSetRelaxed" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetAcquire" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetRelease" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    dynamic "testAndSetOrdered" [arg "expectedValue" t;arg "newValue" t] ~ret:bool;
    static  "isFetchAndStoreNative" [] ~ret:bool;
    static  "isFetchAndStoreWaitFree" [] ~ret:bool;
    (*dynamic "fetchAndStoreRelaxed" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreAcquire" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreRelease" [arg "newValue" t] ~ret:t;*)
    (*dynamic "fetchAndStoreOrdered" [arg "newValue" t] ~ret:t;*)
    static  "isFetchAndAddNative" [] ~ret:bool;
    static  "isFetchAndAddWaitFree" [] ~ret:bool;
    (*dynamic "fetchAndAddRelaxed" [arg "valueToAdd" qptrdiff] ~ret:t;*)
    (*dynamic "fetchAndAddAcquire" [arg "valueToAdd" qptrdiff] ~ret:t;*)
    (*dynamic "fetchAndAddRelease" [arg "valueToAdd" qptrdiff] ~ret:t;*)
    (*dynamic "fetchAndAddOrdered" [arg "valueToAdd" qptrdiff] ~ret:t;*)
  ]
let () = with_class qMutex [
    constructor "" [arg "mode" recursionMode];
    dynamic "lock" [];
    dynamic "tryLock" [arg "timeout" int] ~ret:bool;
    dynamic "unlock" [];
    dynamic "try_lock" [] ~ret:bool;
    dynamic "try_lock_for" [arg "duration" std'chrono'duration<Rep,Period>] ~ret:bool;
    dynamic "try_lock_until" [arg "timePoint" std'chrono'time_point<Clock,Duration>] ~ret:bool;
    dynamic "isRecursive" [] ~ret:bool;
  ]
let () = with_class qAbstractAnimation [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "state" [] ~ret:state;
    dynamic "group" [] ~ret:qAnimationGroup;
    dynamic "direction" [] ~ret:direction;
    dynamic "setDirection" [arg "direction" direction];
    dynamic "currentTime" [] ~ret:int;
    dynamic "currentLoopTime" [] ~ret:int;
    dynamic "loopCount" [] ~ret:int;
    dynamic "setLoopCount" [arg "loopCount" int];
    dynamic "currentLoop" [] ~ret:int;
    dynamic "duration" [] ~ret:int;
    dynamic "totalDuration" [] ~ret:int;
    dynamic "finished" [];
    dynamic "stateChanged" [arg "newState" qAbstractAnimation'State;arg "oldState" qAbstractAnimation'State];
    dynamic "currentLoopChanged" [arg "currentLoop" int];
    dynamic "directionChanged" [arg "newDirection" qAbstractAnimation'Direction];
    dynamic "start" [arg "policy" qAbstractAnimation'DeletionPolicy];
    dynamic "pause" [];
    dynamic "resume" [];
    dynamic "setPaused" [arg "paused" bool];
    dynamic "stop" [];
    dynamic "setCurrentTime" [arg "msecs" int];
  ]
let () = with_class qFileSelector [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "select" [arg "filePath" qString] ~ret:qString;
    dynamic "select" [arg "filePath" qUrl] ~ret:qUrl;
    dynamic "extraSelectors" [] ~ret:qStringList;
    dynamic "setExtraSelectors" [arg "list" qStringList];
    dynamic "allSelectors" [] ~ret:qStringList;
  ]
let () = with_class qSettings [
    constructor "" [arg "organization" qString;arg "application" qString;arg "parent" (optional qObject)];
    constructor "" [arg "scope" scope;arg "organization" qString;arg "application" qString;arg "parent" (optional qObject)];
    constructor "" [arg "format" format;arg "scope" scope;arg "organization" qString;arg "application" qString;arg "parent" (optional qObject)];
    constructor "" [arg "fileName" qString;arg "format" format;arg "parent" (optional qObject)];
    constructor "" [arg "parent" (optional qObject)];
    dynamic "clear" [];
    dynamic "sync" [];
    dynamic "status" [] ~ret:status;
    dynamic "beginGroup" [arg "prefix" qString];
    dynamic "endGroup" [];
    dynamic "group" [] ~ret:qString;
    dynamic "beginReadArray" [arg "prefix" qString] ~ret:int;
    dynamic "beginWriteArray" [arg "prefix" qString;arg "size" int];
    dynamic "endArray" [];
    dynamic "setArrayIndex" [arg "i" int];
    dynamic "allKeys" [] ~ret:qStringList;
    dynamic "childKeys" [] ~ret:qStringList;
    dynamic "childGroups" [] ~ret:qStringList;
    dynamic "isWritable" [] ~ret:bool;
    dynamic "setValue" [arg "key" qString;arg "value" qVariant];
    dynamic "value" [arg "key" qString;arg "defaultValue" qVariant] ~ret:qVariant;
    dynamic "remove" [arg "key" qString];
    dynamic "contains" [arg "key" qString] ~ret:bool;
    dynamic "setFallbacksEnabled" [arg "b" bool];
    dynamic "fallbacksEnabled" [] ~ret:bool;
    dynamic "fileName" [] ~ret:qString;
    dynamic "format" [] ~ret:format;
    dynamic "scope" [] ~ret:scope;
    dynamic "organizationName" [] ~ret:qString;
    dynamic "applicationName" [] ~ret:qString;
    dynamic "setIniCodec" [arg "codec" qTextCodec];
    dynamic "setIniCodec" [arg "codecName" pchar];
    dynamic "iniCodec" [] ~ret:qTextCodec;
    static  "setDefaultFormat" [arg "format" format];
    static  "defaultFormat" [] ~ret:format;
    static  "setSystemIniPath" [arg "dir" qString];
    static  "setUserIniPath" [arg "dir" qString];
    static  "setPath" [arg "format" format;arg "scope" scope;arg "path" qString];
    static  "registerFormat" [arg "extension" qString;arg "readFunc" readFunc;arg "writeFunc" writeFunc;arg "caseSensitivity" qt'CaseSensitivity] ~ret:format;
  ]
let () = with_class qAbstractEventDispatcher [
    constructor "" [arg "parent" (optional qObject)];
    static  "instance" [arg "thread" qThread] ~ret:qAbstractEventDispatcher;
    dynamic "processEvents" [arg "flags" qEventLoop'ProcessEventsFlags] ~ret:bool;
    dynamic "hasPendingEvents" [] ~ret:bool;
    dynamic "registerSocketNotifier" [arg "notifier" qSocketNotifier];
    dynamic "unregisterSocketNotifier" [arg "notifier" qSocketNotifier];
    dynamic "registerTimer" [arg "interval" int;arg "object" qObject] ~ret:int;
    dynamic "registerTimer" [arg "timerId" int;arg "interval" int;arg "object" qObject];
    dynamic "registerTimer" [arg "interval" int;arg "timerType" qt'TimerType;arg "object" qObject] ~ret:int;
    dynamic "registerTimer" [arg "timerId" int;arg "interval" int;arg "timerType" qt'TimerType;arg "object" qObject];
    dynamic "unregisterTimer" [arg "timerId" int] ~ret:bool;
    dynamic "unregisterTimers" [arg "object" qObject] ~ret:bool;
    (*dynamic "registeredTimers" [arg "object" qObject] ~ret:qList<TimerInfo>;*)
    dynamic "remainingTime" [arg "timerId" int] ~ret:int;
    dynamic "registerEventNotifier" [arg "notifier" qWinEventNotifier] ~ret:bool;
    dynamic "unregisterEventNotifier" [arg "notifier" qWinEventNotifier];
    dynamic "wakeUp" [];
    dynamic "interrupt" [];
    dynamic "flush" [];
    dynamic "installNativeEventFilter" [arg "filterObj" qAbstractNativeEventFilter];
    dynamic "removeNativeEventFilter" [arg "filter" qAbstractNativeEventFilter];
    dynamic "filterNativeEvent" [arg "eventType" qByteArray;arg "message" void;arg "result" long] ~ret:bool;
    dynamic "filterEvent" [arg "message" void] ~ret:bool;
    dynamic "aboutToBlock" [];
    dynamic "awake" [];
  ]
let () = with_class qEventLoop [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "processEvents" [arg "flags" processEventsFlags] ~ret:bool;
    dynamic "processEvents" [arg "flags" processEventsFlags;arg "maxTime" int];
    dynamic "exec" [arg "flags" processEventsFlags] ~ret:int;
    dynamic "exit" [arg "returnCode" int];
    dynamic "isRunning" [] ~ret:bool;
    dynamic "wakeUp" [];
    dynamic "event" [arg "event" qEvent] ~ret:bool;
    dynamic "quit" [];
  ]
let () = with_class qMimeData [
    constructor "" [];
    (*dynamic "urls" [] ~ret:qList<QUrl>;*)
    dynamic "setUrls" [arg "urls" qList<QUrl>];
    dynamic "hasUrls" [] ~ret:bool;
    dynamic "text" [] ~ret:qString;
    dynamic "setText" [arg "text" qString];
    dynamic "hasText" [] ~ret:bool;
    dynamic "html" [] ~ret:qString;
    dynamic "setHtml" [arg "html" qString];
    dynamic "hasHtml" [] ~ret:bool;
    dynamic "imageData" [] ~ret:qVariant;
    dynamic "setImageData" [arg "image" qVariant];
    dynamic "hasImage" [] ~ret:bool;
    dynamic "colorData" [] ~ret:qVariant;
    dynamic "setColorData" [arg "color" qVariant];
    dynamic "hasColor" [] ~ret:bool;
    dynamic "data" [arg "mimeType" qString] ~ret:qByteArray;
    dynamic "setData" [arg "mimeType" qString;arg "data" qByteArray];
    dynamic "removeFormat" [arg "mimeType" qString];
    dynamic "hasFormat" [arg "mimeType" qString] ~ret:bool;
    dynamic "formats" [] ~ret:qStringList;
    dynamic "clear" [];
  ]
let () = with_class qObjectCleanupHandler [
    constructor "" [];
    dynamic "add" [arg "object" qObject] ~ret:qObject;
    dynamic "remove" [arg "object" qObject];
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
  ]
let () = with_class qSharedMemory [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "key" qString;arg "parent" (optional qObject)];
    dynamic "setKey" [arg "key" qString];
    dynamic "key" [] ~ret:qString;
    dynamic "setNativeKey" [arg "key" qString];
    dynamic "nativeKey" [] ~ret:qString;
    dynamic "create" [arg "size" int;arg "mode" accessMode] ~ret:bool;
    dynamic "size" [] ~ret:int;
    dynamic "attach" [arg "mode" accessMode] ~ret:bool;
    dynamic "isAttached" [] ~ret:bool;
    dynamic "detach" [] ~ret:bool;
    dynamic "data" [] ~ret:void;
    dynamic "constData" [] ~ret:void;
    dynamic "data" [] ~ret:void;
    dynamic "lock" [] ~ret:bool;
    dynamic "unlock" [] ~ret:bool;
    dynamic "error" [] ~ret:sharedMemoryError;
    dynamic "errorString" [] ~ret:qString;
  ]
let () = with_class qSocketNotifier [
    constructor "" [arg "socket" qintptr;arg "type" type;arg "parent" (optional qObject)];
    dynamic "socket" [] ~ret:qintptr;
    (*dynamic "type" [] ~ret:type;*)
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "setEnabled" [arg "enable" bool];
    dynamic "activated" [arg "socket" int];
  ]
let () = with_class qTimer [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "isActive" [] ~ret:bool;
    dynamic "timerId" [] ~ret:int;
    dynamic "setInterval" [arg "msec" int];
    dynamic "interval" [] ~ret:int;
    dynamic "remainingTime" [] ~ret:int;
    dynamic "setTimerType" [arg "atype" qt'TimerType];
    dynamic "timerType" [] ~ret:qt'TimerType;
    dynamic "setSingleShot" [arg "singleShot" bool];
    dynamic "isSingleShot" [] ~ret:bool;
    static  "singleShot" [arg "msec" int;arg "receiver" qObject;arg "member" pchar];
    static  "singleShot" [arg "msec" int;arg "timerType" qt'TimerType;arg "receiver" qObject;arg "member" pchar];
    (*static  "singleShot" [arg "msec" int;arg "receiver" qObject;arg "method" pointerToMemberFunction];*)
    (*static  "singleShot" [arg "msec" int;arg "timerType" qt'TimerType;arg "receiver" qObject;arg "method" pointerToMemberFunction];*)
    (*static  "singleShot" [arg "msec" int;arg "functor" functor];*)
    (*static  "singleShot" [arg "msec" int;arg "timerType" qt'TimerType;arg "functor" functor];*)
    (*static  "singleShot" [arg "msec" int;arg "context" qObject;arg "functor" functor];*)
    (*static  "singleShot" [arg "msec" int;arg "timerType" qt'TimerType;arg "context" qObject;arg "functor" functor];*)
    dynamic "start" [arg "msec" int];
    dynamic "start" [];
    dynamic "stop" [];
    dynamic "timeout" [];
    dynamic "setInterval" [arg "value" std'chrono'milliseconds];
    dynamic "intervalAsDuration" [] ~ret:std'chrono'milliseconds;
    dynamic "remainingTimeAsDuration" [] ~ret:std'chrono'milliseconds;
    static  "singleShot" [arg "msec" std'chrono'milliseconds;arg "receiver" qObject;arg "member" pchar];
    static  "singleShot" [arg "msec" std'chrono'milliseconds;arg "timerType" qt'TimerType;arg "receiver" qObject;arg "member" pchar];
    dynamic "start" [arg "msec" std'chrono'milliseconds];
  ]
let () = with_class qTranslator [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "translate" [arg "context" pchar;arg "sourceText" pchar;arg "disambiguation" pchar;arg "n" int] ~ret:qString;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "load" [arg "filename" qString;arg "directory" qString;arg "search_delimiters" qString;arg "suffix" qString] ~ret:bool;
    dynamic "load" [arg "locale" qLocale;arg "filename" qString;arg "prefix" qString;arg "directory" qString;arg "suffix" qString] ~ret:bool;
    dynamic "load" [arg "data" uchar;arg "len" int;arg "directory" qString] ~ret:bool;
  ]
let () = with_class qWinEventNotifier [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "hEvent" hANDLE;arg "parent" (optional qObject)];
    dynamic "setHandle" [arg "hEvent" hANDLE];
    dynamic "handle" [] ~ret:hANDLE;
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "setEnabled" [arg "enable" bool];
    dynamic "activated" [arg "hEvent" hANDLE];
  ]
let () = with_class qLibrary [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "fileName" qString;arg "parent" (optional qObject)];
    constructor "" [arg "fileName" qString;arg "verNum" int;arg "parent" (optional qObject)];
    constructor "" [arg "fileName" qString;arg "version" qString;arg "parent" (optional qObject)];
    dynamic "resolve" [arg "symbol" pchar] ~ret:qFunctionPointer;
    static  "resolve" [arg "fileName" qString;arg "symbol" pchar] ~ret:qFunctionPointer;
    static  "resolve" [arg "fileName" qString;arg "verNum" int;arg "symbol" pchar] ~ret:qFunctionPointer;
    static  "resolve" [arg "fileName" qString;arg "version" qString;arg "symbol" pchar] ~ret:qFunctionPointer;
    dynamic "load" [] ~ret:bool;
    dynamic "unload" [] ~ret:bool;
    dynamic "isLoaded" [] ~ret:bool;
    static  "isLibrary" [arg "fileName" qString] ~ret:bool;
    dynamic "setFileName" [arg "fileName" qString];
    dynamic "fileName" [] ~ret:qString;
    dynamic "setFileNameAndVersion" [arg "fileName" qString;arg "versionNumber" int];
    dynamic "setFileNameAndVersion" [arg "fileName" qString;arg "version" qString];
    dynamic "errorString" [] ~ret:qString;
    dynamic "setLoadHints" [arg "hints" loadHints];
    dynamic "loadHints" [] ~ret:loadHints;
  ]
let () = with_class qPluginLoader [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "fileName" qString;arg "parent" (optional qObject)];
    dynamic "instance" [] ~ret:qObject;
    dynamic "metaData" [] ~ret:qJsonObject;
    (*static  "staticInstances" [] ~ret:qObjectList;*)
    (*static  "staticPlugins" [] ~ret:qVector<QStaticPlugin>;*)
    dynamic "load" [] ~ret:bool;
    dynamic "unload" [] ~ret:bool;
    dynamic "isLoaded" [] ~ret:bool;
    dynamic "setFileName" [arg "fileName" qString];
    dynamic "fileName" [] ~ret:qString;
    dynamic "errorString" [] ~ret:qString;
    dynamic "setLoadHints" [arg "loadHints" qLibrary'LoadHints];
    dynamic "loadHints" [] ~ret:qLibrary'LoadHints;
  ]
let () = with_class qAbstractState [
    dynamic "parentState" [] ~ret:qState;
    dynamic "machine" [] ~ret:qStateMachine;
    dynamic "active" [] ~ret:bool;
    dynamic "entered" [];
    dynamic "exited" [];
    dynamic "activeChanged" [arg "active" bool];
  ]
let () = with_class qAbstractTransition [
    constructor "" [arg "sourceState" qState];
    dynamic "sourceState" [] ~ret:qState;
    dynamic "targetState" [] ~ret:qAbstractState;
    dynamic "setTargetState" [arg "target" qAbstractState];
    (*dynamic "targetStates" [] ~ret:qList<QAbstractState *>;*)
    dynamic "setTargetStates" [arg "targets" qList<QAbstractState *>];
    (*dynamic "transitionType" [] ~ret:transitionType;*)
    dynamic "setTransitionType" [arg "type" transitionType];
    dynamic "machine" [] ~ret:qStateMachine;
    dynamic "addAnimation" [arg "animation" qAbstractAnimation];
    dynamic "removeAnimation" [arg "animation" qAbstractAnimation];
    (*dynamic "animations" [] ~ret:qList<QAbstractAnimation *>;*)
    dynamic "triggered" [];
    dynamic "targetStateChanged" [];
    dynamic "targetStatesChanged" [];
  ]
let () = with_class qThread [
    static  "currentThreadId" [] ~ret:qt'HANDLE;
    static  "currentThread" [] ~ret:qThread;
    static  "idealThreadCount" [] ~ret:int;
    static  "yieldCurrentThread" [];
    constructor "" [arg "parent" (optional qObject)];
    dynamic "setPriority" [arg "priority" priority];
    dynamic "priority" [] ~ret:priority;
    dynamic "isFinished" [] ~ret:bool;
    dynamic "isRunning" [] ~ret:bool;
    dynamic "requestInterruption" [];
    dynamic "isInterruptionRequested" [] ~ret:bool;
    dynamic "setStackSize" [arg "stackSize" uint];
    dynamic "stackSize" [] ~ret:uint;
    dynamic "exit" [arg "returnCode" int];
    dynamic "eventDispatcher" [] ~ret:qAbstractEventDispatcher;
    dynamic "setEventDispatcher" [arg "eventDispatcher" qAbstractEventDispatcher];
    dynamic "event" [arg "event" qEvent] ~ret:bool;
    dynamic "loopLevel" [] ~ret:int;
    dynamic "start" [arg "priority" priority];
    dynamic "terminate" [];
    dynamic "quit" [];
    dynamic "wait" [arg "time" unsigned long] ~ret:bool;
    static  "sleep" [arg "secs" unsigned long];
    static  "msleep" [arg "msecs" unsigned long];
    static  "usleep" [arg "usecs" unsigned long];
    dynamic "started" [];
    dynamic "finished" [];
  ]
let () = with_class qThreadPool [
    constructor "" [arg "parent" (optional qObject)];
    static  "globalInstance" [] ~ret:qThreadPool;
    dynamic "start" [arg "runnable" qRunnable;arg "priority" int];
    dynamic "tryStart" [arg "runnable" qRunnable] ~ret:bool;
    dynamic "expiryTimeout" [] ~ret:int;
    dynamic "setExpiryTimeout" [arg "expiryTimeout" int];
    dynamic "maxThreadCount" [] ~ret:int;
    dynamic "setMaxThreadCount" [arg "maxThreadCount" int];
    dynamic "activeThreadCount" [] ~ret:int;
    dynamic "reserveThread" [];
    dynamic "releaseThread" [];
    dynamic "waitForDone" [arg "msecs" int] ~ret:bool;
    dynamic "clear" [];
    dynamic "cancel" [arg "runnable" qRunnable];
    dynamic "tryTake" [arg "runnable" qRunnable] ~ret:bool;
  ]
let () = with_class qTimeLine [
    constructor "" [arg "duration" int;arg "parent" (optional qObject)];
    dynamic "state" [] ~ret:state;
    dynamic "loopCount" [] ~ret:int;
    dynamic "setLoopCount" [arg "count" int];
    dynamic "direction" [] ~ret:direction;
    dynamic "setDirection" [arg "direction" direction];
    dynamic "duration" [] ~ret:int;
    dynamic "setDuration" [arg "duration" int];
    dynamic "startFrame" [] ~ret:int;
    dynamic "setStartFrame" [arg "frame" int];
    dynamic "endFrame" [] ~ret:int;
    dynamic "setEndFrame" [arg "frame" int];
    dynamic "setFrameRange" [arg "startFrame" int;arg "endFrame" int];
    dynamic "updateInterval" [] ~ret:int;
    dynamic "setUpdateInterval" [arg "interval" int];
    dynamic "curveShape" [] ~ret:curveShape;
    dynamic "setCurveShape" [arg "shape" curveShape];
    dynamic "easingCurve" [] ~ret:qEasingCurve;
    dynamic "setEasingCurve" [arg "curve" qEasingCurve];
    dynamic "currentTime" [] ~ret:int;
    dynamic "currentFrame" [] ~ret:int;
    dynamic "currentValue" [] ~ret:qreal;
    dynamic "frameForTime" [arg "msec" int] ~ret:int;
    dynamic "valueForTime" [arg "msec" int] ~ret:qreal;
    dynamic "start" [];
    dynamic "resume" [];
    dynamic "stop" [];
    dynamic "setPaused" [arg "paused" bool];
    dynamic "setCurrentTime" [arg "msec" int];
    dynamic "toggleDirection" [];
    dynamic "valueChanged" [arg "value" qreal];
    dynamic "frameChanged" [arg "frame" int];
    dynamic "stateChanged" [arg "newState" qTimeLine'State];
    dynamic "finished" [];
  ]
let () = with_class qEventTransition [
    constructor "" [arg "sourceState" qState];
    constructor "" [arg "object" (optional qObject);arg "type" qEvent'Type;arg "sourceState" qState];
    dynamic "eventSource" [] ~ret:qObject;
    dynamic "setEventSource" [arg "object" qObject];
    dynamic "eventType" [] ~ret:qEvent'Type;
    dynamic "setEventType" [arg "type" qEvent'Type];
  ]
let () = with_class qSignalTransition [
    constructor "" [arg "sourceState" qState];
    constructor "" [arg "sender" (optional qObject);arg "signal" pchar;arg "sourceState" qState];
    (*constructor "" [arg "sender" (optional qObject);arg "signal" pointerToMemberFunction;arg "sourceState" qState];*)
    dynamic "senderObject" [] ~ret:qObject;
    dynamic "setSenderObject" [arg "sender" qObject];
    dynamic "signal" [] ~ret:qByteArray;
    dynamic "setSignal" [arg "signal" qByteArray];
    dynamic "senderObjectChanged" [];
    dynamic "signalChanged" [];
  ]
let () = with_class qFinalState [
    constructor "" [arg "parent" qState];
  ]
let () = with_class qHistoryState [
    constructor "" [arg "parent" qState];
    constructor "" [arg "type" historyType;arg "parent" qState];
    dynamic "defaultTransition" [] ~ret:qAbstractTransition;
    dynamic "setDefaultTransition" [arg "transition" qAbstractTransition];
    dynamic "defaultState" [] ~ret:qAbstractState;
    dynamic "setDefaultState" [arg "state" qAbstractState];
    dynamic "historyType" [] ~ret:historyType;
    dynamic "setHistoryType" [arg "type" historyType];
    dynamic "defaultTransitionChanged" [];
    dynamic "defaultStateChanged" [];
    dynamic "historyTypeChanged" [];
  ]
let () = with_class qState [
    constructor "" [arg "parent" qState];
    constructor "" [arg "childMode" childMode;arg "parent" qState];
    dynamic "errorState" [] ~ret:qAbstractState;
    dynamic "setErrorState" [arg "state" qAbstractState];
    dynamic "addTransition" [arg "transition" qAbstractTransition];
    dynamic "addTransition" [arg "sender" qObject;arg "signal" pchar;arg "target" qAbstractState] ~ret:qSignalTransition;
    (*dynamic "addTransition" [arg "sender" qObject;arg "signal" pointerToMemberFunction;arg "target" qAbstractState] ~ret:qSignalTransition;*)
    dynamic "addTransition" [arg "target" qAbstractState] ~ret:qAbstractTransition;
    dynamic "removeTransition" [arg "transition" qAbstractTransition];
    (*dynamic "transitions" [] ~ret:qList<QAbstractTransition *>;*)
    dynamic "initialState" [] ~ret:qAbstractState;
    dynamic "setInitialState" [arg "state" qAbstractState];
    dynamic "childMode" [] ~ret:childMode;
    dynamic "setChildMode" [arg "mode" childMode];
    dynamic "assignProperty" [arg "object" qObject;arg "name" pchar;arg "value" qVariant];
    dynamic "finished" [];
    dynamic "propertiesAssigned" [];
    dynamic "childModeChanged" [];
    dynamic "initialStateChanged" [];
    dynamic "errorStateChanged" [];
  ]
let () = with_class qAbstractTableModel [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "idx" qModelIndex] ~ret:qModelIndex;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
  ]
let () = with_class qAbstractListModel [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "idx" qModelIndex] ~ret:qModelIndex;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
  ]
let () = with_class qBuffer [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "byteArray" qByteArray;arg "parent" (optional qObject)];
    dynamic "buffer" [] ~ret:qByteArray;
    dynamic "buffer" [] ~ret:qByteArray;
    dynamic "setBuffer" [arg "byteArray" qByteArray];
    dynamic "setData" [arg "data" qByteArray];
    dynamic "setData" [arg "data" pchar;arg "size" int];
    dynamic "data" [] ~ret:qByteArray;
    dynamic "open" [arg "flags" openMode] ~ret:bool;
    dynamic "close" [];
    dynamic "size" [] ~ret:qint64;
    dynamic "pos" [] ~ret:qint64;
    dynamic "seek" [arg "pos" qint64] ~ret:bool;
    dynamic "atEnd" [] ~ret:bool;
    dynamic "canReadLine" [] ~ret:bool;
  ]
let () = with_class qProcess [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "start" [arg "program" qString;arg "arguments" qStringList;arg "mode" openMode];
    dynamic "start" [arg "command" qString;arg "mode" openMode];
    dynamic "start" [arg "mode" openMode];
    dynamic "open" [arg "mode" openMode] ~ret:bool;
    dynamic "program" [] ~ret:qString;
    dynamic "setProgram" [arg "program" qString];
    dynamic "arguments" [] ~ret:qStringList;
    dynamic "setArguments" [arg "arguments" qStringList];
    dynamic "readChannelMode" [] ~ret:processChannelMode;
    dynamic "setReadChannelMode" [arg "mode" processChannelMode];
    dynamic "processChannelMode" [] ~ret:processChannelMode;
    dynamic "setProcessChannelMode" [arg "mode" processChannelMode];
    dynamic "inputChannelMode" [] ~ret:inputChannelMode;
    dynamic "setInputChannelMode" [arg "mode" inputChannelMode];
    dynamic "readChannel" [] ~ret:processChannel;
    dynamic "setReadChannel" [arg "channel" processChannel];
    dynamic "closeReadChannel" [arg "channel" processChannel];
    dynamic "closeWriteChannel" [];
    dynamic "setStandardInputFile" [arg "fileName" qString];
    dynamic "setStandardOutputFile" [arg "fileName" qString;arg "mode" openMode];
    dynamic "setStandardErrorFile" [arg "fileName" qString;arg "mode" openMode];
    dynamic "setStandardOutputProcess" [arg "destination" qProcess];
    dynamic "nativeArguments" [] ~ret:qString;
    dynamic "setNativeArguments" [arg "arguments" qString];
    constructor "" [];
    dynamic "setCreateProcessArgumentsModifier" [arg "modifier" createProcessArgumentModifier];
    dynamic "workingDirectory" [] ~ret:qString;
    dynamic "setWorkingDirectory" [arg "dir" qString];
    dynamic "setEnvironment" [arg "environment" qStringList];
    dynamic "environment" [] ~ret:qStringList;
    dynamic "setProcessEnvironment" [arg "environment" qProcessEnvironment];
    dynamic "processEnvironment" [] ~ret:qProcessEnvironment;
    dynamic "error" [] ~ret:qProcess'ProcessError;
    dynamic "state" [] ~ret:qProcess'ProcessState;
    dynamic "pid" [] ~ret:q_PID;
    dynamic "processId" [] ~ret:qint64;
    dynamic "waitForStarted" [arg "msecs" int] ~ret:bool;
    dynamic "waitForReadyRead" [arg "msecs" int] ~ret:bool;
    dynamic "waitForBytesWritten" [arg "msecs" int] ~ret:bool;
    dynamic "waitForFinished" [arg "msecs" int] ~ret:bool;
    dynamic "readAllStandardOutput" [] ~ret:qByteArray;
    dynamic "readAllStandardError" [] ~ret:qByteArray;
    dynamic "exitCode" [] ~ret:int;
    dynamic "exitStatus" [] ~ret:qProcess'ExitStatus;
    dynamic "bytesAvailable" [] ~ret:qint64;
    dynamic "bytesToWrite" [] ~ret:qint64;
    dynamic "isSequential" [] ~ret:bool;
    dynamic "canReadLine" [] ~ret:bool;
    dynamic "close" [];
    dynamic "atEnd" [] ~ret:bool;
    static  "execute" [arg "program" qString;arg "arguments" qStringList] ~ret:int;
    static  "execute" [arg "command" qString] ~ret:int;
    static  "startDetached" [arg "program" qString;arg "arguments" qStringList;arg "workingDirectory" qString;arg "pid" qint64] ~ret:bool;
    static  "startDetached" [arg "command" qString] ~ret:bool;
    static  "systemEnvironment" [] ~ret:qStringList;
    static  "nullDevice" [] ~ret:qString;
    dynamic "terminate" [];
    dynamic "kill" [];
    dynamic "started" [];
    dynamic "finished" [arg "exitCode" int];
    dynamic "finished" [arg "exitCode" int;arg "exitStatus" qProcess'ExitStatus];
    dynamic "error" [arg "error" qProcess'ProcessError];
    dynamic "errorOccurred" [arg "error" qProcess'ProcessError];
    dynamic "stateChanged" [arg "newState" qProcess'ProcessState];
    dynamic "readyReadStandardOutput" [];
    dynamic "readyReadStandardError" [];
  ]
let () = with_class qAnimationGroup [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "animationAt" [arg "index" int] ~ret:qAbstractAnimation;
    dynamic "animationCount" [] ~ret:int;
    dynamic "indexOfAnimation" [arg "animation" qAbstractAnimation] ~ret:int;
    dynamic "addAnimation" [arg "animation" qAbstractAnimation];
    dynamic "insertAnimation" [arg "index" int;arg "animation" qAbstractAnimation];
    dynamic "removeAnimation" [arg "animation" qAbstractAnimation];
    dynamic "takeAnimation" [arg "index" int] ~ret:qAbstractAnimation;
    dynamic "clear" [];
  ]
let () = with_class qPauseAnimation [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "msecs" int;arg "parent" (optional qObject)];
    dynamic "duration" [] ~ret:int;
    dynamic "setDuration" [arg "msecs" int];
  ]
let () = with_class qVariantAnimation [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "startValue" [] ~ret:qVariant;
    dynamic "setStartValue" [arg "value" qVariant];
    dynamic "endValue" [] ~ret:qVariant;
    dynamic "setEndValue" [arg "value" qVariant];
    dynamic "keyValueAt" [arg "step" qreal] ~ret:qVariant;
    dynamic "setKeyValueAt" [arg "step" qreal;arg "value" qVariant];
    dynamic "keyValues" [] ~ret:keyValues;
    dynamic "setKeyValues" [arg "keyValues" keyValues];
    dynamic "currentValue" [] ~ret:qVariant;
    dynamic "duration" [] ~ret:int;
    dynamic "setDuration" [arg "msecs" int];
    dynamic "easingCurve" [] ~ret:qEasingCurve;
    dynamic "setEasingCurve" [arg "easing" qEasingCurve];
    dynamic "valueChanged" [arg "value" qVariant];
  ]
let () = with_class qAtomicInt [
    constructor "" [arg "value" int];
  ]
let () = with_class qPropertyAnimation [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "target" (optional qObject);arg "propertyName" qByteArray;arg "parent" qObject];
    dynamic "targetObject" [] ~ret:qObject;
    dynamic "setTargetObject" [arg "target" qObject];
    dynamic "propertyName" [] ~ret:qByteArray;
    dynamic "setPropertyName" [arg "propertyName" qByteArray];
  ]
let () = with_class qParallelAnimationGroup [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "duration" [] ~ret:int;
  ]
let () = with_class qSequentialAnimationGroup [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "addPause" [arg "msecs" int] ~ret:qPauseAnimation;
    dynamic "insertPause" [arg "index" int;arg "msecs" int] ~ret:qPauseAnimation;
    dynamic "currentAnimation" [] ~ret:qAbstractAnimation;
    dynamic "duration" [] ~ret:int;
    dynamic "currentAnimationChanged" [arg "current" qAbstractAnimation];
  ]
let () = with_class qSaveFile [
    constructor "" [arg "name" qString];
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "name" qString;arg "parent" (optional qObject)];
    dynamic "fileName" [] ~ret:qString;
    dynamic "setFileName" [arg "name" qString];
    dynamic "open" [arg "mode" openMode] ~ret:bool;
    dynamic "commit" [] ~ret:bool;
    dynamic "cancelWriting" [];
    dynamic "setDirectWriteFallback" [arg "enabled" bool];
    dynamic "directWriteFallback" [] ~ret:bool;
  ]
let () = with_class qIdentityProxyModel [
    constructor "" [arg "parent" (optional qObject)];
    dynamic "columnCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "mapFromSource" [arg "sourceIndex" qModelIndex] ~ret:qModelIndex;
    dynamic "mapToSource" [arg "proxyIndex" qModelIndex] ~ret:qModelIndex;
    dynamic "parent" [arg "child" qModelIndex] ~ret:qModelIndex;
    dynamic "rowCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "headerData" [arg "section" int;arg "orientation" qt'Orientation;arg "role" int] ~ret:qVariant;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "idx" qModelIndex] ~ret:qModelIndex;
    dynamic "mapSelectionFromSource" [arg "selection" qItemSelection] ~ret:qItemSelection;
    dynamic "mapSelectionToSource" [arg "selection" qItemSelection] ~ret:qItemSelection;
    dynamic "match" [arg "start" qModelIndex;arg "role" int;arg "value" qVariant;arg "hits" int;arg "flags" qt'MatchFlags] ~ret:qModelIndexList;
    dynamic "setSourceModel" [arg "newSourceModel" qAbstractItemModel];
    dynamic "insertColumns" [arg "column" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "insertRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeColumns" [arg "column" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
  ]
let () = with_class qStringListModel [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "strings" qStringList;arg "parent" (optional qObject)];
    dynamic "rowCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "idx" qModelIndex] ~ret:qModelIndex;
    dynamic "data" [arg "index" qModelIndex;arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "index" qModelIndex;arg "value" qVariant;arg "role" int] ~ret:bool;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
    dynamic "insertRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "removeRows" [arg "row" int;arg "count" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "sort" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "stringList" [] ~ret:qStringList;
    dynamic "setStringList" [arg "strings" qStringList];
    dynamic "supportedDropActions" [] ~ret:qt'DropActions;
  ]
let () = with_class qStateMachine [
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "childMode" qState'ChildMode;arg "parent" (optional qObject)];
    dynamic "addState" [arg "state" qAbstractState];
    dynamic "removeState" [arg "state" qAbstractState];
    dynamic "error" [] ~ret:error;
    dynamic "errorString" [] ~ret:qString;
    dynamic "clearError" [];
    dynamic "isRunning" [] ~ret:bool;
    dynamic "isAnimated" [] ~ret:bool;
    dynamic "setAnimated" [arg "enabled" bool];
    dynamic "addDefaultAnimation" [arg "animation" qAbstractAnimation];
    (*dynamic "defaultAnimations" [] ~ret:qList<QAbstractAnimation *>;*)
    dynamic "removeDefaultAnimation" [arg "animation" qAbstractAnimation];
    dynamic "globalRestorePolicy" [] ~ret:qState'RestorePolicy;
    dynamic "setGlobalRestorePolicy" [arg "restorePolicy" qState'RestorePolicy];
    dynamic "postEvent" [arg "event" qEvent;arg "priority" eventPriority];
    dynamic "postDelayedEvent" [arg "event" qEvent;arg "delay" int] ~ret:int;
    dynamic "cancelDelayedEvent" [arg "id" int] ~ret:bool;
    (*dynamic "configuration" [] ~ret:qSet<QAbstractState *>;*)
    dynamic "eventFilter" [arg "watched" qObject;arg "event" qEvent] ~ret:bool;
    dynamic "start" [];
    dynamic "stop" [];
    dynamic "setRunning" [arg "running" bool];
    dynamic "started" [];
    dynamic "stopped" [];
    dynamic "runningChanged" [arg "running" bool];
  ]
let () = with_class qTemporaryFile [
    constructor "" [];
    constructor "" [arg "templateName" qString];
    constructor "" [arg "parent" (optional qObject)];
    constructor "" [arg "templateName" qString;arg "parent" (optional qObject)];
    dynamic "autoRemove" [] ~ret:bool;
    dynamic "setAutoRemove" [arg "b" bool];
    dynamic "open" [] ~ret:bool;
    dynamic "fileName" [] ~ret:qString;
    dynamic "fileTemplate" [] ~ret:qString;
    dynamic "setFileTemplate" [arg "name" qString];
    static  "createLocalFile" [arg "fileName" qString] ~ret:qTemporaryFile;
    static  "createLocalFile" [arg "file" qFile] ~ret:qTemporaryFile;
    static  "createNativeFile" [arg "fileName" qString] ~ret:qTemporaryFile;
    static  "createNativeFile" [arg "file" qFile] ~ret:qTemporaryFile;
  ]*)
