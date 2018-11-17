open Mlspec.Decl
open QtCore_enum
open QtCore_classes
open QtGui_enum
open QtGui_classes
open QtWidgets_enum
open QtWidgets_classes

let protected = true

let optional x = x

let () = with_class qApplication [
    constructor "" [arg "args" (custom_type ~cpp_name:"string_array" "string array")] ~custom:true;
    static  "style" [] ~ret:qStyle;
    static  "setStyle" [arg "style" qStyle];
    static  "setStyle" [arg "style" qString] ~ret:qStyle;
    static  "colorSpec" [] ~ret:int;
    static  "setColorSpec" [arg "spec" int];
    (*static  "setGraphicsSystem" [arg "arg0" qString];*)
    (*static  "palette" [arg "widget" qWidget] ~ret:qPalette;*)
    (*static  "palette" [arg "className" char] ~ret:qPalette;*)
    (*static  "setPalette" [arg "palette" qPalette;arg "className" char];*)
    static  "font" [] ~ret:qFont;
    static  "font" [arg "widget" qWidget] ~ret:qFont;
    static  "font" [arg "className" pchar] ~ret:qFont;
    static  "setFont" [arg "font" qFont;arg "className" pchar];
    static  "fontMetrics" [] ~ret:qFontMetrics;
    static  "setWindowIcon" [arg "icon" qIcon];
    static  "windowIcon" [] ~ret:qIcon;
    (*static  "allWidgets" [] ~ret:qWidgetList;*)
    (*static  "topLevelWidgets" [] ~ret:qWidgetList;*)
    static  "desktop" [] ~ret:qDesktopWidget;
    static  "activePopupWidget" [] ~ret:(optional qWidget);
    static  "activeModalWidget" [] ~ret:(optional qWidget);
    static  "focusWidget" [] ~ret:(optional qWidget);
    static  "activeWindow" [] ~ret:(optional qWidget);
    static  "setActiveWindow" [arg "active" qWidget];
    static  "widgetAt" [arg "point" qPoint] ~ret:(optional qWidget);
    static  "widgetAt" [arg "x" int;arg "y" int] ~ret:(optional qWidget);
    static  "topLevelAt" [arg "point" qPoint] ~ret:(optional qWidget);
    static  "topLevelAt" [arg "x" int;arg "y" int] ~ret:(optional qWidget);
    static  "beep" [];
    static  "alert" [arg "widget" qWidget;arg "msec" int];
    static  "setCursorFlashTime" [arg "arg0" int];
    static  "cursorFlashTime" [] ~ret:int;
    static  "setDoubleClickInterval" [arg "arg0" int];
    static  "doubleClickInterval" [] ~ret:int;
    static  "setKeyboardInputInterval" [arg "arg0" int];
    static  "keyboardInputInterval" [] ~ret:int;
    static  "setWheelScrollLines" [arg "arg0" int];
    static  "wheelScrollLines" [] ~ret:int;
    static  "setGlobalStrut" [arg "arg0" qSize];
    static  "globalStrut" [] ~ret:qSize;
    static  "setStartDragTime" [arg "ms" int];
    static  "startDragTime" [] ~ret:int;
    static  "setStartDragDistance" [arg "l" int];
    static  "startDragDistance" [] ~ret:int;
    static  "isEffectEnabled" [arg "effect" qt'UIEffect] ~ret:bool;
    static  "setEffectEnabled" [arg "effect" qt'UIEffect;arg "enable" bool];
    (*static  "keyboardInputLocale" [] ~ret:qLocale;*)
    (*static  "keyboardInputDirection" [] ~ret:qt'LayoutDirection;*)
    static  "exec" [] ~ret:int ~custom:true;
    (*static  "setKeypadNavigationEnabled" [arg "enable" bool];*)
    (*static  "keypadNavigationEnabled" [] ~ret:bool;*)
    (*static  "setNavigationMode" [arg "mode" qt'NavigationMode];*)
    (*static  "navigationMode" [] ~ret:qt'NavigationMode;*)
    dynamic "focusChanged" [arg "old" qWidget;arg "now" qWidget];
    dynamic "styleSheet" [] ~ret:qString;
    dynamic "setStyleSheet" [arg "sheet" qString];
    dynamic "setAutoSipEnabled" [arg "enabled" bool];
    dynamic "autoSipEnabled" [] ~ret:bool;
    static  "closeAllWindows" [];
    static  "aboutQt" [];
    signal  "focusChanged" [opt "" qWidget; opt "" qWidget];
    slot    "aboutQt" [];
    slot    "autoSipEnabled" [];
    slot    "closeAllWindows" [];
    slot    "setAutoSipEnabled" [arg "" bool];
    slot    "setStyleSheet" [arg "" qString];
  ]

let () = with_class qWidget [
    constructor "" [opt "parent" qWidget];
    (*constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];*)
    (*dynamic "winId" [] ~ret:wId;*)
    (*dynamic "effectiveWinId" [] ~ret:wId;*)
    (*dynamic "style" [] ~ret:qStyle;*)
    (*dynamic "setStyle" [arg "style" qStyle];*)
    dynamic "addAction" [arg "action" qAction];
    dynamic "isTopLevel" [] ~ret:bool;
    dynamic "isWindow" [] ~ret:bool;
    dynamic "isModal" [] ~ret:bool;
    (*dynamic "windowModality" [] ~ret:qt'WindowModality;*)
    (*dynamic "setWindowModality" [arg "windowModality" qt'WindowModality];*)
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "isEnabledTo" [arg "ancestor" qWidget] ~ret:bool;
    dynamic "isEnabledToTLW" [] ~ret:bool;
    dynamic "setEnabled" [arg "arg0" bool];
    dynamic "setDisabled" [arg "disable" bool];
    dynamic "setWindowModified" [arg "arg0" bool];
    dynamic "frameGeometry" [] ~ret:qRect;
    dynamic "geometry" [] ~ret:qRect;
    dynamic "normalGeometry" [] ~ret:qRect;
    dynamic "x" [] ~ret:int;
    dynamic "y" [] ~ret:int;
    dynamic "pos" [] ~ret:qPoint;
    dynamic "frameSize" [] ~ret:qSize;
    dynamic "size" [] ~ret:qSize;
    dynamic "width" [] ~ret:int;
    dynamic "height" [] ~ret:int;
    dynamic "rect" [] ~ret:qRect;
    dynamic "childrenRect" [] ~ret:qRect;
    dynamic "childrenRegion" [] ~ret:qRegion;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "minimumWidth" [] ~ret:int;
    dynamic "minimumHeight" [] ~ret:int;
    dynamic "maximumWidth" [] ~ret:int;
    dynamic "maximumHeight" [] ~ret:int;
    dynamic "setMinimumSize" [arg "arg0" qSize];
    dynamic "setMinimumSize" [arg "minw" int;arg "minh" int];
    dynamic "setMaximumSize" [arg "arg0" qSize];
    dynamic "setMaximumSize" [arg "maxw" int;arg "maxh" int];
    dynamic "setMinimumWidth" [arg "minw" int];
    dynamic "setMinimumHeight" [arg "minh" int];
    dynamic "setMaximumWidth" [arg "maxw" int];
    dynamic "setMaximumHeight" [arg "maxh" int];
    (*dynamic "setupUi" [arg "widget" qWidget];*)
    dynamic "sizeIncrement" [] ~ret:qSize;
    dynamic "setSizeIncrement" [arg "arg0" qSize];
    dynamic "setSizeIncrement" [arg "w" int;arg "h" int];
    dynamic "baseSize" [] ~ret:qSize;
    dynamic "setBaseSize" [arg "arg0" qSize];
    dynamic "setBaseSize" [arg "basew" int;arg "baseh" int];
    dynamic "setFixedSize" [arg "s" qSize];
    dynamic "setFixedSize" [arg "w" int;arg "h" int];
    dynamic "setFixedWidth" [arg "w" int];
    dynamic "setFixedHeight" [arg "h" int];
    dynamic "mapToGlobal" [arg "pos" qPoint] ~ret:qPoint;
    dynamic "mapFromGlobal" [arg "pos" qPoint] ~ret:qPoint;
    dynamic "mapToParent" [arg "pos" qPoint] ~ret:qPoint;
    dynamic "mapFromParent" [arg "pos" qPoint] ~ret:qPoint;
    dynamic "mapTo" [arg "parent" qWidget;arg "pos" qPoint] ~ret:qPoint;
    dynamic "mapFrom" [arg "parent" qWidget;arg "pos" qPoint] ~ret:qPoint;
    dynamic "window" [] ~ret:(optional qWidget);
    dynamic "nativeParentWidget" [] ~ret:(optional qWidget);
    dynamic "topLevelWidget" [] ~ret:qWidget;
    (*dynamic "palette" [] ~ret:qPalette;*)
    (*dynamic "setPalette" [arg "arg0" qPalette];*)
    (*dynamic "setBackgroundRole" [arg "role" qPalette'ColorRole];*)
    (*dynamic "backgroundRole" [] ~ret:qPalette'ColorRole;*)
    (*dynamic "setForegroundRole" [arg "role" qPalette'ColorRole];*)
    (*dynamic "foregroundRole" [] ~ret:qPalette'ColorRole;*)
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "arg0" qFont];
    dynamic "fontMetrics" [] ~ret:qFontMetrics;
    (*dynamic "fontInfo" [] ~ret:qFontInfo;*)
    (*dynamic "cursor" [] ~ret:qCursor;*)
    (*dynamic "setCursor" [arg "arg0" qCursor];*)
    dynamic "unsetCursor" [];
    dynamic "setMouseTracking" [arg "enable" bool];
    dynamic "hasMouseTracking" [] ~ret:bool;
    dynamic "underMouse" [] ~ret:bool;
    dynamic "setTabletTracking" [arg "enable" bool];
    dynamic "hasTabletTracking" [] ~ret:bool;
    dynamic "setMask" [arg "bitmap" qBitmap];
    dynamic "setMask" [arg "region" qRegion];
    dynamic "mask" [] ~ret:qRegion;
    dynamic "clearMask" [];
    (*dynamic "render" [arg "target" qPaintDevice;arg "targetOffset" qPoint;arg "sourceRegion" qRegion;arg "renderFlags" renderFlags];*)
    (*dynamic "render" [arg "painter" qPainter;arg "targetOffset" qPoint;arg "sourceRegion" qRegion;arg "renderFlags" renderFlags];*)
    (*dynamic "grab" [arg "rectangle" qRect] ~ret:qPixmap;*)
    (*dynamic "graphicsEffect" [] ~ret:qGraphicsEffect;*)
    (*dynamic "setGraphicsEffect" [arg "effect" qGraphicsEffect];*)
    (*dynamic "grabGesture" [arg "gesture" qt'GestureType;arg "flags" qt'GestureFlags];*)
    (*dynamic "ungrabGesture" [arg "gesture" qt'GestureType];*)
    dynamic "setWindowTitle" [arg "arg0" qString];
    dynamic "setStyleSheet" [arg "styleSheet" qString];
    dynamic "styleSheet" [] ~ret:qString;
    dynamic "windowTitle" [] ~ret:qString;
    dynamic "setWindowIcon" [arg "icon" qIcon];
    dynamic "windowIcon" [] ~ret:qIcon;
    dynamic "setWindowIconText" [arg "arg0" qString];
    dynamic "windowIconText" [] ~ret:qString;
    dynamic "setWindowRole" [arg "role" qString];
    dynamic "windowRole" [] ~ret:qString;
    dynamic "setWindowFilePath" [arg "filePath" qString];
    dynamic "windowFilePath" [] ~ret:qString;
    dynamic "setWindowOpacity" [arg "level" qreal];
    dynamic "windowOpacity" [] ~ret:qreal;
    dynamic "isWindowModified" [] ~ret:bool;
    dynamic "setToolTip" [arg "arg0" qString];
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setToolTipDuration" [arg "msec" int];
    dynamic "toolTipDuration" [] ~ret:int;
    dynamic "setStatusTip" [arg "arg0" qString];
    dynamic "statusTip" [] ~ret:qString;
    dynamic "setWhatsThis" [arg "arg0" qString];
    dynamic "whatsThis" [] ~ret:qString;
    dynamic "accessibleName" [] ~ret:qString;
    dynamic "setAccessibleName" [arg "name" qString];
    dynamic "accessibleDescription" [] ~ret:qString;
    dynamic "setAccessibleDescription" [arg "description" qString];
    (*dynamic "setLayoutDirection" [arg "direction" qt'LayoutDirection];*)
    (*dynamic "layoutDirection" [] ~ret:qt'LayoutDirection;*)
    dynamic "unsetLayoutDirection" [];
    (*dynamic "setLocale" [arg "locale" qLocale];*)
    (*dynamic "locale" [] ~ret:qLocale;*)
    dynamic "unsetLocale" [];
    dynamic "setFocus" [];
    dynamic "isActiveWindow" [] ~ret:bool;
    dynamic "activateWindow" [];
    dynamic "clearFocus" [];
    (*dynamic "setFocus" [arg "reason" qt'FocusReason];*)
    (*dynamic "focusPolicy" [] ~ret:qt'FocusPolicy;*)
    (*dynamic "setFocusPolicy" [arg "policy" qt'FocusPolicy];*)
    dynamic "hasFocus" [] ~ret:bool;
    static  "setTabOrder" [arg "first" qWidget;arg "second" qWidget];
    dynamic "setFocusProxy" [arg "w" qWidget];
    dynamic "focusProxy" [] ~ret:(optional qWidget);
    (*dynamic "contextMenuPolicy" [] ~ret:qt'ContextMenuPolicy;*)
    (*dynamic "setContextMenuPolicy" [arg "policy" qt'ContextMenuPolicy];*)
    dynamic "grabMouse" [];
    (*dynamic "grabMouse" [arg "cursor" qCursor];*)
    dynamic "releaseMouse" [];
    dynamic "grabKeyboard" [];
    dynamic "releaseKeyboard" [];
    (*dynamic "grabShortcut" [arg "key" qKeySequence;arg "context" qt'ShortcutContext] ~ret:int;*)
    dynamic "releaseShortcut" [arg "id" int];
    dynamic "setShortcutEnabled" [arg "id" int;arg "enable" bool];
    dynamic "setShortcutAutoRepeat" [arg "id" int;arg "enable" bool];
    static  "mouseGrabber" [] ~ret:(optional qWidget);
    static  "keyboardGrabber" [] ~ret:(optional qWidget);
    dynamic "updatesEnabled" [] ~ret:bool;
    dynamic "setUpdatesEnabled" [arg "enable" bool];
    (*dynamic "graphicsProxyWidget" [] ~ret:qGraphicsProxyWidget;*)
    dynamic "update" [];
    dynamic "repaint" [];
    dynamic "update" [arg "x" int;arg "y" int;arg "w" int;arg "h" int];
    dynamic "update" [arg "rect" qRect];
    dynamic "update" [arg "rgn" qRegion];
    dynamic "repaint" [arg "x" int;arg "y" int;arg "w" int;arg "h" int];
    dynamic "repaint" [arg "rect" qRect];
    dynamic "repaint" [arg "rgn" qRegion];
    dynamic "setVisible" [arg "visible" bool];
    dynamic "setHidden" [arg "hidden" bool];
    dynamic "show" [];
    dynamic "hide" [];
    dynamic "showMinimized" [];
    dynamic "showMaximized" [];
    dynamic "showFullScreen" [];
    dynamic "showNormal" [];
    dynamic "close" [] ~ret:bool;
    dynamic "raise" [];
    dynamic "lower" [];
    dynamic "stackUnder" [arg "w" qWidget];
    dynamic "move" [arg "x" int;arg "y" int];
    dynamic "move" [arg "arg0" qPoint];
    dynamic "resize" [arg "w" int;arg "h" int];
    dynamic "resize" [arg "arg0" qSize];
    dynamic "setGeometry" [arg "x" int;arg "y" int;arg "w" int;arg "h" int];
    dynamic "setGeometry" [arg "arg0" qRect];
    (*dynamic "saveGeometry" [] ~ret:qByteArray;*)
    (*dynamic "restoreGeometry" [arg "geometry" qByteArray] ~ret:bool;*)
    dynamic "adjustSize" [];
    dynamic "isVisible" [] ~ret:bool;
    dynamic "isVisibleTo" [arg "ancestor" qWidget] ~ret:bool;
    dynamic "isHidden" [] ~ret:bool;
    dynamic "isMinimized" [] ~ret:bool;
    dynamic "isMaximized" [] ~ret:bool;
    dynamic "isFullScreen" [] ~ret:bool;
    (*dynamic "windowState" [] ~ret:qt'WindowStates;*)
    (*dynamic "setWindowState" [arg "windowState" qt'WindowStates];*)
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSizeHint" [] ~ret:qSize;
    (*dynamic "sizePolicy" [] ~ret:qSizePolicy;*)
    (*dynamic "setSizePolicy" [arg "arg0" qSizePolicy];*)
    (*dynamic "setSizePolicy" [arg "horizontal" qSizePolicy'Policy;arg "vertical" qSizePolicy'Policy];*)
    dynamic "heightForWidth" [arg "w" int] ~ret:int;
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "visibleRegion" [] ~ret:qRegion;
    dynamic "setContentsMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];
    (*dynamic "setContentsMargins" [arg "margins" qMargins];*)
    (*dynamic "getContentsMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];*)
    (*dynamic "contentsMargins" [] ~ret:qMargins;*)
    dynamic "contentsRect" [] ~ret:qRect;
    dynamic "layout" [] ~ret:(optional qLayout);
    dynamic "setLayout" [opt "layout" qLayout];
    dynamic "updateGeometry" [];
    dynamic "setParent" [opt "parent" qWidget];
    (*dynamic "setParent" [arg "parent" qWidget;arg "f" qt'WindowFlags];*)
    dynamic "scroll" [arg "dx" int;arg "dy" int];
    dynamic "scroll" [arg "dx" int;arg "dy" int;arg "r" qRect];
    dynamic "focusWidget" [] ~ret:(optional qWidget);
    dynamic "nextInFocusChain" [] ~ret:(optional qWidget);
    dynamic "previousInFocusChain" [] ~ret:(optional qWidget);
    dynamic "acceptDrops" [] ~ret:bool;
    dynamic "setAcceptDrops" [arg "on" bool];
    (*dynamic "addAction" [arg "action" qAction];*)
    (*dynamic "addActions" [arg "actions" qList<QAction *>];*)
    (*dynamic "insertActions" [arg "before" qAction;arg "actions" qList<QAction *>];*)
    (*dynamic "insertAction" [arg "before" qAction;arg "action" qAction];*)
    (*dynamic "removeAction" [arg "action" qAction];*)
    (*dynamic "actions" [] ~ret:qList<QAction *>;*)
    dynamic "parentWidget" [] ~ret:(optional qWidget);
    (*dynamic "setWindowFlags" [arg "type" qt'WindowFlags];*)
    (*dynamic "windowFlags" [] ~ret:qt'WindowFlags;*)
    (*dynamic "setWindowFlag" [arg "flag" qt'WindowType;arg "on" bool];*)
    (*dynamic "overrideWindowFlags" [arg "flags" qt'WindowFlags];*)
    (*dynamic "windowType" [] ~ret:qt'WindowType;*)
    (*static  "find" [arg "id" wId] ~ret:(optional qWidget);*)
    dynamic "childAt" [arg "x" int;arg "y" int] ~ret:(optional qWidget);
    dynamic "childAt" [arg "p" qPoint] ~ret:(optional qWidget);
    (*dynamic "setAttribute" [arg "attribute" qt'WidgetAttribute;arg "on" bool];*)
    (*dynamic "testAttribute" [arg "attribute" qt'WidgetAttribute] ~ret:bool;*)
    (*dynamic "paintEngine" [] ~ret:qPaintEngine;*)
    dynamic "ensurePolished" [];
    dynamic "isAncestorOf" [arg "child" qWidget] ~ret:bool;
    (*dynamic "hasEditFocus" [] ~ret:bool;*)
    (*dynamic "setEditFocus" [arg "enable" bool];*)
    dynamic "autoFillBackground" [] ~ret:bool;
    dynamic "setAutoFillBackground" [arg "enabled" bool];
    (*dynamic "backingStore" [] ~ret:qBackingStore;*)
    (*dynamic "windowHandle" [] ~ret:qWindow;*)
    (*static  "createWindowContainer" [arg "window" qWindow;arg "parent" qWidget;arg "flags" qt'WindowFlags] ~ret:qWidget;*)
    dynamic "windowTitleChanged" [arg "title" qString];
    (*dynamic "windowIconChanged" [arg "icon" qIcon];*)
    dynamic "windowIconTextChanged" [arg "iconText" qString];
    dynamic "customContextMenuRequested" [arg "pos" qPoint];
    (*dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;*)
    (*dynamic "inputMethodHints" [] ~ret:qt'InputMethodHints;*)
    (*dynamic "setInputMethodHints" [arg "hints" qt'InputMethodHints];*)

    signal "customContextMenuRequested" [arg "" qPoint];
    signal "windowIconChanged" [arg "" qIcon];
    signal "windowIconTextChanged" [arg "" qString];
    signal "windowTitleChanged" [arg "" qString];
    slot "close" [];
    slot "hide" [];
    slot "lower" [];
    slot "_q_showIfNotHidden" [];
    slot "raise" [];
    slot "repaint" [];
    slot "setDisabled" [arg "" bool];
    slot "setEnabled" [arg "" bool];
    slot "setFocus" [];
    slot "setHidden" [arg "" bool];
    slot "setStyleSheet" [arg "" qString];
    slot "setVisible" [arg "" bool];
    slot "setWindowModified" [arg "" bool];
    slot "setWindowTitle" [arg "" qString];
    slot "show" [];
    slot "showFullScreen" [];
    slot "showMaximized" [];
    slot "showMinimized" [];
    slot "showNormal" [];
    slot "update" [];
    slot ~protected "updateMicroFocus" [];
  ]

let () = with_class qAbstractButton [
    dynamic "setText" [arg "text" qString];
    dynamic "text" [] ~ret:qString;
    (*dynamic "setIcon" [arg "icon" qIcon];*)
    (*dynamic "icon" [] ~ret:qIcon;*)
    dynamic "iconSize" [] ~ret:qSize;
    (*dynamic "setShortcut" [arg "key" qKeySequence];*)
    (*dynamic "shortcut" [] ~ret:qKeySequence;*)
    dynamic "setCheckable" [arg "arg0" bool];
    dynamic "isCheckable" [] ~ret:bool;
    dynamic "isChecked" [] ~ret:bool;
    dynamic "setDown" [arg "arg0" bool];
    dynamic "isDown" [] ~ret:bool;
    dynamic "setAutoRepeat" [arg "arg0" bool];
    dynamic "autoRepeat" [] ~ret:bool;
    dynamic "setAutoRepeatDelay" [arg "arg0" int];
    dynamic "autoRepeatDelay" [] ~ret:int;
    dynamic "setAutoRepeatInterval" [arg "arg0" int];
    dynamic "autoRepeatInterval" [] ~ret:int;
    dynamic "setAutoExclusive" [arg "arg0" bool];
    dynamic "autoExclusive" [] ~ret:bool;
    (*dynamic "group" [] ~ret:qButtonGroup;*)
    dynamic "setIconSize" [arg "size" qSize];
    dynamic "animateClick" [arg "msec" int];
    dynamic "click" [];
    dynamic "toggle" [];
    dynamic "setChecked" [arg "arg0" bool];
    dynamic "pressed" [];
    dynamic "released" [];
    dynamic "clicked" [arg "checked" bool];
    dynamic "toggled" [arg "checked" bool];
    slot "animateClick" [];
    slot "animateClick" [arg "" int];
    slot "click" [];
    slot "setChecked" [arg "" bool];
    slot "setIconSize" [arg "" qSize];
    slot "toggle" [];
    (*signal "clicked" [];*)
    signal "clicked" [arg "" bool];
    signal "pressed" [];
    signal "released" [];
    signal "toggled" [arg "" bool];
  ]

let () = with_class qPushButton [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
    (*constructor "" [arg "icon" qIcon;arg "text" qString;opt "parent" qWidget];*)
    dynamic "autoDefault" [] ~ret:bool;
    dynamic "setAutoDefault" [arg "arg0" bool];
    dynamic "isDefault" [] ~ret:bool;
    dynamic "setDefault" [arg "arg0" bool];
    dynamic "setMenu" [arg "menu" qMenu];
    dynamic "menu" [] ~ret:qMenu;
    dynamic "setFlat" [arg "arg0" bool];
    dynamic "isFlat" [] ~ret:bool;
    dynamic "showMenu" [];
    slot "_q_popupPressed" [];
    slot "showMenu" [];
  ]

let () = with_class qGroupBox [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "title" qString;opt "parent" qWidget];
    dynamic "title" [] ~ret:qString;
    dynamic "setTitle" [arg "title" qString];
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "alignment" int];
    dynamic "isFlat" [] ~ret:bool;
    dynamic "setFlat" [arg "flat" bool];
    dynamic "isCheckable" [] ~ret:bool;
    dynamic "setCheckable" [arg "checkable" bool];
    dynamic "isChecked" [] ~ret:bool;
    dynamic "setChecked" [arg "checked" bool];
    dynamic "clicked" [arg "checked" bool];
    dynamic "toggled" [arg "on" bool];
    slot "_q_setChildrenEnabled" [arg "" bool];
    slot "setChecked" [arg "" bool];
    (*signal "clicked" [];*)
    signal "clicked" [arg "" bool];
    signal "toggled" [arg "" bool];
  ]

let () = with_class qMenu [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "title" qString;opt "parent" qWidget];
    dynamic "addAction" [arg "text" qString] ~ret:qAction;
    dynamic "addAction" [arg "icon" qIcon;arg "text" qString] ~ret:qAction;
    (*dynamic "addAction" [arg "text" qString;arg "receiver" qObject;arg "member" char;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "receiver" qObject;arg "member" char;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "receiver" qObject;arg "method" pointerToMemberFunction;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "functor" functor;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "context" qObject;arg "functor" functor;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "receiver" qObject;arg "method" pointerToMemberFunction;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "functor" functor;arg "shortcut" qKeySequence] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "context" qObject;arg "functor" functor;arg "shortcut" qKeySequence] ~ret:qAction;*)
    dynamic "addMenu" [arg "menu" qMenu] ~ret:qAction;
    dynamic "addMenu" [arg "title" qString] ~ret:qMenu;
    dynamic "addMenu" [arg "icon" qIcon;arg "title" qString] ~ret:qMenu;
    dynamic "addSeparator" [] ~ret:qAction;
    dynamic "addSection" [arg "text" qString] ~ret:qAction;
    dynamic "addSection" [arg "icon" qIcon;arg "text" qString] ~ret:qAction;
    dynamic "insertMenu" [arg "before" qAction;arg "menu" qMenu] ~ret:qAction;
    dynamic "insertSeparator" [arg "before" qAction] ~ret:qAction;
    dynamic "insertSection" [arg "before" qAction;arg "text" qString] ~ret:qAction;
    dynamic "insertSection" [arg "before" qAction;arg "icon" qIcon;arg "text" qString] ~ret:qAction;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "clear" [];
    dynamic "setTearOffEnabled" [arg "arg0" bool];
    dynamic "isTearOffEnabled" [] ~ret:bool;
    dynamic "isTearOffMenuVisible" [] ~ret:bool;
    dynamic "showTearOffMenu" [];
    dynamic "showTearOffMenu" [arg "pos" qPoint];
    dynamic "hideTearOffMenu" [];
    dynamic "setDefaultAction" [arg "act" qAction];
    dynamic "defaultAction" [] ~ret:qAction;
    dynamic "setActiveAction" [arg "act" qAction];
    dynamic "activeAction" [] ~ret:qAction;
    dynamic "popup" [arg "p" qPoint;arg "atAction" qAction];
    dynamic "exec" [] ~ret:qAction;
    dynamic "exec" [arg "p" qPoint;arg "action" qAction] ~ret:qAction;
    (*static  "exec" [arg "actions" qList<QAction *>;arg "pos" qPoint;arg "at" qAction;arg "parent" qWidget] ~ret:qAction;*)
    dynamic "actionGeometry" [arg "act" qAction] ~ret:qRect;
    dynamic "actionAt" [arg "pt" qPoint] ~ret:qAction;
    dynamic "menuAction" [] ~ret:qAction;
    dynamic "title" [] ~ret:qString;
    dynamic "setTitle" [arg "title" qString];
    dynamic "icon" [] ~ret:qIcon;
    dynamic "setIcon" [arg "icon" qIcon];
    (*dynamic "toNSMenu" [] ~ret:nSMenu;*)
    (*dynamic "setAsDockMenu" [];*)
    dynamic "separatorsCollapsible" [] ~ret:bool;
    dynamic "setSeparatorsCollapsible" [arg "collapse" bool];
    dynamic "toolTipsVisible" [] ~ret:bool;
    dynamic "setToolTipsVisible" [arg "visible" bool];
    dynamic "aboutToShow" [];
    dynamic "aboutToHide" [];
    dynamic "triggered" [arg "action" qAction];
    dynamic "hovered" [arg "action" qAction];
    slot ~protected "internalDelayedPopup" [];
    slot "_q_actionHovered" [];
    slot "_q_actionTriggered" [];
    slot "_q_overrideMenuActionDestroyed" [];
    slot "_q_platformMenuAboutToShow" [];
    signal "aboutToHide" [];
    signal "aboutToShow" [];
    signal "hovered" [arg "" qAction];
    signal "triggered" [arg "" qAction];
  ]

let () = with_class qMenuBar [
    constructor "" [opt "parent" qWidget];
    dynamic "addAction" [arg "text" qString] ~ret:qAction;
    (*dynamic "addAction" [arg "text" qString;arg "receiver" qObject;arg "member" char] ~ret:qAction;*)
    dynamic "addMenu" [arg "menu" qMenu] ~ret:qAction;
    dynamic "addMenu" [arg "title" qString] ~ret:qMenu;
    dynamic "addMenu" [arg "icon" qIcon;arg "title" qString] ~ret:qMenu;
    dynamic "addSeparator" [] ~ret:qAction;
    dynamic "insertSeparator" [arg "before" qAction] ~ret:qAction;
    dynamic "insertMenu" [arg "before" qAction;arg "menu" qMenu] ~ret:qAction;
    dynamic "clear" [];
    dynamic "activeAction" [] ~ret:qAction;
    dynamic "setActiveAction" [arg "act" qAction];
    dynamic "setDefaultUp" [arg "arg0" bool];
    dynamic "isDefaultUp" [] ~ret:bool;
    dynamic "actionGeometry" [arg "act" qAction] ~ret:qRect;
    dynamic "actionAt" [arg "pt" qPoint] ~ret:qAction;
    dynamic "setCornerWidget" [arg "widget" qWidget;arg "corner" qt'Corner];
    dynamic "cornerWidget" [arg "corner" qt'Corner] ~ret:(optional qWidget);
    (*dynamic "toNSMenu" [] ~ret:nSMenu;*)
    dynamic "isNativeMenuBar" [] ~ret:bool;
    dynamic "setNativeMenuBar" [arg "nativeMenuBar" bool];
    dynamic "triggered" [arg "action" qAction];
    dynamic "hovered" [arg "action" qAction];
    slot "_q_actionHovered" [];
    slot "_q_actionTriggered" [];
    slot "_q_internalShortcutActivated" [arg "" int];
    slot "_q_updateLayout" [];
    signal "hovered" [arg "" qAction];
    signal "triggered" [arg "" qAction];
  ]

let () = with_class qGridLayout [
    constructor "" [opt "parent" qWidget];
    constructor "" [];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "setHorizontalSpacing" [arg "spacing" int];
    dynamic "horizontalSpacing" [] ~ret:int;
    dynamic "setVerticalSpacing" [arg "spacing" int];
    dynamic "verticalSpacing" [] ~ret:int;
    dynamic "setSpacing" [arg "spacing" int];
    dynamic "spacing" [] ~ret:int;
    dynamic "setRowStretch" [arg "row" int;arg "stretch" int];
    dynamic "setColumnStretch" [arg "column" int;arg "stretch" int];
    dynamic "rowStretch" [arg "row" int] ~ret:int;
    dynamic "columnStretch" [arg "column" int] ~ret:int;
    dynamic "setRowMinimumHeight" [arg "row" int;arg "minSize" int];
    dynamic "setColumnMinimumWidth" [arg "column" int;arg "minSize" int];
    dynamic "rowMinimumHeight" [arg "row" int] ~ret:int;
    dynamic "columnMinimumWidth" [arg "column" int] ~ret:int;
    dynamic "columnCount" [] ~ret:int;
    dynamic "rowCount" [] ~ret:int;
    dynamic "cellRect" [arg "row" int;arg "column" int] ~ret:qRect;
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "w" int] ~ret:int;
    dynamic "minimumHeightForWidth" [arg "w" int] ~ret:int;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "invalidate" [];
    dynamic "addWidget" [arg "widget" qWidget;arg "row" int;arg "column" int;arg "alignment" qt'Alignment];
    dynamic "addWidget" [arg "widget" qWidget;arg "fromRow" int;arg "fromColumn" int;arg "rowSpan" int;arg "columnSpan" int;arg "alignment" qt'Alignment];
    dynamic "addLayout" [arg "layout" qLayout;arg "row" int;arg "column" int;arg "alignment" qt'Alignment];
    dynamic "addLayout" [arg "layout" qLayout;arg "row" int;arg "column" int;arg "rowSpan" int;arg "columnSpan" int;arg "alignment" qt'Alignment];
    dynamic "setOriginCorner" [arg "corner" qt'Corner];
    dynamic "originCorner" [] ~ret:qt'Corner;
    (*dynamic "itemAt" [arg "index" int] ~ret:qLayoutItem;*)
    (*dynamic "itemAtPosition" [arg "row" int;arg "column" int] ~ret:qLayoutItem;*)
    (*dynamic "takeAt" [arg "index" int] ~ret:qLayoutItem;*)
    dynamic "count" [] ~ret:int;
    dynamic "setGeometry" [arg "rect" qRect];
    (*dynamic "addItem" [arg "item" qLayoutItem;arg "row" int;arg "column" int;arg "rowSpan" int;arg "columnSpan" int;arg "alignment" qt'Alignment];*)
    (*dynamic "getItemPosition" [arg "index" int;arg "row" int;arg "column" int;arg "rowSpan" int;arg "columnSpan" int];*)
  ]

let () = with_class qFormLayout [
    constructor "" [opt "parent" qWidget];
    dynamic "setFieldGrowthPolicy" [arg "policy" qFormLayout'FieldGrowthPolicy];
    dynamic "fieldGrowthPolicy" [] ~ret:qFormLayout'FieldGrowthPolicy;
    dynamic "setRowWrapPolicy" [arg "policy" qFormLayout'RowWrapPolicy];
    dynamic "rowWrapPolicy" [] ~ret:qFormLayout'RowWrapPolicy;
    dynamic "setLabelAlignment" [arg "alignment" qt'Alignment];
    dynamic "labelAlignment" [] ~ret:qt'Alignment;
    dynamic "setFormAlignment" [arg "alignment" qt'Alignment];
    dynamic "formAlignment" [] ~ret:qt'Alignment;
    dynamic "setHorizontalSpacing" [arg "spacing" int];
    dynamic "horizontalSpacing" [] ~ret:int;
    dynamic "setVerticalSpacing" [arg "spacing" int];
    dynamic "verticalSpacing" [] ~ret:int;
    dynamic "spacing" [] ~ret:int;
    dynamic "setSpacing" [arg "spacing" int];
    dynamic "addRow" [arg "label" qWidget;arg "field" qWidget];
    dynamic "addRow" [arg "label" qWidget;arg "field" qLayout];
    dynamic "addRow" [arg "labelText" qString;arg "field" qWidget];
    dynamic "addRow" [arg "labelText" qString;arg "field" qLayout];
    dynamic "addRow" [arg "widget" qWidget];
    dynamic "addRow" [arg "layout" qLayout];
    dynamic "insertRow" [arg "row" int;arg "label" qWidget;arg "field" qWidget];
    dynamic "insertRow" [arg "row" int;arg "label" qWidget;arg "field" qLayout];
    dynamic "insertRow" [arg "row" int;arg "labelText" qString;arg "field" qWidget];
    dynamic "insertRow" [arg "row" int;arg "labelText" qString;arg "field" qLayout];
    dynamic "insertRow" [arg "row" int;arg "widget" qWidget];
    dynamic "insertRow" [arg "row" int;arg "layout" qLayout];
    dynamic "removeRow" [arg "row" int];
    dynamic "removeRow" [arg "widget" qWidget];
    dynamic "removeRow" [arg "layout" qLayout];
    (*dynamic "takeRow" [arg "row" int] ~ret:qFormLayout'TakeRowResult;*)
    (*dynamic "takeRow" [arg "widget" qWidget] ~ret:qFormLayout'TakeRowResult;*)
    (*dynamic "takeRow" [arg "layout" qLayout] ~ret:qFormLayout'TakeRowResult;*)
    (*dynamic "setItem" [arg "row" int;arg "role" qFormLayout'ItemRole;arg "item" qLayoutItem];*)
    dynamic "setWidget" [arg "row" int;arg "role" qFormLayout'ItemRole;opt "widget" qWidget];
    dynamic "setLayout" [arg "row" int;arg "role" qFormLayout'ItemRole;opt "layout" qLayout];
    (*dynamic "itemAt" [arg "row" int;arg "role" qFormLayout'ItemRole] ~ret:qLayoutItem;*)
    (*dynamic "getItemPosition" [arg "index" int;arg "rowPtr" int;arg "rolePtr" qFormLayout'ItemRole];*)
    (*dynamic "getWidgetPosition" [arg "widget" qWidget;arg "rowPtr" int;arg "rolePtr" qFormLayout'ItemRole];*)
    (*dynamic "getLayoutPosition" [arg "layout" qLayout;arg "rowPtr" int;arg "rolePtr" qFormLayout'ItemRole];*)
    dynamic "labelForField" [arg "field" qWidget] ~ret:(optional qWidget);
    dynamic "labelForField" [arg "field" qLayout] ~ret:(optional qWidget);
    (*dynamic "addItem" [arg "item" qLayoutItem];*)
    (*dynamic "itemAt" [arg "index" int] ~ret:qLayoutItem;*)
    (*dynamic "takeAt" [arg "index" int] ~ret:qLayoutItem;*)
    dynamic "setGeometry" [arg "rect" qRect];
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "invalidate" [];
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "width" int] ~ret:int;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "count" [] ~ret:int;
    dynamic "rowCount" [] ~ret:int;
  ]

let () = with_class qTextEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
    dynamic "acceptRichText" [] ~ret:bool;
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "anchorAt" [arg "pos" qPoint] ~ret:qString;
    slot "append" [arg "" qString];
    dynamic "autoFormatting" [] ~ret:qTextEdit'AutoFormatting;
    dynamic "canPaste" [] ~ret:bool;
    slot "clear" [];
    slot "copy" [];
    dynamic "copyAvailable" [arg "yes" bool];
    signal "copyAvailable" [arg "" bool];
    dynamic "createStandardContextMenu" [arg "position" qPoint] ~ret:qMenu;
    dynamic "createStandardContextMenu" [] ~ret:qMenu;
    (*dynamic "currentCharFormatChanged" [arg "f" qTextCharFormat];*)
    (*signal "currentCharFormatChanged" [arg "" qTextCharFormat];*)
    (*dynamic "currentCharFormat" [] ~ret:qTextCharFormat;*)
    dynamic "currentFont" [] ~ret:qFont;
    (*dynamic "cursorForPosition" [arg "pos" qPoint] ~ret:qTextCursor;*)
    dynamic "cursorPositionChanged" [];
    signal "cursorPositionChanged" [];
    (*dynamic "cursorRect" [arg "cursor" qTextCursor] ~ret:qRect;*)
    dynamic "cursorRect" [] ~ret:qRect;
    dynamic "cursorWidth" [] ~ret:int;
    slot "cut" [];
    dynamic "document" [] ~ret:qTextDocument;
    dynamic "documentTitle" [] ~ret:qString;
    dynamic "ensureCursorVisible" [];
    dynamic "extraSelections" [] ~ret:qTextEdit'ExtraSelection'List;
    (*dynamic "find" [arg "exp" qRegExp;arg "options" qTextDocument'FindFlags] ~ret:bool;*)
    dynamic "find" [arg "exp" qString;arg "options" qTextDocument'FindFlags] ~ret:bool;
    dynamic "fontFamily" [] ~ret:qString;
    dynamic "fontItalic" [] ~ret:bool;
    dynamic "fontPointSize" [] ~ret:qreal;
    dynamic "fontUnderline" [] ~ret:bool;
    dynamic "fontWeight" [] ~ret:int;
    (*dynamic "inputMethodQuery" [arg "property" qt'InputMethodQuery] ~ret:qVariant;*)
    slot "insertHtml" [arg "" qString];
    slot "insertPlainText" [arg "" qString];
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "isUndoRedoEnabled" [] ~ret:bool;
    dynamic "lineWrapColumnOrWidth" [] ~ret:int;
    dynamic "lineWrapMode" [] ~ret:qTextEdit'LineWrapMode;
    dynamic "loadResource" [arg "type" int;arg "name" qUrl] ~ret:qVariant;
    (*dynamic "mergeCurrentCharFormat" [arg "modifier" qTextCharFormat];*)
    dynamic "moveCursor" [arg "operation" qTextCursor'MoveOperation;arg "mode" qTextCursor'MoveMode];
    dynamic "overwriteMode" [] ~ret:bool;
    slot "paste" [];
    dynamic "placeholderText" [] ~ret:qString;
    (*dynamic "print" [arg "printer" qPagedPaintDevice];*)
    slot "_q_adjustScrollbars" [];
    (*slot "_q_currentCharFormatChanged" [arg "" qTextCharFormat];*)
    slot "_q_cursorPositionChanged" [];
    slot "_q_ensureVisible" [arg "" qRectF];
    slot "_q_repaintContents" [arg "" qRectF];
    slot "redo" [];
    signal "redoAvailable" [arg "" bool];
    slot "scrollToAnchor" [arg "" qString];
    slot "selectAll" [];
    dynamic "selectionChanged" [];
    signal "selectionChanged" [];
    dynamic "setAcceptRichText" [arg "accept" bool];
    slot "setAlignment" [arg "" qt'Alignment];
    dynamic "setAutoFormatting" [arg "features" qTextEdit'AutoFormatting];
    (*dynamic "setCurrentCharFormat" [arg "format" qTextCharFormat];*)
    slot "setCurrentFont" [arg "" qFont];
    dynamic "setCursorWidth" [arg "width" int];
    dynamic "setDocument" [arg "document" qTextDocument];
    dynamic "setDocumentTitle" [arg "title" qString];
    dynamic "setExtraSelections" [arg "selections" qTextEdit'ExtraSelection'List];
    slot "setFontFamily" [arg "" qString];
    slot "setFontItalic" [arg "" bool];
    slot "setFontPointSize" [arg "" double];
    slot "setFontUnderline" [arg "" bool];
    slot "setFontWeight" [arg "" int];
    slot "setHtml" [arg "" qString];
    dynamic "setLineWrapColumnOrWidth" [arg "w" int];
    dynamic "setLineWrapMode" [arg "mode" qTextEdit'LineWrapMode];
    dynamic "setOverwriteMode" [arg "overwrite" bool];
    dynamic "setPlaceholderText" [arg "placeholderText" qString];
    slot "setPlainText" [arg "" qString];
    dynamic "setReadOnly" [arg "ro" bool];
    dynamic "setTabChangesFocus" [arg "b" bool];
    dynamic "setTabStopWidth" [arg "width" int];
    slot "setTextBackgroundColor" [arg "" qColor];
    slot "setTextColor" [arg "" qColor];
    (*dynamic "setTextCursor" [arg "cursor" qTextCursor];*)
    dynamic "setTextInteractionFlags" [arg "flags" qt'TextInteractionFlags];
    slot "setText" [arg "" qString];
    dynamic "setUndoRedoEnabled" [arg "enable" bool];
    dynamic "setWordWrapMode" [arg "policy" qTextOption'WrapMode];
    dynamic "tabChangesFocus" [] ~ret:bool;
    dynamic "tabStopWidth" [] ~ret:int;
    dynamic "textBackgroundColor" [] ~ret:qColor;
    dynamic "textChanged" [];
    signal "textChanged" [];
    dynamic "textColor" [] ~ret:qColor;
    (*dynamic "textCursor" [] ~ret:qTextCursor;*)
    dynamic "textInteractionFlags" [] ~ret:qt'TextInteractionFlags;
    dynamic "toHtml" [] ~ret:qString;
    dynamic "toPlainText" [] ~ret:qString;
    slot "undo" [];
    dynamic "undoAvailable" [arg "available" bool];
    signal "undoAvailable" [arg "" bool];
    dynamic "wordWrapMode" [] ~ret:qTextOption'WrapMode;
    slot "zoomIn" [];
    slot "zoomIn" [arg "" int];
    slot "zoomOut" [];
    slot "zoomOut" [arg "" int];
  ]

let () = with_class qLineEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "contents" qString;opt "parent" qWidget];
    dynamic "addAction" [arg "action" qAction;arg "position" qLineEdit'ActionPosition];
    dynamic "addAction" [arg "icon" qIcon;arg "position" qLineEdit'ActionPosition] ~ret:qAction;
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "backspace" [];
    slot "clear" [];
    dynamic "completer" [] ~ret:qCompleter;
    slot "copy" [];
    dynamic "createStandardContextMenu" [] ~ret:qMenu;
    dynamic "cursorBackward" [arg "mark" bool;arg "steps" int];
    dynamic "cursorForward" [arg "mark" bool;arg "steps" int];
    dynamic "cursorMoveStyle" [] ~ret:qt'CursorMoveStyle;
    dynamic "cursorPositionAt" [arg "pos" qPoint] ~ret:int;
    dynamic "cursorPositionChanged" [arg "old" int;arg "new" int];
    signal "cursorPositionChanged" [arg "" int;arg "" int];
    dynamic "cursorPosition" [] ~ret:int;
    dynamic "cursorWordBackward" [arg "mark" bool];
    dynamic "cursorWordForward" [arg "mark" bool];
    slot "cut" [];
    dynamic "del" [];
    dynamic "deselect" [];
    dynamic "displayText" [] ~ret:qString;
    dynamic "dragEnabled" [] ~ret:bool;
    dynamic "echoMode" [] ~ret:qLineEdit'EchoMode;
    dynamic "editingFinished" [];
    signal "editingFinished" [];
    dynamic "end" [arg "mark" bool];
    dynamic "event" [arg "e" qEvent] ~ret:bool;
    (*dynamic "getTextMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];*)
    dynamic "hasAcceptableInput" [] ~ret:bool;
    dynamic "hasFrame" [] ~ret:bool;
    dynamic "hasSelectedText" [] ~ret:bool;
    dynamic "home" [arg "mark" bool];
    dynamic "inputMask" [] ~ret:qString;
    (*dynamic "inputMethodQuery" [arg "property" qt'InputMethodQuery] ~ret:qVariant;*)
    dynamic "insert" [arg "newText" qString];
    dynamic "isClearButtonEnabled" [] ~ret:bool;
    dynamic "isModified" [] ~ret:bool;
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "isRedoAvailable" [] ~ret:bool;
    dynamic "isUndoAvailable" [] ~ret:bool;
    dynamic "maxLength" [] ~ret:int;
    slot "paste" [];
    dynamic "placeholderText" [] ~ret:qString;
    slot "_q_clearButtonClicked" [];
    slot "_q_completionHighlighted" [arg "" qString];
    slot "_q_cursorPositionChanged" [arg "" int;arg "" int];
    slot "_q_handleWindowActivate" [];
    slot "_q_selectionChanged" [];
    slot "_q_textChanged" [arg "" qString];
    slot "_q_textEdited" [arg "" qString];
    slot "_q_updateNeeded" [arg "" qRect];
    slot "redo" [];
    dynamic "returnPressed" [];
    signal "returnPressed" [];
    slot "selectAll" [];
    dynamic "selectedText" [] ~ret:qString;
    dynamic "selectionChanged" [];
    signal "selectionChanged" [];
    dynamic "selectionStart" [] ~ret:int;
    dynamic "setAlignment" [arg "flag" qt'Alignment];
    dynamic "setClearButtonEnabled" [arg "enable" bool];
    dynamic "setCompleter" [arg "c" qCompleter];
    dynamic "setCursorMoveStyle" [arg "style" qt'CursorMoveStyle];
    dynamic "setCursorPosition" [arg "arg0" int];
    dynamic "setDragEnabled" [arg "b" bool];
    dynamic "setEchoMode" [arg "arg0" qLineEdit'EchoMode];
    dynamic "setFrame" [arg "arg0" bool];
    dynamic "setInputMask" [arg "inputMask" qString];
    dynamic "setMaxLength" [arg "arg0" int];
    dynamic "setModified" [arg "arg0" bool];
    dynamic "setPlaceholderText" [arg "arg0" qString];
    dynamic "setReadOnly" [arg "arg0" bool];
    dynamic "setSelection" [arg "start" int;arg "length" int];
    dynamic "setTextMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];
    (*dynamic "setTextMargins" [arg "margins" qMargins];*)
    slot "setText" [arg "" qString];
    dynamic "setValidator" [arg "v" qValidator];
    dynamic "textChanged" [arg "text" qString];
    signal "textChanged" [arg "" qString];
    dynamic "textEdited" [arg "text" qString];
    signal "textEdited" [arg "" qString];
    (*dynamic "textMargins" [] ~ret:qMargins;*)
    dynamic "text" [] ~ret:qString;
    slot "undo" [];
    dynamic "validator" [] ~ret:qValidator;
  ]

let () = with_class qLabel [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    constructor "" [arg "text" qString;opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "text" [] ~ret:qString;
    (*dynamic "pixmap" [] ~ret:qPixmap;*)
    (*dynamic "picture" [] ~ret:qPicture;*)
    (*dynamic "movie" [] ~ret:qMovie;*)
    dynamic "textFormat" [] ~ret:qt'TextFormat;
    dynamic "setTextFormat" [arg "arg0" qt'TextFormat];
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "arg0" qt'Alignment];
    dynamic "setWordWrap" [arg "on" bool];
    dynamic "wordWrap" [] ~ret:bool;
    dynamic "indent" [] ~ret:int;
    dynamic "setIndent" [arg "arg0" int];
    dynamic "margin" [] ~ret:int;
    dynamic "setMargin" [arg "arg0" int];
    dynamic "hasScaledContents" [] ~ret:bool;
    dynamic "setScaledContents" [arg "arg0" bool];
    dynamic "setBuddy" [arg "buddy" qWidget];
    dynamic "buddy" [] ~ret:(optional qWidget);
    dynamic "openExternalLinks" [] ~ret:bool;
    dynamic "setOpenExternalLinks" [arg "open" bool];
    dynamic "setTextInteractionFlags" [arg "flags" qt'TextInteractionFlags];
    dynamic "textInteractionFlags" [] ~ret:qt'TextInteractionFlags;
    dynamic "setSelection" [arg "start" int;arg "length" int];
    dynamic "hasSelectedText" [] ~ret:bool;
    dynamic "selectedText" [] ~ret:qString;
    dynamic "selectionStart" [] ~ret:int;
    dynamic "setText" [arg "arg0" qString];
    (*dynamic "setPixmap" [arg "arg0" qPixmap];*)
    (*dynamic "setPicture" [arg "picture" qPicture];*)
    dynamic "setMovie" [arg "movie" qMovie];
    dynamic "setNum" [arg "num" int];
    dynamic "setNum" [arg "num" double];
    dynamic "clear" [];
    dynamic "linkActivated" [arg "link" qString];
    dynamic "linkHovered" [arg "link" qString];
    slot "clear" [];
    slot "_q_linkHovered" [arg "" qString];
    slot "_q_movieResized" [arg "" qSize];
    slot "_q_movieUpdated" [arg "" qRect];
    (*  slot "setMovie" [arg "" qMovie];*)
    slot "setNum" [arg "" double];
    slot "setNum" [arg "" int];
    (*slot "setPicture" [arg "" qPicture];*)
    slot "setPixmap" [arg "" qPixmap];
    slot "setText" [arg "" qString];
    signal "linkActivated" [arg "" qString];
    signal "linkHovered" [arg "" qString];
  ]

let () = with_class qBoxLayout [
    constructor "" [arg "dir" qBoxLayout'Direction;opt "parent" qWidget];
    dynamic "direction" [] ~ret:qBoxLayout'Direction;
    dynamic "setDirection" [arg "direction" qBoxLayout'Direction];
    dynamic "addSpacing" [arg "size" int];
    dynamic "addStretch" [arg "stretch" int];
    (*dynamic "addSpacerItem" [arg "spacerItem" qSpacerItem];*)
    dynamic "addWidget" [arg "widget" qWidget;arg "stretch" int;arg "alignment" qt'Alignment];
    dynamic "addLayout" [arg "layout" qLayout;arg "stretch" int];
    dynamic "addStrut" [arg "size" int];
    (*dynamic "addItem" [arg "item" qLayoutItem];*)
    dynamic "insertSpacing" [arg "index" int;arg "size" int];
    dynamic "insertStretch" [arg "index" int;arg "stretch" int];
    (*dynamic "insertSpacerItem" [arg "index" int;arg "spacerItem" qSpacerItem];*)
    dynamic "insertWidget" [arg "index" int;arg "widget" qWidget;arg "stretch" int;arg "alignment" qt'Alignment];
    dynamic "insertLayout" [arg "index" int;arg "layout" qLayout;arg "stretch" int];
    (*dynamic "insertItem" [arg "index" int;arg "item" qLayoutItem];*)
    dynamic "spacing" [] ~ret:int;
    dynamic "setSpacing" [arg "spacing" int];
    dynamic "setStretchFactor" [arg "widget" qWidget;arg "stretch" int] ~ret:bool;
    dynamic "setStretchFactor" [arg "layout" qLayout;arg "stretch" int] ~ret:bool;
    dynamic "setStretch" [arg "index" int;arg "stretch" int];
    dynamic "stretch" [arg "index" int] ~ret:int;
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "w" int] ~ret:int;
    dynamic "minimumHeightForWidth" [arg "w" int] ~ret:int;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "invalidate" [];
    (*dynamic "itemAt" [arg "index" int] ~ret:qLayoutItem;*)
    (*dynamic "takeAt" [arg "index" int] ~ret:qLayoutItem;*)
    dynamic "count" [] ~ret:int;
    dynamic "setGeometry" [arg "r" qRect];
  ]

let () = with_class qHBoxLayout [
    constructor "" [];
    constructor "" [opt "parent" qWidget];
  ]
let () = with_class qVBoxLayout [
    constructor "" [];
    constructor "" [opt "parent" qWidget];
  ]

let () = with_class qLayout [
    (*constructor "" [opt "parent" qWidget];*)
    (*constructor "" [];*)
    dynamic "margin" [] ~ret:int;
    dynamic "spacing" [] ~ret:int;
    dynamic "setMargin" [arg "margin" int];
    dynamic "setSpacing" [arg "arg0" int];
    dynamic "setContentsMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];
    (*dynamic "setContentsMargins" [arg "margins" qMargins];*)
    (*dynamic "getContentsMargins" [arg "left" int;arg "top" int;arg "right" int;arg "bottom" int];*)
    (*dynamic "contentsMargins" [] ~ret:qMargins;*)
    dynamic "contentsRect" [] ~ret:qRect;
    dynamic "setAlignment" [arg "w" qWidget;arg "alignment" qt'Alignment] ~ret:bool;
    dynamic "setAlignment" [arg "l" qLayout;arg "alignment" qt'Alignment] ~ret:bool;
    dynamic "setSizeConstraint" [arg "arg0" qLayout'SizeConstraint];
    dynamic "sizeConstraint" [] ~ret:qLayout'SizeConstraint;
    dynamic "setMenuBar" [arg "widget" qWidget];
    dynamic "menuBar" [] ~ret:(optional qWidget);
    dynamic "parentWidget" [] ~ret:(optional qWidget);
    dynamic "invalidate" [];
    dynamic "geometry" [] ~ret:qRect;
    dynamic "activate" [] ~ret:bool;
    dynamic "update" [];
    dynamic "addWidget" [arg "w" qWidget];
    (*dynamic "addItem" [arg "item" qLayoutItem];*)
    dynamic "removeWidget" [arg "widget" qWidget];
    (*dynamic "removeItem" [arg "item" qLayoutItem];*)
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "setGeometry" [arg "r" qRect];
    (*dynamic "itemAt" [arg "index" int] ~ret:qLayoutItem;*)
    (*dynamic "takeAt" [arg "index" int] ~ret:qLayoutItem;*)
    dynamic "indexOf" [arg "widget" qWidget] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "controlTypes" [] ~ret:qSizePolicy'ControlTypes;
    (*dynamic "replaceWidget" [arg "from" qWidget;arg "to" qWidget;arg "options" qt'FindChildOptions] ~ret:qLayoutItem;*)
    dynamic "layout" [] ~ret:(optional qLayout);
    dynamic "setEnabled" [arg "enable" bool];
    dynamic "isEnabled" [] ~ret:bool;
    static  "closestAcceptableSize" [arg "widget" qWidget;arg "size" qSize] ~ret:qSize;
  ]

let () = with_class qDataWidgetMapper [
    constructor "" [opt "parent" qObject];
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "setItemDelegate" [arg "delegate" qAbstractItemDelegate];
    dynamic "itemDelegate" [] ~ret:qAbstractItemDelegate;
    dynamic "setRootIndex" [arg "index" qModelIndex];
    dynamic "rootIndex" [] ~ret:qModelIndex;
    dynamic "setOrientation" [arg "aOrientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "setSubmitPolicy" [arg "policy" qDataWidgetMapper'SubmitPolicy];
    dynamic "submitPolicy" [] ~ret:qDataWidgetMapper'SubmitPolicy;
    dynamic "addMapping" [arg "widget" qWidget;arg "section" int];
    dynamic "addMapping" [arg "widget" qWidget;arg "section" int;arg "propertyName" qByteArray];
    dynamic "removeMapping" [arg "widget" qWidget];
    dynamic "mappedSection" [arg "widget" qWidget] ~ret:int;
    dynamic "mappedPropertyName" [arg "widget" qWidget] ~ret:qByteArray;
    dynamic "mappedWidgetAt" [arg "section" int] ~ret:(optional qWidget);
    dynamic "clearMapping" [];
    dynamic "currentIndex" [] ~ret:int;
    dynamic "revert" [];
    dynamic "submit" [] ~ret:bool;
    dynamic "toFirst" [];
    dynamic "toLast" [];
    dynamic "toNext" [];
    dynamic "toPrevious" [];
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentModelIndex" [arg "index" qModelIndex];
    dynamic "currentIndexChanged" [arg "index" int];
  ]
let () = with_class qAction [
    constructor "" [opt "parent" qObject];
    constructor "" [arg "text" qString;arg "parent" qObject];
    constructor "" [arg "icon" qIcon;arg "text" qString;arg "parent" qObject];
    dynamic "setActionGroup" [arg "group" qActionGroup];
    dynamic "actionGroup" [] ~ret:qActionGroup;
    dynamic "setIcon" [arg "icon" qIcon];
    dynamic "icon" [] ~ret:qIcon;
    dynamic "setText" [arg "text" qString];
    dynamic "text" [] ~ret:qString;
    dynamic "setIconText" [arg "text" qString];
    dynamic "iconText" [] ~ret:qString;
    dynamic "setToolTip" [arg "tip" qString];
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setStatusTip" [arg "statusTip" qString];
    dynamic "statusTip" [] ~ret:qString;
    dynamic "setWhatsThis" [arg "what" qString];
    dynamic "whatsThis" [] ~ret:qString;
    dynamic "setPriority" [arg "priority" qAction'Priority];
    dynamic "priority" [] ~ret:qAction'Priority;
    dynamic "menu" [] ~ret:qMenu;
    dynamic "setMenu" [arg "menu" qMenu];
    dynamic "setSeparator" [arg "b" bool];
    dynamic "isSeparator" [] ~ret:bool;
    dynamic "setShortcut" [arg "shortcut" qKeySequence];
    dynamic "shortcut" [] ~ret:qKeySequence;
    (*dynamic "setShortcuts" [arg "shortcuts" qList<QKeySequence>];*)
    dynamic "setShortcuts" [arg "key" qKeySequence'StandardKey];
    (*dynamic "shortcuts" [] ~ret:qList<QKeySequence>;*)
    dynamic "setShortcutContext" [arg "context" qt'ShortcutContext];
    dynamic "shortcutContext" [] ~ret:qt'ShortcutContext;
    dynamic "setAutoRepeat" [arg "arg0" bool];
    dynamic "autoRepeat" [] ~ret:bool;
    dynamic "setFont" [arg "font" qFont];
    dynamic "font" [] ~ret:qFont;
    dynamic "setCheckable" [arg "arg0" bool];
    dynamic "isCheckable" [] ~ret:bool;
    dynamic "data" [] ~ret:qVariant;
    dynamic "setData" [arg "userData" qVariant];
    dynamic "isChecked" [] ~ret:bool;
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "isVisible" [] ~ret:bool;
    dynamic "activate" [arg "event" qAction'ActionEvent];
    dynamic "showStatusText" [arg "widget" qWidget] ~ret:bool;
    dynamic "setMenuRole" [arg "menuRole" qAction'MenuRole];
    dynamic "menuRole" [] ~ret:qAction'MenuRole;
    dynamic "setIconVisibleInMenu" [arg "visible" bool];
    dynamic "isIconVisibleInMenu" [] ~ret:bool;
    dynamic "parentWidget" [] ~ret:(optional qWidget);
    (*dynamic "associatedWidgets" [] ~ret:qList<QWidget *>;*)
    (*dynamic "associatedGraphicsWidgets" [] ~ret:qList<QGraphicsWidget *>;*)
    dynamic "trigger" [];
    dynamic "hover" [];
    dynamic "setChecked" [arg "arg0" bool];
    dynamic "toggle" [];
    dynamic "setEnabled" [arg "arg0" bool];
    dynamic "setDisabled" [arg "b" bool];
    dynamic "setVisible" [arg "arg0" bool];
    dynamic "changed" [];
    dynamic "triggered" [arg "checked" bool];
    dynamic "hovered" [];
    dynamic "toggled" [arg "checked" bool];
    slot "hover" [];
    slot "setChecked" [arg "" bool];
    slot "setDisabled" [arg "" bool];
    slot "setEnabled" [arg "" bool];
    slot "setVisible" [arg "" bool];
    slot "toggle" [];
    slot "trigger" [];
    signal "changed" [];
    signal "hovered" [];
    signal "toggled" [arg "" bool];
    signal "triggered" [arg "" bool];
  ]
let () = with_class qActionGroup [
    constructor "" [opt "parent" qObject];
    dynamic "addAction" [arg "action" qAction] ~ret:qAction;
    dynamic "addAction" [arg "text" qString] ~ret:qAction;
    dynamic "addAction" [arg "icon" qIcon;arg "text" qString] ~ret:qAction;
    dynamic "removeAction" [arg "action" qAction];
    (*dynamic "actions" [] ~ret:qList<QAction *>;*)
    dynamic "checkedAction" [] ~ret:qAction;
    dynamic "isExclusive" [] ~ret:bool;
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "isVisible" [] ~ret:bool;
    dynamic "setEnabled" [arg "arg0" bool];
    dynamic "setDisabled" [arg "b" bool];
    dynamic "setVisible" [arg "arg0" bool];
    dynamic "setExclusive" [arg "arg0" bool];
    dynamic "triggered" [arg "action" qAction];
    dynamic "hovered" [arg "action" qAction];
  ]
let () = with_class qGesture [
    constructor "" [opt "parent" qObject];
    dynamic "gestureType" [] ~ret:qt'GestureType;
    dynamic "state" [] ~ret:qt'GestureState;
    dynamic "hotSpot" [] ~ret:qPointF;
    dynamic "setHotSpot" [arg "value" qPointF];
    dynamic "hasHotSpot" [] ~ret:bool;
    dynamic "unsetHotSpot" [];
    dynamic "setGestureCancelPolicy" [arg "policy" qGesture'GestureCancelPolicy];
    dynamic "gestureCancelPolicy" [] ~ret:qGesture'GestureCancelPolicy;
  ]
let () = with_class qShortcut [
    constructor "" [opt "parent" qWidget];
    (*constructor "" [arg "key" qKeySequence;opt "parent" qWidget;arg "member" char;arg "ambiguousMember" char;arg "context" qt'ShortcutContext];*)
    dynamic "setKey" [arg "key" qKeySequence];
    dynamic "key" [] ~ret:qKeySequence;
    dynamic "setEnabled" [arg "enable" bool];
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "setContext" [arg "context" qt'ShortcutContext];
    dynamic "context" [] ~ret:qt'ShortcutContext;
    dynamic "setWhatsThis" [arg "text" qString];
    dynamic "whatsThis" [] ~ret:qString;
    dynamic "setAutoRepeat" [arg "on" bool];
    dynamic "autoRepeat" [] ~ret:bool;
    dynamic "id" [] ~ret:int;
    dynamic "parentWidget" [] ~ret:(optional qWidget);
    dynamic "activated" [];
    dynamic "activatedAmbiguously" [];
  ]
let () = with_class qCompleter [
    constructor "" [opt "parent" qObject];
    constructor "" [arg "model" qAbstractItemModel;arg "parent" qObject];
    constructor "" [arg "list" qStringList;arg "parent" qObject];
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "setCompletionMode" [arg "mode" qCompleter'CompletionMode];
    dynamic "completionMode" [] ~ret:qCompleter'CompletionMode;
    dynamic "setFilterMode" [arg "filterMode" qt'MatchFlags];
    dynamic "filterMode" [] ~ret:qt'MatchFlags;
    dynamic "popup" [] ~ret:qAbstractItemView;
    dynamic "setPopup" [arg "popup" qAbstractItemView];
    dynamic "setCaseSensitivity" [arg "caseSensitivity" qt'CaseSensitivity];
    dynamic "caseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setModelSorting" [arg "sorting" qCompleter'ModelSorting];
    dynamic "modelSorting" [] ~ret:qCompleter'ModelSorting;
    dynamic "setCompletionColumn" [arg "column" int];
    dynamic "completionColumn" [] ~ret:int;
    dynamic "setCompletionRole" [arg "role" int];
    dynamic "completionRole" [] ~ret:int;
    dynamic "wrapAround" [] ~ret:bool;
    dynamic "maxVisibleItems" [] ~ret:int;
    dynamic "setMaxVisibleItems" [arg "maxItems" int];
    dynamic "completionCount" [] ~ret:int;
    dynamic "setCurrentRow" [arg "row" int] ~ret:bool;
    dynamic "currentRow" [] ~ret:int;
    dynamic "currentIndex" [] ~ret:qModelIndex;
    dynamic "currentCompletion" [] ~ret:qString;
    dynamic "completionModel" [] ~ret:qAbstractItemModel;
    dynamic "completionPrefix" [] ~ret:qString;
    dynamic "setCompletionPrefix" [arg "prefix" qString];
    dynamic "complete" [arg "rect" qRect];
    dynamic "setWrapAround" [arg "wrap" bool];
    dynamic "pathFromIndex" [arg "index" qModelIndex] ~ret:qString;
    dynamic "splitPath" [arg "path" qString] ~ret:qStringList;
    dynamic "activated" [arg "text" qString];
    dynamic "activated" [arg "index" qModelIndex];
    dynamic "highlighted" [arg "text" qString];
    dynamic "highlighted" [arg "index" qModelIndex];
  ]
let () = with_class qSystemTrayIcon [
    constructor "" [opt "parent" qObject];
    constructor "" [arg "icon" qIcon;arg "parent" qObject];
    dynamic "setContextMenu" [arg "menu" qMenu];
    dynamic "contextMenu" [] ~ret:qMenu;
    dynamic "icon" [] ~ret:qIcon;
    dynamic "setIcon" [arg "icon" qIcon];
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setToolTip" [arg "tip" qString];
    static  "isSystemTrayAvailable" [] ~ret:bool;
    static  "supportsMessages" [] ~ret:bool;
    dynamic "geometry" [] ~ret:qRect;
    dynamic "isVisible" [] ~ret:bool;
    dynamic "setVisible" [arg "visible" bool];
    dynamic "show" [];
    dynamic "hide" [];
    dynamic "showMessage" [arg "title" qString;arg "message" qString;arg "icon" qIcon;arg "millisecondsTimeoutHint" int];
    dynamic "showMessage" [arg "title" qString;arg "message" qString;arg "icon" qSystemTrayIcon'MessageIcon;arg "millisecondsTimeoutHint" int];
    dynamic "activated" [arg "reason" qSystemTrayIcon'ActivationReason];
    dynamic "messageClicked" [];
  ]
let () = with_class qButtonGroup [
    constructor "" [opt "parent" qObject];
    dynamic "setExclusive" [arg "arg0" bool];
    dynamic "exclusive" [] ~ret:bool;
    dynamic "addButton" [arg "button" qAbstractButton;arg "id" int];
    dynamic "removeButton" [arg "button" qAbstractButton];
    (*dynamic "buttons" [] ~ret:qList<QAbstractButton *>;*)
    dynamic "checkedButton" [] ~ret:qAbstractButton;
    dynamic "button" [arg "id" int] ~ret:qAbstractButton;
    dynamic "setId" [arg "button" qAbstractButton;arg "id" int];
    dynamic "id" [arg "button" qAbstractButton] ~ret:int;
    dynamic "checkedId" [] ~ret:int;
    dynamic "buttonClicked" [arg "button" qAbstractButton];
    dynamic "buttonClicked" [arg "id" int];
    dynamic "buttonPressed" [arg "button" qAbstractButton];
    dynamic "buttonPressed" [arg "id" int];
    dynamic "buttonReleased" [arg "button" qAbstractButton];
    dynamic "buttonReleased" [arg "id" int];
    dynamic "buttonToggled" [arg "button" qAbstractButton;arg "checked" bool];
    dynamic "buttonToggled" [arg "id" int;arg "checked" bool];
    signal "buttonClicked" [arg "" int];
    signal "buttonClicked" [arg "" qAbstractButton];
    signal "buttonPressed" [arg "" int];
    signal "buttonPressed" [arg "" qAbstractButton];
    signal "buttonReleased" [arg "" int];
    signal "buttonReleased" [arg "" qAbstractButton];
    signal "buttonToggled" [arg "" int;arg "" bool];
    signal "buttonToggled" [arg "" qAbstractButton;arg "" bool];
  ]
let () = with_class qWidgetAction [
    constructor "" [opt "parent" qObject];
    dynamic "setDefaultWidget" [arg "widget" qWidget];
    dynamic "defaultWidget" [] ~ret:(optional qWidget);
    dynamic "requestWidget" [arg "parent" qWidget] ~ret:(optional qWidget);
    dynamic "releaseWidget" [arg "widget" qWidget];
  ]
let () = with_class qGraphicsScale [
    constructor "" [opt "parent" qObject];
    dynamic "origin" [] ~ret:qVector3D;
    dynamic "setOrigin" [arg "point" qVector3D];
    dynamic "xScale" [] ~ret:qreal;
    dynamic "setXScale" [arg "arg0" qreal];
    dynamic "yScale" [] ~ret:qreal;
    dynamic "setYScale" [arg "arg0" qreal];
    dynamic "zScale" [] ~ret:qreal;
    dynamic "setZScale" [arg "arg0" qreal];
    dynamic "applyTo" [arg "matrix" qMatrix4x4];
    dynamic "originChanged" [];
    dynamic "xScaleChanged" [];
    dynamic "yScaleChanged" [];
    dynamic "zScaleChanged" [];
    dynamic "scaleChanged" [];
  ]
let () = with_class qGraphicsRotation [
    constructor "" [opt "parent" qObject];
    dynamic "origin" [] ~ret:qVector3D;
    dynamic "setOrigin" [arg "point" qVector3D];
    dynamic "angle" [] ~ret:qreal;
    dynamic "setAngle" [arg "arg0" qreal];
    dynamic "axis" [] ~ret:qVector3D;
    dynamic "setAxis" [arg "axis" qVector3D];
    dynamic "setAxis" [arg "axis" qt'Axis];
    dynamic "applyTo" [arg "matrix" qMatrix4x4];
    dynamic "originChanged" [];
    dynamic "angleChanged" [];
    dynamic "axisChanged" [];
  ]
let () = with_class qGraphicsColorizeEffect [
    constructor "" [opt "parent" qObject];
    dynamic "color" [] ~ret:qColor;
    dynamic "strength" [] ~ret:qreal;
    dynamic "setColor" [arg "c" qColor];
    dynamic "setStrength" [arg "strength" qreal];
    dynamic "colorChanged" [arg "color" qColor];
    dynamic "strengthChanged" [arg "strength" qreal];
  ]
let () = with_class qGraphicsBlurEffect [
    constructor "" [opt "parent" qObject];
    dynamic "boundingRectFor" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "blurRadius" [] ~ret:qreal;
    dynamic "blurHints" [] ~ret:qGraphicsBlurEffect'BlurHints;
    dynamic "setBlurRadius" [arg "blurRadius" qreal];
    dynamic "setBlurHints" [arg "hints" qGraphicsBlurEffect'BlurHints];
    dynamic "blurRadiusChanged" [arg "radius" qreal];
    dynamic "blurHintsChanged" [arg "hints" qGraphicsBlurEffect'BlurHints];
  ]
let () = with_class qGraphicsDropShadowEffect [
    constructor "" [opt "parent" qObject];
    dynamic "boundingRectFor" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "offset" [] ~ret:qPointF;
    dynamic "xOffset" [] ~ret:qreal;
    dynamic "yOffset" [] ~ret:qreal;
    dynamic "blurRadius" [] ~ret:qreal;
    dynamic "color" [] ~ret:qColor;
    dynamic "setOffset" [arg "ofs" qPointF];
    dynamic "setOffset" [arg "dx" qreal;arg "dy" qreal];
    dynamic "setOffset" [arg "d" qreal];
    dynamic "setXOffset" [arg "dx" qreal];
    dynamic "setYOffset" [arg "dy" qreal];
    dynamic "setBlurRadius" [arg "blurRadius" qreal];
    dynamic "setColor" [arg "color" qColor];
    dynamic "offsetChanged" [arg "offset" qPointF];
    dynamic "blurRadiusChanged" [arg "blurRadius" qreal];
    dynamic "colorChanged" [arg "color" qColor];
  ]
let () = with_class qGraphicsOpacityEffect [
    constructor "" [opt "parent" qObject];
    dynamic "opacity" [] ~ret:qreal;
    dynamic "opacityMask" [] ~ret:qBrush;
    dynamic "setOpacity" [arg "opacity" qreal];
    dynamic "setOpacityMask" [arg "mask" qBrush];
    dynamic "opacityChanged" [arg "opacity" qreal];
    dynamic "opacityMaskChanged" [arg "mask" qBrush];
  ]
let () = with_class qDialog [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "result" [] ~ret:int;
    dynamic "setOrientation" [arg "orientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "setExtension" [arg "extension" qWidget];
    dynamic "extension" [] ~ret:(optional qWidget);
    dynamic "setSizeGripEnabled" [arg "arg0" bool];
    dynamic "isSizeGripEnabled" [] ~ret:bool;
    dynamic "setModal" [arg "modal" bool];
    dynamic "setResult" [arg "i" int];
    dynamic "finished" [arg "result" int];
    dynamic "accepted" [];
    dynamic "rejected" [];
    dynamic "open" [];
    dynamic "exec" [] ~ret:int;
    dynamic "done" [arg "r" int];
    dynamic "accept" [];
    dynamic "reject" [];
    dynamic "showExtension" [arg "showIt" bool];
    slot "accept" [];
    slot "done" [arg "" int];
    slot "exec" [];
    slot "open" [];
    slot "reject" [];
    slot "showExtension" [arg "" bool];
    signal "accepted" [];
    signal "finished" [arg "" int];
    signal "rejected" [];
  ]
let () = with_class qWizardPage [
    constructor "" [opt "parent" qWidget];
    dynamic "setTitle" [arg "title" qString];
    dynamic "title" [] ~ret:qString;
    dynamic "setSubTitle" [arg "subTitle" qString];
    dynamic "subTitle" [] ~ret:qString;
    (*dynamic "setPixmap" [arg "which" qWizard'WizardPixmap;arg "pixmap" qPixmap];*)
    (*dynamic "pixmap" [arg "which" qWizard'WizardPixmap] ~ret:qPixmap;*)
    dynamic "setFinalPage" [arg "finalPage" bool];
    dynamic "isFinalPage" [] ~ret:bool;
    dynamic "setCommitPage" [arg "commitPage" bool];
    dynamic "isCommitPage" [] ~ret:bool;
    dynamic "setButtonText" [arg "which" qWizard'WizardButton;arg "text" qString];
    dynamic "buttonText" [arg "which" qWizard'WizardButton] ~ret:qString;
    dynamic "initializePage" [];
    dynamic "cleanupPage" [];
    dynamic "validatePage" [] ~ret:bool;
    dynamic "isComplete" [] ~ret:bool;
    dynamic "nextId" [] ~ret:int;
    dynamic "completeChanged" [];
  ]
let () = with_class qOpenGLWidget [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "setUpdateBehavior" [arg "updateBehavior" qOpenGLWidget'UpdateBehavior];
    dynamic "updateBehavior" [] ~ret:qOpenGLWidget'UpdateBehavior;
    (*dynamic "setFormat" [arg "format" qSurfaceFormat];*)
    (*dynamic "format" [] ~ret:qSurfaceFormat;*)
    dynamic "isValid" [] ~ret:bool;
    dynamic "makeCurrent" [];
    dynamic "doneCurrent" [];
    dynamic "context" [] ~ret:qOpenGLContext;
    dynamic "defaultFramebufferObject" [] ~ret:nativeint;
    (*dynamic "grabFramebuffer" [] ~ret:qImage;*)
    dynamic "aboutToCompose" [];
    dynamic "frameSwapped" [];
    dynamic "aboutToResize" [];
    dynamic "resized" [];
  ]
let () = with_class qAbstractSlider [
    constructor "" [opt "parent" qWidget];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "setMinimum" [arg "arg0" int];
    dynamic "minimum" [] ~ret:int;
    dynamic "setMaximum" [arg "arg0" int];
    dynamic "maximum" [] ~ret:int;
    dynamic "setSingleStep" [arg "arg0" int];
    dynamic "singleStep" [] ~ret:int;
    dynamic "setPageStep" [arg "arg0" int];
    dynamic "pageStep" [] ~ret:int;
    dynamic "setTracking" [arg "enable" bool];
    dynamic "hasTracking" [] ~ret:bool;
    dynamic "setSliderDown" [arg "arg0" bool];
    dynamic "isSliderDown" [] ~ret:bool;
    dynamic "setSliderPosition" [arg "arg0" int];
    dynamic "sliderPosition" [] ~ret:int;
    dynamic "setInvertedAppearance" [arg "arg0" bool];
    dynamic "invertedAppearance" [] ~ret:bool;
    dynamic "setInvertedControls" [arg "arg0" bool];
    dynamic "invertedControls" [] ~ret:bool;
    dynamic "value" [] ~ret:int;
    dynamic "triggerAction" [arg "action" qAbstractSlider'SliderAction];
    dynamic "setValue" [arg "arg0" int];
    dynamic "setOrientation" [arg "arg0" qt'Orientation];
    dynamic "setRange" [arg "min" int;arg "max" int];
    dynamic "valueChanged" [arg "value" int];
    dynamic "sliderPressed" [];
    dynamic "sliderMoved" [arg "value" int];
    dynamic "sliderReleased" [];
    dynamic "rangeChanged" [arg "min" int;arg "max" int];
    dynamic "actionTriggered" [arg "action" int];
    slot "setOrientation" [arg "" qt'Orientation];
    slot "setRange" [arg "" int;arg "" int];
    slot "setValue" [arg "" int];
    signal "actionTriggered" [arg "" int];
    signal "rangeChanged" [arg "" int;arg "" int];
    signal "sliderMoved" [arg "" int];
    signal "sliderPressed" [];
    signal "sliderReleased" [];
    signal "valueChanged" [arg "" int];
  ]
let () = with_class qAbstractSpinBox [
    constructor "" [opt "parent" qWidget];
    dynamic "buttonSymbols" [] ~ret:qAbstractSpinBox'ButtonSymbols;
    dynamic "setButtonSymbols" [arg "bs" qAbstractSpinBox'ButtonSymbols];
    dynamic "setCorrectionMode" [arg "cm" qAbstractSpinBox'CorrectionMode];
    dynamic "correctionMode" [] ~ret:qAbstractSpinBox'CorrectionMode;
    dynamic "hasAcceptableInput" [] ~ret:bool;
    dynamic "text" [] ~ret:qString;
    dynamic "specialValueText" [] ~ret:qString;
    dynamic "setSpecialValueText" [arg "txt" qString];
    dynamic "wrapping" [] ~ret:bool;
    dynamic "setWrapping" [arg "w" bool];
    dynamic "setReadOnly" [arg "r" bool];
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "setKeyboardTracking" [arg "kt" bool];
    dynamic "keyboardTracking" [] ~ret:bool;
    dynamic "setAlignment" [arg "flag" qt'Alignment];
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setFrame" [arg "arg0" bool];
    dynamic "hasFrame" [] ~ret:bool;
    dynamic "setAccelerated" [arg "on" bool];
    dynamic "isAccelerated" [] ~ret:bool;
    dynamic "setGroupSeparatorShown" [arg "shown" bool];
    dynamic "isGroupSeparatorShown" [] ~ret:bool;
    dynamic "interpretText" [];
    dynamic "event" [arg "event" qEvent] ~ret:bool;
    (*dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;*)
    (*dynamic "validate" [arg "input" qString;arg "pos" int] ~ret:qValidator'State;*)
    (*dynamic "fixup" [arg "input" qString];*)
    dynamic "stepBy" [arg "steps" int];
    dynamic "stepUp" [];
    dynamic "stepDown" [];
    dynamic "selectAll" [];
    dynamic "clear" [];
    dynamic "editingFinished" [];
    slot "clear" [];
    slot "_q_editorCursorPositionChanged" [arg "" int;arg "" int];
    slot "_q_editorTextChanged" [arg "" qString];
    slot "selectAll" [];
    slot "stepDown" [];
    slot "stepUp" [];
    signal "editingFinished" [];
  ]
let () = with_class qCalendarWidget [
    constructor "" [opt "parent" qWidget];
    dynamic "selectedDate" [] ~ret:qDate;
    dynamic "yearShown" [] ~ret:int;
    dynamic "monthShown" [] ~ret:int;
    dynamic "minimumDate" [] ~ret:qDate;
    dynamic "setMinimumDate" [arg "date" qDate];
    dynamic "maximumDate" [] ~ret:qDate;
    dynamic "setMaximumDate" [arg "date" qDate];
    dynamic "firstDayOfWeek" [] ~ret:qt'DayOfWeek;
    dynamic "setFirstDayOfWeek" [arg "dayOfWeek" qt'DayOfWeek];
    dynamic "isNavigationBarVisible" [] ~ret:bool;
    dynamic "isGridVisible" [] ~ret:bool;
    dynamic "selectionMode" [] ~ret:qCalendarWidget'SelectionMode;
    dynamic "setSelectionMode" [arg "mode" qCalendarWidget'SelectionMode];
    dynamic "horizontalHeaderFormat" [] ~ret:qCalendarWidget'HorizontalHeaderFormat;
    dynamic "setHorizontalHeaderFormat" [arg "format" qCalendarWidget'HorizontalHeaderFormat];
    dynamic "verticalHeaderFormat" [] ~ret:qCalendarWidget'VerticalHeaderFormat;
    dynamic "setVerticalHeaderFormat" [arg "format" qCalendarWidget'VerticalHeaderFormat];
    dynamic "headerTextFormat" [] ~ret:qTextCharFormat;
    dynamic "setHeaderTextFormat" [arg "format" qTextCharFormat];
    dynamic "weekdayTextFormat" [arg "dayOfWeek" qt'DayOfWeek] ~ret:qTextCharFormat;
    dynamic "setWeekdayTextFormat" [arg "dayOfWeek" qt'DayOfWeek;arg "format" qTextCharFormat];
    (*dynamic "dateTextFormat" [] ~ret:qMap<QDate, QTextCharFormat>;*)
    dynamic "dateTextFormat" [arg "date" qDate] ~ret:qTextCharFormat;
    dynamic "setDateTextFormat" [arg "date" qDate;arg "format" qTextCharFormat];
    dynamic "isDateEditEnabled" [] ~ret:bool;
    dynamic "setDateEditEnabled" [arg "enable" bool];
    dynamic "dateEditAcceptDelay" [] ~ret:int;
    dynamic "setDateEditAcceptDelay" [arg "delay" int];
    dynamic "setSelectedDate" [arg "date" qDate];
    dynamic "setDateRange" [arg "min" qDate;arg "max" qDate];
    dynamic "setCurrentPage" [arg "year" int;arg "month" int];
    dynamic "setGridVisible" [arg "show" bool];
    dynamic "setNavigationBarVisible" [arg "visible" bool];
    dynamic "showNextMonth" [];
    dynamic "showPreviousMonth" [];
    dynamic "showNextYear" [];
    dynamic "showPreviousYear" [];
    dynamic "showSelectedDate" [];
    dynamic "showToday" [];
    dynamic "selectionChanged" [];
    dynamic "clicked" [arg "date" qDate];
    dynamic "activated" [arg "date" qDate];
    dynamic "currentPageChanged" [arg "year" int;arg "month" int];
    slot "_q_editingFinished" [];
    slot "_q_monthChanged" [arg "" qAction];
    slot "_q_nextMonthClicked" [];
    slot "_q_prevMonthClicked" [];
    slot "_q_slotChangeDate" [arg "" qDate];
    slot "_q_slotChangeDate" [arg "" qDate;arg "" bool];
    slot "_q_slotShowDate" [arg "" qDate];
    slot "_q_yearClicked" [];
    slot "_q_yearEditingFinished" [];
    slot "setCurrentPage" [arg "" int;arg "" int];
    slot "setDateRange" [arg "" qDate;arg "" qDate];
    slot "setGridVisible" [arg "" bool];
    slot "setNavigationBarVisible" [arg "" bool];
    slot "setSelectedDate" [arg "" qDate];
    slot "showNextMonth" [];
    slot "showNextYear" [];
    slot "showPreviousMonth" [];
    slot "showPreviousYear" [];
    slot "showSelectedDate" [];
    slot "showToday" [];
    signal "activated" [arg "" qDate];
    signal "clicked" [arg "" qDate];
    signal "currentPageChanged" [arg "" int;arg "" int];
    signal "selectionChanged" [];
  ]
let () = with_class qComboBox [
    constructor "" [opt "parent" qWidget];
    dynamic "maxVisibleItems" [] ~ret:int;
    dynamic "setMaxVisibleItems" [arg "maxItems" int];
    dynamic "count" [] ~ret:int;
    dynamic "setMaxCount" [arg "max" int];
    dynamic "maxCount" [] ~ret:int;
    dynamic "autoCompletion" [] ~ret:bool;
    dynamic "setAutoCompletion" [arg "enable" bool];
    dynamic "autoCompletionCaseSensitivity" [] ~ret:qt'CaseSensitivity;
    dynamic "setAutoCompletionCaseSensitivity" [arg "sensitivity" qt'CaseSensitivity];
    dynamic "duplicatesEnabled" [] ~ret:bool;
    dynamic "setDuplicatesEnabled" [arg "enable" bool];
    dynamic "setFrame" [arg "arg0" bool];
    dynamic "hasFrame" [] ~ret:bool;
    dynamic "findText" [arg "text" qString;arg "flags" qt'MatchFlags] ~ret:int;
    dynamic "findData" [arg "data" qVariant;arg "role" int;arg "flags" qt'MatchFlags] ~ret:int;
    dynamic "insertPolicy" [] ~ret:qComboBox'InsertPolicy;
    dynamic "setInsertPolicy" [arg "policy" qComboBox'InsertPolicy];
    dynamic "sizeAdjustPolicy" [] ~ret:qComboBox'SizeAdjustPolicy;
    dynamic "setSizeAdjustPolicy" [arg "policy" qComboBox'SizeAdjustPolicy];
    dynamic "minimumContentsLength" [] ~ret:int;
    dynamic "setMinimumContentsLength" [arg "characters" int];
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "setIconSize" [arg "size" qSize];
    dynamic "isEditable" [] ~ret:bool;
    dynamic "setEditable" [arg "editable" bool];
    dynamic "setLineEdit" [arg "edit" qLineEdit];
    dynamic "lineEdit" [] ~ret:qLineEdit;
    dynamic "setValidator" [arg "validator" qValidator];
    dynamic "validator" [] ~ret:qValidator;
    dynamic "setCompleter" [arg "completer" qCompleter];
    dynamic "completer" [] ~ret:qCompleter;
    dynamic "itemDelegate" [] ~ret:qAbstractItemDelegate;
    dynamic "setItemDelegate" [arg "delegate" qAbstractItemDelegate];
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "rootModelIndex" [] ~ret:qModelIndex;
    dynamic "setRootModelIndex" [arg "index" qModelIndex];
    dynamic "modelColumn" [] ~ret:int;
    dynamic "setModelColumn" [arg "visibleColumn" int];
    dynamic "currentIndex" [] ~ret:int;
    dynamic "currentText" [] ~ret:qString;
    dynamic "currentData" [arg "role" int] ~ret:qVariant;
    dynamic "itemText" [arg "index" int] ~ret:qString;
    dynamic "itemIcon" [arg "index" int] ~ret:qIcon;
    dynamic "itemData" [arg "index" int;arg "role" int] ~ret:qVariant;
    dynamic "addItem" [arg "text" qString;arg "userData" qVariant];
    dynamic "addItem" [arg "icon" qIcon;arg "text" qString;arg "userData" qVariant];
    dynamic "addItems" [arg "texts" qStringList];
    dynamic "insertItem" [arg "index" int;arg "text" qString;arg "userData" qVariant];
    dynamic "insertItem" [arg "index" int;arg "icon" qIcon;arg "text" qString;arg "userData" qVariant];
    dynamic "insertItems" [arg "index" int;arg "list" qStringList];
    dynamic "insertSeparator" [arg "index" int];
    dynamic "removeItem" [arg "index" int];
    dynamic "setItemText" [arg "index" int;arg "text" qString];
    dynamic "setItemIcon" [arg "index" int;arg "icon" qIcon];
    dynamic "setItemData" [arg "index" int;arg "value" qVariant;arg "role" int];
    dynamic "view" [] ~ret:qAbstractItemView;
    dynamic "setView" [arg "itemView" qAbstractItemView];
    dynamic "showPopup" [];
    dynamic "hidePopup" [];
    dynamic "event" [arg "event" qEvent] ~ret:bool;
    dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;
    dynamic "clear" [];
    dynamic "clearEditText" [];
    dynamic "setEditText" [arg "text" qString];
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentText" [arg "text" qString];
    dynamic "editTextChanged" [arg "text" qString];
    dynamic "activated" [arg "index" int];
    dynamic "activated" [arg "text" qString];
    dynamic "highlighted" [arg "index" int];
    dynamic "highlighted" [arg "text" qString];
    dynamic "currentIndexChanged" [arg "index" int];
    dynamic "currentIndexChanged" [arg "text" qString];
    dynamic "currentTextChanged" [arg "text" qString];
    slot "clear" [];
    slot "clearEditText" [];
    slot "_q_completerActivated" [arg "" qModelIndex];
    slot "_q_dataChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_editingFinished" [];
    slot "_q_emitCurrentIndexChanged" [arg "" qModelIndex];
    slot "_q_emitHighlighted" [arg "" qModelIndex];
    slot "_q_itemSelected" [arg "" qModelIndex];
    slot "_q_modelDestroyed" [];
    slot "_q_modelReset" [];
    slot "_q_resetButton" [];
    slot "_q_returnPressed" [];
    slot "_q_rowsInserted" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_rowsRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_updateIndexBeforeChange" [];
    slot "setCurrentIndex" [arg "" int];
    slot "setCurrentText" [arg "" qString];
    slot "setEditText" [arg "" qString];
    signal "activated" [arg "" int];
    signal "activated" [arg "" qString];
    signal "currentIndexChanged" [arg "" int];
    signal "currentIndexChanged" [arg "" qString];
    signal "currentTextChanged" [arg "" qString];
    signal "editTextChanged" [arg "" qString];
    signal "highlighted" [arg "" int];
    signal "highlighted" [arg "" qString];
  ]
let () = with_class qDialogButtonBox [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "orientation" qt'Orientation;opt "parent" qWidget];
    constructor "" [arg "buttons" qDialogButtonBox'StandardButtons;opt "parent" qWidget];
    constructor "" [arg "buttons" qDialogButtonBox'StandardButtons;arg "orientation" qt'Orientation;opt "parent" qWidget];
    dynamic "setOrientation" [arg "orientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "addButton" [arg "button" qAbstractButton;arg "role" qDialogButtonBox'ButtonRole];
    dynamic "addButton" [arg "text" qString;arg "role" qDialogButtonBox'ButtonRole] ~ret:qPushButton;
    dynamic "addButton" [arg "button" qDialogButtonBox'StandardButton] ~ret:qPushButton;
    dynamic "removeButton" [arg "button" qAbstractButton];
    dynamic "clear" [];
    (*dynamic "buttons" [] ~ret:qList<QAbstractButton *>;*)
    dynamic "buttonRole" [arg "button" qAbstractButton] ~ret:qDialogButtonBox'ButtonRole;
    dynamic "setStandardButtons" [arg "buttons" qDialogButtonBox'StandardButtons];
    dynamic "standardButtons" [] ~ret:qDialogButtonBox'StandardButtons;
    dynamic "standardButton" [arg "button" qAbstractButton] ~ret:qDialogButtonBox'StandardButton;
    dynamic "button" [arg "which" qDialogButtonBox'StandardButton] ~ret:qPushButton;
    dynamic "setCenterButtons" [arg "center" bool];
    dynamic "centerButtons" [] ~ret:bool;
    dynamic "clicked" [arg "button" qAbstractButton];
    dynamic "accepted" [];
    dynamic "helpRequested" [];
    dynamic "rejected" [];
  ]
let () = with_class qDockWidget [
    constructor "" [arg "title" qString;opt "parent" qWidget;arg "flags" qt'WindowFlags];
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "setFeatures" [arg "features" qDockWidget'DockWidgetFeatures];
    dynamic "features" [] ~ret:qDockWidget'DockWidgetFeatures;
    dynamic "setFloating" [arg "floating" bool];
    dynamic "isFloating" [] ~ret:bool;
    dynamic "setAllowedAreas" [arg "areas" qt'DockWidgetAreas];
    dynamic "allowedAreas" [] ~ret:qt'DockWidgetAreas;
    dynamic "setTitleBarWidget" [arg "widget" qWidget];
    dynamic "titleBarWidget" [] ~ret:(optional qWidget);
    dynamic "isAreaAllowed" [arg "area" qt'DockWidgetArea] ~ret:bool;
    dynamic "toggleViewAction" [] ~ret:qAction;
    dynamic "featuresChanged" [arg "features" qDockWidget'DockWidgetFeatures];
    dynamic "topLevelChanged" [arg "topLevel" bool];
    dynamic "allowedAreasChanged" [arg "allowedAreas" qt'DockWidgetAreas];
    dynamic "visibilityChanged" [arg "visible" bool];
    dynamic "dockLocationChanged" [arg "area" qt'DockWidgetArea];
    slot "_q_toggleTopLevel" [];
    slot "_q_toggleView" [arg "" bool];
    signal "allowedAreasChanged" [arg "" qt'DockWidgetAreas];
    signal "dockLocationChanged" [arg "" qt'DockWidgetArea];
    signal "featuresChanged" [arg "" qDockWidget'DockWidgetFeatures];
    signal "topLevelChanged" [arg "" bool];
    signal "visibilityChanged" [arg "" bool];
  ]
let () = with_class qFocusFrame [
    constructor "" [opt "parent" qWidget];
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "widget" [] ~ret:(optional qWidget);
  ]
let () = with_class qFrame [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "frameStyle" [] ~ret:int;
    dynamic "setFrameStyle" [arg "style" int];
    dynamic "frameWidth" [] ~ret:int;
    dynamic "frameShape" [] ~ret:qFrame'Shape;
    dynamic "setFrameShape" [arg "arg0" qFrame'Shape];
    dynamic "frameShadow" [] ~ret:qFrame'Shadow;
    dynamic "setFrameShadow" [arg "arg0" qFrame'Shadow];
    dynamic "lineWidth" [] ~ret:int;
    dynamic "setLineWidth" [arg "arg0" int];
    dynamic "midLineWidth" [] ~ret:int;
    dynamic "setMidLineWidth" [arg "arg0" int];
    dynamic "frameRect" [] ~ret:qRect;
    dynamic "setFrameRect" [arg "arg0" qRect];
  ]
let () = with_class qKeySequenceEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "keySequence" qKeySequence;opt "parent" qWidget];
    dynamic "keySequence" [] ~ret:qKeySequence;
    dynamic "setKeySequence" [arg "keySequence" qKeySequence];
    dynamic "clear" [];
    dynamic "editingFinished" [];
    dynamic "keySequenceChanged" [arg "keySequence" qKeySequence];
  ]
let () = with_class qMainWindow [
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "setIconSize" [arg "iconSize" qSize];
    dynamic "toolButtonStyle" [] ~ret:qt'ToolButtonStyle;
    dynamic "setToolButtonStyle" [arg "toolButtonStyle" qt'ToolButtonStyle];
    dynamic "isAnimated" [] ~ret:bool;
    dynamic "isDockNestingEnabled" [] ~ret:bool;
    dynamic "documentMode" [] ~ret:bool;
    dynamic "setDocumentMode" [arg "enabled" bool];
    dynamic "tabShape" [] ~ret:qTabWidget'TabShape;
    dynamic "setTabShape" [arg "tabShape" qTabWidget'TabShape];
    dynamic "tabPosition" [arg "area" qt'DockWidgetArea] ~ret:qTabWidget'TabPosition;
    dynamic "setTabPosition" [arg "areas" qt'DockWidgetAreas;arg "tabPosition" qTabWidget'TabPosition];
    dynamic "setDockOptions" [arg "options" qMainWindow'DockOptions];
    dynamic "dockOptions" [] ~ret:qMainWindow'DockOptions;
    dynamic "menuBar" [] ~ret:qMenuBar;
    dynamic "setMenuBar" [arg "menuBar" qMenuBar];
    dynamic "menuWidget" [] ~ret:(optional qWidget);
    dynamic "setMenuWidget" [arg "menuBar" qWidget];
    dynamic "statusBar" [] ~ret:qStatusBar;
    dynamic "setStatusBar" [arg "statusbar" qStatusBar];
    dynamic "centralWidget" [] ~ret:(optional qWidget);
    dynamic "setCentralWidget" [arg "widget" qWidget];
    dynamic "takeCentralWidget" [] ~ret:(optional qWidget);
    dynamic "setCorner" [arg "corner" qt'Corner;arg "area" qt'DockWidgetArea];
    dynamic "corner" [arg "corner" qt'Corner] ~ret:qt'DockWidgetArea;
    dynamic "addToolBarBreak" [arg "area" qt'ToolBarArea];
    dynamic "insertToolBarBreak" [arg "before" qToolBar];
    dynamic "addToolBar" [arg "area" qt'ToolBarArea;arg "toolbar" qToolBar];
    dynamic "addToolBar" [arg "toolbar" qToolBar];
    dynamic "addToolBar" [arg "title" qString] ~ret:qToolBar;
    dynamic "insertToolBar" [arg "before" qToolBar;arg "toolbar" qToolBar];
    dynamic "removeToolBar" [arg "toolbar" qToolBar];
    dynamic "removeToolBarBreak" [arg "before" qToolBar];
    dynamic "unifiedTitleAndToolBarOnMac" [] ~ret:bool;
    dynamic "toolBarArea" [arg "toolbar" qToolBar] ~ret:qt'ToolBarArea;
    dynamic "toolBarBreak" [arg "toolbar" qToolBar] ~ret:bool;
    dynamic "addDockWidget" [arg "area" qt'DockWidgetArea;arg "dockwidget" qDockWidget];
    dynamic "addDockWidget" [arg "area" qt'DockWidgetArea;arg "dockwidget" qDockWidget;arg "orientation" qt'Orientation];
    dynamic "splitDockWidget" [arg "first" qDockWidget;arg "second" qDockWidget;arg "orientation" qt'Orientation];
    dynamic "tabifyDockWidget" [arg "first" qDockWidget;arg "second" qDockWidget];
    (*dynamic "tabifiedDockWidgets" [arg "dockwidget" qDockWidget] ~ret:qList<QDockWidget *>;*)
    dynamic "removeDockWidget" [arg "dockwidget" qDockWidget];
    dynamic "restoreDockWidget" [arg "dockwidget" qDockWidget] ~ret:bool;
    dynamic "dockWidgetArea" [arg "dockwidget" qDockWidget] ~ret:qt'DockWidgetArea;
    (*dynamic "resizeDocks" [arg "docks" qList<QDockWidget *>;arg "sizes" qList<int>;arg "orientation" qt'Orientation];*)
    dynamic "saveState" [arg "version" int] ~ret:qByteArray;
    dynamic "restoreState" [arg "state" qByteArray;arg "version" int] ~ret:bool;
    dynamic "createPopupMenu" [] ~ret:qMenu;
    dynamic "setAnimated" [arg "enabled" bool];
    dynamic "setDockNestingEnabled" [arg "enabled" bool];
    dynamic "setUnifiedTitleAndToolBarOnMac" [arg "set" bool];
    dynamic "iconSizeChanged" [arg "iconSize" qSize];
    dynamic "toolButtonStyleChanged" [arg "toolButtonStyle" qt'ToolButtonStyle];
    dynamic "tabifiedDockWidgetActivated" [arg "dockWidget" qDockWidget];
    slot "setAnimated" [arg "" bool];
    slot "setDockNestingEnabled" [arg "" bool];
    slot "setUnifiedTitleAndToolBarOnMac" [arg "" bool];
    signal "iconSizeChanged" [arg "" qSize];
    signal "tabifiedDockWidgetActivated" [arg "" qDockWidget];
    signal "toolButtonStyleChanged" [arg "" qt'ToolButtonStyle];
  ]
let () = with_class qMdiSubWindow [
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "isShaded" [] ~ret:bool;
    dynamic "setOption" [arg "option" qMdiSubWindow'SubWindowOption;arg "on" bool];
    dynamic "testOption" [arg "option" qMdiSubWindow'SubWindowOption] ~ret:bool;
    dynamic "setKeyboardSingleStep" [arg "step" int];
    dynamic "keyboardSingleStep" [] ~ret:int;
    dynamic "setKeyboardPageStep" [arg "step" int];
    dynamic "keyboardPageStep" [] ~ret:int;
    dynamic "setSystemMenu" [arg "systemMenu" qMenu];
    dynamic "systemMenu" [] ~ret:qMenu;
    dynamic "mdiArea" [] ~ret:qMdiArea;
    dynamic "windowStateChanged" [arg "oldState" qt'WindowStates;arg "newState" qt'WindowStates];
    dynamic "aboutToActivate" [];
    dynamic "showSystemMenu" [];
    dynamic "showShaded" [];
    slot "_q_enterInteractiveMode" [];
    slot "_q_processFocusChanged" [arg "" qWidget;arg "" qWidget];
    slot "_q_updateStaysOnTopHint" [];
    slot "showShaded" [];
    slot "showSystemMenu" [];
    signal "aboutToActivate" [];
    signal "windowStateChanged" [arg "" qt'WindowStates;arg "" qt'WindowStates];
  ]
let () = with_class qProgressBar [
    constructor "" [opt "parent" qWidget];
    dynamic "minimum" [] ~ret:int;
    dynamic "maximum" [] ~ret:int;
    dynamic "value" [] ~ret:int;
    dynamic "text" [] ~ret:qString;
    dynamic "setTextVisible" [arg "visible" bool];
    dynamic "isTextVisible" [] ~ret:bool;
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "alignment" qt'Alignment];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "setInvertedAppearance" [arg "invert" bool];
    dynamic "invertedAppearance" [] ~ret:bool;
    dynamic "setTextDirection" [arg "textDirection" qProgressBar'Direction];
    dynamic "textDirection" [] ~ret:qProgressBar'Direction;
    dynamic "setFormat" [arg "format" qString];
    dynamic "resetFormat" [];
    dynamic "format" [] ~ret:qString;
    dynamic "reset" [];
    dynamic "setRange" [arg "minimum" int;arg "maximum" int];
    dynamic "setMinimum" [arg "minimum" int];
    dynamic "setMaximum" [arg "maximum" int];
    dynamic "setValue" [arg "value" int];
    dynamic "setOrientation" [arg "arg0" qt'Orientation];
    dynamic "valueChanged" [arg "value" int];
    slot "reset" [];
    slot "setMaximum" [arg "" int];
    slot "setMinimum" [arg "" int];
    slot "setOrientation" [arg "" qt'Orientation];
    slot "setRange" [arg "" int;arg "" int];
    slot "setValue" [arg "" int];
    signal "valueChanged" [arg "" int];
  ]
let () = with_class qRubberBand [
    constructor "" [arg "s" qRubberBand'Shape;opt "p" qWidget];
    dynamic "shape" [] ~ret:qRubberBand'Shape;
  ]
let () = with_class qSizeGrip [
    constructor "" [opt "parent" qWidget];
    slot "_q_showIfNotHidden" [];
  ]
let () = with_class qSplashScreen [
    (*constructor "" [arg "pixmap" qPixmap;arg "f" qt'WindowFlags];*)
    (*constructor "" [opt "parent" qWidget;arg "pixmap" qPixmap;arg "f" qt'WindowFlags];*)
    (*dynamic "setPixmap" [arg "pixmap" qPixmap];*)
    (*dynamic "pixmap" [] ~ret:qPixmap;*)
    dynamic "finish" [arg "mainWin" qWidget];
    dynamic "message" [] ~ret:qString;
    dynamic "showMessage" [arg "message" qString;arg "alignment" int;arg "color" qColor];
    dynamic "clearMessage" [];
    dynamic "messageChanged" [arg "message" qString];
  ]
let () = with_class qStatusBar [
    constructor "" [opt "parent" qWidget];
    dynamic "addWidget" [arg "widget" qWidget;arg "stretch" int];
    dynamic "insertWidget" [arg "index" int;arg "widget" qWidget;arg "stretch" int] ~ret:int;
    dynamic "addPermanentWidget" [arg "widget" qWidget;arg "stretch" int];
    dynamic "insertPermanentWidget" [arg "index" int;arg "widget" qWidget;arg "stretch" int] ~ret:int;
    dynamic "removeWidget" [arg "widget" qWidget];
    dynamic "setSizeGripEnabled" [arg "arg0" bool];
    dynamic "isSizeGripEnabled" [] ~ret:bool;
    dynamic "currentMessage" [] ~ret:qString;
    dynamic "showMessage" [arg "message" qString;arg "timeout" int];
    dynamic "clearMessage" [];
    dynamic "messageChanged" [arg "message" qString];
    slot "clearMessage" [];
    slot "showMessage" [arg "" qString];
    slot "showMessage" [arg "" qString;arg "" int];
    signal "messageChanged" [arg "" qString];
  ]
let () = with_class qTabBar [
    constructor "" [opt "parent" qWidget];
    dynamic "shape" [] ~ret:qTabBar'Shape;
    dynamic "setShape" [arg "shape" qTabBar'Shape];
    dynamic "addTab" [arg "text" qString] ~ret:int;
    dynamic "addTab" [arg "icon" qIcon;arg "text" qString] ~ret:int;
    dynamic "insertTab" [arg "index" int;arg "text" qString] ~ret:int;
    dynamic "insertTab" [arg "index" int;arg "icon" qIcon;arg "text" qString] ~ret:int;
    dynamic "removeTab" [arg "index" int];
    dynamic "moveTab" [arg "from" int;arg "to" int];
    dynamic "isTabEnabled" [arg "index" int] ~ret:bool;
    dynamic "setTabEnabled" [arg "index" int;arg "enabled" bool];
    dynamic "tabText" [arg "index" int] ~ret:qString;
    dynamic "setTabText" [arg "index" int;arg "text" qString];
    dynamic "tabTextColor" [arg "index" int] ~ret:qColor;
    dynamic "setTabTextColor" [arg "index" int;arg "color" qColor];
    dynamic "tabIcon" [arg "index" int] ~ret:qIcon;
    dynamic "setTabIcon" [arg "index" int;arg "icon" qIcon];
    dynamic "elideMode" [] ~ret:qt'TextElideMode;
    dynamic "setElideMode" [arg "arg0" qt'TextElideMode];
    dynamic "setTabToolTip" [arg "index" int;arg "tip" qString];
    dynamic "tabToolTip" [arg "index" int] ~ret:qString;
    dynamic "setTabWhatsThis" [arg "index" int;arg "text" qString];
    dynamic "tabWhatsThis" [arg "index" int] ~ret:qString;
    dynamic "setTabData" [arg "index" int;arg "data" qVariant];
    dynamic "tabData" [arg "index" int] ~ret:qVariant;
    dynamic "tabRect" [arg "index" int] ~ret:qRect;
    dynamic "tabAt" [arg "position" qPoint] ~ret:int;
    dynamic "currentIndex" [] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "setDrawBase" [arg "drawTheBase" bool];
    dynamic "drawBase" [] ~ret:bool;
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "setIconSize" [arg "size" qSize];
    dynamic "usesScrollButtons" [] ~ret:bool;
    dynamic "setUsesScrollButtons" [arg "useButtons" bool];
    dynamic "tabsClosable" [] ~ret:bool;
    dynamic "setTabsClosable" [arg "closable" bool];
    dynamic "setTabButton" [arg "index" int;arg "position" qTabBar'ButtonPosition;arg "widget" qWidget];
    dynamic "tabButton" [arg "index" int;arg "position" qTabBar'ButtonPosition] ~ret:(optional qWidget);
    dynamic "selectionBehaviorOnRemove" [] ~ret:qTabBar'SelectionBehavior;
    dynamic "setSelectionBehaviorOnRemove" [arg "behavior" qTabBar'SelectionBehavior];
    dynamic "expanding" [] ~ret:bool;
    dynamic "setExpanding" [arg "enabled" bool];
    dynamic "isMovable" [] ~ret:bool;
    dynamic "setMovable" [arg "movable" bool];
    dynamic "documentMode" [] ~ret:bool;
    dynamic "setDocumentMode" [arg "set" bool];
    dynamic "autoHide" [] ~ret:bool;
    dynamic "setAutoHide" [arg "hide" bool];
    dynamic "changeCurrentOnDrag" [] ~ret:bool;
    dynamic "setChangeCurrentOnDrag" [arg "change" bool];
    dynamic "accessibleTabName" [arg "index" int] ~ret:qString;
    dynamic "setAccessibleTabName" [arg "index" int;arg "name" qString];
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "currentChanged" [arg "index" int];
    dynamic "tabCloseRequested" [arg "index" int];
    dynamic "tabMoved" [arg "from" int;arg "to" int];
    dynamic "tabBarClicked" [arg "index" int];
    dynamic "tabBarDoubleClicked" [arg "index" int];
    slot "_q_closeTab" [];
    slot "_q_scrollTabs" [];
    slot "setCurrentIndex" [arg "" int];
    signal "currentChanged" [arg "" int];
    signal "tabBarClicked" [arg "" int];
    signal "tabBarDoubleClicked" [arg "" int];
    signal "tabCloseRequested" [arg "" int];
    signal "tabMoved" [arg "" int;arg "" int];
  ]
let () = with_class qTabWidget [
    constructor "" [opt "parent" qWidget];
    dynamic "addTab" [arg "page" qWidget;arg "label" qString] ~ret:int;
    dynamic "addTab" [arg "page" qWidget;arg "icon" qIcon;arg "label" qString] ~ret:int;
    dynamic "insertTab" [arg "index" int;arg "page" qWidget;arg "label" qString] ~ret:int;
    dynamic "insertTab" [arg "index" int;arg "page" qWidget;arg "icon" qIcon;arg "label" qString] ~ret:int;
    dynamic "removeTab" [arg "index" int];
    dynamic "isTabEnabled" [arg "index" int] ~ret:bool;
    dynamic "setTabEnabled" [arg "index" int;arg "enable" bool];
    dynamic "tabText" [arg "index" int] ~ret:qString;
    dynamic "setTabText" [arg "index" int;arg "label" qString];
    dynamic "tabIcon" [arg "index" int] ~ret:qIcon;
    dynamic "setTabIcon" [arg "index" int;arg "icon" qIcon];
    dynamic "setTabToolTip" [arg "index" int;arg "tip" qString];
    dynamic "tabToolTip" [arg "index" int] ~ret:qString;
    dynamic "setTabWhatsThis" [arg "index" int;arg "text" qString];
    dynamic "tabWhatsThis" [arg "index" int] ~ret:qString;
    dynamic "currentIndex" [] ~ret:int;
    dynamic "currentWidget" [] ~ret:(optional qWidget);
    dynamic "widget" [arg "index" int] ~ret:(optional qWidget);
    dynamic "indexOf" [arg "w" qWidget] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "tabPosition" [] ~ret:qTabWidget'TabPosition;
    dynamic "setTabPosition" [arg "arg0" qTabWidget'TabPosition];
    dynamic "tabsClosable" [] ~ret:bool;
    dynamic "setTabsClosable" [arg "closeable" bool];
    dynamic "isMovable" [] ~ret:bool;
    dynamic "setMovable" [arg "movable" bool];
    dynamic "tabShape" [] ~ret:qTabWidget'TabShape;
    dynamic "setTabShape" [arg "s" qTabWidget'TabShape];
    dynamic "setCornerWidget" [arg "widget" qWidget;arg "corner" qt'Corner];
    dynamic "cornerWidget" [arg "corner" qt'Corner] ~ret:(optional qWidget);
    dynamic "elideMode" [] ~ret:qt'TextElideMode;
    dynamic "setElideMode" [arg "arg0" qt'TextElideMode];
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "setIconSize" [arg "size" qSize];
    dynamic "usesScrollButtons" [] ~ret:bool;
    dynamic "setUsesScrollButtons" [arg "useButtons" bool];
    dynamic "documentMode" [] ~ret:bool;
    dynamic "setDocumentMode" [arg "set" bool];
    dynamic "tabBarAutoHide" [] ~ret:bool;
    dynamic "setTabBarAutoHide" [arg "enabled" bool];
    dynamic "clear" [];
    dynamic "tabBar" [] ~ret:qTabBar;
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentWidget" [arg "widget" qWidget];
    dynamic "currentChanged" [arg "index" int];
    dynamic "tabCloseRequested" [arg "index" int];
    dynamic "tabBarClicked" [arg "index" int];
    dynamic "tabBarDoubleClicked" [arg "index" int];
    slot "_q_removeTab" [arg "" int];
    slot "_q_showTab" [arg "" int];
    slot "_q_tabMoved" [arg "" int;arg "" int];
    slot "setCurrentIndex" [arg "" int];
    (*  slot "setCurrentWidget" [qWidget*];*)
    signal "currentChanged" [arg "" int];
    signal "tabBarClicked" [arg "" int];
    signal "tabBarDoubleClicked" [arg "" int];
    signal "tabCloseRequested" [arg "" int];
  ]
let () = with_class qToolBar [
    constructor "" [arg "title" qString;opt "parent" qWidget];
    constructor "" [opt "parent" qWidget];
    dynamic "setMovable" [arg "movable" bool];
    dynamic "isMovable" [] ~ret:bool;
    dynamic "setAllowedAreas" [arg "areas" qt'ToolBarAreas];
    dynamic "allowedAreas" [] ~ret:qt'ToolBarAreas;
    dynamic "isAreaAllowed" [arg "area" qt'ToolBarArea] ~ret:bool;
    dynamic "setOrientation" [arg "orientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "clear" [];
    dynamic "addAction" [arg "text" qString] ~ret:qAction;
    dynamic "addAction" [arg "icon" qIcon;arg "text" qString] ~ret:qAction;
    (*dynamic "addAction" [arg "text" qString;arg "receiver" qObject;arg "member" char] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "receiver" qObject;arg "member" char] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "receiver" qObject;arg "method" pointerToMemberFunction] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "functor" functor] ~ret:qAction;*)
    (*dynamic "addAction" [arg "text" qString;arg "context" qObject;arg "functor" functor] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "receiver" qObject;arg "method" pointerToMemberFunction] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "functor" functor] ~ret:qAction;*)
    (*dynamic "addAction" [arg "icon" qIcon;arg "text" qString;arg "context" qObject;arg "functor" functor] ~ret:qAction;*)
    dynamic "addSeparator" [] ~ret:qAction;
    dynamic "insertSeparator" [arg "before" qAction] ~ret:qAction;
    dynamic "addWidget" [arg "widget" qWidget] ~ret:qAction;
    dynamic "insertWidget" [arg "before" qAction;arg "widget" qWidget] ~ret:qAction;
    dynamic "actionAt" [arg "p" qPoint] ~ret:qAction;
    dynamic "actionAt" [arg "x" int;arg "y" int] ~ret:qAction;
    dynamic "toggleViewAction" [] ~ret:qAction;
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "toolButtonStyle" [] ~ret:qt'ToolButtonStyle;
    dynamic "widgetForAction" [arg "action" qAction] ~ret:(optional qWidget);
    dynamic "isFloatable" [] ~ret:bool;
    dynamic "setFloatable" [arg "floatable" bool];
    dynamic "isFloating" [] ~ret:bool;
    dynamic "setIconSize" [arg "iconSize" qSize];
    dynamic "setToolButtonStyle" [arg "toolButtonStyle" qt'ToolButtonStyle];
    dynamic "actionTriggered" [arg "action" qAction];
    dynamic "movableChanged" [arg "movable" bool];
    dynamic "allowedAreasChanged" [arg "allowedAreas" qt'ToolBarAreas];
    dynamic "orientationChanged" [arg "orientation" qt'Orientation];
    dynamic "iconSizeChanged" [arg "iconSize" qSize];
    dynamic "toolButtonStyleChanged" [arg "toolButtonStyle" qt'ToolButtonStyle];
    dynamic "topLevelChanged" [arg "topLevel" bool];
    dynamic "visibilityChanged" [arg "visible" bool];
    slot "_q_toggleView" [arg "" bool];
    slot "_q_updateIconSize" [arg "" qSize];
    slot "_q_updateToolButtonStyle" [arg "" qt'ToolButtonStyle];
    slot "setIconSize" [arg "" qSize];
    slot "setToolButtonStyle" [arg "" qt'ToolButtonStyle];
    signal "actionTriggered" [arg "" qAction];
    signal "allowedAreasChanged" [arg "" qt'ToolBarAreas];
    signal "iconSizeChanged" [arg "" qSize];
    signal "movableChanged" [arg "" bool];
    signal "orientationChanged" [arg "" qt'Orientation];
    signal "toolButtonStyleChanged" [arg "" qt'ToolButtonStyle];
    signal "topLevelChanged" [arg "" bool];
    signal "visibilityChanged" [arg "" bool];
  ]
let () = with_class qStackedLayout [
    constructor "" [];
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "parentLayout" qLayout];
    dynamic "addWidget" [arg "widget" qWidget] ~ret:int;
    dynamic "insertWidget" [arg "index" int;arg "widget" qWidget] ~ret:int;
    dynamic "currentWidget" [] ~ret:(optional qWidget);
    dynamic "currentIndex" [] ~ret:int;
    dynamic "widget" [arg "index" int] ~ret:(optional qWidget);
    dynamic "stackingMode" [] ~ret:qStackedLayout'StackingMode;
    dynamic "setStackingMode" [arg "stackingMode" qStackedLayout'StackingMode];
    (*dynamic "addItem" [arg "item" qLayoutItem];*)
    dynamic "sizeHint" [] ~ret:qSize;
    (*dynamic "itemAt" [arg "index" int] ~ret:qLayoutItem;*)
    (*dynamic "takeAt" [arg "index" int] ~ret:qLayoutItem;*)
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "width" int] ~ret:int;
    dynamic "widgetRemoved" [arg "index" int];
    dynamic "currentChanged" [arg "index" int];
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentWidget" [arg "widget" qWidget];
  ]
let () = with_class qAbstractScrollArea [
    constructor "" [opt "parent" qWidget];
    dynamic "verticalScrollBarPolicy" [] ~ret:qt'ScrollBarPolicy;
    dynamic "setVerticalScrollBarPolicy" [arg "arg0" qt'ScrollBarPolicy];
    dynamic "verticalScrollBar" [] ~ret:qScrollBar;
    dynamic "setVerticalScrollBar" [arg "scrollBar" qScrollBar];
    dynamic "horizontalScrollBarPolicy" [] ~ret:qt'ScrollBarPolicy;
    dynamic "setHorizontalScrollBarPolicy" [arg "arg0" qt'ScrollBarPolicy];
    dynamic "horizontalScrollBar" [] ~ret:qScrollBar;
    dynamic "setHorizontalScrollBar" [arg "scrollBar" qScrollBar];
    dynamic "cornerWidget" [] ~ret:(optional qWidget);
    dynamic "setCornerWidget" [arg "widget" qWidget];
    dynamic "addScrollBarWidget" [arg "widget" qWidget;arg "alignment" qt'Alignment];
    (*dynamic "scrollBarWidgets" [arg "alignment" qt'Alignment] ~ret:qWidgetList;*)
    dynamic "viewport" [] ~ret:(optional qWidget);
    dynamic "setViewport" [arg "widget" qWidget];

    dynamic "setViewportMargins" [arg "left" int; arg "top" int; arg "right" int; arg "bottom" int] ~kind:`Protected;
    dynamic "setViewportMargins" [arg "margins" qMargins] ~kind:`Protected;
    dynamic "viewportMargins" [] ~ret:qMargins ~kind:`Protected;

    dynamic "maximumViewportSize" [] ~ret:qSize;
    dynamic "setupViewport" [arg "viewport" qWidget];
    dynamic "sizeAdjustPolicy" [] ~ret:qAbstractScrollArea'SizeAdjustPolicy;
    dynamic "setSizeAdjustPolicy" [arg "policy" qAbstractScrollArea'SizeAdjustPolicy];
    slot "_q_hslide" [arg "" int];
    slot "_q_showOrHideScrollBars" [];
    slot "_q_vslide" [arg "" int];
  ]
let () = with_class qLCDNumber [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "numDigits" int;opt "parent" qWidget];
    dynamic "smallDecimalPoint" [] ~ret:bool;
    dynamic "digitCount" [] ~ret:int;
    dynamic "setDigitCount" [arg "numDigits" int];
    dynamic "checkOverflow" [arg "num" double] ~ret:bool;
    dynamic "checkOverflow" [arg "num" int] ~ret:bool;
    dynamic "mode" [] ~ret:qLCDNumber'Mode;
    dynamic "setMode" [arg "arg0" qLCDNumber'Mode];
    dynamic "segmentStyle" [] ~ret:qLCDNumber'SegmentStyle;
    dynamic "setSegmentStyle" [arg "arg0" qLCDNumber'SegmentStyle];
    dynamic "value" [] ~ret:double;
    dynamic "intValue" [] ~ret:int;
    dynamic "display" [arg "s" qString];
    dynamic "display" [arg "num" int];
    dynamic "display" [arg "num" double];
    dynamic "setHexMode" [];
    dynamic "setDecMode" [];
    dynamic "setOctMode" [];
    dynamic "setBinMode" [];
    dynamic "setSmallDecimalPoint" [arg "arg0" bool];
    dynamic "overflow" [];
    slot "display" [arg "" double];
    slot "display" [arg "" int];
    slot "display" [arg "" qString];
    slot "setBinMode" [];
    slot "setDecMode" [];
    slot "setHexMode" [];
    slot "setOctMode" [];
    slot "setSmallDecimalPoint" [arg "" bool];
    signal "overflow" [];
  ]
let () = with_class qSplitter [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "orientation" qt'Orientation;opt "parent" qWidget];
    dynamic "addWidget" [arg "widget" qWidget];
    dynamic "insertWidget" [arg "index" int;arg "widget" qWidget];
    dynamic "replaceWidget" [arg "index" int;arg "widget" qWidget] ~ret:(optional qWidget);
    dynamic "setOrientation" [arg "arg0" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "setChildrenCollapsible" [arg "arg0" bool];
    dynamic "childrenCollapsible" [] ~ret:bool;
    dynamic "setCollapsible" [arg "index" int;arg "collapse" bool];
    dynamic "isCollapsible" [arg "index" int] ~ret:bool;
    dynamic "setOpaqueResize" [arg "opaque" bool];
    dynamic "opaqueResize" [] ~ret:bool;
    dynamic "refresh" [];
    (*dynamic "sizes" [] ~ret:qList<int>;*)
    (*dynamic "setSizes" [arg "list" qList<int>];*)
    dynamic "saveState" [] ~ret:qByteArray;
    dynamic "restoreState" [arg "state" qByteArray] ~ret:bool;
    dynamic "handleWidth" [] ~ret:int;
    dynamic "setHandleWidth" [arg "arg0" int];
    dynamic "indexOf" [arg "widget" qWidget] ~ret:int;
    dynamic "widget" [arg "index" int] ~ret:(optional qWidget);
    dynamic "count" [] ~ret:int;
    (*dynamic "getRange" [arg "index" int;arg "min" int;arg "max" int];*)
    dynamic "handle" [arg "index" int] ~ret:qSplitterHandle;
    dynamic "setStretchFactor" [arg "index" int;arg "stretch" int];
    dynamic "splitterMoved" [arg "pos" int;arg "index" int];
    signal "splitterMoved" [arg "" int;arg "" int];
  ]
let () = with_class qStackedWidget [
    constructor "" [opt "parent" qWidget];
    dynamic "addWidget" [arg "widget" qWidget] ~ret:int;
    dynamic "insertWidget" [arg "index" int;arg "widget" qWidget] ~ret:int;
    dynamic "removeWidget" [arg "widget" qWidget];
    dynamic "currentWidget" [] ~ret:(optional qWidget);
    dynamic "currentIndex" [] ~ret:int;
    dynamic "indexOf" [arg "widget" qWidget] ~ret:int;
    dynamic "widget" [arg "index" int] ~ret:(optional qWidget);
    dynamic "count" [] ~ret:int;
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentWidget" [arg "widget" qWidget];
    dynamic "currentChanged" [arg "index" int];
    dynamic "widgetRemoved" [arg "index" int];
    slot "setCurrentIndex" [arg "" int];
    slot "setCurrentWidget" [arg "" qWidget];
    signal "currentChanged" [arg "" int];
    signal "widgetRemoved" [arg "" int];
  ]
let () = with_class qToolBox [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "addItem" [arg "w" qWidget;arg "text" qString] ~ret:int;
    dynamic "addItem" [arg "widget" qWidget;arg "iconSet" qIcon;arg "text" qString] ~ret:int;
    dynamic "insertItem" [arg "index" int;arg "widget" qWidget;arg "text" qString] ~ret:int;
    dynamic "insertItem" [arg "index" int;arg "widget" qWidget;arg "icon" qIcon;arg "text" qString] ~ret:int;
    dynamic "removeItem" [arg "index" int];
    dynamic "setItemEnabled" [arg "index" int;arg "enabled" bool];
    dynamic "isItemEnabled" [arg "index" int] ~ret:bool;
    dynamic "setItemText" [arg "index" int;arg "text" qString];
    dynamic "itemText" [arg "index" int] ~ret:qString;
    dynamic "setItemIcon" [arg "index" int;arg "icon" qIcon];
    dynamic "itemIcon" [arg "index" int] ~ret:qIcon;
    dynamic "setItemToolTip" [arg "index" int;arg "toolTip" qString];
    dynamic "itemToolTip" [arg "index" int] ~ret:qString;
    dynamic "currentIndex" [] ~ret:int;
    dynamic "currentWidget" [] ~ret:(optional qWidget);
    dynamic "widget" [arg "index" int] ~ret:(optional qWidget);
    dynamic "indexOf" [arg "widget" qWidget] ~ret:int;
    dynamic "count" [] ~ret:int;
    dynamic "setCurrentIndex" [arg "index" int];
    dynamic "setCurrentWidget" [arg "widget" qWidget];
    dynamic "currentChanged" [arg "index" int];
    slot "_q_buttonClicked" [];
    slot "_q_widgetDestroyed" [arg "" qObject];
    slot "setCurrentIndex" [arg "" int];
    slot "setCurrentWidget" [arg "" qWidget];
    signal "currentChanged" [arg "" int];
  ]
let () = with_class qFontComboBox [
    constructor "" [opt "parent" qWidget];
    dynamic "setWritingSystem" [arg "arg0" qFontDatabase'WritingSystem];
    dynamic "writingSystem" [] ~ret:qFontDatabase'WritingSystem;
    dynamic "setFontFilters" [arg "filters" qFontComboBox'FontFilters];
    dynamic "fontFilters" [] ~ret:qFontComboBox'FontFilters;
    dynamic "currentFont" [] ~ret:qFont;
    dynamic "setCurrentFont" [arg "f" qFont];
    dynamic "currentFontChanged" [arg "font" qFont];
    slot "_q_currentChanged" [arg "" qString];
    slot "_q_updateModel" [];
    slot "setCurrentFont" [arg "" qFont];
    signal "currentFontChanged" [arg "" qFont];
  ]
let () = with_class qDateTimeEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "datetime" qDateTime;opt "parent" qWidget];
    constructor "" [arg "date" qDate;opt "parent" qWidget];
    constructor "" [arg "time" qTime;opt "parent" qWidget];
    dynamic "dateTime" [] ~ret:qDateTime;
    dynamic "date" [] ~ret:qDate;
    dynamic "time" [] ~ret:qTime;
    dynamic "minimumDateTime" [] ~ret:qDateTime;
    dynamic "clearMinimumDateTime" [];
    dynamic "setMinimumDateTime" [arg "dt" qDateTime];
    dynamic "maximumDateTime" [] ~ret:qDateTime;
    dynamic "clearMaximumDateTime" [];
    dynamic "setMaximumDateTime" [arg "dt" qDateTime];
    dynamic "setDateTimeRange" [arg "min" qDateTime;arg "max" qDateTime];
    dynamic "minimumDate" [] ~ret:qDate;
    dynamic "setMinimumDate" [arg "min" qDate];
    dynamic "clearMinimumDate" [];
    dynamic "maximumDate" [] ~ret:qDate;
    dynamic "setMaximumDate" [arg "max" qDate];
    dynamic "clearMaximumDate" [];
    dynamic "setDateRange" [arg "min" qDate;arg "max" qDate];
    dynamic "minimumTime" [] ~ret:qTime;
    dynamic "setMinimumTime" [arg "min" qTime];
    dynamic "clearMinimumTime" [];
    dynamic "maximumTime" [] ~ret:qTime;
    dynamic "setMaximumTime" [arg "max" qTime];
    dynamic "clearMaximumTime" [];
    dynamic "setTimeRange" [arg "min" qTime;arg "max" qTime];
    dynamic "displayedSections" [] ~ret:qDateTimeEdit'Sections;
    dynamic "currentSection" [] ~ret:qDateTimeEdit'Section;
    dynamic "sectionAt" [arg "index" int] ~ret:qDateTimeEdit'Section;
    dynamic "setCurrentSection" [arg "section" qDateTimeEdit'Section];
    dynamic "currentSectionIndex" [] ~ret:int;
    dynamic "setCurrentSectionIndex" [arg "index" int];
    dynamic "calendarWidget" [] ~ret:qCalendarWidget;
    dynamic "setCalendarWidget" [arg "calendarWidget" qCalendarWidget];
    dynamic "sectionCount" [] ~ret:int;
    dynamic "setSelectedSection" [arg "section" qDateTimeEdit'Section];
    dynamic "sectionText" [arg "section" qDateTimeEdit'Section] ~ret:qString;
    dynamic "displayFormat" [] ~ret:qString;
    dynamic "setDisplayFormat" [arg "format" qString];
    dynamic "calendarPopup" [] ~ret:bool;
    dynamic "setCalendarPopup" [arg "enable" bool];
    dynamic "timeSpec" [] ~ret:qt'TimeSpec;
    dynamic "setTimeSpec" [arg "spec" qt'TimeSpec];
    dynamic "dateTimeChanged" [arg "datetime" qDateTime];
    dynamic "timeChanged" [arg "time" qTime];
    dynamic "dateChanged" [arg "date" qDate];
    dynamic "setDateTime" [arg "dateTime" qDateTime];
    dynamic "setDate" [arg "date" qDate];
    dynamic "setTime" [arg "time" qTime];
  ]
let () = with_class qSpinBox [
    constructor "" [opt "parent" qWidget];
    dynamic "value" [] ~ret:int;
    dynamic "prefix" [] ~ret:qString;
    dynamic "setPrefix" [arg "prefix" qString];
    dynamic "suffix" [] ~ret:qString;
    dynamic "setSuffix" [arg "suffix" qString];
    dynamic "cleanText" [] ~ret:qString;
    dynamic "singleStep" [] ~ret:int;
    dynamic "setSingleStep" [arg "val" int];
    dynamic "minimum" [] ~ret:int;
    dynamic "setMinimum" [arg "min" int];
    dynamic "maximum" [] ~ret:int;
    dynamic "setMaximum" [arg "max" int];
    dynamic "setRange" [arg "minimum" int;arg "maximum" int];
    dynamic "displayIntegerBase" [] ~ret:int;
    dynamic "setDisplayIntegerBase" [arg "base" int];
    dynamic "setValue" [arg "val" int];
    dynamic "valueChanged" [arg "i" int];
    dynamic "valueChanged" [arg "text" qString];
    slot "setValue" [arg "" int];
    signal "valueChanged" [arg "" int];
    signal "valueChanged" [arg "" qString];
  ]
let () = with_class qDoubleSpinBox [
    constructor "" [opt "parent" qWidget];
    dynamic "value" [] ~ret:double;
    dynamic "prefix" [] ~ret:qString;
    dynamic "setPrefix" [arg "prefix" qString];
    dynamic "suffix" [] ~ret:qString;
    dynamic "setSuffix" [arg "suffix" qString];
    dynamic "cleanText" [] ~ret:qString;
    dynamic "singleStep" [] ~ret:double;
    dynamic "setSingleStep" [arg "val" double];
    dynamic "minimum" [] ~ret:double;
    dynamic "setMinimum" [arg "min" double];
    dynamic "maximum" [] ~ret:double;
    dynamic "setMaximum" [arg "max" double];
    dynamic "setRange" [arg "minimum" double;arg "maximum" double];
    dynamic "decimals" [] ~ret:int;
    dynamic "setDecimals" [arg "prec" int];
    (*dynamic "validate" [arg "text" qString;arg "pos" int] ~ret:qValidator'State;*)
    dynamic "valueFromText" [arg "text" qString] ~ret:double;
    dynamic "textFromValue" [arg "value" double] ~ret:qString;
    (*dynamic "fixup" [arg "input" qString];*)
    dynamic "setValue" [arg "val" double];
    dynamic "valueChanged" [arg "d" double];
    dynamic "valueChanged" [arg "text" qString];
    slot "setValue" [arg "" double];
    signal "valueChanged" [arg "" double];
    signal "valueChanged" [arg "" qString];
  ]
let () = with_class qDial [
    constructor "" [opt "parent" qWidget];
    dynamic "wrapping" [] ~ret:bool;
    dynamic "notchSize" [] ~ret:int;
    dynamic "setNotchTarget" [arg "target" double];
    dynamic "notchTarget" [] ~ret:qreal;
    dynamic "notchesVisible" [] ~ret:bool;
    dynamic "setNotchesVisible" [arg "visible" bool];
    dynamic "setWrapping" [arg "on" bool];
  ]
let () = with_class qScrollBar [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "orientation" qt'Orientation;opt "parent" qWidget];
    dynamic "event" [arg "event" qEvent] ~ret:bool;
  ]
let () = with_class qSlider [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "orientation" qt'Orientation;opt "parent" qWidget];
    dynamic "setTickPosition" [arg "position" qSlider'TickPosition];
    dynamic "tickPosition" [] ~ret:qSlider'TickPosition;
    dynamic "setTickInterval" [arg "ti" int];
    dynamic "tickInterval" [] ~ret:int;
    dynamic "event" [arg "event" qEvent] ~ret:bool;
  ]
let () = with_class qCheckBox [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
    dynamic "setTristate" [arg "y" bool];
    dynamic "isTristate" [] ~ret:bool;
    dynamic "checkState" [] ~ret:qt'CheckState;
    dynamic "setCheckState" [arg "state" qt'CheckState];
    dynamic "stateChanged" [arg "state" int];
    signal "stateChanged" [arg "" int];
  ]
let () = with_class qRadioButton [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
  ]
let () = with_class qToolButton [
    constructor "" [opt "parent" qWidget];
    dynamic "toolButtonStyle" [] ~ret:qt'ToolButtonStyle;
    dynamic "arrowType" [] ~ret:qt'ArrowType;
    dynamic "setArrowType" [arg "type" qt'ArrowType];
    dynamic "setMenu" [arg "menu" qMenu];
    dynamic "menu" [] ~ret:qMenu;
    dynamic "setPopupMode" [arg "mode" qToolButton'ToolButtonPopupMode];
    dynamic "popupMode" [] ~ret:qToolButton'ToolButtonPopupMode;
    dynamic "defaultAction" [] ~ret:qAction;
    dynamic "setAutoRaise" [arg "enable" bool];
    dynamic "autoRaise" [] ~ret:bool;
    dynamic "showMenu" [];
    dynamic "setToolButtonStyle" [arg "style" qt'ToolButtonStyle];
    dynamic "setDefaultAction" [arg "action" qAction];
    dynamic "triggered" [arg "action" qAction];
    slot "_q_actionTriggered" [];
    slot "_q_buttonPressed" [];
    slot "_q_buttonReleased" [];
    slot "_q_menuTriggered" [arg "" qAction];
    slot "_q_updateButtonDown" [];
    slot "setDefaultAction" [arg "" qAction];
    slot "setToolButtonStyle" [arg "" qt'ToolButtonStyle];
    slot "showMenu" [];
    signal "triggered" [arg "" qAction];
  ]
let () = with_class qColorDialog [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "initial" qColor;opt "parent" qWidget];
    dynamic "setCurrentColor" [arg "color" qColor];
    dynamic "currentColor" [] ~ret:qColor;
    dynamic "selectedColor" [] ~ret:qColor;
    dynamic "setOption" [arg "option" qColorDialog'ColorDialogOption;arg "on" bool];
    dynamic "testOption" [arg "option" qColorDialog'ColorDialogOption] ~ret:bool;
    dynamic "setOptions" [arg "options" qColorDialog'ColorDialogOptions];
    dynamic "options" [] ~ret:qColorDialog'ColorDialogOptions;
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    static  "getColor" [arg "initial" qColor;arg "parent" qWidget;arg "title" qString;arg "options" qColorDialog'ColorDialogOptions] ~ret:qColor;
    (*static  "getRgba" [arg "initial" qRgb;arg "ok" bool;arg "parent" qWidget] ~ret:qRgb;*)
    static  "customCount" [] ~ret:int;
    static  "customColor" [arg "index" int] ~ret:qColor;
    static  "setCustomColor" [arg "index" int;arg "color" qColor];
    static  "standardColor" [arg "index" int] ~ret:qColor;
    static  "setStandardColor" [arg "index" int;arg "color" qColor];
    dynamic "currentColorChanged" [arg "color" qColor];
    dynamic "colorSelected" [arg "color" qColor];
    slot "_q_addCustom" [];
    (*slot "_q_newColorTypedIn" [arg "" qRgb];*)
    slot "_q_newCustom" [arg "" int;arg "" int];
    slot "_q_newHsv" [arg "" int;arg "" int;arg "" int];
    slot "_q_newStandard" [arg "" int;arg "" int];
    slot "_q_nextCustom" [arg "" int;arg "" int];
    slot "_q_pickScreenColor" [];
    slot "_q_updateColorPicking" [];
    signal "colorSelected" [arg "" qColor];
    signal "currentColorChanged" [arg "" qColor];
  ]
let () = with_class qErrorMessage [
    constructor "" [opt "parent" qWidget];
    static  "qtHandler" [] ~ret:qErrorMessage;
    dynamic "showMessage" [arg "message" qString];
    dynamic "showMessage" [arg "message" qString;arg "type" qString];
  ]
let () = with_class qFileDialog [
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    constructor "" [opt "parent" qWidget;arg "caption" qString;arg "directory" qString;arg "filter" qString];
    dynamic "setDirectory" [arg "directory" qString];
    dynamic "setDirectory" [arg "directory" qDir];
    dynamic "directory" [] ~ret:qDir;
    dynamic "setDirectoryUrl" [arg "directory" qUrl];
    dynamic "directoryUrl" [] ~ret:qUrl;
    dynamic "selectFile" [arg "filename" qString];
    dynamic "selectedFiles" [] ~ret:qStringList;
    dynamic "selectUrl" [arg "url" qUrl];
    (*dynamic "selectedUrls" [] ~ret:qList<QUrl>;*)
    dynamic "setNameFilterDetailsVisible" [arg "enabled" bool];
    dynamic "isNameFilterDetailsVisible" [] ~ret:bool;
    dynamic "setNameFilter" [arg "filter" qString];
    dynamic "setNameFilters" [arg "filters" qStringList];
    dynamic "nameFilters" [] ~ret:qStringList;
    dynamic "selectNameFilter" [arg "filter" qString];
    dynamic "selectedMimeTypeFilter" [] ~ret:qString;
    dynamic "selectedNameFilter" [] ~ret:qString;
    dynamic "setMimeTypeFilters" [arg "filters" qStringList];
    dynamic "mimeTypeFilters" [] ~ret:qStringList;
    dynamic "selectMimeTypeFilter" [arg "filter" qString];
    dynamic "filter" [] ~ret:qDir'Filters;
    dynamic "setFilter" [arg "filters" qDir'Filters];
    dynamic "setViewMode" [arg "mode" qFileDialog'ViewMode];
    dynamic "viewMode" [] ~ret:qFileDialog'ViewMode;
    dynamic "setFileMode" [arg "mode" qFileDialog'FileMode];
    dynamic "fileMode" [] ~ret:qFileDialog'FileMode;
    dynamic "setAcceptMode" [arg "mode" qFileDialog'AcceptMode];
    dynamic "acceptMode" [] ~ret:qFileDialog'AcceptMode;
    dynamic "setReadOnly" [arg "enabled" bool];
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "setResolveSymlinks" [arg "enabled" bool];
    dynamic "resolveSymlinks" [] ~ret:bool;
    (*dynamic "setSidebarUrls" [arg "urls" qList<QUrl>];*)
    (*dynamic "sidebarUrls" [] ~ret:qList<QUrl>;*)
    dynamic "saveState" [] ~ret:qByteArray;
    dynamic "restoreState" [arg "state" qByteArray] ~ret:bool;
    dynamic "setConfirmOverwrite" [arg "enabled" bool];
    dynamic "confirmOverwrite" [] ~ret:bool;
    dynamic "setDefaultSuffix" [arg "suffix" qString];
    dynamic "defaultSuffix" [] ~ret:qString;
    dynamic "setHistory" [arg "paths" qStringList];
    dynamic "history" [] ~ret:qStringList;
    dynamic "setItemDelegate" [arg "delegate" qAbstractItemDelegate];
    dynamic "itemDelegate" [] ~ret:qAbstractItemDelegate;
    (*dynamic "setIconProvider" [arg "provider" qFileIconProvider];*)
    (*dynamic "iconProvider" [] ~ret:qFileIconProvider;*)
    dynamic "setLabelText" [arg "label" qFileDialog'DialogLabel;arg "text" qString];
    dynamic "labelText" [arg "label" qFileDialog'DialogLabel] ~ret:qString;
    dynamic "setSupportedSchemes" [arg "schemes" qStringList];
    dynamic "supportedSchemes" [] ~ret:qStringList;
    dynamic "setProxyModel" [arg "proxyModel" qAbstractProxyModel];
    dynamic "proxyModel" [] ~ret:qAbstractProxyModel;
    dynamic "setOption" [arg "option" qFileDialog'Option;arg "on" bool];
    dynamic "testOption" [arg "option" qFileDialog'Option] ~ret:bool;
    dynamic "setOptions" [arg "options" qFileDialog'Options];
    dynamic "options" [] ~ret:qFileDialog'Options;
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    dynamic "fileSelected" [arg "file" qString];
    dynamic "filesSelected" [arg "selected" qStringList];
    dynamic "currentChanged" [arg "path" qString];
    dynamic "directoryEntered" [arg "directory" qString];
    dynamic "urlSelected" [arg "url" qUrl];
    (*dynamic "urlsSelected" [arg "urls" qList<QUrl>];*)
    dynamic "currentUrlChanged" [arg "url" qUrl];
    dynamic "directoryUrlEntered" [arg "directory" qUrl];
    dynamic "filterSelected" [arg "filter" qString];
    static  "getOpenFileName" [arg "parent" qWidget;arg "caption" qString;arg "dir" qString;arg "filter" qString; (*arg "selectedFilter" qString; arg "options" qFileDialog'Options*)] ~ret:qString;
    (*static  "getOpenFileUrl" [arg "parent" qWidget;arg "caption" qString;arg "dir" qUrl;arg "filter" qString;arg "selectedFilter" qString;arg "options" qFileDialog'Options;arg "supportedSchemes" qStringList] ~ret:qUrl;*)
    static  "getSaveFileName" [arg "parent" qWidget;arg "caption" qString;arg "dir" qString;arg "filter" qString; (*arg "selectedFilter" qString; arg "options" qFileDialog'Options*)] ~ret:qString;
    (*static  "getSaveFileUrl" [arg "parent" qWidget;arg "caption" qString;arg "dir" qUrl;arg "filter" qString;arg "selectedFilter" qString;arg "options" qFileDialog'Options;arg "supportedSchemes" qStringList] ~ret:qUrl;*)
    (*static  "getExistingDirectory" [arg "parent" qWidget;arg "caption" qString;arg "dir" qString;arg "options" qFileDialog'Options] ~ret:qString;*)
    (*static  "getExistingDirectoryUrl" [arg "parent" qWidget;arg "caption" qString;arg "dir" qUrl;arg "options" qFileDialog'Options;arg "supportedSchemes" qStringList] ~ret:qUrl;*)
    (*static  "getOpenFileNames" [arg "parent" qWidget;arg "caption" qString;arg "dir" qString;arg "filter" qString;arg "selectedFilter" qString;arg "options" qFileDialog'Options] ~ret:qStringList;*)
    (*static  "getOpenFileUrls" [arg "parent" qWidget;arg "caption" qString;arg "dir" qUrl;arg "filter" qString;arg "selectedFilter" qString;arg "options" options;arg "supportedSchemes" qStringList] ~ret:qList<QUrl>;*)
    slot "_q_autoCompleteFileName" [arg "" qString];
    slot "_q_createDirectory" [];
    slot "_q_currentChanged" [arg "" qModelIndex];
    slot "_q_deleteCurrent" [];
    slot "_q_emitUrlSelected" [arg "" qUrl];
    (*slot "_q_emitUrlsSelected" [qList<QUrl>];*)
    slot "_q_enterDirectory" [arg "" qModelIndex];
    slot "_q_fileRenamed" [arg "" qString;arg "" qString;arg "" qString];
    slot "_q_goHome" [];
    slot "_q_goToDirectory" [arg "" qString];
    slot "_q_goToUrl" [arg "" qUrl];
    slot "_q_nativeCurrentChanged" [arg "" qUrl];
    slot "_q_nativeEnterDirectory" [arg "" qUrl];
    slot "_q_navigateBackward" [];
    slot "_q_navigateForward" [];
    slot "_q_navigateToParent" [];
    slot "_q_pathChanged" [arg "" qString];
    slot "_q_renameCurrent" [];
    slot "_q_rowsInserted" [arg "" qModelIndex];
    slot "_q_selectionChanged" [];
    slot "_q_showContextMenu" [arg "" qPoint];
    slot "_q_showDetailsView" [];
    slot "_q_showHeader" [arg "" qAction];
    slot "_q_showHidden" [];
    slot "_q_showListView" [];
    slot "_q_updateOkButton" [];
    slot "_q_useNameFilter" [arg "" int];
    signal "currentChanged" [arg "" qString];
    signal "currentUrlChanged" [arg "" qUrl];
    signal "directoryEntered" [arg "" qString];
    signal "directoryUrlEntered" [arg "" qUrl];
    signal "fileSelected" [arg "" qString];
    signal "filesSelected" [arg "" qStringList];
    signal "filterSelected" [arg "" qString];
    signal "urlSelected" [arg "" qUrl];
    (*signal "urlsSelected" [qList<QUrl>];*)
  ]
let () = with_class qFontDialog [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "initial" qFont;opt "parent" qWidget];
    dynamic "setCurrentFont" [arg "font" qFont];
    dynamic "currentFont" [] ~ret:qFont;
    dynamic "selectedFont" [] ~ret:qFont;
    dynamic "setOption" [arg "option" qFontDialog'FontDialogOption;arg "on" bool];
    dynamic "testOption" [arg "option" qFontDialog'FontDialogOption] ~ret:bool;
    dynamic "setOptions" [arg "options" qFontDialog'FontDialogOptions];
    dynamic "options" [] ~ret:qFontDialog'FontDialogOptions;
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    (*static  "getFont" [arg "ok" bool;arg "parent" qWidget] ~ret:qFont;*)
    (*static  "getFont" [arg "ok" bool;arg "initial" qFont;arg "parent" qWidget;arg "title" qString;arg "options" qFontDialog'FontDialogOptions] ~ret:qFont;*)
    dynamic "currentFontChanged" [arg "font" qFont];
    dynamic "fontSelected" [arg "font" qFont];
    slot "_q_familyHighlighted" [arg "" int];
    slot "_q_sizeChanged" [arg "" qString];
    slot "_q_sizeHighlighted" [arg "" int];
    slot "_q_styleHighlighted" [arg "" int];
    slot "_q_updateSample" [];
    slot "_q_writingSystemHighlighted" [arg "" int];
    signal "currentFontChanged" [arg "" qFont];
    signal "fontSelected" [arg "" qFont];
  ]
let () = with_class qInputDialog [
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    dynamic "setInputMode" [arg "mode" qInputDialog'InputMode];
    dynamic "inputMode" [] ~ret:qInputDialog'InputMode;
    dynamic "setLabelText" [arg "text" qString];
    dynamic "labelText" [] ~ret:qString;
    dynamic "setOption" [arg "option" qInputDialog'InputDialogOption;arg "on" bool];
    dynamic "testOption" [arg "option" qInputDialog'InputDialogOption] ~ret:bool;
    dynamic "setOptions" [arg "options" qInputDialog'InputDialogOptions];
    dynamic "options" [] ~ret:qInputDialog'InputDialogOptions;
    dynamic "setTextValue" [arg "text" qString];
    dynamic "textValue" [] ~ret:qString;
    dynamic "setTextEchoMode" [arg "mode" qLineEdit'EchoMode];
    dynamic "textEchoMode" [] ~ret:qLineEdit'EchoMode;
    dynamic "setComboBoxEditable" [arg "editable" bool];
    dynamic "isComboBoxEditable" [] ~ret:bool;
    dynamic "setComboBoxItems" [arg "items" qStringList];
    dynamic "comboBoxItems" [] ~ret:qStringList;
    dynamic "setIntValue" [arg "value" int];
    dynamic "intValue" [] ~ret:int;
    dynamic "setIntMinimum" [arg "min" int];
    dynamic "intMinimum" [] ~ret:int;
    dynamic "setIntMaximum" [arg "max" int];
    dynamic "intMaximum" [] ~ret:int;
    dynamic "setIntRange" [arg "min" int;arg "max" int];
    dynamic "setIntStep" [arg "step" int];
    dynamic "intStep" [] ~ret:int;
    dynamic "setDoubleValue" [arg "value" double];
    dynamic "doubleValue" [] ~ret:double;
    dynamic "setDoubleMinimum" [arg "min" double];
    dynamic "doubleMinimum" [] ~ret:double;
    dynamic "setDoubleMaximum" [arg "max" double];
    dynamic "doubleMaximum" [] ~ret:double;
    dynamic "setDoubleRange" [arg "min" double;arg "max" double];
    dynamic "setDoubleDecimals" [arg "decimals" int];
    dynamic "doubleDecimals" [] ~ret:int;
    dynamic "setOkButtonText" [arg "text" qString];
    dynamic "okButtonText" [] ~ret:qString;
    dynamic "setCancelButtonText" [arg "text" qString];
    dynamic "cancelButtonText" [] ~ret:qString;
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    (*static  "getText" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "mode" qLineEdit'EchoMode;arg "text" qString;arg "ok" bool;arg "flags" qt'WindowFlags;arg "inputMethodHints" qt'InputMethodHints] ~ret:qString;*)
    (*static  "getMultiLineText" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "text" qString;arg "ok" bool;arg "flags" qt'WindowFlags;arg "inputMethodHints" qt'InputMethodHints] ~ret:qString;*)
    (*static  "getItem" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "items" qStringList;arg "current" int;arg "editable" bool;arg "ok" bool;arg "flags" qt'WindowFlags;arg "inputMethodHints" qt'InputMethodHints] ~ret:qString;*)
    (*static  "getInt" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "value" int;arg "min" int;arg "max" int;arg "step" int;arg "ok" bool;arg "flags" qt'WindowFlags] ~ret:int;*)
    (*static  "getDouble" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "value" double;arg "min" double;arg "max" double;arg "decimals" int;arg "ok" bool;arg "flags" qt'WindowFlags] ~ret:double;*)
    (*static  "getInteger" [arg "parent" qWidget;arg "title" qString;arg "label" qString;arg "value" int;arg "min" int;arg "max" int;arg "step" int;arg "ok" bool;arg "flags" qt'WindowFlags] ~ret:int;*)
    dynamic "textValueChanged" [arg "text" qString];
    dynamic "textValueSelected" [arg "text" qString];
    dynamic "intValueChanged" [arg "value" int];
    dynamic "intValueSelected" [arg "value" int];
    dynamic "doubleValueChanged" [arg "value" double];
    dynamic "doubleValueSelected" [arg "value" double];
    slot "_q_currentRowChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_plainTextEditTextChanged" [];
    slot "_q_textChanged" [arg "" qString];
    signal "doubleValueChanged" [arg "" float];
    signal "doubleValueSelected" [arg "" float];
    signal "intValueChanged" [arg "" int];
    signal "intValueSelected" [arg "" int];
    signal "textValueChanged" [arg "" qString];
    signal "textValueSelected" [arg "" qString];
  ]
let () = with_class qMessageBox [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "icon" qMessageBox'Icon;arg "title" qString;arg "text" qString;arg "buttons" qMessageBox'StandardButtons;opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "addButton" [arg "button" qAbstractButton;arg "role" qMessageBox'ButtonRole];
    dynamic "addButton" [arg "text" qString;arg "role" qMessageBox'ButtonRole] ~ret:qPushButton;
    dynamic "addButton" [arg "button" qMessageBox'StandardButton] ~ret:qPushButton;
    dynamic "removeButton" [arg "button" qAbstractButton];
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    (*dynamic "buttons" [] ~ret:qList<QAbstractButton *>;*)
    dynamic "buttonRole" [arg "button" qAbstractButton] ~ret:qMessageBox'ButtonRole;
    dynamic "setStandardButtons" [arg "buttons" qMessageBox'StandardButtons];
    dynamic "standardButtons" [] ~ret:qMessageBox'StandardButtons;
    dynamic "standardButton" [arg "button" qAbstractButton] ~ret:qMessageBox'StandardButton;
    dynamic "button" [arg "which" qMessageBox'StandardButton] ~ret:qAbstractButton;
    dynamic "defaultButton" [] ~ret:qPushButton;
    dynamic "setDefaultButton" [arg "button" qPushButton];
    dynamic "setDefaultButton" [arg "button" qMessageBox'StandardButton];
    dynamic "escapeButton" [] ~ret:qAbstractButton;
    dynamic "setEscapeButton" [arg "button" qAbstractButton];
    dynamic "setEscapeButton" [arg "button" qMessageBox'StandardButton];
    dynamic "clickedButton" [] ~ret:qAbstractButton;
    dynamic "text" [] ~ret:qString;
    dynamic "setText" [arg "text" qString];
    dynamic "icon" [] ~ret:qMessageBox'Icon;
    dynamic "setIcon" [arg "arg0" qMessageBox'Icon];
    (*dynamic "iconPixmap" [] ~ret:qPixmap;*)
    (*dynamic "setIconPixmap" [arg "pixmap" qPixmap];*)
    dynamic "textFormat" [] ~ret:qt'TextFormat;
    dynamic "setTextFormat" [arg "format" qt'TextFormat];
    dynamic "setTextInteractionFlags" [arg "flags" qt'TextInteractionFlags];
    dynamic "textInteractionFlags" [] ~ret:qt'TextInteractionFlags;
    dynamic "setCheckBox" [arg "cb" qCheckBox];
    dynamic "checkBox" [] ~ret:qCheckBox;
    static  "information" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "buttons" qMessageBox'StandardButtons; arg "defaultButton" qMessageBox'StandardButton] ~ret:qMessageBox'StandardButton;
    static  "question" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "buttons" qMessageBox'StandardButtons; arg "defaultButton" qMessageBox'StandardButton] ~ret:qMessageBox'StandardButton;
    static  "warning" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "buttons" qMessageBox'StandardButtons; arg "defaultButton" qMessageBox'StandardButton] ~ret:qMessageBox'StandardButton;
    static  "critical" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "buttons" qMessageBox'StandardButtons; arg "defaultButton" qMessageBox'StandardButton] ~ret:qMessageBox'StandardButton;
    static  "about" [arg "parent" qWidget; arg "title" qString; arg "text" qString];
    static  "aboutQt" [arg "parent" qWidget; arg "title" qString];
    constructor "" [arg "title" qString; arg "text" qString; arg "icon" qMessageBox'Icon; arg "button0" int; arg "button1" int; arg "button2" int; opt "parent" qWidget; arg "f" qt'WindowFlags];
    static  "information" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0" int; arg "button1" int; arg "button2" int] ~ret:int;
    static  "information" [arg "parent" qWidget; arg "title" qString;  arg "text" qString; arg "button0Text" qString; arg "button1Text" qString; arg "button2Text" qString; arg "defaultButtonNumber" int; arg "escapeButtonNumber" int] ~ret:int;
    static  "question" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0" int; arg "button1" int; arg "button2" int] ~ret:int;
    static  "question" [arg "parent" qWidget;  arg "title" qString; arg "text" qString; arg "button0Text" qString; arg "button1Text" qString; arg "button2Text" qString; arg "defaultButtonNumber" int; arg "escapeButtonNumber" int] ~ret:int;
    static  "warning" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0" int; arg "button1" int; arg "button2" int] ~ret:int;
    static  "warning" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0Text" qString; arg "button1Text" qString; arg "button2Text" qString; arg "defaultButtonNumber" int; arg "escapeButtonNumber" int] ~ret:int;
    static  "critical" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0" int; arg "button1" int; arg "button2" int] ~ret:int;
    static  "critical" [arg "parent" qWidget; arg "title" qString; arg "text" qString; arg "button0Text" qString; arg "button1Text" qString; arg "button2Text" qString; arg "defaultButtonNumber" int; arg "escapeButtonNumber" int] ~ret:int;
    dynamic "buttonText" [arg "button" int] ~ret:qString;
    dynamic "setButtonText" [arg "button" int; arg "text" qString];
    dynamic "informativeText" [] ~ret:qString;
    dynamic "setInformativeText" [arg "text" qString];
    dynamic "detailedText" [] ~ret:qString;
    dynamic "setDetailedText" [arg "text" qString];
    dynamic "setWindowModality" [arg "windowModality" qt'WindowModality];
    (*static  "standardIcon" [arg "icon" qMessageBox'Icon] ~ret:qPixmap;*)
    dynamic "buttonClicked" [arg "button" qAbstractButton];
    signal "buttonClicked" [arg "" qAbstractButton];
    slot "_q_buttonClicked" [arg "" qAbstractButton];
    (*slot "_q_clicked" [arg "" qPlatformDialogHelper'StandardButton;arg "" qPlatformDialogHelper'ButtonRole];*)
  ]
let () = with_class qProgressDialog [
    constructor "" [opt "parent" qWidget;arg "f" qt'WindowFlags];
    constructor "" [arg "labelText" qString;arg "cancelButtonText" qString;arg "minimum" int;arg "maximum" int;opt "parent" qWidget;arg "f" qt'WindowFlags];
    dynamic "setLabel" [arg "label" qLabel];
    dynamic "setCancelButton" [arg "cancelButton" qPushButton];
    dynamic "setBar" [arg "bar" qProgressBar];
    dynamic "wasCanceled" [] ~ret:bool;
    dynamic "minimum" [] ~ret:int;
    dynamic "maximum" [] ~ret:int;
    dynamic "value" [] ~ret:int;
    dynamic "labelText" [] ~ret:qString;
    dynamic "minimumDuration" [] ~ret:int;
    dynamic "setAutoReset" [arg "reset" bool];
    dynamic "autoReset" [] ~ret:bool;
    dynamic "setAutoClose" [arg "close" bool];
    dynamic "autoClose" [] ~ret:bool;
    (*dynamic "open" [arg "receiver" qObject;arg "member" char];*)
    dynamic "cancel" [];
    dynamic "reset" [];
    dynamic "setMaximum" [arg "maximum" int];
    dynamic "setMinimum" [arg "minimum" int];
    dynamic "setRange" [arg "minimum" int;arg "maximum" int];
    dynamic "setValue" [arg "progress" int];
    dynamic "setLabelText" [arg "text" qString];
    dynamic "setCancelButtonText" [arg "cancelButtonText" qString];
    dynamic "setMinimumDuration" [arg "ms" int];
    dynamic "canceled" [];
    slot "cancel" [];
    slot ~protected "forceShow" [];
    slot "_q_disconnectOnClose" [];
    slot "reset" [];
    slot "setCancelButtonText" [arg "" qString];
    slot "setLabelText" [arg "" qString];
    slot "setMaximum" [arg "" int];
    slot "setMinimumDuration" [arg "" int];
    slot "setMinimum" [arg "" int];
    slot "setRange" [arg "" int;arg "" int];
    slot "setValue" [arg "" int];
    signal "canceled" [];
  ]
let () = with_class qWizard [
    constructor "" [opt "parent" qWidget;arg "flags" qt'WindowFlags];
    dynamic "addPage" [arg "page" qWizardPage] ~ret:int;
    dynamic "setPage" [arg "id" int;arg "page" qWizardPage];
    dynamic "removePage" [arg "id" int];
    dynamic "page" [arg "id" int] ~ret:qWizardPage;
    dynamic "hasVisitedPage" [arg "id" int] ~ret:bool;
    (*dynamic "visitedPages" [] ~ret:qList<int>;*)
    (*dynamic "pageIds" [] ~ret:qList<int>;*)
    dynamic "setStartId" [arg "id" int];
    dynamic "startId" [] ~ret:int;
    dynamic "currentPage" [] ~ret:qWizardPage;
    dynamic "currentId" [] ~ret:int;
    dynamic "validateCurrentPage" [] ~ret:bool;
    dynamic "nextId" [] ~ret:int;
    dynamic "setField" [arg "name" qString;arg "value" qVariant];
    dynamic "field" [arg "name" qString] ~ret:qVariant;
    dynamic "setWizardStyle" [arg "style" qWizard'WizardStyle];
    dynamic "wizardStyle" [] ~ret:qWizard'WizardStyle;
    dynamic "setOption" [arg "option" qWizard'WizardOption;arg "on" bool];
    dynamic "testOption" [arg "option" qWizard'WizardOption] ~ret:bool;
    dynamic "setOptions" [arg "options" qWizard'WizardOptions];
    dynamic "options" [] ~ret:qWizard'WizardOptions;
    dynamic "setButtonText" [arg "which" qWizard'WizardButton;arg "text" qString];
    dynamic "buttonText" [arg "which" qWizard'WizardButton] ~ret:qString;
    (*dynamic "setButtonLayout" [arg "layout" qList<WizardButton>];*)
    dynamic "setButton" [arg "which" qWizard'WizardButton;arg "button" qAbstractButton];
    dynamic "button" [arg "which" qWizard'WizardButton] ~ret:qAbstractButton;
    dynamic "setTitleFormat" [arg "format" qt'TextFormat];
    dynamic "titleFormat" [] ~ret:qt'TextFormat;
    dynamic "setSubTitleFormat" [arg "format" qt'TextFormat];
    dynamic "subTitleFormat" [] ~ret:qt'TextFormat;
    (*dynamic "setPixmap" [arg "which" qWizard'WizardPixmap;arg "pixmap" qPixmap];*)
    (*dynamic "pixmap" [arg "which" qWizard'WizardPixmap] ~ret:qPixmap;*)
    dynamic "setSideWidget" [arg "widget" qWidget];
    dynamic "sideWidget" [] ~ret:(optional qWidget);
    (*dynamic "setDefaultProperty" [arg "className" char;arg "property" char;arg "changedSignal" char];*)
    dynamic "currentIdChanged" [arg "id" int];
    dynamic "helpRequested" [];
    dynamic "customButtonClicked" [arg "which" int];
    dynamic "pageAdded" [arg "id" int];
    dynamic "pageRemoved" [arg "id" int];
    dynamic "back" [];
    dynamic "next" [];
    dynamic "restart" [];
  ]
let () = with_class qCommandLinkButton [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
    constructor "" [arg "text" qString;arg "description" qString;opt "parent" qWidget];
    dynamic "description" [] ~ret:qString;
    dynamic "setDescription" [arg "description" qString];
  ]
let () = with_class qTimeEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "time" qTime;opt "parent" qWidget];
  ]
let () = with_class qDateEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "date" qDate;opt "parent" qWidget];
  ]
let () = with_class qMdiArea [
    constructor "" [opt "parent" qWidget];
    dynamic "currentSubWindow" [] ~ret:(optional qMdiSubWindow);
    dynamic "activeSubWindow" [] ~ret:(optional qMdiSubWindow);
    (*dynamic "subWindowList" [arg "order" windowOrder] ~ret:qList<QMdiSubWindow *>;*)
    dynamic "addSubWindow" [arg "widget" qWidget;arg "windowFlags" qt'WindowFlags] ~ret:(optional qMdiSubWindow);
    dynamic "removeSubWindow" [arg "widget" qWidget];
    dynamic "background" [] ~ret:qBrush;
    dynamic "setBackground" [arg "background" qBrush];
    dynamic "activationOrder" [] ~ret:qMdiArea'WindowOrder;
    dynamic "setActivationOrder" [arg "order" qMdiArea'WindowOrder];
    dynamic "setOption" [arg "option" qMdiArea'AreaOption; arg "on" bool];
    dynamic "testOption" [arg "option" qMdiArea'AreaOption] ~ret:bool;
    dynamic "setViewMode" [arg "mode" qMdiArea'ViewMode];
    dynamic "viewMode" [] ~ret:qMdiArea'ViewMode;
    dynamic "documentMode" [] ~ret:bool;
    dynamic "setDocumentMode" [arg "enabled" bool];
    dynamic "setTabsClosable" [arg "closable" bool];
    dynamic "tabsClosable" [] ~ret:bool;
    dynamic "setTabsMovable" [arg "movable" bool];
    dynamic "tabsMovable" [] ~ret:bool;
    dynamic "setTabShape" [arg "shape" qTabWidget'TabShape];
    dynamic "tabShape" [] ~ret:qTabWidget'TabShape;
    dynamic "setTabPosition" [arg "position" qTabWidget'TabPosition];
    dynamic "tabPosition" [] ~ret:qTabWidget'TabPosition;
    dynamic "subWindowActivated" [arg "window" qMdiSubWindow];
    dynamic "setActiveSubWindow" [arg "window" qMdiSubWindow];
    dynamic "tileSubWindows" [];
    dynamic "cascadeSubWindows" [];
    dynamic "closeActiveSubWindow" [];
    dynamic "closeAllSubWindows" [];
    dynamic "activateNextSubWindow" [];
    dynamic "activatePreviousSubWindow" [];
    slot "activateNextSubWindow" [];
    slot "activatePreviousSubWindow" [];
    slot "cascadeSubWindows" [];
    slot "closeActiveSubWindow" [];
    slot "closeAllSubWindows" [];
    slot "_q_closeTab" [arg "" int];
    slot "_q_currentTabChanged" [arg "" int];
    slot "_q_deactivateAllWindows" [];
    slot "_q_moveTab" [arg "" int;arg "" int];
    slot "_q_processWindowStateChanged" [arg "" qt'WindowStates;arg "" qt'WindowStates];
    slot "setActiveSubWindow" [arg "" qMdiSubWindow];
    slot ~protected "setupViewport" [arg "" qWidget];
    slot "tileSubWindows" [];
    signal "subWindowActivated" [arg "" qMdiSubWindow];
  ]
let () = with_class qPlainTextEdit [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "text" qString;opt "parent" qWidget];
    dynamic "setDocument" [arg "document" qTextDocument];
    dynamic "document" [] ~ret:qTextDocument;
    dynamic "setPlaceholderText" [arg "placeholderText" qString];
    dynamic "placeholderText" [] ~ret:qString;
    dynamic "setTextCursor" [arg "cursor" qTextCursor];
    dynamic "textCursor" [] ~ret:qTextCursor;
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "setReadOnly" [arg "ro" bool];
    dynamic "setTextInteractionFlags" [arg "flags" qt'TextInteractionFlags];
    dynamic "textInteractionFlags" [] ~ret:qt'TextInteractionFlags;
    dynamic "mergeCurrentCharFormat" [arg "modifier" qTextCharFormat];
    dynamic "setCurrentCharFormat" [arg "format" qTextCharFormat];
    dynamic "currentCharFormat" [] ~ret:qTextCharFormat;
    dynamic "tabChangesFocus" [] ~ret:bool;
    dynamic "setTabChangesFocus" [arg "b" bool];
    dynamic "setDocumentTitle" [arg "title" qString];
    dynamic "documentTitle" [] ~ret:qString;
    dynamic "isUndoRedoEnabled" [] ~ret:bool;
    dynamic "setUndoRedoEnabled" [arg "enable" bool];
    dynamic "setMaximumBlockCount" [arg "maximum" int];
    dynamic "maximumBlockCount" [] ~ret:int;
    dynamic "lineWrapMode" [] ~ret:qPlainTextEdit'LineWrapMode;
    dynamic "setLineWrapMode" [arg "mode" qPlainTextEdit'LineWrapMode];
    dynamic "wordWrapMode" [] ~ret:qTextOption'WrapMode;
    dynamic "setWordWrapMode" [arg "policy" qTextOption'WrapMode];
    dynamic "setBackgroundVisible" [arg "visible" bool];
    dynamic "backgroundVisible" [] ~ret:bool;
    dynamic "setCenterOnScroll" [arg "enabled" bool];
    dynamic "centerOnScroll" [] ~ret:bool;
    dynamic "find" [arg "exp" qString;arg "options" qTextDocument'FindFlags] ~ret:bool;
    dynamic "find" [arg "exp" qRegExp;arg "options" qTextDocument'FindFlags] ~ret:bool;
    dynamic "toPlainText" [] ~ret:qString;
    dynamic "ensureCursorVisible" [];
    dynamic "loadResource" [arg "type" int;arg "name" qUrl] ~ret:qVariant;
    dynamic "createStandardContextMenu" [] ~ret:qMenu;
    dynamic "createStandardContextMenu" [arg "position" qPoint] ~ret:qMenu;
    dynamic "cursorForPosition" [arg "pos" qPoint] ~ret:qTextCursor;
    dynamic "cursorRect" [arg "cursor" qTextCursor] ~ret:qRect;
    dynamic "cursorRect" [] ~ret:qRect;
    dynamic "anchorAt" [arg "pos" qPoint] ~ret:qString;
    dynamic "overwriteMode" [] ~ret:bool;
    dynamic "setOverwriteMode" [arg "overwrite" bool];
    dynamic "tabStopWidth" [] ~ret:int;
    dynamic "setTabStopWidth" [arg "width" int];
    dynamic "cursorWidth" [] ~ret:int;
    dynamic "setCursorWidth" [arg "width" int];
    dynamic "setExtraSelections" [arg "selections" qTextEdit'ExtraSelection'List];
    dynamic "extraSelections" [] ~ret:qTextEdit'ExtraSelection'List;
    dynamic "moveCursor" [arg "operation" qTextCursor'MoveOperation;arg "mode" qTextCursor'MoveMode];
    dynamic "canPaste" [] ~ret:bool;
    (*dynamic "print" [arg "printer" qPagedPaintDevice];*)
    dynamic "blockCount" [] ~ret:int;
    dynamic "inputMethodQuery" [arg "property" qt'InputMethodQuery] ~ret:qVariant;
    dynamic "cut" [];
    dynamic "copy" [];
    dynamic "paste" [];
    dynamic "insertPlainText" [arg "text" qString];
    dynamic "appendPlainText" [arg "text" qString];
    dynamic "appendHtml" [arg "html" qString];
    dynamic "centerCursor" [];
    dynamic "textChanged" [];
    dynamic "undoAvailable" [arg "available" bool];
    dynamic "redoAvailable" [arg "available" bool];
    dynamic "copyAvailable" [arg "yes" bool];
    dynamic "selectionChanged" [];
    dynamic "cursorPositionChanged" [];
    dynamic "updateRequest" [arg "rect" qRect;arg "dy" int];
    dynamic "blockCountChanged" [arg "newBlockCount" int];
    dynamic "modificationChanged" [arg "changed" bool];
    slot "appendHtml" [arg "" qString];
    slot "appendPlainText" [arg "" qString];
    slot "centerCursor" [];
    slot "clear" [];
    slot "copy" [];
    slot "cut" [];
    slot "insertPlainText" [arg "" qString];
    slot "paste" [];
    slot "_q_adjustScrollbars" [];
    slot "_q_cursorPositionChanged" [];
    slot "_q_repaintContents" [arg "" qRectF];
    slot "_q_verticalScrollbarActionTriggered" [arg "" int];
    slot "redo" [];
    slot "selectAll" [];
    slot "setPlainText" [arg "" qString];
    slot "undo" [];
    slot "zoomIn" [];
    slot "zoomIn" [arg "" int];
    slot "zoomOut" [];
    slot "zoomOut" [arg "" int];
    signal "blockCountChanged" [arg "" int];
    signal "copyAvailable" [arg "" bool];
    signal "cursorPositionChanged" [];
    signal "modificationChanged" [arg "" bool];
    signal "redoAvailable" [arg "" bool];
    signal "selectionChanged" [];
    signal "textChanged" [];
    signal "undoAvailable" [arg "" bool];
    signal "updateRequest" [arg "" qRect;arg "" int];
  ]
let () = with_class qScrollArea [
    constructor "" [opt "parent" qWidget];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "takeWidget" [] ~ret:(optional qWidget);
    dynamic "widgetResizable" [] ~ret:bool;
    dynamic "setWidgetResizable" [arg "resizable" bool];
    dynamic "focusNextPrevChild" [arg "next" bool] ~ret:bool;
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "arg0" qt'Alignment];
    dynamic "ensureVisible" [arg "x" int;arg "y" int;arg "xmargin" int;arg "ymargin" int];
    dynamic "ensureWidgetVisible" [arg "childWidget" qWidget;arg "xmargin" int;arg "ymargin" int];
  ]
let () = with_class qTextBrowser [
    constructor "" [opt "parent" qWidget];
    dynamic "source" [] ~ret:qUrl;
    dynamic "searchPaths" [] ~ret:qStringList;
    dynamic "setSearchPaths" [arg "paths" qStringList];
    dynamic "isBackwardAvailable" [] ~ret:bool;
    dynamic "isForwardAvailable" [] ~ret:bool;
    dynamic "clearHistory" [];
    dynamic "historyTitle" [arg "i" int] ~ret:qString;
    dynamic "historyUrl" [arg "i" int] ~ret:qUrl;
    dynamic "backwardHistoryCount" [] ~ret:int;
    dynamic "forwardHistoryCount" [] ~ret:int;
    dynamic "openExternalLinks" [] ~ret:bool;
    dynamic "setOpenExternalLinks" [arg "open" bool];
    dynamic "openLinks" [] ~ret:bool;
    dynamic "setOpenLinks" [arg "open" bool];
    dynamic "setSource" [arg "name" qUrl];
    dynamic "backward" [];
    dynamic "forward" [];
    dynamic "home" [];
    dynamic "reload" [];
    dynamic "backwardAvailable" [arg "available" bool];
    dynamic "forwardAvailable" [arg "available" bool];
    dynamic "historyChanged" [];
    dynamic "sourceChanged" [arg "src" qUrl];
    dynamic "highlighted" [arg "link" qUrl];
    dynamic "highlighted" [arg "link" qString];
    dynamic "anchorClicked" [arg "link" qUrl];
    slot "backward" [];
    slot "forward" [];
    slot "home" [];
    slot "_q_activateAnchor" [arg "" qString];
    slot "_q_documentModified" [];
    slot "_q_highlightLink" [arg "" qString];
    slot "reload" [];
    slot "setSource" [arg "" qUrl];
    signal "anchorClicked" [arg "" qUrl];
    signal "backwardAvailable" [arg "" bool];
    signal "forwardAvailable" [arg "" bool];
    signal "highlighted" [arg "" qString];
    signal "highlighted" [arg "" qUrl];
    signal "historyChanged" [];
    signal "sourceChanged" [arg "" qUrl];
  ]
let () = with_class qColumnView [
    dynamic "updatePreviewWidget" [arg "index" qModelIndex];
    constructor "" [opt "parent" qWidget];
    dynamic "indexAt" [arg "point" qPoint] ~ret:qModelIndex;
    dynamic "scrollTo" [arg "index" qModelIndex;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "visualRect" [arg "index" qModelIndex] ~ret:qRect;
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "setSelectionModel" [arg "newSelectionModel" qItemSelectionModel];
    dynamic "setRootIndex" [arg "index" qModelIndex];
    dynamic "selectAll" [];
    dynamic "setResizeGripsVisible" [arg "visible" bool];
    dynamic "resizeGripsVisible" [] ~ret:bool;
    dynamic "previewWidget" [] ~ret:(optional qWidget);
    dynamic "setPreviewWidget" [arg "widget" qWidget];
    (*dynamic "setColumnWidths" [arg "list" qList<int>];*)
    (*dynamic "columnWidths" [] ~ret:qList<int>;*)
  ]
let () = with_class qHeaderView [
    constructor "" [arg "orientation" qt'Orientation;opt "parent" qWidget];
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "offset" [] ~ret:int;
    dynamic "length" [] ~ret:int;
    dynamic "sectionSizeHint" [arg "logicalIndex" int] ~ret:int;
    dynamic "visualIndexAt" [arg "position" int] ~ret:int;
    dynamic "logicalIndexAt" [arg "position" int] ~ret:int;
    dynamic "logicalIndexAt" [arg "x" int;arg "y" int] ~ret:int;
    dynamic "logicalIndexAt" [arg "pos" qPoint] ~ret:int;
    dynamic "sectionSize" [arg "logicalIndex" int] ~ret:int;
    dynamic "sectionPosition" [arg "logicalIndex" int] ~ret:int;
    dynamic "sectionViewportPosition" [arg "logicalIndex" int] ~ret:int;
    dynamic "moveSection" [arg "from" int;arg "to" int];
    dynamic "swapSections" [arg "first" int;arg "second" int];
    dynamic "resizeSection" [arg "logicalIndex" int;arg "size" int];
    dynamic "resizeSections" [arg "mode" qHeaderView'ResizeMode];
    dynamic "isSectionHidden" [arg "logicalIndex" int] ~ret:bool;
    dynamic "setSectionHidden" [arg "logicalIndex" int;arg "hide" bool];
    dynamic "hiddenSectionCount" [] ~ret:int;
    dynamic "hideSection" [arg "logicalIndex" int];
    dynamic "showSection" [arg "logicalIndex" int];
    dynamic "count" [] ~ret:int;
    dynamic "visualIndex" [arg "logicalIndex" int] ~ret:int;
    dynamic "logicalIndex" [arg "visualIndex" int] ~ret:int;
    dynamic "setSectionsMovable" [arg "movable" bool];
    dynamic "sectionsMovable" [] ~ret:bool;
    (*dynamic "setMovable" [arg "movable" bool];*)
    (*dynamic "isMovable" [] ~ret:bool;*)
    dynamic "setSectionsClickable" [arg "clickable" bool];
    dynamic "sectionsClickable" [] ~ret:bool;
    (*dynamic "setClickable" [arg "clickable" bool];*)
    (*dynamic "isClickable" [] ~ret:bool;*)
    dynamic "setHighlightSections" [arg "highlight" bool];
    dynamic "highlightSections" [] ~ret:bool;
    dynamic "sectionResizeMode" [arg "logicalIndex" int] ~ret:qHeaderView'ResizeMode;
    dynamic "setSectionResizeMode" [arg "mode" qHeaderView'ResizeMode];
    dynamic "setSectionResizeMode" [arg "logicalIndex" int;arg "mode" qHeaderView'ResizeMode];
    dynamic "setResizeContentsPrecision" [arg "precision" int];
    dynamic "resizeContentsPrecision" [] ~ret:int;
    (*dynamic "setResizeMode" [arg "mode" qHeaderView'ResizeMode];*)
    (*dynamic "setResizeMode" [arg "logicalIndex" int;arg "mode" qHeaderView'ResizeMode];*)
    (*dynamic "resizeMode" [arg "logicalIndex" int] ~ret:qHeaderView'ResizeMode;*)
    dynamic "stretchSectionCount" [] ~ret:int;
    dynamic "setSortIndicatorShown" [arg "show" bool];
    dynamic "isSortIndicatorShown" [] ~ret:bool;
    dynamic "setSortIndicator" [arg "logicalIndex" int;arg "order" qt'SortOrder];
    dynamic "sortIndicatorSection" [] ~ret:int;
    dynamic "sortIndicatorOrder" [] ~ret:qt'SortOrder;
    dynamic "stretchLastSection" [] ~ret:bool;
    dynamic "setStretchLastSection" [arg "stretch" bool];
    dynamic "cascadingSectionResizes" [] ~ret:bool;
    dynamic "setCascadingSectionResizes" [arg "enable" bool];
    dynamic "defaultSectionSize" [] ~ret:int;
    dynamic "setDefaultSectionSize" [arg "size" int];
    dynamic "resetDefaultSectionSize" [];
    dynamic "minimumSectionSize" [] ~ret:int;
    dynamic "setMinimumSectionSize" [arg "size" int];
    dynamic "maximumSectionSize" [] ~ret:int;
    dynamic "setMaximumSectionSize" [arg "size" int];
    dynamic "defaultAlignment" [] ~ret:qt'Alignment;
    dynamic "setDefaultAlignment" [arg "alignment" qt'Alignment];
    dynamic "sectionsMoved" [] ~ret:bool;
    dynamic "sectionsHidden" [] ~ret:bool;
    dynamic "saveState" [] ~ret:qByteArray;
    dynamic "restoreState" [arg "state" qByteArray] ~ret:bool;
    dynamic "reset" [];
    dynamic "setOffset" [arg "offset" int];
    dynamic "setOffsetToSectionPosition" [arg "visualSectionNumber" int];
    dynamic "setOffsetToLastSection" [];
    dynamic "headerDataChanged" [arg "orientation" qt'Orientation;arg "logicalFirst" int;arg "logicalLast" int];
    dynamic "sectionMoved" [arg "logicalIndex" int;arg "oldVisualIndex" int;arg "newVisualIndex" int];
    dynamic "sectionResized" [arg "logicalIndex" int;arg "oldSize" int;arg "newSize" int];
    dynamic "sectionPressed" [arg "logicalIndex" int];
    dynamic "sectionClicked" [arg "logicalIndex" int];
    dynamic "sectionEntered" [arg "logicalIndex" int];
    dynamic "sectionDoubleClicked" [arg "logicalIndex" int];
    dynamic "sectionCountChanged" [arg "oldCount" int;arg "newCount" int];
    dynamic "sectionHandleDoubleClicked" [arg "logicalIndex" int];
    dynamic "geometriesChanged" [];
    dynamic "sortIndicatorChanged" [arg "logicalIndex" int;arg "order" qt'SortOrder];
    slot "headerDataChanged" [arg "" qt'Orientation;arg "" int;arg "" int];
    slot "_q_layoutAboutToBeChanged" [];
    slot "_q_sectionsRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot ~protected "resizeSections" [];
    slot ~protected "sectionsAboutToBeRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot ~protected "sectionsInserted" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "setOffset" [arg "" int];
    slot "setOffsetToLastSection" [];
    slot "setOffsetToSectionPosition" [arg "" int];
    slot ~protected "updateSection" [arg "" int];
    signal "geometriesChanged" [];
    signal "sectionClicked" [arg "" int];
    signal "sectionCountChanged" [arg "" int;arg "" int];
    signal "sectionDoubleClicked" [arg "" int];
    signal "sectionEntered" [arg "" int];
    signal "sectionHandleDoubleClicked" [arg "" int];
    signal "sectionMoved" [arg "" int;arg "" int;arg "" int];
    signal "sectionPressed" [arg "" int];
    signal "sectionResized" [arg "" int;arg "" int;arg "" int];
    signal "sortIndicatorChanged" [arg "" int;arg "" qt'SortOrder];
  ]
let () = with_class qListView [
    constructor "" [opt "parent" qWidget];
    dynamic "setMovement" [arg "movement" qListView'Movement];
    dynamic "movement" [] ~ret:qListView'Movement;
    dynamic "setFlow" [arg "flow" qListView'Flow];
    dynamic "flow" [] ~ret:qListView'Flow;
    dynamic "setWrapping" [arg "enable" bool];
    dynamic "isWrapping" [] ~ret:bool;
    dynamic "setResizeMode" [arg "mode" qListView'ResizeMode];
    dynamic "resizeMode" [] ~ret:qListView'ResizeMode;
    dynamic "setLayoutMode" [arg "mode" qListView'LayoutMode];
    dynamic "layoutMode" [] ~ret:qListView'LayoutMode;
    dynamic "setSpacing" [arg "space" int];
    dynamic "spacing" [] ~ret:int;
    dynamic "setBatchSize" [arg "batchSize" int];
    dynamic "batchSize" [] ~ret:int;
    dynamic "setGridSize" [arg "size" qSize];
    dynamic "gridSize" [] ~ret:qSize;
    dynamic "setViewMode" [arg "mode" qListView'ViewMode];
    dynamic "viewMode" [] ~ret:qListView'ViewMode;
    dynamic "clearPropertyFlags" [];
    dynamic "isRowHidden" [arg "row" int] ~ret:bool;
    dynamic "setRowHidden" [arg "row" int;arg "hide" bool];
    dynamic "setModelColumn" [arg "column" int];
    dynamic "modelColumn" [] ~ret:int;
    dynamic "setUniformItemSizes" [arg "enable" bool];
    dynamic "uniformItemSizes" [] ~ret:bool;
    dynamic "setWordWrap" [arg "on" bool];
    dynamic "wordWrap" [] ~ret:bool;
    dynamic "setSelectionRectVisible" [arg "show" bool];
    dynamic "isSelectionRectVisible" [] ~ret:bool;
    dynamic "visualRect" [arg "index" qModelIndex] ~ret:qRect;
    dynamic "scrollTo" [arg "index" qModelIndex;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "indexAt" [arg "p" qPoint] ~ret:qModelIndex;
    dynamic "indexesMoved" [arg "indexes" qModelIndexList];
    (*signal "indexesMoved" [arg "" qModelIndexList];*)
  ]
let () = with_class qTableView [
    constructor "" [opt "parent" qWidget];
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "setRootIndex" [arg "index" qModelIndex];
    dynamic "setSelectionModel" [arg "selectionModel" qItemSelectionModel];
    dynamic "horizontalHeader" [] ~ret:qHeaderView;
    dynamic "verticalHeader" [] ~ret:qHeaderView;
    dynamic "setHorizontalHeader" [arg "header" qHeaderView];
    dynamic "setVerticalHeader" [arg "header" qHeaderView];
    dynamic "rowViewportPosition" [arg "row" int] ~ret:int;
    dynamic "rowAt" [arg "y" int] ~ret:int;
    dynamic "setRowHeight" [arg "row" int;arg "height" int];
    dynamic "rowHeight" [arg "row" int] ~ret:int;
    dynamic "columnViewportPosition" [arg "column" int] ~ret:int;
    dynamic "columnAt" [arg "x" int] ~ret:int;
    dynamic "setColumnWidth" [arg "column" int;arg "width" int];
    dynamic "columnWidth" [arg "column" int] ~ret:int;
    dynamic "isRowHidden" [arg "row" int] ~ret:bool;
    dynamic "setRowHidden" [arg "row" int;arg "hide" bool];
    dynamic "isColumnHidden" [arg "column" int] ~ret:bool;
    dynamic "setColumnHidden" [arg "column" int;arg "hide" bool];
    dynamic "setSortingEnabled" [arg "enable" bool];
    dynamic "isSortingEnabled" [] ~ret:bool;
    dynamic "showGrid" [] ~ret:bool;
    dynamic "gridStyle" [] ~ret:qt'PenStyle;
    dynamic "setGridStyle" [arg "style" qt'PenStyle];
    dynamic "setWordWrap" [arg "on" bool];
    dynamic "wordWrap" [] ~ret:bool;
    dynamic "setCornerButtonEnabled" [arg "enable" bool];
    dynamic "isCornerButtonEnabled" [] ~ret:bool;
    dynamic "indexAt" [arg "pos" qPoint] ~ret:qModelIndex;
    dynamic "setSpan" [arg "row" int;arg "column" int;arg "rowSpanCount" int;arg "columnSpanCount" int];
    dynamic "rowSpan" [arg "row" int;arg "column" int] ~ret:int;
    dynamic "columnSpan" [arg "row" int;arg "column" int] ~ret:int;
    dynamic "clearSpans" [];
    dynamic "sortByColumn" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "selectRow" [arg "row" int];
    dynamic "selectColumn" [arg "column" int];
    dynamic "hideRow" [arg "row" int];
    dynamic "hideColumn" [arg "column" int];
    dynamic "showRow" [arg "row" int];
    dynamic "showColumn" [arg "column" int];
    dynamic "resizeRowToContents" [arg "row" int];
    dynamic "resizeRowsToContents" [];
    dynamic "resizeColumnToContents" [arg "column" int];
    dynamic "resizeColumnsToContents" [];
    dynamic "sortByColumn" [arg "column" int];
    dynamic "setShowGrid" [arg "show" bool];
    slot ~protected "columnCountChanged" [arg "" int;arg "" int];
    slot ~protected "columnMoved" [arg "" int;arg "" int;arg "" int];
    slot ~protected "columnResized" [arg "" int;arg "" int;arg "" int];
    slot "hideColumn" [arg "" int];
    slot "hideRow" [arg "" int];
    slot "_q_selectColumn" [arg "" int];
    slot "_q_selectRow" [arg "" int];
    slot "_q_updateSpanInsertedColumns" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_updateSpanInsertedRows" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_updateSpanRemovedColumns" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_updateSpanRemovedRows" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "resizeColumnsToContents" [];
    slot "resizeColumnToContents" [arg "" int];
    slot "resizeRowsToContents" [];
    slot "resizeRowToContents" [arg "" int];
    slot ~protected "rowCountChanged" [arg "" int;arg "" int];
    slot ~protected "rowMoved" [arg "" int;arg "" int;arg "" int];
    slot ~protected "rowResized" [arg "" int;arg "" int;arg "" int];
    slot "selectColumn" [arg "" int];
    slot "selectRow" [arg "" int];
    slot "setShowGrid" [arg "" bool];
    slot "showColumn" [arg "" int];
    slot "showRow" [arg "" int];
    slot "sortByColumn" [arg "" int];
  ]
let () = with_class qListWidget [
    constructor "" [opt "parent" qWidget];
    dynamic "setSelectionModel" [arg "selectionModel" qItemSelectionModel];
    dynamic "item" [arg "row" int] ~ret:qListWidgetItem;
    dynamic "row" [arg "item" qListWidgetItem] ~ret:int;
    dynamic "insertItem" [arg "row" int;arg "item" qListWidgetItem];
    dynamic "insertItem" [arg "row" int;arg "label" qString];
    dynamic "insertItems" [arg "row" int;arg "labels" qStringList];
    dynamic "addItem" [arg "label" qString];
    dynamic "addItem" [arg "item" qListWidgetItem];
    dynamic "addItems" [arg "labels" qStringList];
    dynamic "takeItem" [arg "row" int] ~ret:qListWidgetItem;
    dynamic "count" [] ~ret:int;
    dynamic "currentItem" [] ~ret:qListWidgetItem;
    dynamic "setCurrentItem" [arg "item" qListWidgetItem];
    dynamic "setCurrentItem" [arg "item" qListWidgetItem;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "currentRow" [] ~ret:int;
    dynamic "setCurrentRow" [arg "row" int];
    dynamic "setCurrentRow" [arg "row" int;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "itemAt" [arg "p" qPoint] ~ret:qListWidgetItem;
    dynamic "itemAt" [arg "x" int;arg "y" int] ~ret:qListWidgetItem;
    dynamic "visualItemRect" [arg "item" qListWidgetItem] ~ret:qRect;
    dynamic "sortItems" [arg "order" qt'SortOrder];
    dynamic "setSortingEnabled" [arg "enable" bool];
    dynamic "isSortingEnabled" [] ~ret:bool;
    dynamic "editItem" [arg "item" qListWidgetItem];
    dynamic "openPersistentEditor" [arg "item" qListWidgetItem];
    dynamic "closePersistentEditor" [arg "item" qListWidgetItem];
    dynamic "itemWidget" [arg "item" qListWidgetItem] ~ret:(optional qWidget);
    dynamic "setItemWidget" [arg "item" qListWidgetItem;arg "widget" qWidget];
    dynamic "removeItemWidget" [arg "item" qListWidgetItem];
    dynamic "isItemSelected" [arg "item" qListWidgetItem] ~ret:bool;
    dynamic "setItemSelected" [arg "item" qListWidgetItem;arg "select" bool];
    (*dynamic "selectedItems" [] ~ret:qList<QListWidgetItem *>;*)
    (*dynamic "findItems" [arg "text" qString;arg "flags" qt'MatchFlags] ~ret:qList<QListWidgetItem *>;*)
    dynamic "isItemHidden" [arg "item" qListWidgetItem] ~ret:bool;
    dynamic "setItemHidden" [arg "item" qListWidgetItem;arg "hide" bool];
    dynamic "dropEvent" [arg "event" qDropEvent];
    dynamic "scrollToItem" [arg "item" qListWidgetItem;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "clear" [];
    dynamic "itemPressed" [arg "item" qListWidgetItem];
    dynamic "itemClicked" [arg "item" qListWidgetItem];
    dynamic "itemDoubleClicked" [arg "item" qListWidgetItem];
    dynamic "itemActivated" [arg "item" qListWidgetItem];
    dynamic "itemEntered" [arg "item" qListWidgetItem];
    dynamic "itemChanged" [arg "item" qListWidgetItem];
    dynamic "currentItemChanged" [arg "current" qListWidgetItem;arg "previous" qListWidgetItem];
    dynamic "currentTextChanged" [arg "currentText" qString];
    dynamic "currentRowChanged" [arg "currentRow" int];
    dynamic "itemSelectionChanged" [];
    slot "clear" [];
    slot "_q_dataChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitCurrentItemChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitItemActivated" [arg "" qModelIndex];
    slot "_q_emitItemChanged" [arg "" qModelIndex];
    slot "_q_emitItemClicked" [arg "" qModelIndex];
    slot "_q_emitItemDoubleClicked" [arg "" qModelIndex];
    slot "_q_emitItemEntered" [arg "" qModelIndex];
    slot "_q_emitItemPressed" [arg "" qModelIndex];
    slot "_q_sort" [];
    slot "scrollToItem" [arg "" qListWidgetItem];
    slot "scrollToItem" [arg "" qListWidgetItem;arg "" qAbstractItemView'ScrollHint];
    signal "currentItemChanged" [arg "" qListWidgetItem;arg "" qListWidgetItem];
    signal "currentRowChanged" [arg "" int];
    signal "currentTextChanged" [arg "" qString];
    signal "itemActivated" [arg "" qListWidgetItem];
    signal "itemChanged" [arg "" qListWidgetItem];
    signal "itemClicked" [arg "" qListWidgetItem];
    signal "itemDoubleClicked" [arg "" qListWidgetItem];
    signal "itemEntered" [arg "" qListWidgetItem];
    signal "itemPressed" [arg "" qListWidgetItem];
    signal "itemSelectionChanged" [];
  ]
let () = with_class qListWidgetItem [
    constructor "" [arg "parent" qListWidget;arg "type" int];
    constructor "" [arg "text" qString;arg "parent" qListWidget;arg "type" int];
    constructor "" [arg "icon" qIcon;arg "text" qString;arg "parent" qListWidget;arg "type" int];
    constructor "" [arg "other" qListWidgetItem];
    dynamic "clone" [] ~ret:qListWidgetItem;
    dynamic "listWidget" [] ~ret:qListWidget;
    dynamic "setSelected" [arg "select" bool];
    dynamic "isSelected" [] ~ret:bool;
    dynamic "setHidden" [arg "hide" bool];
    dynamic "isHidden" [] ~ret:bool;
    dynamic "flags" [] ~ret:qt'ItemFlags;
    dynamic "setFlags" [arg "flags" qt'ItemFlags];
    dynamic "text" [] ~ret:qString;
    dynamic "setText" [arg "text" qString];
    dynamic "icon" [] ~ret:qIcon;
    dynamic "setIcon" [arg "icon" qIcon];
    dynamic "statusTip" [] ~ret:qString;
    dynamic "setStatusTip" [arg "statusTip" qString];
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setToolTip" [arg "toolTip" qString];
    dynamic "whatsThis" [] ~ret:qString;
    dynamic "setWhatsThis" [arg "whatsThis" qString];
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "font" qFont];
    dynamic "textAlignment" [] ~ret:int;
    dynamic "setTextAlignment" [arg "alignment" int];
    dynamic "backgroundColor" [] ~ret:qColor;
    dynamic "setBackgroundColor" [arg "color" qColor];
    dynamic "background" [] ~ret:qBrush;
    dynamic "setBackground" [arg "brush" qBrush];
    dynamic "textColor" [] ~ret:qColor;
    dynamic "setTextColor" [arg "color" qColor];
    dynamic "foreground" [] ~ret:qBrush;
    dynamic "setForeground" [arg "brush" qBrush];
    dynamic "checkState" [] ~ret:qt'CheckState;
    dynamic "setCheckState" [arg "state" qt'CheckState];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "setSizeHint" [arg "size" qSize];
    dynamic "data" [arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "role" int;arg "value" qVariant];
    (*dynamic "operator<" [arg "other" qListWidgetItem] ~ret:bool;*)
    dynamic "read" [arg "in" qDataStream];
    dynamic "write" [arg "out" qDataStream];
    (*dynamic "operator=" [arg "other" qListWidgetItem] ~ret:qListWidgetItem;*)
    dynamic "type" [] ~ret:int;
  ]
let () = with_class qTreeView [
    constructor "" [opt "parent" qWidget];
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "setRootIndex" [arg "index" qModelIndex];
    dynamic "setSelectionModel" [arg "selectionModel" qItemSelectionModel];
    dynamic "header" [] ~ret:qHeaderView;
    dynamic "setHeader" [arg "header" qHeaderView];
    dynamic "autoExpandDelay" [] ~ret:int;
    dynamic "setAutoExpandDelay" [arg "delay" int];
    dynamic "indentation" [] ~ret:int;
    dynamic "setIndentation" [arg "i" int];
    dynamic "resetIndentation" [];
    dynamic "rootIsDecorated" [] ~ret:bool;
    dynamic "setRootIsDecorated" [arg "show" bool];
    dynamic "uniformRowHeights" [] ~ret:bool;
    dynamic "setUniformRowHeights" [arg "uniform" bool];
    dynamic "itemsExpandable" [] ~ret:bool;
    dynamic "setItemsExpandable" [arg "enable" bool];
    dynamic "expandsOnDoubleClick" [] ~ret:bool;
    dynamic "setExpandsOnDoubleClick" [arg "enable" bool];
    dynamic "columnViewportPosition" [arg "column" int] ~ret:int;
    dynamic "columnWidth" [arg "column" int] ~ret:int;
    dynamic "setColumnWidth" [arg "column" int;arg "width" int];
    dynamic "columnAt" [arg "x" int] ~ret:int;
    dynamic "isColumnHidden" [arg "column" int] ~ret:bool;
    dynamic "setColumnHidden" [arg "column" int;arg "hide" bool];
    dynamic "isHeaderHidden" [] ~ret:bool;
    dynamic "setHeaderHidden" [arg "hide" bool];
    dynamic "isRowHidden" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "setRowHidden" [arg "row" int;arg "parent" qModelIndex;arg "hide" bool];
    dynamic "isFirstColumnSpanned" [arg "row" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "setFirstColumnSpanned" [arg "row" int;arg "parent" qModelIndex;arg "span" bool];
    dynamic "isExpanded" [arg "index" qModelIndex] ~ret:bool;
    dynamic "setExpanded" [arg "index" qModelIndex;arg "expanded" bool];
    dynamic "setSortingEnabled" [arg "enable" bool];
    dynamic "isSortingEnabled" [] ~ret:bool;
    dynamic "setAnimated" [arg "enable" bool];
    dynamic "isAnimated" [] ~ret:bool;
    dynamic "setAllColumnsShowFocus" [arg "enable" bool];
    dynamic "allColumnsShowFocus" [] ~ret:bool;
    dynamic "setWordWrap" [arg "on" bool];
    dynamic "wordWrap" [] ~ret:bool;
    dynamic "setTreePosition" [arg "index" int];
    dynamic "treePosition" [] ~ret:int;
    dynamic "keyboardSearch" [arg "search" qString];
    dynamic "visualRect" [arg "index" qModelIndex] ~ret:qRect;
    dynamic "scrollTo" [arg "index" qModelIndex;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "indexAt" [arg "point" qPoint] ~ret:qModelIndex;
    dynamic "indexAbove" [arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "indexBelow" [arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "reset" [];
    dynamic "sortByColumn" [arg "column" int;arg "order" qt'SortOrder];
    (*dynamic "dataChanged" [arg "topLeft" qModelIndex;arg "bottomRight" qModelIndex;arg "roles" qVector<int>];*)
    dynamic "selectAll" [];
    dynamic "expanded" [arg "index" qModelIndex];
    dynamic "collapsed" [arg "index" qModelIndex];
    dynamic "hideColumn" [arg "column" int];
    dynamic "showColumn" [arg "column" int];
    dynamic "expand" [arg "index" qModelIndex];
    dynamic "collapse" [arg "index" qModelIndex];
    dynamic "resizeColumnToContents" [arg "column" int];
    dynamic "sortByColumn" [arg "column" int];
    dynamic "expandAll" [];
    dynamic "collapseAll" [];
    dynamic "expandToDepth" [arg "depth" int];

    slot "collapseAll" [];
    slot "collapse" [arg "" qModelIndex];
    slot ~protected "columnCountChanged" [arg "" int;arg "" int];
    slot ~protected "columnMoved" [];
    slot ~protected "columnResized" [arg "" int;arg "" int;arg "" int];
    slot "expandAll" [];
    slot "expand" [arg "" qModelIndex];
    slot "expandToDepth" [arg "" int];
    slot "hideColumn" [arg "" int];
    slot "_q_endAnimatedOperation" [];
    slot "_q_modelAboutToBeReset" [];
    slot "_q_sortIndicatorChanged" [arg "" int;arg "" qt'SortOrder];
    slot ~protected "reexpand" [];
    slot "resizeColumnToContents" [arg "" int];
    slot ~protected "rowsRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "showColumn" [arg "" int];
    slot "sortByColumn" [arg "" int];
    signal "collapsed" [arg "" qModelIndex];
    signal "expanded" [arg "" qModelIndex];
  ]
let () = with_class qTreeWidget [
    constructor "" [opt "parent" qWidget];
    dynamic "columnCount" [] ~ret:int;
    dynamic "setColumnCount" [arg "columns" int];
    dynamic "invisibleRootItem" [] ~ret:qTreeWidgetItem;
    dynamic "topLevelItem" [arg "index" int] ~ret:qTreeWidgetItem;
    dynamic "topLevelItemCount" [] ~ret:int;
    dynamic "insertTopLevelItem" [arg "index" int;arg "item" qTreeWidgetItem];
    dynamic "addTopLevelItem" [arg "item" qTreeWidgetItem];
    dynamic "takeTopLevelItem" [arg "index" int] ~ret:qTreeWidgetItem;
    dynamic "indexOfTopLevelItem" [arg "item" qTreeWidgetItem] ~ret:int;
    (*dynamic "insertTopLevelItems" [arg "index" int;arg "items" qList<QTreeWidgetItem *>];*)
    (*dynamic "addTopLevelItems" [arg "items" qList<QTreeWidgetItem *>];*)
    dynamic "headerItem" [] ~ret:qTreeWidgetItem;
    dynamic "setHeaderItem" [arg "item" qTreeWidgetItem];
    dynamic "setHeaderLabels" [arg "labels" qStringList];
    dynamic "setHeaderLabel" [arg "label" qString];
    dynamic "currentItem" [] ~ret:qTreeWidgetItem;
    dynamic "currentColumn" [] ~ret:int;
    dynamic "setCurrentItem" [arg "item" qTreeWidgetItem];
    dynamic "setCurrentItem" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "setCurrentItem" [arg "item" qTreeWidgetItem;arg "column" int;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "itemAt" [arg "p" qPoint] ~ret:qTreeWidgetItem;
    dynamic "itemAt" [arg "x" int;arg "y" int] ~ret:qTreeWidgetItem;
    dynamic "visualItemRect" [arg "item" qTreeWidgetItem] ~ret:qRect;
    dynamic "sortColumn" [] ~ret:int;
    dynamic "sortItems" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "editItem" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "openPersistentEditor" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "closePersistentEditor" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemWidget" [arg "item" qTreeWidgetItem;arg "column" int] ~ret:(optional qWidget);
    dynamic "setItemWidget" [arg "item" qTreeWidgetItem;arg "column" int;arg "widget" qWidget];
    dynamic "removeItemWidget" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "isItemSelected" [arg "item" qTreeWidgetItem] ~ret:bool;
    dynamic "setItemSelected" [arg "item" qTreeWidgetItem;arg "select" bool];
    (*dynamic "selectedItems" [] ~ret:qList<QTreeWidgetItem *>;*)
    (*dynamic "findItems" [arg "text" qString;arg "flags" qt'MatchFlags;arg "column" int] ~ret:qList<QTreeWidgetItem *>;*)
    dynamic "isItemHidden" [arg "item" qTreeWidgetItem] ~ret:bool;
    dynamic "setItemHidden" [arg "item" qTreeWidgetItem;arg "hide" bool];
    dynamic "isItemExpanded" [arg "item" qTreeWidgetItem] ~ret:bool;
    dynamic "setItemExpanded" [arg "item" qTreeWidgetItem;arg "expand" bool];
    dynamic "isFirstItemColumnSpanned" [arg "item" qTreeWidgetItem] ~ret:bool;
    dynamic "setFirstItemColumnSpanned" [arg "item" qTreeWidgetItem;arg "span" bool];
    dynamic "itemAbove" [arg "item" qTreeWidgetItem] ~ret:qTreeWidgetItem;
    dynamic "itemBelow" [arg "item" qTreeWidgetItem] ~ret:qTreeWidgetItem;
    dynamic "scrollToItem" [arg "item" qTreeWidgetItem;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "expandItem" [arg "item" qTreeWidgetItem];
    dynamic "collapseItem" [arg "item" qTreeWidgetItem];
    dynamic "clear" [];
    dynamic "itemPressed" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemClicked" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemDoubleClicked" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemActivated" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemEntered" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemChanged" [arg "item" qTreeWidgetItem;arg "column" int];
    dynamic "itemExpanded" [arg "item" qTreeWidgetItem];
    dynamic "itemCollapsed" [arg "item" qTreeWidgetItem];
    dynamic "currentItemChanged" [arg "current" qTreeWidgetItem;arg "previous" qTreeWidgetItem];
    dynamic "itemSelectionChanged" [];
    slot "clear" [];
    (*  slot "collapseItem" [const arg "" qTreeWidgetItem];*)
    (*  slot "expandItem" [const arg "" qTreeWidgetItem];*)
    slot "_q_dataChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitCurrentItemChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitItemActivated" [arg "" qModelIndex];
    slot "_q_emitItemChanged" [arg "" qModelIndex];
    slot "_q_emitItemClicked" [arg "" qModelIndex];
    slot "_q_emitItemCollapsed" [arg "" qModelIndex];
    slot "_q_emitItemDoubleClicked" [arg "" qModelIndex];
    slot "_q_emitItemEntered" [arg "" qModelIndex];
    slot "_q_emitItemExpanded" [arg "" qModelIndex];
    slot "_q_emitItemPressed" [arg "" qModelIndex];
    (*slot "_q_selectionChanged" [arg "" qItemSelection;arg "" qItemSelection];*)
    slot "_q_sort" [];
    (*  slot "scrollToItem" [const arg "" qTreeWidgetItem];*)
    (*  slot "scrollToItem" [const arg "" qTreeWidgetItem;QAbstractItemView::arg "" ScrollHint];*)
    (*  signal "currentItemChanged" [qTreeWidgetItem*;QTreeWidgetItem*];*)
    (*  signal "itemActivated" [qTreeWidgetItem*;arg "" int];*)
    (*  signal "itemChanged" [qTreeWidgetItem*;arg "" int];*)
    (*  signal "itemClicked" [qTreeWidgetItem*;arg "" int];*)
    (*  signal "itemCollapsed" [qTreeWidgetItem*];*)
    (*  signal "itemDoubleClicked" [qTreeWidgetItem*;arg "" int];*)
    (*  signal "itemEntered" [qTreeWidgetItem*;arg "" int];*)
    (*  signal "itemExpanded" [qTreeWidgetItem*];*)
    (*  signal "itemPressed" [qTreeWidgetItem*;arg "" int];*)
    signal "itemSelectionChanged" [];
  ]
let () = with_class qTableWidget [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "rows" int;arg "columns" int;opt "parent" qWidget];
    dynamic "setRowCount" [arg "rows" int];
    dynamic "rowCount" [] ~ret:int;
    dynamic "setColumnCount" [arg "columns" int];
    dynamic "columnCount" [] ~ret:int;
    dynamic "row" [arg "item" qTableWidgetItem] ~ret:int;
    dynamic "column" [arg "item" qTableWidgetItem] ~ret:int;
    dynamic "item" [arg "row" int;arg "column" int] ~ret:qTableWidgetItem;
    dynamic "setItem" [arg "row" int;arg "column" int;arg "item" qTableWidgetItem];
    dynamic "takeItem" [arg "row" int;arg "column" int] ~ret:qTableWidgetItem;
    dynamic "verticalHeaderItem" [arg "row" int] ~ret:qTableWidgetItem;
    dynamic "setVerticalHeaderItem" [arg "row" int;arg "item" qTableWidgetItem];
    dynamic "takeVerticalHeaderItem" [arg "row" int] ~ret:qTableWidgetItem;
    dynamic "horizontalHeaderItem" [arg "column" int] ~ret:qTableWidgetItem;
    dynamic "setHorizontalHeaderItem" [arg "column" int;arg "item" qTableWidgetItem];
    dynamic "takeHorizontalHeaderItem" [arg "column" int] ~ret:qTableWidgetItem;
    dynamic "setVerticalHeaderLabels" [arg "labels" qStringList];
    dynamic "setHorizontalHeaderLabels" [arg "labels" qStringList];
    dynamic "currentRow" [] ~ret:int;
    dynamic "currentColumn" [] ~ret:int;
    dynamic "currentItem" [] ~ret:qTableWidgetItem;
    dynamic "setCurrentItem" [arg "item" qTableWidgetItem];
    dynamic "setCurrentItem" [arg "item" qTableWidgetItem;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "setCurrentCell" [arg "row" int;arg "column" int];
    dynamic "setCurrentCell" [arg "row" int;arg "column" int;arg "command" qItemSelectionModel'SelectionFlags];
    dynamic "sortItems" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "editItem" [arg "item" qTableWidgetItem];
    dynamic "openPersistentEditor" [arg "item" qTableWidgetItem];
    dynamic "closePersistentEditor" [arg "item" qTableWidgetItem];
    dynamic "cellWidget" [arg "row" int;arg "column" int] ~ret:(optional qWidget);
    dynamic "setCellWidget" [arg "row" int;arg "column" int;arg "widget" qWidget];
    dynamic "removeCellWidget" [arg "row" int;arg "column" int];
    dynamic "isItemSelected" [arg "item" qTableWidgetItem] ~ret:bool;
    dynamic "setItemSelected" [arg "item" qTableWidgetItem;arg "select" bool];
    dynamic "setRangeSelected" [arg "range" qTableWidgetSelectionRange;arg "select" bool];
    (*dynamic "selectedRanges" [] ~ret:qList<QTableWidgetSelectionRange>;*)
    (*dynamic "selectedItems" [] ~ret:qList<QTableWidgetItem *>;*)
    (*dynamic "findItems" [arg "text" qString;arg "flags" qt'MatchFlags] ~ret:qList<QTableWidgetItem *>;*)
    dynamic "visualRow" [arg "logicalRow" int] ~ret:int;
    dynamic "visualColumn" [arg "logicalColumn" int] ~ret:int;
    dynamic "itemAt" [arg "point" qPoint] ~ret:qTableWidgetItem;
    dynamic "itemAt" [arg "ax" int;arg "ay" int] ~ret:qTableWidgetItem;
    dynamic "visualItemRect" [arg "item" qTableWidgetItem] ~ret:qRect;
    dynamic "itemPrototype" [] ~ret:qTableWidgetItem;
    dynamic "setItemPrototype" [arg "item" qTableWidgetItem];
    dynamic "scrollToItem" [arg "item" qTableWidgetItem;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "insertRow" [arg "row" int];
    dynamic "insertColumn" [arg "column" int];
    dynamic "removeRow" [arg "row" int];
    dynamic "removeColumn" [arg "column" int];
    dynamic "clear" [];
    dynamic "clearContents" [];
    dynamic "itemPressed" [arg "item" qTableWidgetItem];
    dynamic "itemClicked" [arg "item" qTableWidgetItem];
    dynamic "itemDoubleClicked" [arg "item" qTableWidgetItem];
    dynamic "itemActivated" [arg "item" qTableWidgetItem];
    dynamic "itemEntered" [arg "item" qTableWidgetItem];
    dynamic "itemChanged" [arg "item" qTableWidgetItem];
    dynamic "currentItemChanged" [arg "current" qTableWidgetItem;arg "previous" qTableWidgetItem];
    dynamic "itemSelectionChanged" [];
    dynamic "cellPressed" [arg "row" int;arg "column" int];
    dynamic "cellClicked" [arg "row" int;arg "column" int];
    dynamic "cellDoubleClicked" [arg "row" int;arg "column" int];
    dynamic "cellActivated" [arg "row" int;arg "column" int];
    dynamic "cellEntered" [arg "row" int;arg "column" int];
    dynamic "cellChanged" [arg "row" int;arg "column" int];
    dynamic "currentCellChanged" [arg "currentRow" int;arg "currentColumn" int;arg "previousRow" int;arg "previousColumn" int];
    slot "clear" [];
    slot "clearContents" [];
    slot "insertColumn" [arg "" int];
    slot "insertRow" [arg "" int];
    slot "_q_dataChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitCurrentItemChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot "_q_emitItemActivated" [arg "" qModelIndex];
    slot "_q_emitItemChanged" [arg "" qModelIndex];
    slot "_q_emitItemClicked" [arg "" qModelIndex];
    slot "_q_emitItemDoubleClicked" [arg "" qModelIndex];
    slot "_q_emitItemEntered" [arg "" qModelIndex];
    slot "_q_emitItemPressed" [arg "" qModelIndex];
    slot "_q_sort" [];
    slot "removeColumn" [arg "" int];
    slot "removeRow" [arg "" int];
    (*  slot "scrollToItem" [const arg "" qTableWidgetItem];*)
    (*  slot "scrollToItem" [const qTableWidgetItem*;QAbstractItemView::arg "" ScrollHint];*)
    signal "cellActivated" [arg "" int;arg "" int];
    signal "cellChanged" [arg "" int;arg "" int];
    signal "cellClicked" [arg "" int;arg "" int];
    signal "cellDoubleClicked" [arg "" int;arg "" int];
    signal "cellEntered" [arg "" int;arg "" int];
    signal "cellPressed" [arg "" int;arg "" int];
    signal "currentCellChanged" [arg "" int;arg "" int;arg "" int;arg "" int];
    (*  signal "currentItemChanged" [arg "" qTableWidgetItem;arg "" qTableWidgetItem];*)
    (*  signal "itemActivated" [arg "" qTableWidgetItem];*)
    (*  signal "itemChanged" [arg "" qTableWidgetItem];*)
    (*  signal "itemClicked" [arg "" qTableWidgetItem];*)
    (*  signal "itemDoubleClicked" [arg "" qTableWidgetItem];*)
    (*  signal "itemEntered" [arg "" qTableWidgetItem];*)
    (*  signal "itemPressed" [arg "" qTableWidgetItem];*)
    signal "itemSelectionChanged" [];
  ]
let () = with_class qTreeWidgetItem [
    constructor "" [arg "type" int];
    constructor "" [arg "strings" qStringList;arg "type" int];
    constructor "" [arg "parent" qTreeWidget;arg "type" int];
    constructor "" [arg "parent" qTreeWidget;arg "strings" qStringList;arg "type" int];
    constructor "" [arg "parent" qTreeWidget;arg "preceding" qTreeWidgetItem;arg "type" int];
    constructor "" [arg "parent" qTreeWidgetItem;arg "type" int];
    constructor "" [arg "parent" qTreeWidgetItem;arg "strings" qStringList;arg "type" int];
    constructor "" [arg "parent" qTreeWidgetItem;arg "preceding" qTreeWidgetItem;arg "type" int];
    constructor "" [arg "other" qTreeWidgetItem];
    dynamic "clone" [] ~ret:qTreeWidgetItem;
    dynamic "treeWidget" [] ~ret:qTreeWidget;
    dynamic "setSelected" [arg "select" bool];
    dynamic "isSelected" [] ~ret:bool;
    dynamic "setHidden" [arg "hide" bool];
    dynamic "isHidden" [] ~ret:bool;
    dynamic "setExpanded" [arg "expand" bool];
    dynamic "isExpanded" [] ~ret:bool;
    dynamic "setFirstColumnSpanned" [arg "span" bool];
    dynamic "isFirstColumnSpanned" [] ~ret:bool;
    dynamic "setDisabled" [arg "disabled" bool];
    dynamic "isDisabled" [] ~ret:bool;
    dynamic "setChildIndicatorPolicy" [arg "policy" qTreeWidgetItem'ChildIndicatorPolicy];
    dynamic "childIndicatorPolicy" [] ~ret:qTreeWidgetItem'ChildIndicatorPolicy;
    dynamic "flags" [] ~ret:qt'ItemFlags;
    dynamic "setFlags" [arg "flags" qt'ItemFlags];
    dynamic "text" [arg "column" int] ~ret:qString;
    dynamic "setText" [arg "column" int;arg "text" qString];
    dynamic "icon" [arg "column" int] ~ret:qIcon;
    dynamic "setIcon" [arg "column" int;arg "icon" qIcon];
    dynamic "statusTip" [arg "column" int] ~ret:qString;
    dynamic "setStatusTip" [arg "column" int;arg "statusTip" qString];
    dynamic "toolTip" [arg "column" int] ~ret:qString;
    dynamic "setToolTip" [arg "column" int;arg "toolTip" qString];
    dynamic "whatsThis" [arg "column" int] ~ret:qString;
    dynamic "setWhatsThis" [arg "column" int;arg "whatsThis" qString];
    dynamic "font" [arg "column" int] ~ret:qFont;
    dynamic "setFont" [arg "column" int;arg "font" qFont];
    dynamic "textAlignment" [arg "column" int] ~ret:int;
    dynamic "setTextAlignment" [arg "column" int;arg "alignment" int];
    dynamic "backgroundColor" [arg "column" int] ~ret:qColor;
    dynamic "setBackgroundColor" [arg "column" int;arg "color" qColor];
    dynamic "background" [arg "column" int] ~ret:qBrush;
    dynamic "setBackground" [arg "column" int;arg "brush" qBrush];
    dynamic "textColor" [arg "column" int] ~ret:qColor;
    dynamic "setTextColor" [arg "column" int;arg "color" qColor];
    dynamic "foreground" [arg "column" int] ~ret:qBrush;
    dynamic "setForeground" [arg "column" int;arg "brush" qBrush];
    dynamic "checkState" [arg "column" int] ~ret:qt'CheckState;
    dynamic "setCheckState" [arg "column" int;arg "state" qt'CheckState];
    dynamic "sizeHint" [arg "column" int] ~ret:qSize;
    dynamic "setSizeHint" [arg "column" int;arg "size" qSize];
    dynamic "data" [arg "column" int;arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "column" int;arg "role" int;arg "value" qVariant];
    (*dynamic "operator<" [arg "other" qTreeWidgetItem] ~ret:bool;*)
    dynamic "read" [arg "in" qDataStream];
    dynamic "write" [arg "out" qDataStream];
    (*dynamic "operator=" [arg "other" qTreeWidgetItem] ~ret:qTreeWidgetItem;*)
    dynamic "parent" [] ~ret:qTreeWidgetItem;
    dynamic "child" [arg "index" int] ~ret:qTreeWidgetItem;
    dynamic "childCount" [] ~ret:int;
    dynamic "columnCount" [] ~ret:int;
    dynamic "indexOfChild" [arg "child" qTreeWidgetItem] ~ret:int;
    dynamic "addChild" [arg "child" qTreeWidgetItem];
    dynamic "insertChild" [arg "index" int;arg "child" qTreeWidgetItem];
    dynamic "removeChild" [arg "child" qTreeWidgetItem];
    dynamic "takeChild" [arg "index" int] ~ret:qTreeWidgetItem;
    (*dynamic "addChildren" [arg "children" qList<QTreeWidgetItem *>];*)
    (*dynamic "insertChildren" [arg "index" int;arg "children" qList<QTreeWidgetItem *>];*)
    (*dynamic "takeChildren" [] ~ret:qList<QTreeWidgetItem *>;*)
    dynamic "type" [] ~ret:int;
    dynamic "sortChildren" [arg "column" int;arg "order" qt'SortOrder];
  ]
let () = with_class qUndoView [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "stack" qUndoStack;opt "parent" qWidget];
    constructor "" [arg "group" qUndoGroup;opt "parent" qWidget];
    dynamic "stack" [] ~ret:qUndoStack;
    dynamic "group" [] ~ret:qUndoGroup;
    dynamic "setEmptyLabel" [arg "label" qString];
    dynamic "emptyLabel" [] ~ret:qString;
    dynamic "setCleanIcon" [arg "icon" qIcon];
    dynamic "cleanIcon" [] ~ret:qIcon;
    dynamic "setStack" [arg "stack" qUndoStack];
    dynamic "setGroup" [arg "group" qUndoGroup];
  ]
let () = with_class qFileIconProvider [
    constructor "" [];
    dynamic "icon" [arg "type" qFileIconProvider'IconType] ~ret:qIcon;
    dynamic "icon" [arg "info" qFileInfo] ~ret:qIcon;
    dynamic "type" [arg "info" qFileInfo] ~ret:qString;
    dynamic "setOptions" [arg "options" qFileIconProvider'Options];
    dynamic "options" [] ~ret:qFileIconProvider'Options;
  ]
let () = with_class qTableWidgetSelectionRange [
    constructor "" [];
    constructor "" [arg "top" int;arg "left" int;arg "bottom" int;arg "right" int];
    constructor "" [arg "other" qTableWidgetSelectionRange];
    dynamic "topRow" [] ~ret:int;
    dynamic "bottomRow" [] ~ret:int;
    dynamic "leftColumn" [] ~ret:int;
    dynamic "rightColumn" [] ~ret:int;
    dynamic "rowCount" [] ~ret:int;
    dynamic "columnCount" [] ~ret:int;
  ]
let () = with_class qFileSystemModel [
    constructor "" [opt "parent" qObject];
    signal "rootPathChanged" [arg "newPath" qString];
    signal "fileRenamed" [arg "path" qString;arg "oldName" qString;arg "newName" qString];
    signal "directoryLoaded" [arg "path" qString];
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "index" [arg "path" qString;arg "column" int] ~ret:qModelIndex;
    dynamic "parent" [arg "index" qModelIndex] ~ret:qModelIndex;
    dynamic "sibling" [arg "row" int;arg "column" int;arg "idx" qModelIndex] ~ret:qModelIndex;
    dynamic "hasChildren" [arg "parent" qModelIndex] ~ret:bool;
    dynamic "canFetchMore" [arg "parent" qModelIndex] ~ret:bool;
    dynamic "fetchMore" [arg "parent" qModelIndex];
    dynamic "rowCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "columnCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "myComputer" [arg "role" int] ~ret:qVariant;
    dynamic "data" [arg "index" qModelIndex;arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "idx" qModelIndex;arg "value" qVariant;arg "role" int] ~ret:bool;
    dynamic "headerData" [arg "section" int;arg "orientation" qt'Orientation;arg "role" int] ~ret:qVariant;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
    dynamic "sort" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "mimeTypes" [] ~ret:qStringList;
    dynamic "mimeData" [arg "indexes" qModelIndexList] ~ret:qMimeData;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "supportedDropActions" [] ~ret:qt'DropActions;
    dynamic "setRootPath" [arg "newPath" qString] ~ret:qModelIndex;
    dynamic "rootPath" [] ~ret:qString;
    dynamic "rootDirectory" [] ~ret:qDir;
    dynamic "setIconProvider" [arg "provider" qFileIconProvider];
    dynamic "iconProvider" [] ~ret:qFileIconProvider;
    dynamic "setFilter" [arg "filters" qDir'Filters];
    dynamic "filter" [] ~ret:qDir'Filters;
    dynamic "setResolveSymlinks" [arg "enable" bool];
    dynamic "resolveSymlinks" [] ~ret:bool;
    dynamic "setReadOnly" [arg "enable" bool];
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "setNameFilterDisables" [arg "enable" bool];
    dynamic "nameFilterDisables" [] ~ret:bool;
    dynamic "setNameFilters" [arg "filters" qStringList];
    dynamic "nameFilters" [] ~ret:qStringList;
    dynamic "filePath" [arg "index" qModelIndex] ~ret:qString;
    dynamic "isDir" [arg "index" qModelIndex] ~ret:bool;
    dynamic "size" [arg "index" qModelIndex] ~ret:qint64;
    dynamic "type" [arg "index" qModelIndex] ~ret:qString;
    dynamic "lastModified" [arg "index" qModelIndex] ~ret:qDateTime;
    dynamic "mkdir" [arg "parent" qModelIndex;arg "name" qString] ~ret:qModelIndex;
    dynamic "rmdir" [arg "index" qModelIndex] ~ret:bool;
    dynamic "fileName" [arg "index" qModelIndex] ~ret:qString;
    dynamic "fileIcon" [arg "index" qModelIndex] ~ret:qIcon;
    dynamic "permissions" [arg "index" qModelIndex] ~ret:qFileDevice'Permissions;
    dynamic "fileInfo" [arg "index" qModelIndex] ~ret:qFileInfo;
    dynamic "remove" [arg "index" qModelIndex] ~ret:bool;
  ]
(* END
let () = with_class qTileRules [
    constructor "" [arg "horizontalRule" qt'TileRule;arg "verticalRule" qt'TileRule];
    constructor "" [arg "rule" qt'TileRule];
  ]
  let () = with_class qItemEditorCreatorBase [
    dynamic "createWidget" [arg "parent" qWidget] ~ret:(optional qWidget);
    dynamic "valuePropertyName" [] ~ret:qByteArray;
  ]
  let () = with_class qGestureRecognizer [
    constructor "" [];
    dynamic "create" [arg "target" qObject] ~ret:qGesture;
    dynamic "recognize" [arg "gesture" qGesture;arg "watched" qObject;arg "event" qEvent] ~ret:result;
    dynamic "reset" [arg "gesture" qGesture];
    static  "registerRecognizer" [arg "recognizer" qGestureRecognizer] ~ret:qt'GestureType;
    static  "unregisterRecognizer" [arg "type" qt'GestureType];
  ]
  let () = with_class qTreeWidgetItemIterator [
    constructor "" [arg "it" qTreeWidgetItemIterator];
    constructor "" [arg "widget" qTreeWidget;arg "flags" iteratorFlags];
    constructor "" [arg "item" qTreeWidgetItem;arg "flags" iteratorFlags];
    (*dynamic "operator=" [arg "it" qTreeWidgetItemIterator] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator++" [] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator++" [arg "arg0" int] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator+=" [arg "n" int] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator--" [] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator--" [arg "arg0" int] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator-=" [arg "n" int] ~ret:qTreeWidgetItemIterator;*)
    (*dynamic "operator*" [] ~ret:qTreeWidgetItem;*)
  ]
  let () = with_class qStyleFactory [
    static  "keys" [] ~ret:qStringList;
    static  "create" [arg "key" qString] ~ret:qStyle;
  ]
  let () = with_class qGraphicsLayoutItem [
    constructor "" [arg "parent" qGraphicsLayoutItem;arg "isLayout" bool];
    dynamic "setSizePolicy" [arg "policy" qSizePolicy];
    dynamic "setSizePolicy" [arg "hPolicy" qSizePolicy'Policy;arg "vPolicy" qSizePolicy'Policy;arg "controlType" qSizePolicy'ControlType];
    dynamic "sizePolicy" [] ~ret:qSizePolicy;
    dynamic "setMinimumSize" [arg "size" qSizeF];
    dynamic "setMinimumSize" [arg "w" qreal;arg "h" qreal];
    dynamic "minimumSize" [] ~ret:qSizeF;
    dynamic "setMinimumWidth" [arg "width" qreal];
    dynamic "minimumWidth" [] ~ret:qreal;
    dynamic "setMinimumHeight" [arg "height" qreal];
    dynamic "minimumHeight" [] ~ret:qreal;
    dynamic "setPreferredSize" [arg "size" qSizeF];
    dynamic "setPreferredSize" [arg "w" qreal;arg "h" qreal];
    dynamic "preferredSize" [] ~ret:qSizeF;
    dynamic "setPreferredWidth" [arg "width" qreal];
    dynamic "preferredWidth" [] ~ret:qreal;
    dynamic "setPreferredHeight" [arg "height" qreal];
    dynamic "preferredHeight" [] ~ret:qreal;
    dynamic "setMaximumSize" [arg "size" qSizeF];
    dynamic "setMaximumSize" [arg "w" qreal;arg "h" qreal];
    dynamic "maximumSize" [] ~ret:qSizeF;
    dynamic "setMaximumWidth" [arg "width" qreal];
    dynamic "maximumWidth" [] ~ret:qreal;
    dynamic "setMaximumHeight" [arg "height" qreal];
    dynamic "maximumHeight" [] ~ret:qreal;
    dynamic "setGeometry" [arg "rect" qRectF];
    dynamic "geometry" [] ~ret:qRectF;
    dynamic "getContentsMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "contentsRect" [] ~ret:qRectF;
    dynamic "effectiveSizeHint" [arg "which" qt'SizeHint;arg "constraint" qSizeF] ~ret:qSizeF;
    dynamic "updateGeometry" [];
    dynamic "parentLayoutItem" [] ~ret:qGraphicsLayoutItem;
    dynamic "setParentLayoutItem" [arg "parent" qGraphicsLayoutItem];
    dynamic "isLayout" [] ~ret:bool;
    dynamic "graphicsItem" [] ~ret:qGraphicsItem;
    dynamic "ownedByLayout" [] ~ret:bool;
  ]
  let () = with_class qItemEditorFactory [
    constructor "" [];
    dynamic "createEditor" [arg "userType" int;arg "parent" qWidget] ~ret:(optional qWidget);
    dynamic "valuePropertyName" [arg "userType" int] ~ret:qByteArray;
    dynamic "registerEditor" [arg "userType" int;arg "creator" qItemEditorCreatorBase];
    static  "defaultFactory" [] ~ret:qItemEditorFactory;
    static  "setDefaultFactory" [arg "factory" qItemEditorFactory];
  ]
  let () = with_class qWhatsThis [
    static  "enterWhatsThisMode" [];
    static  "inWhatsThisMode" [] ~ret:bool;
    static  "leaveWhatsThisMode" [];
    static  "showText" [arg "pos" qPoint;arg "text" qString;arg "w" qWidget];
    static  "hideText" [];
    static  "createAction" [arg "parent" qObject] ~ret:qAction;
  ]
  let () = with_class qScrollerProperties [
    constructor "" [];
    constructor "" [arg "sp" qScrollerProperties];
    (*dynamic "operator=" [arg "sp" qScrollerProperties] ~ret:qScrollerProperties;*)
    (*dynamic "operator==" [arg "sp" qScrollerProperties] ~ret:bool;*)
    (*dynamic "operator!=" [arg "sp" qScrollerProperties] ~ret:bool;*)
    static  "setDefaultScrollerProperties" [arg "sp" qScrollerProperties];
    static  "unsetDefaultScrollerProperties" [];
    dynamic "scrollMetric" [arg "metric" scrollMetric] ~ret:qVariant;
    dynamic "setScrollMetric" [arg "metric" scrollMetric;arg "value" qVariant];
  ]
  let () = with_class qTableWidgetItem [
    constructor "" [arg "type" int];
    constructor "" [arg "text" qString;arg "type" int];
    constructor "" [arg "icon" qIcon;arg "text" qString;arg "type" int];
    constructor "" [arg "other" qTableWidgetItem];
    dynamic "clone" [] ~ret:qTableWidgetItem;
    dynamic "tableWidget" [] ~ret:qTableWidget;
    dynamic "row" [] ~ret:int;
    dynamic "column" [] ~ret:int;
    dynamic "setSelected" [arg "select" bool];
    dynamic "isSelected" [] ~ret:bool;
    dynamic "flags" [] ~ret:qt'ItemFlags;
    dynamic "setFlags" [arg "flags" qt'ItemFlags];
    dynamic "text" [] ~ret:qString;
    dynamic "setText" [arg "text" qString];
    dynamic "icon" [] ~ret:qIcon;
    dynamic "setIcon" [arg "icon" qIcon];
    dynamic "statusTip" [] ~ret:qString;
    dynamic "setStatusTip" [arg "statusTip" qString];
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setToolTip" [arg "toolTip" qString];
    dynamic "whatsThis" [] ~ret:qString;
    dynamic "setWhatsThis" [arg "whatsThis" qString];
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "font" qFont];
    dynamic "textAlignment" [] ~ret:int;
    dynamic "setTextAlignment" [arg "alignment" int];
    dynamic "backgroundColor" [] ~ret:qColor;
    dynamic "setBackgroundColor" [arg "color" qColor];
    dynamic "background" [] ~ret:qBrush;
    dynamic "setBackground" [arg "brush" qBrush];
    dynamic "textColor" [] ~ret:qColor;
    dynamic "setTextColor" [arg "color" qColor];
    dynamic "foreground" [] ~ret:qBrush;
    dynamic "setForeground" [arg "brush" qBrush];
    dynamic "checkState" [] ~ret:qt'CheckState;
    dynamic "setCheckState" [arg "state" qt'CheckState];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "setSizeHint" [arg "size" qSize];
    dynamic "data" [arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "role" int;arg "value" qVariant];
    (*dynamic "operator<" [arg "other" qTableWidgetItem] ~ret:bool;*)
    dynamic "read" [arg "in" qDataStream];
    dynamic "write" [arg "out" qDataStream];
    (*dynamic "operator=" [arg "other" qTableWidgetItem] ~ret:qTableWidgetItem;*)
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsItem [
    constructor "" [arg "parent" qGraphicsItem];
    dynamic "scene" [] ~ret:qGraphicsScene;
    dynamic "parentItem" [] ~ret:qGraphicsItem;
    dynamic "topLevelItem" [] ~ret:qGraphicsItem;
    dynamic "parentObject" [] ~ret:qGraphicsObject;
    dynamic "parentWidget" [] ~ret:qGraphicsWidget;
    dynamic "topLevelWidget" [] ~ret:qGraphicsWidget;
    dynamic "window" [] ~ret:qGraphicsWidget;
    dynamic "panel" [] ~ret:qGraphicsItem;
    dynamic "setParentItem" [arg "newParent" qGraphicsItem];
    (*dynamic "children" [] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "childItems" [] ~ret:qList<QGraphicsItem *>;*)
    dynamic "isWidget" [] ~ret:bool;
    dynamic "isWindow" [] ~ret:bool;
    dynamic "isPanel" [] ~ret:bool;
    dynamic "toGraphicsObject" [] ~ret:qGraphicsObject;
    dynamic "toGraphicsObject" [] ~ret:qGraphicsObject;
    dynamic "group" [] ~ret:qGraphicsItemGroup;
    dynamic "setGroup" [arg "group" qGraphicsItemGroup];
    dynamic "flags" [] ~ret:graphicsItemFlags;
    dynamic "setFlag" [arg "flag" graphicsItemFlag;arg "enabled" bool];
    dynamic "setFlags" [arg "flags" graphicsItemFlags];
    dynamic "cacheMode" [] ~ret:cacheMode;
    dynamic "setCacheMode" [arg "mode" cacheMode;arg "logicalCacheSize" qSize];
    dynamic "panelModality" [] ~ret:panelModality;
    dynamic "setPanelModality" [arg "panelModality" panelModality];
    dynamic "isBlockedByModalPanel" [arg "blockingPanel" qGraphicsItem] ~ret:bool;
    dynamic "toolTip" [] ~ret:qString;
    dynamic "setToolTip" [arg "toolTip" qString];
    dynamic "cursor" [] ~ret:qCursor;
    dynamic "setCursor" [arg "cursor" qCursor];
    dynamic "hasCursor" [] ~ret:bool;
    dynamic "unsetCursor" [];
    dynamic "isVisible" [] ~ret:bool;
    dynamic "isVisibleTo" [arg "parent" qGraphicsItem] ~ret:bool;
    dynamic "setVisible" [arg "visible" bool];
    dynamic "hide" [];
    dynamic "show" [];
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "setEnabled" [arg "enabled" bool];
    dynamic "isSelected" [] ~ret:bool;
    dynamic "setSelected" [arg "selected" bool];
    dynamic "acceptDrops" [] ~ret:bool;
    dynamic "setAcceptDrops" [arg "on" bool];
    dynamic "opacity" [] ~ret:qreal;
    dynamic "effectiveOpacity" [] ~ret:qreal;
    dynamic "setOpacity" [arg "opacity" qreal];
    dynamic "graphicsEffect" [] ~ret:qGraphicsEffect;
    dynamic "setGraphicsEffect" [arg "effect" qGraphicsEffect];
    dynamic "acceptedMouseButtons" [] ~ret:qt'MouseButtons;
    dynamic "setAcceptedMouseButtons" [arg "buttons" qt'MouseButtons];
    dynamic "acceptsHoverEvents" [] ~ret:bool;
    dynamic "setAcceptsHoverEvents" [arg "enabled" bool];
    dynamic "acceptHoverEvents" [] ~ret:bool;
    dynamic "setAcceptHoverEvents" [arg "enabled" bool];
    dynamic "acceptTouchEvents" [] ~ret:bool;
    dynamic "setAcceptTouchEvents" [arg "enabled" bool];
    dynamic "filtersChildEvents" [] ~ret:bool;
    dynamic "setFiltersChildEvents" [arg "enabled" bool];
    dynamic "handlesChildEvents" [] ~ret:bool;
    dynamic "setHandlesChildEvents" [arg "enabled" bool];
    dynamic "isActive" [] ~ret:bool;
    dynamic "setActive" [arg "active" bool];
    dynamic "hasFocus" [] ~ret:bool;
    dynamic "setFocus" [arg "focusReason" qt'FocusReason];
    dynamic "clearFocus" [];
    dynamic "focusProxy" [] ~ret:qGraphicsItem;
    dynamic "setFocusProxy" [arg "item" qGraphicsItem];
    dynamic "focusItem" [] ~ret:qGraphicsItem;
    dynamic "grabMouse" [];
    dynamic "ungrabMouse" [];
    dynamic "grabKeyboard" [];
    dynamic "ungrabKeyboard" [];
    dynamic "pos" [] ~ret:qPointF;
    dynamic "x" [] ~ret:qreal;
    dynamic "setX" [arg "x" qreal];
    dynamic "y" [] ~ret:qreal;
    dynamic "setY" [arg "y" qreal];
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "setPos" [arg "pos" qPointF];
    dynamic "setPos" [arg "x" qreal;arg "y" qreal];
    dynamic "moveBy" [arg "dx" qreal;arg "dy" qreal];
    dynamic "ensureVisible" [arg "rect" qRectF;arg "xmargin" int;arg "ymargin" int];
    dynamic "ensureVisible" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "xmargin" int;arg "ymargin" int];
    dynamic "matrix" [] ~ret:qMatrix;
    dynamic "sceneMatrix" [] ~ret:qMatrix;
    dynamic "setMatrix" [arg "matrix" qMatrix;arg "combine" bool];
    dynamic "resetMatrix" [];
    dynamic "transform" [] ~ret:qTransform;
    dynamic "sceneTransform" [] ~ret:qTransform;
    dynamic "deviceTransform" [arg "viewportTransform" qTransform] ~ret:qTransform;
    dynamic "itemTransform" [arg "other" qGraphicsItem;arg "ok" bool] ~ret:qTransform;
    dynamic "setTransform" [arg "matrix" qTransform;arg "combine" bool];
    dynamic "resetTransform" [];
    dynamic "rotate" [arg "angle" qreal];
    dynamic "scale" [arg "sx" qreal;arg "sy" qreal];
    dynamic "shear" [arg "sh" qreal;arg "sv" qreal];
    dynamic "translate" [arg "dx" qreal;arg "dy" qreal];
    dynamic "setRotation" [arg "angle" qreal];
    dynamic "rotation" [] ~ret:qreal;
    dynamic "setScale" [arg "factor" qreal];
    dynamic "scale" [] ~ret:qreal;
    (*dynamic "transformations" [] ~ret:qList<QGraphicsTransform *>;*)
    (*dynamic "setTransformations" [arg "transformations" qList<QGraphicsTransform *>];*)
    dynamic "transformOriginPoint" [] ~ret:qPointF;
    dynamic "setTransformOriginPoint" [arg "origin" qPointF];
    dynamic "setTransformOriginPoint" [arg "x" qreal;arg "y" qreal];
    dynamic "advance" [arg "phase" int];
    dynamic "zValue" [] ~ret:qreal;
    dynamic "setZValue" [arg "z" qreal];
    dynamic "stackBefore" [arg "sibling" qGraphicsItem];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "childrenBoundingRect" [] ~ret:qRectF;
    dynamic "sceneBoundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "isClipped" [] ~ret:bool;
    dynamic "clipPath" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "collidesWithItem" [arg "other" qGraphicsItem;arg "mode" qt'ItemSelectionMode] ~ret:bool;
    dynamic "collidesWithPath" [arg "path" qPainterPath;arg "mode" qt'ItemSelectionMode] ~ret:bool;
    (*dynamic "collidingItems" [arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    dynamic "isObscured" [arg "rect" qRectF] ~ret:bool;
    dynamic "isObscured" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:bool;
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "boundingRegion" [arg "itemToDeviceTransform" qTransform] ~ret:qRegion;
    dynamic "boundingRegionGranularity" [] ~ret:qreal;
    dynamic "setBoundingRegionGranularity" [arg "granularity" qreal];
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "update" [arg "rect" qRectF];
    dynamic "update" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    dynamic "scroll" [arg "dx" qreal;arg "dy" qreal;arg "rect" qRectF];
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "point" qPointF] ~ret:qPointF;
    dynamic "mapToParent" [arg "point" qPointF] ~ret:qPointF;
    dynamic "mapToScene" [arg "point" qPointF] ~ret:qPointF;
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapToParent" [arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapToScene" [arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapRectToItem" [arg "item" qGraphicsItem;arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapRectToParent" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapRectToScene" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapToParent" [arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapToScene" [arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapToParent" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapToScene" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "point" qPointF] ~ret:qPointF;
    dynamic "mapFromParent" [arg "point" qPointF] ~ret:qPointF;
    dynamic "mapFromScene" [arg "point" qPointF] ~ret:qPointF;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapFromParent" [arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapFromScene" [arg "rect" qRectF] ~ret:qPolygonF;
    dynamic "mapRectFromItem" [arg "item" qGraphicsItem;arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapRectFromParent" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapRectFromScene" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapFromParent" [arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapFromScene" [arg "polygon" qPolygonF] ~ret:qPolygonF;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapFromParent" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapFromScene" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapToParent" [arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapToScene" [arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapToItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapToParent" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapToScene" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapRectToItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "mapRectToParent" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "mapRectToScene" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapFromParent" [arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapFromScene" [arg "x" qreal;arg "y" qreal] ~ret:qPointF;
    dynamic "mapFromItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapFromParent" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapFromScene" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygonF;
    dynamic "mapRectFromItem" [arg "item" qGraphicsItem;arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "mapRectFromParent" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "mapRectFromScene" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qRectF;
    dynamic "isAncestorOf" [arg "child" qGraphicsItem] ~ret:bool;
    dynamic "commonAncestorItem" [arg "other" qGraphicsItem] ~ret:qGraphicsItem;
    dynamic "isUnderMouse" [] ~ret:bool;
    dynamic "data" [arg "key" int] ~ret:qVariant;
    dynamic "setData" [arg "key" int;arg "value" qVariant];
    dynamic "inputMethodHints" [] ~ret:qt'InputMethodHints;
    dynamic "setInputMethodHints" [arg "hints" qt'InputMethodHints];
    dynamic "type" [] ~ret:int;
    dynamic "installSceneEventFilter" [arg "filterItem" qGraphicsItem];
    dynamic "removeSceneEventFilter" [arg "filterItem" qGraphicsItem];
  ]
  let () = with_class qToolTip [
    static  "showText" [arg "pos" qPoint;arg "text" qString;arg "w" qWidget];
    static  "showText" [arg "pos" qPoint;arg "text" qString;arg "w" qWidget;arg "rect" qRect];
    static  "showText" [arg "pos" qPoint;arg "text" qString;arg "w" qWidget;arg "rect" qRect;arg "msecDisplayTime" int];
    static  "hideText" [];
    static  "isVisible" [] ~ret:bool;
    static  "text" [] ~ret:qString;
    static  "palette" [] ~ret:qPalette;
    static  "setPalette" [arg "palette" qPalette];
    static  "font" [] ~ret:qFont;
    static  "setFont" [arg "font" qFont];
  ]
  let () = with_class qColormap [
    static  "instance" [arg "screen" int] ~ret:qColormap;
    constructor "" [arg "colormap" qColormap];
    (*dynamic "operator=" [arg "colormap" qColormap] ~ret:qColormap;*)
    dynamic "mode" [] ~ret:mode;
    dynamic "depth" [] ~ret:int;
    dynamic "size" [] ~ret:int;
    dynamic "pixel" [arg "color" qColor] ~ret:uint;
    dynamic "colorAt" [arg "pixel" uint] ~ret:qColor;
    (*dynamic "colormap" [] ~ret:qVector<QColor>;*)
  ]
  let () = with_class qUndoCommand [
    constructor "" [arg "parent" qUndoCommand];
    constructor "" [arg "text" qString;arg "parent" qUndoCommand];
    dynamic "undo" [];
    dynamic "redo" [];
    dynamic "text" [] ~ret:qString;
    dynamic "actionText" [] ~ret:qString;
    dynamic "setText" [arg "text" qString];
    dynamic "isObsolete" [] ~ret:bool;
    dynamic "setObsolete" [arg "obsolete" bool];
    dynamic "id" [] ~ret:int;
    dynamic "mergeWith" [arg "command" qUndoCommand] ~ret:bool;
    dynamic "childCount" [] ~ret:int;
    dynamic "child" [arg "index" int] ~ret:qUndoCommand;
  ]
  let () = with_class qFormLayout'TakeRowResult [
  ]
  let () = with_class qStyleHintReturn [
    constructor "" [arg "version" int;arg "type" int];
  ]
  let () = with_class qLayoutItem [
    constructor "" [arg "alignment" qt'Alignment];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "setGeometry" [arg "r" qRect];
    dynamic "geometry" [] ~ret:qRect;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "w" int] ~ret:int;
    dynamic "minimumHeightForWidth" [arg "w" int] ~ret:int;
    dynamic "invalidate" [];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "layout" [] ~ret:(optional qLayout);
    dynamic "spacerItem" [] ~ret:qSpacerItem;
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "alignment" qt'Alignment];
    dynamic "controlTypes" [] ~ret:qSizePolicy'ControlTypes;
  ]
  let () = with_class qStyleOption [
    constructor "" [arg "version" int;arg "type" int];
    constructor "" [arg "other" qStyleOption];
    dynamic "init" [arg "widget" qWidget];
    dynamic "initFrom" [arg "widget" qWidget];
    (*dynamic "operator=" [arg "other" qStyleOption] ~ret:qStyleOption;*)
  ]
  let () = with_class qSizePolicy [
    constructor "" [];
    constructor "" [arg "horizontal" policy;arg "vertical" policy;arg "type" controlType];
    dynamic "horizontalPolicy" [] ~ret:policy;
    dynamic "verticalPolicy" [] ~ret:policy;
    dynamic "controlType" [] ~ret:controlType;
    dynamic "setHorizontalPolicy" [arg "policy" policy];
    dynamic "setVerticalPolicy" [arg "policy" policy];
    dynamic "setControlType" [arg "type" controlType];
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "setHeightForWidth" [arg "dependent" bool];
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "setWidthForHeight" [arg "dependent" bool];
    dynamic "hasWidthForHeight" [] ~ret:bool;
    (*dynamic "operator==" [arg "other" qSizePolicy] ~ret:bool;*)
    (*dynamic "operator!=" [arg "other" qSizePolicy] ~ret:bool;*)
    constructor "" [];
    dynamic "horizontalStretch" [] ~ret:int;
    dynamic "verticalStretch" [] ~ret:int;
    dynamic "setHorizontalStretch" [arg "stretchFactor" int];
    dynamic "setVerticalStretch" [arg "stretchFactor" int];
    dynamic "retainSizeWhenHidden" [] ~ret:bool;
    dynamic "setRetainSizeWhenHidden" [arg "retainSize" bool];
    dynamic "transpose" [];
    dynamic "transposed" [] ~ret:qSizePolicy;
  ]
  let () = with_class qKeyEventTransition [
    constructor "" [arg "sourceState" qState];
    constructor "" [arg "object" qObject;arg "type" qEvent'Type;arg "key" int;arg "sourceState" qState];
    dynamic "key" [] ~ret:int;
    dynamic "setKey" [arg "key" int];
    dynamic "modifierMask" [] ~ret:qt'KeyboardModifiers;
    dynamic "setModifierMask" [arg "modifierMask" qt'KeyboardModifiers];
  ]
  let () = with_class qMouseEventTransition [
    constructor "" [arg "sourceState" qState];
    constructor "" [arg "object" qObject;arg "type" qEvent'Type;arg "button" qt'MouseButton;arg "sourceState" qState];
    dynamic "button" [] ~ret:qt'MouseButton;
    dynamic "setButton" [arg "button" qt'MouseButton];
    dynamic "modifierMask" [] ~ret:qt'KeyboardModifiers;
    dynamic "setModifierMask" [arg "modifierMask" qt'KeyboardModifiers];
    dynamic "hitTestPath" [] ~ret:qPainterPath;
    dynamic "setHitTestPath" [arg "path" qPainterPath];
  ]
  let () = with_class qDirModel [
    constructor "" [arg "nameFilters" qStringList;arg "filters" qDir'Filters;arg "sort" qDir'SortFlags;arg "parent" qObject];
    constructor "" [opt "parent" qObject];
    dynamic "index" [arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:qModelIndex;
    dynamic "parent" [arg "child" qModelIndex] ~ret:qModelIndex;
    dynamic "rowCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "columnCount" [arg "parent" qModelIndex] ~ret:int;
    dynamic "data" [arg "index" qModelIndex;arg "role" int] ~ret:qVariant;
    dynamic "setData" [arg "index" qModelIndex;arg "value" qVariant;arg "role" int] ~ret:bool;
    dynamic "headerData" [arg "section" int;arg "orientation" qt'Orientation;arg "role" int] ~ret:qVariant;
    dynamic "hasChildren" [arg "parent" qModelIndex] ~ret:bool;
    dynamic "flags" [arg "index" qModelIndex] ~ret:qt'ItemFlags;
    dynamic "sort" [arg "column" int;arg "order" qt'SortOrder];
    dynamic "mimeTypes" [] ~ret:qStringList;
    dynamic "mimeData" [arg "indexes" qModelIndexList] ~ret:qMimeData;
    dynamic "dropMimeData" [arg "data" qMimeData;arg "action" qt'DropAction;arg "row" int;arg "column" int;arg "parent" qModelIndex] ~ret:bool;
    dynamic "supportedDropActions" [] ~ret:qt'DropActions;
    dynamic "setIconProvider" [arg "provider" qFileIconProvider];
    dynamic "iconProvider" [] ~ret:qFileIconProvider;
    dynamic "setNameFilters" [arg "filters" qStringList];
    dynamic "nameFilters" [] ~ret:qStringList;
    dynamic "setFilter" [arg "filters" qDir'Filters];
    dynamic "filter" [] ~ret:qDir'Filters;
    dynamic "setSorting" [arg "sort" qDir'SortFlags];
    dynamic "sorting" [] ~ret:qDir'SortFlags;
    dynamic "setResolveSymlinks" [arg "enable" bool];
    dynamic "resolveSymlinks" [] ~ret:bool;
    dynamic "setReadOnly" [arg "enable" bool];
    dynamic "isReadOnly" [] ~ret:bool;
    dynamic "setLazyChildCount" [arg "enable" bool];
    dynamic "lazyChildCount" [] ~ret:bool;
    dynamic "index" [arg "path" qString;arg "column" int] ~ret:qModelIndex;
    dynamic "isDir" [arg "index" qModelIndex] ~ret:bool;
    dynamic "mkdir" [arg "parent" qModelIndex;arg "name" qString] ~ret:qModelIndex;
    dynamic "rmdir" [arg "index" qModelIndex] ~ret:bool;
    dynamic "remove" [arg "index" qModelIndex] ~ret:bool;
    dynamic "filePath" [arg "index" qModelIndex] ~ret:qString;
    dynamic "fileName" [arg "index" qModelIndex] ~ret:qString;
    dynamic "fileIcon" [arg "index" qModelIndex] ~ret:qIcon;
    dynamic "fileInfo" [arg "index" qModelIndex] ~ret:qFileInfo;
    dynamic "refresh" [arg "parent" qModelIndex];
  ]
  let () = with_class qStyleOptionFocusRect [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionFocusRect];
  ]
  let () = with_class qStyleOptionFrame [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionFrame];
  ]
  let () = with_class qStyleOptionTabWidgetFrame [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionTabWidgetFrame];
  ]
  let () = with_class qStyleOptionTabBarBase [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionTabBarBase];
  ]
  let () = with_class qStyleOptionHeader [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionHeader];
  ]
  let () = with_class qStyleOptionButton [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionButton];
  ]
  let () = with_class qStyleOptionTab [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionTab];
  ]
  let () = with_class qStyleOptionToolBar [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionToolBar];
  ]
  let () = with_class qStyleOptionProgressBar [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionProgressBar];
  ]
  let () = with_class qStyleOptionMenuItem [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionMenuItem];
  ]
  let () = with_class qStyleOptionDockWidget [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionDockWidget];
  ]
  let () = with_class qStyleOptionViewItem [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionViewItem];
  ]
  let () = with_class qStyleOptionToolBox [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionToolBox];
  ]
  let () = with_class qStyleOptionRubberBand [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionRubberBand];
  ]
  let () = with_class qStyleOptionComplex [
    constructor "" [arg "version" int;arg "type" int];
    constructor "" [arg "other" qStyleOptionComplex];
  ]
  let () = with_class qStyleOptionGraphicsItem [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionGraphicsItem];
    static  "levelOfDetailFromTransform" [arg "worldTransform" qTransform] ~ret:qreal;
  ]
  let () = with_class qSpacerItem [
    constructor "" [arg "w" int;arg "h" int;arg "hPolicy" qSizePolicy'Policy;arg "vPolicy" qSizePolicy'Policy];
    dynamic "changeSize" [arg "w" int;arg "h" int;arg "hPolicy" qSizePolicy'Policy;arg "vPolicy" qSizePolicy'Policy];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "setGeometry" [arg "r" qRect];
    dynamic "geometry" [] ~ret:qRect;
    dynamic "spacerItem" [] ~ret:qSpacerItem;
    dynamic "sizePolicy" [] ~ret:qSizePolicy;
  ]
  let () = with_class qWidgetItem [
    constructor "" [opt "widget" qWidget];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "minimumSize" [] ~ret:qSize;
    dynamic "maximumSize" [] ~ret:qSize;
    dynamic "expandingDirections" [] ~ret:qt'Orientations;
    dynamic "isEmpty" [] ~ret:bool;
    dynamic "setGeometry" [arg "rect" qRect];
    dynamic "geometry" [] ~ret:qRect;
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "hasHeightForWidth" [] ~ret:bool;
    dynamic "heightForWidth" [arg "w" int] ~ret:int;
    dynamic "controlTypes" [] ~ret:qSizePolicy'ControlTypes;
  ]
  let () = with_class qStyleHintReturnMask [
    constructor "" [];
  ]
  let () = with_class qStyleHintReturnVariant [
    constructor "" [];
  ]
  let () = with_class qStylePainter [
    constructor "" [];
    constructor "" [opt "widget" qWidget];
    constructor "" [arg "pd" qPaintDevice;opt "widget" qWidget];
    dynamic "begin" [arg "widget" qWidget] ~ret:bool;
    dynamic "begin" [arg "pd" qPaintDevice;arg "widget" qWidget] ~ret:bool;
    dynamic "drawPrimitive" [arg "pe" qStyle'PrimitiveElement;arg "option" qStyleOption];
    dynamic "drawControl" [arg "ce" qStyle'ControlElement;arg "option" qStyleOption];
    dynamic "drawComplexControl" [arg "cc" qStyle'ComplexControl;arg "option" qStyleOptionComplex];
    dynamic "drawItemText" [arg "rect" qRect;arg "flags" int;arg "pal" qPalette;arg "enabled" bool;arg "text" qString;arg "textRole" qPalette'ColorRole];
    dynamic "drawItemPixmap" [arg "rect" qRect;arg "flags" int;arg "pixmap" qPixmap];
    dynamic "style" [] ~ret:qStyle;
  ]
  let () = with_class qGraphicsObject [
    constructor "" [arg "parent" qGraphicsItem];
    dynamic "grabGesture" [arg "gesture" qt'GestureType;arg "flags" qt'GestureFlags];
    dynamic "ungrabGesture" [arg "gesture" qt'GestureType];
    dynamic "parentChanged" [];
    dynamic "opacityChanged" [];
    dynamic "visibleChanged" [];
    dynamic "enabledChanged" [];
    dynamic "xChanged" [];
    dynamic "yChanged" [];
    dynamic "zChanged" [];
    dynamic "rotationChanged" [];
    dynamic "scaleChanged" [];
  ]
  let () = with_class qAbstractGraphicsShapeItem [
    constructor "" [arg "parent" qGraphicsItem];
    dynamic "pen" [] ~ret:qPen;
    dynamic "setPen" [arg "pen" qPen];
    dynamic "brush" [] ~ret:qBrush;
    dynamic "setBrush" [arg "brush" qBrush];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
  ]
  let () = with_class qGraphicsLineItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "line" qLineF;arg "parent" qGraphicsItem];
    constructor "" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2;arg "parent" qGraphicsItem];
    dynamic "pen" [] ~ret:qPen;
    dynamic "setPen" [arg "pen" qPen];
    dynamic "line" [] ~ret:qLineF;
    dynamic "setLine" [arg "line" qLineF];
    dynamic "setLine" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsPixmapItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "pixmap" qPixmap;arg "parent" qGraphicsItem];
    dynamic "pixmap" [] ~ret:qPixmap;
    dynamic "setPixmap" [arg "pixmap" qPixmap];
    dynamic "transformationMode" [] ~ret:qt'TransformationMode;
    dynamic "setTransformationMode" [arg "mode" qt'TransformationMode];
    dynamic "offset" [] ~ret:qPointF;
    dynamic "setOffset" [arg "offset" qPointF];
    dynamic "setOffset" [arg "x" qreal;arg "y" qreal];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
    dynamic "shapeMode" [] ~ret:shapeMode;
    dynamic "setShapeMode" [arg "mode" shapeMode];
  ]
  let () = with_class qGraphicsItemGroup [
    constructor "" [arg "parent" qGraphicsItem];
    dynamic "addToGroup" [arg "item" qGraphicsItem];
    dynamic "removeFromGroup" [arg "item" qGraphicsItem];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qPlainTextDocumentLayout [
    constructor "" [arg "document" qTextDocument];
    dynamic "draw" [arg "arg0" qPainter;arg "arg1" paintContext];
    dynamic "hitTest" [arg "arg0" qPointF;arg "arg1" qt'HitTestAccuracy] ~ret:int;
    dynamic "pageCount" [] ~ret:int;
    dynamic "documentSize" [] ~ret:qSizeF;
    dynamic "frameBoundingRect" [arg "arg0" qTextFrame] ~ret:qRectF;
    dynamic "blockBoundingRect" [arg "block" qTextBlock] ~ret:qRectF;
    dynamic "ensureBlockLayout" [arg "block" qTextBlock];
    dynamic "setCursorWidth" [arg "width" int];
    dynamic "cursorWidth" [] ~ret:int;
    dynamic "requestUpdate" [];
  ]
  let () = with_class qGraphicsLayout [
    constructor "" [arg "parent" qGraphicsLayoutItem];
    dynamic "setContentsMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "getContentsMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "activate" [];
    dynamic "isActivated" [] ~ret:bool;
    dynamic "invalidate" [];
    dynamic "updateGeometry" [];
    dynamic "widgetEvent" [arg "e" qEvent];
    dynamic "count" [] ~ret:int;
    dynamic "itemAt" [arg "i" int] ~ret:qGraphicsLayoutItem;
    dynamic "removeAt" [arg "index" int];
  ]
  let () = with_class qItemEditorCreator [
    constructor "" [arg "valuePropertyName" qByteArray];
    dynamic "createWidget" [arg "parent" qWidget] ~ret:(optional qWidget);
    dynamic "valuePropertyName" [] ~ret:qByteArray;
  ]
  let () = with_class qStandardItemEditorCreator [
    constructor "" [];
    dynamic "createWidget" [arg "parent" qWidget] ~ret:(optional qWidget);
    dynamic "valuePropertyName" [] ~ret:qByteArray;
  ]
  let () = with_class qGraphicsSceneEvent [
    dynamic "widget" [] ~ret:(optional qWidget);
  ]
  let () = with_class qGestureEvent [
    (*constructor "" [arg "gestures" qList<QGesture *>];*)
    (*dynamic "gestures" [] ~ret:qList<QGesture *>;*)
    dynamic "gesture" [arg "type" qt'GestureType] ~ret:qGesture;
    (*dynamic "activeGestures" [] ~ret:qList<QGesture *>;*)
    (*dynamic "canceledGestures" [] ~ret:qList<QGesture *>;*)
    dynamic "setAccepted" [arg "gesture" qGesture;arg "value" bool];
    dynamic "accept" [arg "gesture" qGesture];
    dynamic "ignore" [arg "gesture" qGesture];
    dynamic "isAccepted" [arg "gesture" qGesture] ~ret:bool;
    dynamic "setAccepted" [arg "gestureType" qt'GestureType;arg "value" bool];
    dynamic "accept" [arg "gestureType" qt'GestureType];
    dynamic "ignore" [arg "gestureType" qt'GestureType];
    dynamic "isAccepted" [arg "gestureType" qt'GestureType] ~ret:bool;
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "mapToGraphicsScene" [arg "gesturePoint" qPointF] ~ret:qPointF;
  ]
  let () = with_class qGraphicsEffect [
    constructor "" [opt "parent" qObject];
    dynamic "boundingRectFor" [arg "rect" qRectF] ~ret:qRectF;
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "isEnabled" [] ~ret:bool;
    dynamic "setEnabled" [arg "enable" bool];
    dynamic "update" [];
    dynamic "enabledChanged" [arg "enabled" bool];
  ]
  let () = with_class qGraphicsAnchor [
    dynamic "setSpacing" [arg "spacing" qreal];
    dynamic "unsetSpacing" [];
    dynamic "spacing" [] ~ret:qreal;
    dynamic "setSizePolicy" [arg "policy" qSizePolicy'Policy];
    dynamic "sizePolicy" [] ~ret:qSizePolicy'Policy;
  ]
  let () = with_class qGraphicsItemAnimation [
    constructor "" [opt "parent" qObject];
    dynamic "item" [] ~ret:qGraphicsItem;
    dynamic "setItem" [arg "item" qGraphicsItem];
    dynamic "timeLine" [] ~ret:qTimeLine;
    dynamic "setTimeLine" [arg "timeLine" qTimeLine];
    dynamic "posAt" [arg "step" qreal] ~ret:qPointF;
    (*dynamic "posList" [] ~ret:qList<QPair<qreal, QPointF> >;*)
    dynamic "setPosAt" [arg "step" qreal;arg "point" qPointF];
    dynamic "matrixAt" [arg "step" qreal] ~ret:qMatrix;
    dynamic "rotationAt" [arg "step" qreal] ~ret:qreal;
    (*dynamic "rotationList" [] ~ret:qList<QPair<qreal, qreal> >;*)
    dynamic "setRotationAt" [arg "step" qreal;arg "angle" qreal];
    dynamic "xTranslationAt" [arg "step" qreal] ~ret:qreal;
    dynamic "yTranslationAt" [arg "step" qreal] ~ret:qreal;
    (*dynamic "translationList" [] ~ret:qList<QPair<qreal, QPointF> >;*)
    dynamic "setTranslationAt" [arg "step" qreal;arg "dx" qreal;arg "dy" qreal];
    dynamic "verticalScaleAt" [arg "step" qreal] ~ret:qreal;
    dynamic "horizontalScaleAt" [arg "step" qreal] ~ret:qreal;
    (*dynamic "scaleList" [] ~ret:qList<QPair<qreal, QPointF> >;*)
    dynamic "setScaleAt" [arg "step" qreal;arg "sx" qreal;arg "sy" qreal];
    dynamic "verticalShearAt" [arg "step" qreal] ~ret:qreal;
    dynamic "horizontalShearAt" [arg "step" qreal] ~ret:qreal;
    (*dynamic "shearList" [] ~ret:qList<QPair<qreal, QPointF> >;*)
    dynamic "setShearAt" [arg "step" qreal;arg "sh" qreal;arg "sv" qreal];
    dynamic "clear" [];
    dynamic "setStep" [arg "step" qreal];
    dynamic "reset" [];
  ]
  let () = with_class qGraphicsScene [
    constructor "" [opt "parent" qObject];
    constructor "" [arg "sceneRect" qRectF;arg "parent" qObject];
    constructor "" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal;arg "parent" qObject];
    dynamic "sceneRect" [] ~ret:qRectF;
    dynamic "width" [] ~ret:qreal;
    dynamic "height" [] ~ret:qreal;
    dynamic "setSceneRect" [arg "rect" qRectF];
    dynamic "setSceneRect" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal];
    dynamic "render" [arg "painter" qPainter;arg "target" qRectF;arg "source" qRectF;arg "aspectRatioMode" qt'AspectRatioMode];
    dynamic "itemIndexMethod" [] ~ret:itemIndexMethod;
    dynamic "setItemIndexMethod" [arg "method" itemIndexMethod];
    dynamic "isSortCacheEnabled" [] ~ret:bool;
    dynamic "setSortCacheEnabled" [arg "enabled" bool];
    dynamic "bspTreeDepth" [] ~ret:int;
    dynamic "setBspTreeDepth" [arg "depth" int];
    dynamic "itemsBoundingRect" [] ~ret:qRectF;
    (*dynamic "items" [arg "order" qt'SortOrder] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "pos" qPointF;arg "mode" qt'ItemSelectionMode;arg "order" qt'SortOrder;arg "deviceTransform" qTransform] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "rect" qRectF;arg "mode" qt'ItemSelectionMode;arg "order" qt'SortOrder;arg "deviceTransform" qTransform] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "polygon" qPolygonF;arg "mode" qt'ItemSelectionMode;arg "order" qt'SortOrder;arg "deviceTransform" qTransform] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "path" qPainterPath;arg "mode" qt'ItemSelectionMode;arg "order" qt'SortOrder;arg "deviceTransform" qTransform] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "collidingItems" [arg "item" qGraphicsItem;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    dynamic "itemAt" [arg "position" qPointF] ~ret:qGraphicsItem;
    dynamic "itemAt" [arg "position" qPointF;arg "deviceTransform" qTransform] ~ret:qGraphicsItem;
    (*dynamic "items" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "mode" qt'ItemSelectionMode;arg "order" qt'SortOrder;arg "deviceTransform" qTransform] ~ret:qList<QGraphicsItem *>;*)
    dynamic "itemAt" [arg "x" qreal;arg "y" qreal] ~ret:qGraphicsItem;
    dynamic "itemAt" [arg "x" qreal;arg "y" qreal;arg "deviceTransform" qTransform] ~ret:qGraphicsItem;
    (*dynamic "selectedItems" [] ~ret:qList<QGraphicsItem *>;*)
    dynamic "selectionArea" [] ~ret:qPainterPath;
    dynamic "setSelectionArea" [arg "path" qPainterPath;arg "deviceTransform" qTransform];
    dynamic "setSelectionArea" [arg "path" qPainterPath;arg "mode" qt'ItemSelectionMode;arg "deviceTransform" qTransform];
    dynamic "setSelectionArea" [arg "path" qPainterPath;arg "selectionOperation" qt'ItemSelectionOperation;arg "mode" qt'ItemSelectionMode;arg "deviceTransform" qTransform];
    (*dynamic "createItemGroup" [arg "items" qList<QGraphicsItem *>] ~ret:qGraphicsItemGroup;*)
    dynamic "destroyItemGroup" [arg "group" qGraphicsItemGroup];
    dynamic "addItem" [arg "item" qGraphicsItem];
    dynamic "addEllipse" [arg "rect" qRectF;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsEllipseItem;
    dynamic "addLine" [arg "line" qLineF;arg "pen" qPen] ~ret:qGraphicsLineItem;
    dynamic "addPath" [arg "path" qPainterPath;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsPathItem;
    dynamic "addPixmap" [arg "pixmap" qPixmap] ~ret:qGraphicsPixmapItem;
    dynamic "addPolygon" [arg "polygon" qPolygonF;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsPolygonItem;
    dynamic "addRect" [arg "rect" qRectF;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsRectItem;
    dynamic "addText" [arg "text" qString;arg "font" qFont] ~ret:qGraphicsTextItem;
    dynamic "addSimpleText" [arg "text" qString;arg "font" qFont] ~ret:qGraphicsSimpleTextItem;
    dynamic "addWidget" [arg "widget" qWidget;arg "wFlags" qt'WindowFlags] ~ret:qGraphicsProxyWidget;
    dynamic "addEllipse" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsEllipseItem;
    dynamic "addLine" [arg "arg0" qreal x1;arg "arg1" qreal y1;arg "arg2" qreal x2;arg "arg3" qreal y2;arg "pen" qPen] ~ret:qGraphicsLineItem;
    dynamic "addRect" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "pen" qPen;arg "brush" qBrush] ~ret:qGraphicsRectItem;
    dynamic "removeItem" [arg "item" qGraphicsItem];
    dynamic "focusItem" [] ~ret:qGraphicsItem;
    dynamic "setFocusItem" [arg "item" qGraphicsItem;arg "focusReason" qt'FocusReason];
    dynamic "hasFocus" [] ~ret:bool;
    dynamic "setFocus" [arg "focusReason" qt'FocusReason];
    dynamic "clearFocus" [];
    dynamic "setStickyFocus" [arg "enabled" bool];
    dynamic "stickyFocus" [] ~ret:bool;
    dynamic "mouseGrabberItem" [] ~ret:qGraphicsItem;
    dynamic "backgroundBrush" [] ~ret:qBrush;
    dynamic "setBackgroundBrush" [arg "brush" qBrush];
    dynamic "foregroundBrush" [] ~ret:qBrush;
    dynamic "setForegroundBrush" [arg "brush" qBrush];
    dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;
    (*dynamic "views" [] ~ret:qList<QGraphicsView *>;*)
    dynamic "update" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal];
    dynamic "invalidate" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "layers" sceneLayers];
    dynamic "style" [] ~ret:qStyle;
    dynamic "setStyle" [arg "style" qStyle];
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "font" qFont];
    dynamic "palette" [] ~ret:qPalette;
    dynamic "setPalette" [arg "palette" qPalette];
    dynamic "isActive" [] ~ret:bool;
    dynamic "activePanel" [] ~ret:qGraphicsItem;
    dynamic "setActivePanel" [arg "item" qGraphicsItem];
    dynamic "activeWindow" [] ~ret:qGraphicsWidget;
    dynamic "setActiveWindow" [arg "widget" qGraphicsWidget];
    dynamic "sendEvent" [arg "item" qGraphicsItem;arg "event" qEvent] ~ret:bool;
    dynamic "minimumRenderSize" [] ~ret:qreal;
    dynamic "setMinimumRenderSize" [arg "minSize" qreal];
    dynamic "update" [arg "rect" qRectF];
    dynamic "invalidate" [arg "rect" qRectF;arg "layers" sceneLayers];
    dynamic "advance" [];
    dynamic "clearSelection" [];
    dynamic "clear" [];
    (*dynamic "changed" [arg "region" qList<QRectF>];*)
    dynamic "sceneRectChanged" [arg "rect" qRectF];
    dynamic "selectionChanged" [];
    dynamic "focusItemChanged" [arg "newFocusItem" qGraphicsItem;arg "oldFocusItem" qGraphicsItem;arg "reason" qt'FocusReason];
  ]
  let () = with_class qGraphicsTransform [
    constructor "" [opt "parent" qObject];
    dynamic "applyTo" [arg "matrix" (pointer qMatrix4x4)];
  ]
  let () = with_class qAbstractItemDelegate [
    constructor "" [opt "parent" qObject];
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "sizeHint" [arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:qSize;
    dynamic "createEditor" [arg "parent" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:(optional qWidget);
    dynamic "destroyEditor" [arg "editor" qWidget;arg "index" qModelIndex];
    dynamic "setEditorData" [arg "editor" qWidget;arg "index" qModelIndex];
    dynamic "setModelData" [arg "editor" qWidget;arg "model" qAbstractItemModel;arg "index" qModelIndex];
    dynamic "updateEditorGeometry" [arg "editor" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "editorEvent" [arg "event" qEvent;arg "model" qAbstractItemModel;arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:bool;
    static  "elidedText" [arg "fontMetrics" qFontMetrics;arg "width" int;arg "mode" qt'TextElideMode;arg "text" qString] ~ret:qString;
    dynamic "helpEvent" [arg "event" qHelpEvent;arg "view" qAbstractItemView;arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:bool;
    dynamic "commitData" [arg "editor" qWidget];
    dynamic "closeEditor" [arg "editor" qWidget;arg "hint" qAbstractItemDelegate'EndEditHint];
    dynamic "sizeHintChanged" [arg "index" qModelIndex];
  ]
  let () = with_class qStyle [
    constructor "" [];
    dynamic "polish" [arg "widget" qWidget];
    dynamic "unpolish" [arg "widget" qWidget];
    dynamic "polish" [arg "application" qApplication];
    dynamic "unpolish" [arg "application" qApplication];
    dynamic "polish" [arg "palette" qPalette];
    dynamic "itemTextRect" [arg "metrics" qFontMetrics;arg "rectangle" qRect;arg "alignment" int;arg "enabled" bool;arg "text" qString] ~ret:qRect;
    dynamic "itemPixmapRect" [arg "rectangle" qRect;arg "alignment" int;arg "pixmap" qPixmap] ~ret:qRect;
    dynamic "drawItemText" [arg "painter" qPainter;arg "rectangle" qRect;arg "alignment" int;arg "palette" qPalette;arg "enabled" bool;arg "text" qString;arg "textRole" qPalette'ColorRole];
    dynamic "drawItemPixmap" [arg "painter" qPainter;arg "rectangle" qRect;arg "alignment" int;arg "pixmap" qPixmap];
    dynamic "standardPalette" [] ~ret:qPalette;
    dynamic "drawPrimitive" [arg "element" primitiveElement;arg "option" qStyleOption;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "drawControl" [arg "element" controlElement;arg "option" qStyleOption;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "subElementRect" [arg "element" subElement;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qRect;
    dynamic "drawComplexControl" [arg "control" complexControl;arg "option" qStyleOptionComplex;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "hitTestComplexControl" [arg "control" complexControl;arg "option" qStyleOptionComplex;arg "position" qPoint;arg "widget" qWidget] ~ret:subControl;
    dynamic "subControlRect" [arg "control" complexControl;arg "option" qStyleOptionComplex;arg "subControl" subControl;arg "widget" qWidget] ~ret:qRect;
    dynamic "pixelMetric" [arg "metric" pixelMetric;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "sizeFromContents" [arg "type" contentsType;arg "option" qStyleOption;arg "contentsSize" qSize;arg "widget" qWidget] ~ret:qSize;
    dynamic "styleHint" [arg "hint" styleHint;arg "option" qStyleOption;arg "widget" qWidget;arg "returnData" qStyleHintReturn] ~ret:int;
    dynamic "standardPixmap" [arg "standardPixmap" standardPixmap;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qPixmap;
    dynamic "standardIcon" [arg "standardIcon" standardPixmap;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qIcon;
    dynamic "generatedIconPixmap" [arg "iconMode" qIcon'Mode;arg "pixmap" qPixmap;arg "option" qStyleOption] ~ret:qPixmap;
    static  "visualRect" [arg "direction" qt'LayoutDirection;arg "boundingRectangle" qRect;arg "logicalRectangle" qRect] ~ret:qRect;
    static  "visualPos" [arg "direction" qt'LayoutDirection;arg "boundingRectangle" qRect;arg "logicalPosition" qPoint] ~ret:qPoint;
    static  "sliderPositionFromValue" [arg "min" int;arg "max" int;arg "logicalValue" int;arg "span" int;arg "upsideDown" bool] ~ret:int;
    static  "sliderValueFromPosition" [arg "min" int;arg "max" int;arg "position" int;arg "span" int;arg "upsideDown" bool] ~ret:int;
    static  "visualAlignment" [arg "direction" qt'LayoutDirection;arg "alignment" qt'Alignment] ~ret:qt'Alignment;
    static  "alignedRect" [arg "direction" qt'LayoutDirection;arg "alignment" qt'Alignment;arg "size" qSize;arg "rectangle" qRect] ~ret:qRect;
    dynamic "layoutSpacing" [arg "arg0" qSizePolicy'ControlType control1;arg "arg1" qSizePolicy'ControlType control2;arg "orientation" qt'Orientation;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "combinedLayoutSpacing" [arg "arg0" qSizePolicy'ControlTypes controls1;arg "arg1" qSizePolicy'ControlTypes controls2;arg "orientation" qt'Orientation;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "proxy" [] ~ret:qStyle;
  ]
  let () = with_class qStylePlugin [
    constructor "" [opt "parent" qObject];
    dynamic "create" [arg "key" qString] ~ret:qStyle;
  ]
  let () = with_class qScroller [
    static  "hasScroller" [arg "target" qObject] ~ret:bool;
    static  "scroller" [arg "target" qObject] ~ret:qScroller;
    static  "scroller" [arg "target" qObject] ~ret:qScroller;
    static  "grabGesture" [arg "target" qObject;arg "scrollGestureType" scrollerGestureType] ~ret:qt'GestureType;
    static  "grabbedGesture" [arg "target" qObject] ~ret:qt'GestureType;
    static  "ungrabGesture" [arg "target" qObject];
    (*static  "activeScrollers" [] ~ret:qList<QScroller *>;*)
    dynamic "target" [] ~ret:qObject;
    dynamic "state" [] ~ret:state;
    dynamic "handleInput" [arg "input" input;arg "position" qPointF;arg "timestamp" qint64] ~ret:bool;
    dynamic "stop" [];
    dynamic "velocity" [] ~ret:qPointF;
    dynamic "finalPosition" [] ~ret:qPointF;
    dynamic "pixelPerMeter" [] ~ret:qPointF;
    dynamic "scrollerProperties" [] ~ret:qScrollerProperties;
    (*dynamic "setSnapPositionsX" [arg "positions" qList<qreal>];*)
    dynamic "setSnapPositionsX" [arg "first" qreal;arg "interval" qreal];
    (*dynamic "setSnapPositionsY" [arg "positions" qList<qreal>];*)
    dynamic "setSnapPositionsY" [arg "first" qreal;arg "interval" qreal];
    dynamic "setScrollerProperties" [arg "prop" qScrollerProperties];
    dynamic "scrollTo" [arg "pos" qPointF];
    dynamic "scrollTo" [arg "pos" qPointF;arg "scrollTime" int];
    dynamic "ensureVisible" [arg "rect" qRectF;arg "xmargin" qreal;arg "ymargin" qreal];
    dynamic "ensureVisible" [arg "rect" qRectF;arg "xmargin" qreal;arg "ymargin" qreal;arg "scrollTime" int];
    dynamic "resendPrepareEvent" [];
    dynamic "stateChanged" [arg "newState" qScroller'State];
    dynamic "scrollerPropertiesChanged" [arg "newProperties" qScrollerProperties];
  ]
  let () = with_class qCommonStyle [
    constructor "" [];
    dynamic "drawPrimitive" [arg "pe" primitiveElement;arg "opt" qStyleOption;arg "p" qPainter;arg "widget" qWidget];
    dynamic "drawControl" [arg "element" controlElement;arg "opt" qStyleOption;arg "p" qPainter;arg "widget" qWidget];
    dynamic "subElementRect" [arg "sr" subElement;arg "opt" qStyleOption;arg "widget" qWidget] ~ret:qRect;
    dynamic "drawComplexControl" [arg "cc" complexControl;arg "opt" qStyleOptionComplex;arg "p" qPainter;arg "widget" qWidget];
    dynamic "hitTestComplexControl" [arg "cc" complexControl;arg "opt" qStyleOptionComplex;arg "pt" qPoint;arg "widget" qWidget] ~ret:subControl;
    dynamic "subControlRect" [arg "cc" complexControl;arg "opt" qStyleOptionComplex;arg "sc" subControl;arg "widget" qWidget] ~ret:qRect;
    dynamic "sizeFromContents" [arg "ct" contentsType;arg "opt" qStyleOption;arg "csz" qSize;arg "widget" qWidget] ~ret:qSize;
    dynamic "pixelMetric" [arg "m" pixelMetric;arg "opt" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "styleHint" [arg "sh" styleHint;arg "opt" qStyleOption;arg "widget" qWidget;arg "hret" qStyleHintReturn] ~ret:int;
    dynamic "standardPixmap" [arg "sp" standardPixmap;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qPixmap;
    dynamic "generatedIconPixmap" [arg "iconMode" qIcon'Mode;arg "pixmap" qPixmap;arg "opt" qStyleOption] ~ret:qPixmap;
    dynamic "layoutSpacing" [arg "arg0" qSizePolicy'ControlType control1;arg "arg1" qSizePolicy'ControlType control2;arg "orientation" qt'Orientation;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "polish" [arg "pal" qPalette];
    dynamic "polish" [arg "app" qApplication];
    dynamic "polish" [arg "widget" qWidget];
    dynamic "unpolish" [arg "widget" qWidget];
    dynamic "unpolish" [arg "application" qApplication];
  ]
  let () = with_class qPanGesture [
    dynamic "lastOffset" [] ~ret:qPointF;
    dynamic "offset" [] ~ret:qPointF;
    dynamic "delta" [] ~ret:qPointF;
    dynamic "acceleration" [] ~ret:qreal;
    dynamic "setLastOffset" [arg "value" qPointF];
    dynamic "setOffset" [arg "value" qPointF];
    dynamic "setAcceleration" [arg "value" qreal];
  ]
  let () = with_class qPinchGesture [
    dynamic "totalChangeFlags" [] ~ret:changeFlags;
    dynamic "setTotalChangeFlags" [arg "value" changeFlags];
    dynamic "changeFlags" [] ~ret:changeFlags;
    dynamic "setChangeFlags" [arg "value" changeFlags];
    dynamic "startCenterPoint" [] ~ret:qPointF;
    dynamic "lastCenterPoint" [] ~ret:qPointF;
    dynamic "centerPoint" [] ~ret:qPointF;
    dynamic "setStartCenterPoint" [arg "value" qPointF];
    dynamic "setLastCenterPoint" [arg "value" qPointF];
    dynamic "setCenterPoint" [arg "value" qPointF];
    dynamic "totalScaleFactor" [] ~ret:qreal;
    dynamic "lastScaleFactor" [] ~ret:qreal;
    dynamic "scaleFactor" [] ~ret:qreal;
    dynamic "setTotalScaleFactor" [arg "value" qreal];
    dynamic "setLastScaleFactor" [arg "value" qreal];
    dynamic "setScaleFactor" [arg "value" qreal];
    dynamic "totalRotationAngle" [] ~ret:qreal;
    dynamic "lastRotationAngle" [] ~ret:qreal;
    dynamic "rotationAngle" [] ~ret:qreal;
    dynamic "setTotalRotationAngle" [arg "value" qreal];
    dynamic "setLastRotationAngle" [arg "value" qreal];
    dynamic "setRotationAngle" [arg "value" qreal];
  ]
  let () = with_class qSwipeGesture [
    dynamic "horizontalDirection" [] ~ret:swipeDirection;
    dynamic "verticalDirection" [] ~ret:swipeDirection;
    dynamic "swipeAngle" [] ~ret:qreal;
    dynamic "setSwipeAngle" [arg "value" qreal];
  ]
  let () = with_class qTapGesture [
    dynamic "position" [] ~ret:qPointF;
    dynamic "setPosition" [arg "pos" qPointF];
  ]
  let () = with_class qTapAndHoldGesture [
    dynamic "position" [] ~ret:qPointF;
    dynamic "setPosition" [arg "pos" qPointF];
    static  "setTimeout" [arg "msecs" int];
    static  "timeout" [] ~ret:int;
  ]
  let () = with_class qGraphicsSceneMouseEvent [
    dynamic "pos" [] ~ret:qPointF;
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
    dynamic "buttonDownPos" [arg "button" qt'MouseButton] ~ret:qPointF;
    dynamic "buttonDownScenePos" [arg "button" qt'MouseButton] ~ret:qPointF;
    dynamic "buttonDownScreenPos" [arg "button" qt'MouseButton] ~ret:qPoint;
    dynamic "lastPos" [] ~ret:qPointF;
    dynamic "lastScenePos" [] ~ret:qPointF;
    dynamic "lastScreenPos" [] ~ret:qPoint;
    dynamic "buttons" [] ~ret:qt'MouseButtons;
    dynamic "button" [] ~ret:qt'MouseButton;
    dynamic "modifiers" [] ~ret:qt'KeyboardModifiers;
    dynamic "source" [] ~ret:qt'MouseEventSource;
    dynamic "flags" [] ~ret:qt'MouseEventFlags;
  ]
  let () = with_class qGraphicsSceneWheelEvent [
    dynamic "pos" [] ~ret:qPointF;
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
    dynamic "buttons" [] ~ret:qt'MouseButtons;
    dynamic "modifiers" [] ~ret:qt'KeyboardModifiers;
    dynamic "delta" [] ~ret:int;
    dynamic "orientation" [] ~ret:qt'Orientation;
  ]
  let () = with_class qGraphicsSceneContextMenuEvent [
    dynamic "pos" [] ~ret:qPointF;
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
    dynamic "modifiers" [] ~ret:qt'KeyboardModifiers;
    dynamic "reason" [] ~ret:reason;
  ]
  let () = with_class qGraphicsSceneHoverEvent [
    dynamic "pos" [] ~ret:qPointF;
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
    dynamic "lastPos" [] ~ret:qPointF;
    dynamic "lastScenePos" [] ~ret:qPointF;
    dynamic "lastScreenPos" [] ~ret:qPoint;
    dynamic "modifiers" [] ~ret:qt'KeyboardModifiers;
  ]
  let () = with_class qGraphicsSceneHelpEvent [
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
  ]
  let () = with_class qGraphicsSceneDragDropEvent [
    dynamic "pos" [] ~ret:qPointF;
    dynamic "scenePos" [] ~ret:qPointF;
    dynamic "screenPos" [] ~ret:qPoint;
    dynamic "buttons" [] ~ret:qt'MouseButtons;
    dynamic "modifiers" [] ~ret:qt'KeyboardModifiers;
    dynamic "possibleActions" [] ~ret:qt'DropActions;
    dynamic "proposedAction" [] ~ret:qt'DropAction;
    dynamic "acceptProposedAction" [];
    dynamic "dropAction" [] ~ret:qt'DropAction;
    dynamic "setDropAction" [arg "action" qt'DropAction];
    dynamic "source" [] ~ret:(optional qWidget);
    dynamic "mimeData" [] ~ret:qMimeData;
  ]
  let () = with_class qGraphicsSceneResizeEvent [
    constructor "" [];
    dynamic "oldSize" [] ~ret:qSizeF;
    dynamic "newSize" [] ~ret:qSizeF;
  ]
  let () = with_class qGraphicsSceneMoveEvent [
    constructor "" [];
    dynamic "oldPos" [] ~ret:qPointF;
    dynamic "newPos" [] ~ret:qPointF;
  ]
  let () = with_class qGraphicsAnchorLayout [
    constructor "" [arg "parent" qGraphicsLayoutItem];
    dynamic "addAnchor" [arg "firstItem" qGraphicsLayoutItem;arg "firstEdge" qt'AnchorPoint;arg "secondItem" qGraphicsLayoutItem;arg "secondEdge" qt'AnchorPoint] ~ret:qGraphicsAnchor;
    dynamic "addCornerAnchors" [arg "firstItem" qGraphicsLayoutItem;arg "firstCorner" qt'Corner;arg "secondItem" qGraphicsLayoutItem;arg "secondCorner" qt'Corner];
    dynamic "addAnchors" [arg "firstItem" qGraphicsLayoutItem;arg "secondItem" qGraphicsLayoutItem;arg "orientations" qt'Orientations];
    dynamic "setHorizontalSpacing" [arg "spacing" qreal];
    dynamic "setVerticalSpacing" [arg "spacing" qreal];
    dynamic "setSpacing" [arg "spacing" qreal];
    dynamic "horizontalSpacing" [] ~ret:qreal;
    dynamic "verticalSpacing" [] ~ret:qreal;
    dynamic "removeAt" [arg "index" int];
    dynamic "setGeometry" [arg "geom" qRectF];
    dynamic "count" [] ~ret:int;
    dynamic "itemAt" [arg "index" int] ~ret:qGraphicsLayoutItem;
    dynamic "invalidate" [];
  ]
  let () = with_class qGraphicsGridLayout [
    constructor "" [arg "parent" qGraphicsLayoutItem];
    dynamic "addItem" [arg "item" qGraphicsLayoutItem;arg "row" int;arg "column" int;arg "rowSpan" int;arg "columnSpan" int;arg "alignment" qt'Alignment];
    dynamic "addItem" [arg "item" qGraphicsLayoutItem;arg "row" int;arg "column" int;arg "alignment" qt'Alignment];
    dynamic "setHorizontalSpacing" [arg "spacing" qreal];
    dynamic "horizontalSpacing" [] ~ret:qreal;
    dynamic "setVerticalSpacing" [arg "spacing" qreal];
    dynamic "verticalSpacing" [] ~ret:qreal;
    dynamic "setSpacing" [arg "spacing" qreal];
    dynamic "setRowSpacing" [arg "row" int;arg "spacing" qreal];
    dynamic "rowSpacing" [arg "row" int] ~ret:qreal;
    dynamic "setColumnSpacing" [arg "column" int;arg "spacing" qreal];
    dynamic "columnSpacing" [arg "column" int] ~ret:qreal;
    dynamic "setRowStretchFactor" [arg "row" int;arg "stretch" int];
    dynamic "rowStretchFactor" [arg "row" int] ~ret:int;
    dynamic "setColumnStretchFactor" [arg "column" int;arg "stretch" int];
    dynamic "columnStretchFactor" [arg "column" int] ~ret:int;
    dynamic "setRowMinimumHeight" [arg "row" int;arg "height" qreal];
    dynamic "rowMinimumHeight" [arg "row" int] ~ret:qreal;
    dynamic "setRowPreferredHeight" [arg "row" int;arg "height" qreal];
    dynamic "rowPreferredHeight" [arg "row" int] ~ret:qreal;
    dynamic "setRowMaximumHeight" [arg "row" int;arg "height" qreal];
    dynamic "rowMaximumHeight" [arg "row" int] ~ret:qreal;
    dynamic "setRowFixedHeight" [arg "row" int;arg "height" qreal];
    dynamic "setColumnMinimumWidth" [arg "column" int;arg "width" qreal];
    dynamic "columnMinimumWidth" [arg "column" int] ~ret:qreal;
    dynamic "setColumnPreferredWidth" [arg "column" int;arg "width" qreal];
    dynamic "columnPreferredWidth" [arg "column" int] ~ret:qreal;
    dynamic "setColumnMaximumWidth" [arg "column" int;arg "width" qreal];
    dynamic "columnMaximumWidth" [arg "column" int] ~ret:qreal;
    dynamic "setColumnFixedWidth" [arg "column" int;arg "width" qreal];
    dynamic "setRowAlignment" [arg "row" int;arg "alignment" qt'Alignment];
    dynamic "rowAlignment" [arg "row" int] ~ret:qt'Alignment;
    dynamic "setColumnAlignment" [arg "column" int;arg "alignment" qt'Alignment];
    dynamic "columnAlignment" [arg "column" int] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "item" qGraphicsLayoutItem;arg "alignment" qt'Alignment];
    dynamic "alignment" [arg "item" qGraphicsLayoutItem] ~ret:qt'Alignment;
    dynamic "rowCount" [] ~ret:int;
    dynamic "columnCount" [] ~ret:int;
    dynamic "itemAt" [arg "row" int;arg "column" int] ~ret:qGraphicsLayoutItem;
    dynamic "count" [] ~ret:int;
    dynamic "itemAt" [arg "index" int] ~ret:qGraphicsLayoutItem;
    dynamic "removeAt" [arg "index" int];
    dynamic "removeItem" [arg "item" qGraphicsLayoutItem];
    dynamic "invalidate" [];
    dynamic "setGeometry" [arg "rect" qRectF];
    dynamic "sizeHint" [arg "which" qt'SizeHint;arg "constraint" qSizeF] ~ret:qSizeF;
  ]
  let () = with_class qGraphicsLinearLayout [
    constructor "" [arg "parent" qGraphicsLayoutItem];
    constructor "" [arg "orientation" qt'Orientation;arg "parent" qGraphicsLayoutItem];
    dynamic "setOrientation" [arg "orientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "addItem" [arg "item" qGraphicsLayoutItem];
    dynamic "addStretch" [arg "stretch" int];
    dynamic "insertItem" [arg "index" int;arg "item" qGraphicsLayoutItem];
    dynamic "insertStretch" [arg "index" int;arg "stretch" int];
    dynamic "removeItem" [arg "item" qGraphicsLayoutItem];
    dynamic "removeAt" [arg "index" int];
    dynamic "setSpacing" [arg "spacing" qreal];
    dynamic "spacing" [] ~ret:qreal;
    dynamic "setItemSpacing" [arg "index" int;arg "spacing" qreal];
    dynamic "itemSpacing" [arg "index" int] ~ret:qreal;
    dynamic "setStretchFactor" [arg "item" qGraphicsLayoutItem;arg "stretch" int];
    dynamic "stretchFactor" [arg "item" qGraphicsLayoutItem] ~ret:int;
    dynamic "setAlignment" [arg "item" qGraphicsLayoutItem;arg "alignment" qt'Alignment];
    dynamic "alignment" [arg "item" qGraphicsLayoutItem] ~ret:qt'Alignment;
    dynamic "setGeometry" [arg "rect" qRectF];
    dynamic "count" [] ~ret:int;
    dynamic "itemAt" [arg "index" int] ~ret:qGraphicsLayoutItem;
    dynamic "invalidate" [];
    dynamic "sizeHint" [arg "which" qt'SizeHint;arg "constraint" qSizeF] ~ret:qSizeF;
  ]
  let () = with_class qGraphicsPathItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "path" qPainterPath;arg "parent" qGraphicsItem];
    dynamic "path" [] ~ret:qPainterPath;
    dynamic "setPath" [arg "path" qPainterPath];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsRectItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "rect" qRectF;arg "parent" qGraphicsItem];
    constructor "" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal;arg "parent" qGraphicsItem];
    dynamic "rect" [] ~ret:qRectF;
    dynamic "setRect" [arg "rectangle" qRectF];
    dynamic "setRect" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsEllipseItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "rect" qRectF;arg "parent" qGraphicsItem];
    constructor "" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal;arg "parent" qGraphicsItem];
    dynamic "rect" [] ~ret:qRectF;
    dynamic "setRect" [arg "rect" qRectF];
    dynamic "setRect" [arg "x" qreal;arg "y" qreal;arg "width" qreal;arg "height" qreal];
    dynamic "startAngle" [] ~ret:int;
    dynamic "setStartAngle" [arg "angle" int];
    dynamic "spanAngle" [] ~ret:int;
    dynamic "setSpanAngle" [arg "angle" int];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsPolygonItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "polygon" qPolygonF;arg "parent" qGraphicsItem];
    dynamic "polygon" [] ~ret:qPolygonF;
    dynamic "setPolygon" [arg "polygon" qPolygonF];
    dynamic "fillRule" [] ~ret:qt'FillRule;
    dynamic "setFillRule" [arg "rule" qt'FillRule];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsSimpleTextItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "text" qString;arg "parent" qGraphicsItem];
    dynamic "setText" [arg "text" qString];
    dynamic "text" [] ~ret:qString;
    dynamic "setFont" [arg "font" qFont];
    dynamic "font" [] ~ret:qFont;
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
  ]
  let () = with_class qGraphicsTextItem [
    constructor "" [arg "parent" qGraphicsItem];
    constructor "" [arg "text" qString;arg "parent" qGraphicsItem];
    dynamic "toHtml" [] ~ret:qString;
    dynamic "toPlainText" [] ~ret:qString;
    dynamic "setPlainText" [arg "text" qString];
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "font" qFont];
    dynamic "setDefaultTextColor" [arg "col" qColor];
    dynamic "defaultTextColor" [] ~ret:qColor;
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "contains" [arg "point" qPointF] ~ret:bool;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "isObscuredBy" [arg "item" qGraphicsItem] ~ret:bool;
    dynamic "opaqueArea" [] ~ret:qPainterPath;
    dynamic "type" [] ~ret:int;
    dynamic "setTextWidth" [arg "width" qreal];
    dynamic "textWidth" [] ~ret:qreal;
    dynamic "adjustSize" [];
    dynamic "setDocument" [arg "document" qTextDocument];
    dynamic "document" [] ~ret:qTextDocument;
    dynamic "setTextInteractionFlags" [arg "flags" qt'TextInteractionFlags];
    dynamic "textInteractionFlags" [] ~ret:qt'TextInteractionFlags;
    dynamic "setTabChangesFocus" [arg "b" bool];
    dynamic "tabChangesFocus" [] ~ret:bool;
    dynamic "setOpenExternalLinks" [arg "open" bool];
    dynamic "openExternalLinks" [] ~ret:bool;
    dynamic "setTextCursor" [arg "cursor" qTextCursor];
    dynamic "textCursor" [] ~ret:qTextCursor;
    dynamic "linkActivated" [arg "link" qString];
    dynamic "linkHovered" [arg "link" qString];
  ]
  let () = with_class qGraphicsWidget [
    constructor "" [arg "parent" qGraphicsItem;arg "wFlags" qt'WindowFlags];
    dynamic "layout" [] ~ret:qGraphicsLayout;
    dynamic "setLayout" [arg "layout" qGraphicsLayout];
    dynamic "adjustSize" [];
    dynamic "layoutDirection" [] ~ret:qt'LayoutDirection;
    dynamic "setLayoutDirection" [arg "direction" qt'LayoutDirection];
    dynamic "unsetLayoutDirection" [];
    dynamic "style" [] ~ret:qStyle;
    dynamic "setStyle" [arg "style" qStyle];
    dynamic "font" [] ~ret:qFont;
    dynamic "setFont" [arg "font" qFont];
    dynamic "palette" [] ~ret:qPalette;
    dynamic "setPalette" [arg "palette" qPalette];
    dynamic "autoFillBackground" [] ~ret:bool;
    dynamic "setAutoFillBackground" [arg "enabled" bool];
    dynamic "resize" [arg "size" qSizeF];
    dynamic "resize" [arg "w" qreal;arg "h" qreal];
    dynamic "size" [] ~ret:qSizeF;
    dynamic "setGeometry" [arg "rect" qRectF];
    dynamic "setGeometry" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal];
    dynamic "rect" [] ~ret:qRectF;
    dynamic "setContentsMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "getContentsMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "setWindowFrameMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "getWindowFrameMargins" [arg "left" qreal;arg "top" qreal;arg "right" qreal;arg "bottom" qreal];
    dynamic "unsetWindowFrameMargins" [];
    dynamic "windowFrameGeometry" [] ~ret:qRectF;
    dynamic "windowFrameRect" [] ~ret:qRectF;
    dynamic "windowFlags" [] ~ret:qt'WindowFlags;
    dynamic "windowType" [] ~ret:qt'WindowType;
    dynamic "setWindowFlags" [arg "wFlags" qt'WindowFlags];
    dynamic "isActiveWindow" [] ~ret:bool;
    dynamic "setWindowTitle" [arg "title" qString];
    dynamic "windowTitle" [] ~ret:qString;
    dynamic "focusPolicy" [] ~ret:qt'FocusPolicy;
    dynamic "setFocusPolicy" [arg "policy" qt'FocusPolicy];
    static  "setTabOrder" [arg "first" qGraphicsWidget;arg "second" qGraphicsWidget];
    dynamic "focusWidget" [] ~ret:qGraphicsWidget;
    dynamic "grabShortcut" [arg "sequence" qKeySequence;arg "context" qt'ShortcutContext] ~ret:int;
    dynamic "releaseShortcut" [arg "id" int];
    dynamic "setShortcutEnabled" [arg "id" int;arg "enabled" bool];
    dynamic "setShortcutAutoRepeat" [arg "id" int;arg "enabled" bool];
    dynamic "addAction" [arg "action" qAction];
    (*dynamic "addActions" [arg "actions" qList<QAction *>];*)
    (*dynamic "insertActions" [arg "before" qAction;arg "actions" qList<QAction *>];*)
    dynamic "insertAction" [arg "before" qAction;arg "action" qAction];
    dynamic "removeAction" [arg "action" qAction];
    (*dynamic "actions" [] ~ret:qList<QAction *>;*)
    dynamic "setAttribute" [arg "attribute" qt'WidgetAttribute;arg "on" bool];
    dynamic "testAttribute" [arg "attribute" qt'WidgetAttribute] ~ret:bool;
    dynamic "type" [] ~ret:int;
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "paintWindowFrame" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "boundingRect" [] ~ret:qRectF;
    dynamic "shape" [] ~ret:qPainterPath;
    dynamic "geometryChanged" [];
    dynamic "close" [] ~ret:bool;
  ]
  let () = with_class qDesktopWidget [
    dynamic "isVirtualDesktop" [] ~ret:bool;
    dynamic "numScreens" [] ~ret:int;
    dynamic "screenCount" [] ~ret:int;
    dynamic "primaryScreen" [] ~ret:int;
    dynamic "screenNumber" [arg "widget" qWidget] ~ret:int;
    dynamic "screenNumber" [arg "point" qPoint] ~ret:int;
    dynamic "screen" [arg "screen" int] ~ret:(optional qWidget);
    dynamic "screenGeometry" [arg "screen" int] ~ret:qRect;
    dynamic "screenGeometry" [arg "widget" qWidget] ~ret:qRect;
    dynamic "screenGeometry" [arg "p" qPoint] ~ret:qRect;
    dynamic "availableGeometry" [arg "screen" int] ~ret:qRect;
    dynamic "availableGeometry" [arg "widget" qWidget] ~ret:qRect;
    dynamic "availableGeometry" [arg "p" qPoint] ~ret:qRect;
    dynamic "resized" [arg "screen" int];
    dynamic "workAreaResized" [arg "screen" int];
    dynamic "screenCountChanged" [arg "newCount" int];
    dynamic "primaryScreenChanged" [];
  slot "_q_availableGeometryChanged" [];
  slot "_q_updateScreens" [];
  signal "primaryScreenChanged" [];
  signal "resized" [arg "" int];
  signal "screenCountChanged" [arg "" int];
  signal "workAreaResized" [arg "" int];
  ]
  let () = with_class qSplitterHandle [
    constructor "" [arg "orientation" qt'Orientation;arg "parent" qSplitter];
    dynamic "setOrientation" [arg "orientation" qt'Orientation];
    dynamic "orientation" [] ~ret:qt'Orientation;
    dynamic "opaqueResize" [] ~ret:bool;
    dynamic "splitter" [] ~ret:qSplitter;
    dynamic "sizeHint" [] ~ret:qSize;
  ]
  let () = with_class qStyleOptionSlider [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionSlider];
  ]
  let () = with_class qStyleOptionSpinBox [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionSpinBox];
  ]
  let () = with_class qStyleOptionToolButton [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionToolButton];
  ]
  let () = with_class qStyleOptionComboBox [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionComboBox];
  ]
  let () = with_class qStyleOptionTitleBar [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionTitleBar];
  ]
  let () = with_class qStyleOptionGroupBox [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionGroupBox];
  ]
  let () = with_class qStyleOptionSizeGrip [
    constructor "" [];
    constructor "" [arg "other" qStyleOptionSizeGrip];
  ]
  let () = with_class qGraphicsProxyWidget [
    constructor "" [arg "parent" qGraphicsItem;arg "wFlags" qt'WindowFlags];
    dynamic "setWidget" [arg "widget" qWidget];
    dynamic "widget" [] ~ret:(optional qWidget);
    dynamic "subWidgetRect" [arg "widget" qWidget] ~ret:qRectF;
    dynamic "setGeometry" [arg "rect" qRectF];
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionGraphicsItem;arg "widget" qWidget];
    dynamic "type" [] ~ret:int;
    dynamic "createProxyForChildWidget" [arg "child" qWidget] ~ret:qGraphicsProxyWidget;
  ]
  let () = with_class qProxyStyle [
    constructor "" [arg "style" qStyle];
    constructor "" [arg "key" qString];
    dynamic "baseStyle" [] ~ret:qStyle;
    dynamic "setBaseStyle" [arg "style" qStyle];
    dynamic "drawPrimitive" [arg "element" primitiveElement;arg "option" qStyleOption;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "drawControl" [arg "element" controlElement;arg "option" qStyleOption;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "drawComplexControl" [arg "control" complexControl;arg "option" qStyleOptionComplex;arg "painter" qPainter;arg "widget" qWidget];
    dynamic "drawItemText" [arg "painter" qPainter;arg "rect" qRect;arg "flags" int;arg "pal" qPalette;arg "enabled" bool;arg "text" qString;arg "textRole" qPalette'ColorRole];
    dynamic "drawItemPixmap" [arg "painter" qPainter;arg "rect" qRect;arg "alignment" int;arg "pixmap" qPixmap];
    dynamic "sizeFromContents" [arg "type" contentsType;arg "option" qStyleOption;arg "size" qSize;arg "widget" qWidget] ~ret:qSize;
    dynamic "subElementRect" [arg "element" subElement;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qRect;
    dynamic "subControlRect" [arg "cc" complexControl;arg "option" qStyleOptionComplex;arg "sc" subControl;arg "widget" qWidget] ~ret:qRect;
    dynamic "itemTextRect" [arg "fm" qFontMetrics;arg "r" qRect;arg "flags" int;arg "enabled" bool;arg "text" qString] ~ret:qRect;
    dynamic "itemPixmapRect" [arg "r" qRect;arg "flags" int;arg "pixmap" qPixmap] ~ret:qRect;
    dynamic "hitTestComplexControl" [arg "control" complexControl;arg "option" qStyleOptionComplex;arg "pos" qPoint;arg "widget" qWidget] ~ret:subControl;
    dynamic "styleHint" [arg "hint" styleHint;arg "option" qStyleOption;arg "widget" qWidget;arg "returnData" qStyleHintReturn] ~ret:int;
    dynamic "pixelMetric" [arg "metric" pixelMetric;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "layoutSpacing" [arg "arg0" qSizePolicy'ControlType control1;arg "arg1" qSizePolicy'ControlType control2;arg "orientation" qt'Orientation;arg "option" qStyleOption;arg "widget" qWidget] ~ret:int;
    dynamic "standardIcon" [arg "standardIcon" standardPixmap;arg "option" qStyleOption;arg "widget" qWidget] ~ret:qIcon;
    dynamic "standardPixmap" [arg "standardPixmap" standardPixmap;arg "opt" qStyleOption;arg "widget" qWidget] ~ret:qPixmap;
    dynamic "generatedIconPixmap" [arg "iconMode" qIcon'Mode;arg "pixmap" qPixmap;arg "opt" qStyleOption] ~ret:qPixmap;
    dynamic "standardPalette" [] ~ret:qPalette;
    dynamic "polish" [arg "widget" qWidget];
    dynamic "polish" [arg "pal" qPalette];
    dynamic "polish" [arg "app" qApplication];
    dynamic "unpolish" [arg "widget" qWidget];
    dynamic "unpolish" [arg "app" qApplication];
  ]
  let () = with_class qMacCocoaViewContainer [
    constructor "" [arg "cocoaViewToWrap" nSView;opt "parent" qWidget];
    dynamic "setCocoaView" [arg "view" nSView];
    dynamic "cocoaView" [] ~ret:nSView;
  ]
  let () = with_class qMacNativeWidget [
    constructor "" [arg "parentView" nSView];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "nativeView" [] ~ret:nSView;
  ]
  let () = with_class qAccessibleWidget [
    constructor "" [opt "w" qWidget;arg "role" qAccessible'Role;arg "name" qString];
    dynamic "isValid" [] ~ret:bool;
    dynamic "window" [] ~ret:qWindow;
    dynamic "childCount" [] ~ret:int;
    dynamic "indexOfChild" [arg "child" qAccessibleInterface] ~ret:int;
    dynamic "focusChild" [] ~ret:qAccessibleInterface;
    dynamic "rect" [] ~ret:qRect;
    dynamic "parent" [] ~ret:qAccessibleInterface;
    dynamic "child" [arg "index" int] ~ret:qAccessibleInterface;
    dynamic "text" [arg "t" qAccessible'Text] ~ret:qString;
    dynamic "role" [] ~ret:qAccessible'Role;
    dynamic "state" [] ~ret:qAccessible'State;
    dynamic "foregroundColor" [] ~ret:qColor;
    dynamic "backgroundColor" [] ~ret:qColor;
    dynamic "interface_cast" [arg "t" qAccessible'InterfaceType];
    dynamic "actionNames" [] ~ret:qStringList;
    dynamic "doAction" [arg "actionName" qString];
    dynamic "keyBindingsForAction" [arg "actionName" qString] ~ret:qStringList;
  ]
  let () = with_class qUndoGroup [
    constructor "" [opt "parent" qObject];
    dynamic "addStack" [arg "stack" qUndoStack];
    dynamic "removeStack" [arg "stack" qUndoStack];
    (*dynamic "stacks" [] ~ret:qList<QUndoStack *>;*)
    dynamic "activeStack" [] ~ret:qUndoStack;
    dynamic "createUndoAction" [arg "parent" qObject;arg "prefix" qString] ~ret:qAction;
    dynamic "createRedoAction" [arg "parent" qObject;arg "prefix" qString] ~ret:qAction;
    dynamic "canUndo" [] ~ret:bool;
    dynamic "canRedo" [] ~ret:bool;
    dynamic "undoText" [] ~ret:qString;
    dynamic "redoText" [] ~ret:qString;
    dynamic "isClean" [] ~ret:bool;
    dynamic "undo" [];
    dynamic "redo" [];
    dynamic "setActiveStack" [arg "stack" qUndoStack];
    dynamic "activeStackChanged" [arg "stack" qUndoStack];
    dynamic "indexChanged" [arg "idx" int];
    dynamic "cleanChanged" [arg "clean" bool];
    dynamic "canUndoChanged" [arg "canUndo" bool];
    dynamic "canRedoChanged" [arg "canRedo" bool];
    dynamic "undoTextChanged" [arg "undoText" qString];
    dynamic "redoTextChanged" [arg "redoText" qString];
  ]
  let () = with_class qUndoStack [
    constructor "" [opt "parent" qObject];
    dynamic "clear" [];
    dynamic "push" [arg "cmd" qUndoCommand];
    dynamic "canUndo" [] ~ret:bool;
    dynamic "canRedo" [] ~ret:bool;
    dynamic "undoText" [] ~ret:qString;
    dynamic "redoText" [] ~ret:qString;
    dynamic "count" [] ~ret:int;
    dynamic "index" [] ~ret:int;
    dynamic "text" [arg "idx" int] ~ret:qString;
    dynamic "createUndoAction" [arg "parent" qObject;arg "prefix" qString] ~ret:qAction;
    dynamic "createRedoAction" [arg "parent" qObject;arg "prefix" qString] ~ret:qAction;
    dynamic "isActive" [] ~ret:bool;
    dynamic "isClean" [] ~ret:bool;
    dynamic "cleanIndex" [] ~ret:int;
    dynamic "beginMacro" [arg "text" qString];
    dynamic "endMacro" [];
    dynamic "setUndoLimit" [arg "limit" int];
    dynamic "undoLimit" [] ~ret:int;
    dynamic "command" [arg "index" int] ~ret:qUndoCommand;
    dynamic "setClean" [];
    dynamic "resetClean" [];
    dynamic "setIndex" [arg "idx" int];
    dynamic "undo" [];
    dynamic "redo" [];
    dynamic "setActive" [arg "active" bool];
    dynamic "indexChanged" [arg "idx" int];
    dynamic "cleanChanged" [arg "clean" bool];
    dynamic "canUndoChanged" [arg "canUndo" bool];
    dynamic "canRedoChanged" [arg "canRedo" bool];
    dynamic "undoTextChanged" [arg "undoText" qString];
    dynamic "redoTextChanged" [arg "redoText" qString];
  ]
  let () = with_class qItemDelegate [
    constructor "" [opt "parent" qObject];
    dynamic "hasClipping" [] ~ret:bool;
    dynamic "setClipping" [arg "clip" bool];
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "sizeHint" [arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:qSize;
    dynamic "createEditor" [arg "parent" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:(optional qWidget);
    dynamic "setEditorData" [arg "editor" qWidget;arg "index" qModelIndex];
    dynamic "setModelData" [arg "editor" qWidget;arg "model" qAbstractItemModel;arg "index" qModelIndex];
    dynamic "updateEditorGeometry" [arg "editor" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "itemEditorFactory" [] ~ret:qItemEditorFactory;
    dynamic "setItemEditorFactory" [arg "factory" qItemEditorFactory];
  ]
  let () = with_class qStyledItemDelegate [
    constructor "" [opt "parent" qObject];
    dynamic "paint" [arg "painter" qPainter;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "sizeHint" [arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:qSize;
    dynamic "createEditor" [arg "parent" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex] ~ret:(optional qWidget);
    dynamic "setEditorData" [arg "editor" qWidget;arg "index" qModelIndex];
    dynamic "setModelData" [arg "editor" qWidget;arg "model" qAbstractItemModel;arg "index" qModelIndex];
    dynamic "updateEditorGeometry" [arg "editor" qWidget;arg "option" qStyleOptionViewItem;arg "index" qModelIndex];
    dynamic "itemEditorFactory" [] ~ret:qItemEditorFactory;
    dynamic "setItemEditorFactory" [arg "factory" qItemEditorFactory];
    (*dynamic "displayText" [arg "value" qVariant;arg "locale" qLocale] ~ret:qString;*)
  ]
  let () = with_class qGraphicsView [
    constructor "" [opt "parent" qWidget];
    constructor "" [arg "scene" qGraphicsScene;opt "parent" qWidget];
    dynamic "sizeHint" [] ~ret:qSize;
    dynamic "renderHints" [] ~ret:qPainter'RenderHints;
    dynamic "setRenderHint" [arg "hint" qPainter'RenderHint;arg "enabled" bool];
    dynamic "setRenderHints" [arg "hints" qPainter'RenderHints];
    dynamic "alignment" [] ~ret:qt'Alignment;
    dynamic "setAlignment" [arg "alignment" qt'Alignment];
    dynamic "transformationAnchor" [] ~ret:qGraphicsView'ViewportAnchor;
    dynamic "resizeAnchor" [] ~ret:qGraphicsView'ViewportAnchor;
    dynamic "viewportUpdateMode" [] ~ret:qGraphicsView'ViewportUpdateMode;
    dynamic "setViewportUpdateMode" [arg "mode" qGraphicsView'ViewportUpdateMode];
    dynamic "optimizationFlags" [] ~ret:qGraphicsView'OptimizationFlags;
    dynamic "setOptimizationFlag" [arg "flag" qGraphicsView'OptimizationFlag;arg "enabled" bool];
    dynamic "setOptimizationFlags" [arg "flags" qGraphicsView'OptimizationFlags];
    dynamic "dragMode" [] ~ret:qGraphicsView'DragMode;
    dynamic "setDragMode" [arg "mode" qGraphicsView'DragMode];
    dynamic "rubberBandSelectionMode" [] ~ret:qt'ItemSelectionMode;
    dynamic "setRubberBandSelectionMode" [arg "mode" qt'ItemSelectionMode];
    dynamic "rubberBandRect" [] ~ret:qRect;
    dynamic "cacheMode" [] ~ret:qGraphicsView'CacheMode;
    dynamic "setCacheMode" [arg "mode" qGraphicsView'CacheMode];
    dynamic "resetCachedContent" [];
    dynamic "isInteractive" [] ~ret:bool;
    dynamic "setInteractive" [arg "allowed" bool];
    dynamic "scene" [] ~ret:qGraphicsScene;
    dynamic "setScene" [arg "scene" qGraphicsScene];
    dynamic "sceneRect" [] ~ret:qRectF;
    dynamic "setSceneRect" [arg "rect" qRectF];
    dynamic "setSceneRect" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal];
    dynamic "matrix" [] ~ret:qMatrix;
    dynamic "setMatrix" [arg "matrix" qMatrix;arg "combine" bool];
    dynamic "resetMatrix" [];
    dynamic "transform" [] ~ret:qTransform;
    dynamic "viewportTransform" [] ~ret:qTransform;
    dynamic "isTransformed" [] ~ret:bool;
    dynamic "setTransform" [arg "matrix" qTransform;arg "combine" bool];
    dynamic "resetTransform" [];
    dynamic "rotate" [arg "angle" qreal];
    dynamic "scale" [arg "sx" qreal;arg "sy" qreal];
    dynamic "shear" [arg "sh" qreal;arg "sv" qreal];
    dynamic "translate" [arg "dx" qreal;arg "dy" qreal];
    dynamic "centerOn" [arg "pos" qPointF];
    dynamic "centerOn" [arg "x" qreal;arg "y" qreal];
    dynamic "centerOn" [arg "item" qGraphicsItem];
    dynamic "ensureVisible" [arg "rect" qRectF;arg "xmargin" int;arg "ymargin" int];
    dynamic "ensureVisible" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "xmargin" int;arg "ymargin" int];
    dynamic "ensureVisible" [arg "item" qGraphicsItem;arg "xmargin" int;arg "ymargin" int];
    dynamic "fitInView" [arg "rect" qRectF;arg "aspectRatioMode" qt'AspectRatioMode];
    dynamic "fitInView" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal;arg "aspectRatioMode" qt'AspectRatioMode];
    dynamic "fitInView" [arg "item" qGraphicsItem;arg "aspectRatioMode" qt'AspectRatioMode];
    dynamic "render" [arg "painter" qPainter;arg "target" qRectF;arg "source" qRect;arg "aspectRatioMode" qt'AspectRatioMode];
    (*dynamic "items" [] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "pos" qPoint] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "x" int;arg "y" int] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "rect" qRect;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "x" int;arg "y" int;arg "w" int;arg "h" int;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "polygon" qPolygon;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    (*dynamic "items" [arg "path" qPainterPath;arg "mode" qt'ItemSelectionMode] ~ret:qList<QGraphicsItem *>;*)
    dynamic "itemAt" [arg "pos" qPoint] ~ret:qGraphicsItem;
    dynamic "itemAt" [arg "x" int;arg "y" int] ~ret:qGraphicsItem;
    dynamic "mapToScene" [arg "point" qPoint] ~ret:qPointF;
    dynamic "mapToScene" [arg "rect" qRect] ~ret:qPolygonF;
    dynamic "mapToScene" [arg "polygon" qPolygon] ~ret:qPolygonF;
    dynamic "mapToScene" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapFromScene" [arg "point" qPointF] ~ret:qPoint;
    dynamic "mapFromScene" [arg "rect" qRectF] ~ret:qPolygon;
    dynamic "mapFromScene" [arg "polygon" qPolygonF] ~ret:qPolygon;
    dynamic "mapFromScene" [arg "path" qPainterPath] ~ret:qPainterPath;
    dynamic "mapToScene" [arg "x" int;arg "y" int] ~ret:qPointF;
    dynamic "mapToScene" [arg "x" int;arg "y" int;arg "w" int;arg "h" int] ~ret:qPolygonF;
    dynamic "mapFromScene" [arg "x" qreal;arg "y" qreal] ~ret:qPoint;
    dynamic "mapFromScene" [arg "x" qreal;arg "y" qreal;arg "w" qreal;arg "h" qreal] ~ret:qPolygon;
    (*dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;*)
    dynamic "backgroundBrush" [] ~ret:qBrush;
    dynamic "setBackgroundBrush" [arg "brush" qBrush];
    dynamic "foregroundBrush" [] ~ret:qBrush;
    dynamic "setForegroundBrush" [arg "brush" qBrush];
    (*dynamic "updateScene" [arg "rects" qList<QRectF>];*)
    dynamic "invalidateScene" [arg "rect" qRectF;arg "layers" qGraphicsScene'SceneLayers];
    dynamic "updateSceneRect" [arg "rect" qRectF];
    dynamic "rubberBandChanged" [arg "rubberBandRect" qRect;arg "fromScenePoint" qPointF;arg "toScenePoint" qPointF];
  slot "invalidateScene" [];
  slot "invalidateScene" [arg "" qRectF];
  slot "invalidateScene" [arg "" qRectF;arg "" qGraphicsScene'SceneLayers];
  slot "_q_setViewportCursor" [arg "" qCursor];
  slot "_q_unsetViewportCursor" [];
  slot "setupViewport" [arg "" qWidget];
  (*slot "updateScene" [qList<QRectF>];*)
  slot "updateSceneRect" [arg "" qRectF];
  signal "rubberBandChanged" [arg "" qRect;arg "" qPointF;arg "" qPointF];
  ]
*)
let () = with_class qAbstractItemView [
    (*constructor "" [opt "parent" qWidget];*)
    dynamic "setModel" [arg "model" qAbstractItemModel];
    dynamic "model" [] ~ret:qAbstractItemModel;
    dynamic "setSelectionModel" [arg "selectionModel" qItemSelectionModel];
    dynamic "selectionModel" [] ~ret:qItemSelectionModel;
    dynamic "setItemDelegate" [arg "delegate" qAbstractItemDelegate];
    dynamic "itemDelegate" [] ~ret:qAbstractItemDelegate;
    dynamic "setSelectionMode" [arg "mode" qAbstractItemView'SelectionMode];
    dynamic "selectionMode" [] ~ret:qAbstractItemView'SelectionMode;
    dynamic "setSelectionBehavior" [arg "behavior" qAbstractItemView'SelectionBehavior];
    dynamic "selectionBehavior" [] ~ret:qAbstractItemView'SelectionBehavior;
    dynamic "currentIndex" [] ~ret:qModelIndex;
    dynamic "rootIndex" [] ~ret:qModelIndex;
    dynamic "setEditTriggers" [arg "triggers" qAbstractItemView'EditTriggers];
    dynamic "editTriggers" [] ~ret:qAbstractItemView'EditTriggers;
    dynamic "setVerticalScrollMode" [arg "mode" qAbstractItemView'ScrollMode];
    dynamic "verticalScrollMode" [] ~ret:qAbstractItemView'ScrollMode;
    dynamic "resetVerticalScrollMode" [];
    dynamic "setHorizontalScrollMode" [arg "mode" qAbstractItemView'ScrollMode];
    dynamic "horizontalScrollMode" [] ~ret:qAbstractItemView'ScrollMode;
    dynamic "resetHorizontalScrollMode" [];
    dynamic "setAutoScroll" [arg "enable" bool];
    dynamic "hasAutoScroll" [] ~ret:bool;
    dynamic "setAutoScrollMargin" [arg "margin" int];
    dynamic "autoScrollMargin" [] ~ret:int;
    dynamic "setTabKeyNavigation" [arg "enable" bool];
    dynamic "tabKeyNavigation" [] ~ret:bool;
    dynamic "setDropIndicatorShown" [arg "enable" bool];
    dynamic "showDropIndicator" [] ~ret:bool;
    dynamic "setDragEnabled" [arg "enable" bool];
    dynamic "dragEnabled" [] ~ret:bool;
    dynamic "setDragDropOverwriteMode" [arg "overwrite" bool];
    dynamic "dragDropOverwriteMode" [] ~ret:bool;
    dynamic "setDragDropMode" [arg "behavior" qAbstractItemView'DragDropMode];
    dynamic "dragDropMode" [] ~ret:qAbstractItemView'DragDropMode;
    dynamic "setDefaultDropAction" [arg "dropAction" qt'DropAction];
    dynamic "defaultDropAction" [] ~ret:qt'DropAction;
    dynamic "setAlternatingRowColors" [arg "enable" bool];
    dynamic "alternatingRowColors" [] ~ret:bool;
    dynamic "setIconSize" [arg "size" qSize];
    dynamic "iconSize" [] ~ret:qSize;
    dynamic "setTextElideMode" [arg "mode" qt'TextElideMode];
    dynamic "textElideMode" [] ~ret:qt'TextElideMode;
    dynamic "keyboardSearch" [arg "search" qString];
    dynamic "visualRect" [arg "index" qModelIndex] ~ret:qRect;
    dynamic "scrollTo" [arg "index" qModelIndex;arg "hint" qAbstractItemView'ScrollHint];
    dynamic "indexAt" [arg "point" qPoint] ~ret:qModelIndex;
    dynamic "sizeHintForIndex" [arg "index" qModelIndex] ~ret:qSize;
    dynamic "sizeHintForRow" [arg "row" int] ~ret:int;
    dynamic "sizeHintForColumn" [arg "column" int] ~ret:int;
    dynamic "openPersistentEditor" [arg "index" qModelIndex];
    dynamic "closePersistentEditor" [arg "index" qModelIndex];
    dynamic "setIndexWidget" [arg "index" qModelIndex;arg "widget" qWidget];
    dynamic "indexWidget" [arg "index" qModelIndex] ~ret:(optional qWidget);
    dynamic "setItemDelegateForRow" [arg "row" int;arg "delegate" qAbstractItemDelegate];
    dynamic "itemDelegateForRow" [arg "row" int] ~ret:qAbstractItemDelegate;
    dynamic "setItemDelegateForColumn" [arg "column" int;arg "delegate" qAbstractItemDelegate];
    dynamic "itemDelegateForColumn" [arg "column" int] ~ret:qAbstractItemDelegate;
    dynamic "itemDelegate" [arg "index" qModelIndex] ~ret:qAbstractItemDelegate;
    (*dynamic "inputMethodQuery" [arg "query" qt'InputMethodQuery] ~ret:qVariant;*)
    dynamic "reset" [];
    dynamic "setRootIndex" [arg "index" qModelIndex];
    dynamic "selectAll" [];
    dynamic "edit" [arg "index" qModelIndex];
    dynamic "clearSelection" [];
    dynamic "setCurrentIndex" [arg "index" qModelIndex];
    dynamic "scrollToTop" [];
    dynamic "scrollToBottom" [];
    dynamic "update" [arg "index" qModelIndex];
    dynamic "pressed" [arg "index" qModelIndex];
    dynamic "clicked" [arg "index" qModelIndex];
    dynamic "doubleClicked" [arg "index" qModelIndex];
    dynamic "activated" [arg "index" qModelIndex];
    dynamic "entered" [arg "index" qModelIndex];
    dynamic "viewportEntered" [];
    dynamic "iconSizeChanged" [arg "size" qSize];
    slot "clearSelection" [];
    (*  slot "closeEditor" [qWidget*;QAbstractItemDelegate::arg "" EndEditHint];*)
    (*  slot "commitData" [arg "" qWidget];*)
    slot ~protected "currentChanged" [arg "" qModelIndex;arg "" qModelIndex];
    slot ~protected "dataChanged" [arg "" qModelIndex;arg "" qModelIndex];
    (*slot "dataChanged" [arg "" qModelIndex;arg "" qModelIndex;QVector<int>];*)
    slot "doItemsLayout" [];
    (*  slot "editorDestroyed" [arg "" qObject];*)
    slot "edit" [arg "" qModelIndex];
    slot ~protected "horizontalScrollbarAction" [arg "" int];
    slot ~protected "horizontalScrollbarValueChanged" [arg "" int];
    slot "_q_columnsAboutToBeRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_columnsInserted" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_columnsMoved" [arg "" qModelIndex;arg "" int;arg "" int;arg "" qModelIndex;arg "" int];
    slot "_q_columnsRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_headerDataChanged" [];
    slot "_q_layoutChanged" [];
    slot "_q_modelDestroyed" [];
    slot "_q_rowsInserted" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_rowsMoved" [arg "" qModelIndex;arg "" int;arg "" int;arg "" qModelIndex;arg "" int];
    slot "_q_rowsRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "_q_scrollerStateChanged" [];
    slot "reset" [];
    slot ~protected "rowsAboutToBeRemoved" [arg "" qModelIndex;arg "" int;arg "" int];
    slot ~protected "rowsInserted" [arg "" qModelIndex;arg "" int;arg "" int];
    slot "scrollToBottom" [];
    slot "scrollToTop" [];
    slot "selectAll" [];
    slot ~protected "selectionChanged" [arg "" qItemSelection;arg "" qItemSelection];
    slot "setCurrentIndex" [arg "" qModelIndex];
    slot "setRootIndex" [arg "" qModelIndex];
    slot ~protected "updateEditorData" [];
    slot ~protected "updateEditorGeometries" [];
    slot ~protected "updateGeometries" [];
    slot "update" [arg "" qModelIndex];
    slot ~protected "verticalScrollbarAction" [arg "" int];
    slot ~protected "verticalScrollbarValueChanged" [arg "" int];
    signal "activated" [arg "" qModelIndex];
    signal "clicked" [arg "" qModelIndex];
    signal "doubleClicked" [arg "" qModelIndex];
    signal "entered" [arg "" qModelIndex];
    signal "iconSizeChanged" [arg "" qSize];
    signal "pressed" [arg "" qModelIndex];
    signal "viewportEntered" [];
  ]

(* From QtCore but references QWidget *)

let () = with_class qSignalMapper [
    dynamic "setMapping" [arg "sender" qObject;arg "widget" qWidget];
    dynamic "mapping" [arg "widget" qWidget] ~ret:qObject;
    dynamic "mapped" [arg "widget" qWidget];
    signal "mapped" [arg "" qWidget];
  ]
