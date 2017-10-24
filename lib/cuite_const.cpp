#include "cuite_const.h"
QJsonParseError::ParseError mlqt_QJsonParseError_ParseError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QJsonParseError::NoError;
  case 788409979: return QJsonParseError::UnterminatedObject;
  case 960528756: return QJsonParseError::MissingNameSeparator;
  case -533132963: return QJsonParseError::UnterminatedArray;
  case -590334822: return QJsonParseError::MissingValueSeparator;
  case 779309627: return QJsonParseError::IllegalValue;
  case 538778308: return QJsonParseError::TerminationByNumber;
  case -935844673: return QJsonParseError::IllegalNumber;
  case -289961256: return QJsonParseError::IllegalEscapeSequence;
  case -228337192: return QJsonParseError::IllegalUTF8String;
  case 720296077: return QJsonParseError::UnterminatedString;
  case -714108251: return QJsonParseError::MissingObject;
  case -378714530: return QJsonParseError::DeepNesting;
  case -395542814: return QJsonParseError::DocumentTooLarge;
  case -181778989: return QJsonParseError::GarbageAtEnd;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QJsonParseError::ParseError)Long_val(Field(v, 1));
  }
}

value& mlqt_QJsonParseError_ParseError_to_ocaml(const QJsonParseError::ParseError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QJsonParseError::NoError: result = Val_long(327055271); break;
  case QJsonParseError::UnterminatedObject: result = Val_long(788409979); break;
  case QJsonParseError::MissingNameSeparator: result = Val_long(960528756); break;
  case QJsonParseError::UnterminatedArray: result = Val_long(-533132963); break;
  case QJsonParseError::MissingValueSeparator: result = Val_long(-590334822); break;
  case QJsonParseError::IllegalValue: result = Val_long(779309627); break;
  case QJsonParseError::TerminationByNumber: result = Val_long(538778308); break;
  case QJsonParseError::IllegalNumber: result = Val_long(-935844673); break;
  case QJsonParseError::IllegalEscapeSequence: result = Val_long(-289961256); break;
  case QJsonParseError::IllegalUTF8String: result = Val_long(-228337192); break;
  case QJsonParseError::UnterminatedString: result = Val_long(720296077); break;
  case QJsonParseError::MissingObject: result = Val_long(-714108251); break;
  case QJsonParseError::DeepNesting: result = Val_long(-378714530); break;
  case QJsonParseError::DocumentTooLarge: result = Val_long(-395542814); break;
  case QJsonParseError::GarbageAtEnd: result = Val_long(-181778989); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QEasingCurve::Type mlqt_QEasingCurve_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 557106693: return QEasingCurve::Linear;
  case 1006930796: return QEasingCurve::InQuad;
  case 490703957: return QEasingCurve::OutQuad;
  case -675051792: return QEasingCurve::InOutQuad;
  case -800331174: return QEasingCurve::OutInQuad;
  case 945429253: return QEasingCurve::InCubic;
  case -356522500: return QEasingCurve::OutCubic;
  case -474533119: return QEasingCurve::InOutCubic;
  case -494547881: return QEasingCurve::OutInCubic;
  case -940212294: return QEasingCurve::InQuart;
  case -94680399: return QEasingCurve::OutQuart;
  case -212691018: return QEasingCurve::InOutQuart;
  case -232705780: return QEasingCurve::OutInQuart;
  case -939815354: return QEasingCurve::InQuint;
  case -94283459: return QEasingCurve::OutQuint;
  case -212294078: return QEasingCurve::InOutQuint;
  case -232308840: return QEasingCurve::OutInQuint;
  case 1028516082: return QEasingCurve::InSine;
  case 512289243: return QEasingCurve::OutSine;
  case -653466506: return QEasingCurve::InOutSine;
  case -778745888: return QEasingCurve::OutInSine;
  case 874008535: return QEasingCurve::InExpo;
  case 357781696: return QEasingCurve::OutExpo;
  case -807974053: return QEasingCurve::InOutExpo;
  case -933253435: return QEasingCurve::OutInExpo;
  case 851083900: return QEasingCurve::InCirc;
  case 334857061: return QEasingCurve::OutCirc;
  case -830898688: return QEasingCurve::InOutCirc;
  case -956178070: return QEasingCurve::OutInCirc;
  case -997055408: return QEasingCurve::InElastic;
  case 876206855: return QEasingCurve::OutElastic;
  case -748539060: return QEasingCurve::InOutElastic;
  case 369774114: return QEasingCurve::OutInElastic;
  case 839593164: return QEasingCurve::InBack;
  case 323366325: return QEasingCurve::OutBack;
  case -842389424: return QEasingCurve::InOutBack;
  case -967668806: return QEasingCurve::OutInBack;
  case -934442131: return QEasingCurve::InBounce;
  case 788093078: return QEasingCurve::OutBounce;
  case 241528817: return QEasingCurve::InOutBounce;
  case 73204187: return QEasingCurve::OutInBounce;
  case 946227818: return QEasingCurve::InCurve;
  case -355723935: return QEasingCurve::OutCurve;
  case -71299326: return QEasingCurve::SineCurve;
  case -194168106: return QEasingCurve::CosineCurve;
  case -45829968: return QEasingCurve::BezierSpline;
  case -601492636: return QEasingCurve::TCBSpline;
  case -198771759: return QEasingCurve::Custom;
  case 855042872: return QEasingCurve::NCurveTypes;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QEasingCurve::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QEasingCurve_Type_to_ocaml(const QEasingCurve::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QEasingCurve::Linear: result = Val_long(557106693); break;
  case QEasingCurve::InQuad: result = Val_long(1006930796); break;
  case QEasingCurve::OutQuad: result = Val_long(490703957); break;
  case QEasingCurve::InOutQuad: result = Val_long(-675051792); break;
  case QEasingCurve::OutInQuad: result = Val_long(-800331174); break;
  case QEasingCurve::InCubic: result = Val_long(945429253); break;
  case QEasingCurve::OutCubic: result = Val_long(-356522500); break;
  case QEasingCurve::InOutCubic: result = Val_long(-474533119); break;
  case QEasingCurve::OutInCubic: result = Val_long(-494547881); break;
  case QEasingCurve::InQuart: result = Val_long(-940212294); break;
  case QEasingCurve::OutQuart: result = Val_long(-94680399); break;
  case QEasingCurve::InOutQuart: result = Val_long(-212691018); break;
  case QEasingCurve::OutInQuart: result = Val_long(-232705780); break;
  case QEasingCurve::InQuint: result = Val_long(-939815354); break;
  case QEasingCurve::OutQuint: result = Val_long(-94283459); break;
  case QEasingCurve::InOutQuint: result = Val_long(-212294078); break;
  case QEasingCurve::OutInQuint: result = Val_long(-232308840); break;
  case QEasingCurve::InSine: result = Val_long(1028516082); break;
  case QEasingCurve::OutSine: result = Val_long(512289243); break;
  case QEasingCurve::InOutSine: result = Val_long(-653466506); break;
  case QEasingCurve::OutInSine: result = Val_long(-778745888); break;
  case QEasingCurve::InExpo: result = Val_long(874008535); break;
  case QEasingCurve::OutExpo: result = Val_long(357781696); break;
  case QEasingCurve::InOutExpo: result = Val_long(-807974053); break;
  case QEasingCurve::OutInExpo: result = Val_long(-933253435); break;
  case QEasingCurve::InCirc: result = Val_long(851083900); break;
  case QEasingCurve::OutCirc: result = Val_long(334857061); break;
  case QEasingCurve::InOutCirc: result = Val_long(-830898688); break;
  case QEasingCurve::OutInCirc: result = Val_long(-956178070); break;
  case QEasingCurve::InElastic: result = Val_long(-997055408); break;
  case QEasingCurve::OutElastic: result = Val_long(876206855); break;
  case QEasingCurve::InOutElastic: result = Val_long(-748539060); break;
  case QEasingCurve::OutInElastic: result = Val_long(369774114); break;
  case QEasingCurve::InBack: result = Val_long(839593164); break;
  case QEasingCurve::OutBack: result = Val_long(323366325); break;
  case QEasingCurve::InOutBack: result = Val_long(-842389424); break;
  case QEasingCurve::OutInBack: result = Val_long(-967668806); break;
  case QEasingCurve::InBounce: result = Val_long(-934442131); break;
  case QEasingCurve::OutBounce: result = Val_long(788093078); break;
  case QEasingCurve::InOutBounce: result = Val_long(241528817); break;
  case QEasingCurve::OutInBounce: result = Val_long(73204187); break;
  case QEasingCurve::InCurve: result = Val_long(946227818); break;
  case QEasingCurve::OutCurve: result = Val_long(-355723935); break;
  case QEasingCurve::SineCurve: result = Val_long(-71299326); break;
  case QEasingCurve::CosineCurve: result = Val_long(-194168106); break;
  case QEasingCurve::BezierSpline: result = Val_long(-45829968); break;
  case QEasingCurve::TCBSpline: result = Val_long(-601492636); break;
  case QEasingCurve::Custom: result = Val_long(-198771759); break;
  case QEasingCurve::NCurveTypes: result = Val_long(855042872); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTimeZone::TimeType mlqt_QTimeZone_TimeType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 800677386: return QTimeZone::StandardTime;
  case -194177465: return QTimeZone::DaylightTime;
  case 138172836: return QTimeZone::GenericTime;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTimeZone::TimeType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTimeZone_TimeType_to_ocaml(const QTimeZone::TimeType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTimeZone::StandardTime: result = Val_long(800677386); break;
  case QTimeZone::DaylightTime: result = Val_long(-194177465); break;
  case QTimeZone::GenericTime: result = Val_long(138172836); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTimeZone::NameType mlqt_QTimeZone_NameType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -17759348: return QTimeZone::DefaultName;
  case 2649607: return QTimeZone::LongName;
  case 999616711: return QTimeZone::ShortName;
  case 1002962846: return QTimeZone::OffsetName;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTimeZone::NameType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTimeZone_NameType_to_ocaml(const QTimeZone::NameType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTimeZone::DefaultName: result = Val_long(-17759348); break;
  case QTimeZone::LongName: result = Val_long(2649607); break;
  case QTimeZone::ShortName: result = Val_long(999616711); break;
  case QTimeZone::OffsetName: result = Val_long(1002962846); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLineF::IntersectType mlqt_QLineF_IntersectType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -541474742: return QLineF::NoIntersection;
  case -953830938: return QLineF::BoundedIntersection;
  case -437256403: return QLineF::UnboundedIntersection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLineF::IntersectType)Long_val(Field(v, 1));
  }
}

value& mlqt_QLineF_IntersectType_to_ocaml(const QLineF::IntersectType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLineF::NoIntersection: result = Val_long(-541474742); break;
  case QLineF::BoundedIntersection: result = Val_long(-953830938); break;
  case QLineF::UnboundedIntersection: result = Val_long(-437256403); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QEvent::Type mlqt_QEvent_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QEvent::None;
  case 593702821: return QEvent::Timer;
  case 1009912364: return QEvent::MouseButtonPress;
  case -747571024: return QEvent::MouseButtonRelease;
  case 92538673: return QEvent::MouseButtonDblClick;
  case 378043318: return QEvent::MouseMove;
  case -425478780: return QEvent::KeyPress;
  case 1042688520: return QEvent::KeyRelease;
  case 248802749: return QEvent::FocusIn;
  case -351261770: return QEvent::FocusOut;
  case -756062752: return QEvent::FocusAboutToChange;
  case 62119160: return QEvent::Enter;
  case 92316887: return QEvent::Leave;
  case -797169794: return QEvent::Paint;
  case 859442993: return QEvent::Move;
  case 1024445972: return QEvent::Resize;
  case 816044828: return QEvent::Create;
  case -237546278: return QEvent::Destroy;
  case 925630749: return QEvent::Show;
  case 803692770: return QEvent::Hide;
  case -611285096: return QEvent::Close;
  case 904096751: return QEvent::Quit;
  case 300847706: return QEvent::ParentChange;
  case 513255694: return QEvent::ParentAboutToChange;
  case 505020410: return QEvent::ThreadChange;
  case 165507043: return QEvent::WindowActivate;
  case -833348508: return QEvent::WindowDeactivate;
  case 140267330: return QEvent::ShowToParent;
  case 500464647: return QEvent::HideToParent;
  case -588798853: return QEvent::Wheel;
  case -1005336840: return QEvent::WindowTitleChange;
  case 458821113: return QEvent::WindowIconChange;
  case 964145449: return QEvent::ApplicationWindowIconChange;
  case 669928431: return QEvent::ApplicationFontChange;
  case -722565067: return QEvent::ApplicationLayoutDirectionChange;
  case 560264443: return QEvent::ApplicationPaletteChange;
  case -987466197: return QEvent::PaletteChange;
  case -475380298: return QEvent::Clipboard;
  case -275811774: return QEvent::Speech;
  case 66818595: return QEvent::MetaCall;
  case 615086414: return QEvent::SockAct;
  case -396892812: return QEvent::WinEventAct;
  case -1000183606: return QEvent::DeferredDelete;
  case -189875100: return QEvent::DragEnter;
  case 1245509: return QEvent::DragMove;
  case -159677373: return QEvent::DragLeave;
  case 759784527: return QEvent::Drop;
  case 284948149: return QEvent::DragResponse;
  case 829442468: return QEvent::ChildAdded;
  case 798607884: return QEvent::ChildPolished;
  case 64918916: return QEvent::ChildRemoved;
  case 1071051234: return QEvent::ShowWindowRequest;
  case 458144094: return QEvent::PolishRequest;
  case 767188465: return QEvent::Polish;
  case -853593691: return QEvent::LayoutRequest;
  case -672951258: return QEvent::UpdateRequest;
  case 965195683: return QEvent::UpdateLater;
  case 477562598: return QEvent::EmbeddingControl;
  case -8279094: return QEvent::ActivateControl;
  case -38165143: return QEvent::DeactivateControl;
  case 160416526: return QEvent::ContextMenu;
  case -490640789: return QEvent::InputMethod;
  case -704204041: return QEvent::TabletMove;
  case 617690570: return QEvent::LocaleChange;
  case -101782520: return QEvent::LanguageChange;
  case 47888741: return QEvent::LayoutDirectionChange;
  case 390796561: return QEvent::Style;
  case 737701085: return QEvent::TabletPress;
  case 194652577: return QEvent::TabletRelease;
  case 309010803: return QEvent::OkRequest;
  case 833599086: return QEvent::HelpRequest;
  case -920015827: return QEvent::IconDrag;
  case -495506241: return QEvent::FontChange;
  case 924070065: return QEvent::EnabledChange;
  case -479490362: return QEvent::ActivationChange;
  case 322747745: return QEvent::StyleChange;
  case -1014758666: return QEvent::IconTextChange;
  case 882479545: return QEvent::ModifiedChange;
  case -390502164: return QEvent::MouseTrackingChange;
  case -939082564: return QEvent::WindowBlocked;
  case -939993213: return QEvent::WindowUnblocked;
  case 672221233: return QEvent::WindowStateChange;
  case -796193006: return QEvent::ReadOnlyChange;
  case 935693507: return QEvent::ToolTip;
  case -25506163: return QEvent::WhatsThis;
  case 474881321: return QEvent::StatusTip;
  case 179466174: return QEvent::ActionChanged;
  case -757371638: return QEvent::ActionAdded;
  case 820371050: return QEvent::ActionRemoved;
  case 1017751686: return QEvent::FileOpen;
  case -1034505562: return QEvent::Shortcut;
  case -826497262: return QEvent::ShortcutOverride;
  case 81882010: return QEvent::WhatsThisClicked;
  case -470482677: return QEvent::ToolBarChange;
  case -494023933: return QEvent::ApplicationActivate;
  case -131498108: return QEvent::ApplicationDeactivate;
  case 789591717: return QEvent::QueryWhatsThis;
  case 632225944: return QEvent::EnterWhatsThisMode;
  case -986875559: return QEvent::LeaveWhatsThisMode;
  case -354224540: return QEvent::ZOrderChange;
  case -382094884: return QEvent::HoverEnter;
  case -351897157: return QEvent::HoverLeave;
  case 77423309: return QEvent::HoverMove;
  case -178967636: return QEvent::AcceptDropsChange;
  case 454514557: return QEvent::ZeroTimerEvent;
  case 281872181: return QEvent::GraphicsSceneMouseMove;
  case -558117153: return QEvent::GraphicsSceneMousePress;
  case -8679389: return QEvent::GraphicsSceneMouseRelease;
  case -844207149: return QEvent::GraphicsSceneMouseDoubleClick;
  case 112028749: return QEvent::GraphicsSceneContextMenu;
  case -353421955: return QEvent::GraphicsSceneHoverEnter;
  case -18747828: return QEvent::GraphicsSceneHoverMove;
  case -323224228: return QEvent::GraphicsSceneHoverLeave;
  case -423001150: return QEvent::GraphicsSceneHelp;
  case -286046237: return QEvent::GraphicsSceneDragEnter;
  case 126003878: return QEvent::GraphicsSceneDragMove;
  case -255848510: return QEvent::GraphicsSceneDragLeave;
  case -466712272: return QEvent::GraphicsSceneDrop;
  case 780321914: return QEvent::GraphicsSceneWheel;
  case 748315425: return QEvent::KeyboardLayoutChange;
  case -519004316: return QEvent::DynamicPropertyChange;
  case 1026212973: return QEvent::TabletEnterProximity;
  case 99322030: return QEvent::TabletLeaveProximity;
  case 994613329: return QEvent::NonClientAreaMouseMove;
  case -713521423: return QEvent::NonClientAreaMouseButtonPress;
  case 686026933: return QEvent::NonClientAreaMouseButtonRelease;
  case -190180468: return QEvent::NonClientAreaMouseButtonDblClick;
  case 765719648: return QEvent::MacSizeChange;
  case -642705522: return QEvent::ContentsRectChange;
  case -200187404: return QEvent::MacGLWindowChange;
  case 133870701: return QEvent::FutureCallOut;
  case -751784651: return QEvent::GraphicsSceneResize;
  case -367053806: return QEvent::GraphicsSceneMove;
  case 1003595014: return QEvent::CursorChange;
  case 794232467: return QEvent::ToolTipChange;
  case 612143071: return QEvent::NetworkReplyUpdated;
  case 161010329: return QEvent::GrabMouse;
  case -778104544: return QEvent::UngrabMouse;
  case -39829325: return QEvent::GrabKeyboard;
  case -774860660: return QEvent::UngrabKeyboard;
  case 815112023: return QEvent::MacGLClearDrawable;
  case -654474082: return QEvent::StateMachineSignal;
  case -782700977: return QEvent::StateMachineWrapped;
  case 546820618: return QEvent::TouchBegin;
  case -798063864: return QEvent::TouchUpdate;
  case -642023044: return QEvent::TouchEnd;
  case 675936658: return QEvent::NativeGesture;
  case -480478032: return QEvent::RequestSoftwareInputPanel;
  case -1072411815: return QEvent::CloseSoftwareInputPanel;
  case -945246265: return QEvent::WinIdChange;
  case -291896727: return QEvent::Gesture;
  case 592048597: return QEvent::GestureOverride;
  case -233505574: return QEvent::ScrollPrepare;
  case -67548115: return QEvent::Scroll;
  case -116259228: return QEvent::Expose;
  case 254143645: return QEvent::InputMethodQuery;
  case -605900736: return QEvent::OrientationChange;
  case 27060857: return QEvent::TouchCancel;
  case -822884295: return QEvent::ThemeChange;
  case -374237516: return QEvent::SockClose;
  case -1041047759: return QEvent::PlatformPanel;
  case -113946084: return QEvent::StyleAnimationUpdate;
  case 418554129: return QEvent::ApplicationStateChange;
  case 933248253: return QEvent::WindowChangeInternal;
  case -947354247: return QEvent::ScreenChangeInternal;
  case 367849370: return QEvent::PlatformSurface;
  case 510847133: return QEvent::Pointer;
  case 859544429: return QEvent::TabletTrackingChange;
  case 948354667: return QEvent::User;
  case 456069871: return QEvent::MaxUser;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QEvent::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QEvent_Type_to_ocaml(const QEvent::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QEvent::None: result = Val_long(870530776); break;
  case QEvent::Timer: result = Val_long(593702821); break;
  case QEvent::MouseButtonPress: result = Val_long(1009912364); break;
  case QEvent::MouseButtonRelease: result = Val_long(-747571024); break;
  case QEvent::MouseButtonDblClick: result = Val_long(92538673); break;
  case QEvent::MouseMove: result = Val_long(378043318); break;
  case QEvent::KeyPress: result = Val_long(-425478780); break;
  case QEvent::KeyRelease: result = Val_long(1042688520); break;
  case QEvent::FocusIn: result = Val_long(248802749); break;
  case QEvent::FocusOut: result = Val_long(-351261770); break;
  case QEvent::FocusAboutToChange: result = Val_long(-756062752); break;
  case QEvent::Enter: result = Val_long(62119160); break;
  case QEvent::Leave: result = Val_long(92316887); break;
  case QEvent::Paint: result = Val_long(-797169794); break;
  case QEvent::Move: result = Val_long(859442993); break;
  case QEvent::Resize: result = Val_long(1024445972); break;
  case QEvent::Create: result = Val_long(816044828); break;
  case QEvent::Destroy: result = Val_long(-237546278); break;
  case QEvent::Show: result = Val_long(925630749); break;
  case QEvent::Hide: result = Val_long(803692770); break;
  case QEvent::Close: result = Val_long(-611285096); break;
  case QEvent::Quit: result = Val_long(904096751); break;
  case QEvent::ParentChange: result = Val_long(300847706); break;
  case QEvent::ParentAboutToChange: result = Val_long(513255694); break;
  case QEvent::ThreadChange: result = Val_long(505020410); break;
  case QEvent::WindowActivate: result = Val_long(165507043); break;
  case QEvent::WindowDeactivate: result = Val_long(-833348508); break;
  case QEvent::ShowToParent: result = Val_long(140267330); break;
  case QEvent::HideToParent: result = Val_long(500464647); break;
  case QEvent::Wheel: result = Val_long(-588798853); break;
  case QEvent::WindowTitleChange: result = Val_long(-1005336840); break;
  case QEvent::WindowIconChange: result = Val_long(458821113); break;
  case QEvent::ApplicationWindowIconChange: result = Val_long(964145449); break;
  case QEvent::ApplicationFontChange: result = Val_long(669928431); break;
  case QEvent::ApplicationLayoutDirectionChange: result = Val_long(-722565067); break;
  case QEvent::ApplicationPaletteChange: result = Val_long(560264443); break;
  case QEvent::PaletteChange: result = Val_long(-987466197); break;
  case QEvent::Clipboard: result = Val_long(-475380298); break;
  case QEvent::Speech: result = Val_long(-275811774); break;
  case QEvent::MetaCall: result = Val_long(66818595); break;
  case QEvent::SockAct: result = Val_long(615086414); break;
  case QEvent::WinEventAct: result = Val_long(-396892812); break;
  case QEvent::DeferredDelete: result = Val_long(-1000183606); break;
  case QEvent::DragEnter: result = Val_long(-189875100); break;
  case QEvent::DragMove: result = Val_long(1245509); break;
  case QEvent::DragLeave: result = Val_long(-159677373); break;
  case QEvent::Drop: result = Val_long(759784527); break;
  case QEvent::DragResponse: result = Val_long(284948149); break;
  case QEvent::ChildAdded: result = Val_long(829442468); break;
  case QEvent::ChildPolished: result = Val_long(798607884); break;
  case QEvent::ChildRemoved: result = Val_long(64918916); break;
  case QEvent::ShowWindowRequest: result = Val_long(1071051234); break;
  case QEvent::PolishRequest: result = Val_long(458144094); break;
  case QEvent::Polish: result = Val_long(767188465); break;
  case QEvent::LayoutRequest: result = Val_long(-853593691); break;
  case QEvent::UpdateRequest: result = Val_long(-672951258); break;
  case QEvent::UpdateLater: result = Val_long(965195683); break;
  case QEvent::EmbeddingControl: result = Val_long(477562598); break;
  case QEvent::ActivateControl: result = Val_long(-8279094); break;
  case QEvent::DeactivateControl: result = Val_long(-38165143); break;
  case QEvent::ContextMenu: result = Val_long(160416526); break;
  case QEvent::InputMethod: result = Val_long(-490640789); break;
  case QEvent::TabletMove: result = Val_long(-704204041); break;
  case QEvent::LocaleChange: result = Val_long(617690570); break;
  case QEvent::LanguageChange: result = Val_long(-101782520); break;
  case QEvent::LayoutDirectionChange: result = Val_long(47888741); break;
  case QEvent::Style: result = Val_long(390796561); break;
  case QEvent::TabletPress: result = Val_long(737701085); break;
  case QEvent::TabletRelease: result = Val_long(194652577); break;
  case QEvent::OkRequest: result = Val_long(309010803); break;
  case QEvent::HelpRequest: result = Val_long(833599086); break;
  case QEvent::IconDrag: result = Val_long(-920015827); break;
  case QEvent::FontChange: result = Val_long(-495506241); break;
  case QEvent::EnabledChange: result = Val_long(924070065); break;
  case QEvent::ActivationChange: result = Val_long(-479490362); break;
  case QEvent::StyleChange: result = Val_long(322747745); break;
  case QEvent::IconTextChange: result = Val_long(-1014758666); break;
  case QEvent::ModifiedChange: result = Val_long(882479545); break;
  case QEvent::MouseTrackingChange: result = Val_long(-390502164); break;
  case QEvent::WindowBlocked: result = Val_long(-939082564); break;
  case QEvent::WindowUnblocked: result = Val_long(-939993213); break;
  case QEvent::WindowStateChange: result = Val_long(672221233); break;
  case QEvent::ReadOnlyChange: result = Val_long(-796193006); break;
  case QEvent::ToolTip: result = Val_long(935693507); break;
  case QEvent::WhatsThis: result = Val_long(-25506163); break;
  case QEvent::StatusTip: result = Val_long(474881321); break;
  case QEvent::ActionChanged: result = Val_long(179466174); break;
  case QEvent::ActionAdded: result = Val_long(-757371638); break;
  case QEvent::ActionRemoved: result = Val_long(820371050); break;
  case QEvent::FileOpen: result = Val_long(1017751686); break;
  case QEvent::Shortcut: result = Val_long(-1034505562); break;
  case QEvent::ShortcutOverride: result = Val_long(-826497262); break;
  case QEvent::WhatsThisClicked: result = Val_long(81882010); break;
  case QEvent::ToolBarChange: result = Val_long(-470482677); break;
  case QEvent::ApplicationActivate: result = Val_long(-494023933); break;
  case QEvent::ApplicationDeactivate: result = Val_long(-131498108); break;
  case QEvent::QueryWhatsThis: result = Val_long(789591717); break;
  case QEvent::EnterWhatsThisMode: result = Val_long(632225944); break;
  case QEvent::LeaveWhatsThisMode: result = Val_long(-986875559); break;
  case QEvent::ZOrderChange: result = Val_long(-354224540); break;
  case QEvent::HoverEnter: result = Val_long(-382094884); break;
  case QEvent::HoverLeave: result = Val_long(-351897157); break;
  case QEvent::HoverMove: result = Val_long(77423309); break;
  case QEvent::AcceptDropsChange: result = Val_long(-178967636); break;
  case QEvent::ZeroTimerEvent: result = Val_long(454514557); break;
  case QEvent::GraphicsSceneMouseMove: result = Val_long(281872181); break;
  case QEvent::GraphicsSceneMousePress: result = Val_long(-558117153); break;
  case QEvent::GraphicsSceneMouseRelease: result = Val_long(-8679389); break;
  case QEvent::GraphicsSceneMouseDoubleClick: result = Val_long(-844207149); break;
  case QEvent::GraphicsSceneContextMenu: result = Val_long(112028749); break;
  case QEvent::GraphicsSceneHoverEnter: result = Val_long(-353421955); break;
  case QEvent::GraphicsSceneHoverMove: result = Val_long(-18747828); break;
  case QEvent::GraphicsSceneHoverLeave: result = Val_long(-323224228); break;
  case QEvent::GraphicsSceneHelp: result = Val_long(-423001150); break;
  case QEvent::GraphicsSceneDragEnter: result = Val_long(-286046237); break;
  case QEvent::GraphicsSceneDragMove: result = Val_long(126003878); break;
  case QEvent::GraphicsSceneDragLeave: result = Val_long(-255848510); break;
  case QEvent::GraphicsSceneDrop: result = Val_long(-466712272); break;
  case QEvent::GraphicsSceneWheel: result = Val_long(780321914); break;
  case QEvent::KeyboardLayoutChange: result = Val_long(748315425); break;
  case QEvent::DynamicPropertyChange: result = Val_long(-519004316); break;
  case QEvent::TabletEnterProximity: result = Val_long(1026212973); break;
  case QEvent::TabletLeaveProximity: result = Val_long(99322030); break;
  case QEvent::NonClientAreaMouseMove: result = Val_long(994613329); break;
  case QEvent::NonClientAreaMouseButtonPress: result = Val_long(-713521423); break;
  case QEvent::NonClientAreaMouseButtonRelease: result = Val_long(686026933); break;
  case QEvent::NonClientAreaMouseButtonDblClick: result = Val_long(-190180468); break;
  case QEvent::MacSizeChange: result = Val_long(765719648); break;
  case QEvent::ContentsRectChange: result = Val_long(-642705522); break;
  case QEvent::MacGLWindowChange: result = Val_long(-200187404); break;
  case QEvent::FutureCallOut: result = Val_long(133870701); break;
  case QEvent::GraphicsSceneResize: result = Val_long(-751784651); break;
  case QEvent::GraphicsSceneMove: result = Val_long(-367053806); break;
  case QEvent::CursorChange: result = Val_long(1003595014); break;
  case QEvent::ToolTipChange: result = Val_long(794232467); break;
  case QEvent::NetworkReplyUpdated: result = Val_long(612143071); break;
  case QEvent::GrabMouse: result = Val_long(161010329); break;
  case QEvent::UngrabMouse: result = Val_long(-778104544); break;
  case QEvent::GrabKeyboard: result = Val_long(-39829325); break;
  case QEvent::UngrabKeyboard: result = Val_long(-774860660); break;
  case QEvent::MacGLClearDrawable: result = Val_long(815112023); break;
  case QEvent::StateMachineSignal: result = Val_long(-654474082); break;
  case QEvent::StateMachineWrapped: result = Val_long(-782700977); break;
  case QEvent::TouchBegin: result = Val_long(546820618); break;
  case QEvent::TouchUpdate: result = Val_long(-798063864); break;
  case QEvent::TouchEnd: result = Val_long(-642023044); break;
  case QEvent::NativeGesture: result = Val_long(675936658); break;
  case QEvent::RequestSoftwareInputPanel: result = Val_long(-480478032); break;
  case QEvent::CloseSoftwareInputPanel: result = Val_long(-1072411815); break;
  case QEvent::WinIdChange: result = Val_long(-945246265); break;
  case QEvent::Gesture: result = Val_long(-291896727); break;
  case QEvent::GestureOverride: result = Val_long(592048597); break;
  case QEvent::ScrollPrepare: result = Val_long(-233505574); break;
  case QEvent::Scroll: result = Val_long(-67548115); break;
  case QEvent::Expose: result = Val_long(-116259228); break;
  case QEvent::InputMethodQuery: result = Val_long(254143645); break;
  case QEvent::OrientationChange: result = Val_long(-605900736); break;
  case QEvent::TouchCancel: result = Val_long(27060857); break;
  case QEvent::ThemeChange: result = Val_long(-822884295); break;
  case QEvent::SockClose: result = Val_long(-374237516); break;
  case QEvent::PlatformPanel: result = Val_long(-1041047759); break;
  case QEvent::StyleAnimationUpdate: result = Val_long(-113946084); break;
  case QEvent::ApplicationStateChange: result = Val_long(418554129); break;
  case QEvent::WindowChangeInternal: result = Val_long(933248253); break;
  case QEvent::ScreenChangeInternal: result = Val_long(-947354247); break;
  case QEvent::PlatformSurface: result = Val_long(367849370); break;
  case QEvent::Pointer: result = Val_long(510847133); break;
  case QEvent::TabletTrackingChange: result = Val_long(859544429); break;
  case QEvent::User: result = Val_long(948354667); break;
  case QEvent::MaxUser: result = Val_long(456069871); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMimeDatabase::MatchMode mlqt_QMimeDatabase_MatchMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -175643108: return QMimeDatabase::MatchDefault;
  case -1040781926: return QMimeDatabase::MatchExtension;
  case -214197612: return QMimeDatabase::MatchContent;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMimeDatabase::MatchMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QMimeDatabase_MatchMode_to_ocaml(const QMimeDatabase::MatchMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMimeDatabase::MatchDefault: result = Val_long(-175643108); break;
  case QMimeDatabase::MatchExtension: result = Val_long(-1040781926); break;
  case QMimeDatabase::MatchContent: result = Val_long(-214197612); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QJsonDocument::DataValidation mlqt_QJsonDocument_DataValidation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -560624458: return QJsonDocument::Validate;
  case 614703265: return QJsonDocument::BypassValidation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QJsonDocument::DataValidation)Long_val(Field(v, 1));
  }
}

value& mlqt_QJsonDocument_DataValidation_to_ocaml(const QJsonDocument::DataValidation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QJsonDocument::Validate: result = Val_long(-560624458); break;
  case QJsonDocument::BypassValidation: result = Val_long(614703265); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QJsonDocument::JsonFormat mlqt_QJsonDocument_JsonFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 433198059: return QJsonDocument::Indented;
  case -793103485: return QJsonDocument::Compact;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QJsonDocument::JsonFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QJsonDocument_JsonFormat_to_ocaml(const QJsonDocument::JsonFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QJsonDocument::Indented: result = Val_long(433198059); break;
  case QJsonDocument::Compact: result = Val_long(-793103485); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QByteArray::Base64Option mlqt_QByteArray_Base64Option_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -232357470: return QByteArray::Base64Encoding;
  case -68636173: return QByteArray::Base64UrlEncoding;
  case -1064567100: return QByteArray::OmitTrailingEquals;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QByteArray::Base64Option)Long_val(Field(v, 1));
  }
}

value& mlqt_QByteArray_Base64Option_to_ocaml(const QByteArray::Base64Option& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QByteArray::Base64Encoding: result = Val_long(-232357470); break;
  case QByteArray::Base64UrlEncoding: result = Val_long(-68636173); break;
  case QByteArray::OmitTrailingEquals: result = Val_long(-1064567100); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::Language mlqt_QLocale_Language_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -531195068: return QLocale::AnyLanguage;
  case 67: return QLocale::C;
  case 369348767: return QLocale::Abkhazian;
  case -933838802: return QLocale::Oromo;
  case 725915958: return QLocale::Afar;
  case 901031316: return QLocale::Afrikaans;
  case -491114894: return QLocale::Albanian;
  case -973447449: return QLocale::Amharic;
  case -515309428: return QLocale::Arabic;
  case 264388881: return QLocale::Armenian;
  case -785031158: return QLocale::Assamese;
  case -251337445: return QLocale::Aymara;
  case -51473802: return QLocale::Azerbaijani;
  case -45412000: return QLocale::Bashkir;
  case 163955661: return QLocale::Basque;
  case 889639362: return QLocale::Bengali;
  case -21476622: return QLocale::Dzongkha;
  case 497608791: return QLocale::Bihari;
  case 851655605: return QLocale::Bislama;
  case -900274882: return QLocale::Breton;
  case -442230953: return QLocale::Bulgarian;
  case -330219383: return QLocale::Burmese;
  case -297794210: return QLocale::Belarusian;
  case -199311235: return QLocale::Khmer;
  case 900159886: return QLocale::Catalan;
  case 894502029: return QLocale::Chinese;
  case 293146452: return QLocale::Corsican;
  case 87741379: return QLocale::Croatian;
  case -456532013: return QLocale::Czech;
  case -752330835: return QLocale::Danish;
  case -185744120: return QLocale::Dutch;
  case -964456688: return QLocale::English;
  case 71936055: return QLocale::Esperanto;
  case 748868593: return QLocale::Estonian;
  case 349589855: return QLocale::Faroese;
  case 946784847: return QLocale::Fijian;
  case -110054213: return QLocale::Finnish;
  case -473973062: return QLocale::French;
  case 824366798: return QLocale::WesternFrisian;
  case 4833083: return QLocale::Gaelic;
  case 66955210: return QLocale::Galician;
  case 245738224: return QLocale::Georgian;
  case -696479066: return QLocale::German;
  case 756711072: return QLocale::Greek;
  case -660435608: return QLocale::Greenlandic;
  case -172508803: return QLocale::Guarani;
  case -442252311: return QLocale::Gujarati;
  case 894477002: return QLocale::Hausa;
  case 843600863: return QLocale::Hebrew;
  case 982842098: return QLocale::Hindi;
  case 712473311: return QLocale::Hungarian;
  case -21241872: return QLocale::Icelandic;
  case -947375734: return QLocale::Indonesian;
  case -152601666: return QLocale::Interlingua;
  case -152601662: return QLocale::Interlingue;
  case 339606019: return QLocale::Inuktitut;
  case -15051789: return QLocale::Inupiak;
  case -739590955: return QLocale::Irish;
  case -560592480: return QLocale::Italian;
  case 890252049: return QLocale::Japanese;
  case 456414539: return QLocale::Javanese;
  case 377160808: return QLocale::Kannada;
  case 679252830: return QLocale::Kashmiri;
  case 663770298: return QLocale::Kazakh;
  case -407285593: return QLocale::Kinyarwanda;
  case 307564358: return QLocale::Kirghiz;
  case 837140260: return QLocale::Korean;
  case -593327422: return QLocale::Kurdish;
  case 75847536: return QLocale::Rundi;
  case 3801146: return QLocale::Lao;
  case 48900580: return QLocale::Latin;
  case 969390751: return QLocale::Latvian;
  case -297081152: return QLocale::Lingala;
  case -715615675: return QLocale::Lithuanian;
  case -125254007: return QLocale::Macedonian;
  case -1030322007: return QLocale::Malagasy;
  case 373990768: return QLocale::Malay;
  case -565045241: return QLocale::Malayalam;
  case -959240517: return QLocale::Maltese;
  case 374143730: return QLocale::Maori;
  case 783739954: return QLocale::Marathi;
  case -460018551: return QLocale::Marshallese;
  case -39538050: return QLocale::Mongolian;
  case -317233539: return QLocale::NauruLanguage;
  case 564173445: return QLocale::Nepali;
  case -961830840: return QLocale::NorwegianBokmal;
  case 819957191: return QLocale::Occitan;
  case -934134514: return QLocale::Oriya;
  case 582876129: return QLocale::Pashto;
  case -792577472: return QLocale::Persian;
  case 767188465: return QLocale::Polish;
  case -1043557227: return QLocale::Portuguese;
  case -488328857: return QLocale::Punjabi;
  case -649866862: return QLocale::Quechua;
  case 916185266: return QLocale::Romansh;
  case 297869017: return QLocale::Romanian;
  case 487162419: return QLocale::Russian;
  case -773977987: return QLocale::Samoan;
  case 179546664: return QLocale::Sango;
  case -966518971: return QLocale::Sanskrit;
  case -1035600396: return QLocale::Serbian;
  case -900085704: return QLocale::Ossetic;
  case -40762069: return QLocale::SouthernSotho;
  case 469853148: return QLocale::Tswana;
  case 257224909: return QLocale::Shona;
  case -306999187: return QLocale::Sindhi;
  case 302668966: return QLocale::Sinhala;
  case 422873554: return QLocale::Swati;
  case 681453322: return QLocale::Slovak;
  case 737563309: return QLocale::Slovenian;
  case -512781939: return QLocale::Somali;
  case -430851948: return QLocale::Spanish;
  case 85791986: return QLocale::Sundanese;
  case 786035035: return QLocale::Swahili;
  case -103846149: return QLocale::Swedish;
  case -826694927: return QLocale::Sardinian;
  case 504837983: return QLocale::Tajik;
  case 504987171: return QLocale::Tamil;
  case 505333496: return QLocale::Tatar;
  case 86971144: return QLocale::Telugu;
  case 936717180: return QLocale::Thai;
  case -790390071: return QLocale::Tibetan;
  case -351880211: return QLocale::Tigrinya;
  case -931616639: return QLocale::Tongan;
  case 381781528: return QLocale::Tsonga;
  case -679201308: return QLocale::Turkish;
  case -679005508: return QLocale::Turkmen;
  case -581131664: return QLocale::Tahitian;
  case 902618930: return QLocale::Uighur;
  case -41757428: return QLocale::Ukrainian;
  case 948304718: return QLocale::Urdu;
  case -1040315421: return QLocale::Uzbek;
  case 606235551: return QLocale::Vietnamese;
  case -913527432: return QLocale::Volapuk;
  case -621716333: return QLocale::Welsh;
  case -510821557: return QLocale::Wolof;
  case -262808659: return QLocale::Xhosa;
  case -957704754: return QLocale::Yiddish;
  case -890179272: return QLocale::Yoruba;
  case 728416083: return QLocale::Zhuang;
  case 1003903524: return QLocale::Zulu;
  case 1034347280: return QLocale::NorwegianNynorsk;
  case 440392398: return QLocale::Bosnian;
  case -207380971: return QLocale::Divehi;
  case 858745022: return QLocale::Manx;
  case 812567734: return QLocale::Cornish;
  case 726164599: return QLocale::Akan;
  case 763262587: return QLocale::Konkani;
  case 15930: return QLocale::Ga;
  case 814682443: return QLocale::Igbo;
  case -276938890: return QLocale::Kamba;
  case 650475551: return QLocale::Syriac;
  case 737305679: return QLocale::Blin;
  case 792404531: return QLocale::Geez;
  case 837262977: return QLocale::Koro;
  case -418042923: return QLocale::Sidamo;
  case 974130412: return QLocale::Atsam;
  case 593407333: return QLocale::Tigre;
  case 3703701: return QLocale::Jju;
  case -915938046: return QLocale::Friulian;
  case -947110020: return QLocale::Venda;
  case 3457939: return QLocale::Ewe;
  case -359158207: return QLocale::Walamo;
  case 199210416: return QLocale::Hawaiian;
  case 937562580: return QLocale::Tyap;
  case 465820879: return QLocale::Nyanja;
  case 537836826: return QLocale::Filipino;
  case -435634325: return QLocale::SwissGerman;
  case 573809751: return QLocale::SichuanYi;
  case 1018816229: return QLocale::Kpelle;
  case 394358298: return QLocale::LowGerman;
  case -181236866: return QLocale::SouthNdebele;
  case 506744803: return QLocale::NorthernSotho;
  case -441404058: return QLocale::NorthernSami;
  case 998735534: return QLocale::Taroko;
  case 790676869: return QLocale::Gusii;
  case 504790697: return QLocale::Taita;
  case 464837188: return QLocale::Fulah;
  case 954859204: return QLocale::Kikuyu;
  case -941568043: return QLocale::Samburu;
  case 925481317: return QLocale::Sena;
  case -342491194: return QLocale::NorthNdebele;
  case 9259965: return QLocale::Rombo;
  case -60224102: return QLocale::Tachelhit;
  case 398814406: return QLocale::Kabyle;
  case -87809227: return QLocale::Nyankole;
  case 736958678: return QLocale::Bena;
  case -769675596: return QLocale::Vunjo;
  case 82100188: return QLocale::Bambara;
  case 770622555: return QLocale::Embu;
  case 743827438: return QLocale::Cherokee;
  case 303861448: return QLocale::Morisyen;
  case 807749719: return QLocale::Makonde;
  case 48601755: return QLocale::Langi;
  case 568635761: return QLocale::Ganda;
  case -1014505111: return QLocale::Bemba;
  case -807559863: return QLocale::Kabuverdianu;
  case 858944827: return QLocale::Meru;
  case 577978448: return QLocale::Kalenjin;
  case 869834343: return QLocale::Nama;
  case 273043584: return QLocale::Machame;
  case 100947744: return QLocale::Colognian;
  case 374338855: return QLocale::Masai;
  case 925977046: return QLocale::Soga;
  case 270940552: return QLocale::Luyia;
  case 3258147: return QLocale::Asu;
  case 936572013: return QLocale::Teso;
  case 925281077: return QLocale::Saho;
  case 15977860: return QLocale::KoyraChiini;
  case 4104412: return QLocale::Rwa;
  case 3805606: return QLocale::Luo;
  case -655944418: return QLocale::Chiga;
  case 783982088: return QLocale::CentralMoroccoTamazight;
  case 449445385: return QLocale::KoyraboroSenni;
  case 1013930837: return QLocale::Shambala;
  case 737453752: return QLocale::Bodo;
  case 787445408: return QLocale::Avaric;
  case 837610257: return QLocale::Chamorro;
  case -529296306: return QLocale::Chechen;
  case -113094777: return QLocale::Church;
  case 593929872: return QLocale::Chuvash;
  case 748692719: return QLocale::Cree;
  case 1018630354: return QLocale::Haitian;
  case 1020390349: return QLocale::Herero;
  case -512104805: return QLocale::HiriMotu;
  case 531691636: return QLocale::Kanuri;
  case 837261856: return QLocale::Komi;
  case -121634094: return QLocale::Kongo;
  case 87571797: return QLocale::Kwanyama;
  case 279320774: return QLocale::Limburgish;
  case 317499805: return QLocale::LubaKatanga;
  case -184404872: return QLocale::Luxembourgish;
  case -671249211: return QLocale::Navaho;
  case 228239439: return QLocale::Ndonga;
  case -463656226: return QLocale::Ojibwa;
  case 892013262: return QLocale::Pali;
  case -513300380: return QLocale::Walloon;
  case 829419914: return QLocale::Aghem;
  case -1058565228: return QLocale::Basaa;
  case 310691807: return QLocale::Zarma;
  case -186686971: return QLocale::Duala;
  case 840112923: return QLocale::JolaFonyi;
  case -452891652: return QLocale::Ewondo;
  case -1059209921: return QLocale::Bafia;
  case -736219152: return QLocale::MakhuwaMeetto;
  case -500363300: return QLocale::Mundang;
  case -1041733340: return QLocale::Kwasio;
  case 870827156: return QLocale::Nuer;
  case 179397686: return QLocale::Sakha;
  case 179546670: return QLocale::Sangu;
  case 275013585: return QLocale::CongoSwahili;
  case -449445716: return QLocale::Tasawaq;
  case 4298430: return QLocale::Vai;
  case -358264866: return QLocale::Walser;
  case -670578742: return QLocale::Yangben;
  case 820262270: return QLocale::Avestan;
  case 1055219959: return QLocale::Asturian;
  case -942825674: return QLocale::Ngomba;
  case 836565210: return QLocale::Kako;
  case 858945253: return QLocale::Meta;
  case 1023135364: return QLocale::Ngiemboon;
  case 715360481: return QLocale::Aragonese;
  case -876686126: return QLocale::Akkadian;
  case -918735405: return QLocale::AncientEgyptian;
  case -258097464: return QLocale::AncientGreek;
  case -975780258: return QLocale::Aramaic;
  case -314323803: return QLocale::Balinese;
  case -1058859129: return QLocale::Bamun;
  case 40676729: return QLocale::BatakToba;
  case 757614046: return QLocale::Buginese;
  case -837319120: return QLocale::Buhid;
  case -277756382: return QLocale::Carian;
  case -335231997: return QLocale::Chakma;
  case -944342444: return QLocale::ClassicalMandaic;
  case -37496918: return QLocale::Coptic;
  case -252924653: return QLocale::Dogri;
  case -993293227: return QLocale::EasternCham;
  case 66424774: return QLocale::EasternKayah;
  case 20091023: return QLocale::Etruscan;
  case 432867478: return QLocale::Gothic;
  case 509937006: return QLocale::Hanunoo;
  case -896578360: return QLocale::Ingush;
  case 209695437: return QLocale::LargeFloweryMiao;
  case -722771259: return QLocale::Lepcha;
  case 137267459: return QLocale::Limbu;
  case 848054399: return QLocale::Lisu;
  case 17065: return QLocale::Lu;
  case -799293888: return QLocale::Lycian;
  case -788204321: return QLocale::Lydian;
  case -891470089: return QLocale::Mandingo;
  case 813956395: return QLocale::Manipuri;
  case -535987142: return QLocale::Meroitic;
  case -429969064: return QLocale::NorthernThai;
  case 20587246: return QLocale::OldIrish;
  case -532268580: return QLocale::OldNorse;
  case -45475687: return QLocale::OldPersian;
  case 67900477: return QLocale::OldTurkish;
  case -257131105: return QLocale::Pahlavi;
  case -979482687: return QLocale::Parthian;
  case 809774716: return QLocale::Phoenician;
  case -746509751: return QLocale::PrakritLanguage;
  case 924239363: return QLocale::Rejang;
  case -238877499: return QLocale::Sabaean;
  case -149832632: return QLocale::Samaritan;
  case -417461974: return QLocale::Santali;
  case 855900280: return QLocale::Saurashtra;
  case 925979499: return QLocale::Sora;
  case -789182056: return QLocale::Sylheti;
  case -492304609: return QLocale::Tagbanwa;
  case 896788852: return QLocale::TaiDam;
  case 897290590: return QLocale::TaiNua;
  case -353462808: return QLocale::Ugaritic;
  case -490351684: return QLocale::Akoose;
  case 67904806: return QLocale::Lakota;
  case -904216102: return QLocale::StandardMoroccanTamazight;
  case 353706311: return QLocale::Mapuche;
  case 702866445: return QLocale::CentralKurdish;
  case 997170665: return QLocale::LowerSorbian;
  case -905995096: return QLocale::UpperSorbian;
  case 925751157: return QLocale::Kenyang;
  case -134389809: return QLocale::Mohawk;
  case 3902834: return QLocale::Nko;
  case 796656643: return QLocale::Prussian;
  case -188718302: return QLocale::Kiche;
  case -280149730: return QLocale::SouthernSami;
  case 158557676: return QLocale::LuleSami;
  case 1024373885: return QLocale::InariSami;
  case 72756745: return QLocale::SkoltSami;
  case -1072396716: return QLocale::Warlpiri;
  case -929160602: return QLocale::ManichaeanMiddlePersian;
  case 418449143: return QLocale::Mende;
  case 699221879: return QLocale::AncientNorthArabian;
  case -319258980: return QLocale::LinearA;
  case 865437579: return QLocale::HmongNjua;
  case 16167: return QLocale::Ho;
  case 1037021876: return QLocale::Lezghian;
  case -1058561214: return QLocale::Bassa;
  case 859441219: return QLocale::Mono;
  case -247558719: return QLocale::TedimChin;
  case 13679517: return QLocale::Maithili;
  case 726018533: return QLocale::Ahom;
  case -967739883: return QLocale::AmericanSignLanguage;
  case 305009638: return QLocale::ArdhamagadhiPrakrit;
  case -667859459: return QLocale::Bhojpuri;
  case -591082963: return QLocale::HieroglyphicLuwian;
  case 209101705: return QLocale::LiteraryChinese;
  case 525137630: return QLocale::Mazanderani;
  case 3854672: return QLocale::Mru;
  case 641801752: return QLocale::Newari;
  case -518035332: return QLocale::NorthernLuri;
  case 923832732: return QLocale::Palauan;
  case -411072806: return QLocale::Papiamento;
  case 674193034: return QLocale::Saraiki;
  case -640210173: return QLocale::TokelauLanguage;
  case -363267537: return QLocale::TokPisin;
  case 1071558157: return QLocale::TuvaluLanguage;
  case -917923907: return QLocale::UncodedLanguages;
  case -748191884: return QLocale::Cantonese;
  case -923446789: return QLocale::Osage;
  case 953981669: return QLocale::Tangut;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::Language)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_Language_to_ocaml(const QLocale::Language& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::AnyLanguage: result = Val_long(-531195068); break;
  case QLocale::C: result = Val_long(67); break;
  case QLocale::Abkhazian: result = Val_long(369348767); break;
  case QLocale::Oromo: result = Val_long(-933838802); break;
  case QLocale::Afar: result = Val_long(725915958); break;
  case QLocale::Afrikaans: result = Val_long(901031316); break;
  case QLocale::Albanian: result = Val_long(-491114894); break;
  case QLocale::Amharic: result = Val_long(-973447449); break;
  case QLocale::Arabic: result = Val_long(-515309428); break;
  case QLocale::Armenian: result = Val_long(264388881); break;
  case QLocale::Assamese: result = Val_long(-785031158); break;
  case QLocale::Aymara: result = Val_long(-251337445); break;
  case QLocale::Azerbaijani: result = Val_long(-51473802); break;
  case QLocale::Bashkir: result = Val_long(-45412000); break;
  case QLocale::Basque: result = Val_long(163955661); break;
  case QLocale::Bengali: result = Val_long(889639362); break;
  case QLocale::Dzongkha: result = Val_long(-21476622); break;
  case QLocale::Bihari: result = Val_long(497608791); break;
  case QLocale::Bislama: result = Val_long(851655605); break;
  case QLocale::Breton: result = Val_long(-900274882); break;
  case QLocale::Bulgarian: result = Val_long(-442230953); break;
  case QLocale::Burmese: result = Val_long(-330219383); break;
  case QLocale::Belarusian: result = Val_long(-297794210); break;
  case QLocale::Khmer: result = Val_long(-199311235); break;
  case QLocale::Catalan: result = Val_long(900159886); break;
  case QLocale::Chinese: result = Val_long(894502029); break;
  case QLocale::Corsican: result = Val_long(293146452); break;
  case QLocale::Croatian: result = Val_long(87741379); break;
  case QLocale::Czech: result = Val_long(-456532013); break;
  case QLocale::Danish: result = Val_long(-752330835); break;
  case QLocale::Dutch: result = Val_long(-185744120); break;
  case QLocale::English: result = Val_long(-964456688); break;
  case QLocale::Esperanto: result = Val_long(71936055); break;
  case QLocale::Estonian: result = Val_long(748868593); break;
  case QLocale::Faroese: result = Val_long(349589855); break;
  case QLocale::Fijian: result = Val_long(946784847); break;
  case QLocale::Finnish: result = Val_long(-110054213); break;
  case QLocale::French: result = Val_long(-473973062); break;
  case QLocale::WesternFrisian: result = Val_long(824366798); break;
  case QLocale::Gaelic: result = Val_long(4833083); break;
  case QLocale::Galician: result = Val_long(66955210); break;
  case QLocale::Georgian: result = Val_long(245738224); break;
  case QLocale::German: result = Val_long(-696479066); break;
  case QLocale::Greek: result = Val_long(756711072); break;
  case QLocale::Greenlandic: result = Val_long(-660435608); break;
  case QLocale::Guarani: result = Val_long(-172508803); break;
  case QLocale::Gujarati: result = Val_long(-442252311); break;
  case QLocale::Hausa: result = Val_long(894477002); break;
  case QLocale::Hebrew: result = Val_long(843600863); break;
  case QLocale::Hindi: result = Val_long(982842098); break;
  case QLocale::Hungarian: result = Val_long(712473311); break;
  case QLocale::Icelandic: result = Val_long(-21241872); break;
  case QLocale::Indonesian: result = Val_long(-947375734); break;
  case QLocale::Interlingua: result = Val_long(-152601666); break;
  case QLocale::Interlingue: result = Val_long(-152601662); break;
  case QLocale::Inuktitut: result = Val_long(339606019); break;
  case QLocale::Inupiak: result = Val_long(-15051789); break;
  case QLocale::Irish: result = Val_long(-739590955); break;
  case QLocale::Italian: result = Val_long(-560592480); break;
  case QLocale::Japanese: result = Val_long(890252049); break;
  case QLocale::Javanese: result = Val_long(456414539); break;
  case QLocale::Kannada: result = Val_long(377160808); break;
  case QLocale::Kashmiri: result = Val_long(679252830); break;
  case QLocale::Kazakh: result = Val_long(663770298); break;
  case QLocale::Kinyarwanda: result = Val_long(-407285593); break;
  case QLocale::Kirghiz: result = Val_long(307564358); break;
  case QLocale::Korean: result = Val_long(837140260); break;
  case QLocale::Kurdish: result = Val_long(-593327422); break;
  case QLocale::Rundi: result = Val_long(75847536); break;
  case QLocale::Lao: result = Val_long(3801146); break;
  case QLocale::Latin: result = Val_long(48900580); break;
  case QLocale::Latvian: result = Val_long(969390751); break;
  case QLocale::Lingala: result = Val_long(-297081152); break;
  case QLocale::Lithuanian: result = Val_long(-715615675); break;
  case QLocale::Macedonian: result = Val_long(-125254007); break;
  case QLocale::Malagasy: result = Val_long(-1030322007); break;
  case QLocale::Malay: result = Val_long(373990768); break;
  case QLocale::Malayalam: result = Val_long(-565045241); break;
  case QLocale::Maltese: result = Val_long(-959240517); break;
  case QLocale::Maori: result = Val_long(374143730); break;
  case QLocale::Marathi: result = Val_long(783739954); break;
  case QLocale::Marshallese: result = Val_long(-460018551); break;
  case QLocale::Mongolian: result = Val_long(-39538050); break;
  case QLocale::NauruLanguage: result = Val_long(-317233539); break;
  case QLocale::Nepali: result = Val_long(564173445); break;
  case QLocale::NorwegianBokmal: result = Val_long(-961830840); break;
  case QLocale::Occitan: result = Val_long(819957191); break;
  case QLocale::Oriya: result = Val_long(-934134514); break;
  case QLocale::Pashto: result = Val_long(582876129); break;
  case QLocale::Persian: result = Val_long(-792577472); break;
  case QLocale::Polish: result = Val_long(767188465); break;
  case QLocale::Portuguese: result = Val_long(-1043557227); break;
  case QLocale::Punjabi: result = Val_long(-488328857); break;
  case QLocale::Quechua: result = Val_long(-649866862); break;
  case QLocale::Romansh: result = Val_long(916185266); break;
  case QLocale::Romanian: result = Val_long(297869017); break;
  case QLocale::Russian: result = Val_long(487162419); break;
  case QLocale::Samoan: result = Val_long(-773977987); break;
  case QLocale::Sango: result = Val_long(179546664); break;
  case QLocale::Sanskrit: result = Val_long(-966518971); break;
  case QLocale::Serbian: result = Val_long(-1035600396); break;
  case QLocale::Ossetic: result = Val_long(-900085704); break;
  case QLocale::SouthernSotho: result = Val_long(-40762069); break;
  case QLocale::Tswana: result = Val_long(469853148); break;
  case QLocale::Shona: result = Val_long(257224909); break;
  case QLocale::Sindhi: result = Val_long(-306999187); break;
  case QLocale::Sinhala: result = Val_long(302668966); break;
  case QLocale::Swati: result = Val_long(422873554); break;
  case QLocale::Slovak: result = Val_long(681453322); break;
  case QLocale::Slovenian: result = Val_long(737563309); break;
  case QLocale::Somali: result = Val_long(-512781939); break;
  case QLocale::Spanish: result = Val_long(-430851948); break;
  case QLocale::Sundanese: result = Val_long(85791986); break;
  case QLocale::Swahili: result = Val_long(786035035); break;
  case QLocale::Swedish: result = Val_long(-103846149); break;
  case QLocale::Sardinian: result = Val_long(-826694927); break;
  case QLocale::Tajik: result = Val_long(504837983); break;
  case QLocale::Tamil: result = Val_long(504987171); break;
  case QLocale::Tatar: result = Val_long(505333496); break;
  case QLocale::Telugu: result = Val_long(86971144); break;
  case QLocale::Thai: result = Val_long(936717180); break;
  case QLocale::Tibetan: result = Val_long(-790390071); break;
  case QLocale::Tigrinya: result = Val_long(-351880211); break;
  case QLocale::Tongan: result = Val_long(-931616639); break;
  case QLocale::Tsonga: result = Val_long(381781528); break;
  case QLocale::Turkish: result = Val_long(-679201308); break;
  case QLocale::Turkmen: result = Val_long(-679005508); break;
  case QLocale::Tahitian: result = Val_long(-581131664); break;
  case QLocale::Uighur: result = Val_long(902618930); break;
  case QLocale::Ukrainian: result = Val_long(-41757428); break;
  case QLocale::Urdu: result = Val_long(948304718); break;
  case QLocale::Uzbek: result = Val_long(-1040315421); break;
  case QLocale::Vietnamese: result = Val_long(606235551); break;
  case QLocale::Volapuk: result = Val_long(-913527432); break;
  case QLocale::Welsh: result = Val_long(-621716333); break;
  case QLocale::Wolof: result = Val_long(-510821557); break;
  case QLocale::Xhosa: result = Val_long(-262808659); break;
  case QLocale::Yiddish: result = Val_long(-957704754); break;
  case QLocale::Yoruba: result = Val_long(-890179272); break;
  case QLocale::Zhuang: result = Val_long(728416083); break;
  case QLocale::Zulu: result = Val_long(1003903524); break;
  case QLocale::NorwegianNynorsk: result = Val_long(1034347280); break;
  case QLocale::Bosnian: result = Val_long(440392398); break;
  case QLocale::Divehi: result = Val_long(-207380971); break;
  case QLocale::Manx: result = Val_long(858745022); break;
  case QLocale::Cornish: result = Val_long(812567734); break;
  case QLocale::Akan: result = Val_long(726164599); break;
  case QLocale::Konkani: result = Val_long(763262587); break;
  case QLocale::Ga: result = Val_long(15930); break;
  case QLocale::Igbo: result = Val_long(814682443); break;
  case QLocale::Kamba: result = Val_long(-276938890); break;
  case QLocale::Syriac: result = Val_long(650475551); break;
  case QLocale::Blin: result = Val_long(737305679); break;
  case QLocale::Geez: result = Val_long(792404531); break;
  case QLocale::Koro: result = Val_long(837262977); break;
  case QLocale::Sidamo: result = Val_long(-418042923); break;
  case QLocale::Atsam: result = Val_long(974130412); break;
  case QLocale::Tigre: result = Val_long(593407333); break;
  case QLocale::Jju: result = Val_long(3703701); break;
  case QLocale::Friulian: result = Val_long(-915938046); break;
  case QLocale::Venda: result = Val_long(-947110020); break;
  case QLocale::Ewe: result = Val_long(3457939); break;
  case QLocale::Walamo: result = Val_long(-359158207); break;
  case QLocale::Hawaiian: result = Val_long(199210416); break;
  case QLocale::Tyap: result = Val_long(937562580); break;
  case QLocale::Nyanja: result = Val_long(465820879); break;
  case QLocale::Filipino: result = Val_long(537836826); break;
  case QLocale::SwissGerman: result = Val_long(-435634325); break;
  case QLocale::SichuanYi: result = Val_long(573809751); break;
  case QLocale::Kpelle: result = Val_long(1018816229); break;
  case QLocale::LowGerman: result = Val_long(394358298); break;
  case QLocale::SouthNdebele: result = Val_long(-181236866); break;
  case QLocale::NorthernSotho: result = Val_long(506744803); break;
  case QLocale::NorthernSami: result = Val_long(-441404058); break;
  case QLocale::Taroko: result = Val_long(998735534); break;
  case QLocale::Gusii: result = Val_long(790676869); break;
  case QLocale::Taita: result = Val_long(504790697); break;
  case QLocale::Fulah: result = Val_long(464837188); break;
  case QLocale::Kikuyu: result = Val_long(954859204); break;
  case QLocale::Samburu: result = Val_long(-941568043); break;
  case QLocale::Sena: result = Val_long(925481317); break;
  case QLocale::NorthNdebele: result = Val_long(-342491194); break;
  case QLocale::Rombo: result = Val_long(9259965); break;
  case QLocale::Tachelhit: result = Val_long(-60224102); break;
  case QLocale::Kabyle: result = Val_long(398814406); break;
  case QLocale::Nyankole: result = Val_long(-87809227); break;
  case QLocale::Bena: result = Val_long(736958678); break;
  case QLocale::Vunjo: result = Val_long(-769675596); break;
  case QLocale::Bambara: result = Val_long(82100188); break;
  case QLocale::Embu: result = Val_long(770622555); break;
  case QLocale::Cherokee: result = Val_long(743827438); break;
  case QLocale::Morisyen: result = Val_long(303861448); break;
  case QLocale::Makonde: result = Val_long(807749719); break;
  case QLocale::Langi: result = Val_long(48601755); break;
  case QLocale::Ganda: result = Val_long(568635761); break;
  case QLocale::Bemba: result = Val_long(-1014505111); break;
  case QLocale::Kabuverdianu: result = Val_long(-807559863); break;
  case QLocale::Meru: result = Val_long(858944827); break;
  case QLocale::Kalenjin: result = Val_long(577978448); break;
  case QLocale::Nama: result = Val_long(869834343); break;
  case QLocale::Machame: result = Val_long(273043584); break;
  case QLocale::Colognian: result = Val_long(100947744); break;
  case QLocale::Masai: result = Val_long(374338855); break;
  case QLocale::Soga: result = Val_long(925977046); break;
  case QLocale::Luyia: result = Val_long(270940552); break;
  case QLocale::Asu: result = Val_long(3258147); break;
  case QLocale::Teso: result = Val_long(936572013); break;
  case QLocale::Saho: result = Val_long(925281077); break;
  case QLocale::KoyraChiini: result = Val_long(15977860); break;
  case QLocale::Rwa: result = Val_long(4104412); break;
  case QLocale::Luo: result = Val_long(3805606); break;
  case QLocale::Chiga: result = Val_long(-655944418); break;
  case QLocale::CentralMoroccoTamazight: result = Val_long(783982088); break;
  case QLocale::KoyraboroSenni: result = Val_long(449445385); break;
  case QLocale::Shambala: result = Val_long(1013930837); break;
  case QLocale::Bodo: result = Val_long(737453752); break;
  case QLocale::Avaric: result = Val_long(787445408); break;
  case QLocale::Chamorro: result = Val_long(837610257); break;
  case QLocale::Chechen: result = Val_long(-529296306); break;
  case QLocale::Church: result = Val_long(-113094777); break;
  case QLocale::Chuvash: result = Val_long(593929872); break;
  case QLocale::Cree: result = Val_long(748692719); break;
  case QLocale::Haitian: result = Val_long(1018630354); break;
  case QLocale::Herero: result = Val_long(1020390349); break;
  case QLocale::HiriMotu: result = Val_long(-512104805); break;
  case QLocale::Kanuri: result = Val_long(531691636); break;
  case QLocale::Komi: result = Val_long(837261856); break;
  case QLocale::Kongo: result = Val_long(-121634094); break;
  case QLocale::Kwanyama: result = Val_long(87571797); break;
  case QLocale::Limburgish: result = Val_long(279320774); break;
  case QLocale::LubaKatanga: result = Val_long(317499805); break;
  case QLocale::Luxembourgish: result = Val_long(-184404872); break;
  case QLocale::Navaho: result = Val_long(-671249211); break;
  case QLocale::Ndonga: result = Val_long(228239439); break;
  case QLocale::Ojibwa: result = Val_long(-463656226); break;
  case QLocale::Pali: result = Val_long(892013262); break;
  case QLocale::Walloon: result = Val_long(-513300380); break;
  case QLocale::Aghem: result = Val_long(829419914); break;
  case QLocale::Basaa: result = Val_long(-1058565228); break;
  case QLocale::Zarma: result = Val_long(310691807); break;
  case QLocale::Duala: result = Val_long(-186686971); break;
  case QLocale::JolaFonyi: result = Val_long(840112923); break;
  case QLocale::Ewondo: result = Val_long(-452891652); break;
  case QLocale::Bafia: result = Val_long(-1059209921); break;
  case QLocale::MakhuwaMeetto: result = Val_long(-736219152); break;
  case QLocale::Mundang: result = Val_long(-500363300); break;
  case QLocale::Kwasio: result = Val_long(-1041733340); break;
  case QLocale::Nuer: result = Val_long(870827156); break;
  case QLocale::Sakha: result = Val_long(179397686); break;
  case QLocale::Sangu: result = Val_long(179546670); break;
  case QLocale::CongoSwahili: result = Val_long(275013585); break;
  case QLocale::Tasawaq: result = Val_long(-449445716); break;
  case QLocale::Vai: result = Val_long(4298430); break;
  case QLocale::Walser: result = Val_long(-358264866); break;
  case QLocale::Yangben: result = Val_long(-670578742); break;
  case QLocale::Avestan: result = Val_long(820262270); break;
  case QLocale::Asturian: result = Val_long(1055219959); break;
  case QLocale::Ngomba: result = Val_long(-942825674); break;
  case QLocale::Kako: result = Val_long(836565210); break;
  case QLocale::Meta: result = Val_long(858945253); break;
  case QLocale::Ngiemboon: result = Val_long(1023135364); break;
  case QLocale::Aragonese: result = Val_long(715360481); break;
  case QLocale::Akkadian: result = Val_long(-876686126); break;
  case QLocale::AncientEgyptian: result = Val_long(-918735405); break;
  case QLocale::AncientGreek: result = Val_long(-258097464); break;
  case QLocale::Aramaic: result = Val_long(-975780258); break;
  case QLocale::Balinese: result = Val_long(-314323803); break;
  case QLocale::Bamun: result = Val_long(-1058859129); break;
  case QLocale::BatakToba: result = Val_long(40676729); break;
  case QLocale::Buginese: result = Val_long(757614046); break;
  case QLocale::Buhid: result = Val_long(-837319120); break;
  case QLocale::Carian: result = Val_long(-277756382); break;
  case QLocale::Chakma: result = Val_long(-335231997); break;
  case QLocale::ClassicalMandaic: result = Val_long(-944342444); break;
  case QLocale::Coptic: result = Val_long(-37496918); break;
  case QLocale::Dogri: result = Val_long(-252924653); break;
  case QLocale::EasternCham: result = Val_long(-993293227); break;
  case QLocale::EasternKayah: result = Val_long(66424774); break;
  case QLocale::Etruscan: result = Val_long(20091023); break;
  case QLocale::Gothic: result = Val_long(432867478); break;
  case QLocale::Hanunoo: result = Val_long(509937006); break;
  case QLocale::Ingush: result = Val_long(-896578360); break;
  case QLocale::LargeFloweryMiao: result = Val_long(209695437); break;
  case QLocale::Lepcha: result = Val_long(-722771259); break;
  case QLocale::Limbu: result = Val_long(137267459); break;
  case QLocale::Lisu: result = Val_long(848054399); break;
  case QLocale::Lu: result = Val_long(17065); break;
  case QLocale::Lycian: result = Val_long(-799293888); break;
  case QLocale::Lydian: result = Val_long(-788204321); break;
  case QLocale::Mandingo: result = Val_long(-891470089); break;
  case QLocale::Manipuri: result = Val_long(813956395); break;
  case QLocale::Meroitic: result = Val_long(-535987142); break;
  case QLocale::NorthernThai: result = Val_long(-429969064); break;
  case QLocale::OldIrish: result = Val_long(20587246); break;
  case QLocale::OldNorse: result = Val_long(-532268580); break;
  case QLocale::OldPersian: result = Val_long(-45475687); break;
  case QLocale::OldTurkish: result = Val_long(67900477); break;
  case QLocale::Pahlavi: result = Val_long(-257131105); break;
  case QLocale::Parthian: result = Val_long(-979482687); break;
  case QLocale::Phoenician: result = Val_long(809774716); break;
  case QLocale::PrakritLanguage: result = Val_long(-746509751); break;
  case QLocale::Rejang: result = Val_long(924239363); break;
  case QLocale::Sabaean: result = Val_long(-238877499); break;
  case QLocale::Samaritan: result = Val_long(-149832632); break;
  case QLocale::Santali: result = Val_long(-417461974); break;
  case QLocale::Saurashtra: result = Val_long(855900280); break;
  case QLocale::Sora: result = Val_long(925979499); break;
  case QLocale::Sylheti: result = Val_long(-789182056); break;
  case QLocale::Tagbanwa: result = Val_long(-492304609); break;
  case QLocale::TaiDam: result = Val_long(896788852); break;
  case QLocale::TaiNua: result = Val_long(897290590); break;
  case QLocale::Ugaritic: result = Val_long(-353462808); break;
  case QLocale::Akoose: result = Val_long(-490351684); break;
  case QLocale::Lakota: result = Val_long(67904806); break;
  case QLocale::StandardMoroccanTamazight: result = Val_long(-904216102); break;
  case QLocale::Mapuche: result = Val_long(353706311); break;
  case QLocale::CentralKurdish: result = Val_long(702866445); break;
  case QLocale::LowerSorbian: result = Val_long(997170665); break;
  case QLocale::UpperSorbian: result = Val_long(-905995096); break;
  case QLocale::Kenyang: result = Val_long(925751157); break;
  case QLocale::Mohawk: result = Val_long(-134389809); break;
  case QLocale::Nko: result = Val_long(3902834); break;
  case QLocale::Prussian: result = Val_long(796656643); break;
  case QLocale::Kiche: result = Val_long(-188718302); break;
  case QLocale::SouthernSami: result = Val_long(-280149730); break;
  case QLocale::LuleSami: result = Val_long(158557676); break;
  case QLocale::InariSami: result = Val_long(1024373885); break;
  case QLocale::SkoltSami: result = Val_long(72756745); break;
  case QLocale::Warlpiri: result = Val_long(-1072396716); break;
  case QLocale::ManichaeanMiddlePersian: result = Val_long(-929160602); break;
  case QLocale::Mende: result = Val_long(418449143); break;
  case QLocale::AncientNorthArabian: result = Val_long(699221879); break;
  case QLocale::LinearA: result = Val_long(-319258980); break;
  case QLocale::HmongNjua: result = Val_long(865437579); break;
  case QLocale::Ho: result = Val_long(16167); break;
  case QLocale::Lezghian: result = Val_long(1037021876); break;
  case QLocale::Bassa: result = Val_long(-1058561214); break;
  case QLocale::Mono: result = Val_long(859441219); break;
  case QLocale::TedimChin: result = Val_long(-247558719); break;
  case QLocale::Maithili: result = Val_long(13679517); break;
  case QLocale::Ahom: result = Val_long(726018533); break;
  case QLocale::AmericanSignLanguage: result = Val_long(-967739883); break;
  case QLocale::ArdhamagadhiPrakrit: result = Val_long(305009638); break;
  case QLocale::Bhojpuri: result = Val_long(-667859459); break;
  case QLocale::HieroglyphicLuwian: result = Val_long(-591082963); break;
  case QLocale::LiteraryChinese: result = Val_long(209101705); break;
  case QLocale::Mazanderani: result = Val_long(525137630); break;
  case QLocale::Mru: result = Val_long(3854672); break;
  case QLocale::Newari: result = Val_long(641801752); break;
  case QLocale::NorthernLuri: result = Val_long(-518035332); break;
  case QLocale::Palauan: result = Val_long(923832732); break;
  case QLocale::Papiamento: result = Val_long(-411072806); break;
  case QLocale::Saraiki: result = Val_long(674193034); break;
  case QLocale::TokelauLanguage: result = Val_long(-640210173); break;
  case QLocale::TokPisin: result = Val_long(-363267537); break;
  case QLocale::TuvaluLanguage: result = Val_long(1071558157); break;
  case QLocale::UncodedLanguages: result = Val_long(-917923907); break;
  case QLocale::Cantonese: result = Val_long(-748191884); break;
  case QLocale::Osage: result = Val_long(-923446789); break;
  case QLocale::Tangut: result = Val_long(953981669); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::Script mlqt_QLocale_Script_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -963471881: return QLocale::AnyScript;
  case 934982583: return QLocale::ArabicScript;
  case 830885458: return QLocale::CyrillicScript;
  case 218720633: return QLocale::DeseretScript;
  case -659654901: return QLocale::GurmukhiScript;
  case -644271000: return QLocale::SimplifiedHanScript;
  case -764784327: return QLocale::TraditionalHanScript;
  case 58814223: return QLocale::LatinScript;
  case 817588009: return QLocale::MongolianScript;
  case -71059881: return QLocale::TifinaghScript;
  case -11885060: return QLocale::ArmenianScript;
  case -1028501139: return QLocale::BengaliScript;
  case 489050265: return QLocale::CherokeeScript;
  case 1016396347: return QLocale::DevanagariScript;
  case -716618506: return QLocale::EthiopicScript;
  case -782941925: return QLocale::GeorgianScript;
  case 107739339: return QLocale::GreekScript;
  case -262808876: return QLocale::GujaratiScript;
  case -1024473270: return QLocale::HebrewScript;
  case 988024828: return QLocale::JapaneseScript;
  case -1046577560: return QLocale::KhmerScript;
  case -616364909: return QLocale::KannadaScript;
  case 70808655: return QLocale::KoreanScript;
  case -812930587: return QLocale::LaoScript;
  case 167713138: return QLocale::MalayalamScript;
  case 1133744: return QLocale::MyanmarScript;
  case 826228153: return QLocale::OriyaScript;
  case -223347570: return QLocale::TamilScript;
  case -220214477: return QLocale::TeluguScript;
  case 136284690: return QLocale::ThaanaScript;
  case 14791335: return QLocale::ThaiScript;
  case 685906356: return QLocale::TibetanScript;
  case -552132783: return QLocale::SinhalaScript;
  case 490576778: return QLocale::SyriacScript;
  case -322165733: return QLocale::YiScript;
  case 326695785: return QLocale::VaiScript;
  case -654366167: return QLocale::AvestanScript;
  case 628037776: return QLocale::BalineseScript;
  case 989807153: return QLocale::BamumScript;
  case 880625994: return QLocale::BatakScript;
  case 932489666: return QLocale::BopomofoScript;
  case -915593122: return QLocale::BrahmiScript;
  case -809778551: return QLocale::BugineseScript;
  case -42267557: return QLocale::BuhidScript;
  case 1004929696: return QLocale::CanadianAboriginalScript;
  case 903400909: return QLocale::CarianScript;
  case 782559854: return QLocale::ChakmaScript;
  case -498755620: return QLocale::ChamScript;
  case -772491947: return QLocale::CopticScript;
  case -52030175: return QLocale::CypriotScript;
  case 722187192: return QLocale::EgyptianHieroglyphsScript;
  case 225967542: return QLocale::FraserScript;
  case -958863688: return QLocale::GlagoliticScript;
  case -154443967: return QLocale::GothicScript;
  case -634351840: return QLocale::HanScript;
  case -61915820: return QLocale::HangulScript;
  case 1034194457: return QLocale::HanunooScript;
  case -156162482: return QLocale::ImperialAramaicScript;
  case -783336377: return QLocale::InscriptionalPahlaviScript;
  case 245312207: return QLocale::InscriptionalParthianScript;
  case -983522890: return QLocale::JavaneseScript;
  case -771009523: return QLocale::KaithiScript;
  case 865597591: return QLocale::KatakanaScript;
  case -711693262: return QLocale::KayahLiScript;
  case 352927242: return QLocale::KharoshthiScript;
  case 322841559: return QLocale::LannaScript;
  case 177866416: return QLocale::LepchaScript;
  case -739217554: return QLocale::LimbuScript;
  case 67736712: return QLocale::LinearBScript;
  case -703549333: return QLocale::LycianScript;
  case 375072842: return QLocale::LydianScript;
  case 787841254: return QLocale::MandaeanScript;
  case 152495471: return QLocale::MeiteiMayekScript;
  case 891561445: return QLocale::MeroiticScript;
  case -1006060010: return QLocale::MeroiticCursiveScript;
  case 828829981: return QLocale::NkoScript;
  case 214867787: return QLocale::NewTaiLueScript;
  case 828476487: return QLocale::OghamScript;
  case 318503472: return QLocale::OlChikiScript;
  case -556298174: return QLocale::OldItalicScript;
  case -365636732: return QLocale::OldPersianScript;
  case -667166199: return QLocale::OldSouthArabianScript;
  case -446783958: return QLocale::OrkhonScript;
  case 880402377: return QLocale::OsmanyaScript;
  case 334837169: return QLocale::PhagsPaScript;
  case 922023335: return QLocale::PhoenicianScript;
  case -634975937: return QLocale::PollardPhoneticScript;
  case 1042574446: return QLocale::RejangScript;
  case -747323472: return QLocale::RunicScript;
  case 184870003: return QLocale::SamaritanScript;
  case -938971997: return QLocale::SaurashtraScript;
  case -882811613: return QLocale::SharadaScript;
  case -719964649: return QLocale::ShavianScript;
  case 291306303: return QLocale::SoraSompengScript;
  case -118521041: return QLocale::CuneiformScript;
  case 828577949: return QLocale::SundaneseScript;
  case -223180776: return QLocale::SylotiNagriScript;
  case 70622184: return QLocale::TagalogScript;
  case -336237942: return QLocale::TagbanwaScript;
  case 152906688: return QLocale::TaiLeScript;
  case 713663337: return QLocale::TaiVietScript;
  case -757937824: return QLocale::TakriScript;
  case -84625901: return QLocale::UgariticScript;
  case -121763848: return QLocale::BrailleScript;
  case 350957512: return QLocale::HiraganaScript;
  case 562226165: return QLocale::CaucasianAlbanianScript;
  case -777885402: return QLocale::BassaVahScript;
  case -750233553: return QLocale::DuployanScript;
  case 62766981: return QLocale::ElbasanScript;
  case 593524576: return QLocale::GranthaScript;
  case 826925267: return QLocale::PahawhHmongScript;
  case -938979743: return QLocale::KhojkiScript;
  case -629924409: return QLocale::LinearAScript;
  case 811252234: return QLocale::MahajaniScript;
  case 40176080: return QLocale::ManichaeanScript;
  case -1024645057: return QLocale::MendeKikakuiScript;
  case 789160178: return QLocale::ModiScript;
  case -287922443: return QLocale::MroScript;
  case 649573457: return QLocale::OldNorthArabianScript;
  case -971419234: return QLocale::NabataeanScript;
  case -114866052: return QLocale::PalmyreneScript;
  case -522068541: return QLocale::PauCinHauScript;
  case 904832412: return QLocale::OldPermicScript;
  case 969355351: return QLocale::PsalterPahlaviScript;
  case 397252617: return QLocale::SiddhamScript;
  case -768210097: return QLocale::KhudawadiScript;
  case -322892062: return QLocale::TirhutaScript;
  case -385009636: return QLocale::VarangKshitiScript;
  case 41084368: return QLocale::AhomScript;
  case -242919014: return QLocale::AnatolianHieroglyphsScript;
  case -374893905: return QLocale::HatranScript;
  case 308196343: return QLocale::MultaniScript;
  case 133795235: return QLocale::OldHungarianScript;
  case 133134442: return QLocale::SignWritingScript;
  case 807267104: return QLocale::AdlamScript;
  case -36411512: return QLocale::BhaiksukiScript;
  case -1049764105: return QLocale::MarchenScript;
  case 603504908: return QLocale::NewaScript;
  case -87539098: return QLocale::OsageScript;
  case -571205936: return QLocale::TangutScript;
  case -443716899: return QLocale::HanWithBopomofoScript;
  case -516077852: return QLocale::JamoScript;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::Script)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_Script_to_ocaml(const QLocale::Script& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::AnyScript: result = Val_long(-963471881); break;
  case QLocale::ArabicScript: result = Val_long(934982583); break;
  case QLocale::CyrillicScript: result = Val_long(830885458); break;
  case QLocale::DeseretScript: result = Val_long(218720633); break;
  case QLocale::GurmukhiScript: result = Val_long(-659654901); break;
  case QLocale::SimplifiedHanScript: result = Val_long(-644271000); break;
  case QLocale::TraditionalHanScript: result = Val_long(-764784327); break;
  case QLocale::LatinScript: result = Val_long(58814223); break;
  case QLocale::MongolianScript: result = Val_long(817588009); break;
  case QLocale::TifinaghScript: result = Val_long(-71059881); break;
  case QLocale::ArmenianScript: result = Val_long(-11885060); break;
  case QLocale::BengaliScript: result = Val_long(-1028501139); break;
  case QLocale::CherokeeScript: result = Val_long(489050265); break;
  case QLocale::DevanagariScript: result = Val_long(1016396347); break;
  case QLocale::EthiopicScript: result = Val_long(-716618506); break;
  case QLocale::GeorgianScript: result = Val_long(-782941925); break;
  case QLocale::GreekScript: result = Val_long(107739339); break;
  case QLocale::GujaratiScript: result = Val_long(-262808876); break;
  case QLocale::HebrewScript: result = Val_long(-1024473270); break;
  case QLocale::JapaneseScript: result = Val_long(988024828); break;
  case QLocale::KhmerScript: result = Val_long(-1046577560); break;
  case QLocale::KannadaScript: result = Val_long(-616364909); break;
  case QLocale::KoreanScript: result = Val_long(70808655); break;
  case QLocale::LaoScript: result = Val_long(-812930587); break;
  case QLocale::MalayalamScript: result = Val_long(167713138); break;
  case QLocale::MyanmarScript: result = Val_long(1133744); break;
  case QLocale::OriyaScript: result = Val_long(826228153); break;
  case QLocale::TamilScript: result = Val_long(-223347570); break;
  case QLocale::TeluguScript: result = Val_long(-220214477); break;
  case QLocale::ThaanaScript: result = Val_long(136284690); break;
  case QLocale::ThaiScript: result = Val_long(14791335); break;
  case QLocale::TibetanScript: result = Val_long(685906356); break;
  case QLocale::SinhalaScript: result = Val_long(-552132783); break;
  case QLocale::SyriacScript: result = Val_long(490576778); break;
  case QLocale::YiScript: result = Val_long(-322165733); break;
  case QLocale::VaiScript: result = Val_long(326695785); break;
  case QLocale::AvestanScript: result = Val_long(-654366167); break;
  case QLocale::BalineseScript: result = Val_long(628037776); break;
  case QLocale::BamumScript: result = Val_long(989807153); break;
  case QLocale::BatakScript: result = Val_long(880625994); break;
  case QLocale::BopomofoScript: result = Val_long(932489666); break;
  case QLocale::BrahmiScript: result = Val_long(-915593122); break;
  case QLocale::BugineseScript: result = Val_long(-809778551); break;
  case QLocale::BuhidScript: result = Val_long(-42267557); break;
  case QLocale::CanadianAboriginalScript: result = Val_long(1004929696); break;
  case QLocale::CarianScript: result = Val_long(903400909); break;
  case QLocale::ChakmaScript: result = Val_long(782559854); break;
  case QLocale::ChamScript: result = Val_long(-498755620); break;
  case QLocale::CopticScript: result = Val_long(-772491947); break;
  case QLocale::CypriotScript: result = Val_long(-52030175); break;
  case QLocale::EgyptianHieroglyphsScript: result = Val_long(722187192); break;
  case QLocale::FraserScript: result = Val_long(225967542); break;
  case QLocale::GlagoliticScript: result = Val_long(-958863688); break;
  case QLocale::GothicScript: result = Val_long(-154443967); break;
  case QLocale::HanScript: result = Val_long(-634351840); break;
  case QLocale::HangulScript: result = Val_long(-61915820); break;
  case QLocale::HanunooScript: result = Val_long(1034194457); break;
  case QLocale::ImperialAramaicScript: result = Val_long(-156162482); break;
  case QLocale::InscriptionalPahlaviScript: result = Val_long(-783336377); break;
  case QLocale::InscriptionalParthianScript: result = Val_long(245312207); break;
  case QLocale::JavaneseScript: result = Val_long(-983522890); break;
  case QLocale::KaithiScript: result = Val_long(-771009523); break;
  case QLocale::KatakanaScript: result = Val_long(865597591); break;
  case QLocale::KayahLiScript: result = Val_long(-711693262); break;
  case QLocale::KharoshthiScript: result = Val_long(352927242); break;
  case QLocale::LannaScript: result = Val_long(322841559); break;
  case QLocale::LepchaScript: result = Val_long(177866416); break;
  case QLocale::LimbuScript: result = Val_long(-739217554); break;
  case QLocale::LinearBScript: result = Val_long(67736712); break;
  case QLocale::LycianScript: result = Val_long(-703549333); break;
  case QLocale::LydianScript: result = Val_long(375072842); break;
  case QLocale::MandaeanScript: result = Val_long(787841254); break;
  case QLocale::MeiteiMayekScript: result = Val_long(152495471); break;
  case QLocale::MeroiticScript: result = Val_long(891561445); break;
  case QLocale::MeroiticCursiveScript: result = Val_long(-1006060010); break;
  case QLocale::NkoScript: result = Val_long(828829981); break;
  case QLocale::NewTaiLueScript: result = Val_long(214867787); break;
  case QLocale::OghamScript: result = Val_long(828476487); break;
  case QLocale::OlChikiScript: result = Val_long(318503472); break;
  case QLocale::OldItalicScript: result = Val_long(-556298174); break;
  case QLocale::OldPersianScript: result = Val_long(-365636732); break;
  case QLocale::OldSouthArabianScript: result = Val_long(-667166199); break;
  case QLocale::OrkhonScript: result = Val_long(-446783958); break;
  case QLocale::OsmanyaScript: result = Val_long(880402377); break;
  case QLocale::PhagsPaScript: result = Val_long(334837169); break;
  case QLocale::PhoenicianScript: result = Val_long(922023335); break;
  case QLocale::PollardPhoneticScript: result = Val_long(-634975937); break;
  case QLocale::RejangScript: result = Val_long(1042574446); break;
  case QLocale::RunicScript: result = Val_long(-747323472); break;
  case QLocale::SamaritanScript: result = Val_long(184870003); break;
  case QLocale::SaurashtraScript: result = Val_long(-938971997); break;
  case QLocale::SharadaScript: result = Val_long(-882811613); break;
  case QLocale::ShavianScript: result = Val_long(-719964649); break;
  case QLocale::SoraSompengScript: result = Val_long(291306303); break;
  case QLocale::CuneiformScript: result = Val_long(-118521041); break;
  case QLocale::SundaneseScript: result = Val_long(828577949); break;
  case QLocale::SylotiNagriScript: result = Val_long(-223180776); break;
  case QLocale::TagalogScript: result = Val_long(70622184); break;
  case QLocale::TagbanwaScript: result = Val_long(-336237942); break;
  case QLocale::TaiLeScript: result = Val_long(152906688); break;
  case QLocale::TaiVietScript: result = Val_long(713663337); break;
  case QLocale::TakriScript: result = Val_long(-757937824); break;
  case QLocale::UgariticScript: result = Val_long(-84625901); break;
  case QLocale::BrailleScript: result = Val_long(-121763848); break;
  case QLocale::HiraganaScript: result = Val_long(350957512); break;
  case QLocale::CaucasianAlbanianScript: result = Val_long(562226165); break;
  case QLocale::BassaVahScript: result = Val_long(-777885402); break;
  case QLocale::DuployanScript: result = Val_long(-750233553); break;
  case QLocale::ElbasanScript: result = Val_long(62766981); break;
  case QLocale::GranthaScript: result = Val_long(593524576); break;
  case QLocale::PahawhHmongScript: result = Val_long(826925267); break;
  case QLocale::KhojkiScript: result = Val_long(-938979743); break;
  case QLocale::LinearAScript: result = Val_long(-629924409); break;
  case QLocale::MahajaniScript: result = Val_long(811252234); break;
  case QLocale::ManichaeanScript: result = Val_long(40176080); break;
  case QLocale::MendeKikakuiScript: result = Val_long(-1024645057); break;
  case QLocale::ModiScript: result = Val_long(789160178); break;
  case QLocale::MroScript: result = Val_long(-287922443); break;
  case QLocale::OldNorthArabianScript: result = Val_long(649573457); break;
  case QLocale::NabataeanScript: result = Val_long(-971419234); break;
  case QLocale::PalmyreneScript: result = Val_long(-114866052); break;
  case QLocale::PauCinHauScript: result = Val_long(-522068541); break;
  case QLocale::OldPermicScript: result = Val_long(904832412); break;
  case QLocale::PsalterPahlaviScript: result = Val_long(969355351); break;
  case QLocale::SiddhamScript: result = Val_long(397252617); break;
  case QLocale::KhudawadiScript: result = Val_long(-768210097); break;
  case QLocale::TirhutaScript: result = Val_long(-322892062); break;
  case QLocale::VarangKshitiScript: result = Val_long(-385009636); break;
  case QLocale::AhomScript: result = Val_long(41084368); break;
  case QLocale::AnatolianHieroglyphsScript: result = Val_long(-242919014); break;
  case QLocale::HatranScript: result = Val_long(-374893905); break;
  case QLocale::MultaniScript: result = Val_long(308196343); break;
  case QLocale::OldHungarianScript: result = Val_long(133795235); break;
  case QLocale::SignWritingScript: result = Val_long(133134442); break;
  case QLocale::AdlamScript: result = Val_long(807267104); break;
  case QLocale::BhaiksukiScript: result = Val_long(-36411512); break;
  case QLocale::MarchenScript: result = Val_long(-1049764105); break;
  case QLocale::NewaScript: result = Val_long(603504908); break;
  case QLocale::OsageScript: result = Val_long(-87539098); break;
  case QLocale::TangutScript: result = Val_long(-571205936); break;
  case QLocale::HanWithBopomofoScript: result = Val_long(-443716899); break;
  case QLocale::JamoScript: result = Val_long(-516077852); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::Country mlqt_QLocale_Country_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -366583574: return QLocale::AnyCountry;
  case -266922236: return QLocale::Afghanistan;
  case -348881284: return QLocale::Albania;
  case -824358783: return QLocale::Algeria;
  case 409472657: return QLocale::AmericanSamoa;
  case -402887223: return QLocale::Andorra;
  case 397399594: return QLocale::Angola;
  case 912638739: return QLocale::Anguilla;
  case 91788990: return QLocale::Antarctica;
  case -684148579: return QLocale::AntiguaAndBarbuda;
  case -939437945: return QLocale::Argentina;
  case 694543549: return QLocale::Armenia;
  case 952050947: return QLocale::Aruba;
  case 654452768: return QLocale::Australia;
  case -624119499: return QLocale::Austria;
  case 1039806099: return QLocale::Azerbaijan;
  case 591638279: return QLocale::Bahamas;
  case 779565949: return QLocale::Bahrain;
  case 441130275: return QLocale::Bangladesh;
  case -1023321194: return QLocale::Barbados;
  case 172969784: return QLocale::Belarus;
  case 239059619: return QLocale::Belgium;
  case -759592501: return QLocale::Belize;
  case -1014453808: return QLocale::Benin;
  case 111645076: return QLocale::Bermuda;
  case 317224434: return QLocale::Bhutan;
  case 254647908: return QLocale::Bolivia;
  case -159021098: return QLocale::BosniaAndHerzegowina;
  case 775739753: return QLocale::Botswana;
  case 143252530: return QLocale::BouvetIsland;
  case -944336116: return QLocale::Brazil;
  case 23071830: return QLocale::BritishIndianOceanTerritory;
  case -723142419: return QLocale::Brunei;
  case -40502985: return QLocale::Bulgaria;
  case 83066535: return QLocale::BurkinaFaso;
  case -241058627: return QLocale::Burundi;
  case 95156032: return QLocale::Cambodia;
  case -1042041166: return QLocale::Cameroon;
  case -322511826: return QLocale::Canada;
  case 1011509105: return QLocale::CapeVerde;
  case 994473023: return QLocale::CaymanIslands;
  case -55203173: return QLocale::CentralAfricanRepublic;
  case 748194536: return QLocale::Chad;
  case -655943299: return QLocale::Chile;
  case -655942857: return QLocale::China;
  case -83663401: return QLocale::ChristmasIsland;
  case -519185341: return QLocale::CocosIslands;
  case -530664900: return QLocale::Colombia;
  case -803344984: return QLocale::Comoros;
  case 1057616788: return QLocale::CongoKinshasa;
  case -830416328: return QLocale::CongoBrazzaville;
  case 1067698678: return QLocale::CookIslands;
  case 570028425: return QLocale::CostaRica;
  case 547432269: return QLocale::IvoryCoast;
  case 549301835: return QLocale::Croatia;
  case 748841233: return QLocale::Cuba;
  case 1069820598: return QLocale::Cyprus;
  case 508449679: return QLocale::CzechRepublic;
  case 204016698: return QLocale::Denmark;
  case 465507482: return QLocale::Djibouti;
  case 204703456: return QLocale::Dominica;
  case -702307254: return QLocale::DominicanRepublic;
  case 974911262: return QLocale::EastTimor;
  case -387346819: return QLocale::Ecuador;
  case -15256709: return QLocale::Egypt;
  case -14353659: return QLocale::ElSalvador;
  case -374477372: return QLocale::EquatorialGuinea;
  case 202286742: return QLocale::Eritrea;
  case -998158883: return QLocale::Estonia;
  case 372705417: return QLocale::Ethiopia;
  case -460330247: return QLocale::FalklandIslands;
  case 1035800561: return QLocale::FaroeIslands;
  case 781514978: return QLocale::Fiji;
  case -132632298: return QLocale::Finland;
  case -518331333: return QLocale::France;
  case 756257716: return QLocale::Guernsey;
  case -391879277: return QLocale::FrenchGuiana;
  case -449928370: return QLocale::FrenchPolynesia;
  case -159218934: return QLocale::FrenchSouthernTerritories;
  case 568041479: return QLocale::Gabon;
  case 93052327: return QLocale::Gambia;
  case 530750398: return QLocale::Georgia;
  case -696008941: return QLocale::Germany;
  case 645618483: return QLocale::Ghana;
  case 405090440: return QLocale::Gibraltar;
  case -904640819: return QLocale::Greece;
  case -517008882: return QLocale::Greenland;
  case 228266794: return QLocale::Grenada;
  case 42323443: return QLocale::Guadeloupe;
  case 793199290: return QLocale::Guam;
  case 936964941: return QLocale::Guatemala;
  case 116634831: return QLocale::Guinea;
  case 462001418: return QLocale::GuineaBissau;
  case 293423433: return QLocale::Guyana;
  case 893880485: return QLocale::Haiti;
  case 495902417: return QLocale::HeardAndMcDonaldIslands;
  case -83945940: return QLocale::Honduras;
  case 426615325: return QLocale::HongKong;
  case 339568002: return QLocale::Hungary;
  case -535219562: return QLocale::Iceland;
  case -784200105: return QLocale::India;
  case -206477724: return QLocale::Indonesia;
  case 815229238: return QLocale::Iran;
  case 815229241: return QLocale::Iraq;
  case -546071513: return QLocale::Ireland;
  case 851858144: return QLocale::Israel;
  case -717811197: return QLocale::Italy;
  case -789756868: return QLocale::Jamaica;
  case -602279706: return QLocale::Japan;
  case -880172924: return QLocale::Jordan;
  case 1026432392: return QLocale::Kazakhstan;
  case -232525764: return QLocale::Kenya;
  case 451418217: return QLocale::Kiribati;
  case -345096379: return QLocale::NorthKorea;
  case -663098115: return QLocale::SouthKorea;
  case 697846079: return QLocale::Kuwait;
  case 703769458: return QLocale::Kyrgyzstan;
  case 847655673: return QLocale::Laos;
  case 168056559: return QLocale::Latvia;
  case -400484491: return QLocale::Lebanon;
  case 993425446: return QLocale::Lesotho;
  case 70674218: return QLocale::Liberia;
  case 136725549: return QLocale::Libya;
  case -445889703: return QLocale::Liechtenstein;
  case 545699337: return QLocale::Lithuania;
  case 32568454: return QLocale::Luxembourg;
  case 373543203: return QLocale::Macau;
  case -212421051: return QLocale::Macedonia;
  case 841275212: return QLocale::Madagascar;
  case -351921349: return QLocale::Malawi;
  case -829816933: return QLocale::Malaysia;
  case -30632313: return QLocale::Maldives;
  case 858744561: return QLocale::Mali;
  case 373994981: return QLocale::Malta;
  case -936986320: return QLocale::MarshallIslands;
  case 727299923: return QLocale::Martinique;
  case -220097279: return QLocale::Mauritania;
  case -154667125: return QLocale::Mauritius;
  case 1069941467: return QLocale::Mayotte;
  case -1063977643: return QLocale::Mexico;
  case -112841776: return QLocale::Micronesia;
  case -716807392: return QLocale::Moldova;
  case -67856863: return QLocale::Monaco;
  case -818724880: return QLocale::Mongolia;
  case 648916109: return QLocale::Montserrat;
  case -789968016: return QLocale::Morocco;
  case 413643126: return QLocale::Mozambique;
  case 101329093: return QLocale::Myanmar;
  case -58226261: return QLocale::Namibia;
  case 1021091793: return QLocale::NauruCountry;
  case 744037732: return QLocale::Nepal;
  case -546894224: return QLocale::Netherlands;
  case 233467808: return QLocale::CuraSao;
  case -287622972: return QLocale::NewCaledonia;
  case 142900193: return QLocale::NewZealand;
  case -54256693: return QLocale::Nicaragua;
  case 787949337: return QLocale::Niger;
  case 945961777: return QLocale::Nigeria;
  case 870233963: return QLocale::Niue;
  case -342184658: return QLocale::NorfolkIsland;
  case 658648145: return QLocale::NorthernMarianaIslands;
  case -452625186: return QLocale::Norway;
  case 881517995: return QLocale::Oman;
  case 721686845: return QLocale::Pakistan;
  case -797023505: return QLocale::Palau;
  case -440748718: return QLocale::PalestinianTerritories;
  case 527078616: return QLocale::Panama;
  case -73732508: return QLocale::PapuaNewGuinea;
  case -731830618: return QLocale::Paraguay;
  case 892213528: return QLocale::Peru;
  case 586202145: return QLocale::Philippines;
  case 277899884: return QLocale::Pitcairn;
  case 766789514: return QLocale::Poland;
  case 341903326: return QLocale::Portugal;
  case 376708240: return QLocale::PuertoRico;
  case -471135883: return QLocale::Qatar;
  case -623714212: return QLocale::Reunion;
  case 916183029: return QLocale::Romania;
  case -209674789: return QLocale::Russia;
  case 241442831: return QLocale::Rwanda;
  case 1042933542: return QLocale::SaintKittsAndNevis;
  case 184737617: return QLocale::SaintLucia;
  case 917176998: return QLocale::SaintVincentAndTheGrenadines;
  case 179498705: return QLocale::Samoa;
  case -576799444: return QLocale::SanMarino;
  case 407062565: return QLocale::SaoTomeAndPrincipe;
  case -738953002: return QLocale::SaudiArabia;
  case -156906679: return QLocale::Senegal;
  case 861117543: return QLocale::Seychelles;
  case 722816795: return QLocale::SierraLeone;
  case 187421572: return QLocale::Singapore;
  case 700307810: return QLocale::Slovakia;
  case 744815265: return QLocale::Slovenia;
  case 709579153: return QLocale::SolomonIslands;
  case -533738956: return QLocale::Somalia;
  case -468998329: return QLocale::SouthAfrica;
  case 162613761: return QLocale::SouthGeorgiaAndTheSouthSandwichIslands;
  case 345244137: return QLocale::Spain;
  case 239624965: return QLocale::SriLanka;
  case -845562806: return QLocale::SaintHelena;
  case -541949213: return QLocale::SaintPierreAndMiquelon;
  case 400839375: return QLocale::Sudan;
  case -546585660: return QLocale::Suriname;
  case -388218065: return QLocale::SvalbardAndJanMayenIslands;
  case -1062991113: return QLocale::Swaziland;
  case -144916148: return QLocale::Sweden;
  case 960198403: return QLocale::Switzerland;
  case 445895620: return QLocale::Syria;
  case 899325032: return QLocale::Taiwan;
  case -860390152: return QLocale::Tajikistan;
  case 12938654: return QLocale::Tanzania;
  case 782475111: return QLocale::Thailand;
  case 937066627: return QLocale::Togo;
  case 229985803: return QLocale::TokelauCountry;
  case 660290381: return QLocale::Tonga;
  case -887489896: return QLocale::TrinidadAndTobago;
  case 144639087: return QLocale::Tunisia;
  case 1065880206: return QLocale::Turkey;
  case -1012256645: return QLocale::Turkmenistan;
  case -804207964: return QLocale::TurksAndCaicosIslands;
  case 1056209473: return QLocale::TuvaluCountry;
  case 185396508: return QLocale::Uganda;
  case -85202341: return QLocale::Ukraine;
  case -764652089: return QLocale::UnitedArabEmirates;
  case 1003343816: return QLocale::UnitedKingdom;
  case 837415333: return QLocale::UnitedStates;
  case 470565927: return QLocale::UnitedStatesMinorOutlyingIslands;
  case 94340606: return QLocale::Uruguay;
  case 917228020: return QLocale::Uzbekistan;
  case -460870896: return QLocale::Vanuatu;
  case 206621622: return QLocale::VaticanCityState;
  case 986350393: return QLocale::Venezuela;
  case -400036968: return QLocale::Vietnam;
  case -1011625042: return QLocale::BritishVirginIslands;
  case 1005381388: return QLocale::UnitedStatesVirginIslands;
  case -633094184: return QLocale::WallisAndFutunaIslands;
  case 151851656: return QLocale::WesternSahara;
  case 29309866: return QLocale::Yemen;
  case 627907174: return QLocale::CanaryIslands;
  case 508803252: return QLocale::Zambia;
  case -325224173: return QLocale::Zimbabwe;
  case 84218939: return QLocale::ClippertonIsland;
  case 866764752: return QLocale::Montenegro;
  case 582784314: return QLocale::Serbia;
  case 660672004: return QLocale::SaintBarthelemy;
  case 63626588: return QLocale::SaintMartin;
  case 830304185: return QLocale::LatinAmericaAndTheCaribbean;
  case -777493980: return QLocale::AscensionIsland;
  case 762885810: return QLocale::AlandIslands;
  case -422367669: return QLocale::DiegoGarcia;
  case -208467243: return QLocale::CeutaAndMelilla;
  case 99097024: return QLocale::IsleOfMan;
  case 160643280: return QLocale::Jersey;
  case 616413535: return QLocale::TristanDaCunha;
  case -140823102: return QLocale::SouthSudan;
  case 816266492: return QLocale::Bonaire;
  case 627208860: return QLocale::SintMaarten;
  case 848731801: return QLocale::Kosovo;
  case -298703456: return QLocale::EuropeanUnion;
  case 199877839: return QLocale::OutlyingOceania;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::Country)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_Country_to_ocaml(const QLocale::Country& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::AnyCountry: result = Val_long(-366583574); break;
  case QLocale::Afghanistan: result = Val_long(-266922236); break;
  case QLocale::Albania: result = Val_long(-348881284); break;
  case QLocale::Algeria: result = Val_long(-824358783); break;
  case QLocale::AmericanSamoa: result = Val_long(409472657); break;
  case QLocale::Andorra: result = Val_long(-402887223); break;
  case QLocale::Angola: result = Val_long(397399594); break;
  case QLocale::Anguilla: result = Val_long(912638739); break;
  case QLocale::Antarctica: result = Val_long(91788990); break;
  case QLocale::AntiguaAndBarbuda: result = Val_long(-684148579); break;
  case QLocale::Argentina: result = Val_long(-939437945); break;
  case QLocale::Armenia: result = Val_long(694543549); break;
  case QLocale::Aruba: result = Val_long(952050947); break;
  case QLocale::Australia: result = Val_long(654452768); break;
  case QLocale::Austria: result = Val_long(-624119499); break;
  case QLocale::Azerbaijan: result = Val_long(1039806099); break;
  case QLocale::Bahamas: result = Val_long(591638279); break;
  case QLocale::Bahrain: result = Val_long(779565949); break;
  case QLocale::Bangladesh: result = Val_long(441130275); break;
  case QLocale::Barbados: result = Val_long(-1023321194); break;
  case QLocale::Belarus: result = Val_long(172969784); break;
  case QLocale::Belgium: result = Val_long(239059619); break;
  case QLocale::Belize: result = Val_long(-759592501); break;
  case QLocale::Benin: result = Val_long(-1014453808); break;
  case QLocale::Bermuda: result = Val_long(111645076); break;
  case QLocale::Bhutan: result = Val_long(317224434); break;
  case QLocale::Bolivia: result = Val_long(254647908); break;
  case QLocale::BosniaAndHerzegowina: result = Val_long(-159021098); break;
  case QLocale::Botswana: result = Val_long(775739753); break;
  case QLocale::BouvetIsland: result = Val_long(143252530); break;
  case QLocale::Brazil: result = Val_long(-944336116); break;
  case QLocale::BritishIndianOceanTerritory: result = Val_long(23071830); break;
  case QLocale::Brunei: result = Val_long(-723142419); break;
  case QLocale::Bulgaria: result = Val_long(-40502985); break;
  case QLocale::BurkinaFaso: result = Val_long(83066535); break;
  case QLocale::Burundi: result = Val_long(-241058627); break;
  case QLocale::Cambodia: result = Val_long(95156032); break;
  case QLocale::Cameroon: result = Val_long(-1042041166); break;
  case QLocale::Canada: result = Val_long(-322511826); break;
  case QLocale::CapeVerde: result = Val_long(1011509105); break;
  case QLocale::CaymanIslands: result = Val_long(994473023); break;
  case QLocale::CentralAfricanRepublic: result = Val_long(-55203173); break;
  case QLocale::Chad: result = Val_long(748194536); break;
  case QLocale::Chile: result = Val_long(-655943299); break;
  case QLocale::China: result = Val_long(-655942857); break;
  case QLocale::ChristmasIsland: result = Val_long(-83663401); break;
  case QLocale::CocosIslands: result = Val_long(-519185341); break;
  case QLocale::Colombia: result = Val_long(-530664900); break;
  case QLocale::Comoros: result = Val_long(-803344984); break;
  case QLocale::CongoKinshasa: result = Val_long(1057616788); break;
  case QLocale::CongoBrazzaville: result = Val_long(-830416328); break;
  case QLocale::CookIslands: result = Val_long(1067698678); break;
  case QLocale::CostaRica: result = Val_long(570028425); break;
  case QLocale::IvoryCoast: result = Val_long(547432269); break;
  case QLocale::Croatia: result = Val_long(549301835); break;
  case QLocale::Cuba: result = Val_long(748841233); break;
  case QLocale::Cyprus: result = Val_long(1069820598); break;
  case QLocale::CzechRepublic: result = Val_long(508449679); break;
  case QLocale::Denmark: result = Val_long(204016698); break;
  case QLocale::Djibouti: result = Val_long(465507482); break;
  case QLocale::Dominica: result = Val_long(204703456); break;
  case QLocale::DominicanRepublic: result = Val_long(-702307254); break;
  case QLocale::EastTimor: result = Val_long(974911262); break;
  case QLocale::Ecuador: result = Val_long(-387346819); break;
  case QLocale::Egypt: result = Val_long(-15256709); break;
  case QLocale::ElSalvador: result = Val_long(-14353659); break;
  case QLocale::EquatorialGuinea: result = Val_long(-374477372); break;
  case QLocale::Eritrea: result = Val_long(202286742); break;
  case QLocale::Estonia: result = Val_long(-998158883); break;
  case QLocale::Ethiopia: result = Val_long(372705417); break;
  case QLocale::FalklandIslands: result = Val_long(-460330247); break;
  case QLocale::FaroeIslands: result = Val_long(1035800561); break;
  case QLocale::Fiji: result = Val_long(781514978); break;
  case QLocale::Finland: result = Val_long(-132632298); break;
  case QLocale::France: result = Val_long(-518331333); break;
  case QLocale::Guernsey: result = Val_long(756257716); break;
  case QLocale::FrenchGuiana: result = Val_long(-391879277); break;
  case QLocale::FrenchPolynesia: result = Val_long(-449928370); break;
  case QLocale::FrenchSouthernTerritories: result = Val_long(-159218934); break;
  case QLocale::Gabon: result = Val_long(568041479); break;
  case QLocale::Gambia: result = Val_long(93052327); break;
  case QLocale::Georgia: result = Val_long(530750398); break;
  case QLocale::Germany: result = Val_long(-696008941); break;
  case QLocale::Ghana: result = Val_long(645618483); break;
  case QLocale::Gibraltar: result = Val_long(405090440); break;
  case QLocale::Greece: result = Val_long(-904640819); break;
  case QLocale::Greenland: result = Val_long(-517008882); break;
  case QLocale::Grenada: result = Val_long(228266794); break;
  case QLocale::Guadeloupe: result = Val_long(42323443); break;
  case QLocale::Guam: result = Val_long(793199290); break;
  case QLocale::Guatemala: result = Val_long(936964941); break;
  case QLocale::Guinea: result = Val_long(116634831); break;
  case QLocale::GuineaBissau: result = Val_long(462001418); break;
  case QLocale::Guyana: result = Val_long(293423433); break;
  case QLocale::Haiti: result = Val_long(893880485); break;
  case QLocale::HeardAndMcDonaldIslands: result = Val_long(495902417); break;
  case QLocale::Honduras: result = Val_long(-83945940); break;
  case QLocale::HongKong: result = Val_long(426615325); break;
  case QLocale::Hungary: result = Val_long(339568002); break;
  case QLocale::Iceland: result = Val_long(-535219562); break;
  case QLocale::India: result = Val_long(-784200105); break;
  case QLocale::Indonesia: result = Val_long(-206477724); break;
  case QLocale::Iran: result = Val_long(815229238); break;
  case QLocale::Iraq: result = Val_long(815229241); break;
  case QLocale::Ireland: result = Val_long(-546071513); break;
  case QLocale::Israel: result = Val_long(851858144); break;
  case QLocale::Italy: result = Val_long(-717811197); break;
  case QLocale::Jamaica: result = Val_long(-789756868); break;
  case QLocale::Japan: result = Val_long(-602279706); break;
  case QLocale::Jordan: result = Val_long(-880172924); break;
  case QLocale::Kazakhstan: result = Val_long(1026432392); break;
  case QLocale::Kenya: result = Val_long(-232525764); break;
  case QLocale::Kiribati: result = Val_long(451418217); break;
  case QLocale::NorthKorea: result = Val_long(-345096379); break;
  case QLocale::SouthKorea: result = Val_long(-663098115); break;
  case QLocale::Kuwait: result = Val_long(697846079); break;
  case QLocale::Kyrgyzstan: result = Val_long(703769458); break;
  case QLocale::Laos: result = Val_long(847655673); break;
  case QLocale::Latvia: result = Val_long(168056559); break;
  case QLocale::Lebanon: result = Val_long(-400484491); break;
  case QLocale::Lesotho: result = Val_long(993425446); break;
  case QLocale::Liberia: result = Val_long(70674218); break;
  case QLocale::Libya: result = Val_long(136725549); break;
  case QLocale::Liechtenstein: result = Val_long(-445889703); break;
  case QLocale::Lithuania: result = Val_long(545699337); break;
  case QLocale::Luxembourg: result = Val_long(32568454); break;
  case QLocale::Macau: result = Val_long(373543203); break;
  case QLocale::Macedonia: result = Val_long(-212421051); break;
  case QLocale::Madagascar: result = Val_long(841275212); break;
  case QLocale::Malawi: result = Val_long(-351921349); break;
  case QLocale::Malaysia: result = Val_long(-829816933); break;
  case QLocale::Maldives: result = Val_long(-30632313); break;
  case QLocale::Mali: result = Val_long(858744561); break;
  case QLocale::Malta: result = Val_long(373994981); break;
  case QLocale::MarshallIslands: result = Val_long(-936986320); break;
  case QLocale::Martinique: result = Val_long(727299923); break;
  case QLocale::Mauritania: result = Val_long(-220097279); break;
  case QLocale::Mauritius: result = Val_long(-154667125); break;
  case QLocale::Mayotte: result = Val_long(1069941467); break;
  case QLocale::Mexico: result = Val_long(-1063977643); break;
  case QLocale::Micronesia: result = Val_long(-112841776); break;
  case QLocale::Moldova: result = Val_long(-716807392); break;
  case QLocale::Monaco: result = Val_long(-67856863); break;
  case QLocale::Mongolia: result = Val_long(-818724880); break;
  case QLocale::Montserrat: result = Val_long(648916109); break;
  case QLocale::Morocco: result = Val_long(-789968016); break;
  case QLocale::Mozambique: result = Val_long(413643126); break;
  case QLocale::Myanmar: result = Val_long(101329093); break;
  case QLocale::Namibia: result = Val_long(-58226261); break;
  case QLocale::NauruCountry: result = Val_long(1021091793); break;
  case QLocale::Nepal: result = Val_long(744037732); break;
  case QLocale::Netherlands: result = Val_long(-546894224); break;
  case QLocale::CuraSao: result = Val_long(233467808); break;
  case QLocale::NewCaledonia: result = Val_long(-287622972); break;
  case QLocale::NewZealand: result = Val_long(142900193); break;
  case QLocale::Nicaragua: result = Val_long(-54256693); break;
  case QLocale::Niger: result = Val_long(787949337); break;
  case QLocale::Nigeria: result = Val_long(945961777); break;
  case QLocale::Niue: result = Val_long(870233963); break;
  case QLocale::NorfolkIsland: result = Val_long(-342184658); break;
  case QLocale::NorthernMarianaIslands: result = Val_long(658648145); break;
  case QLocale::Norway: result = Val_long(-452625186); break;
  case QLocale::Oman: result = Val_long(881517995); break;
  case QLocale::Pakistan: result = Val_long(721686845); break;
  case QLocale::Palau: result = Val_long(-797023505); break;
  case QLocale::PalestinianTerritories: result = Val_long(-440748718); break;
  case QLocale::Panama: result = Val_long(527078616); break;
  case QLocale::PapuaNewGuinea: result = Val_long(-73732508); break;
  case QLocale::Paraguay: result = Val_long(-731830618); break;
  case QLocale::Peru: result = Val_long(892213528); break;
  case QLocale::Philippines: result = Val_long(586202145); break;
  case QLocale::Pitcairn: result = Val_long(277899884); break;
  case QLocale::Poland: result = Val_long(766789514); break;
  case QLocale::Portugal: result = Val_long(341903326); break;
  case QLocale::PuertoRico: result = Val_long(376708240); break;
  case QLocale::Qatar: result = Val_long(-471135883); break;
  case QLocale::Reunion: result = Val_long(-623714212); break;
  case QLocale::Romania: result = Val_long(916183029); break;
  case QLocale::Russia: result = Val_long(-209674789); break;
  case QLocale::Rwanda: result = Val_long(241442831); break;
  case QLocale::SaintKittsAndNevis: result = Val_long(1042933542); break;
  case QLocale::SaintLucia: result = Val_long(184737617); break;
  case QLocale::SaintVincentAndTheGrenadines: result = Val_long(917176998); break;
  case QLocale::Samoa: result = Val_long(179498705); break;
  case QLocale::SanMarino: result = Val_long(-576799444); break;
  case QLocale::SaoTomeAndPrincipe: result = Val_long(407062565); break;
  case QLocale::SaudiArabia: result = Val_long(-738953002); break;
  case QLocale::Senegal: result = Val_long(-156906679); break;
  case QLocale::Seychelles: result = Val_long(861117543); break;
  case QLocale::SierraLeone: result = Val_long(722816795); break;
  case QLocale::Singapore: result = Val_long(187421572); break;
  case QLocale::Slovakia: result = Val_long(700307810); break;
  case QLocale::Slovenia: result = Val_long(744815265); break;
  case QLocale::SolomonIslands: result = Val_long(709579153); break;
  case QLocale::Somalia: result = Val_long(-533738956); break;
  case QLocale::SouthAfrica: result = Val_long(-468998329); break;
  case QLocale::SouthGeorgiaAndTheSouthSandwichIslands: result = Val_long(162613761); break;
  case QLocale::Spain: result = Val_long(345244137); break;
  case QLocale::SriLanka: result = Val_long(239624965); break;
  case QLocale::SaintHelena: result = Val_long(-845562806); break;
  case QLocale::SaintPierreAndMiquelon: result = Val_long(-541949213); break;
  case QLocale::Sudan: result = Val_long(400839375); break;
  case QLocale::Suriname: result = Val_long(-546585660); break;
  case QLocale::SvalbardAndJanMayenIslands: result = Val_long(-388218065); break;
  case QLocale::Swaziland: result = Val_long(-1062991113); break;
  case QLocale::Sweden: result = Val_long(-144916148); break;
  case QLocale::Switzerland: result = Val_long(960198403); break;
  case QLocale::Syria: result = Val_long(445895620); break;
  case QLocale::Taiwan: result = Val_long(899325032); break;
  case QLocale::Tajikistan: result = Val_long(-860390152); break;
  case QLocale::Tanzania: result = Val_long(12938654); break;
  case QLocale::Thailand: result = Val_long(782475111); break;
  case QLocale::Togo: result = Val_long(937066627); break;
  case QLocale::TokelauCountry: result = Val_long(229985803); break;
  case QLocale::Tonga: result = Val_long(660290381); break;
  case QLocale::TrinidadAndTobago: result = Val_long(-887489896); break;
  case QLocale::Tunisia: result = Val_long(144639087); break;
  case QLocale::Turkey: result = Val_long(1065880206); break;
  case QLocale::Turkmenistan: result = Val_long(-1012256645); break;
  case QLocale::TurksAndCaicosIslands: result = Val_long(-804207964); break;
  case QLocale::TuvaluCountry: result = Val_long(1056209473); break;
  case QLocale::Uganda: result = Val_long(185396508); break;
  case QLocale::Ukraine: result = Val_long(-85202341); break;
  case QLocale::UnitedArabEmirates: result = Val_long(-764652089); break;
  case QLocale::UnitedKingdom: result = Val_long(1003343816); break;
  case QLocale::UnitedStates: result = Val_long(837415333); break;
  case QLocale::UnitedStatesMinorOutlyingIslands: result = Val_long(470565927); break;
  case QLocale::Uruguay: result = Val_long(94340606); break;
  case QLocale::Uzbekistan: result = Val_long(917228020); break;
  case QLocale::Vanuatu: result = Val_long(-460870896); break;
  case QLocale::VaticanCityState: result = Val_long(206621622); break;
  case QLocale::Venezuela: result = Val_long(986350393); break;
  case QLocale::Vietnam: result = Val_long(-400036968); break;
  case QLocale::BritishVirginIslands: result = Val_long(-1011625042); break;
  case QLocale::UnitedStatesVirginIslands: result = Val_long(1005381388); break;
  case QLocale::WallisAndFutunaIslands: result = Val_long(-633094184); break;
  case QLocale::WesternSahara: result = Val_long(151851656); break;
  case QLocale::Yemen: result = Val_long(29309866); break;
  case QLocale::CanaryIslands: result = Val_long(627907174); break;
  case QLocale::Zambia: result = Val_long(508803252); break;
  case QLocale::Zimbabwe: result = Val_long(-325224173); break;
  case QLocale::ClippertonIsland: result = Val_long(84218939); break;
  case QLocale::Montenegro: result = Val_long(866764752); break;
  case QLocale::Serbia: result = Val_long(582784314); break;
  case QLocale::SaintBarthelemy: result = Val_long(660672004); break;
  case QLocale::SaintMartin: result = Val_long(63626588); break;
  case QLocale::LatinAmericaAndTheCaribbean: result = Val_long(830304185); break;
  case QLocale::AscensionIsland: result = Val_long(-777493980); break;
  case QLocale::AlandIslands: result = Val_long(762885810); break;
  case QLocale::DiegoGarcia: result = Val_long(-422367669); break;
  case QLocale::CeutaAndMelilla: result = Val_long(-208467243); break;
  case QLocale::IsleOfMan: result = Val_long(99097024); break;
  case QLocale::Jersey: result = Val_long(160643280); break;
  case QLocale::TristanDaCunha: result = Val_long(616413535); break;
  case QLocale::SouthSudan: result = Val_long(-140823102); break;
  case QLocale::Bonaire: result = Val_long(816266492); break;
  case QLocale::SintMaarten: result = Val_long(627208860); break;
  case QLocale::Kosovo: result = Val_long(848731801); break;
  case QLocale::EuropeanUnion: result = Val_long(-298703456); break;
  case QLocale::OutlyingOceania: result = Val_long(199877839); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::MeasurementSystem mlqt_QLocale_MeasurementSystem_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -511171745: return QLocale::MetricSystem;
  case 165262024: return QLocale::ImperialUSSystem;
  case 1026424000: return QLocale::ImperialUKSystem;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::MeasurementSystem)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_MeasurementSystem_to_ocaml(const QLocale::MeasurementSystem& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::MetricSystem: result = Val_long(-511171745); break;
  case QLocale::ImperialUSSystem: result = Val_long(165262024); break;
  case QLocale::ImperialUKSystem: result = Val_long(1026424000); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::FormatType mlqt_QLocale_FormatType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 230355443: return QLocale::LongFormat;
  case -547511117: return QLocale::ShortFormat;
  case -1061101486: return QLocale::NarrowFormat;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::FormatType)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_FormatType_to_ocaml(const QLocale::FormatType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::LongFormat: result = Val_long(230355443); break;
  case QLocale::ShortFormat: result = Val_long(-547511117); break;
  case QLocale::NarrowFormat: result = Val_long(-1061101486); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::NumberOption mlqt_QLocale_NumberOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -467014092: return QLocale::DefaultNumberOptions;
  case 214213551: return QLocale::OmitGroupSeparator;
  case 83166981: return QLocale::RejectGroupSeparator;
  case 480200377: return QLocale::OmitLeadingZeroInExponent;
  case -1014785501: return QLocale::RejectLeadingZeroInExponent;
  case -260823129: return QLocale::IncludeTrailingZeroesAfterDot;
  case -816818082: return QLocale::RejectTrailingZeroesAfterDot;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::NumberOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_NumberOption_to_ocaml(const QLocale::NumberOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::DefaultNumberOptions: result = Val_long(-467014092); break;
  case QLocale::OmitGroupSeparator: result = Val_long(214213551); break;
  case QLocale::RejectGroupSeparator: result = Val_long(83166981); break;
  case QLocale::OmitLeadingZeroInExponent: result = Val_long(480200377); break;
  case QLocale::RejectLeadingZeroInExponent: result = Val_long(-1014785501); break;
  case QLocale::IncludeTrailingZeroesAfterDot: result = Val_long(-260823129); break;
  case QLocale::RejectTrailingZeroesAfterDot: result = Val_long(-816818082); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::FloatingPointPrecisionOption mlqt_QLocale_FloatingPointPrecisionOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -233765644: return QLocale::FloatingPointShortest;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::FloatingPointPrecisionOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_FloatingPointPrecisionOption_to_ocaml(const QLocale::FloatingPointPrecisionOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::FloatingPointShortest: result = Val_long(-233765644); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::CurrencySymbolFormat mlqt_QLocale_CurrencySymbolFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -826435167: return QLocale::CurrencyIsoCode;
  case -380202583: return QLocale::CurrencySymbol;
  case -840029764: return QLocale::CurrencyDisplayName;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::CurrencySymbolFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_CurrencySymbolFormat_to_ocaml(const QLocale::CurrencySymbolFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::CurrencyIsoCode: result = Val_long(-826435167); break;
  case QLocale::CurrencySymbol: result = Val_long(-380202583); break;
  case QLocale::CurrencyDisplayName: result = Val_long(-840029764); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLocale::QuotationStyle mlqt_QLocale_QuotationStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -334690833: return QLocale::StandardQuotation;
  case 996946066: return QLocale::AlternateQuotation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLocale::QuotationStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_QLocale_QuotationStyle_to_ocaml(const QLocale::QuotationStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLocale::StandardQuotation: result = Val_long(-334690833); break;
  case QLocale::AlternateQuotation: result = Val_long(996946066); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QReadWriteLock::RecursionMode mlqt_QReadWriteLock_RecursionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -141691707: return QReadWriteLock::NonRecursive;
  case -288715950: return QReadWriteLock::Recursive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QReadWriteLock::RecursionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QReadWriteLock_RecursionMode_to_ocaml(const QReadWriteLock::RecursionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QReadWriteLock::NonRecursive: result = Val_long(-141691707); break;
  case QReadWriteLock::Recursive: result = Val_long(-288715950); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QXmlStreamReader::TokenType mlqt_QXmlStreamReader_TokenType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 880815832: return QXmlStreamReader::NoToken;
  case 144245463: return QXmlStreamReader::Invalid;
  case -406937219: return QXmlStreamReader::StartDocument;
  case 923015670: return QXmlStreamReader::EndDocument;
  case -1072505190: return QXmlStreamReader::StartElement;
  case 589813825: return QXmlStreamReader::EndElement;
  case -864068406: return QXmlStreamReader::Characters;
  case -826170817: return QXmlStreamReader::Comment;
  case 3400372: return QXmlStreamReader::DTD;
  case 630972424: return QXmlStreamReader::EntityReference;
  case -367780133: return QXmlStreamReader::ProcessingInstruction;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QXmlStreamReader::TokenType)Long_val(Field(v, 1));
  }
}

value& mlqt_QXmlStreamReader_TokenType_to_ocaml(const QXmlStreamReader::TokenType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QXmlStreamReader::NoToken: result = Val_long(880815832); break;
  case QXmlStreamReader::Invalid: result = Val_long(144245463); break;
  case QXmlStreamReader::StartDocument: result = Val_long(-406937219); break;
  case QXmlStreamReader::EndDocument: result = Val_long(923015670); break;
  case QXmlStreamReader::StartElement: result = Val_long(-1072505190); break;
  case QXmlStreamReader::EndElement: result = Val_long(589813825); break;
  case QXmlStreamReader::Characters: result = Val_long(-864068406); break;
  case QXmlStreamReader::Comment: result = Val_long(-826170817); break;
  case QXmlStreamReader::DTD: result = Val_long(3400372); break;
  case QXmlStreamReader::EntityReference: result = Val_long(630972424); break;
  case QXmlStreamReader::ProcessingInstruction: result = Val_long(-367780133); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QXmlStreamReader::ReadElementTextBehaviour mlqt_QXmlStreamReader_ReadElementTextBehaviour_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -247276028: return QXmlStreamReader::ErrorOnUnexpectedElement;
  case -116417333: return QXmlStreamReader::IncludeChildElements;
  case 851717588: return QXmlStreamReader::SkipChildElements;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QXmlStreamReader::ReadElementTextBehaviour)Long_val(Field(v, 1));
  }
}

value& mlqt_QXmlStreamReader_ReadElementTextBehaviour_to_ocaml(const QXmlStreamReader::ReadElementTextBehaviour& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QXmlStreamReader::ErrorOnUnexpectedElement: result = Val_long(-247276028); break;
  case QXmlStreamReader::IncludeChildElements: result = Val_long(-116417333); break;
  case QXmlStreamReader::SkipChildElements: result = Val_long(851717588); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QXmlStreamReader::Error mlqt_QXmlStreamReader_Error_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QXmlStreamReader::NoError;
  case 840085245: return QXmlStreamReader::UnexpectedElementError;
  case -325531081: return QXmlStreamReader::CustomError;
  case 250587908: return QXmlStreamReader::NotWellFormedError;
  case -86225562: return QXmlStreamReader::PrematureEndOfDocumentError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QXmlStreamReader::Error)Long_val(Field(v, 1));
  }
}

value& mlqt_QXmlStreamReader_Error_to_ocaml(const QXmlStreamReader::Error& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QXmlStreamReader::NoError: result = Val_long(327055271); break;
  case QXmlStreamReader::UnexpectedElementError: result = Val_long(840085245); break;
  case QXmlStreamReader::CustomError: result = Val_long(-325531081); break;
  case QXmlStreamReader::NotWellFormedError: result = Val_long(250587908); break;
  case QXmlStreamReader::PrematureEndOfDocumentError: result = Val_long(-86225562); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMetaMethod::Access mlqt_QMetaMethod_Access_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -692038429: return QMetaMethod::Private;
  case 912068366: return QMetaMethod::Protected;
  case 461894857: return QMetaMethod::Public;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMetaMethod::Access)Long_val(Field(v, 1));
  }
}

value& mlqt_QMetaMethod_Access_to_ocaml(const QMetaMethod::Access& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMetaMethod::Private: result = Val_long(-692038429); break;
  case QMetaMethod::Protected: result = Val_long(912068366); break;
  case QMetaMethod::Public: result = Val_long(461894857); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMetaMethod::MethodType mlqt_QMetaMethod_MethodType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1039100673: return QMetaMethod::Method;
  case -384130424: return QMetaMethod::Signal;
  case 925829662: return QMetaMethod::Slot;
  case -67648294: return QMetaMethod::Constructor;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMetaMethod::MethodType)Long_val(Field(v, 1));
  }
}

value& mlqt_QMetaMethod_MethodType_to_ocaml(const QMetaMethod::MethodType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMetaMethod::Method: result = Val_long(1039100673); break;
  case QMetaMethod::Signal: result = Val_long(-384130424); break;
  case QMetaMethod::Slot: result = Val_long(925829662); break;
  case QMetaMethod::Constructor: result = Val_long(-67648294); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOperatingSystemVersion::OSType mlqt_QOperatingSystemVersion_OSType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 785140586: return QOperatingSystemVersion::Unknown;
  case 902170211: return QOperatingSystemVersion::Windows;
  case 373539155: return QOperatingSystemVersion::MacOS;
  case 3647917: return QOperatingSystemVersion::IOS;
  case 937409350: return QOperatingSystemVersion::TvOS;
  case -157027053: return QOperatingSystemVersion::WatchOS;
  case -369769713: return QOperatingSystemVersion::Android;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOperatingSystemVersion::OSType)Long_val(Field(v, 1));
  }
}

value& mlqt_QOperatingSystemVersion_OSType_to_ocaml(const QOperatingSystemVersion::OSType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOperatingSystemVersion::Unknown: result = Val_long(785140586); break;
  case QOperatingSystemVersion::Windows: result = Val_long(902170211); break;
  case QOperatingSystemVersion::MacOS: result = Val_long(373539155); break;
  case QOperatingSystemVersion::IOS: result = Val_long(3647917); break;
  case QOperatingSystemVersion::TvOS: result = Val_long(937409350); break;
  case QOperatingSystemVersion::WatchOS: result = Val_long(-157027053); break;
  case QOperatingSystemVersion::Android: result = Val_long(-369769713); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMetaType::Type mlqt_QMetaType_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -760649916: return QMetaType::UnknownType;
  case 737456202: return QMetaType::Bool;
  case 3654863: return QMetaType::Int;
  case 946268058: return QMetaType::UInt;
  case -18833096: return QMetaType::LongLong;
  case 151551629: return QMetaType::ULongLong;
  case -413163727: return QMetaType::Double;
  case 848351644: return QMetaType::Long;
  case 257225820: return QMetaType::Short;
  case 748194550: return QMetaType::Char;
  case 597696625: return QMetaType::ULong;
  case 195731431: return QMetaType::UShort;
  case 497539531: return QMetaType::UChar;
  case 365180284: return QMetaType::Float;
  case 92326246: return QMetaType::VoidStar;
  case -804419641: return QMetaType::QChar;
  case -300994558: return QMetaType::QString;
  case 918593920: return QMetaType::QStringList;
  case 891752160: return QMetaType::QByteArray;
  case 634655485: return QMetaType::QBitArray;
  case -793673953: return QMetaType::QDate;
  case -615844610: return QMetaType::QTime;
  case -232852788: return QMetaType::QDateTime;
  case 902507422: return QMetaType::QUrl;
  case 916356043: return QMetaType::QLocale;
  case -638224875: return QMetaType::QRect;
  case -590226287: return QMetaType::QRectF;
  case -626931278: return QMetaType::QSize;
  case -219237804: return QMetaType::QSizeF;
  case -704560923: return QMetaType::QLine;
  case -350779455: return QMetaType::QLineF;
  case 1017470527: return QMetaType::QPoint;
  case -737339097: return QMetaType::QPointF;
  case -581927206: return QMetaType::QRegExp;
  case 207612723: return QMetaType::QEasingCurve;
  case -604159188: return QMetaType::QUuid;
  case -1020689356: return QMetaType::QVariant;
  case -756287910: return QMetaType::QModelIndex;
  case -977650991: return QMetaType::QPersistentModelIndex;
  case 591775619: return QMetaType::QRegularExpression;
  case -889738856: return QMetaType::QJsonValue;
  case 323303096: return QMetaType::QJsonObject;
  case 1053726656: return QMetaType::QJsonArray;
  case -269396140: return QMetaType::QJsonDocument;
  case 487868254: return QMetaType::QByteArrayList;
  case 195382754: return QMetaType::QObjectStar;
  case -153440055: return QMetaType::SChar;
  case 959246196: return QMetaType::Void;
  case 1060820680: return QMetaType::QVariantMap;
  case 329119410: return QMetaType::QVariantList;
  case 284363298: return QMetaType::QVariantHash;
  case -770799936: return QMetaType::QFont;
  case -376504626: return QMetaType::QPixmap;
  case 789447273: return QMetaType::QBrush;
  case -1066263726: return QMetaType::QColor;
  case -760555990: return QMetaType::QPalette;
  case -738127766: return QMetaType::QIcon;
  case 863947082: return QMetaType::QImage;
  case -120043991: return QMetaType::QPolygon;
  case -580138971: return QMetaType::QRegion;
  case -840231136: return QMetaType::QBitmap;
  case 466064903: return QMetaType::QCursor;
  case -489299409: return QMetaType::QKeySequence;
  case 902255880: return QMetaType::QPen;
  case 319359268: return QMetaType::QTextLength;
  case -242220171: return QMetaType::QTextFormat;
  case 413613426: return QMetaType::QMatrix;
  case 1056307931: return QMetaType::QTransform;
  case 658445246: return QMetaType::QMatrix4x4;
  case 114411718: return QMetaType::QVector2D;
  case 114411941: return QMetaType::QVector3D;
  case 114412164: return QMetaType::QVector4D;
  case -656736049: return QMetaType::QQuaternion;
  case -1000006147: return QMetaType::QPolygonF;
  case -79336636: return QMetaType::QSizePolicy;
  case 948354667: return QMetaType::User;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMetaType::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QMetaType_Type_to_ocaml(const QMetaType::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMetaType::UnknownType: result = Val_long(-760649916); break;
  case QMetaType::Bool: result = Val_long(737456202); break;
  case QMetaType::Int: result = Val_long(3654863); break;
  case QMetaType::UInt: result = Val_long(946268058); break;
  case QMetaType::LongLong: result = Val_long(-18833096); break;
  case QMetaType::ULongLong: result = Val_long(151551629); break;
  case QMetaType::Double: result = Val_long(-413163727); break;
  case QMetaType::Long: result = Val_long(848351644); break;
  case QMetaType::Short: result = Val_long(257225820); break;
  case QMetaType::Char: result = Val_long(748194550); break;
  case QMetaType::ULong: result = Val_long(597696625); break;
  case QMetaType::UShort: result = Val_long(195731431); break;
  case QMetaType::UChar: result = Val_long(497539531); break;
  case QMetaType::Float: result = Val_long(365180284); break;
  case QMetaType::VoidStar: result = Val_long(92326246); break;
  case QMetaType::QChar: result = Val_long(-804419641); break;
  case QMetaType::QString: result = Val_long(-300994558); break;
  case QMetaType::QStringList: result = Val_long(918593920); break;
  case QMetaType::QByteArray: result = Val_long(891752160); break;
  case QMetaType::QBitArray: result = Val_long(634655485); break;
  case QMetaType::QDate: result = Val_long(-793673953); break;
  case QMetaType::QTime: result = Val_long(-615844610); break;
  case QMetaType::QDateTime: result = Val_long(-232852788); break;
  case QMetaType::QUrl: result = Val_long(902507422); break;
  case QMetaType::QLocale: result = Val_long(916356043); break;
  case QMetaType::QRect: result = Val_long(-638224875); break;
  case QMetaType::QRectF: result = Val_long(-590226287); break;
  case QMetaType::QSize: result = Val_long(-626931278); break;
  case QMetaType::QSizeF: result = Val_long(-219237804); break;
  case QMetaType::QLine: result = Val_long(-704560923); break;
  case QMetaType::QLineF: result = Val_long(-350779455); break;
  case QMetaType::QPoint: result = Val_long(1017470527); break;
  case QMetaType::QPointF: result = Val_long(-737339097); break;
  case QMetaType::QRegExp: result = Val_long(-581927206); break;
  case QMetaType::QEasingCurve: result = Val_long(207612723); break;
  case QMetaType::QUuid: result = Val_long(-604159188); break;
  case QMetaType::QVariant: result = Val_long(-1020689356); break;
  case QMetaType::QModelIndex: result = Val_long(-756287910); break;
  case QMetaType::QPersistentModelIndex: result = Val_long(-977650991); break;
  case QMetaType::QRegularExpression: result = Val_long(591775619); break;
  case QMetaType::QJsonValue: result = Val_long(-889738856); break;
  case QMetaType::QJsonObject: result = Val_long(323303096); break;
  case QMetaType::QJsonArray: result = Val_long(1053726656); break;
  case QMetaType::QJsonDocument: result = Val_long(-269396140); break;
  case QMetaType::QByteArrayList: result = Val_long(487868254); break;
  case QMetaType::QObjectStar: result = Val_long(195382754); break;
  case QMetaType::SChar: result = Val_long(-153440055); break;
  case QMetaType::Void: result = Val_long(959246196); break;
  case QMetaType::QVariantMap: result = Val_long(1060820680); break;
  case QMetaType::QVariantList: result = Val_long(329119410); break;
  case QMetaType::QVariantHash: result = Val_long(284363298); break;
  case QMetaType::QFont: result = Val_long(-770799936); break;
  case QMetaType::QPixmap: result = Val_long(-376504626); break;
  case QMetaType::QBrush: result = Val_long(789447273); break;
  case QMetaType::QColor: result = Val_long(-1066263726); break;
  case QMetaType::QPalette: result = Val_long(-760555990); break;
  case QMetaType::QIcon: result = Val_long(-738127766); break;
  case QMetaType::QImage: result = Val_long(863947082); break;
  case QMetaType::QPolygon: result = Val_long(-120043991); break;
  case QMetaType::QRegion: result = Val_long(-580138971); break;
  case QMetaType::QBitmap: result = Val_long(-840231136); break;
  case QMetaType::QCursor: result = Val_long(466064903); break;
  case QMetaType::QKeySequence: result = Val_long(-489299409); break;
  case QMetaType::QPen: result = Val_long(902255880); break;
  case QMetaType::QTextLength: result = Val_long(319359268); break;
  case QMetaType::QTextFormat: result = Val_long(-242220171); break;
  case QMetaType::QMatrix: result = Val_long(413613426); break;
  case QMetaType::QTransform: result = Val_long(1056307931); break;
  case QMetaType::QMatrix4x4: result = Val_long(658445246); break;
  case QMetaType::QVector2D: result = Val_long(114411718); break;
  case QMetaType::QVector3D: result = Val_long(114411941); break;
  case QMetaType::QVector4D: result = Val_long(114412164); break;
  case QMetaType::QQuaternion: result = Val_long(-656736049); break;
  case QMetaType::QPolygonF: result = Val_long(-1000006147); break;
  case QMetaType::QSizePolicy: result = Val_long(-79336636); break;
  case QMetaType::User: result = Val_long(948354667); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMetaType::TypeFlag mlqt_QMetaType_TypeFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 562895086: return QMetaType::NeedsConstruction;
  case -297814347: return QMetaType::NeedsDestruction;
  case 61932584: return QMetaType::MovableType;
  case -472903304: return QMetaType::PointerToQObject;
  case 791025245: return QMetaType::IsEnumeration;
  case 729054781: return QMetaType::SharedPointerToQObject;
  case -504149488: return QMetaType::WeakPointerToQObject;
  case 181539535: return QMetaType::TrackingPointerToQObject;
  case 540577844: return QMetaType::WasDeclaredAsMetaType;
  case -47997578: return QMetaType::IsGadget;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMetaType::TypeFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QMetaType_TypeFlag_to_ocaml(const QMetaType::TypeFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMetaType::NeedsConstruction: result = Val_long(562895086); break;
  case QMetaType::NeedsDestruction: result = Val_long(-297814347); break;
  case QMetaType::MovableType: result = Val_long(61932584); break;
  case QMetaType::PointerToQObject: result = Val_long(-472903304); break;
  case QMetaType::IsEnumeration: result = Val_long(791025245); break;
  case QMetaType::SharedPointerToQObject: result = Val_long(729054781); break;
  case QMetaType::WeakPointerToQObject: result = Val_long(-504149488); break;
  case QMetaType::TrackingPointerToQObject: result = Val_long(181539535); break;
  case QMetaType::WasDeclaredAsMetaType: result = Val_long(540577844); break;
  case QMetaType::IsGadget: result = Val_long(-47997578); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::SpecialCharacter mlqt_QChar_SpecialCharacter_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870828711: return QChar::Null;
  case -1041424535: return QChar::Tabulation;
  case -627848814: return QChar::LineFeed;
  case 10536132: return QChar::CarriageReturn;
  case 345242790: return QChar::Space;
  case 869885425: return QChar::Nbsp;
  case 808059036: return QChar::SoftHyphen;
  case 39576983: return QChar::ReplacementCharacter;
  case 316875254: return QChar::ObjectReplacementCharacter;
  case -645485709: return QChar::ByteOrderMark;
  case 820510838: return QChar::ByteOrderSwapped;
  case 608560951: return QChar::ParagraphSeparator;
  case 1022286257: return QChar::LineSeparator;
  case 371845213: return QChar::LastValidCodePoint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::SpecialCharacter)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_SpecialCharacter_to_ocaml(const QChar::SpecialCharacter& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::Null: result = Val_long(870828711); break;
  case QChar::Tabulation: result = Val_long(-1041424535); break;
  case QChar::LineFeed: result = Val_long(-627848814); break;
  case QChar::CarriageReturn: result = Val_long(10536132); break;
  case QChar::Space: result = Val_long(345242790); break;
  case QChar::Nbsp: result = Val_long(869885425); break;
  case QChar::SoftHyphen: result = Val_long(808059036); break;
  case QChar::ReplacementCharacter: result = Val_long(39576983); break;
  case QChar::ObjectReplacementCharacter: result = Val_long(316875254); break;
  case QChar::ByteOrderMark: result = Val_long(-645485709); break;
  case QChar::ByteOrderSwapped: result = Val_long(820510838); break;
  case QChar::ParagraphSeparator: result = Val_long(608560951); break;
  case QChar::LineSeparator: result = Val_long(1022286257); break;
  case QChar::LastValidCodePoint: result = Val_long(371845213); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::Category mlqt_QChar_Category_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -256468952: return QChar::Mark_NonSpacing;
  case 493023531: return QChar::Mark_SpacingCombining;
  case -473040966: return QChar::Mark_Enclosing;
  case 919798226: return QChar::Number_DecimalDigit;
  case -1071491364: return QChar::Number_Letter;
  case -384127590: return QChar::Number_Other;
  case -1069120020: return QChar::Separator_Space;
  case 918750606: return QChar::Separator_Line;
  case 517776276: return QChar::Separator_Paragraph;
  case 418181998: return QChar::Other_Control;
  case 527135814: return QChar::Other_Format;
  case 84026409: return QChar::Other_Surrogate;
  case 746427283: return QChar::Other_PrivateUse;
  case 391679250: return QChar::Other_NotAssigned;
  case -207957703: return QChar::Letter_Uppercase;
  case -217977512: return QChar::Letter_Lowercase;
  case 115875951: return QChar::Letter_Titlecase;
  case 537206032: return QChar::Letter_Modifier;
  case -289945737: return QChar::Letter_Other;
  case -1054541080: return QChar::Punctuation_Connector;
  case -251296809: return QChar::Punctuation_Dash;
  case -128568753: return QChar::Punctuation_Open;
  case -408314477: return QChar::Punctuation_Close;
  case 988667805: return QChar::Punctuation_InitialQuote;
  case -506935253: return QChar::Punctuation_FinalQuote;
  case -709038933: return QChar::Punctuation_Other;
  case -33369265: return QChar::Symbol_Math;
  case -333027240: return QChar::Symbol_Currency;
  case -408339362: return QChar::Symbol_Modifier;
  case -137811095: return QChar::Symbol_Other;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::Category)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_Category_to_ocaml(const QChar::Category& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::Mark_NonSpacing: result = Val_long(-256468952); break;
  case QChar::Mark_SpacingCombining: result = Val_long(493023531); break;
  case QChar::Mark_Enclosing: result = Val_long(-473040966); break;
  case QChar::Number_DecimalDigit: result = Val_long(919798226); break;
  case QChar::Number_Letter: result = Val_long(-1071491364); break;
  case QChar::Number_Other: result = Val_long(-384127590); break;
  case QChar::Separator_Space: result = Val_long(-1069120020); break;
  case QChar::Separator_Line: result = Val_long(918750606); break;
  case QChar::Separator_Paragraph: result = Val_long(517776276); break;
  case QChar::Other_Control: result = Val_long(418181998); break;
  case QChar::Other_Format: result = Val_long(527135814); break;
  case QChar::Other_Surrogate: result = Val_long(84026409); break;
  case QChar::Other_PrivateUse: result = Val_long(746427283); break;
  case QChar::Other_NotAssigned: result = Val_long(391679250); break;
  case QChar::Letter_Uppercase: result = Val_long(-207957703); break;
  case QChar::Letter_Lowercase: result = Val_long(-217977512); break;
  case QChar::Letter_Titlecase: result = Val_long(115875951); break;
  case QChar::Letter_Modifier: result = Val_long(537206032); break;
  case QChar::Letter_Other: result = Val_long(-289945737); break;
  case QChar::Punctuation_Connector: result = Val_long(-1054541080); break;
  case QChar::Punctuation_Dash: result = Val_long(-251296809); break;
  case QChar::Punctuation_Open: result = Val_long(-128568753); break;
  case QChar::Punctuation_Close: result = Val_long(-408314477); break;
  case QChar::Punctuation_InitialQuote: result = Val_long(988667805); break;
  case QChar::Punctuation_FinalQuote: result = Val_long(-506935253); break;
  case QChar::Punctuation_Other: result = Val_long(-709038933); break;
  case QChar::Symbol_Math: result = Val_long(-33369265); break;
  case QChar::Symbol_Currency: result = Val_long(-333027240); break;
  case QChar::Symbol_Modifier: result = Val_long(-408339362); break;
  case QChar::Symbol_Other: result = Val_long(-137811095); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::Script mlqt_QChar_Script_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -661124586: return QChar::Script_Unknown;
  case -303082842: return QChar::Script_Inherited;
  case -356867041: return QChar::Script_Common;
  case 702457232: return QChar::Script_Latin;
  case -737215924: return QChar::Script_Greek;
  case -640975685: return QChar::Script_Cyrillic;
  case -130197275: return QChar::Script_Armenian;
  case 557846195: return QChar::Script_Hebrew;
  case -801064096: return QChar::Script_Arabic;
  case 364720883: return QChar::Script_Syriac;
  case 654707579: return QChar::Script_Thaana;
  case -726171420: return QChar::Script_Devanagari;
  case -556625810: return QChar::Script_Bengali;
  case -338959180: return QChar::Script_Gurmukhi;
  case -836838467: return QChar::Script_Gujarati;
  case -280577862: return QChar::Script_Oriya;
  case -988939825: return QChar::Script_Tamil;
  case -198783524: return QChar::Script_Telugu;
  case -1069104364: return QChar::Script_Kannada;
  case -510928461: return QChar::Script_Malayalam;
  case 1003887442: return QChar::Script_Sinhala;
  case 130730320: return QChar::Script_Thai;
  case -1010960154: return QChar::Script_Lao;
  case -89171595: return QChar::Script_Tibetan;
  case 802547569: return QChar::Script_Myanmar;
  case -148847932: return QChar::Script_Georgian;
  case -611581635: return QChar::Script_Hangul;
  case -21880737: return QChar::Script_Ethiopic;
  case 349241282: return QChar::Script_Cherokee;
  case 27227017: return QChar::Script_CanadianAboriginal;
  case -402618168: return QChar::Script_Ogham;
  case 729405297: return QChar::Script_Runic;
  case 454245417: return QChar::Script_Khmer;
  case 14578730: return QChar::Script_Mongolian;
  case 1071989169: return QChar::Script_Hiragana;
  case -299076288: return QChar::Script_Katakana;
  case 689873963: return QChar::Script_Bopomofo;
  case -1011159071: return QChar::Script_Han;
  case -861598012: return QChar::Script_Yi;
  case 912020611: return QChar::Script_OldItalic;
  case 147112810: return QChar::Script_Gothic;
  case 297326458: return QChar::Script_Deseret;
  case 640318633: return QChar::Script_Tagalog;
  case -936328166: return QChar::Script_Hanunoo;
  case -183762468: return QChar::Script_Buhid;
  case -886890765: return QChar::Script_Tagbanwa;
  case -323251586: return QChar::Script_Coptic;
  case 790824111: return QChar::Script_Limbu;
  case -989145215: return QChar::Script_TaiLe;
  case 381959497: return QChar::Script_LinearB;
  case -748048964: return QChar::Script_Ugaritic;
  case -494126696: return QChar::Script_Shavian;
  case -48975414: return QChar::Script_Osmanya;
  case 899929378: return QChar::Script_Cypriot;
  case 379288761: return QChar::Script_Braille;
  case 363027890: return QChar::Script_Buginese;
  case -475855156: return QChar::Script_NewTaiLue;
  case -541933151: return QChar::Script_Glagolitic;
  case -1043373312: return QChar::Script_Tifinagh;
  case 156625625: return QChar::Script_SylotiNagri;
  case -862335635: return QChar::Script_OldPersian;
  case -441979021: return QChar::Script_Kharoshthi;
  case -708909959: return QChar::Script_Balinese;
  case -712104016: return QChar::Script_Cuneiform;
  case -7085232: return QChar::Script_Phoenician;
  case -605476430: return QChar::Script_PhagsPa;
  case -1010858466: return QChar::Script_Nko;
  case 139908766: return QChar::Script_Sundanese;
  case -1008525927: return QChar::Script_Lepcha;
  case 106788081: return QChar::Script_OlChiki;
  case -1010462870: return QChar::Script_Vai;
  case 39040332: return QChar::Script_Saurashtra;
  case 219978099: return QChar::Script_KayahLi;
  case 638484695: return QChar::Script_Rejang;
  case 1062435092: return QChar::Script_Lycian;
  case -563511050: return QChar::Script_Carian;
  case 1073524659: return QChar::Script_Lydian;
  case -57792315: return QChar::Script_Cham;
  case -1000551832: return QChar::Script_TaiTham;
  case -978322070: return QChar::Script_TaiViet;
  case -626002902: return QChar::Script_Avestan;
  case -1005376903: return QChar::Script_EgyptianHieroglyphs;
  case -95715852: return QChar::Script_Samaritan;
  case 42067539: return QChar::Script_Lisu;
  case -405302478: return QChar::Script_Bamum;
  case 61828383: return QChar::Script_Javanese;
  case -728401684: return QChar::Script_MeeteiMayek;
  case 1030038159: return QChar::Script_ImperialAramaic;
  case -790231030: return QChar::Script_OldSouthArabian;
  case 7874896: return QChar::Script_InscriptionalParthian;
  case 373244656: return QChar::Script_InscriptionalPahlavi;
  case 988528487: return QChar::Script_OldTurkic;
  case 190437174: return QChar::Script_Kaithi;
  case -404958837: return QChar::Script_Batak;
  case 916498631: return QChar::Script_Brahmi;
  case 215323325: return QChar::Script_Mandaic;
  case -620986665: return QChar::Script_Chakma;
  case 1024799831: return QChar::Script_MeroiticCursive;
  case 1027995034: return QChar::Script_MeroiticHieroglyphs;
  case 53153086: return QChar::Script_Miao;
  case -538882140: return QChar::Script_Sharada;
  case -997722432: return QChar::Script_SoraSompeng;
  case -989037279: return QChar::Script_Takri;
  case -226452490: return QChar::Script_CaucasianAlbanian;
  case -610467697: return QChar::Script_BassaVah;
  case -601189672: return QChar::Script_Duployan;
  case 995744902: return QChar::Script_Elbasan;
  case -371528159: return QChar::Script_Grantha;
  case 1026143572: return QChar::Script_PahawhHmong;
  case 387422858: return QChar::Script_Khojki;
  case 381959496: return QChar::Script_LinearA;
  case 329240179: return QChar::Script_Mahajani;
  case -325778759: return QChar::Script_Manichaean;
  case -966823704: return QChar::Script_MendeKikakui;
  case 53452123: return QChar::Script_Modi;
  case -1010906634: return QChar::Script_Mro;
  case -951485358: return QChar::Script_OldNorthArabian;
  case 866150623: return QChar::Script_Nabataean;
  case 836748605: return QChar::Script_Palmyrene;
  case 603953988: return QChar::Script_PauCinHau;
  case -350844323: return QChar::Script_OldPermic;
  case 189592576: return QChar::Script_PsalterPahlavi;
  case -147539446: return QChar::Script_Siddham;
  case 843175888: return QChar::Script_Khudawadi;
  case 857020451: return QChar::Script_Tirhuta;
  case -967779743: return QChar::Script_WarangCiti;
  case -79968327: return QChar::Script_Ahom;
  case 24498179: return QChar::Script_AnatolianHieroglyphs;
  case -544501672: return QChar::Script_Hatran;
  case -272691336: return QChar::Script_Multani;
  case -105122996: return QChar::Script_OldHungarian;
  case 678359467: return QChar::Script_SignWriting;
  case -92981596: return QChar::ScriptCount;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::Script)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_Script_to_ocaml(const QChar::Script& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::Script_Unknown: result = Val_long(-661124586); break;
  case QChar::Script_Inherited: result = Val_long(-303082842); break;
  case QChar::Script_Common: result = Val_long(-356867041); break;
  case QChar::Script_Latin: result = Val_long(702457232); break;
  case QChar::Script_Greek: result = Val_long(-737215924); break;
  case QChar::Script_Cyrillic: result = Val_long(-640975685); break;
  case QChar::Script_Armenian: result = Val_long(-130197275); break;
  case QChar::Script_Hebrew: result = Val_long(557846195); break;
  case QChar::Script_Arabic: result = Val_long(-801064096); break;
  case QChar::Script_Syriac: result = Val_long(364720883); break;
  case QChar::Script_Thaana: result = Val_long(654707579); break;
  case QChar::Script_Devanagari: result = Val_long(-726171420); break;
  case QChar::Script_Bengali: result = Val_long(-556625810); break;
  case QChar::Script_Gurmukhi: result = Val_long(-338959180); break;
  case QChar::Script_Gujarati: result = Val_long(-836838467); break;
  case QChar::Script_Oriya: result = Val_long(-280577862); break;
  case QChar::Script_Tamil: result = Val_long(-988939825); break;
  case QChar::Script_Telugu: result = Val_long(-198783524); break;
  case QChar::Script_Kannada: result = Val_long(-1069104364); break;
  case QChar::Script_Malayalam: result = Val_long(-510928461); break;
  case QChar::Script_Sinhala: result = Val_long(1003887442); break;
  case QChar::Script_Thai: result = Val_long(130730320); break;
  case QChar::Script_Lao: result = Val_long(-1010960154); break;
  case QChar::Script_Tibetan: result = Val_long(-89171595); break;
  case QChar::Script_Myanmar: result = Val_long(802547569); break;
  case QChar::Script_Georgian: result = Val_long(-148847932); break;
  case QChar::Script_Hangul: result = Val_long(-611581635); break;
  case QChar::Script_Ethiopic: result = Val_long(-21880737); break;
  case QChar::Script_Cherokee: result = Val_long(349241282); break;
  case QChar::Script_CanadianAboriginal: result = Val_long(27227017); break;
  case QChar::Script_Ogham: result = Val_long(-402618168); break;
  case QChar::Script_Runic: result = Val_long(729405297); break;
  case QChar::Script_Khmer: result = Val_long(454245417); break;
  case QChar::Script_Mongolian: result = Val_long(14578730); break;
  case QChar::Script_Hiragana: result = Val_long(1071989169); break;
  case QChar::Script_Katakana: result = Val_long(-299076288); break;
  case QChar::Script_Bopomofo: result = Val_long(689873963); break;
  case QChar::Script_Han: result = Val_long(-1011159071); break;
  case QChar::Script_Yi: result = Val_long(-861598012); break;
  case QChar::Script_OldItalic: result = Val_long(912020611); break;
  case QChar::Script_Gothic: result = Val_long(147112810); break;
  case QChar::Script_Deseret: result = Val_long(297326458); break;
  case QChar::Script_Tagalog: result = Val_long(640318633); break;
  case QChar::Script_Hanunoo: result = Val_long(-936328166); break;
  case QChar::Script_Buhid: result = Val_long(-183762468); break;
  case QChar::Script_Tagbanwa: result = Val_long(-886890765); break;
  case QChar::Script_Coptic: result = Val_long(-323251586); break;
  case QChar::Script_Limbu: result = Val_long(790824111); break;
  case QChar::Script_TaiLe: result = Val_long(-989145215); break;
  case QChar::Script_LinearB: result = Val_long(381959497); break;
  case QChar::Script_Ugaritic: result = Val_long(-748048964); break;
  case QChar::Script_Shavian: result = Val_long(-494126696); break;
  case QChar::Script_Osmanya: result = Val_long(-48975414); break;
  case QChar::Script_Cypriot: result = Val_long(899929378); break;
  case QChar::Script_Braille: result = Val_long(379288761); break;
  case QChar::Script_Buginese: result = Val_long(363027890); break;
  case QChar::Script_NewTaiLue: result = Val_long(-475855156); break;
  case QChar::Script_Glagolitic: result = Val_long(-541933151); break;
  case QChar::Script_Tifinagh: result = Val_long(-1043373312); break;
  case QChar::Script_SylotiNagri: result = Val_long(156625625); break;
  case QChar::Script_OldPersian: result = Val_long(-862335635); break;
  case QChar::Script_Kharoshthi: result = Val_long(-441979021); break;
  case QChar::Script_Balinese: result = Val_long(-708909959); break;
  case QChar::Script_Cuneiform: result = Val_long(-712104016); break;
  case QChar::Script_Phoenician: result = Val_long(-7085232); break;
  case QChar::Script_PhagsPa: result = Val_long(-605476430); break;
  case QChar::Script_Nko: result = Val_long(-1010858466); break;
  case QChar::Script_Sundanese: result = Val_long(139908766); break;
  case QChar::Script_Lepcha: result = Val_long(-1008525927); break;
  case QChar::Script_OlChiki: result = Val_long(106788081); break;
  case QChar::Script_Vai: result = Val_long(-1010462870); break;
  case QChar::Script_Saurashtra: result = Val_long(39040332); break;
  case QChar::Script_KayahLi: result = Val_long(219978099); break;
  case QChar::Script_Rejang: result = Val_long(638484695); break;
  case QChar::Script_Lycian: result = Val_long(1062435092); break;
  case QChar::Script_Carian: result = Val_long(-563511050); break;
  case QChar::Script_Lydian: result = Val_long(1073524659); break;
  case QChar::Script_Cham: result = Val_long(-57792315); break;
  case QChar::Script_TaiTham: result = Val_long(-1000551832); break;
  case QChar::Script_TaiViet: result = Val_long(-978322070); break;
  case QChar::Script_Avestan: result = Val_long(-626002902); break;
  case QChar::Script_EgyptianHieroglyphs: result = Val_long(-1005376903); break;
  case QChar::Script_Samaritan: result = Val_long(-95715852); break;
  case QChar::Script_Lisu: result = Val_long(42067539); break;
  case QChar::Script_Bamum: result = Val_long(-405302478); break;
  case QChar::Script_Javanese: result = Val_long(61828383); break;
  case QChar::Script_MeeteiMayek: result = Val_long(-728401684); break;
  case QChar::Script_ImperialAramaic: result = Val_long(1030038159); break;
  case QChar::Script_OldSouthArabian: result = Val_long(-790231030); break;
  case QChar::Script_InscriptionalParthian: result = Val_long(7874896); break;
  case QChar::Script_InscriptionalPahlavi: result = Val_long(373244656); break;
  case QChar::Script_OldTurkic: result = Val_long(988528487); break;
  case QChar::Script_Kaithi: result = Val_long(190437174); break;
  case QChar::Script_Batak: result = Val_long(-404958837); break;
  case QChar::Script_Brahmi: result = Val_long(916498631); break;
  case QChar::Script_Mandaic: result = Val_long(215323325); break;
  case QChar::Script_Chakma: result = Val_long(-620986665); break;
  case QChar::Script_MeroiticCursive: result = Val_long(1024799831); break;
  case QChar::Script_MeroiticHieroglyphs: result = Val_long(1027995034); break;
  case QChar::Script_Miao: result = Val_long(53153086); break;
  case QChar::Script_Sharada: result = Val_long(-538882140); break;
  case QChar::Script_SoraSompeng: result = Val_long(-997722432); break;
  case QChar::Script_Takri: result = Val_long(-989037279); break;
  case QChar::Script_CaucasianAlbanian: result = Val_long(-226452490); break;
  case QChar::Script_BassaVah: result = Val_long(-610467697); break;
  case QChar::Script_Duployan: result = Val_long(-601189672); break;
  case QChar::Script_Elbasan: result = Val_long(995744902); break;
  case QChar::Script_Grantha: result = Val_long(-371528159); break;
  case QChar::Script_PahawhHmong: result = Val_long(1026143572); break;
  case QChar::Script_Khojki: result = Val_long(387422858); break;
  case QChar::Script_LinearA: result = Val_long(381959496); break;
  case QChar::Script_Mahajani: result = Val_long(329240179); break;
  case QChar::Script_Manichaean: result = Val_long(-325778759); break;
  case QChar::Script_MendeKikakui: result = Val_long(-966823704); break;
  case QChar::Script_Modi: result = Val_long(53452123); break;
  case QChar::Script_Mro: result = Val_long(-1010906634); break;
  case QChar::Script_OldNorthArabian: result = Val_long(-951485358); break;
  case QChar::Script_Nabataean: result = Val_long(866150623); break;
  case QChar::Script_Palmyrene: result = Val_long(836748605); break;
  case QChar::Script_PauCinHau: result = Val_long(603953988); break;
  case QChar::Script_OldPermic: result = Val_long(-350844323); break;
  case QChar::Script_PsalterPahlavi: result = Val_long(189592576); break;
  case QChar::Script_Siddham: result = Val_long(-147539446); break;
  case QChar::Script_Khudawadi: result = Val_long(843175888); break;
  case QChar::Script_Tirhuta: result = Val_long(857020451); break;
  case QChar::Script_WarangCiti: result = Val_long(-967779743); break;
  case QChar::Script_Ahom: result = Val_long(-79968327); break;
  case QChar::Script_AnatolianHieroglyphs: result = Val_long(24498179); break;
  case QChar::Script_Hatran: result = Val_long(-544501672); break;
  case QChar::Script_Multani: result = Val_long(-272691336); break;
  case QChar::Script_OldHungarian: result = Val_long(-105122996); break;
  case QChar::Script_SignWriting: result = Val_long(678359467); break;
  case QChar::ScriptCount: result = Val_long(-92981596); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::Direction mlqt_QChar_Direction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 759337599: return QChar::DirL;
  case 759337605: return QChar::DirR;
  case -318925098: return QChar::DirEN;
  case -318925093: return QChar::DirES;
  case -318925092: return QChar::DirET;
  case -318925990: return QChar::DirAN;
  case -318925539: return QChar::DirCS;
  case 759337589: return QChar::DirB;
  case 759337606: return QChar::DirS;
  case -318921079: return QChar::DirWS;
  case -318922868: return QChar::DirON;
  case -252987406: return QChar::DirLRE;
  case -252987396: return QChar::DirLRO;
  case -318925992: return QChar::DirAL;
  case -252690370: return QChar::DirRLE;
  case -252690360: return QChar::DirRLO;
  case -252791611: return QChar::DirPDF;
  case -252887717: return QChar::DirNSM;
  case -318925767: return QChar::DirBN;
  case -252987402: return QChar::DirLRI;
  case -252690366: return QChar::DirRLI;
  case -253285553: return QChar::DirFSI;
  case -252791608: return QChar::DirPDI;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::Direction)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_Direction_to_ocaml(const QChar::Direction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::DirL: result = Val_long(759337599); break;
  case QChar::DirR: result = Val_long(759337605); break;
  case QChar::DirEN: result = Val_long(-318925098); break;
  case QChar::DirES: result = Val_long(-318925093); break;
  case QChar::DirET: result = Val_long(-318925092); break;
  case QChar::DirAN: result = Val_long(-318925990); break;
  case QChar::DirCS: result = Val_long(-318925539); break;
  case QChar::DirB: result = Val_long(759337589); break;
  case QChar::DirS: result = Val_long(759337606); break;
  case QChar::DirWS: result = Val_long(-318921079); break;
  case QChar::DirON: result = Val_long(-318922868); break;
  case QChar::DirLRE: result = Val_long(-252987406); break;
  case QChar::DirLRO: result = Val_long(-252987396); break;
  case QChar::DirAL: result = Val_long(-318925992); break;
  case QChar::DirRLE: result = Val_long(-252690370); break;
  case QChar::DirRLO: result = Val_long(-252690360); break;
  case QChar::DirPDF: result = Val_long(-252791611); break;
  case QChar::DirNSM: result = Val_long(-252887717); break;
  case QChar::DirBN: result = Val_long(-318925767); break;
  case QChar::DirLRI: result = Val_long(-252987402); break;
  case QChar::DirRLI: result = Val_long(-252690366); break;
  case QChar::DirFSI: result = Val_long(-253285553); break;
  case QChar::DirPDI: result = Val_long(-252791608); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::Decomposition mlqt_QChar_Decomposition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 394998504: return QChar::NoDecomposition;
  case 1021867988: return QChar::Canonical;
  case 781814255: return QChar::Font;
  case -650063714: return QChar::NoBreak;
  case 418396260: return QChar::Initial;
  case 861714216: return QChar::Medial;
  case 331861846: return QChar::Final;
  case -824137927: return QChar::Isolated;
  case 178382384: return QChar::Circle;
  case 401437019: return QChar::Super;
  case 4153696: return QChar::Sub;
  case -1010337642: return QChar::Vertical;
  case 970036275: return QChar::Wide;
  case -714760517: return QChar::Narrow;
  case 311976103: return QChar::Small;
  case 226915517: return QChar::Square;
  case -70966302: return QChar::Compat;
  case 1050694178: return QChar::Fraction;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::Decomposition)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_Decomposition_to_ocaml(const QChar::Decomposition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::NoDecomposition: result = Val_long(394998504); break;
  case QChar::Canonical: result = Val_long(1021867988); break;
  case QChar::Font: result = Val_long(781814255); break;
  case QChar::NoBreak: result = Val_long(-650063714); break;
  case QChar::Initial: result = Val_long(418396260); break;
  case QChar::Medial: result = Val_long(861714216); break;
  case QChar::Final: result = Val_long(331861846); break;
  case QChar::Isolated: result = Val_long(-824137927); break;
  case QChar::Circle: result = Val_long(178382384); break;
  case QChar::Super: result = Val_long(401437019); break;
  case QChar::Sub: result = Val_long(4153696); break;
  case QChar::Vertical: result = Val_long(-1010337642); break;
  case QChar::Wide: result = Val_long(970036275); break;
  case QChar::Narrow: result = Val_long(-714760517); break;
  case QChar::Small: result = Val_long(311976103); break;
  case QChar::Square: result = Val_long(226915517); break;
  case QChar::Compat: result = Val_long(-70966302); break;
  case QChar::Fraction: result = Val_long(1050694178); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::JoiningType mlqt_QChar_JoiningType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -844311393: return QChar::Joining_None;
  case 1058835039: return QChar::Joining_Causing;
  case -954911581: return QChar::Joining_Dual;
  case -215288811: return QChar::Joining_Right;
  case -866989586: return QChar::Joining_Left;
  case -85556149: return QChar::Joining_Transparent;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::JoiningType)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_JoiningType_to_ocaml(const QChar::JoiningType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::Joining_None: result = Val_long(-844311393); break;
  case QChar::Joining_Causing: result = Val_long(1058835039); break;
  case QChar::Joining_Dual: result = Val_long(-954911581); break;
  case QChar::Joining_Right: result = Val_long(-215288811); break;
  case QChar::Joining_Left: result = Val_long(-866989586); break;
  case QChar::Joining_Transparent: result = Val_long(-85556149); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::Joining mlqt_QChar_Joining_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 599469672: return QChar::OtherJoining;
  case 759930588: return QChar::Dual;
  case -57574468: return QChar::Right;
  case 980392437: return QChar::Center;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::Joining)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_Joining_to_ocaml(const QChar::Joining& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::OtherJoining: result = Val_long(599469672); break;
  case QChar::Dual: result = Val_long(759930588); break;
  case QChar::Right: result = Val_long(-57574468); break;
  case QChar::Center: result = Val_long(980392437); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QChar::UnicodeVersion mlqt_QChar_UnicodeVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 648486665: return QChar::Unicode_Unassigned;
  case -146325023: return QChar::Unicode_1_1;
  case -146275295: return QChar::Unicode_2_0;
  case -596958315: return QChar::Unicode_2_1_2;
  case -146225566: return QChar::Unicode_3_0;
  case -146225565: return QChar::Unicode_3_1;
  case -146225564: return QChar::Unicode_3_2;
  case -146175837: return QChar::Unicode_4_0;
  case -146175836: return QChar::Unicode_4_1;
  case -146126108: return QChar::Unicode_5_0;
  case -146126107: return QChar::Unicode_5_1;
  case -146126106: return QChar::Unicode_5_2;
  case -146076379: return QChar::Unicode_6_0;
  case -146076378: return QChar::Unicode_6_1;
  case -146076377: return QChar::Unicode_6_2;
  case -146076376: return QChar::Unicode_6_3;
  case -146026650: return QChar::Unicode_7_0;
  case -145976921: return QChar::Unicode_8_0;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QChar::UnicodeVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QChar_UnicodeVersion_to_ocaml(const QChar::UnicodeVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QChar::Unicode_Unassigned: result = Val_long(648486665); break;
  case QChar::Unicode_1_1: result = Val_long(-146325023); break;
  case QChar::Unicode_2_0: result = Val_long(-146275295); break;
  case QChar::Unicode_2_1_2: result = Val_long(-596958315); break;
  case QChar::Unicode_3_0: result = Val_long(-146225566); break;
  case QChar::Unicode_3_1: result = Val_long(-146225565); break;
  case QChar::Unicode_3_2: result = Val_long(-146225564); break;
  case QChar::Unicode_4_0: result = Val_long(-146175837); break;
  case QChar::Unicode_4_1: result = Val_long(-146175836); break;
  case QChar::Unicode_5_0: result = Val_long(-146126108); break;
  case QChar::Unicode_5_1: result = Val_long(-146126107); break;
  case QChar::Unicode_5_2: result = Val_long(-146126106); break;
  case QChar::Unicode_6_0: result = Val_long(-146076379); break;
  case QChar::Unicode_6_1: result = Val_long(-146076378); break;
  case QChar::Unicode_6_2: result = Val_long(-146076377); break;
  case QChar::Unicode_6_3: result = Val_long(-146076376); break;
  case QChar::Unicode_7_0: result = Val_long(-146026650); break;
  case QChar::Unicode_8_0: result = Val_long(-145976921); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QElapsedTimer::ClockType mlqt_QElapsedTimer_ClockType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -231655748: return QElapsedTimer::SystemTime;
  case 412410724: return QElapsedTimer::MonotonicClock;
  case 228753663: return QElapsedTimer::TickCounter;
  case 1044003549: return QElapsedTimer::MachAbsoluteTime;
  case -206255348: return QElapsedTimer::PerformanceCounter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QElapsedTimer::ClockType)Long_val(Field(v, 1));
  }
}

value& mlqt_QElapsedTimer_ClockType_to_ocaml(const QElapsedTimer::ClockType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QElapsedTimer::SystemTime: result = Val_long(-231655748); break;
  case QElapsedTimer::MonotonicClock: result = Val_long(412410724); break;
  case QElapsedTimer::TickCounter: result = Val_long(228753663); break;
  case QElapsedTimer::MachAbsoluteTime: result = Val_long(1044003549); break;
  case QElapsedTimer::PerformanceCounter: result = Val_long(-206255348); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStandardPaths::StandardLocation mlqt_QStandardPaths_StandardLocation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -10734575: return QStandardPaths::DesktopLocation;
  case -480122067: return QStandardPaths::DocumentsLocation;
  case 392009209: return QStandardPaths::FontsLocation;
  case 674180248: return QStandardPaths::ApplicationsLocation;
  case 472643546: return QStandardPaths::MusicLocation;
  case -723868616: return QStandardPaths::MoviesLocation;
  case 215349610: return QStandardPaths::PicturesLocation;
  case -757371511: return QStandardPaths::TempLocation;
  case 909309844: return QStandardPaths::HomeLocation;
  case 424609439: return QStandardPaths::DataLocation;
  case 392439415: return QStandardPaths::CacheLocation;
  case -961136874: return QStandardPaths::GenericDataLocation;
  case 678002445: return QStandardPaths::RuntimeLocation;
  case -950556873: return QStandardPaths::ConfigLocation;
  case 400308733: return QStandardPaths::DownloadLocation;
  case 608656928: return QStandardPaths::GenericCacheLocation;
  case 21308270: return QStandardPaths::GenericConfigLocation;
  case 490600608: return QStandardPaths::AppDataLocation;
  case -630727816: return QStandardPaths::AppConfigLocation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStandardPaths::StandardLocation)Long_val(Field(v, 1));
  }
}

value& mlqt_QStandardPaths_StandardLocation_to_ocaml(const QStandardPaths::StandardLocation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStandardPaths::DesktopLocation: result = Val_long(-10734575); break;
  case QStandardPaths::DocumentsLocation: result = Val_long(-480122067); break;
  case QStandardPaths::FontsLocation: result = Val_long(392009209); break;
  case QStandardPaths::ApplicationsLocation: result = Val_long(674180248); break;
  case QStandardPaths::MusicLocation: result = Val_long(472643546); break;
  case QStandardPaths::MoviesLocation: result = Val_long(-723868616); break;
  case QStandardPaths::PicturesLocation: result = Val_long(215349610); break;
  case QStandardPaths::TempLocation: result = Val_long(-757371511); break;
  case QStandardPaths::HomeLocation: result = Val_long(909309844); break;
  case QStandardPaths::DataLocation: result = Val_long(424609439); break;
  case QStandardPaths::CacheLocation: result = Val_long(392439415); break;
  case QStandardPaths::GenericDataLocation: result = Val_long(-961136874); break;
  case QStandardPaths::RuntimeLocation: result = Val_long(678002445); break;
  case QStandardPaths::ConfigLocation: result = Val_long(-950556873); break;
  case QStandardPaths::DownloadLocation: result = Val_long(400308733); break;
  case QStandardPaths::GenericCacheLocation: result = Val_long(608656928); break;
  case QStandardPaths::GenericConfigLocation: result = Val_long(21308270); break;
  case QStandardPaths::AppDataLocation: result = Val_long(490600608); break;
  case QStandardPaths::AppConfigLocation: result = Val_long(-630727816); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStandardPaths::LocateOption mlqt_QStandardPaths_LocateOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 610249550: return QStandardPaths::LocateFile;
  case -82486181: return QStandardPaths::LocateDirectory;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStandardPaths::LocateOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QStandardPaths_LocateOption_to_ocaml(const QStandardPaths::LocateOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStandardPaths::LocateFile: result = Val_long(610249550); break;
  case QStandardPaths::LocateDirectory: result = Val_long(-82486181); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDirIterator::IteratorFlag mlqt_QDirIterator_IteratorFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1526440: return QDirIterator::NoIteratorFlags;
  case 1071437699: return QDirIterator::FollowSymlinks;
  case 195016363: return QDirIterator::Subdirectories;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDirIterator::IteratorFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QDirIterator_IteratorFlag_to_ocaml(const QDirIterator::IteratorFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDirIterator::NoIteratorFlags: result = Val_long(-1526440); break;
  case QDirIterator::FollowSymlinks: result = Val_long(1071437699); break;
  case QDirIterator::Subdirectories: result = Val_long(195016363); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegExp::PatternSyntax mlqt_QRegExp_PatternSyntax_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 889580489: return QRegExp::RegExp;
  case 46765562: return QRegExp::Wildcard;
  case 294894917: return QRegExp::FixedString;
  case 807953481: return QRegExp::RegExp2;
  case -93843038: return QRegExp::WildcardUnix;
  case 309349553: return QRegExp::W3CXmlSchema11;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegExp::PatternSyntax)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegExp_PatternSyntax_to_ocaml(const QRegExp::PatternSyntax& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegExp::RegExp: result = Val_long(889580489); break;
  case QRegExp::Wildcard: result = Val_long(46765562); break;
  case QRegExp::FixedString: result = Val_long(294894917); break;
  case QRegExp::RegExp2: result = Val_long(807953481); break;
  case QRegExp::WildcardUnix: result = Val_long(-93843038); break;
  case QRegExp::W3CXmlSchema11: result = Val_long(309349553); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegExp::CaretMode mlqt_QRegExp_CaretMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -234418306: return QRegExp::CaretAtZero;
  case -216606359: return QRegExp::CaretAtOffset;
  case -186410972: return QRegExp::CaretWontMatch;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegExp::CaretMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegExp_CaretMode_to_ocaml(const QRegExp::CaretMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegExp::CaretAtZero: result = Val_long(-234418306); break;
  case QRegExp::CaretAtOffset: result = Val_long(-216606359); break;
  case QRegExp::CaretWontMatch: result = Val_long(-186410972); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCodec::ConversionFlag mlqt_QTextCodec_ConversionFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -604026089: return QTextCodec::DefaultConversion;
  case 823602726: return QTextCodec::ConvertInvalidToNull;
  case -1044210593: return QTextCodec::IgnoreHeader;
  case -502801404: return QTextCodec::FreeFunction;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCodec::ConversionFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCodec_ConversionFlag_to_ocaml(const QTextCodec::ConversionFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCodec::DefaultConversion: result = Val_long(-604026089); break;
  case QTextCodec::ConvertInvalidToNull: result = Val_long(823602726); break;
  case QTextCodec::IgnoreHeader: result = Val_long(-1044210593); break;
  case QTextCodec::FreeFunction: result = Val_long(-502801404); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSystemSemaphore::AccessMode mlqt_QSystemSemaphore_AccessMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 881668074: return QSystemSemaphore::Open;
  case 816044828: return QSystemSemaphore::Create;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSystemSemaphore::AccessMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QSystemSemaphore_AccessMode_to_ocaml(const QSystemSemaphore::AccessMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSystemSemaphore::Open: result = Val_long(881668074); break;
  case QSystemSemaphore::Create: result = Val_long(816044828); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSystemSemaphore::SystemSemaphoreError mlqt_QSystemSemaphore_SystemSemaphoreError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QSystemSemaphore::NoError;
  case -130506774: return QSystemSemaphore::PermissionDenied;
  case 289746377: return QSystemSemaphore::KeyError;
  case 341195636: return QSystemSemaphore::AlreadyExists;
  case -296251313: return QSystemSemaphore::NotFound;
  case -49916416: return QSystemSemaphore::OutOfResources;
  case -638627842: return QSystemSemaphore::UnknownError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSystemSemaphore::SystemSemaphoreError)Long_val(Field(v, 1));
  }
}

value& mlqt_QSystemSemaphore_SystemSemaphoreError_to_ocaml(const QSystemSemaphore::SystemSemaphoreError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSystemSemaphore::NoError: result = Val_long(327055271); break;
  case QSystemSemaphore::PermissionDenied: result = Val_long(-130506774); break;
  case QSystemSemaphore::KeyError: result = Val_long(289746377); break;
  case QSystemSemaphore::AlreadyExists: result = Val_long(341195636); break;
  case QSystemSemaphore::NotFound: result = Val_long(-296251313); break;
  case QSystemSemaphore::OutOfResources: result = Val_long(-49916416); break;
  case QSystemSemaphore::UnknownError: result = Val_long(-638627842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUrl::ParsingMode mlqt_QUrl_ParsingMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -17218420: return QUrl::TolerantMode;
  case 123140972: return QUrl::StrictMode;
  case -529877543: return QUrl::DecodedMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUrl::ParsingMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QUrl_ParsingMode_to_ocaml(const QUrl::ParsingMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUrl::TolerantMode: result = Val_long(-17218420); break;
  case QUrl::StrictMode: result = Val_long(123140972); break;
  case QUrl::DecodedMode: result = Val_long(-529877543); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUrl::UrlFormattingOption mlqt_QUrl_UrlFormattingOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QUrl::None;
  case -134150231: return QUrl::RemoveScheme;
  case 1031533471: return QUrl::RemovePassword;
  case -47429411: return QUrl::RemoveUserInfo;
  case 1043120645: return QUrl::RemovePort;
  case -718425217: return QUrl::RemoveAuthority;
  case 1042424873: return QUrl::RemovePath;
  case -1068433404: return QUrl::RemoveQuery;
  case 579940436: return QUrl::RemoveFragment;
  case 398665015: return QUrl::PreferLocalFile;
  case 923415529: return QUrl::StripTrailingSlash;
  case -334102709: return QUrl::RemoveFilename;
  case 91393842: return QUrl::NormalizePathSegments;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUrl::UrlFormattingOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QUrl_UrlFormattingOption_to_ocaml(const QUrl::UrlFormattingOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUrl::None: result = Val_long(870530776); break;
  case QUrl::RemoveScheme: result = Val_long(-134150231); break;
  case QUrl::RemovePassword: result = Val_long(1031533471); break;
  case QUrl::RemoveUserInfo: result = Val_long(-47429411); break;
  case QUrl::RemovePort: result = Val_long(1043120645); break;
  case QUrl::RemoveAuthority: result = Val_long(-718425217); break;
  case QUrl::RemovePath: result = Val_long(1042424873); break;
  case QUrl::RemoveQuery: result = Val_long(-1068433404); break;
  case QUrl::RemoveFragment: result = Val_long(579940436); break;
  case QUrl::PreferLocalFile: result = Val_long(398665015); break;
  case QUrl::StripTrailingSlash: result = Val_long(923415529); break;
  case QUrl::RemoveFilename: result = Val_long(-334102709); break;
  case QUrl::NormalizePathSegments: result = Val_long(91393842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUrl::ComponentFormattingOption mlqt_QUrl_ComponentFormattingOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -483032256: return QUrl::PrettyDecoded;
  case 406390723: return QUrl::EncodeSpaces;
  case 996025735: return QUrl::EncodeUnicode;
  case 363702626: return QUrl::EncodeDelimiters;
  case 1032994558: return QUrl::EncodeReserved;
  case 119570966: return QUrl::DecodeReserved;
  case 16438980: return QUrl::FullyEncoded;
  case 1043275948: return QUrl::FullyDecoded;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUrl::ComponentFormattingOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QUrl_ComponentFormattingOption_to_ocaml(const QUrl::ComponentFormattingOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUrl::PrettyDecoded: result = Val_long(-483032256); break;
  case QUrl::EncodeSpaces: result = Val_long(406390723); break;
  case QUrl::EncodeUnicode: result = Val_long(996025735); break;
  case QUrl::EncodeDelimiters: result = Val_long(363702626); break;
  case QUrl::EncodeReserved: result = Val_long(1032994558); break;
  case QUrl::DecodeReserved: result = Val_long(119570966); break;
  case QUrl::FullyEncoded: result = Val_long(16438980); break;
  case QUrl::FullyDecoded: result = Val_long(1043275948); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUrl::UserInputResolutionOption mlqt_QUrl_UserInputResolutionOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -449794771: return QUrl::DefaultResolution;
  case 228305243: return QUrl::AssumeLocalFile;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUrl::UserInputResolutionOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QUrl_UserInputResolutionOption_to_ocaml(const QUrl::UserInputResolutionOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUrl::DefaultResolution: result = Val_long(-449794771); break;
  case QUrl::AssumeLocalFile: result = Val_long(228305243); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUuid::Variant mlqt_QUuid_Variant_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 767568771: return QUuid::VarUnknown;
  case 3893886: return QUuid::NCS;
  case 3396582: return QUuid::DCE;
  case -946080818: return QUuid::Microsoft;
  case 676836040: return QUuid::Reserved;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUuid::Variant)Long_val(Field(v, 1));
  }
}

value& mlqt_QUuid_Variant_to_ocaml(const QUuid::Variant& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUuid::VarUnknown: result = Val_long(767568771); break;
  case QUuid::NCS: result = Val_long(3893886); break;
  case QUuid::DCE: result = Val_long(3396582); break;
  case QUuid::Microsoft: result = Val_long(-946080818); break;
  case QUuid::Reserved: result = Val_long(676836040); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QUuid::Version mlqt_QUuid_Version_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -108671097: return QUuid::VerUnknown;
  case 936769581: return QUuid::Time;
  case -468131719: return QUuid::EmbeddedPOSIX;
  case 3851486: return QUuid::Md5;
  case -333212125: return QUuid::Random;
  case 925627557: return QUuid::Sha1;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QUuid::Version)Long_val(Field(v, 1));
  }
}

value& mlqt_QUuid_Version_to_ocaml(const QUuid::Version& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QUuid::VerUnknown: result = Val_long(-108671097); break;
  case QUuid::Time: result = Val_long(936769581); break;
  case QUuid::EmbeddedPOSIX: result = Val_long(-468131719); break;
  case QUuid::Md5: result = Val_long(3851486); break;
  case QUuid::Random: result = Val_long(-333212125); break;
  case QUuid::Sha1: result = Val_long(925627557); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCryptographicHash::Algorithm mlqt_QCryptographicHash_Algorithm_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 3851485: return QCryptographicHash::Md4;
  case 3851486: return QCryptographicHash::Md5;
  case 925627557: return QCryptographicHash::Sha1;
  case -779151896: return QCryptographicHash::Sha224;
  case -779151225: return QCryptographicHash::Sha256;
  case -779100829: return QCryptographicHash::Sha384;
  case -779002934: return QCryptographicHash::Sha512;
  case -720226916: return QCryptographicHash::Sha3_224;
  case -720226245: return QCryptographicHash::Sha3_256;
  case -720175849: return QCryptographicHash::Sha3_384;
  case -720077954: return QCryptographicHash::Sha3_512;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCryptographicHash::Algorithm)Long_val(Field(v, 1));
  }
}

value& mlqt_QCryptographicHash_Algorithm_to_ocaml(const QCryptographicHash::Algorithm& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCryptographicHash::Md4: result = Val_long(3851485); break;
  case QCryptographicHash::Md5: result = Val_long(3851486); break;
  case QCryptographicHash::Sha1: result = Val_long(925627557); break;
  case QCryptographicHash::Sha224: result = Val_long(-779151896); break;
  case QCryptographicHash::Sha256: result = Val_long(-779151225); break;
  case QCryptographicHash::Sha384: result = Val_long(-779100829); break;
  case QCryptographicHash::Sha512: result = Val_long(-779002934); break;
  case QCryptographicHash::Sha3_224: result = Val_long(-720226916); break;
  case QCryptographicHash::Sha3_256: result = Val_long(-720226245); break;
  case QCryptographicHash::Sha3_384: result = Val_long(-720175849); break;
  case QCryptographicHash::Sha3_512: result = Val_long(-720077954); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLibraryInfo::LibraryLocation mlqt_QLibraryInfo_LibraryLocation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -235659145: return QLibraryInfo::PrefixPath;
  case 896907359: return QLibraryInfo::DocumentationPath;
  case -905734421: return QLibraryInfo::HeadersPath;
  case -444583362: return QLibraryInfo::LibrariesPath;
  case 363515155: return QLibraryInfo::LibraryExecutablesPath;
  case 823938052: return QLibraryInfo::BinariesPath;
  case -967037947: return QLibraryInfo::PluginsPath;
  case 131305491: return QLibraryInfo::ImportsPath;
  case -740952303: return QLibraryInfo::Qml2ImportsPath;
  case 117251333: return QLibraryInfo::ArchDataPath;
  case -478707441: return QLibraryInfo::DataPath;
  case 766273863: return QLibraryInfo::TranslationsPath;
  case 759640942: return QLibraryInfo::ExamplesPath;
  case -1008241146: return QLibraryInfo::TestsPath;
  case -824276920: return QLibraryInfo::SettingsPath;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLibraryInfo::LibraryLocation)Long_val(Field(v, 1));
  }
}

value& mlqt_QLibraryInfo_LibraryLocation_to_ocaml(const QLibraryInfo::LibraryLocation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLibraryInfo::PrefixPath: result = Val_long(-235659145); break;
  case QLibraryInfo::DocumentationPath: result = Val_long(896907359); break;
  case QLibraryInfo::HeadersPath: result = Val_long(-905734421); break;
  case QLibraryInfo::LibrariesPath: result = Val_long(-444583362); break;
  case QLibraryInfo::LibraryExecutablesPath: result = Val_long(363515155); break;
  case QLibraryInfo::BinariesPath: result = Val_long(823938052); break;
  case QLibraryInfo::PluginsPath: result = Val_long(-967037947); break;
  case QLibraryInfo::ImportsPath: result = Val_long(131305491); break;
  case QLibraryInfo::Qml2ImportsPath: result = Val_long(-740952303); break;
  case QLibraryInfo::ArchDataPath: result = Val_long(117251333); break;
  case QLibraryInfo::DataPath: result = Val_long(-478707441); break;
  case QLibraryInfo::TranslationsPath: result = Val_long(766273863); break;
  case QLibraryInfo::ExamplesPath: result = Val_long(759640942); break;
  case QLibraryInfo::TestsPath: result = Val_long(-1008241146); break;
  case QLibraryInfo::SettingsPath: result = Val_long(-824276920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCommandLineOption::Flag mlqt_QCommandLineOption_Flag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -536818955: return QCommandLineOption::HiddenFromHelp;
  case -384163200: return QCommandLineOption::ShortOptionStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCommandLineOption::Flag)Long_val(Field(v, 1));
  }
}

value& mlqt_QCommandLineOption_Flag_to_ocaml(const QCommandLineOption::Flag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCommandLineOption::HiddenFromHelp: result = Val_long(-536818955); break;
  case QCommandLineOption::ShortOptionStyle: result = Val_long(-384163200); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegularExpression::PatternOption mlqt_QRegularExpression_PatternOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -100266812: return QRegularExpression::NoPatternOption;
  case 619120886: return QRegularExpression::CaseInsensitiveOption;
  case -263818254: return QRegularExpression::DotMatchesEverythingOption;
  case -600468958: return QRegularExpression::MultilineOption;
  case -241290417: return QRegularExpression::ExtendedPatternSyntaxOption;
  case 539311665: return QRegularExpression::InvertedGreedinessOption;
  case 941070634: return QRegularExpression::DontCaptureOption;
  case 120134558: return QRegularExpression::UseUnicodePropertiesOption;
  case -698188606: return QRegularExpression::OptimizeOnFirstUsageOption;
  case -673506620: return QRegularExpression::DontAutomaticallyOptimizeOption;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegularExpression::PatternOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegularExpression_PatternOption_to_ocaml(const QRegularExpression::PatternOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegularExpression::NoPatternOption: result = Val_long(-100266812); break;
  case QRegularExpression::CaseInsensitiveOption: result = Val_long(619120886); break;
  case QRegularExpression::DotMatchesEverythingOption: result = Val_long(-263818254); break;
  case QRegularExpression::MultilineOption: result = Val_long(-600468958); break;
  case QRegularExpression::ExtendedPatternSyntaxOption: result = Val_long(-241290417); break;
  case QRegularExpression::InvertedGreedinessOption: result = Val_long(539311665); break;
  case QRegularExpression::DontCaptureOption: result = Val_long(941070634); break;
  case QRegularExpression::UseUnicodePropertiesOption: result = Val_long(120134558); break;
  case QRegularExpression::OptimizeOnFirstUsageOption: result = Val_long(-698188606); break;
  case QRegularExpression::DontAutomaticallyOptimizeOption: result = Val_long(-673506620); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegularExpression::MatchType mlqt_QRegularExpression_MatchType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -192433794: return QRegularExpression::NormalMatch;
  case -869489989: return QRegularExpression::PartialPreferCompleteMatch;
  case -100594010: return QRegularExpression::PartialPreferFirstMatch;
  case 595064100: return QRegularExpression::NoMatch;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegularExpression::MatchType)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegularExpression_MatchType_to_ocaml(const QRegularExpression::MatchType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegularExpression::NormalMatch: result = Val_long(-192433794); break;
  case QRegularExpression::PartialPreferCompleteMatch: result = Val_long(-869489989); break;
  case QRegularExpression::PartialPreferFirstMatch: result = Val_long(-100594010); break;
  case QRegularExpression::NoMatch: result = Val_long(595064100); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegularExpression::MatchOption mlqt_QRegularExpression_MatchOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -630083655: return QRegularExpression::NoMatchOption;
  case -722839354: return QRegularExpression::AnchoredMatchOption;
  case -847335052: return QRegularExpression::DontCheckSubjectStringMatchOption;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegularExpression::MatchOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegularExpression_MatchOption_to_ocaml(const QRegularExpression::MatchOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegularExpression::NoMatchOption: result = Val_long(-630083655); break;
  case QRegularExpression::AnchoredMatchOption: result = Val_long(-722839354); break;
  case QRegularExpression::DontCheckSubjectStringMatchOption: result = Val_long(-847335052); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QString::SectionFlag mlqt_QString_SectionFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -957528708: return QString::SectionDefault;
  case -574621431: return QString::SectionSkipEmpty;
  case -763582149: return QString::SectionIncludeLeadingSep;
  case -717271553: return QString::SectionIncludeTrailingSep;
  case -153726031: return QString::SectionCaseInsensitiveSeps;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QString::SectionFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QString_SectionFlag_to_ocaml(const QString::SectionFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QString::SectionDefault: result = Val_long(-957528708); break;
  case QString::SectionSkipEmpty: result = Val_long(-574621431); break;
  case QString::SectionIncludeLeadingSep: result = Val_long(-763582149); break;
  case QString::SectionIncludeTrailingSep: result = Val_long(-717271553); break;
  case QString::SectionCaseInsensitiveSeps: result = Val_long(-153726031); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QString::SplitBehavior mlqt_QString_SplitBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 333940824: return QString::KeepEmptyParts;
  case -757937454: return QString::SkipEmptyParts;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QString::SplitBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QString_SplitBehavior_to_ocaml(const QString::SplitBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QString::KeepEmptyParts: result = Val_long(333940824); break;
  case QString::SkipEmptyParts: result = Val_long(-757937454); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QString::NormalizationForm mlqt_QString_NormalizationForm_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 21936870: return QString::NormalizationForm_D;
  case 21936869: return QString::NormalizationForm_C;
  case 596956343: return QString::NormalizationForm_KD;
  case 596956342: return QString::NormalizationForm_KC;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QString::NormalizationForm)Long_val(Field(v, 1));
  }
}

value& mlqt_QString_NormalizationForm_to_ocaml(const QString::NormalizationForm& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QString::NormalizationForm_D: result = Val_long(21936870); break;
  case QString::NormalizationForm_C: result = Val_long(21936869); break;
  case QString::NormalizationForm_KD: result = Val_long(596956343); break;
  case QString::NormalizationForm_KC: result = Val_long(596956342); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDataStream::ByteOrder mlqt_QDataStream_ByteOrder_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1037191845: return QDataStream::BigEndian;
  case -812811695: return QDataStream::LittleEndian;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDataStream::ByteOrder)Long_val(Field(v, 1));
  }
}

value& mlqt_QDataStream_ByteOrder_to_ocaml(const QDataStream::ByteOrder& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDataStream::BigEndian: result = Val_long(-1037191845); break;
  case QDataStream::LittleEndian: result = Val_long(-812811695); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDataStream::Status mlqt_QDataStream_Status_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 17724: return QDataStream::Ok;
  case 890655059: return QDataStream::ReadPastEnd;
  case -416772927: return QDataStream::ReadCorruptData;
  case -517296164: return QDataStream::WriteFailed;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDataStream::Status)Long_val(Field(v, 1));
  }
}

value& mlqt_QDataStream_Status_to_ocaml(const QDataStream::Status& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDataStream::Ok: result = Val_long(17724); break;
  case QDataStream::ReadPastEnd: result = Val_long(890655059); break;
  case QDataStream::ReadCorruptData: result = Val_long(-416772927); break;
  case QDataStream::WriteFailed: result = Val_long(-517296164); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDataStream::FloatingPointPrecision mlqt_QDataStream_FloatingPointPrecision_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -247970442: return QDataStream::SinglePrecision;
  case -435148851: return QDataStream::DoublePrecision;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDataStream::FloatingPointPrecision)Long_val(Field(v, 1));
  }
}

value& mlqt_QDataStream_FloatingPointPrecision_to_ocaml(const QDataStream::FloatingPointPrecision& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDataStream::SinglePrecision: result = Val_long(-247970442); break;
  case QDataStream::DoublePrecision: result = Val_long(-435148851); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QJsonValue::Type mlqt_QJsonValue_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870828711: return QJsonValue::Null;
  case 737456202: return QJsonValue::Bool;
  case -413163727: return QJsonValue::Double;
  case -976970511: return QJsonValue::String;
  case 951901561: return QJsonValue::Array;
  case -908856609: return QJsonValue::Object;
  case 1054678640: return QJsonValue::Undefined;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QJsonValue::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QJsonValue_Type_to_ocaml(const QJsonValue::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QJsonValue::Null: result = Val_long(870828711); break;
  case QJsonValue::Bool: result = Val_long(737456202); break;
  case QJsonValue::Double: result = Val_long(-413163727); break;
  case QJsonValue::String: result = Val_long(-976970511); break;
  case QJsonValue::Array: result = Val_long(951901561); break;
  case QJsonValue::Object: result = Val_long(-908856609); break;
  case QJsonValue::Undefined: result = Val_long(1054678640); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCommandLineParser::SingleDashWordOptionMode mlqt_QCommandLineParser_SingleDashWordOptionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -986248193: return QCommandLineParser::ParseAsCompactedShortOptions;
  case 33587549: return QCommandLineParser::ParseAsLongOptions;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCommandLineParser::SingleDashWordOptionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QCommandLineParser_SingleDashWordOptionMode_to_ocaml(const QCommandLineParser::SingleDashWordOptionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCommandLineParser::ParseAsCompactedShortOptions: result = Val_long(-986248193); break;
  case QCommandLineParser::ParseAsLongOptions: result = Val_long(33587549); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCommandLineParser::OptionsAfterPositionalArgumentsMode mlqt_QCommandLineParser_OptionsAfterPositionalArgumentsMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 988294649: return QCommandLineParser::ParseAsOptions;
  case -574027267: return QCommandLineParser::ParseAsPositionalArguments;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCommandLineParser::OptionsAfterPositionalArgumentsMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QCommandLineParser_OptionsAfterPositionalArgumentsMode_to_ocaml(const QCommandLineParser::OptionsAfterPositionalArgumentsMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCommandLineParser::ParseAsOptions: result = Val_long(988294649); break;
  case QCommandLineParser::ParseAsPositionalArguments: result = Val_long(-574027267); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextStream::RealNumberNotation mlqt_QTextStream_RealNumberNotation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 606873547: return QTextStream::SmartNotation;
  case 864357942: return QTextStream::FixedNotation;
  case 367126443: return QTextStream::ScientificNotation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextStream::RealNumberNotation)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextStream_RealNumberNotation_to_ocaml(const QTextStream::RealNumberNotation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextStream::SmartNotation: result = Val_long(606873547); break;
  case QTextStream::FixedNotation: result = Val_long(864357942); break;
  case QTextStream::ScientificNotation: result = Val_long(367126443); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextStream::FieldAlignment mlqt_QTextStream_FieldAlignment_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -163532468: return QTextStream::AlignLeft;
  case -110657801: return QTextStream::AlignRight;
  case -119772582: return QTextStream::AlignCenter;
  case -1070102153: return QTextStream::AlignAccountingStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextStream::FieldAlignment)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextStream_FieldAlignment_to_ocaml(const QTextStream::FieldAlignment& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextStream::AlignLeft: result = Val_long(-163532468); break;
  case QTextStream::AlignRight: result = Val_long(-110657801); break;
  case QTextStream::AlignCenter: result = Val_long(-119772582); break;
  case QTextStream::AlignAccountingStyle: result = Val_long(-1070102153); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextStream::Status mlqt_QTextStream_Status_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 17724: return QTextStream::Ok;
  case 890655059: return QTextStream::ReadPastEnd;
  case -416772927: return QTextStream::ReadCorruptData;
  case -517296164: return QTextStream::WriteFailed;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextStream::Status)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextStream_Status_to_ocaml(const QTextStream::Status& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextStream::Ok: result = Val_long(17724); break;
  case QTextStream::ReadPastEnd: result = Val_long(890655059); break;
  case QTextStream::ReadCorruptData: result = Val_long(-416772927); break;
  case QTextStream::WriteFailed: result = Val_long(-517296164); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextStream::NumberFlag mlqt_QTextStream_NumberFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 38365134: return QTextStream::ShowBase;
  case -736779643: return QTextStream::ForcePoint;
  case -211083352: return QTextStream::ForceSign;
  case -915675613: return QTextStream::UppercaseBase;
  case -926142280: return QTextStream::UppercaseDigits;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextStream::NumberFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextStream_NumberFlag_to_ocaml(const QTextStream::NumberFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextStream::ShowBase: result = Val_long(38365134); break;
  case QTextStream::ForcePoint: result = Val_long(-736779643); break;
  case QTextStream::ForceSign: result = Val_long(-211083352); break;
  case QTextStream::UppercaseBase: result = Val_long(-915675613); break;
  case QTextStream::UppercaseDigits: result = Val_long(-926142280); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDeadlineTimer::ForeverConstant mlqt_QDeadlineTimer_ForeverConstant_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 658904711: return QDeadlineTimer::Forever;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDeadlineTimer::ForeverConstant)Long_val(Field(v, 1));
  }
}

value& mlqt_QDeadlineTimer_ForeverConstant_to_ocaml(const QDeadlineTimer::ForeverConstant& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDeadlineTimer::Forever: result = Val_long(658904711); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDate::MonthNameType mlqt_QDate_MonthNameType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 104281125: return QDate::DateFormat;
  case 435204860: return QDate::StandaloneFormat;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDate::MonthNameType)Long_val(Field(v, 1));
  }
}

value& mlqt_QDate_MonthNameType_to_ocaml(const QDate::MonthNameType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDate::DateFormat: result = Val_long(104281125); break;
  case QDate::StandaloneFormat: result = Val_long(435204860); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLockFile::LockError mlqt_QLockFile_LockError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QLockFile::NoError;
  case -1046344064: return QLockFile::LockFailedError;
  case -378168295: return QLockFile::PermissionError;
  case -638627842: return QLockFile::UnknownError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLockFile::LockError)Long_val(Field(v, 1));
  }
}

value& mlqt_QLockFile_LockError_to_ocaml(const QLockFile::LockError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLockFile::NoError: result = Val_long(327055271); break;
  case QLockFile::LockFailedError: result = Val_long(-1046344064); break;
  case QLockFile::PermissionError: result = Val_long(-378168295); break;
  case QLockFile::UnknownError: result = Val_long(-638627842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSysInfo::Sizes mlqt_QSysInfo_Sizes_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -673105973: return QSysInfo::WordSize;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSysInfo::Sizes)Long_val(Field(v, 1));
  }
}

value& mlqt_QSysInfo_Sizes_to_ocaml(const QSysInfo::Sizes& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSysInfo::WordSize: result = Val_long(-673105973); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSysInfo::Endian mlqt_QSysInfo_Endian_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1037191845: return QSysInfo::BigEndian;
  case -812811695: return QSysInfo::LittleEndian;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSysInfo::Endian)Long_val(Field(v, 1));
  }
}

value& mlqt_QSysInfo_Endian_to_ocaml(const QSysInfo::Endian& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSysInfo::BigEndian: result = Val_long(-1037191845); break;
  case QSysInfo::LittleEndian: result = Val_long(-812811695); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QVariant::Type mlqt_QVariant_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 144245463: return QVariant::Invalid;
  case 737456202: return QVariant::Bool;
  case 3654863: return QVariant::Int;
  case 946268058: return QVariant::UInt;
  case -18833096: return QVariant::LongLong;
  case 151551629: return QVariant::ULongLong;
  case -413163727: return QVariant::Double;
  case 748194550: return QVariant::Char;
  case 3850876: return QVariant::Map;
  case 848054398: return QVariant::List;
  case -976970511: return QVariant::String;
  case -262098449: return QVariant::StringList;
  case -577298095: return QVariant::ByteArray;
  case -411969108: return QVariant::BitArray;
  case 758940238: return QVariant::Date;
  case 936769581: return QVariant::Time;
  case 868006267: return QVariant::DateTime;
  case 4252495: return QVariant::Url;
  case 240380090: return QVariant::Locale;
  case 914389316: return QVariant::Rect;
  case -102129022: return QVariant::RectF;
  case 925682913: return QVariant::Size;
  case 268859461: return QVariant::SizeF;
  case 848053268: return QVariant::Line;
  case 137317810: return QVariant::LineF;
  case -641915856: return QVariant::Point;
  case 734168598: return QVariant::PointF;
  case 889580489: return QVariant::RegExp;
  case -777571596: return QVariant::RegularExpression;
  case 803298286: return QVariant::Hash;
  case 1053703140: return QVariant::EasingCurve;
  case 948455003: return QVariant::Uuid;
  case 210503369: return QVariant::ModelIndex;
  case 243190784: return QVariant::PersistentModelIndex;
  case -1006710705: return QVariant::LastCoreType;
  case 781814255: return QVariant::Font;
  case -1052480579: return QVariant::Pixmap;
  case -869939110: return QVariant::Brush;
  case -578166461: return QVariant::Color;
  case 968145499: return QVariant::Palette;
  case -795439301: return QVariant::Image;
  case -538826150: return QVariant::Polygon;
  case 891368724: return QVariant::Region;
  case 631276559: return QVariant::Bitmap;
  case -209911050: return QVariant::Cursor;
  case 356791008: return QVariant::KeySequence;
  case 4000953: return QVariant::Pen;
  case -861333101: return QVariant::TextLength;
  case 724571108: return QVariant::TextFormat;
  case -262362527: return QVariant::Matrix;
  case -412742324: return QVariant::Transform;
  case -810605009: return QVariant::Matrix4x4;
  case -932212875: return QVariant::Vector2D;
  case -932212652: return QVariant::Vector3D;
  case -932212429: return QVariant::Vector4D;
  case 310055230: return QVariant::Quaternion;
  case 100852908: return QVariant::PolygonF;
  case 814486425: return QVariant::Icon;
  case 887454643: return QVariant::SizePolicy;
  case -377491771: return QVariant::UserType;
  case 973326416: return QVariant::LastType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QVariant::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QVariant_Type_to_ocaml(const QVariant::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QVariant::Invalid: result = Val_long(144245463); break;
  case QVariant::Bool: result = Val_long(737456202); break;
  case QVariant::Int: result = Val_long(3654863); break;
  case QVariant::UInt: result = Val_long(946268058); break;
  case QVariant::LongLong: result = Val_long(-18833096); break;
  case QVariant::ULongLong: result = Val_long(151551629); break;
  case QVariant::Double: result = Val_long(-413163727); break;
  case QVariant::Char: result = Val_long(748194550); break;
  case QVariant::Map: result = Val_long(3850876); break;
  case QVariant::List: result = Val_long(848054398); break;
  case QVariant::String: result = Val_long(-976970511); break;
  case QVariant::StringList: result = Val_long(-262098449); break;
  case QVariant::ByteArray: result = Val_long(-577298095); break;
  case QVariant::BitArray: result = Val_long(-411969108); break;
  case QVariant::Date: result = Val_long(758940238); break;
  case QVariant::Time: result = Val_long(936769581); break;
  case QVariant::DateTime: result = Val_long(868006267); break;
  case QVariant::Url: result = Val_long(4252495); break;
  case QVariant::Locale: result = Val_long(240380090); break;
  case QVariant::Rect: result = Val_long(914389316); break;
  case QVariant::RectF: result = Val_long(-102129022); break;
  case QVariant::Size: result = Val_long(925682913); break;
  case QVariant::SizeF: result = Val_long(268859461); break;
  case QVariant::Line: result = Val_long(848053268); break;
  case QVariant::LineF: result = Val_long(137317810); break;
  case QVariant::Point: result = Val_long(-641915856); break;
  case QVariant::PointF: result = Val_long(734168598); break;
  case QVariant::RegExp: result = Val_long(889580489); break;
  case QVariant::RegularExpression: result = Val_long(-777571596); break;
  case QVariant::Hash: result = Val_long(803298286); break;
  case QVariant::EasingCurve: result = Val_long(1053703140); break;
  case QVariant::Uuid: result = Val_long(948455003); break;
  case QVariant::ModelIndex: result = Val_long(210503369); break;
  case QVariant::PersistentModelIndex: result = Val_long(243190784); break;
  case QVariant::LastCoreType: result = Val_long(-1006710705); break;
  case QVariant::Font: result = Val_long(781814255); break;
  case QVariant::Pixmap: result = Val_long(-1052480579); break;
  case QVariant::Brush: result = Val_long(-869939110); break;
  case QVariant::Color: result = Val_long(-578166461); break;
  case QVariant::Palette: result = Val_long(968145499); break;
  case QVariant::Image: result = Val_long(-795439301); break;
  case QVariant::Polygon: result = Val_long(-538826150); break;
  case QVariant::Region: result = Val_long(891368724); break;
  case QVariant::Bitmap: result = Val_long(631276559); break;
  case QVariant::Cursor: result = Val_long(-209911050); break;
  case QVariant::KeySequence: result = Val_long(356791008); break;
  case QVariant::Pen: result = Val_long(4000953); break;
  case QVariant::TextLength: result = Val_long(-861333101); break;
  case QVariant::TextFormat: result = Val_long(724571108); break;
  case QVariant::Matrix: result = Val_long(-262362527); break;
  case QVariant::Transform: result = Val_long(-412742324); break;
  case QVariant::Matrix4x4: result = Val_long(-810605009); break;
  case QVariant::Vector2D: result = Val_long(-932212875); break;
  case QVariant::Vector3D: result = Val_long(-932212652); break;
  case QVariant::Vector4D: result = Val_long(-932212429); break;
  case QVariant::Quaternion: result = Val_long(310055230); break;
  case QVariant::PolygonF: result = Val_long(100852908); break;
  case QVariant::Icon: result = Val_long(814486425); break;
  case QVariant::SizePolicy: result = Val_long(887454643); break;
  case QVariant::UserType: result = Val_long(-377491771); break;
  case QVariant::LastType: result = Val_long(973326416); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextBoundaryFinder::BoundaryType mlqt_QTextBoundaryFinder_BoundaryType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -334056305: return QTextBoundaryFinder::Grapheme;
  case 970337770: return QTextBoundaryFinder::Word;
  case -64606013: return QTextBoundaryFinder::Sentence;
  case 848053268: return QTextBoundaryFinder::Line;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextBoundaryFinder::BoundaryType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextBoundaryFinder_BoundaryType_to_ocaml(const QTextBoundaryFinder::BoundaryType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextBoundaryFinder::Grapheme: result = Val_long(-334056305); break;
  case QTextBoundaryFinder::Word: result = Val_long(970337770); break;
  case QTextBoundaryFinder::Sentence: result = Val_long(-64606013); break;
  case QTextBoundaryFinder::Line: result = Val_long(848053268); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextBoundaryFinder::BoundaryReason mlqt_QTextBoundaryFinder_BoundaryReason_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 918792144: return QTextBoundaryFinder::NotAtBoundary;
  case -228778316: return QTextBoundaryFinder::BreakOpportunity;
  case 690888620: return QTextBoundaryFinder::StartOfItem;
  case 785012709: return QTextBoundaryFinder::EndOfItem;
  case 59128838: return QTextBoundaryFinder::MandatoryBreak;
  case 808059036: return QTextBoundaryFinder::SoftHyphen;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextBoundaryFinder::BoundaryReason)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextBoundaryFinder_BoundaryReason_to_ocaml(const QTextBoundaryFinder::BoundaryReason& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextBoundaryFinder::NotAtBoundary: result = Val_long(918792144); break;
  case QTextBoundaryFinder::BreakOpportunity: result = Val_long(-228778316); break;
  case QTextBoundaryFinder::StartOfItem: result = Val_long(690888620); break;
  case QTextBoundaryFinder::EndOfItem: result = Val_long(785012709); break;
  case QTextBoundaryFinder::MandatoryBreak: result = Val_long(59128838); break;
  case QTextBoundaryFinder::SoftHyphen: result = Val_long(808059036); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDir::Filter mlqt_QDir_Filter_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 759337638: return QDir::Dirs;
  case 331763287: return QDir::Files;
  case 431223881: return QDir::Drives;
  case -579676621: return QDir::NoSymLinks;
  case 951662159: return QDir::AllEntries;
  case 248709350: return QDir::TypeMask;
  case -684140528: return QDir::Readable;
  case -82819712: return QDir::Writable;
  case 764701162: return QDir::Executable;
  case -857561669: return QDir::PermissionMask;
  case -260466839: return QDir::Modified;
  case 19559306: return QDir::Hidden;
  case 662113039: return QDir::System;
  case -770922288: return QDir::AccessMask;
  case 436688935: return QDir::AllDirs;
  case -55300314: return QDir::CaseSensitive;
  case 852748456: return QDir::NoDot;
  case -607327551: return QDir::NoDotDot;
  case -800555025: return QDir::NoDotAndDotDot;
  case 787928825: return QDir::NoFilter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDir::Filter)Long_val(Field(v, 1));
  }
}

value& mlqt_QDir_Filter_to_ocaml(const QDir::Filter& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDir::Dirs: result = Val_long(759337638); break;
  case QDir::Files: result = Val_long(331763287); break;
  case QDir::Drives: result = Val_long(431223881); break;
  case QDir::NoSymLinks: result = Val_long(-579676621); break;
  case QDir::AllEntries: result = Val_long(951662159); break;
  case QDir::TypeMask: result = Val_long(248709350); break;
  case QDir::Readable: result = Val_long(-684140528); break;
  case QDir::Writable: result = Val_long(-82819712); break;
  case QDir::Executable: result = Val_long(764701162); break;
  case QDir::PermissionMask: result = Val_long(-857561669); break;
  case QDir::Modified: result = Val_long(-260466839); break;
  case QDir::Hidden: result = Val_long(19559306); break;
  case QDir::System: result = Val_long(662113039); break;
  case QDir::AccessMask: result = Val_long(-770922288); break;
  case QDir::AllDirs: result = Val_long(436688935); break;
  case QDir::CaseSensitive: result = Val_long(-55300314); break;
  case QDir::NoDot: result = Val_long(852748456); break;
  case QDir::NoDotDot: result = Val_long(-607327551); break;
  case QDir::NoDotAndDotDot: result = Val_long(-800555025); break;
  case QDir::NoFilter: result = Val_long(787928825); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDir::SortFlag mlqt_QDir_SortFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 869834347: return QDir::Name;
  case 936769581: return QDir::Time;
  case 925682913: return QDir::Size;
  case 204504694: return QDir::Unsorted;
  case 288684970: return QDir::DirsFirst;
  case -613973726: return QDir::Reversed;
  case 949221634: return QDir::IgnoreCase;
  case 1040061468: return QDir::DirsLast;
  case 182602756: return QDir::LocaleAware;
  case 937565914: return QDir::Type;
  case -796795809: return QDir::NoSort;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDir::SortFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QDir_SortFlag_to_ocaml(const QDir::SortFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDir::Name: result = Val_long(869834347); break;
  case QDir::Time: result = Val_long(936769581); break;
  case QDir::Size: result = Val_long(925682913); break;
  case QDir::Unsorted: result = Val_long(204504694); break;
  case QDir::DirsFirst: result = Val_long(288684970); break;
  case QDir::Reversed: result = Val_long(-613973726); break;
  case QDir::IgnoreCase: result = Val_long(949221634); break;
  case QDir::DirsLast: result = Val_long(1040061468); break;
  case QDir::LocaleAware: result = Val_long(182602756); break;
  case QDir::Type: result = Val_long(937565914); break;
  case QDir::NoSort: result = Val_long(-796795809); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMutex::RecursionMode mlqt_QMutex_RecursionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -141691707: return QMutex::NonRecursive;
  case -288715950: return QMutex::Recursive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMutex::RecursionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QMutex_RecursionMode_to_ocaml(const QMutex::RecursionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMutex::NonRecursive: result = Val_long(-141691707); break;
  case QMutex::Recursive: result = Val_long(-288715950); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractAnimation::Direction mlqt_QAbstractAnimation_Direction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 857475493: return QAbstractAnimation::Forward;
  case 13277187: return QAbstractAnimation::Backward;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractAnimation::Direction)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractAnimation_Direction_to_ocaml(const QAbstractAnimation::Direction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractAnimation::Forward: result = Val_long(857475493); break;
  case QAbstractAnimation::Backward: result = Val_long(13277187); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractAnimation::State mlqt_QAbstractAnimation_State_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 280164845: return QAbstractAnimation::Stopped;
  case 605598926: return QAbstractAnimation::Paused;
  case 951752159: return QAbstractAnimation::Running;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractAnimation::State)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractAnimation_State_to_ocaml(const QAbstractAnimation::State& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractAnimation::Stopped: result = Val_long(280164845); break;
  case QAbstractAnimation::Paused: result = Val_long(605598926); break;
  case QAbstractAnimation::Running: result = Val_long(951752159); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractAnimation::DeletionPolicy mlqt_QAbstractAnimation_DeletionPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 71352782: return QAbstractAnimation::KeepWhenStopped;
  case -629014552: return QAbstractAnimation::DeleteWhenStopped;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractAnimation::DeletionPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractAnimation_DeletionPolicy_to_ocaml(const QAbstractAnimation::DeletionPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractAnimation::KeepWhenStopped: result = Val_long(71352782); break;
  case QAbstractAnimation::DeleteWhenStopped: result = Val_long(-629014552); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QIODevice::OpenModeFlag mlqt_QIODevice_OpenModeFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 204453469: return QIODevice::NotOpen;
  case -883155966: return QIODevice::ReadOnly;
  case -197568053: return QIODevice::WriteOnly;
  case -1022125687: return QIODevice::ReadWrite;
  case -999795206: return QIODevice::Append;
  case 682326662: return QIODevice::Truncate;
  case 936573133: return QIODevice::Text;
  case 695419096: return QIODevice::Unbuffered;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QIODevice::OpenModeFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QIODevice_OpenModeFlag_to_ocaml(const QIODevice::OpenModeFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QIODevice::NotOpen: result = Val_long(204453469); break;
  case QIODevice::ReadOnly: result = Val_long(-883155966); break;
  case QIODevice::WriteOnly: result = Val_long(-197568053); break;
  case QIODevice::ReadWrite: result = Val_long(-1022125687); break;
  case QIODevice::Append: result = Val_long(-999795206); break;
  case QIODevice::Truncate: result = Val_long(682326662); break;
  case QIODevice::Text: result = Val_long(936573133); break;
  case QIODevice::Unbuffered: result = Val_long(695419096); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSettings::Status mlqt_QSettings_Status_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QSettings::NoError;
  case -384939164: return QSettings::AccessError;
  case 276151537: return QSettings::FormatError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSettings::Status)Long_val(Field(v, 1));
  }
}

value& mlqt_QSettings_Status_to_ocaml(const QSettings::Status& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSettings::NoError: result = Val_long(327055271); break;
  case QSettings::AccessError: result = Val_long(-384939164); break;
  case QSettings::FormatError: result = Val_long(276151537); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSettings::Scope mlqt_QSettings_Scope_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -998310103: return QSettings::UserScope;
  case -511549435: return QSettings::SystemScope;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSettings::Scope)Long_val(Field(v, 1));
  }
}

value& mlqt_QSettings_Scope_to_ocaml(const QSettings::Scope& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSettings::UserScope: result = Val_long(-998310103); break;
  case QSettings::SystemScope: result = Val_long(-511549435); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemModel::LayoutChangeHint mlqt_QAbstractItemModel_LayoutChangeHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1048604446: return QAbstractItemModel::NoLayoutChangeHint;
  case -944876869: return QAbstractItemModel::VerticalSortHint;
  case -388040407: return QAbstractItemModel::HorizontalSortHint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemModel::LayoutChangeHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemModel_LayoutChangeHint_to_ocaml(const QAbstractItemModel::LayoutChangeHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemModel::NoLayoutChangeHint: result = Val_long(-1048604446); break;
  case QAbstractItemModel::VerticalSortHint: result = Val_long(-944876869); break;
  case QAbstractItemModel::HorizontalSortHint: result = Val_long(-388040407); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QItemSelectionModel::SelectionFlag mlqt_QItemSelectionModel_SelectionFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 818363722: return QItemSelectionModel::NoUpdate;
  case -611786387: return QItemSelectionModel::Clear;
  case 516394780: return QItemSelectionModel::Select;
  case 59852125: return QItemSelectionModel::Deselect;
  case -1009241164: return QItemSelectionModel::Toggle;
  case 422888473: return QItemSelectionModel::Current;
  case 914891065: return QItemSelectionModel::Rows;
  case -1062546243: return QItemSelectionModel::Columns;
  case -527331203: return QItemSelectionModel::SelectCurrent;
  case -997118235: return QItemSelectionModel::ToggleCurrent;
  case -961892858: return QItemSelectionModel::ClearAndSelect;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QItemSelectionModel::SelectionFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QItemSelectionModel_SelectionFlag_to_ocaml(const QItemSelectionModel::SelectionFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QItemSelectionModel::NoUpdate: result = Val_long(818363722); break;
  case QItemSelectionModel::Clear: result = Val_long(-611786387); break;
  case QItemSelectionModel::Select: result = Val_long(516394780); break;
  case QItemSelectionModel::Deselect: result = Val_long(59852125); break;
  case QItemSelectionModel::Toggle: result = Val_long(-1009241164); break;
  case QItemSelectionModel::Current: result = Val_long(422888473); break;
  case QItemSelectionModel::Rows: result = Val_long(914891065); break;
  case QItemSelectionModel::Columns: result = Val_long(-1062546243); break;
  case QItemSelectionModel::SelectCurrent: result = Val_long(-527331203); break;
  case QItemSelectionModel::ToggleCurrent: result = Val_long(-997118235); break;
  case QItemSelectionModel::ClearAndSelect: result = Val_long(-961892858); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QEventLoop::ProcessEventsFlag mlqt_QEventLoop_ProcessEventsFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 111192826: return QEventLoop::AllEvents;
  case 943083678: return QEventLoop::ExcludeUserInputEvents;
  case 464416384: return QEventLoop::ExcludeSocketNotifiers;
  case 1007214882: return QEventLoop::WaitForMoreEvents;
  case -816325840: return QEventLoop::X11ExcludeTimers;
  case 931087919: return QEventLoop::EventLoopExec;
  case 768683161: return QEventLoop::DialogExec;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QEventLoop::ProcessEventsFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QEventLoop_ProcessEventsFlag_to_ocaml(const QEventLoop::ProcessEventsFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QEventLoop::AllEvents: result = Val_long(111192826); break;
  case QEventLoop::ExcludeUserInputEvents: result = Val_long(943083678); break;
  case QEventLoop::ExcludeSocketNotifiers: result = Val_long(464416384); break;
  case QEventLoop::WaitForMoreEvents: result = Val_long(1007214882); break;
  case QEventLoop::X11ExcludeTimers: result = Val_long(-816325840); break;
  case QEventLoop::EventLoopExec: result = Val_long(931087919); break;
  case QEventLoop::DialogExec: result = Val_long(768683161); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSharedMemory::AccessMode mlqt_QSharedMemory_AccessMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -883155966: return QSharedMemory::ReadOnly;
  case -1022125687: return QSharedMemory::ReadWrite;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSharedMemory::AccessMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QSharedMemory_AccessMode_to_ocaml(const QSharedMemory::AccessMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSharedMemory::ReadOnly: result = Val_long(-883155966); break;
  case QSharedMemory::ReadWrite: result = Val_long(-1022125687); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSharedMemory::SharedMemoryError mlqt_QSharedMemory_SharedMemoryError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QSharedMemory::NoError;
  case -130506774: return QSharedMemory::PermissionDenied;
  case 412452664: return QSharedMemory::InvalidSize;
  case 289746377: return QSharedMemory::KeyError;
  case 341195636: return QSharedMemory::AlreadyExists;
  case -296251313: return QSharedMemory::NotFound;
  case -807507011: return QSharedMemory::LockError;
  case -49916416: return QSharedMemory::OutOfResources;
  case -638627842: return QSharedMemory::UnknownError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSharedMemory::SharedMemoryError)Long_val(Field(v, 1));
  }
}

value& mlqt_QSharedMemory_SharedMemoryError_to_ocaml(const QSharedMemory::SharedMemoryError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSharedMemory::NoError: result = Val_long(327055271); break;
  case QSharedMemory::PermissionDenied: result = Val_long(-130506774); break;
  case QSharedMemory::InvalidSize: result = Val_long(412452664); break;
  case QSharedMemory::KeyError: result = Val_long(289746377); break;
  case QSharedMemory::AlreadyExists: result = Val_long(341195636); break;
  case QSharedMemory::NotFound: result = Val_long(-296251313); break;
  case QSharedMemory::LockError: result = Val_long(-807507011); break;
  case QSharedMemory::OutOfResources: result = Val_long(-49916416); break;
  case QSharedMemory::UnknownError: result = Val_long(-638627842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSocketNotifier::Type mlqt_QSocketNotifier_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 914388854: return QSocketNotifier::Read;
  case -477700929: return QSocketNotifier::Write;
  case -345182161: return QSocketNotifier::Exception;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSocketNotifier::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QSocketNotifier_Type_to_ocaml(const QSocketNotifier::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSocketNotifier::Read: result = Val_long(914388854); break;
  case QSocketNotifier::Write: result = Val_long(-477700929); break;
  case QSocketNotifier::Exception: result = Val_long(-345182161); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLibrary::LoadHint mlqt_QLibrary_LoadHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -102904435: return QLibrary::ResolveAllSymbolsHint;
  case -211467389: return QLibrary::ExportExternalSymbolsHint;
  case 830401085: return QLibrary::LoadArchiveMemberHint;
  case -18049282: return QLibrary::PreventUnloadHint;
  case 35842128: return QLibrary::DeepBindHint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLibrary::LoadHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QLibrary_LoadHint_to_ocaml(const QLibrary::LoadHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLibrary::ResolveAllSymbolsHint: result = Val_long(-102904435); break;
  case QLibrary::ExportExternalSymbolsHint: result = Val_long(-211467389); break;
  case QLibrary::LoadArchiveMemberHint: result = Val_long(830401085); break;
  case QLibrary::PreventUnloadHint: result = Val_long(-18049282); break;
  case QLibrary::DeepBindHint: result = Val_long(35842128); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractTransition::TransitionType mlqt_QAbstractTransition_TransitionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 552985568: return QAbstractTransition::ExternalTransition;
  case -855676078: return QAbstractTransition::InternalTransition;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractTransition::TransitionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractTransition_TransitionType_to_ocaml(const QAbstractTransition::TransitionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractTransition::ExternalTransition: result = Val_long(552985568); break;
  case QAbstractTransition::InternalTransition: result = Val_long(-855676078); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QThread::Priority mlqt_QThread_Priority_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 68247224: return QThread::IdlePriority;
  case -43051562: return QThread::LowestPriority;
  case -981870600: return QThread::LowPriority;
  case 607665355: return QThread::NormalPriority;
  case -32903930: return QThread::HighPriority;
  case -375710328: return QThread::HighestPriority;
  case -727631504: return QThread::TimeCriticalPriority;
  case -723626401: return QThread::InheritPriority;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QThread::Priority)Long_val(Field(v, 1));
  }
}

value& mlqt_QThread_Priority_to_ocaml(const QThread::Priority& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QThread::IdlePriority: result = Val_long(68247224); break;
  case QThread::LowestPriority: result = Val_long(-43051562); break;
  case QThread::LowPriority: result = Val_long(-981870600); break;
  case QThread::NormalPriority: result = Val_long(607665355); break;
  case QThread::HighPriority: result = Val_long(-32903930); break;
  case QThread::HighestPriority: result = Val_long(-375710328); break;
  case QThread::TimeCriticalPriority: result = Val_long(-727631504); break;
  case QThread::InheritPriority: result = Val_long(-723626401); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTimeLine::State mlqt_QTimeLine_State_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 821254476: return QTimeLine::NotRunning;
  case 605598926: return QTimeLine::Paused;
  case 951752159: return QTimeLine::Running;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTimeLine::State)Long_val(Field(v, 1));
  }
}

value& mlqt_QTimeLine_State_to_ocaml(const QTimeLine::State& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTimeLine::NotRunning: result = Val_long(821254476); break;
  case QTimeLine::Paused: result = Val_long(605598926); break;
  case QTimeLine::Running: result = Val_long(951752159); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTimeLine::Direction mlqt_QTimeLine_Direction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 857475493: return QTimeLine::Forward;
  case 13277187: return QTimeLine::Backward;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTimeLine::Direction)Long_val(Field(v, 1));
  }
}

value& mlqt_QTimeLine_Direction_to_ocaml(const QTimeLine::Direction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTimeLine::Forward: result = Val_long(857475493); break;
  case QTimeLine::Backward: result = Val_long(13277187); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTimeLine::CurveShape mlqt_QTimeLine_CurveShape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 602525724: return QTimeLine::EaseInCurve;
  case 308120431: return QTimeLine::EaseOutCurve;
  case 724105204: return QTimeLine::EaseInOutCurve;
  case 218891370: return QTimeLine::LinearCurve;
  case -71299326: return QTimeLine::SineCurve;
  case -194168106: return QTimeLine::CosineCurve;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTimeLine::CurveShape)Long_val(Field(v, 1));
  }
}

value& mlqt_QTimeLine_CurveShape_to_ocaml(const QTimeLine::CurveShape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTimeLine::EaseInCurve: result = Val_long(602525724); break;
  case QTimeLine::EaseOutCurve: result = Val_long(308120431); break;
  case QTimeLine::EaseInOutCurve: result = Val_long(724105204); break;
  case QTimeLine::LinearCurve: result = Val_long(218891370); break;
  case QTimeLine::SineCurve: result = Val_long(-71299326); break;
  case QTimeLine::CosineCurve: result = Val_long(-194168106); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QHistoryState::HistoryType mlqt_QHistoryState_HistoryType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 434458624: return QHistoryState::ShallowHistory;
  case 157188200: return QHistoryState::DeepHistory;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QHistoryState::HistoryType)Long_val(Field(v, 1));
  }
}

value& mlqt_QHistoryState_HistoryType_to_ocaml(const QHistoryState::HistoryType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QHistoryState::ShallowHistory: result = Val_long(434458624); break;
  case QHistoryState::DeepHistory: result = Val_long(157188200); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QState::ChildMode mlqt_QState_ChildMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -349463392: return QState::ExclusiveStates;
  case -748201079: return QState::ParallelStates;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QState::ChildMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QState_ChildMode_to_ocaml(const QState::ChildMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QState::ExclusiveStates: result = Val_long(-349463392); break;
  case QState::ParallelStates: result = Val_long(-748201079); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QState::RestorePolicy mlqt_QState_RestorePolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -118284048: return QState::DontRestoreProperties;
  case -522087231: return QState::RestoreProperties;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QState::RestorePolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QState_RestorePolicy_to_ocaml(const QState::RestorePolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QState::DontRestoreProperties: result = Val_long(-118284048); break;
  case QState::RestoreProperties: result = Val_long(-522087231); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDevice::FileError mlqt_QFileDevice_FileError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QFileDevice::NoError;
  case -438044558: return QFileDevice::ReadError;
  case -23278967: return QFileDevice::WriteError;
  case -483034812: return QFileDevice::FatalError;
  case -362937350: return QFileDevice::ResourceError;
  case 136452990: return QFileDevice::OpenError;
  case -864152040: return QFileDevice::AbortError;
  case 379257255: return QFileDevice::TimeOutError;
  case 807689393: return QFileDevice::UnspecifiedError;
  case -711966524: return QFileDevice::RemoveError;
  case 293486410: return QFileDevice::RenameError;
  case 622388799: return QFileDevice::PositionError;
  case 375383316: return QFileDevice::ResizeError;
  case -656950076: return QFileDevice::PermissionsError;
  case 452448179: return QFileDevice::CopyError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDevice::FileError)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDevice_FileError_to_ocaml(const QFileDevice::FileError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDevice::NoError: result = Val_long(327055271); break;
  case QFileDevice::ReadError: result = Val_long(-438044558); break;
  case QFileDevice::WriteError: result = Val_long(-23278967); break;
  case QFileDevice::FatalError: result = Val_long(-483034812); break;
  case QFileDevice::ResourceError: result = Val_long(-362937350); break;
  case QFileDevice::OpenError: result = Val_long(136452990); break;
  case QFileDevice::AbortError: result = Val_long(-864152040); break;
  case QFileDevice::TimeOutError: result = Val_long(379257255); break;
  case QFileDevice::UnspecifiedError: result = Val_long(807689393); break;
  case QFileDevice::RemoveError: result = Val_long(-711966524); break;
  case QFileDevice::RenameError: result = Val_long(293486410); break;
  case QFileDevice::PositionError: result = Val_long(622388799); break;
  case QFileDevice::ResizeError: result = Val_long(375383316); break;
  case QFileDevice::PermissionsError: result = Val_long(-656950076); break;
  case QFileDevice::CopyError: result = Val_long(452448179); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDevice::Permission mlqt_QFileDevice_Permission_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 724616413: return QFileDevice::ReadOwner;
  case -1008101644: return QFileDevice::WriteOwner;
  case 374859361: return QFileDevice::ExeOwner;
  case -816371487: return QFileDevice::ReadUser;
  case -130783574: return QFileDevice::WriteUser;
  case 270246877: return QFileDevice::ExeUser;
  case 212787177: return QFileDevice::ReadGroup;
  case 627552768: return QFileDevice::WriteGroup;
  case -136969875: return QFileDevice::ExeGroup;
  case 691049338: return QFileDevice::ReadOther;
  case -1041668719: return QFileDevice::WriteOther;
  case 341292286: return QFileDevice::ExeOther;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDevice::Permission)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDevice_Permission_to_ocaml(const QFileDevice::Permission& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDevice::ReadOwner: result = Val_long(724616413); break;
  case QFileDevice::WriteOwner: result = Val_long(-1008101644); break;
  case QFileDevice::ExeOwner: result = Val_long(374859361); break;
  case QFileDevice::ReadUser: result = Val_long(-816371487); break;
  case QFileDevice::WriteUser: result = Val_long(-130783574); break;
  case QFileDevice::ExeUser: result = Val_long(270246877); break;
  case QFileDevice::ReadGroup: result = Val_long(212787177); break;
  case QFileDevice::WriteGroup: result = Val_long(627552768); break;
  case QFileDevice::ExeGroup: result = Val_long(-136969875); break;
  case QFileDevice::ReadOther: result = Val_long(691049338); break;
  case QFileDevice::WriteOther: result = Val_long(-1041668719); break;
  case QFileDevice::ExeOther: result = Val_long(341292286); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDevice::FileHandleFlag mlqt_QFileDevice_FileHandleFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1059827151: return QFileDevice::AutoCloseHandle;
  case 368144463: return QFileDevice::DontCloseHandle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDevice::FileHandleFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDevice_FileHandleFlag_to_ocaml(const QFileDevice::FileHandleFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDevice::AutoCloseHandle: result = Val_long(-1059827151); break;
  case QFileDevice::DontCloseHandle: result = Val_long(368144463); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDevice::MemoryMapFlags mlqt_QFileDevice_MemoryMapFlags_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1069339901: return QFileDevice::NoOptions;
  case 972507324: return QFileDevice::MapPrivateOption;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDevice::MemoryMapFlags)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDevice_MemoryMapFlags_to_ocaml(const QFileDevice::MemoryMapFlags& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDevice::NoOptions: result = Val_long(1069339901); break;
  case QFileDevice::MapPrivateOption: result = Val_long(972507324); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::ProcessError mlqt_QProcess_ProcessError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 631461002: return QProcess::FailedToStart;
  case 486426598: return QProcess::Crashed;
  case -777516713: return QProcess::Timedout;
  case -438044558: return QProcess::ReadError;
  case -23278967: return QProcess::WriteError;
  case -638627842: return QProcess::UnknownError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::ProcessError)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_ProcessError_to_ocaml(const QProcess::ProcessError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::FailedToStart: result = Val_long(631461002); break;
  case QProcess::Crashed: result = Val_long(486426598); break;
  case QProcess::Timedout: result = Val_long(-777516713); break;
  case QProcess::ReadError: result = Val_long(-438044558); break;
  case QProcess::WriteError: result = Val_long(-23278967); break;
  case QProcess::UnknownError: result = Val_long(-638627842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::ProcessState mlqt_QProcess_ProcessState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 821254476: return QProcess::NotRunning;
  case 475905504: return QProcess::Starting;
  case 951752159: return QProcess::Running;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::ProcessState)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_ProcessState_to_ocaml(const QProcess::ProcessState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::NotRunning: result = Val_long(821254476); break;
  case QProcess::Starting: result = Val_long(475905504); break;
  case QProcess::Running: result = Val_long(951752159); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::ProcessChannel mlqt_QProcess_ProcessChannel_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 84138558: return QProcess::StandardOutput;
  case -177408213: return QProcess::StandardError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::ProcessChannel)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_ProcessChannel_to_ocaml(const QProcess::ProcessChannel& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::StandardOutput: result = Val_long(84138558); break;
  case QProcess::StandardError: result = Val_long(-177408213); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::ProcessChannelMode mlqt_QProcess_ProcessChannelMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 818543859: return QProcess::SeparateChannels;
  case 1008616764: return QProcess::MergedChannels;
  case 394993588: return QProcess::ForwardedChannels;
  case 409988062: return QProcess::ForwardedOutputChannel;
  case 512679231: return QProcess::ForwardedErrorChannel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::ProcessChannelMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_ProcessChannelMode_to_ocaml(const QProcess::ProcessChannelMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::SeparateChannels: result = Val_long(818543859); break;
  case QProcess::MergedChannels: result = Val_long(1008616764); break;
  case QProcess::ForwardedChannels: result = Val_long(394993588); break;
  case QProcess::ForwardedOutputChannel: result = Val_long(409988062); break;
  case QProcess::ForwardedErrorChannel: result = Val_long(512679231); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::InputChannelMode mlqt_QProcess_InputChannelMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -424590664: return QProcess::ManagedInputChannel;
  case 93016381: return QProcess::ForwardedInputChannel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::InputChannelMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_InputChannelMode_to_ocaml(const QProcess::InputChannelMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::ManagedInputChannel: result = Val_long(-424590664); break;
  case QProcess::ForwardedInputChannel: result = Val_long(93016381); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProcess::ExitStatus mlqt_QProcess_ExitStatus_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -531416827: return QProcess::NormalExit;
  case -101367163: return QProcess::CrashExit;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProcess::ExitStatus)Long_val(Field(v, 1));
  }
}

value& mlqt_QProcess_ExitStatus_to_ocaml(const QProcess::ExitStatus& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProcess::NormalExit: result = Val_long(-531416827); break;
  case QProcess::CrashExit: result = Val_long(-101367163); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStateMachine::EventPriority mlqt_QStateMachine_EventPriority_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 607665355: return QStateMachine::NormalPriority;
  case -32903930: return QStateMachine::HighPriority;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStateMachine::EventPriority)Long_val(Field(v, 1));
  }
}

value& mlqt_QStateMachine_EventPriority_to_ocaml(const QStateMachine::EventPriority& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStateMachine::NormalPriority: result = Val_long(607665355); break;
  case QStateMachine::HighPriority: result = Val_long(-32903930); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStateMachine::Error mlqt_QStateMachine_Error_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 327055271: return QStateMachine::NoError;
  case 5965818: return QStateMachine::NoInitialStateError;
  case -917910603: return QStateMachine::NoDefaultStateInHistoryStateError;
  case 395797929: return QStateMachine::NoCommonAncestorForTransitionError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStateMachine::Error)Long_val(Field(v, 1));
  }
}

value& mlqt_QStateMachine_Error_to_ocaml(const QStateMachine::Error& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStateMachine::NoError: result = Val_long(327055271); break;
  case QStateMachine::NoInitialStateError: result = Val_long(5965818); break;
  case QStateMachine::NoDefaultStateInHistoryStateError: result = Val_long(-917910603); break;
  case QStateMachine::NoCommonAncestorForTransitionError: result = Val_long(395797929); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::GlobalColor mlqt_Qt_GlobalColor_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -964246163: return Qt::color0;
  case -964246162: return Qt::color1;
  case 888264127: return Qt::black;
  case -910341463: return Qt::white;
  case -114637959: return Qt::darkGray;
  case -999567389: return Qt::gray;
  case 1032433625: return Qt::lightGray;
  case 5691729: return Qt::red;
  case 434966211: return Qt::green;
  case -1055309158: return Qt::blue;
  case -1043577565: return Qt::cyan;
  case 245217833: return Qt::magenta;
  case -799236236: return Qt::yellow;
  case -240719237: return Qt::darkRed;
  case 205733485: return Qt::darkGreen;
  case -170379728: return Qt::darkBlue;
  case -158648135: return Qt::darkCyan;
  case -425809837: return Qt::darkMagenta;
  case -378526582: return Qt::darkYellow;
  case 582626130: return Qt::transparent;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::GlobalColor)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_GlobalColor_to_ocaml(const Qt::GlobalColor& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::color0: result = Val_long(-964246163); break;
  case Qt::color1: result = Val_long(-964246162); break;
  case Qt::black: result = Val_long(888264127); break;
  case Qt::white: result = Val_long(-910341463); break;
  case Qt::darkGray: result = Val_long(-114637959); break;
  case Qt::gray: result = Val_long(-999567389); break;
  case Qt::lightGray: result = Val_long(1032433625); break;
  case Qt::red: result = Val_long(5691729); break;
  case Qt::green: result = Val_long(434966211); break;
  case Qt::blue: result = Val_long(-1055309158); break;
  case Qt::cyan: result = Val_long(-1043577565); break;
  case Qt::magenta: result = Val_long(245217833); break;
  case Qt::yellow: result = Val_long(-799236236); break;
  case Qt::darkRed: result = Val_long(-240719237); break;
  case Qt::darkGreen: result = Val_long(205733485); break;
  case Qt::darkBlue: result = Val_long(-170379728); break;
  case Qt::darkCyan: result = Val_long(-158648135); break;
  case Qt::darkMagenta: result = Val_long(-425809837); break;
  case Qt::darkYellow: result = Val_long(-378526582); break;
  case Qt::transparent: result = Val_long(582626130); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::KeyboardModifier mlqt_Qt_KeyboardModifier_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -36264744: return Qt::NoModifier;
  case -772790823: return Qt::ShiftModifier;
  case -602067020: return Qt::ControlModifier;
  case -574555776: return Qt::AltModifier;
  case 503642972: return Qt::MetaModifier;
  case 897627307: return Qt::KeypadModifier;
  case -62700310: return Qt::GroupSwitchModifier;
  case -331312310: return Qt::KeyboardModifierMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::KeyboardModifier)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_KeyboardModifier_to_ocaml(const Qt::KeyboardModifier& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoModifier: result = Val_long(-36264744); break;
  case Qt::ShiftModifier: result = Val_long(-772790823); break;
  case Qt::ControlModifier: result = Val_long(-602067020); break;
  case Qt::AltModifier: result = Val_long(-574555776); break;
  case Qt::MetaModifier: result = Val_long(503642972); break;
  case Qt::KeypadModifier: result = Val_long(897627307); break;
  case Qt::GroupSwitchModifier: result = Val_long(-62700310); break;
  case Qt::KeyboardModifierMask: result = Val_long(-331312310); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Modifier mlqt_Qt_Modifier_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 857346757: return Qt::META;
  case -99539870: return Qt::SHIFT;
  case 747196587: return Qt::CTRL;
  case 3249417: return Qt::ALT;
  case 929250836: return Qt::MODIFIER_MASK;
  case -658170938: return Qt::UNICODE_ACCEL;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Modifier)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Modifier_to_ocaml(const Qt::Modifier& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::META: result = Val_long(857346757); break;
  case Qt::SHIFT: result = Val_long(-99539870); break;
  case Qt::CTRL: result = Val_long(747196587); break;
  case Qt::ALT: result = Val_long(3249417); break;
  case Qt::MODIFIER_MASK: result = Val_long(929250836); break;
  case Qt::UNICODE_ACCEL: result = Val_long(-658170938); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::MouseButton mlqt_Qt_MouseButton_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 60954931: return Qt::NoButton;
  case -6151815: return Qt::LeftButton;
  case 664258254: return Qt::RightButton;
  case 1021748039: return Qt::MiddleButton;
  case 253447065: return Qt::BackButton;
  case 219359607: return Qt::ForwardButton;
  case 662625079: return Qt::TaskButton;
  case -167928462: return Qt::ExtraButton4;
  case -167928461: return Qt::ExtraButton5;
  case -167928460: return Qt::ExtraButton6;
  case -167928459: return Qt::ExtraButton7;
  case -167928458: return Qt::ExtraButton8;
  case -167928457: return Qt::ExtraButton9;
  case -940825631: return Qt::ExtraButton10;
  case -940825630: return Qt::ExtraButton11;
  case -940825629: return Qt::ExtraButton12;
  case -940825628: return Qt::ExtraButton13;
  case -940825627: return Qt::ExtraButton14;
  case -940825626: return Qt::ExtraButton15;
  case -940825625: return Qt::ExtraButton16;
  case -940825624: return Qt::ExtraButton17;
  case -940825623: return Qt::ExtraButton18;
  case -940825622: return Qt::ExtraButton19;
  case -940825408: return Qt::ExtraButton20;
  case -940825407: return Qt::ExtraButton21;
  case -940825406: return Qt::ExtraButton22;
  case -940825405: return Qt::ExtraButton23;
  case -940825404: return Qt::ExtraButton24;
  case 164584256: return Qt::AllButtons;
  case 596365923: return Qt::MouseButtonMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::MouseButton)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_MouseButton_to_ocaml(const Qt::MouseButton& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoButton: result = Val_long(60954931); break;
  case Qt::LeftButton: result = Val_long(-6151815); break;
  case Qt::RightButton: result = Val_long(664258254); break;
  case Qt::MiddleButton: result = Val_long(1021748039); break;
  case Qt::BackButton: result = Val_long(253447065); break;
  case Qt::ForwardButton: result = Val_long(219359607); break;
  case Qt::TaskButton: result = Val_long(662625079); break;
  case Qt::ExtraButton4: result = Val_long(-167928462); break;
  case Qt::ExtraButton5: result = Val_long(-167928461); break;
  case Qt::ExtraButton6: result = Val_long(-167928460); break;
  case Qt::ExtraButton7: result = Val_long(-167928459); break;
  case Qt::ExtraButton8: result = Val_long(-167928458); break;
  case Qt::ExtraButton9: result = Val_long(-167928457); break;
  case Qt::ExtraButton10: result = Val_long(-940825631); break;
  case Qt::ExtraButton11: result = Val_long(-940825630); break;
  case Qt::ExtraButton12: result = Val_long(-940825629); break;
  case Qt::ExtraButton13: result = Val_long(-940825628); break;
  case Qt::ExtraButton14: result = Val_long(-940825627); break;
  case Qt::ExtraButton15: result = Val_long(-940825626); break;
  case Qt::ExtraButton16: result = Val_long(-940825625); break;
  case Qt::ExtraButton17: result = Val_long(-940825624); break;
  case Qt::ExtraButton18: result = Val_long(-940825623); break;
  case Qt::ExtraButton19: result = Val_long(-940825622); break;
  case Qt::ExtraButton20: result = Val_long(-940825408); break;
  case Qt::ExtraButton21: result = Val_long(-940825407); break;
  case Qt::ExtraButton22: result = Val_long(-940825406); break;
  case Qt::ExtraButton23: result = Val_long(-940825405); break;
  case Qt::ExtraButton24: result = Val_long(-940825404); break;
  case Qt::AllButtons: result = Val_long(164584256); break;
  case Qt::MouseButtonMask: result = Val_long(596365923); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Orientation mlqt_Qt_Orientation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 208994564: return Qt::Horizontal;
  case -1010337642: return Qt::Vertical;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Orientation)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Orientation_to_ocaml(const Qt::Orientation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::Horizontal: result = Val_long(208994564); break;
  case Qt::Vertical: result = Val_long(-1010337642); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::FocusPolicy mlqt_Qt_FocusPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 618531767: return Qt::NoFocus;
  case -857760413: return Qt::TabFocus;
  case 1002033808: return Qt::ClickFocus;
  case -890415647: return Qt::StrongFocus;
  case -897446563: return Qt::WheelFocus;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::FocusPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_FocusPolicy_to_ocaml(const Qt::FocusPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoFocus: result = Val_long(618531767); break;
  case Qt::TabFocus: result = Val_long(-857760413); break;
  case Qt::ClickFocus: result = Val_long(1002033808); break;
  case Qt::StrongFocus: result = Val_long(-890415647); break;
  case Qt::WheelFocus: result = Val_long(-897446563); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TabFocusBehavior mlqt_Qt_TabFocusBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -633558332: return Qt::NoTabFocus;
  case -636357050: return Qt::TabFocusTextControls;
  case 236707575: return Qt::TabFocusListControls;
  case -336772076: return Qt::TabFocusAllControls;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TabFocusBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TabFocusBehavior_to_ocaml(const Qt::TabFocusBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoTabFocus: result = Val_long(-633558332); break;
  case Qt::TabFocusTextControls: result = Val_long(-636357050); break;
  case Qt::TabFocusListControls: result = Val_long(236707575); break;
  case Qt::TabFocusAllControls: result = Val_long(-336772076); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::SortOrder mlqt_Qt_SortOrder_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -645322826: return Qt::AscendingOrder;
  case -859877290: return Qt::DescendingOrder;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::SortOrder)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_SortOrder_to_ocaml(const Qt::SortOrder& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AscendingOrder: result = Val_long(-645322826); break;
  case Qt::DescendingOrder: result = Val_long(-859877290); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TileRule mlqt_Qt_TileRule_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -254561357: return Qt::StretchTile;
  case 168942665: return Qt::RepeatTile;
  case 648810108: return Qt::RoundTile;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TileRule)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TileRule_to_ocaml(const Qt::TileRule& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::StretchTile: result = Val_long(-254561357); break;
  case Qt::RepeatTile: result = Val_long(168942665); break;
  case Qt::RoundTile: result = Val_long(648810108); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::AlignmentFlag mlqt_Qt_AlignmentFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -163532468: return Qt::AlignLeft;
  case -110657801: return Qt::AlignRight;
  case -851277768: return Qt::AlignHCenter;
  case 835751723: return Qt::AlignJustify;
  case -321585604: return Qt::AlignAbsolute;
  case -112208798: return Qt::AlignHorizontal_Mask;
  case 596724976: return Qt::AlignTop;
  case -663082128: return Qt::AlignBottom;
  case 326043334: return Qt::AlignVCenter;
  case 979831882: return Qt::AlignBaseline;
  case 312633040: return Qt::AlignVertical_Mask;
  case -119772582: return Qt::AlignCenter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::AlignmentFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_AlignmentFlag_to_ocaml(const Qt::AlignmentFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AlignLeft: result = Val_long(-163532468); break;
  case Qt::AlignRight: result = Val_long(-110657801); break;
  case Qt::AlignHCenter: result = Val_long(-851277768); break;
  case Qt::AlignJustify: result = Val_long(835751723); break;
  case Qt::AlignAbsolute: result = Val_long(-321585604); break;
  case Qt::AlignHorizontal_Mask: result = Val_long(-112208798); break;
  case Qt::AlignTop: result = Val_long(596724976); break;
  case Qt::AlignBottom: result = Val_long(-663082128); break;
  case Qt::AlignVCenter: result = Val_long(326043334); break;
  case Qt::AlignBaseline: result = Val_long(979831882); break;
  case Qt::AlignVertical_Mask: result = Val_long(312633040); break;
  case Qt::AlignCenter: result = Val_long(-119772582); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TextFlag mlqt_Qt_TextFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -790794807: return Qt::TextSingleLine;
  case -831950354: return Qt::TextDontClip;
  case -530063579: return Qt::TextExpandTabs;
  case 441051084: return Qt::TextShowMnemonic;
  case -43458911: return Qt::TextWordWrap;
  case -278150702: return Qt::TextWrapAnywhere;
  case -838398129: return Qt::TextDontPrint;
  case -636974812: return Qt::TextIncludeTrailingSpaces;
  case 801248401: return Qt::TextHideMnemonic;
  case 835284894: return Qt::TextJustificationForced;
  case -778322468: return Qt::TextForceLeftToRight;
  case 51275488: return Qt::TextForceRightToLeft;
  case -333453560: return Qt::TextLongestVariant;
  case 268696649: return Qt::TextBypassShaping;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TextFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TextFlag_to_ocaml(const Qt::TextFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TextSingleLine: result = Val_long(-790794807); break;
  case Qt::TextDontClip: result = Val_long(-831950354); break;
  case Qt::TextExpandTabs: result = Val_long(-530063579); break;
  case Qt::TextShowMnemonic: result = Val_long(441051084); break;
  case Qt::TextWordWrap: result = Val_long(-43458911); break;
  case Qt::TextWrapAnywhere: result = Val_long(-278150702); break;
  case Qt::TextDontPrint: result = Val_long(-838398129); break;
  case Qt::TextIncludeTrailingSpaces: result = Val_long(-636974812); break;
  case Qt::TextHideMnemonic: result = Val_long(801248401); break;
  case Qt::TextJustificationForced: result = Val_long(835284894); break;
  case Qt::TextForceLeftToRight: result = Val_long(-778322468); break;
  case Qt::TextForceRightToLeft: result = Val_long(51275488); break;
  case Qt::TextLongestVariant: result = Val_long(-333453560); break;
  case Qt::TextBypassShaping: result = Val_long(268696649); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TextElideMode mlqt_Qt_TextElideMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -531036246: return Qt::ElideLeft;
  case -459621671: return Qt::ElideRight;
  case 553730488: return Qt::ElideMiddle;
  case -508358053: return Qt::ElideNone;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TextElideMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TextElideMode_to_ocaml(const Qt::TextElideMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ElideLeft: result = Val_long(-531036246); break;
  case Qt::ElideRight: result = Val_long(-459621671); break;
  case Qt::ElideMiddle: result = Val_long(553730488); break;
  case Qt::ElideNone: result = Val_long(-508358053); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WhiteSpaceMode mlqt_Qt_WhiteSpaceMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -569437308: return Qt::WhiteSpaceNormal;
  case -378670426: return Qt::WhiteSpacePre;
  case -868606968: return Qt::WhiteSpaceNoWrap;
  case 707410672: return Qt::WhiteSpaceModeUndefined;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WhiteSpaceMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WhiteSpaceMode_to_ocaml(const Qt::WhiteSpaceMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::WhiteSpaceNormal: result = Val_long(-569437308); break;
  case Qt::WhiteSpacePre: result = Val_long(-378670426); break;
  case Qt::WhiteSpaceNoWrap: result = Val_long(-868606968); break;
  case Qt::WhiteSpaceModeUndefined: result = Val_long(707410672); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::HitTestAccuracy mlqt_Qt_HitTestAccuracy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -19556108: return Qt::ExactHit;
  case -71756599: return Qt::FuzzyHit;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::HitTestAccuracy)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_HitTestAccuracy_to_ocaml(const Qt::HitTestAccuracy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ExactHit: result = Val_long(-19556108); break;
  case Qt::FuzzyHit: result = Val_long(-71756599); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WindowType mlqt_Qt_WindowType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 8856548: return Qt::Widget;
  case 119605264: return Qt::Window;
  case -439912216: return Qt::Dialog;
  case 256725631: return Qt::Sheet;
  case 342557073: return Qt::Drawer;
  case -641566196: return Qt::Popup;
  case 937068408: return Qt::Tool;
  case 935693507: return Qt::ToolTip;
  case -778697645: return Qt::SplashScreen;
  case -337252932: return Qt::Desktop;
  case -89411216: return Qt::SubWindow;
  case -1028001276: return Qt::ForeignWindow;
  case -228760985: return Qt::CoverWindow;
  case 518244801: return Qt::WindowType_Mask;
  case -328996505: return Qt::MSWindowsFixedSizeDialogHint;
  case -853040568: return Qt::MSWindowsOwnDC;
  case -694605540: return Qt::BypassWindowManagerHint;
  case 550296349: return Qt::FramelessWindowHint;
  case -273579761: return Qt::WindowTitleHint;
  case -488153851: return Qt::WindowSystemMenuHint;
  case -549801593: return Qt::WindowMinimizeButtonHint;
  case 259898549: return Qt::WindowMaximizeButtonHint;
  case 388210470: return Qt::WindowMinMaxButtonsHint;
  case -518120743: return Qt::WindowContextHelpButtonHint;
  case 410359158: return Qt::WindowShadeButtonHint;
  case -658647629: return Qt::WindowStaysOnTopHint;
  case 395349891: return Qt::WindowTransparentForInput;
  case 610223280: return Qt::WindowOverridesSystemGestures;
  case 137175078: return Qt::WindowDoesNotAcceptFocus;
  case 1005996812: return Qt::MaximizeUsingFullscreenGeometryHint;
  case -606275686: return Qt::CustomizeWindowHint;
  case -144932997: return Qt::WindowStaysOnBottomHint;
  case -30461887: return Qt::WindowCloseButtonHint;
  case 1052645141: return Qt::MacWindowToolBarButtonHint;
  case 355976287: return Qt::BypassGraphicsProxyWidget;
  case -580304153: return Qt::NoDropShadowWindowHint;
  case -957350172: return Qt::WindowFullscreenButtonHint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WindowType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WindowType_to_ocaml(const Qt::WindowType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::Widget: result = Val_long(8856548); break;
  case Qt::Window: result = Val_long(119605264); break;
  case Qt::Dialog: result = Val_long(-439912216); break;
  case Qt::Sheet: result = Val_long(256725631); break;
  case Qt::Drawer: result = Val_long(342557073); break;
  case Qt::Popup: result = Val_long(-641566196); break;
  case Qt::Tool: result = Val_long(937068408); break;
  case Qt::ToolTip: result = Val_long(935693507); break;
  case Qt::SplashScreen: result = Val_long(-778697645); break;
  case Qt::Desktop: result = Val_long(-337252932); break;
  case Qt::SubWindow: result = Val_long(-89411216); break;
  case Qt::ForeignWindow: result = Val_long(-1028001276); break;
  case Qt::CoverWindow: result = Val_long(-228760985); break;
  case Qt::WindowType_Mask: result = Val_long(518244801); break;
  case Qt::MSWindowsFixedSizeDialogHint: result = Val_long(-328996505); break;
  case Qt::MSWindowsOwnDC: result = Val_long(-853040568); break;
  case Qt::BypassWindowManagerHint: result = Val_long(-694605540); break;
  case Qt::FramelessWindowHint: result = Val_long(550296349); break;
  case Qt::WindowTitleHint: result = Val_long(-273579761); break;
  case Qt::WindowSystemMenuHint: result = Val_long(-488153851); break;
  case Qt::WindowMinimizeButtonHint: result = Val_long(-549801593); break;
  case Qt::WindowMaximizeButtonHint: result = Val_long(259898549); break;
  case Qt::WindowMinMaxButtonsHint: result = Val_long(388210470); break;
  case Qt::WindowContextHelpButtonHint: result = Val_long(-518120743); break;
  case Qt::WindowShadeButtonHint: result = Val_long(410359158); break;
  case Qt::WindowStaysOnTopHint: result = Val_long(-658647629); break;
  case Qt::WindowTransparentForInput: result = Val_long(395349891); break;
  case Qt::WindowOverridesSystemGestures: result = Val_long(610223280); break;
  case Qt::WindowDoesNotAcceptFocus: result = Val_long(137175078); break;
  case Qt::MaximizeUsingFullscreenGeometryHint: result = Val_long(1005996812); break;
  case Qt::CustomizeWindowHint: result = Val_long(-606275686); break;
  case Qt::WindowStaysOnBottomHint: result = Val_long(-144932997); break;
  case Qt::WindowCloseButtonHint: result = Val_long(-30461887); break;
  case Qt::MacWindowToolBarButtonHint: result = Val_long(1052645141); break;
  case Qt::BypassGraphicsProxyWidget: result = Val_long(355976287); break;
  case Qt::NoDropShadowWindowHint: result = Val_long(-580304153); break;
  case Qt::WindowFullscreenButtonHint: result = Val_long(-957350172); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WindowState mlqt_Qt_WindowState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -636011552: return Qt::WindowNoState;
  case 798380374: return Qt::WindowMinimized;
  case 98132968: return Qt::WindowMaximized;
  case -1063555445: return Qt::WindowFullScreen;
  case 633940470: return Qt::WindowActive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WindowState)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WindowState_to_ocaml(const Qt::WindowState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::WindowNoState: result = Val_long(-636011552); break;
  case Qt::WindowMinimized: result = Val_long(798380374); break;
  case Qt::WindowMaximized: result = Val_long(98132968); break;
  case Qt::WindowFullScreen: result = Val_long(-1063555445); break;
  case Qt::WindowActive: result = Val_long(633940470); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ApplicationState mlqt_Qt_ApplicationState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 363795851: return Qt::ApplicationSuspended;
  case -462013766: return Qt::ApplicationHidden;
  case -418265413: return Qt::ApplicationInactive;
  case 774274326: return Qt::ApplicationActive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ApplicationState)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ApplicationState_to_ocaml(const Qt::ApplicationState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ApplicationSuspended: result = Val_long(363795851); break;
  case Qt::ApplicationHidden: result = Val_long(-462013766); break;
  case Qt::ApplicationInactive: result = Val_long(-418265413); break;
  case Qt::ApplicationActive: result = Val_long(774274326); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ScreenOrientation mlqt_Qt_ScreenOrientation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -87892402: return Qt::PrimaryOrientation;
  case 74282261: return Qt::PortraitOrientation;
  case 277921397: return Qt::LandscapeOrientation;
  case 801351968: return Qt::InvertedPortraitOrientation;
  case -794291190: return Qt::InvertedLandscapeOrientation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ScreenOrientation)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ScreenOrientation_to_ocaml(const Qt::ScreenOrientation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::PrimaryOrientation: result = Val_long(-87892402); break;
  case Qt::PortraitOrientation: result = Val_long(74282261); break;
  case Qt::LandscapeOrientation: result = Val_long(277921397); break;
  case Qt::InvertedPortraitOrientation: result = Val_long(801351968); break;
  case Qt::InvertedLandscapeOrientation: result = Val_long(-794291190); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WidgetAttribute mlqt_Qt_WidgetAttribute_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1003149233: return Qt::WA_Disabled;
  case 686967650: return Qt::WA_UnderMouse;
  case 440578087: return Qt::WA_MouseTracking;
  case -1017058294: return Qt::WA_ContentsPropagated;
  case -702506222: return Qt::WA_OpaquePaintEvent;
  case -537942051: return Qt::WA_StaticContents;
  case -88565687: return Qt::WA_LaidOut;
  case 178011476: return Qt::WA_PaintOnScreen;
  case 494708883: return Qt::WA_NoSystemBackground;
  case 287958097: return Qt::WA_UpdatesDisabled;
  case 302449320: return Qt::WA_Mapped;
  case 88075480: return Qt::WA_MacNoClickThrough;
  case 1054858155: return Qt::WA_InputMethodEnabled;
  case -940169758: return Qt::WA_WState_Visible;
  case 536530938: return Qt::WA_WState_Hidden;
  case 654498866: return Qt::WA_ForceDisabled;
  case -636934148: return Qt::WA_KeyCompression;
  case -239800537: return Qt::WA_PendingMoveEvent;
  case -773991196: return Qt::WA_PendingResizeEvent;
  case -293403538: return Qt::WA_SetPalette;
  case -118979076: return Qt::WA_SetFont;
  case 747428931: return Qt::WA_SetCursor;
  case 899630120: return Qt::WA_NoChildEventsFromChildren;
  case 410011470: return Qt::WA_WindowModified;
  case -753450149: return Qt::WA_Resized;
  case 445805278: return Qt::WA_Moved;
  case 207075179: return Qt::WA_PendingUpdate;
  case -580491197: return Qt::WA_InvalidSize;
  case 730253192: return Qt::WA_MacBrushedMetal;
  case -1062857945: return Qt::WA_CustomWhatsThis;
  case 893863251: return Qt::WA_LayoutOnEntireRect;
  case 520855921: return Qt::WA_OutsideWSRange;
  case -501758202: return Qt::WA_GrabbedShortcut;
  case -536291406: return Qt::WA_TransparentForMouseEvents;
  case 989986621: return Qt::WA_PaintUnclipped;
  case -41588874: return Qt::WA_SetWindowIcon;
  case -428412394: return Qt::WA_NoMouseReplay;
  case -928116007: return Qt::WA_DeleteOnClose;
  case 267499785: return Qt::WA_RightToLeft;
  case -723023064: return Qt::WA_SetLayoutDirection;
  case 1005100116: return Qt::WA_NoChildEventsForParent;
  case 421913072: return Qt::WA_ForceUpdatesDisabled;
  case 909927256: return Qt::WA_WState_Created;
  case 103574342: return Qt::WA_WState_CompressKeys;
  case -452341647: return Qt::WA_WState_InPaintEvent;
  case 1058120524: return Qt::WA_WState_Reparented;
  case -999160027: return Qt::WA_WState_ConfigPending;
  case 276245760: return Qt::WA_WState_Polished;
  case -360817910: return Qt::WA_WState_DND;
  case 757027561: return Qt::WA_WState_OwnSizePolicy;
  case -111243261: return Qt::WA_WState_ExplicitShowHide;
  case -927375845: return Qt::WA_ShowModal;
  case 913780413: return Qt::WA_MouseNoMask;
  case 986354835: return Qt::WA_GroupLeader;
  case -548933251: return Qt::WA_NoMousePropagation;
  case 965839975: return Qt::WA_Hover;
  case 670359420: return Qt::WA_InputMethodTransparent;
  case 151731957: return Qt::WA_QuitOnClose;
  case 1046450668: return Qt::WA_KeyboardFocusChange;
  case 68241959: return Qt::WA_AcceptDrops;
  case -944507155: return Qt::WA_DropSiteRegistered;
  case -198761497: return Qt::WA_WindowPropagation;
  case 301252558: return Qt::WA_NoX11EventCompression;
  case 406317533: return Qt::WA_TintedBackground;
  case -278457954: return Qt::WA_X11OpenGLOverlay;
  case 1040668721: return Qt::WA_AlwaysShowToolTips;
  case 404836430: return Qt::WA_MacOpaqueSizeGrip;
  case -770136988: return Qt::WA_SetStyle;
  case -949763577: return Qt::WA_SetLocale;
  case -60255355: return Qt::WA_MacShowFocusRect;
  case -410116190: return Qt::WA_MacNormalSize;
  case -17101490: return Qt::WA_MacSmallSize;
  case -515532398: return Qt::WA_MacMiniSize;
  case -852118925: return Qt::WA_LayoutUsesWidgetRect;
  case -414824682: return Qt::WA_StyledBackground;
  case 117722201: return Qt::WA_MSWindowsUseDirect3D;
  case -901319097: return Qt::WA_CanHostQMdiSubWindowTitleBar;
  case 994443662: return Qt::WA_MacAlwaysShowToolWindow;
  case 727091491: return Qt::WA_StyleSheet;
  case 258237190: return Qt::WA_ShowWithoutActivating;
  case -235035919: return Qt::WA_X11BypassTransientForHint;
  case -1045827172: return Qt::WA_NativeWindow;
  case -726250905: return Qt::WA_DontCreateNativeAncestors;
  case 751954103: return Qt::WA_MacVariableSize;
  case -644993682: return Qt::WA_DontShowOnScreen;
  case 426963586: return Qt::WA_X11NetWmWindowTypeDesktop;
  case 193853069: return Qt::WA_X11NetWmWindowTypeDock;
  case -448470527: return Qt::WA_X11NetWmWindowTypeToolBar;
  case 293164345: return Qt::WA_X11NetWmWindowTypeMenu;
  case 442061842: return Qt::WA_X11NetWmWindowTypeUtility;
  case 479144833: return Qt::WA_X11NetWmWindowTypeSplash;
  case 237612770: return Qt::WA_X11NetWmWindowTypeDialog;
  case 103659530: return Qt::WA_X11NetWmWindowTypeDropDownMenu;
  case -806018031: return Qt::WA_X11NetWmWindowTypePopupMenu;
  case -447573623: return Qt::WA_X11NetWmWindowTypeToolTip;
  case -812961659: return Qt::WA_X11NetWmWindowTypeNotification;
  case -45432972: return Qt::WA_X11NetWmWindowTypeCombo;
  case 434210624: return Qt::WA_X11NetWmWindowTypeDND;
  case -992221602: return Qt::WA_MacFrameworkScaled;
  case 409554590: return Qt::WA_SetWindowModality;
  case 637366071: return Qt::WA_WState_WindowOpacitySet;
  case 658554514: return Qt::WA_TranslucentBackground;
  case -912490181: return Qt::WA_AcceptTouchEvents;
  case 423607705: return Qt::WA_WState_AcceptedTouchBeginEvent;
  case -744331681: return Qt::WA_TouchPadAcceptSingleTouchEvents;
  case -457847893: return Qt::WA_X11DoNotAcceptFocus;
  case 1043114395: return Qt::WA_MacNoShadow;
  case 148127026: return Qt::WA_AlwaysStackOnTop;
  case 26720754: return Qt::WA_TabletTracking;
  case -288027896: return Qt::WA_AttributeCount;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WidgetAttribute)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WidgetAttribute_to_ocaml(const Qt::WidgetAttribute& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::WA_Disabled: result = Val_long(1003149233); break;
  case Qt::WA_UnderMouse: result = Val_long(686967650); break;
  case Qt::WA_MouseTracking: result = Val_long(440578087); break;
  case Qt::WA_ContentsPropagated: result = Val_long(-1017058294); break;
  case Qt::WA_OpaquePaintEvent: result = Val_long(-702506222); break;
  case Qt::WA_StaticContents: result = Val_long(-537942051); break;
  case Qt::WA_LaidOut: result = Val_long(-88565687); break;
  case Qt::WA_PaintOnScreen: result = Val_long(178011476); break;
  case Qt::WA_NoSystemBackground: result = Val_long(494708883); break;
  case Qt::WA_UpdatesDisabled: result = Val_long(287958097); break;
  case Qt::WA_Mapped: result = Val_long(302449320); break;
  case Qt::WA_MacNoClickThrough: result = Val_long(88075480); break;
  case Qt::WA_InputMethodEnabled: result = Val_long(1054858155); break;
  case Qt::WA_WState_Visible: result = Val_long(-940169758); break;
  case Qt::WA_WState_Hidden: result = Val_long(536530938); break;
  case Qt::WA_ForceDisabled: result = Val_long(654498866); break;
  case Qt::WA_KeyCompression: result = Val_long(-636934148); break;
  case Qt::WA_PendingMoveEvent: result = Val_long(-239800537); break;
  case Qt::WA_PendingResizeEvent: result = Val_long(-773991196); break;
  case Qt::WA_SetPalette: result = Val_long(-293403538); break;
  case Qt::WA_SetFont: result = Val_long(-118979076); break;
  case Qt::WA_SetCursor: result = Val_long(747428931); break;
  case Qt::WA_NoChildEventsFromChildren: result = Val_long(899630120); break;
  case Qt::WA_WindowModified: result = Val_long(410011470); break;
  case Qt::WA_Resized: result = Val_long(-753450149); break;
  case Qt::WA_Moved: result = Val_long(445805278); break;
  case Qt::WA_PendingUpdate: result = Val_long(207075179); break;
  case Qt::WA_InvalidSize: result = Val_long(-580491197); break;
  case Qt::WA_MacBrushedMetal: result = Val_long(730253192); break;
  case Qt::WA_CustomWhatsThis: result = Val_long(-1062857945); break;
  case Qt::WA_LayoutOnEntireRect: result = Val_long(893863251); break;
  case Qt::WA_OutsideWSRange: result = Val_long(520855921); break;
  case Qt::WA_GrabbedShortcut: result = Val_long(-501758202); break;
  case Qt::WA_TransparentForMouseEvents: result = Val_long(-536291406); break;
  case Qt::WA_PaintUnclipped: result = Val_long(989986621); break;
  case Qt::WA_SetWindowIcon: result = Val_long(-41588874); break;
  case Qt::WA_NoMouseReplay: result = Val_long(-428412394); break;
  case Qt::WA_DeleteOnClose: result = Val_long(-928116007); break;
  case Qt::WA_RightToLeft: result = Val_long(267499785); break;
  case Qt::WA_SetLayoutDirection: result = Val_long(-723023064); break;
  case Qt::WA_NoChildEventsForParent: result = Val_long(1005100116); break;
  case Qt::WA_ForceUpdatesDisabled: result = Val_long(421913072); break;
  case Qt::WA_WState_Created: result = Val_long(909927256); break;
  case Qt::WA_WState_CompressKeys: result = Val_long(103574342); break;
  case Qt::WA_WState_InPaintEvent: result = Val_long(-452341647); break;
  case Qt::WA_WState_Reparented: result = Val_long(1058120524); break;
  case Qt::WA_WState_ConfigPending: result = Val_long(-999160027); break;
  case Qt::WA_WState_Polished: result = Val_long(276245760); break;
  case Qt::WA_WState_DND: result = Val_long(-360817910); break;
  case Qt::WA_WState_OwnSizePolicy: result = Val_long(757027561); break;
  case Qt::WA_WState_ExplicitShowHide: result = Val_long(-111243261); break;
  case Qt::WA_ShowModal: result = Val_long(-927375845); break;
  case Qt::WA_MouseNoMask: result = Val_long(913780413); break;
  case Qt::WA_GroupLeader: result = Val_long(986354835); break;
  case Qt::WA_NoMousePropagation: result = Val_long(-548933251); break;
  case Qt::WA_Hover: result = Val_long(965839975); break;
  case Qt::WA_InputMethodTransparent: result = Val_long(670359420); break;
  case Qt::WA_QuitOnClose: result = Val_long(151731957); break;
  case Qt::WA_KeyboardFocusChange: result = Val_long(1046450668); break;
  case Qt::WA_AcceptDrops: result = Val_long(68241959); break;
  case Qt::WA_DropSiteRegistered: result = Val_long(-944507155); break;
  case Qt::WA_WindowPropagation: result = Val_long(-198761497); break;
  case Qt::WA_NoX11EventCompression: result = Val_long(301252558); break;
  case Qt::WA_TintedBackground: result = Val_long(406317533); break;
  case Qt::WA_X11OpenGLOverlay: result = Val_long(-278457954); break;
  case Qt::WA_AlwaysShowToolTips: result = Val_long(1040668721); break;
  case Qt::WA_MacOpaqueSizeGrip: result = Val_long(404836430); break;
  case Qt::WA_SetStyle: result = Val_long(-770136988); break;
  case Qt::WA_SetLocale: result = Val_long(-949763577); break;
  case Qt::WA_MacShowFocusRect: result = Val_long(-60255355); break;
  case Qt::WA_MacNormalSize: result = Val_long(-410116190); break;
  case Qt::WA_MacSmallSize: result = Val_long(-17101490); break;
  case Qt::WA_MacMiniSize: result = Val_long(-515532398); break;
  case Qt::WA_LayoutUsesWidgetRect: result = Val_long(-852118925); break;
  case Qt::WA_StyledBackground: result = Val_long(-414824682); break;
  case Qt::WA_MSWindowsUseDirect3D: result = Val_long(117722201); break;
  case Qt::WA_CanHostQMdiSubWindowTitleBar: result = Val_long(-901319097); break;
  case Qt::WA_MacAlwaysShowToolWindow: result = Val_long(994443662); break;
  case Qt::WA_StyleSheet: result = Val_long(727091491); break;
  case Qt::WA_ShowWithoutActivating: result = Val_long(258237190); break;
  case Qt::WA_X11BypassTransientForHint: result = Val_long(-235035919); break;
  case Qt::WA_NativeWindow: result = Val_long(-1045827172); break;
  case Qt::WA_DontCreateNativeAncestors: result = Val_long(-726250905); break;
  case Qt::WA_MacVariableSize: result = Val_long(751954103); break;
  case Qt::WA_DontShowOnScreen: result = Val_long(-644993682); break;
  case Qt::WA_X11NetWmWindowTypeDesktop: result = Val_long(426963586); break;
  case Qt::WA_X11NetWmWindowTypeDock: result = Val_long(193853069); break;
  case Qt::WA_X11NetWmWindowTypeToolBar: result = Val_long(-448470527); break;
  case Qt::WA_X11NetWmWindowTypeMenu: result = Val_long(293164345); break;
  case Qt::WA_X11NetWmWindowTypeUtility: result = Val_long(442061842); break;
  case Qt::WA_X11NetWmWindowTypeSplash: result = Val_long(479144833); break;
  case Qt::WA_X11NetWmWindowTypeDialog: result = Val_long(237612770); break;
  case Qt::WA_X11NetWmWindowTypeDropDownMenu: result = Val_long(103659530); break;
  case Qt::WA_X11NetWmWindowTypePopupMenu: result = Val_long(-806018031); break;
  case Qt::WA_X11NetWmWindowTypeToolTip: result = Val_long(-447573623); break;
  case Qt::WA_X11NetWmWindowTypeNotification: result = Val_long(-812961659); break;
  case Qt::WA_X11NetWmWindowTypeCombo: result = Val_long(-45432972); break;
  case Qt::WA_X11NetWmWindowTypeDND: result = Val_long(434210624); break;
  case Qt::WA_MacFrameworkScaled: result = Val_long(-992221602); break;
  case Qt::WA_SetWindowModality: result = Val_long(409554590); break;
  case Qt::WA_WState_WindowOpacitySet: result = Val_long(637366071); break;
  case Qt::WA_TranslucentBackground: result = Val_long(658554514); break;
  case Qt::WA_AcceptTouchEvents: result = Val_long(-912490181); break;
  case Qt::WA_WState_AcceptedTouchBeginEvent: result = Val_long(423607705); break;
  case Qt::WA_TouchPadAcceptSingleTouchEvents: result = Val_long(-744331681); break;
  case Qt::WA_X11DoNotAcceptFocus: result = Val_long(-457847893); break;
  case Qt::WA_MacNoShadow: result = Val_long(1043114395); break;
  case Qt::WA_AlwaysStackOnTop: result = Val_long(148127026); break;
  case Qt::WA_TabletTracking: result = Val_long(26720754); break;
  case Qt::WA_AttributeCount: result = Val_long(-288027896); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ApplicationAttribute mlqt_Qt_ApplicationAttribute_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 108302357: return Qt::AA_ImmediateWidgetCreation;
  case -259856537: return Qt::AA_MSWindowsUseDirect3DByDefault;
  case 533047426: return Qt::AA_DontShowIconsInMenus;
  case 350613165: return Qt::AA_NativeWindows;
  case -436794888: return Qt::AA_DontCreateNativeWidgetSiblings;
  case -455412514: return Qt::AA_PluginApplication;
  case 334025638: return Qt::AA_DontUseNativeMenuBar;
  case 587120637: return Qt::AA_MacDontSwapCtrlAndMeta;
  case -693902728: return Qt::AA_Use96Dpi;
  case -406670688: return Qt::AA_X11InitThreads;
  case -44998482: return Qt::AA_SynthesizeTouchForUnhandledMouseEvents;
  case -510746590: return Qt::AA_SynthesizeMouseForUnhandledTouchEvents;
  case 815192707: return Qt::AA_UseHighDpiPixmaps;
  case -664637018: return Qt::AA_ForceRasterWidgets;
  case 253143107: return Qt::AA_UseDesktopOpenGL;
  case 766776517: return Qt::AA_UseOpenGLES;
  case -768117730: return Qt::AA_UseSoftwareOpenGL;
  case 229392435: return Qt::AA_ShareOpenGLContexts;
  case -268944552: return Qt::AA_SetPalette;
  case 829490542: return Qt::AA_EnableHighDpiScaling;
  case 812081269: return Qt::AA_DisableHighDpiScaling;
  case 548404673: return Qt::AA_UseStyleSheetPropagationInWidgetStyles;
  case 890162397: return Qt::AA_DontUseNativeDialogs;
  case 926849333: return Qt::AA_SynthesizeMouseForUnhandledTabletEvents;
  case -175050798: return Qt::AA_CompressHighFrequencyEvents;
  case -1035593190: return Qt::AA_DontCheckOpenGLContextThreadAffinity;
  case 663388055: return Qt::AA_DisableShaderDiskCache;
  case 769720050: return Qt::AA_AttributeCount;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ApplicationAttribute)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ApplicationAttribute_to_ocaml(const Qt::ApplicationAttribute& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AA_ImmediateWidgetCreation: result = Val_long(108302357); break;
  case Qt::AA_MSWindowsUseDirect3DByDefault: result = Val_long(-259856537); break;
  case Qt::AA_DontShowIconsInMenus: result = Val_long(533047426); break;
  case Qt::AA_NativeWindows: result = Val_long(350613165); break;
  case Qt::AA_DontCreateNativeWidgetSiblings: result = Val_long(-436794888); break;
  case Qt::AA_PluginApplication: result = Val_long(-455412514); break;
  case Qt::AA_DontUseNativeMenuBar: result = Val_long(334025638); break;
  case Qt::AA_MacDontSwapCtrlAndMeta: result = Val_long(587120637); break;
  case Qt::AA_Use96Dpi: result = Val_long(-693902728); break;
  case Qt::AA_X11InitThreads: result = Val_long(-406670688); break;
  case Qt::AA_SynthesizeTouchForUnhandledMouseEvents: result = Val_long(-44998482); break;
  case Qt::AA_SynthesizeMouseForUnhandledTouchEvents: result = Val_long(-510746590); break;
  case Qt::AA_UseHighDpiPixmaps: result = Val_long(815192707); break;
  case Qt::AA_ForceRasterWidgets: result = Val_long(-664637018); break;
  case Qt::AA_UseDesktopOpenGL: result = Val_long(253143107); break;
  case Qt::AA_UseOpenGLES: result = Val_long(766776517); break;
  case Qt::AA_UseSoftwareOpenGL: result = Val_long(-768117730); break;
  case Qt::AA_ShareOpenGLContexts: result = Val_long(229392435); break;
  case Qt::AA_SetPalette: result = Val_long(-268944552); break;
  case Qt::AA_EnableHighDpiScaling: result = Val_long(829490542); break;
  case Qt::AA_DisableHighDpiScaling: result = Val_long(812081269); break;
  case Qt::AA_UseStyleSheetPropagationInWidgetStyles: result = Val_long(548404673); break;
  case Qt::AA_DontUseNativeDialogs: result = Val_long(890162397); break;
  case Qt::AA_SynthesizeMouseForUnhandledTabletEvents: result = Val_long(926849333); break;
  case Qt::AA_CompressHighFrequencyEvents: result = Val_long(-175050798); break;
  case Qt::AA_DontCheckOpenGLContextThreadAffinity: result = Val_long(-1035593190); break;
  case Qt::AA_DisableShaderDiskCache: result = Val_long(663388055); break;
  case Qt::AA_AttributeCount: result = Val_long(769720050); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ImageConversionFlag mlqt_Qt_ImageConversionFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 911854821: return Qt::ColorMode_Mask;
  case -717056177: return Qt::MonoOnly;
  case 660272039: return Qt::AlphaDither_Mask;
  case 419189017: return Qt::ThresholdAlphaDither;
  case 173889431: return Qt::OrderedAlphaDither;
  case 589949122: return Qt::DiffuseAlphaDither;
  case -831971803: return Qt::Dither_Mask;
  case 856055059: return Qt::OrderedDither;
  case -1005727023: return Qt::ThresholdDither;
  case -67163966: return Qt::DitherMode_Mask;
  case -533167306: return Qt::PreferDither;
  case -136336677: return Qt::AvoidDither;
  case -1064157501: return Qt::NoOpaqueDetection;
  case -5315666: return Qt::NoFormatConversion;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ImageConversionFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ImageConversionFlag_to_ocaml(const Qt::ImageConversionFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ColorMode_Mask: result = Val_long(911854821); break;
  case Qt::MonoOnly: result = Val_long(-717056177); break;
  case Qt::AlphaDither_Mask: result = Val_long(660272039); break;
  case Qt::ThresholdAlphaDither: result = Val_long(419189017); break;
  case Qt::OrderedAlphaDither: result = Val_long(173889431); break;
  case Qt::DiffuseAlphaDither: result = Val_long(589949122); break;
  case Qt::Dither_Mask: result = Val_long(-831971803); break;
  case Qt::OrderedDither: result = Val_long(856055059); break;
  case Qt::ThresholdDither: result = Val_long(-1005727023); break;
  case Qt::DitherMode_Mask: result = Val_long(-67163966); break;
  case Qt::PreferDither: result = Val_long(-533167306); break;
  case Qt::AvoidDither: result = Val_long(-136336677); break;
  case Qt::NoOpaqueDetection: result = Val_long(-1064157501); break;
  case Qt::NoFormatConversion: result = Val_long(-5315666); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::BGMode mlqt_Qt_BGMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 223167413: return Qt::TransparentMode;
  case -903650044: return Qt::OpaqueMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::BGMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_BGMode_to_ocaml(const Qt::BGMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TransparentMode: result = Val_long(223167413); break;
  case Qt::OpaqueMode: result = Val_long(-903650044); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Key mlqt_Qt_Key_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 365774241: return Qt::Key_Escape;
  case -77806539: return Qt::Key_Tab;
  case -717099922: return Qt::Key_Backtab;
  case 292263711: return Qt::Key_Backspace;
  case -1004493104: return Qt::Key_Return;
  case 81858296: return Qt::Key_Enter;
  case -657439399: return Qt::Key_Insert;
  case 634110539: return Qt::Key_Delete;
  case -776832810: return Qt::Key_Pause;
  case -588908019: return Qt::Key_Print;
  case 767282289: return Qt::Key_SysReq;
  case -592047251: return Qt::Key_Clear;
  case -303365057: return Qt::Key_Home;
  case -78549573: return Qt::Key_End;
  case -259505625: return Qt::Key_Left;
  case -192948101: return Qt::Key_Up;
  case -37835332: return Qt::Key_Right;
  case -347721086: return Qt::Key_Down;
  case 556505258: return Qt::Key_PageUp;
  case -360342415: return Qt::Key_PageDown;
  case 276663906: return Qt::Key_Shift;
  case -214940355: return Qt::Key_Control;
  case -248412955: return Qt::Key_Meta;
  case -78748919: return Qt::Key_Alt;
  case 823251660: return Qt::Key_CapsLock;
  case -186180815: return Qt::Key_NumLock;
  case -270156616: return Qt::Key_ScrollLock;
  case -192951509: return Qt::Key_F1;
  case -192951508: return Qt::Key_F2;
  case -192951507: return Qt::Key_F3;
  case -192951506: return Qt::Key_F4;
  case -192951505: return Qt::Key_F5;
  case -192951504: return Qt::Key_F6;
  case -192951503: return Qt::Key_F7;
  case -192951502: return Qt::Key_F8;
  case -192951501: return Qt::Key_F9;
  case -78513499: return Qt::Key_F10;
  case -78513498: return Qt::Key_F11;
  case -78513497: return Qt::Key_F12;
  case -78513496: return Qt::Key_F13;
  case -78513495: return Qt::Key_F14;
  case -78513494: return Qt::Key_F15;
  case -78513493: return Qt::Key_F16;
  case -78513492: return Qt::Key_F17;
  case -78513491: return Qt::Key_F18;
  case -78513490: return Qt::Key_F19;
  case -78513276: return Qt::Key_F20;
  case -78513275: return Qt::Key_F21;
  case -78513274: return Qt::Key_F22;
  case -78513273: return Qt::Key_F23;
  case -78513272: return Qt::Key_F24;
  case -78513271: return Qt::Key_F25;
  case -78513270: return Qt::Key_F26;
  case -78513269: return Qt::Key_F27;
  case -78513268: return Qt::Key_F28;
  case -78513267: return Qt::Key_F29;
  case -78513053: return Qt::Key_F30;
  case -78513052: return Qt::Key_F31;
  case -78513051: return Qt::Key_F32;
  case -78513050: return Qt::Key_F33;
  case -78513049: return Qt::Key_F34;
  case -78513048: return Qt::Key_F35;
  case 261014312: return Qt::Key_Super_L;
  case 261014318: return Qt::Key_Super_R;
  case -248414273: return Qt::Key_Menu;
  case -544204199: return Qt::Key_Hyper_L;
  case -544204193: return Qt::Key_Hyper_R;
  case -303862559: return Qt::Key_Help;
  case 555633900: return Qt::Key_Direction_L;
  case 555633906: return Qt::Key_Direction_R;
  case 364981926: return Qt::Key_Space;
  case -153716760: return Qt::Key_Exclam;
  case -822983822: return Qt::Key_QuoteDbl;
  case -178557498: return Qt::Key_NumberSign;
  case -405614948: return Qt::Key_Dollar;
  case -762739547: return Qt::Key_Percent;
  case 299859477: return Qt::Key_Ampersand;
  case -636500721: return Qt::Key_Apostrophe;
  case 728995601: return Qt::Key_ParenLeft;
  case -792877678: return Qt::Key_ParenRight;
  case -837142894: return Qt::Key_Asterisk;
  case -214795910: return Qt::Key_Plus;
  case -558378059: return Qt::Key_Comma;
  case 482550352: return Qt::Key_Minus;
  case -166829279: return Qt::Key_Period;
  case 320627229: return Qt::Key_Slash;
  case -231984592: return Qt::Key_0;
  case -231984591: return Qt::Key_1;
  case -231984590: return Qt::Key_2;
  case -231984589: return Qt::Key_3;
  case -231984588: return Qt::Key_4;
  case -231984587: return Qt::Key_5;
  case -231984586: return Qt::Key_6;
  case -231984585: return Qt::Key_7;
  case -231984584: return Qt::Key_8;
  case -231984583: return Qt::Key_9;
  case -558427329: return Qt::Key_Colon;
  case 340994065: return Qt::Key_Semicolon;
  case -259502727: return Qt::Key_Less;
  case 115175828: return Qt::Key_Equal;
  case 292514522: return Qt::Key_Greater;
  case -973052602: return Qt::Key_Question;
  case -192952557: return Qt::Key_At;
  case -231984575: return Qt::Key_A;
  case -231984574: return Qt::Key_B;
  case -231984573: return Qt::Key_C;
  case -231984572: return Qt::Key_D;
  case -231984571: return Qt::Key_E;
  case -231984570: return Qt::Key_F;
  case -231984569: return Qt::Key_G;
  case -231984568: return Qt::Key_H;
  case -231984567: return Qt::Key_I;
  case -231984566: return Qt::Key_J;
  case -231984565: return Qt::Key_K;
  case -231984564: return Qt::Key_L;
  case -231984563: return Qt::Key_M;
  case -231984562: return Qt::Key_N;
  case -231984561: return Qt::Key_O;
  case -231984560: return Qt::Key_P;
  case -231984559: return Qt::Key_Q;
  case -231984558: return Qt::Key_R;
  case -231984557: return Qt::Key_S;
  case -231984556: return Qt::Key_T;
  case -231984555: return Qt::Key_U;
  case -231984554: return Qt::Key_V;
  case -231984553: return Qt::Key_W;
  case -231984552: return Qt::Key_X;
  case -231984551: return Qt::Key_Y;
  case -231984550: return Qt::Key_Z;
  case -115132369: return Qt::Key_BracketLeft;
  case 247909014: return Qt::Key_Backslash;
  case -54853964: return Qt::Key_BracketRight;
  case 235394048: return Qt::Key_AsciiCircum;
  case 1030192474: return Qt::Key_Underscore;
  case -900417725: return Qt::Key_QuoteLeft;
  case 811243770: return Qt::Key_BraceLeft;
  case -78701645: return Qt::Key_Bar;
  case 368594825: return Qt::Key_BraceRight;
  case -725397593: return Qt::Key_AsciiTilde;
  case -779059928: return Qt::Key_nobreakspace;
  case 697401386: return Qt::Key_exclamdown;
  case -4443800: return Qt::Key_cent;
  case 476957764: return Qt::Key_sterling;
  case -521988783: return Qt::Key_currency;
  case -75965662: return Qt::Key_yen;
  case 503713950: return Qt::Key_brokenbar;
  case -365578267: return Qt::Key_section;
  case 186761985: return Qt::Key_diaeresis;
  case 14676487: return Qt::Key_copyright;
  case 1058385390: return Qt::Key_ordfeminine;
  case -345072433: return Qt::Key_guillemotleft;
  case -486367024: return Qt::Key_notsign;
  case 290418162: return Qt::Key_hyphen;
  case -396481662: return Qt::Key_registered;
  case 921315554: return Qt::Key_macron;
  case -302838452: return Qt::Key_degree;
  case 341216470: return Qt::Key_plusminus;
  case -29002051: return Qt::Key_twosuperior;
  case -714342513: return Qt::Key_threesuperior;
  case 483705732: return Qt::Key_acute;
  case -192942744: return Qt::Key_mu;
  case 25186670: return Qt::Key_paragraph;
  case 633517429: return Qt::Key_periodcentered;
  case -587084902: return Qt::Key_cedilla;
  case -102691433: return Qt::Key_onesuperior;
  case 178466181: return Qt::Key_masculine;
  case 208119316: return Qt::Key_guillemotright;
  case -789232506: return Qt::Key_onequarter;
  case -68247271: return Qt::Key_onehalf;
  case -516840667: return Qt::Key_threequarters;
  case 117386376: return Qt::Key_questiondown;
  case 494605988: return Qt::Key_Agrave;
  case 523801507: return Qt::Key_Aacute;
  case -942106071: return Qt::Key_Acircumflex;
  case 331742903: return Qt::Key_Atilde;
  case 756649632: return Qt::Key_Adiaeresis;
  case 971196017: return Qt::Key_Aring;
  case -192952604: return Qt::Key_AE;
  case 242615735: return Qt::Key_Ccedilla;
  case 921208864: return Qt::Key_Egrave;
  case 950404383: return Qt::Key_Eacute;
  case -883800275: return Qt::Key_Ecircumflex;
  case 776171036: return Qt::Key_Ediaeresis;
  case -799671908: return Qt::Key_Igrave;
  case -770476389: return Qt::Key_Iacute;
  case -825494479: return Qt::Key_Icircumflex;
  case 795692440: return Qt::Key_Idiaeresis;
  case -78555399: return Qt::Key_ETH;
  case -966152310: return Qt::Key_Ntilde;
  case 913974230: return Qt::Key_Ograve;
  case 943169749: return Qt::Key_Oacute;
  case -738035785: return Qt::Key_Ocircumflex;
  case 751111145: return Qt::Key_Otilde;
  case 824974546: return Qt::Key_Odiaeresis;
  case -534056924: return Qt::Key_multiply;
  case 402346562: return Qt::Key_Ooblique;
  case 480136720: return Qt::Key_Ugrave;
  case 509332239: return Qt::Key_Uacute;
  case -650577091: return Qt::Key_Ucircumflex;
  case 854256652: return Qt::Key_Udiaeresis;
  case 935935115: return Qt::Key_Yacute;
  case 245990103: return Qt::Key_THORN;
  case -41553513: return Qt::Key_ssharp;
  case 455306029: return Qt::Key_division;
  case 1029949288: return Qt::Key_ydiaeresis;
  case 905196948: return Qt::Key_AltGr;
  case -604202119: return Qt::Key_Multi_key;
  case 88588701: return Qt::Key_Codeinput;
  case -844605829: return Qt::Key_SingleCandidate;
  case 869229043: return Qt::Key_MultipleCandidate;
  case 599296748: return Qt::Key_PreviousCandidate;
  case 544429168: return Qt::Key_Mode_switch;
  case -257148233: return Qt::Key_Kanji;
  case 11977583: return Qt::Key_Muhenkan;
  case -1064296953: return Qt::Key_Henkan;
  case 24297840: return Qt::Key_Romaji;
  case 487077853: return Qt::Key_Hiragana;
  case -883987604: return Qt::Key_Katakana;
  case -817252018: return Qt::Key_Hiragana_Katakana;
  case 705462147: return Qt::Key_Zenkaku;
  case 605860981: return Qt::Key_Hankaku;
  case 472094329: return Qt::Key_Zenkaku_Hankaku;
  case 1016496161: return Qt::Key_Touroku;
  case -166538774: return Qt::Key_Massyo;
  case 704519649: return Qt::Key_Kana_Lock;
  case 395190732: return Qt::Key_Kana_Shift;
  case 184818761: return Qt::Key_Eisu_Shift;
  case -791156275: return Qt::Key_Eisu_toggle;
  case -218966935: return Qt::Key_Hangul;
  case 473412780: return Qt::Key_Hangul_Start;
  case -83903067: return Qt::Key_Hangul_End;
  case 977935254: return Qt::Key_Hangul_Hanja;
  case 671772367: return Qt::Key_Hangul_Jamo;
  case -720650306: return Qt::Key_Hangul_Romaja;
  case -510961081: return Qt::Key_Hangul_Jeonja;
  case -975003504: return Qt::Key_Hangul_Banja;
  case -337832417: return Qt::Key_Hangul_PreHanja;
  case 977672214: return Qt::Key_Hangul_PostHanja;
  case 189391107: return Qt::Key_Hangul_Special;
  case -733855894: return Qt::Key_Dead_Grave;
  case -704660375: return Qt::Key_Dead_Acute;
  case 281666467: return Qt::Key_Dead_Circumflex;
  case -896718979: return Qt::Key_Dead_Tilde;
  case 56162397: return Qt::Key_Dead_Macron;
  case -213622295: return Qt::Key_Dead_Breve;
  case -733678137: return Qt::Key_Dead_Abovedot;
  case -605318554: return Qt::Key_Dead_Diaeresis;
  case -246512974: return Qt::Key_Dead_Abovering;
  case -770142856: return Qt::Key_Dead_Doubleacute;
  case -76010216: return Qt::Key_Dead_Caron;
  case -242710593: return Qt::Key_Dead_Cedilla;
  case -865949224: return Qt::Key_Dead_Ogonek;
  case -559054962: return Qt::Key_Dead_Iota;
  case 826255261: return Qt::Key_Dead_Voiced_Sound;
  case 776477323: return Qt::Key_Dead_Semivoiced_Sound;
  case -616726861: return Qt::Key_Dead_Belowdot;
  case -570145634: return Qt::Key_Dead_Hook;
  case -570144962: return Qt::Key_Dead_Horn;
  case -370600889: return Qt::Key_Back;
  case 1064942501: return Qt::Key_Forward;
  case -181130718: return Qt::Key_Stop;
  case -959466565: return Qt::Key_Refresh;
  case 262919548: return Qt::Key_VolumeDown;
  case 363023347: return Qt::Key_VolumeMute;
  case -651892491: return Qt::Key_VolumeUp;
  case 643625060: return Qt::Key_BassBoost;
  case 270908026: return Qt::Key_BassUp;
  case 631755329: return Qt::Key_BassDown;
  case 632989231: return Qt::Key_TrebleUp;
  case -82389706: return Qt::Key_TrebleDown;
  case -249646376: return Qt::Key_MediaPlay;
  case -215976730: return Qt::Key_MediaStop;
  case 677610267: return Qt::Key_MediaPrevious;
  case -272168489: return Qt::Key_MediaNext;
  case -1031340939: return Qt::Key_MediaRecord;
  case 42441106: return Qt::Key_MediaPause;
  case -173527094: return Qt::Key_MediaTogglePlayPause;
  case -718891474: return Qt::Key_HomePage;
  case -188885321: return Qt::Key_Favorites;
  case 501916040: return Qt::Key_Search;
  case 202965517: return Qt::Key_Standby;
  case 434418597: return Qt::Key_OpenUrl;
  case 600411690: return Qt::Key_LaunchMail;
  case 791929745: return Qt::Key_LaunchMedia;
  case -734149507: return Qt::Key_Launch0;
  case -734149506: return Qt::Key_Launch1;
  case -734149505: return Qt::Key_Launch2;
  case -734149504: return Qt::Key_Launch3;
  case -734149503: return Qt::Key_Launch4;
  case -734149502: return Qt::Key_Launch5;
  case -734149501: return Qt::Key_Launch6;
  case -734149500: return Qt::Key_Launch7;
  case -734149499: return Qt::Key_Launch8;
  case -734149498: return Qt::Key_Launch9;
  case -734149490: return Qt::Key_LaunchA;
  case -734149489: return Qt::Key_LaunchB;
  case -734149488: return Qt::Key_LaunchC;
  case -734149487: return Qt::Key_LaunchD;
  case -734149486: return Qt::Key_LaunchE;
  case -734149485: return Qt::Key_LaunchF;
  case -716452520: return Qt::Key_MonBrightnessUp;
  case 245291167: return Qt::Key_MonBrightnessDown;
  case 1004906625: return Qt::Key_KeyboardLightOnOff;
  case -357822477: return Qt::Key_KeyboardBrightnessUp;
  case -292997126: return Qt::Key_KeyboardBrightnessDown;
  case 884431498: return Qt::Key_PowerOff;
  case -263194177: return Qt::Key_WakeUp;
  case 36753649: return Qt::Key_Eject;
  case -446504599: return Qt::Key_ScreenSaver;
  case -77659593: return Qt::Key_WWW;
  case -248414502: return Qt::Key_Memo;
  case 12517599: return Qt::Key_LightBulb;
  case -181727466: return Qt::Key_Shop;
  case 1039535924: return Qt::Key_History;
  case -693480131: return Qt::Key_AddFavorite;
  case -852372852: return Qt::Key_HotLinks;
  case 245656416: return Qt::Key_BrightnessAdjust;
  case -46506502: return Qt::Key_Finance;
  case 388855497: return Qt::Key_Community;
  case 270640465: return Qt::Key_AudioRewind;
  case 372972606: return Qt::Key_BackForward;
  case -705461929: return Qt::Key_ApplicationLeft;
  case -701843316: return Qt::Key_ApplicationRight;
  case -369902007: return Qt::Key_Book;
  case -192952159: return Qt::Key_CD;
  case 575061794: return Qt::Key_Calculator;
  case -565890172: return Qt::Key_ToDoList;
  case -22165031: return Qt::Key_ClearGrab;
  case -591545960: return Qt::Key_Close;
  case -358812203: return Qt::Key_Copy;
  case -78647454: return Qt::Key_Cut;
  case 351863842: return Qt::Key_Display;
  case -78606232: return Qt::Key_DOS;
  case -604022056: return Qt::Key_Documents;
  case 191908567: return Qt::Key_Excel;
  case -281341153: return Qt::Key_Explorer;
  case -315150830: return Qt::Key_Game;
  case -192951224: return Qt::Key_Go;
  case 691533974: return Qt::Key_iTouch;
  case 390701931: return Qt::Key_LogOff;
  case -178030628: return Qt::Key_Market;
  case -455917733: return Qt::Key_Meeting;
  case -1067421930: return Qt::Key_MenuKB;
  case -1067420815: return Qt::Key_MenuPB;
  case -8192544: return Qt::Key_MySites;
  case -237322701: return Qt::Key_News;
  case 470341019: return Qt::Key_OfficeHome;
  case -429009515: return Qt::Key_Option;
  case -776932045: return Qt::Key_Paste;
  case -699505330: return Qt::Key_Phone;
  case 511256798: return Qt::Key_Calendar;
  case -81745142: return Qt::Key_Reply;
  case 1053971833: return Qt::Key_Reload;
  case 325620552: return Qt::Key_RotateWindows;
  case -823303984: return Qt::Key_RotationPB;
  case -823305099: return Qt::Key_RotationKB;
  case -182074019: return Qt::Key_Save;
  case -181876888: return Qt::Key_Send;
  case 365182856: return Qt::Key_Spell;
  case 33850310: return Qt::Key_SplitScreen;
  case 382854639: return Qt::Key_Support;
  case 400759917: return Qt::Key_TaskPane;
  case 255519644: return Qt::Key_Terminal;
  case 680080379: return Qt::Key_Tools;
  case 8295226: return Qt::Key_Travel;
  case -883509669: return Qt::Key_Video;
  case -137020438: return Qt::Key_Word;
  case -126381317: return Qt::Key_Xfer;
  case 900272120: return Qt::Key_ZoomIn;
  case 1045003547: return Qt::Key_ZoomOut;
  case -380596850: return Qt::Key_Away;
  case -1042467661: return Qt::Key_Messenger;
  case 937270779: return Qt::Key_WebCam;
  case -895180754: return Qt::Key_MailForward;
  case -517193707: return Qt::Key_Pictures;
  case 615871109: return Qt::Key_Music;
  case 620323245: return Qt::Key_Battery;
  case 532462094: return Qt::Key_Bluetooth;
  case -138771902: return Qt::Key_WLAN;
  case -77759072: return Qt::Key_UWB;
  case -1038790225: return Qt::Key_AudioForward;
  case 192811697: return Qt::Key_AudioRepeat;
  case 562042861: return Qt::Key_AudioRandomPlay;
  case 293389880: return Qt::Key_Subtitle;
  case 757106267: return Qt::Key_AudioCycleTrack;
  case -170588627: return Qt::Key_Time;
  case 674564658: return Qt::Key_Hibernate;
  case -148411259: return Qt::Key_View;
  case -1021763404: return Qt::Key_TopMenu;
  case -461805337: return Qt::Key_PowerDown;
  case -788657828: return Qt::Key_Suspend;
  case -1020461743: return Qt::Key_ContrastAdjust;
  case -734149484: return Qt::Key_LaunchG;
  case -734149483: return Qt::Key_LaunchH;
  case 346644424: return Qt::Key_TouchpadToggle;
  case 236771155: return Qt::Key_TouchpadOn;
  case -887125317: return Qt::Key_TouchpadOff;
  case 1035294176: return Qt::Key_MicMute;
  case -77905103: return Qt::Key_Red;
  case 776450211: return Qt::Key_Green;
  case 189768084: return Qt::Key_Yellow;
  case -370049862: return Qt::Key_Blue;
  case -328772642: return Qt::Key_ChannelUp;
  case -930247515: return Qt::Key_ChannelDown;
  case 809917596: return Qt::Key_Guide;
  case -292326770: return Qt::Key_Info;
  case 713901827: return Qt::Key_Settings;
  case 443716956: return Qt::Key_MicVolumeUp;
  case 17476003: return Qt::Key_MicVolumeDown;
  case -78104000: return Qt::Key_New;
  case -225690134: return Qt::Key_Open;
  case -325842343: return Qt::Key_Find;
  case -159252412: return Qt::Key_Undo;
  case -192968674: return Qt::Key_Redo;
  case -294547654: return Qt::Key_MediaLast;
  case 623254812: return Qt::Key_Select;
  case -77556985: return Qt::Key_Yes;
  case -192949663: return Qt::Key_No;
  case -215552102: return Qt::Key_Cancel;
  case -572346438: return Qt::Key_Printer;
  case 633070613: return Qt::Key_Execute;
  case 320823031: return Qt::Key_Sleep;
  case -214800364: return Qt::Key_Play;
  case -103752397: return Qt::Key_Zoom;
  case -336187074: return Qt::Key_Exit;
  case -830773886: return Qt::Key_Context1;
  case -830773885: return Qt::Key_Context2;
  case -830773884: return Qt::Key_Context3;
  case -830773883: return Qt::Key_Context4;
  case -359509314: return Qt::Key_Call;
  case -218966931: return Qt::Key_Hangup;
  case -325694259: return Qt::Key_Flip;
  case 248911967: return Qt::Key_ToggleCallHangup;
  case -956007326: return Qt::Key_VoiceDial;
  case -1026936286: return Qt::Key_LastNumberRedial;
  case -226539323: return Qt::Key_Camera;
  case 790666451: return Qt::Key_CameraFocus;
  case -304556662: return Qt::Key_unknown;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Key)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Key_to_ocaml(const Qt::Key& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::Key_Escape: result = Val_long(365774241); break;
  case Qt::Key_Tab: result = Val_long(-77806539); break;
  case Qt::Key_Backtab: result = Val_long(-717099922); break;
  case Qt::Key_Backspace: result = Val_long(292263711); break;
  case Qt::Key_Return: result = Val_long(-1004493104); break;
  case Qt::Key_Enter: result = Val_long(81858296); break;
  case Qt::Key_Insert: result = Val_long(-657439399); break;
  case Qt::Key_Delete: result = Val_long(634110539); break;
  case Qt::Key_Pause: result = Val_long(-776832810); break;
  case Qt::Key_Print: result = Val_long(-588908019); break;
  case Qt::Key_SysReq: result = Val_long(767282289); break;
  case Qt::Key_Clear: result = Val_long(-592047251); break;
  case Qt::Key_Home: result = Val_long(-303365057); break;
  case Qt::Key_End: result = Val_long(-78549573); break;
  case Qt::Key_Left: result = Val_long(-259505625); break;
  case Qt::Key_Up: result = Val_long(-192948101); break;
  case Qt::Key_Right: result = Val_long(-37835332); break;
  case Qt::Key_Down: result = Val_long(-347721086); break;
  case Qt::Key_PageUp: result = Val_long(556505258); break;
  case Qt::Key_PageDown: result = Val_long(-360342415); break;
  case Qt::Key_Shift: result = Val_long(276663906); break;
  case Qt::Key_Control: result = Val_long(-214940355); break;
  case Qt::Key_Meta: result = Val_long(-248412955); break;
  case Qt::Key_Alt: result = Val_long(-78748919); break;
  case Qt::Key_CapsLock: result = Val_long(823251660); break;
  case Qt::Key_NumLock: result = Val_long(-186180815); break;
  case Qt::Key_ScrollLock: result = Val_long(-270156616); break;
  case Qt::Key_F1: result = Val_long(-192951509); break;
  case Qt::Key_F2: result = Val_long(-192951508); break;
  case Qt::Key_F3: result = Val_long(-192951507); break;
  case Qt::Key_F4: result = Val_long(-192951506); break;
  case Qt::Key_F5: result = Val_long(-192951505); break;
  case Qt::Key_F6: result = Val_long(-192951504); break;
  case Qt::Key_F7: result = Val_long(-192951503); break;
  case Qt::Key_F8: result = Val_long(-192951502); break;
  case Qt::Key_F9: result = Val_long(-192951501); break;
  case Qt::Key_F10: result = Val_long(-78513499); break;
  case Qt::Key_F11: result = Val_long(-78513498); break;
  case Qt::Key_F12: result = Val_long(-78513497); break;
  case Qt::Key_F13: result = Val_long(-78513496); break;
  case Qt::Key_F14: result = Val_long(-78513495); break;
  case Qt::Key_F15: result = Val_long(-78513494); break;
  case Qt::Key_F16: result = Val_long(-78513493); break;
  case Qt::Key_F17: result = Val_long(-78513492); break;
  case Qt::Key_F18: result = Val_long(-78513491); break;
  case Qt::Key_F19: result = Val_long(-78513490); break;
  case Qt::Key_F20: result = Val_long(-78513276); break;
  case Qt::Key_F21: result = Val_long(-78513275); break;
  case Qt::Key_F22: result = Val_long(-78513274); break;
  case Qt::Key_F23: result = Val_long(-78513273); break;
  case Qt::Key_F24: result = Val_long(-78513272); break;
  case Qt::Key_F25: result = Val_long(-78513271); break;
  case Qt::Key_F26: result = Val_long(-78513270); break;
  case Qt::Key_F27: result = Val_long(-78513269); break;
  case Qt::Key_F28: result = Val_long(-78513268); break;
  case Qt::Key_F29: result = Val_long(-78513267); break;
  case Qt::Key_F30: result = Val_long(-78513053); break;
  case Qt::Key_F31: result = Val_long(-78513052); break;
  case Qt::Key_F32: result = Val_long(-78513051); break;
  case Qt::Key_F33: result = Val_long(-78513050); break;
  case Qt::Key_F34: result = Val_long(-78513049); break;
  case Qt::Key_F35: result = Val_long(-78513048); break;
  case Qt::Key_Super_L: result = Val_long(261014312); break;
  case Qt::Key_Super_R: result = Val_long(261014318); break;
  case Qt::Key_Menu: result = Val_long(-248414273); break;
  case Qt::Key_Hyper_L: result = Val_long(-544204199); break;
  case Qt::Key_Hyper_R: result = Val_long(-544204193); break;
  case Qt::Key_Help: result = Val_long(-303862559); break;
  case Qt::Key_Direction_L: result = Val_long(555633900); break;
  case Qt::Key_Direction_R: result = Val_long(555633906); break;
  case Qt::Key_Space: result = Val_long(364981926); break;
  case Qt::Key_Exclam: result = Val_long(-153716760); break;
  case Qt::Key_QuoteDbl: result = Val_long(-822983822); break;
  case Qt::Key_NumberSign: result = Val_long(-178557498); break;
  case Qt::Key_Dollar: result = Val_long(-405614948); break;
  case Qt::Key_Percent: result = Val_long(-762739547); break;
  case Qt::Key_Ampersand: result = Val_long(299859477); break;
  case Qt::Key_Apostrophe: result = Val_long(-636500721); break;
  case Qt::Key_ParenLeft: result = Val_long(728995601); break;
  case Qt::Key_ParenRight: result = Val_long(-792877678); break;
  case Qt::Key_Asterisk: result = Val_long(-837142894); break;
  case Qt::Key_Plus: result = Val_long(-214795910); break;
  case Qt::Key_Comma: result = Val_long(-558378059); break;
  case Qt::Key_Minus: result = Val_long(482550352); break;
  case Qt::Key_Period: result = Val_long(-166829279); break;
  case Qt::Key_Slash: result = Val_long(320627229); break;
  case Qt::Key_0: result = Val_long(-231984592); break;
  case Qt::Key_1: result = Val_long(-231984591); break;
  case Qt::Key_2: result = Val_long(-231984590); break;
  case Qt::Key_3: result = Val_long(-231984589); break;
  case Qt::Key_4: result = Val_long(-231984588); break;
  case Qt::Key_5: result = Val_long(-231984587); break;
  case Qt::Key_6: result = Val_long(-231984586); break;
  case Qt::Key_7: result = Val_long(-231984585); break;
  case Qt::Key_8: result = Val_long(-231984584); break;
  case Qt::Key_9: result = Val_long(-231984583); break;
  case Qt::Key_Colon: result = Val_long(-558427329); break;
  case Qt::Key_Semicolon: result = Val_long(340994065); break;
  case Qt::Key_Less: result = Val_long(-259502727); break;
  case Qt::Key_Equal: result = Val_long(115175828); break;
  case Qt::Key_Greater: result = Val_long(292514522); break;
  case Qt::Key_Question: result = Val_long(-973052602); break;
  case Qt::Key_At: result = Val_long(-192952557); break;
  case Qt::Key_A: result = Val_long(-231984575); break;
  case Qt::Key_B: result = Val_long(-231984574); break;
  case Qt::Key_C: result = Val_long(-231984573); break;
  case Qt::Key_D: result = Val_long(-231984572); break;
  case Qt::Key_E: result = Val_long(-231984571); break;
  case Qt::Key_F: result = Val_long(-231984570); break;
  case Qt::Key_G: result = Val_long(-231984569); break;
  case Qt::Key_H: result = Val_long(-231984568); break;
  case Qt::Key_I: result = Val_long(-231984567); break;
  case Qt::Key_J: result = Val_long(-231984566); break;
  case Qt::Key_K: result = Val_long(-231984565); break;
  case Qt::Key_L: result = Val_long(-231984564); break;
  case Qt::Key_M: result = Val_long(-231984563); break;
  case Qt::Key_N: result = Val_long(-231984562); break;
  case Qt::Key_O: result = Val_long(-231984561); break;
  case Qt::Key_P: result = Val_long(-231984560); break;
  case Qt::Key_Q: result = Val_long(-231984559); break;
  case Qt::Key_R: result = Val_long(-231984558); break;
  case Qt::Key_S: result = Val_long(-231984557); break;
  case Qt::Key_T: result = Val_long(-231984556); break;
  case Qt::Key_U: result = Val_long(-231984555); break;
  case Qt::Key_V: result = Val_long(-231984554); break;
  case Qt::Key_W: result = Val_long(-231984553); break;
  case Qt::Key_X: result = Val_long(-231984552); break;
  case Qt::Key_Y: result = Val_long(-231984551); break;
  case Qt::Key_Z: result = Val_long(-231984550); break;
  case Qt::Key_BracketLeft: result = Val_long(-115132369); break;
  case Qt::Key_Backslash: result = Val_long(247909014); break;
  case Qt::Key_BracketRight: result = Val_long(-54853964); break;
  case Qt::Key_AsciiCircum: result = Val_long(235394048); break;
  case Qt::Key_Underscore: result = Val_long(1030192474); break;
  case Qt::Key_QuoteLeft: result = Val_long(-900417725); break;
  case Qt::Key_BraceLeft: result = Val_long(811243770); break;
  case Qt::Key_Bar: result = Val_long(-78701645); break;
  case Qt::Key_BraceRight: result = Val_long(368594825); break;
  case Qt::Key_AsciiTilde: result = Val_long(-725397593); break;
  case Qt::Key_nobreakspace: result = Val_long(-779059928); break;
  case Qt::Key_exclamdown: result = Val_long(697401386); break;
  case Qt::Key_cent: result = Val_long(-4443800); break;
  case Qt::Key_sterling: result = Val_long(476957764); break;
  case Qt::Key_currency: result = Val_long(-521988783); break;
  case Qt::Key_yen: result = Val_long(-75965662); break;
  case Qt::Key_brokenbar: result = Val_long(503713950); break;
  case Qt::Key_section: result = Val_long(-365578267); break;
  case Qt::Key_diaeresis: result = Val_long(186761985); break;
  case Qt::Key_copyright: result = Val_long(14676487); break;
  case Qt::Key_ordfeminine: result = Val_long(1058385390); break;
  case Qt::Key_guillemotleft: result = Val_long(-345072433); break;
  case Qt::Key_notsign: result = Val_long(-486367024); break;
  case Qt::Key_hyphen: result = Val_long(290418162); break;
  case Qt::Key_registered: result = Val_long(-396481662); break;
  case Qt::Key_macron: result = Val_long(921315554); break;
  case Qt::Key_degree: result = Val_long(-302838452); break;
  case Qt::Key_plusminus: result = Val_long(341216470); break;
  case Qt::Key_twosuperior: result = Val_long(-29002051); break;
  case Qt::Key_threesuperior: result = Val_long(-714342513); break;
  case Qt::Key_acute: result = Val_long(483705732); break;
  case Qt::Key_mu: result = Val_long(-192942744); break;
  case Qt::Key_paragraph: result = Val_long(25186670); break;
  case Qt::Key_periodcentered: result = Val_long(633517429); break;
  case Qt::Key_cedilla: result = Val_long(-587084902); break;
  case Qt::Key_onesuperior: result = Val_long(-102691433); break;
  case Qt::Key_masculine: result = Val_long(178466181); break;
  case Qt::Key_guillemotright: result = Val_long(208119316); break;
  case Qt::Key_onequarter: result = Val_long(-789232506); break;
  case Qt::Key_onehalf: result = Val_long(-68247271); break;
  case Qt::Key_threequarters: result = Val_long(-516840667); break;
  case Qt::Key_questiondown: result = Val_long(117386376); break;
  case Qt::Key_Agrave: result = Val_long(494605988); break;
  case Qt::Key_Aacute: result = Val_long(523801507); break;
  case Qt::Key_Acircumflex: result = Val_long(-942106071); break;
  case Qt::Key_Atilde: result = Val_long(331742903); break;
  case Qt::Key_Adiaeresis: result = Val_long(756649632); break;
  case Qt::Key_Aring: result = Val_long(971196017); break;
  case Qt::Key_AE: result = Val_long(-192952604); break;
  case Qt::Key_Ccedilla: result = Val_long(242615735); break;
  case Qt::Key_Egrave: result = Val_long(921208864); break;
  case Qt::Key_Eacute: result = Val_long(950404383); break;
  case Qt::Key_Ecircumflex: result = Val_long(-883800275); break;
  case Qt::Key_Ediaeresis: result = Val_long(776171036); break;
  case Qt::Key_Igrave: result = Val_long(-799671908); break;
  case Qt::Key_Iacute: result = Val_long(-770476389); break;
  case Qt::Key_Icircumflex: result = Val_long(-825494479); break;
  case Qt::Key_Idiaeresis: result = Val_long(795692440); break;
  case Qt::Key_ETH: result = Val_long(-78555399); break;
  case Qt::Key_Ntilde: result = Val_long(-966152310); break;
  case Qt::Key_Ograve: result = Val_long(913974230); break;
  case Qt::Key_Oacute: result = Val_long(943169749); break;
  case Qt::Key_Ocircumflex: result = Val_long(-738035785); break;
  case Qt::Key_Otilde: result = Val_long(751111145); break;
  case Qt::Key_Odiaeresis: result = Val_long(824974546); break;
  case Qt::Key_multiply: result = Val_long(-534056924); break;
  case Qt::Key_Ooblique: result = Val_long(402346562); break;
  case Qt::Key_Ugrave: result = Val_long(480136720); break;
  case Qt::Key_Uacute: result = Val_long(509332239); break;
  case Qt::Key_Ucircumflex: result = Val_long(-650577091); break;
  case Qt::Key_Udiaeresis: result = Val_long(854256652); break;
  case Qt::Key_Yacute: result = Val_long(935935115); break;
  case Qt::Key_THORN: result = Val_long(245990103); break;
  case Qt::Key_ssharp: result = Val_long(-41553513); break;
  case Qt::Key_division: result = Val_long(455306029); break;
  case Qt::Key_ydiaeresis: result = Val_long(1029949288); break;
  case Qt::Key_AltGr: result = Val_long(905196948); break;
  case Qt::Key_Multi_key: result = Val_long(-604202119); break;
  case Qt::Key_Codeinput: result = Val_long(88588701); break;
  case Qt::Key_SingleCandidate: result = Val_long(-844605829); break;
  case Qt::Key_MultipleCandidate: result = Val_long(869229043); break;
  case Qt::Key_PreviousCandidate: result = Val_long(599296748); break;
  case Qt::Key_Mode_switch: result = Val_long(544429168); break;
  case Qt::Key_Kanji: result = Val_long(-257148233); break;
  case Qt::Key_Muhenkan: result = Val_long(11977583); break;
  case Qt::Key_Henkan: result = Val_long(-1064296953); break;
  case Qt::Key_Romaji: result = Val_long(24297840); break;
  case Qt::Key_Hiragana: result = Val_long(487077853); break;
  case Qt::Key_Katakana: result = Val_long(-883987604); break;
  case Qt::Key_Hiragana_Katakana: result = Val_long(-817252018); break;
  case Qt::Key_Zenkaku: result = Val_long(705462147); break;
  case Qt::Key_Hankaku: result = Val_long(605860981); break;
  case Qt::Key_Zenkaku_Hankaku: result = Val_long(472094329); break;
  case Qt::Key_Touroku: result = Val_long(1016496161); break;
  case Qt::Key_Massyo: result = Val_long(-166538774); break;
  case Qt::Key_Kana_Lock: result = Val_long(704519649); break;
  case Qt::Key_Kana_Shift: result = Val_long(395190732); break;
  case Qt::Key_Eisu_Shift: result = Val_long(184818761); break;
  case Qt::Key_Eisu_toggle: result = Val_long(-791156275); break;
  case Qt::Key_Hangul: result = Val_long(-218966935); break;
  case Qt::Key_Hangul_Start: result = Val_long(473412780); break;
  case Qt::Key_Hangul_End: result = Val_long(-83903067); break;
  case Qt::Key_Hangul_Hanja: result = Val_long(977935254); break;
  case Qt::Key_Hangul_Jamo: result = Val_long(671772367); break;
  case Qt::Key_Hangul_Romaja: result = Val_long(-720650306); break;
  case Qt::Key_Hangul_Jeonja: result = Val_long(-510961081); break;
  case Qt::Key_Hangul_Banja: result = Val_long(-975003504); break;
  case Qt::Key_Hangul_PreHanja: result = Val_long(-337832417); break;
  case Qt::Key_Hangul_PostHanja: result = Val_long(977672214); break;
  case Qt::Key_Hangul_Special: result = Val_long(189391107); break;
  case Qt::Key_Dead_Grave: result = Val_long(-733855894); break;
  case Qt::Key_Dead_Acute: result = Val_long(-704660375); break;
  case Qt::Key_Dead_Circumflex: result = Val_long(281666467); break;
  case Qt::Key_Dead_Tilde: result = Val_long(-896718979); break;
  case Qt::Key_Dead_Macron: result = Val_long(56162397); break;
  case Qt::Key_Dead_Breve: result = Val_long(-213622295); break;
  case Qt::Key_Dead_Abovedot: result = Val_long(-733678137); break;
  case Qt::Key_Dead_Diaeresis: result = Val_long(-605318554); break;
  case Qt::Key_Dead_Abovering: result = Val_long(-246512974); break;
  case Qt::Key_Dead_Doubleacute: result = Val_long(-770142856); break;
  case Qt::Key_Dead_Caron: result = Val_long(-76010216); break;
  case Qt::Key_Dead_Cedilla: result = Val_long(-242710593); break;
  case Qt::Key_Dead_Ogonek: result = Val_long(-865949224); break;
  case Qt::Key_Dead_Iota: result = Val_long(-559054962); break;
  case Qt::Key_Dead_Voiced_Sound: result = Val_long(826255261); break;
  case Qt::Key_Dead_Semivoiced_Sound: result = Val_long(776477323); break;
  case Qt::Key_Dead_Belowdot: result = Val_long(-616726861); break;
  case Qt::Key_Dead_Hook: result = Val_long(-570145634); break;
  case Qt::Key_Dead_Horn: result = Val_long(-570144962); break;
  case Qt::Key_Back: result = Val_long(-370600889); break;
  case Qt::Key_Forward: result = Val_long(1064942501); break;
  case Qt::Key_Stop: result = Val_long(-181130718); break;
  case Qt::Key_Refresh: result = Val_long(-959466565); break;
  case Qt::Key_VolumeDown: result = Val_long(262919548); break;
  case Qt::Key_VolumeMute: result = Val_long(363023347); break;
  case Qt::Key_VolumeUp: result = Val_long(-651892491); break;
  case Qt::Key_BassBoost: result = Val_long(643625060); break;
  case Qt::Key_BassUp: result = Val_long(270908026); break;
  case Qt::Key_BassDown: result = Val_long(631755329); break;
  case Qt::Key_TrebleUp: result = Val_long(632989231); break;
  case Qt::Key_TrebleDown: result = Val_long(-82389706); break;
  case Qt::Key_MediaPlay: result = Val_long(-249646376); break;
  case Qt::Key_MediaStop: result = Val_long(-215976730); break;
  case Qt::Key_MediaPrevious: result = Val_long(677610267); break;
  case Qt::Key_MediaNext: result = Val_long(-272168489); break;
  case Qt::Key_MediaRecord: result = Val_long(-1031340939); break;
  case Qt::Key_MediaPause: result = Val_long(42441106); break;
  case Qt::Key_MediaTogglePlayPause: result = Val_long(-173527094); break;
  case Qt::Key_HomePage: result = Val_long(-718891474); break;
  case Qt::Key_Favorites: result = Val_long(-188885321); break;
  case Qt::Key_Search: result = Val_long(501916040); break;
  case Qt::Key_Standby: result = Val_long(202965517); break;
  case Qt::Key_OpenUrl: result = Val_long(434418597); break;
  case Qt::Key_LaunchMail: result = Val_long(600411690); break;
  case Qt::Key_LaunchMedia: result = Val_long(791929745); break;
  case Qt::Key_Launch0: result = Val_long(-734149507); break;
  case Qt::Key_Launch1: result = Val_long(-734149506); break;
  case Qt::Key_Launch2: result = Val_long(-734149505); break;
  case Qt::Key_Launch3: result = Val_long(-734149504); break;
  case Qt::Key_Launch4: result = Val_long(-734149503); break;
  case Qt::Key_Launch5: result = Val_long(-734149502); break;
  case Qt::Key_Launch6: result = Val_long(-734149501); break;
  case Qt::Key_Launch7: result = Val_long(-734149500); break;
  case Qt::Key_Launch8: result = Val_long(-734149499); break;
  case Qt::Key_Launch9: result = Val_long(-734149498); break;
  case Qt::Key_LaunchA: result = Val_long(-734149490); break;
  case Qt::Key_LaunchB: result = Val_long(-734149489); break;
  case Qt::Key_LaunchC: result = Val_long(-734149488); break;
  case Qt::Key_LaunchD: result = Val_long(-734149487); break;
  case Qt::Key_LaunchE: result = Val_long(-734149486); break;
  case Qt::Key_LaunchF: result = Val_long(-734149485); break;
  case Qt::Key_MonBrightnessUp: result = Val_long(-716452520); break;
  case Qt::Key_MonBrightnessDown: result = Val_long(245291167); break;
  case Qt::Key_KeyboardLightOnOff: result = Val_long(1004906625); break;
  case Qt::Key_KeyboardBrightnessUp: result = Val_long(-357822477); break;
  case Qt::Key_KeyboardBrightnessDown: result = Val_long(-292997126); break;
  case Qt::Key_PowerOff: result = Val_long(884431498); break;
  case Qt::Key_WakeUp: result = Val_long(-263194177); break;
  case Qt::Key_Eject: result = Val_long(36753649); break;
  case Qt::Key_ScreenSaver: result = Val_long(-446504599); break;
  case Qt::Key_WWW: result = Val_long(-77659593); break;
  case Qt::Key_Memo: result = Val_long(-248414502); break;
  case Qt::Key_LightBulb: result = Val_long(12517599); break;
  case Qt::Key_Shop: result = Val_long(-181727466); break;
  case Qt::Key_History: result = Val_long(1039535924); break;
  case Qt::Key_AddFavorite: result = Val_long(-693480131); break;
  case Qt::Key_HotLinks: result = Val_long(-852372852); break;
  case Qt::Key_BrightnessAdjust: result = Val_long(245656416); break;
  case Qt::Key_Finance: result = Val_long(-46506502); break;
  case Qt::Key_Community: result = Val_long(388855497); break;
  case Qt::Key_AudioRewind: result = Val_long(270640465); break;
  case Qt::Key_BackForward: result = Val_long(372972606); break;
  case Qt::Key_ApplicationLeft: result = Val_long(-705461929); break;
  case Qt::Key_ApplicationRight: result = Val_long(-701843316); break;
  case Qt::Key_Book: result = Val_long(-369902007); break;
  case Qt::Key_CD: result = Val_long(-192952159); break;
  case Qt::Key_Calculator: result = Val_long(575061794); break;
  case Qt::Key_ToDoList: result = Val_long(-565890172); break;
  case Qt::Key_ClearGrab: result = Val_long(-22165031); break;
  case Qt::Key_Close: result = Val_long(-591545960); break;
  case Qt::Key_Copy: result = Val_long(-358812203); break;
  case Qt::Key_Cut: result = Val_long(-78647454); break;
  case Qt::Key_Display: result = Val_long(351863842); break;
  case Qt::Key_DOS: result = Val_long(-78606232); break;
  case Qt::Key_Documents: result = Val_long(-604022056); break;
  case Qt::Key_Excel: result = Val_long(191908567); break;
  case Qt::Key_Explorer: result = Val_long(-281341153); break;
  case Qt::Key_Game: result = Val_long(-315150830); break;
  case Qt::Key_Go: result = Val_long(-192951224); break;
  case Qt::Key_iTouch: result = Val_long(691533974); break;
  case Qt::Key_LogOff: result = Val_long(390701931); break;
  case Qt::Key_Market: result = Val_long(-178030628); break;
  case Qt::Key_Meeting: result = Val_long(-455917733); break;
  case Qt::Key_MenuKB: result = Val_long(-1067421930); break;
  case Qt::Key_MenuPB: result = Val_long(-1067420815); break;
  case Qt::Key_MySites: result = Val_long(-8192544); break;
  case Qt::Key_News: result = Val_long(-237322701); break;
  case Qt::Key_OfficeHome: result = Val_long(470341019); break;
  case Qt::Key_Option: result = Val_long(-429009515); break;
  case Qt::Key_Paste: result = Val_long(-776932045); break;
  case Qt::Key_Phone: result = Val_long(-699505330); break;
  case Qt::Key_Calendar: result = Val_long(511256798); break;
  case Qt::Key_Reply: result = Val_long(-81745142); break;
  case Qt::Key_Reload: result = Val_long(1053971833); break;
  case Qt::Key_RotateWindows: result = Val_long(325620552); break;
  case Qt::Key_RotationPB: result = Val_long(-823303984); break;
  case Qt::Key_RotationKB: result = Val_long(-823305099); break;
  case Qt::Key_Save: result = Val_long(-182074019); break;
  case Qt::Key_Send: result = Val_long(-181876888); break;
  case Qt::Key_Spell: result = Val_long(365182856); break;
  case Qt::Key_SplitScreen: result = Val_long(33850310); break;
  case Qt::Key_Support: result = Val_long(382854639); break;
  case Qt::Key_TaskPane: result = Val_long(400759917); break;
  case Qt::Key_Terminal: result = Val_long(255519644); break;
  case Qt::Key_Tools: result = Val_long(680080379); break;
  case Qt::Key_Travel: result = Val_long(8295226); break;
  case Qt::Key_Video: result = Val_long(-883509669); break;
  case Qt::Key_Word: result = Val_long(-137020438); break;
  case Qt::Key_Xfer: result = Val_long(-126381317); break;
  case Qt::Key_ZoomIn: result = Val_long(900272120); break;
  case Qt::Key_ZoomOut: result = Val_long(1045003547); break;
  case Qt::Key_Away: result = Val_long(-380596850); break;
  case Qt::Key_Messenger: result = Val_long(-1042467661); break;
  case Qt::Key_WebCam: result = Val_long(937270779); break;
  case Qt::Key_MailForward: result = Val_long(-895180754); break;
  case Qt::Key_Pictures: result = Val_long(-517193707); break;
  case Qt::Key_Music: result = Val_long(615871109); break;
  case Qt::Key_Battery: result = Val_long(620323245); break;
  case Qt::Key_Bluetooth: result = Val_long(532462094); break;
  case Qt::Key_WLAN: result = Val_long(-138771902); break;
  case Qt::Key_UWB: result = Val_long(-77759072); break;
  case Qt::Key_AudioForward: result = Val_long(-1038790225); break;
  case Qt::Key_AudioRepeat: result = Val_long(192811697); break;
  case Qt::Key_AudioRandomPlay: result = Val_long(562042861); break;
  case Qt::Key_Subtitle: result = Val_long(293389880); break;
  case Qt::Key_AudioCycleTrack: result = Val_long(757106267); break;
  case Qt::Key_Time: result = Val_long(-170588627); break;
  case Qt::Key_Hibernate: result = Val_long(674564658); break;
  case Qt::Key_View: result = Val_long(-148411259); break;
  case Qt::Key_TopMenu: result = Val_long(-1021763404); break;
  case Qt::Key_PowerDown: result = Val_long(-461805337); break;
  case Qt::Key_Suspend: result = Val_long(-788657828); break;
  case Qt::Key_ContrastAdjust: result = Val_long(-1020461743); break;
  case Qt::Key_LaunchG: result = Val_long(-734149484); break;
  case Qt::Key_LaunchH: result = Val_long(-734149483); break;
  case Qt::Key_TouchpadToggle: result = Val_long(346644424); break;
  case Qt::Key_TouchpadOn: result = Val_long(236771155); break;
  case Qt::Key_TouchpadOff: result = Val_long(-887125317); break;
  case Qt::Key_MicMute: result = Val_long(1035294176); break;
  case Qt::Key_Red: result = Val_long(-77905103); break;
  case Qt::Key_Green: result = Val_long(776450211); break;
  case Qt::Key_Yellow: result = Val_long(189768084); break;
  case Qt::Key_Blue: result = Val_long(-370049862); break;
  case Qt::Key_ChannelUp: result = Val_long(-328772642); break;
  case Qt::Key_ChannelDown: result = Val_long(-930247515); break;
  case Qt::Key_Guide: result = Val_long(809917596); break;
  case Qt::Key_Info: result = Val_long(-292326770); break;
  case Qt::Key_Settings: result = Val_long(713901827); break;
  case Qt::Key_MicVolumeUp: result = Val_long(443716956); break;
  case Qt::Key_MicVolumeDown: result = Val_long(17476003); break;
  case Qt::Key_New: result = Val_long(-78104000); break;
  case Qt::Key_Open: result = Val_long(-225690134); break;
  case Qt::Key_Find: result = Val_long(-325842343); break;
  case Qt::Key_Undo: result = Val_long(-159252412); break;
  case Qt::Key_Redo: result = Val_long(-192968674); break;
  case Qt::Key_MediaLast: result = Val_long(-294547654); break;
  case Qt::Key_Select: result = Val_long(623254812); break;
  case Qt::Key_Yes: result = Val_long(-77556985); break;
  case Qt::Key_No: result = Val_long(-192949663); break;
  case Qt::Key_Cancel: result = Val_long(-215552102); break;
  case Qt::Key_Printer: result = Val_long(-572346438); break;
  case Qt::Key_Execute: result = Val_long(633070613); break;
  case Qt::Key_Sleep: result = Val_long(320823031); break;
  case Qt::Key_Play: result = Val_long(-214800364); break;
  case Qt::Key_Zoom: result = Val_long(-103752397); break;
  case Qt::Key_Exit: result = Val_long(-336187074); break;
  case Qt::Key_Context1: result = Val_long(-830773886); break;
  case Qt::Key_Context2: result = Val_long(-830773885); break;
  case Qt::Key_Context3: result = Val_long(-830773884); break;
  case Qt::Key_Context4: result = Val_long(-830773883); break;
  case Qt::Key_Call: result = Val_long(-359509314); break;
  case Qt::Key_Hangup: result = Val_long(-218966931); break;
  case Qt::Key_Flip: result = Val_long(-325694259); break;
  case Qt::Key_ToggleCallHangup: result = Val_long(248911967); break;
  case Qt::Key_VoiceDial: result = Val_long(-956007326); break;
  case Qt::Key_LastNumberRedial: result = Val_long(-1026936286); break;
  case Qt::Key_Camera: result = Val_long(-226539323); break;
  case Qt::Key_CameraFocus: result = Val_long(790666451); break;
  case Qt::Key_unknown: result = Val_long(-304556662); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ArrowType mlqt_Qt_ArrowType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -974903896: return Qt::NoArrow;
  case -816463538: return Qt::UpArrow;
  case -579326489: return Qt::DownArrow;
  case -599635934: return Qt::LeftArrow;
  case 520447085: return Qt::RightArrow;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ArrowType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ArrowType_to_ocaml(const Qt::ArrowType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoArrow: result = Val_long(-974903896); break;
  case Qt::UpArrow: result = Val_long(-816463538); break;
  case Qt::DownArrow: result = Val_long(-579326489); break;
  case Qt::LeftArrow: result = Val_long(-599635934); break;
  case Qt::RightArrow: result = Val_long(520447085); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::PenStyle mlqt_Qt_PenStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 853342968: return Qt::NoPen;
  case -28718689: return Qt::SolidLine;
  case 38495878: return Qt::DashLine;
  case -363321603: return Qt::DotLine;
  case 9738187: return Qt::DashDotLine;
  case -419709018: return Qt::DashDotDotLine;
  case -176415913: return Qt::CustomDashLine;
  case -857415931: return Qt::MPenStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::PenStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_PenStyle_to_ocaml(const Qt::PenStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoPen: result = Val_long(853342968); break;
  case Qt::SolidLine: result = Val_long(-28718689); break;
  case Qt::DashLine: result = Val_long(38495878); break;
  case Qt::DotLine: result = Val_long(-363321603); break;
  case Qt::DashDotLine: result = Val_long(9738187); break;
  case Qt::DashDotDotLine: result = Val_long(-419709018); break;
  case Qt::CustomDashLine: result = Val_long(-176415913); break;
  case Qt::MPenStyle: result = Val_long(-857415931); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::PenCapStyle mlqt_Qt_PenCapStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 875012537: return Qt::FlatCap;
  case -736457899: return Qt::SquareCap;
  case 974689412: return Qt::RoundCap;
  case 642466411: return Qt::MPenCapStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::PenCapStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_PenCapStyle_to_ocaml(const Qt::PenCapStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::FlatCap: result = Val_long(875012537); break;
  case Qt::SquareCap: result = Val_long(-736457899); break;
  case Qt::RoundCap: result = Val_long(974689412); break;
  case Qt::MPenCapStyle: result = Val_long(642466411); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::PenJoinStyle mlqt_Qt_PenJoinStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -151050641: return Qt::MiterJoin;
  case -526824092: return Qt::BevelJoin;
  case 538212152: return Qt::RoundJoin;
  case 210459563: return Qt::SvgMiterJoin;
  case -436591429: return Qt::MPenJoinStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::PenJoinStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_PenJoinStyle_to_ocaml(const Qt::PenJoinStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MiterJoin: result = Val_long(-151050641); break;
  case Qt::BevelJoin: result = Val_long(-526824092); break;
  case Qt::RoundJoin: result = Val_long(538212152); break;
  case Qt::SvgMiterJoin: result = Val_long(210459563); break;
  case Qt::MPenJoinStyle: result = Val_long(-436591429); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::BrushStyle mlqt_Qt_BrushStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -649264039: return Qt::NoBrush;
  case 208433541: return Qt::SolidPattern;
  case -1017382754: return Qt::Dense1Pattern;
  case -57775427: return Qt::Dense2Pattern;
  case 901831900: return Qt::Dense3Pattern;
  case -286044421: return Qt::Dense4Pattern;
  case 673562906: return Qt::Dense5Pattern;
  case -514313415: return Qt::Dense6Pattern;
  case 445293912: return Qt::Dense7Pattern;
  case -488817115: return Qt::HorPattern;
  case 696365645: return Qt::VerPattern;
  case -883750192: return Qt::CrossPattern;
  case -595145533: return Qt::BDiagPattern;
  case -477854913: return Qt::FDiagPattern;
  case 594645787: return Qt::DiagCrossPattern;
  case -1028398661: return Qt::LinearGradientPattern;
  case 629087745: return Qt::RadialGradientPattern;
  case 74275225: return Qt::ConicalGradientPattern;
  case -577922347: return Qt::TexturePattern;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::BrushStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_BrushStyle_to_ocaml(const Qt::BrushStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoBrush: result = Val_long(-649264039); break;
  case Qt::SolidPattern: result = Val_long(208433541); break;
  case Qt::Dense1Pattern: result = Val_long(-1017382754); break;
  case Qt::Dense2Pattern: result = Val_long(-57775427); break;
  case Qt::Dense3Pattern: result = Val_long(901831900); break;
  case Qt::Dense4Pattern: result = Val_long(-286044421); break;
  case Qt::Dense5Pattern: result = Val_long(673562906); break;
  case Qt::Dense6Pattern: result = Val_long(-514313415); break;
  case Qt::Dense7Pattern: result = Val_long(445293912); break;
  case Qt::HorPattern: result = Val_long(-488817115); break;
  case Qt::VerPattern: result = Val_long(696365645); break;
  case Qt::CrossPattern: result = Val_long(-883750192); break;
  case Qt::BDiagPattern: result = Val_long(-595145533); break;
  case Qt::FDiagPattern: result = Val_long(-477854913); break;
  case Qt::DiagCrossPattern: result = Val_long(594645787); break;
  case Qt::LinearGradientPattern: result = Val_long(-1028398661); break;
  case Qt::RadialGradientPattern: result = Val_long(629087745); break;
  case Qt::ConicalGradientPattern: result = Val_long(74275225); break;
  case Qt::TexturePattern: result = Val_long(-577922347); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::SizeMode mlqt_Qt_SizeMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1048383752: return Qt::AbsoluteSize;
  case -102749235: return Qt::RelativeSize;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::SizeMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_SizeMode_to_ocaml(const Qt::SizeMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AbsoluteSize: result = Val_long(-1048383752); break;
  case Qt::RelativeSize: result = Val_long(-102749235); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::UIEffect mlqt_Qt_UIEffect_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1022733021: return Qt::UI_General;
  case 589590293: return Qt::UI_AnimateMenu;
  case 578032614: return Qt::UI_FadeMenu;
  case -514439656: return Qt::UI_AnimateCombo;
  case 140529997: return Qt::UI_AnimateTooltip;
  case 898942236: return Qt::UI_FadeTooltip;
  case 138044893: return Qt::UI_AnimateToolBox;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::UIEffect)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_UIEffect_to_ocaml(const Qt::UIEffect& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::UI_General: result = Val_long(1022733021); break;
  case Qt::UI_AnimateMenu: result = Val_long(589590293); break;
  case Qt::UI_FadeMenu: result = Val_long(578032614); break;
  case Qt::UI_AnimateCombo: result = Val_long(-514439656); break;
  case Qt::UI_AnimateTooltip: result = Val_long(140529997); break;
  case Qt::UI_FadeTooltip: result = Val_long(898942236); break;
  case Qt::UI_AnimateToolBox: result = Val_long(138044893); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::CursorShape mlqt_Qt_CursorShape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -570814113: return Qt::ArrowCursor;
  case -895241532: return Qt::UpArrowCursor;
  case 626432598: return Qt::CrossCursor;
  case 128919371: return Qt::WaitCursor;
  case -535053490: return Qt::IBeamCursor;
  case -1034338184: return Qt::SizeVerCursor;
  case -182585440: return Qt::SizeHorCursor;
  case 30319746: return Qt::SizeBDiagCursor;
  case 88625542: return Qt::SizeFDiagCursor;
  case 191625654: return Qt::SizeAllCursor;
  case 786280746: return Qt::BlankCursor;
  case 761051218: return Qt::SplitVCursor;
  case -416269884: return Qt::SplitHCursor;
  case -234575625: return Qt::PointingHandCursor;
  case 573543567: return Qt::ForbiddenCursor;
  case 911784259: return Qt::WhatsThisCursor;
  case -934064881: return Qt::BusyCursor;
  case 801302575: return Qt::OpenHandCursor;
  case -910113647: return Qt::ClosedHandCursor;
  case -198856289: return Qt::DragCopyCursor;
  case 244303355: return Qt::DragMoveCursor;
  case 210374564: return Qt::DragLinkCursor;
  case 303725637: return Qt::BitmapCursor;
  case 110637447: return Qt::CustomCursor;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::CursorShape)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_CursorShape_to_ocaml(const Qt::CursorShape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ArrowCursor: result = Val_long(-570814113); break;
  case Qt::UpArrowCursor: result = Val_long(-895241532); break;
  case Qt::CrossCursor: result = Val_long(626432598); break;
  case Qt::WaitCursor: result = Val_long(128919371); break;
  case Qt::IBeamCursor: result = Val_long(-535053490); break;
  case Qt::SizeVerCursor: result = Val_long(-1034338184); break;
  case Qt::SizeHorCursor: result = Val_long(-182585440); break;
  case Qt::SizeBDiagCursor: result = Val_long(30319746); break;
  case Qt::SizeFDiagCursor: result = Val_long(88625542); break;
  case Qt::SizeAllCursor: result = Val_long(191625654); break;
  case Qt::BlankCursor: result = Val_long(786280746); break;
  case Qt::SplitVCursor: result = Val_long(761051218); break;
  case Qt::SplitHCursor: result = Val_long(-416269884); break;
  case Qt::PointingHandCursor: result = Val_long(-234575625); break;
  case Qt::ForbiddenCursor: result = Val_long(573543567); break;
  case Qt::WhatsThisCursor: result = Val_long(911784259); break;
  case Qt::BusyCursor: result = Val_long(-934064881); break;
  case Qt::OpenHandCursor: result = Val_long(801302575); break;
  case Qt::ClosedHandCursor: result = Val_long(-910113647); break;
  case Qt::DragCopyCursor: result = Val_long(-198856289); break;
  case Qt::DragMoveCursor: result = Val_long(244303355); break;
  case Qt::DragLinkCursor: result = Val_long(210374564); break;
  case Qt::BitmapCursor: result = Val_long(303725637); break;
  case Qt::CustomCursor: result = Val_long(110637447); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TextFormat mlqt_Qt_TextFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -675635273: return Qt::PlainText;
  case 256526601: return Qt::RichText;
  case 164722652: return Qt::AutoText;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TextFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TextFormat_to_ocaml(const Qt::TextFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::PlainText: result = Val_long(-675635273); break;
  case Qt::RichText: result = Val_long(256526601); break;
  case Qt::AutoText: result = Val_long(164722652); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::AspectRatioMode mlqt_Qt_AspectRatioMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -882781183: return Qt::IgnoreAspectRatio;
  case 516006766: return Qt::KeepAspectRatio;
  case -1012098781: return Qt::KeepAspectRatioByExpanding;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::AspectRatioMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_AspectRatioMode_to_ocaml(const Qt::AspectRatioMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::IgnoreAspectRatio: result = Val_long(-882781183); break;
  case Qt::KeepAspectRatio: result = Val_long(516006766); break;
  case Qt::KeepAspectRatioByExpanding: result = Val_long(-1012098781); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::DockWidgetArea mlqt_Qt_DockWidgetArea_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 110031051: return Qt::LeftDockWidgetArea;
  case -832998624: return Qt::RightDockWidgetArea;
  case 192284569: return Qt::TopDockWidgetArea;
  case 384032431: return Qt::BottomDockWidgetArea;
  case -64915449: return Qt::DockWidgetArea_Mask;
  case -784059771: return Qt::NoDockWidgetArea;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::DockWidgetArea)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_DockWidgetArea_to_ocaml(const Qt::DockWidgetArea& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::LeftDockWidgetArea: result = Val_long(110031051); break;
  case Qt::RightDockWidgetArea: result = Val_long(-832998624); break;
  case Qt::TopDockWidgetArea: result = Val_long(192284569); break;
  case Qt::BottomDockWidgetArea: result = Val_long(384032431); break;
  case Qt::DockWidgetArea_Mask: result = Val_long(-64915449); break;
  case Qt::NoDockWidgetArea: result = Val_long(-784059771); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ToolBarArea mlqt_Qt_ToolBarArea_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 803294625: return Qt::LeftToolBarArea;
  case -290769876: return Qt::RightToolBarArea;
  case -193852909: return Qt::TopToolBarArea;
  case 664832317: return Qt::BottomToolBarArea;
  case -760807037: return Qt::ToolBarArea_Mask;
  case -737995865: return Qt::NoToolBarArea;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ToolBarArea)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ToolBarArea_to_ocaml(const Qt::ToolBarArea& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::LeftToolBarArea: result = Val_long(803294625); break;
  case Qt::RightToolBarArea: result = Val_long(-290769876); break;
  case Qt::TopToolBarArea: result = Val_long(-193852909); break;
  case Qt::BottomToolBarArea: result = Val_long(664832317); break;
  case Qt::ToolBarArea_Mask: result = Val_long(-760807037); break;
  case Qt::NoToolBarArea: result = Val_long(-737995865); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::DateFormat mlqt_Qt_DateFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 521168283: return Qt::TextDate;
  case 891430387: return Qt::ISODate;
  case -838376489: return Qt::SystemLocaleDate;
  case -265531384: return Qt::LocaleDate;
  case 184730241: return Qt::SystemLocaleShortDate;
  case -775869453: return Qt::SystemLocaleLongDate;
  case -757604049: return Qt::DefaultLocaleShortDate;
  case 327351557: return Qt::DefaultLocaleLongDate;
  case -898404509: return Qt::RFC2822Date;
  case -658056865: return Qt::ISODateWithMs;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::DateFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_DateFormat_to_ocaml(const Qt::DateFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TextDate: result = Val_long(521168283); break;
  case Qt::ISODate: result = Val_long(891430387); break;
  case Qt::SystemLocaleDate: result = Val_long(-838376489); break;
  case Qt::LocaleDate: result = Val_long(-265531384); break;
  case Qt::SystemLocaleShortDate: result = Val_long(184730241); break;
  case Qt::SystemLocaleLongDate: result = Val_long(-775869453); break;
  case Qt::DefaultLocaleShortDate: result = Val_long(-757604049); break;
  case Qt::DefaultLocaleLongDate: result = Val_long(327351557); break;
  case Qt::RFC2822Date: result = Val_long(-898404509); break;
  case Qt::ISODateWithMs: result = Val_long(-658056865); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TimeSpec mlqt_Qt_TimeSpec_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 823276280: return Qt::LocalTime;
  case 4245764: return Qt::UTC;
  case 1009658471: return Qt::OffsetFromUTC;
  case -888413959: return Qt::TimeZone;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TimeSpec)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TimeSpec_to_ocaml(const Qt::TimeSpec& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::LocalTime: result = Val_long(823276280); break;
  case Qt::UTC: result = Val_long(4245764); break;
  case Qt::OffsetFromUTC: result = Val_long(1009658471); break;
  case Qt::TimeZone: result = Val_long(-888413959); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::DayOfWeek mlqt_Qt_DayOfWeek_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -67708112: return Qt::Monday;
  case -527137427: return Qt::Tuesday;
  case -295821194: return Qt::Wednesday;
  case -519780038: return Qt::Thursday;
  case -430112513: return Qt::Friday;
  case -672447911: return Qt::Saturday;
  case -696090512: return Qt::Sunday;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::DayOfWeek)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_DayOfWeek_to_ocaml(const Qt::DayOfWeek& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::Monday: result = Val_long(-67708112); break;
  case Qt::Tuesday: result = Val_long(-527137427); break;
  case Qt::Wednesday: result = Val_long(-295821194); break;
  case Qt::Thursday: result = Val_long(-519780038); break;
  case Qt::Friday: result = Val_long(-430112513); break;
  case Qt::Saturday: result = Val_long(-672447911); break;
  case Qt::Sunday: result = Val_long(-696090512); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ScrollBarPolicy mlqt_Qt_ScrollBarPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 993600141: return Qt::ScrollBarAsNeeded;
  case 600025946: return Qt::ScrollBarAlwaysOff;
  case 1013837716: return Qt::ScrollBarAlwaysOn;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ScrollBarPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ScrollBarPolicy_to_ocaml(const Qt::ScrollBarPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ScrollBarAsNeeded: result = Val_long(993600141); break;
  case Qt::ScrollBarAlwaysOff: result = Val_long(600025946); break;
  case Qt::ScrollBarAlwaysOn: result = Val_long(1013837716); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::CaseSensitivity mlqt_Qt_CaseSensitivity_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -711028063: return Qt::CaseInsensitive;
  case -55300314: return Qt::CaseSensitive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::CaseSensitivity)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_CaseSensitivity_to_ocaml(const Qt::CaseSensitivity& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::CaseInsensitive: result = Val_long(-711028063); break;
  case Qt::CaseSensitive: result = Val_long(-55300314); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Corner mlqt_Qt_Corner_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 918004241: return Qt::TopLeftCorner;
  case -79011748: return Qt::TopRightCorner;
  case 372946471: return Qt::BottomLeftCorner;
  case 779673478: return Qt::BottomRightCorner;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Corner)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Corner_to_ocaml(const Qt::Corner& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TopLeftCorner: result = Val_long(918004241); break;
  case Qt::TopRightCorner: result = Val_long(-79011748); break;
  case Qt::BottomLeftCorner: result = Val_long(372946471); break;
  case Qt::BottomRightCorner: result = Val_long(779673478); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Edge mlqt_Qt_Edge_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 829485394: return Qt::TopEdge;
  case 599508996: return Qt::LeftEdge;
  case -811074023: return Qt::RightEdge;
  case 514273512: return Qt::BottomEdge;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Edge)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Edge_to_ocaml(const Qt::Edge& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TopEdge: result = Val_long(829485394); break;
  case Qt::LeftEdge: result = Val_long(599508996); break;
  case Qt::RightEdge: result = Val_long(-811074023); break;
  case Qt::BottomEdge: result = Val_long(514273512); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ConnectionType mlqt_Qt_ConnectionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -437430131: return Qt::AutoConnection;
  case -139216697: return Qt::DirectConnection;
  case -3928111: return Qt::QueuedConnection;
  case -980046938: return Qt::BlockingQueuedConnection;
  case 439087791: return Qt::UniqueConnection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ConnectionType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ConnectionType_to_ocaml(const Qt::ConnectionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AutoConnection: result = Val_long(-437430131); break;
  case Qt::DirectConnection: result = Val_long(-139216697); break;
  case Qt::QueuedConnection: result = Val_long(-3928111); break;
  case Qt::BlockingQueuedConnection: result = Val_long(-980046938); break;
  case Qt::UniqueConnection: result = Val_long(439087791); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ShortcutContext mlqt_Qt_ShortcutContext_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 37378698: return Qt::WidgetShortcut;
  case 215370422: return Qt::WindowShortcut;
  case -444160554: return Qt::ApplicationShortcut;
  case -469878001: return Qt::WidgetWithChildrenShortcut;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ShortcutContext)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ShortcutContext_to_ocaml(const Qt::ShortcutContext& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::WidgetShortcut: result = Val_long(37378698); break;
  case Qt::WindowShortcut: result = Val_long(215370422); break;
  case Qt::ApplicationShortcut: result = Val_long(-444160554); break;
  case Qt::WidgetWithChildrenShortcut: result = Val_long(-469878001); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::FillRule mlqt_Qt_FillRule_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1002919060: return Qt::OddEvenFill;
  case 737898653: return Qt::WindingFill;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::FillRule)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_FillRule_to_ocaml(const Qt::FillRule& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::OddEvenFill: result = Val_long(-1002919060); break;
  case Qt::WindingFill: result = Val_long(737898653); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::MaskMode mlqt_Qt_MaskMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -32506990: return Qt::MaskInColor;
  case 235246369: return Qt::MaskOutColor;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::MaskMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_MaskMode_to_ocaml(const Qt::MaskMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MaskInColor: result = Val_long(-32506990); break;
  case Qt::MaskOutColor: result = Val_long(235246369); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ClipOperation mlqt_Qt_ClipOperation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -974380079: return Qt::NoClip;
  case 982557956: return Qt::ReplaceClip;
  case -69449937: return Qt::IntersectClip;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ClipOperation)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ClipOperation_to_ocaml(const Qt::ClipOperation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoClip: result = Val_long(-974380079); break;
  case Qt::ReplaceClip: result = Val_long(982557956); break;
  case Qt::IntersectClip: result = Val_long(-69449937); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ItemSelectionMode mlqt_Qt_ItemSelectionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 581882575: return Qt::ContainsItemShape;
  case -434051174: return Qt::IntersectsItemShape;
  case 770315450: return Qt::ContainsItemBoundingRect;
  case -391970993: return Qt::IntersectsItemBoundingRect;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ItemSelectionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ItemSelectionMode_to_ocaml(const Qt::ItemSelectionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ContainsItemShape: result = Val_long(581882575); break;
  case Qt::IntersectsItemShape: result = Val_long(-434051174); break;
  case Qt::ContainsItemBoundingRect: result = Val_long(770315450); break;
  case Qt::IntersectsItemBoundingRect: result = Val_long(-391970993); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ItemSelectionOperation mlqt_Qt_ItemSelectionOperation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -90716776: return Qt::ReplaceSelection;
  case 892143312: return Qt::AddToSelection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ItemSelectionOperation)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ItemSelectionOperation_to_ocaml(const Qt::ItemSelectionOperation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ReplaceSelection: result = Val_long(-90716776); break;
  case Qt::AddToSelection: result = Val_long(892143312); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TransformationMode mlqt_Qt_TransformationMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -689827419: return Qt::FastTransformation;
  case 382761655: return Qt::SmoothTransformation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TransformationMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TransformationMode_to_ocaml(const Qt::TransformationMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::FastTransformation: result = Val_long(-689827419); break;
  case Qt::SmoothTransformation: result = Val_long(382761655); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::Axis mlqt_Qt_Axis_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -694856423: return Qt::XAxis;
  case -369366630: return Qt::YAxis;
  case -43876837: return Qt::ZAxis;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::Axis)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_Axis_to_ocaml(const Qt::Axis& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::XAxis: result = Val_long(-694856423); break;
  case Qt::YAxis: result = Val_long(-369366630); break;
  case Qt::ZAxis: result = Val_long(-43876837); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::FocusReason mlqt_Qt_FocusReason_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -173585481: return Qt::MouseFocusReason;
  case 770821511: return Qt::TabFocusReason;
  case 747507182: return Qt::BacktabFocusReason;
  case -749730074: return Qt::ActiveWindowFocusReason;
  case -594553072: return Qt::PopupFocusReason;
  case -1046572874: return Qt::ShortcutFocusReason;
  case -106222392: return Qt::MenuBarFocusReason;
  case 274085100: return Qt::OtherFocusReason;
  case -159272229: return Qt::NoFocusReason;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::FocusReason)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_FocusReason_to_ocaml(const Qt::FocusReason& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MouseFocusReason: result = Val_long(-173585481); break;
  case Qt::TabFocusReason: result = Val_long(770821511); break;
  case Qt::BacktabFocusReason: result = Val_long(747507182); break;
  case Qt::ActiveWindowFocusReason: result = Val_long(-749730074); break;
  case Qt::PopupFocusReason: result = Val_long(-594553072); break;
  case Qt::ShortcutFocusReason: result = Val_long(-1046572874); break;
  case Qt::MenuBarFocusReason: result = Val_long(-106222392); break;
  case Qt::OtherFocusReason: result = Val_long(274085100); break;
  case Qt::NoFocusReason: result = Val_long(-159272229); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ContextMenuPolicy mlqt_Qt_ContextMenuPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -868841395: return Qt::NoContextMenu;
  case 402568205: return Qt::DefaultContextMenu;
  case 555489873: return Qt::ActionsContextMenu;
  case 955066077: return Qt::CustomContextMenu;
  case -315668650: return Qt::PreventContextMenu;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ContextMenuPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ContextMenuPolicy_to_ocaml(const Qt::ContextMenuPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoContextMenu: result = Val_long(-868841395); break;
  case Qt::DefaultContextMenu: result = Val_long(402568205); break;
  case Qt::ActionsContextMenu: result = Val_long(555489873); break;
  case Qt::CustomContextMenu: result = Val_long(955066077); break;
  case Qt::PreventContextMenu: result = Val_long(-315668650); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::InputMethodQuery mlqt_Qt_InputMethodQuery_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -858540835: return Qt::ImEnabled;
  case -205912363: return Qt::ImCursorRectangle;
  case 559160307: return Qt::ImFont;
  case 802489539: return Qt::ImCursorPosition;
  case 308025869: return Qt::ImSurroundingText;
  case 462803191: return Qt::ImCurrentSelection;
  case 1001823439: return Qt::ImMaximumTextLength;
  case -563026078: return Qt::ImAnchorPosition;
  case 723139176: return Qt::ImHints;
  case 65949205: return Qt::ImPreferredLanguage;
  case -264085916: return Qt::ImAbsolutePosition;
  case 859409702: return Qt::ImTextBeforeCursor;
  case -915492159: return Qt::ImTextAfterCursor;
  case 372503525: return Qt::ImEnterKeyType;
  case 226783062: return Qt::ImAnchorRectangle;
  case -286495258: return Qt::ImInputItemClipRectangle;
  case -400192351: return Qt::ImPlatformData;
  case 639540486: return Qt::ImQueryInput;
  case 372333341: return Qt::ImQueryAll;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::InputMethodQuery)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_InputMethodQuery_to_ocaml(const Qt::InputMethodQuery& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ImEnabled: result = Val_long(-858540835); break;
  case Qt::ImCursorRectangle: result = Val_long(-205912363); break;
  case Qt::ImFont: result = Val_long(559160307); break;
  case Qt::ImCursorPosition: result = Val_long(802489539); break;
  case Qt::ImSurroundingText: result = Val_long(308025869); break;
  case Qt::ImCurrentSelection: result = Val_long(462803191); break;
  case Qt::ImMaximumTextLength: result = Val_long(1001823439); break;
  case Qt::ImAnchorPosition: result = Val_long(-563026078); break;
  case Qt::ImHints: result = Val_long(723139176); break;
  case Qt::ImPreferredLanguage: result = Val_long(65949205); break;
  case Qt::ImAbsolutePosition: result = Val_long(-264085916); break;
  case Qt::ImTextBeforeCursor: result = Val_long(859409702); break;
  case Qt::ImTextAfterCursor: result = Val_long(-915492159); break;
  case Qt::ImEnterKeyType: result = Val_long(372503525); break;
  case Qt::ImAnchorRectangle: result = Val_long(226783062); break;
  case Qt::ImInputItemClipRectangle: result = Val_long(-286495258); break;
  case Qt::ImPlatformData: result = Val_long(-400192351); break;
  case Qt::ImQueryInput: result = Val_long(639540486); break;
  case Qt::ImQueryAll: result = Val_long(372333341); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::InputMethodHint mlqt_Qt_InputMethodHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 102024380: return Qt::ImhNone;
  case -591396293: return Qt::ImhHiddenText;
  case 574400220: return Qt::ImhSensitiveData;
  case -902624482: return Qt::ImhNoAutoUppercase;
  case 64785110: return Qt::ImhPreferNumbers;
  case -454845090: return Qt::ImhPreferUppercase;
  case -464864899: return Qt::ImhPreferLowercase;
  case -404880687: return Qt::ImhNoPredictiveText;
  case -9566158: return Qt::ImhDate;
  case 168263185: return Qt::ImhTime;
  case -709185456: return Qt::ImhPreferLatin;
  case -414679415: return Qt::ImhMultiLine;
  case 875353014: return Qt::ImhDigitsOnly;
  case 497580158: return Qt::ImhFormattedNumbersOnly;
  case 609624346: return Qt::ImhUppercaseOnly;
  case -186173255: return Qt::ImhLowercaseOnly;
  case 822216996: return Qt::ImhDialableCharactersOnly;
  case -295111186: return Qt::ImhEmailCharactersOnly;
  case 860243585: return Qt::ImhUrlCharactersOnly;
  case -433767156: return Qt::ImhLatinOnly;
  case -998656420: return Qt::ImhExclusiveInputMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::InputMethodHint)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_InputMethodHint_to_ocaml(const Qt::InputMethodHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ImhNone: result = Val_long(102024380); break;
  case Qt::ImhHiddenText: result = Val_long(-591396293); break;
  case Qt::ImhSensitiveData: result = Val_long(574400220); break;
  case Qt::ImhNoAutoUppercase: result = Val_long(-902624482); break;
  case Qt::ImhPreferNumbers: result = Val_long(64785110); break;
  case Qt::ImhPreferUppercase: result = Val_long(-454845090); break;
  case Qt::ImhPreferLowercase: result = Val_long(-464864899); break;
  case Qt::ImhNoPredictiveText: result = Val_long(-404880687); break;
  case Qt::ImhDate: result = Val_long(-9566158); break;
  case Qt::ImhTime: result = Val_long(168263185); break;
  case Qt::ImhPreferLatin: result = Val_long(-709185456); break;
  case Qt::ImhMultiLine: result = Val_long(-414679415); break;
  case Qt::ImhDigitsOnly: result = Val_long(875353014); break;
  case Qt::ImhFormattedNumbersOnly: result = Val_long(497580158); break;
  case Qt::ImhUppercaseOnly: result = Val_long(609624346); break;
  case Qt::ImhLowercaseOnly: result = Val_long(-186173255); break;
  case Qt::ImhDialableCharactersOnly: result = Val_long(822216996); break;
  case Qt::ImhEmailCharactersOnly: result = Val_long(-295111186); break;
  case Qt::ImhUrlCharactersOnly: result = Val_long(860243585); break;
  case Qt::ImhLatinOnly: result = Val_long(-433767156); break;
  case Qt::ImhExclusiveInputMask: result = Val_long(-998656420); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::EnterKeyType mlqt_Qt_EnterKeyType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1041448954: return Qt::EnterKeyDefault;
  case -132331625: return Qt::EnterKeyReturn;
  case -717833303: return Qt::EnterKeyDone;
  case -780386929: return Qt::EnterKeyGo;
  case -551987089: return Qt::EnterKeySend;
  case -773406129: return Qt::EnterKeySearch;
  case -607432678: return Qt::EnterKeyNext;
  case 115058398: return Qt::EnterKeyPrevious;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::EnterKeyType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_EnterKeyType_to_ocaml(const Qt::EnterKeyType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::EnterKeyDefault: result = Val_long(1041448954); break;
  case Qt::EnterKeyReturn: result = Val_long(-132331625); break;
  case Qt::EnterKeyDone: result = Val_long(-717833303); break;
  case Qt::EnterKeyGo: result = Val_long(-780386929); break;
  case Qt::EnterKeySend: result = Val_long(-551987089); break;
  case Qt::EnterKeySearch: result = Val_long(-773406129); break;
  case Qt::EnterKeyNext: result = Val_long(-607432678); break;
  case Qt::EnterKeyPrevious: result = Val_long(115058398); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ToolButtonStyle mlqt_Qt_ToolButtonStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 506193711: return Qt::ToolButtonIconOnly;
  case -199264669: return Qt::ToolButtonTextOnly;
  case -345862742: return Qt::ToolButtonTextBesideIcon;
  case -411221926: return Qt::ToolButtonTextUnderIcon;
  case 396849814: return Qt::ToolButtonFollowStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ToolButtonStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ToolButtonStyle_to_ocaml(const Qt::ToolButtonStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ToolButtonIconOnly: result = Val_long(506193711); break;
  case Qt::ToolButtonTextOnly: result = Val_long(-199264669); break;
  case Qt::ToolButtonTextBesideIcon: result = Val_long(-345862742); break;
  case Qt::ToolButtonTextUnderIcon: result = Val_long(-411221926); break;
  case Qt::ToolButtonFollowStyle: result = Val_long(396849814); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::LayoutDirection mlqt_Qt_LayoutDirection_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 430845690: return Qt::LeftToRight;
  case -887040002: return Qt::RightToLeft;
  case 922857508: return Qt::LayoutDirectionAuto;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::LayoutDirection)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_LayoutDirection_to_ocaml(const Qt::LayoutDirection& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::LeftToRight: result = Val_long(430845690); break;
  case Qt::RightToLeft: result = Val_long(-887040002); break;
  case Qt::LayoutDirectionAuto: result = Val_long(922857508); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::AnchorPoint mlqt_Qt_AnchorPoint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 833769788: return Qt::AnchorLeft;
  case -400810354: return Qt::AnchorHorizontalCenter;
  case -1050554105: return Qt::AnchorRight;
  case 33028864: return Qt::AnchorTop;
  case 729993312: return Qt::AnchorVerticalCenter;
  case 193439584: return Qt::AnchorBottom;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::AnchorPoint)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_AnchorPoint_to_ocaml(const Qt::AnchorPoint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::AnchorLeft: result = Val_long(833769788); break;
  case Qt::AnchorHorizontalCenter: result = Val_long(-400810354); break;
  case Qt::AnchorRight: result = Val_long(-1050554105); break;
  case Qt::AnchorTop: result = Val_long(33028864); break;
  case Qt::AnchorVerticalCenter: result = Val_long(729993312); break;
  case Qt::AnchorBottom: result = Val_long(193439584); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::FindChildOption mlqt_Qt_FindChildOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 828125645: return Qt::FindDirectChildrenOnly;
  case 972790439: return Qt::FindChildrenRecursively;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::FindChildOption)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_FindChildOption_to_ocaml(const Qt::FindChildOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::FindDirectChildrenOnly: result = Val_long(828125645); break;
  case Qt::FindChildrenRecursively: result = Val_long(972790439); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::DropAction mlqt_Qt_DropAction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1027889813: return Qt::CopyAction;
  case -584730169: return Qt::MoveAction;
  case -618658960: return Qt::LinkAction;
  case -900874270: return Qt::ActionMask;
  case -1019529096: return Qt::TargetMoveAction;
  case -620179832: return Qt::IgnoreAction;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::DropAction)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_DropAction_to_ocaml(const Qt::DropAction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::CopyAction: result = Val_long(-1027889813); break;
  case Qt::MoveAction: result = Val_long(-584730169); break;
  case Qt::LinkAction: result = Val_long(-618658960); break;
  case Qt::ActionMask: result = Val_long(-900874270); break;
  case Qt::TargetMoveAction: result = Val_long(-1019529096); break;
  case Qt::IgnoreAction: result = Val_long(-620179832); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::CheckState mlqt_Qt_CheckState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 821664206: return Qt::Unchecked;
  case -785931111: return Qt::PartiallyChecked;
  case -529147129: return Qt::Checked;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::CheckState)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_CheckState_to_ocaml(const Qt::CheckState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::Unchecked: result = Val_long(821664206); break;
  case Qt::PartiallyChecked: result = Val_long(-785931111); break;
  case Qt::Checked: result = Val_long(-529147129); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ItemDataRole mlqt_Qt_ItemDataRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 399778488: return Qt::DisplayRole;
  case -25683738: return Qt::DecorationRole;
  case 628583104: return Qt::EditRole;
  case 354861529: return Qt::ToolTipRole;
  case -870941377: return Qt::StatusTipRole;
  case 889303203: return Qt::WhatsThisRole;
  case 668910853: return Qt::FontRole;
  case 683852524: return Qt::TextAlignmentRole;
  case -576697205: return Qt::BackgroundColorRole;
  case 647977964: return Qt::TextColorRole;
  case 1063447647: return Qt::CheckStateRole;
  case 898801465: return Qt::AccessibleTextRole;
  case -1008236324: return Qt::AccessibleDescriptionRole;
  case 701036190: return Qt::SizeHintRole;
  case 919530722: return Qt::InitialSortOrderRole;
  case -494602323: return Qt::DisplayPropertyRole;
  case 107989979: return Qt::DecorationPropertyRole;
  case 590159822: return Qt::ToolTipPropertyRole;
  case -989875916: return Qt::StatusTipPropertyRole;
  case 253946008: return Qt::WhatsThisPropertyRole;
  case -400169087: return Qt::UserRole;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ItemDataRole)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ItemDataRole_to_ocaml(const Qt::ItemDataRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::DisplayRole: result = Val_long(399778488); break;
  case Qt::DecorationRole: result = Val_long(-25683738); break;
  case Qt::EditRole: result = Val_long(628583104); break;
  case Qt::ToolTipRole: result = Val_long(354861529); break;
  case Qt::StatusTipRole: result = Val_long(-870941377); break;
  case Qt::WhatsThisRole: result = Val_long(889303203); break;
  case Qt::FontRole: result = Val_long(668910853); break;
  case Qt::TextAlignmentRole: result = Val_long(683852524); break;
  case Qt::BackgroundColorRole: result = Val_long(-576697205); break;
  case Qt::TextColorRole: result = Val_long(647977964); break;
  case Qt::CheckStateRole: result = Val_long(1063447647); break;
  case Qt::AccessibleTextRole: result = Val_long(898801465); break;
  case Qt::AccessibleDescriptionRole: result = Val_long(-1008236324); break;
  case Qt::SizeHintRole: result = Val_long(701036190); break;
  case Qt::InitialSortOrderRole: result = Val_long(919530722); break;
  case Qt::DisplayPropertyRole: result = Val_long(-494602323); break;
  case Qt::DecorationPropertyRole: result = Val_long(107989979); break;
  case Qt::ToolTipPropertyRole: result = Val_long(590159822); break;
  case Qt::StatusTipPropertyRole: result = Val_long(-989875916); break;
  case Qt::WhatsThisPropertyRole: result = Val_long(253946008); break;
  case Qt::UserRole: result = Val_long(-400169087); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ItemFlag mlqt_Qt_ItemFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -933685101: return Qt::NoItemFlags;
  case 779328755: return Qt::ItemIsSelectable;
  case 887466433: return Qt::ItemIsEditable;
  case -908930576: return Qt::ItemIsDragEnabled;
  case -708013291: return Qt::ItemIsDropEnabled;
  case 627501146: return Qt::ItemIsUserCheckable;
  case 169423364: return Qt::ItemIsEnabled;
  case -347075790: return Qt::ItemIsAutoTristate;
  case 658026208: return Qt::ItemNeverHasChildren;
  case -1057031666: return Qt::ItemIsUserTristate;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ItemFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ItemFlag_to_ocaml(const Qt::ItemFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoItemFlags: result = Val_long(-933685101); break;
  case Qt::ItemIsSelectable: result = Val_long(779328755); break;
  case Qt::ItemIsEditable: result = Val_long(887466433); break;
  case Qt::ItemIsDragEnabled: result = Val_long(-908930576); break;
  case Qt::ItemIsDropEnabled: result = Val_long(-708013291); break;
  case Qt::ItemIsUserCheckable: result = Val_long(627501146); break;
  case Qt::ItemIsEnabled: result = Val_long(169423364); break;
  case Qt::ItemIsAutoTristate: result = Val_long(-347075790); break;
  case Qt::ItemNeverHasChildren: result = Val_long(658026208); break;
  case Qt::ItemIsUserTristate: result = Val_long(-1057031666); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::MatchFlag mlqt_Qt_MatchFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -667550617: return Qt::MatchExactly;
  case -566035356: return Qt::MatchContains;
  case -428327428: return Qt::MatchStartsWith;
  case 226368675: return Qt::MatchEndsWith;
  case -322859346: return Qt::MatchRegExp;
  case -622887905: return Qt::MatchWildcard;
  case -735675328: return Qt::MatchFixedString;
  case 414245601: return Qt::MatchCaseSensitive;
  case 659363215: return Qt::MatchWrap;
  case 702416269: return Qt::MatchRecursive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::MatchFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_MatchFlag_to_ocaml(const Qt::MatchFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MatchExactly: result = Val_long(-667550617); break;
  case Qt::MatchContains: result = Val_long(-566035356); break;
  case Qt::MatchStartsWith: result = Val_long(-428327428); break;
  case Qt::MatchEndsWith: result = Val_long(226368675); break;
  case Qt::MatchRegExp: result = Val_long(-322859346); break;
  case Qt::MatchWildcard: result = Val_long(-622887905); break;
  case Qt::MatchFixedString: result = Val_long(-735675328); break;
  case Qt::MatchCaseSensitive: result = Val_long(414245601); break;
  case Qt::MatchWrap: result = Val_long(659363215); break;
  case Qt::MatchRecursive: result = Val_long(702416269); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WindowModality mlqt_Qt_WindowModality_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 267682816: return Qt::NonModal;
  case -513978883: return Qt::WindowModal;
  case 834846429: return Qt::ApplicationModal;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WindowModality)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WindowModality_to_ocaml(const Qt::WindowModality& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NonModal: result = Val_long(267682816); break;
  case Qt::WindowModal: result = Val_long(-513978883); break;
  case Qt::ApplicationModal: result = Val_long(834846429); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TextInteractionFlag mlqt_Qt_TextInteractionFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 312635588: return Qt::NoTextInteraction;
  case 368231755: return Qt::TextSelectableByMouse;
  case -634287807: return Qt::TextSelectableByKeyboard;
  case -694540833: return Qt::LinksAccessibleByMouse;
  case 305773869: return Qt::LinksAccessibleByKeyboard;
  case -768356719: return Qt::TextEditable;
  case -136096872: return Qt::TextEditorInteraction;
  case -650970825: return Qt::TextBrowserInteraction;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TextInteractionFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TextInteractionFlag_to_ocaml(const Qt::TextInteractionFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoTextInteraction: result = Val_long(312635588); break;
  case Qt::TextSelectableByMouse: result = Val_long(368231755); break;
  case Qt::TextSelectableByKeyboard: result = Val_long(-634287807); break;
  case Qt::LinksAccessibleByMouse: result = Val_long(-694540833); break;
  case Qt::LinksAccessibleByKeyboard: result = Val_long(305773869); break;
  case Qt::TextEditable: result = Val_long(-768356719); break;
  case Qt::TextEditorInteraction: result = Val_long(-136096872); break;
  case Qt::TextBrowserInteraction: result = Val_long(-650970825); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::EventPriority mlqt_Qt_EventPriority_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -869462852: return Qt::HighEventPriority;
  case -183602473: return Qt::NormalEventPriority;
  case -148228982: return Qt::LowEventPriority;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::EventPriority)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_EventPriority_to_ocaml(const Qt::EventPriority& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::HighEventPriority: result = Val_long(-869462852); break;
  case Qt::NormalEventPriority: result = Val_long(-183602473); break;
  case Qt::LowEventPriority: result = Val_long(-148228982); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::SizeHint mlqt_Qt_SizeHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 823929231: return Qt::MinimumSize;
  case -329220478: return Qt::PreferredSize;
  case -331971423: return Qt::MaximumSize;
  case -827975124: return Qt::MinimumDescent;
  case -561941923: return Qt::NSizeHints;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::SizeHint)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_SizeHint_to_ocaml(const Qt::SizeHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MinimumSize: result = Val_long(823929231); break;
  case Qt::PreferredSize: result = Val_long(-329220478); break;
  case Qt::MaximumSize: result = Val_long(-331971423); break;
  case Qt::MinimumDescent: result = Val_long(-827975124); break;
  case Qt::NSizeHints: result = Val_long(-561941923); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::WindowFrameSection mlqt_Qt_WindowFrameSection_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1033283460: return Qt::NoSection;
  case -1046619010: return Qt::LeftSection;
  case 615749673: return Qt::TopLeftSection;
  case -1068042256: return Qt::TopSection;
  case -528000130: return Qt::TopRightSection;
  case 278454665: return Qt::RightSection;
  case -167239404: return Qt::BottomRightSection;
  case 7871002: return Qt::BottomSection;
  case -673048749: return Qt::BottomLeftSection;
  case -290844568: return Qt::TitleBarArea;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::WindowFrameSection)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_WindowFrameSection_to_ocaml(const Qt::WindowFrameSection& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoSection: result = Val_long(1033283460); break;
  case Qt::LeftSection: result = Val_long(-1046619010); break;
  case Qt::TopLeftSection: result = Val_long(615749673); break;
  case Qt::TopSection: result = Val_long(-1068042256); break;
  case Qt::TopRightSection: result = Val_long(-528000130); break;
  case Qt::RightSection: result = Val_long(278454665); break;
  case Qt::BottomRightSection: result = Val_long(-167239404); break;
  case Qt::BottomSection: result = Val_long(7871002); break;
  case Qt::BottomLeftSection: result = Val_long(-673048749); break;
  case Qt::TitleBarArea: result = Val_long(-290844568); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::CoordinateSystem mlqt_Qt_CoordinateSystem_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 668346853: return Qt::DeviceCoordinates;
  case -893804590: return Qt::LogicalCoordinates;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::CoordinateSystem)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_CoordinateSystem_to_ocaml(const Qt::CoordinateSystem& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::DeviceCoordinates: result = Val_long(668346853); break;
  case Qt::LogicalCoordinates: result = Val_long(-893804590); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TouchPointState mlqt_Qt_TouchPointState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -323373455: return Qt::TouchPointPressed;
  case -689385918: return Qt::TouchPointMoved;
  case 424763397: return Qt::TouchPointStationary;
  case 1016855054: return Qt::TouchPointReleased;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TouchPointState)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TouchPointState_to_ocaml(const Qt::TouchPointState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TouchPointPressed: result = Val_long(-323373455); break;
  case Qt::TouchPointMoved: result = Val_long(-689385918); break;
  case Qt::TouchPointStationary: result = Val_long(424763397); break;
  case Qt::TouchPointReleased: result = Val_long(1016855054); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::GestureState mlqt_Qt_GestureState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 17267752: return Qt::NoGesture;
  case -710451752: return Qt::GestureStarted;
  case 1046214354: return Qt::GestureUpdated;
  case -282041605: return Qt::GestureFinished;
  case -112728094: return Qt::GestureCanceled;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::GestureState)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_GestureState_to_ocaml(const Qt::GestureState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoGesture: result = Val_long(17267752); break;
  case Qt::GestureStarted: result = Val_long(-710451752); break;
  case Qt::GestureUpdated: result = Val_long(1046214354); break;
  case Qt::GestureFinished: result = Val_long(-282041605); break;
  case Qt::GestureCanceled: result = Val_long(-112728094); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::GestureType mlqt_Qt_GestureType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -90960250: return Qt::TapGesture;
  case 399790870: return Qt::TapAndHoldGesture;
  case 117787340: return Qt::PanGesture;
  case -981484657: return Qt::PinchGesture;
  case -534869681: return Qt::SwipeGesture;
  case 323457720: return Qt::CustomGesture;
  case -598861043: return Qt::LastGestureType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::GestureType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_GestureType_to_ocaml(const Qt::GestureType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::TapGesture: result = Val_long(-90960250); break;
  case Qt::TapAndHoldGesture: result = Val_long(399790870); break;
  case Qt::PanGesture: result = Val_long(117787340); break;
  case Qt::PinchGesture: result = Val_long(-981484657); break;
  case Qt::SwipeGesture: result = Val_long(-534869681); break;
  case Qt::CustomGesture: result = Val_long(323457720); break;
  case Qt::LastGestureType: result = Val_long(-598861043); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::GestureFlag mlqt_Qt_GestureFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 601852982: return Qt::DontStartGestureOnChildren;
  case -933377048: return Qt::ReceivePartialGestures;
  case -51154926: return Qt::IgnoredGesturesPropagateToParent;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::GestureFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_GestureFlag_to_ocaml(const Qt::GestureFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::DontStartGestureOnChildren: result = Val_long(601852982); break;
  case Qt::ReceivePartialGestures: result = Val_long(-933377048); break;
  case Qt::IgnoredGesturesPropagateToParent: result = Val_long(-51154926); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::NativeGestureType mlqt_Qt_NativeGestureType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -162640407: return Qt::BeginNativeGesture;
  case -401062665: return Qt::EndNativeGesture;
  case 19410485: return Qt::PanNativeGesture;
  case 214591103: return Qt::ZoomNativeGesture;
  case 962906742: return Qt::SmartZoomNativeGesture;
  case -537915849: return Qt::RotateNativeGesture;
  case 759148792: return Qt::SwipeNativeGesture;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::NativeGestureType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_NativeGestureType_to_ocaml(const Qt::NativeGestureType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::BeginNativeGesture: result = Val_long(-162640407); break;
  case Qt::EndNativeGesture: result = Val_long(-401062665); break;
  case Qt::PanNativeGesture: result = Val_long(19410485); break;
  case Qt::ZoomNativeGesture: result = Val_long(214591103); break;
  case Qt::SmartZoomNativeGesture: result = Val_long(962906742); break;
  case Qt::RotateNativeGesture: result = Val_long(-537915849); break;
  case Qt::SwipeNativeGesture: result = Val_long(759148792); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::NavigationMode mlqt_Qt_NavigationMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 585919375: return Qt::NavigationModeNone;
  case 271917764: return Qt::NavigationModeKeypadTabOrder;
  case 158967039: return Qt::NavigationModeKeypadDirectional;
  case -653078148: return Qt::NavigationModeCursorAuto;
  case -541583148: return Qt::NavigationModeCursorForceVisible;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::NavigationMode)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_NavigationMode_to_ocaml(const Qt::NavigationMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NavigationModeNone: result = Val_long(585919375); break;
  case Qt::NavigationModeKeypadTabOrder: result = Val_long(271917764); break;
  case Qt::NavigationModeKeypadDirectional: result = Val_long(158967039); break;
  case Qt::NavigationModeCursorAuto: result = Val_long(-653078148); break;
  case Qt::NavigationModeCursorForceVisible: result = Val_long(-541583148); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::CursorMoveStyle mlqt_Qt_CursorMoveStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -276402825: return Qt::LogicalMoveStyle;
  case 519889248: return Qt::VisualMoveStyle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::CursorMoveStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_CursorMoveStyle_to_ocaml(const Qt::CursorMoveStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::LogicalMoveStyle: result = Val_long(-276402825); break;
  case Qt::VisualMoveStyle: result = Val_long(519889248); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::TimerType mlqt_Qt_TimerType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 148812682: return Qt::PreciseTimer;
  case 872587446: return Qt::CoarseTimer;
  case 840885152: return Qt::VeryCoarseTimer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::TimerType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_TimerType_to_ocaml(const Qt::TimerType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::PreciseTimer: result = Val_long(148812682); break;
  case Qt::CoarseTimer: result = Val_long(872587446); break;
  case Qt::VeryCoarseTimer: result = Val_long(840885152); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ScrollPhase mlqt_Qt_ScrollPhase_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 849333773: return Qt::NoScrollPhase;
  case -563754308: return Qt::ScrollBegin;
  case 651830806: return Qt::ScrollUpdate;
  case -539915858: return Qt::ScrollEnd;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ScrollPhase)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ScrollPhase_to_ocaml(const Qt::ScrollPhase& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::NoScrollPhase: result = Val_long(849333773); break;
  case Qt::ScrollBegin: result = Val_long(-563754308); break;
  case Qt::ScrollUpdate: result = Val_long(651830806); break;
  case Qt::ScrollEnd: result = Val_long(-539915858); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::MouseEventSource mlqt_Qt_MouseEventSource_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1026202660: return Qt::MouseEventNotSynthesized;
  case 671094507: return Qt::MouseEventSynthesizedBySystem;
  case -236505889: return Qt::MouseEventSynthesizedByQt;
  case -524043820: return Qt::MouseEventSynthesizedByApplication;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::MouseEventSource)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_MouseEventSource_to_ocaml(const Qt::MouseEventSource& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MouseEventNotSynthesized: result = Val_long(-1026202660); break;
  case Qt::MouseEventSynthesizedBySystem: result = Val_long(671094507); break;
  case Qt::MouseEventSynthesizedByQt: result = Val_long(-236505889); break;
  case Qt::MouseEventSynthesizedByApplication: result = Val_long(-524043820); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::MouseEventFlag mlqt_Qt_MouseEventFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -21111900: return Qt::MouseEventCreatedDoubleClick;
  case 895653805: return Qt::MouseEventFlagMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::MouseEventFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_MouseEventFlag_to_ocaml(const Qt::MouseEventFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::MouseEventCreatedDoubleClick: result = Val_long(-21111900); break;
  case Qt::MouseEventFlagMask: result = Val_long(895653805); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

Qt::ChecksumType mlqt_Qt_ChecksumType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -377989429: return Qt::ChecksumIso3309;
  case -763523668: return Qt::ChecksumItuV41;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (Qt::ChecksumType)Long_val(Field(v, 1));
  }
}

value& mlqt_Qt_ChecksumType_to_ocaml(const Qt::ChecksumType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case Qt::ChecksumIso3309: result = Val_long(-377989429); break;
  case Qt::ChecksumItuV41: result = Val_long(-763523668); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextLength::Type mlqt_QTextLength_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -266337182: return QTextLength::VariableLength;
  case 527116634: return QTextLength::FixedLength;
  case -819869760: return QTextLength::PercentageLength;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextLength::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextLength_Type_to_ocaml(const QTextLength::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextLength::VariableLength: result = Val_long(-266337182); break;
  case QTextLength::FixedLength: result = Val_long(527116634); break;
  case QTextLength::PercentageLength: result = Val_long(-819869760); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPaintEngine::PaintEngineFeature mlqt_QPaintEngine_PaintEngineFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -925705243: return QPaintEngine::PrimitiveTransform;
  case -551642852: return QPaintEngine::PatternTransform;
  case -189349393: return QPaintEngine::PixmapTransform;
  case -199742422: return QPaintEngine::PatternBrush;
  case 279605816: return QPaintEngine::LinearGradientFill;
  case -789746126: return QPaintEngine::RadialGradientFill;
  case -988249190: return QPaintEngine::ConicalGradientFill;
  case -867483597: return QPaintEngine::AlphaBlend;
  case 287822975: return QPaintEngine::PorterDuff;
  case 442915779: return QPaintEngine::PainterPaths;
  case 281371412: return QPaintEngine::Antialiasing;
  case 520138674: return QPaintEngine::BrushStroke;
  case -251428697: return QPaintEngine::ConstantOpacity;
  case -109886449: return QPaintEngine::MaskedBrush;
  case -183696272: return QPaintEngine::PerspectiveTransform;
  case 459336127: return QPaintEngine::BlendModes;
  case 561393981: return QPaintEngine::ObjectBoundingModeGradients;
  case 892083634: return QPaintEngine::RasterOpModes;
  case -130826301: return QPaintEngine::PaintOutsidePaintEvent;
  case -1035648226: return QPaintEngine::AllFeatures;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPaintEngine::PaintEngineFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QPaintEngine_PaintEngineFeature_to_ocaml(const QPaintEngine::PaintEngineFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPaintEngine::PrimitiveTransform: result = Val_long(-925705243); break;
  case QPaintEngine::PatternTransform: result = Val_long(-551642852); break;
  case QPaintEngine::PixmapTransform: result = Val_long(-189349393); break;
  case QPaintEngine::PatternBrush: result = Val_long(-199742422); break;
  case QPaintEngine::LinearGradientFill: result = Val_long(279605816); break;
  case QPaintEngine::RadialGradientFill: result = Val_long(-789746126); break;
  case QPaintEngine::ConicalGradientFill: result = Val_long(-988249190); break;
  case QPaintEngine::AlphaBlend: result = Val_long(-867483597); break;
  case QPaintEngine::PorterDuff: result = Val_long(287822975); break;
  case QPaintEngine::PainterPaths: result = Val_long(442915779); break;
  case QPaintEngine::Antialiasing: result = Val_long(281371412); break;
  case QPaintEngine::BrushStroke: result = Val_long(520138674); break;
  case QPaintEngine::ConstantOpacity: result = Val_long(-251428697); break;
  case QPaintEngine::MaskedBrush: result = Val_long(-109886449); break;
  case QPaintEngine::PerspectiveTransform: result = Val_long(-183696272); break;
  case QPaintEngine::BlendModes: result = Val_long(459336127); break;
  case QPaintEngine::ObjectBoundingModeGradients: result = Val_long(561393981); break;
  case QPaintEngine::RasterOpModes: result = Val_long(892083634); break;
  case QPaintEngine::PaintOutsidePaintEvent: result = Val_long(-130826301); break;
  case QPaintEngine::AllFeatures: result = Val_long(-1035648226); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPaintEngine::DirtyFlag mlqt_QPaintEngine_DirtyFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -283750393: return QPaintEngine::DirtyPen;
  case 374405928: return QPaintEngine::DirtyBrush;
  case 1018124078: return QPaintEngine::DirtyBrushOrigin;
  case 1037773537: return QPaintEngine::DirtyFont;
  case -867009920: return QPaintEngine::DirtyBackground;
  case 647739907: return QPaintEngine::DirtyBackgroundMode;
  case -929186022: return QPaintEngine::DirtyTransform;
  case -586185098: return QPaintEngine::DirtyClipRegion;
  case -397351257: return QPaintEngine::DirtyClipPath;
  case 79707066: return QPaintEngine::DirtyHints;
  case -91484517: return QPaintEngine::DirtyCompositionMode;
  case 337318079: return QPaintEngine::DirtyClipEnabled;
  case -902920199: return QPaintEngine::DirtyOpacity;
  case 744868689: return QPaintEngine::AllDirty;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPaintEngine::DirtyFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QPaintEngine_DirtyFlag_to_ocaml(const QPaintEngine::DirtyFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPaintEngine::DirtyPen: result = Val_long(-283750393); break;
  case QPaintEngine::DirtyBrush: result = Val_long(374405928); break;
  case QPaintEngine::DirtyBrushOrigin: result = Val_long(1018124078); break;
  case QPaintEngine::DirtyFont: result = Val_long(1037773537); break;
  case QPaintEngine::DirtyBackground: result = Val_long(-867009920); break;
  case QPaintEngine::DirtyBackgroundMode: result = Val_long(647739907); break;
  case QPaintEngine::DirtyTransform: result = Val_long(-929186022); break;
  case QPaintEngine::DirtyClipRegion: result = Val_long(-586185098); break;
  case QPaintEngine::DirtyClipPath: result = Val_long(-397351257); break;
  case QPaintEngine::DirtyHints: result = Val_long(79707066); break;
  case QPaintEngine::DirtyCompositionMode: result = Val_long(-91484517); break;
  case QPaintEngine::DirtyClipEnabled: result = Val_long(337318079); break;
  case QPaintEngine::DirtyOpacity: result = Val_long(-902920199); break;
  case QPaintEngine::AllDirty: result = Val_long(744868689); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPaintEngine::PolygonDrawMode mlqt_QPaintEngine_PolygonDrawMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -924995508: return QPaintEngine::OddEvenMode;
  case 815822205: return QPaintEngine::WindingMode;
  case 907459210: return QPaintEngine::ConvexMode;
  case -984475677: return QPaintEngine::PolylineMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPaintEngine::PolygonDrawMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QPaintEngine_PolygonDrawMode_to_ocaml(const QPaintEngine::PolygonDrawMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPaintEngine::OddEvenMode: result = Val_long(-924995508); break;
  case QPaintEngine::WindingMode: result = Val_long(815822205); break;
  case QPaintEngine::ConvexMode: result = Val_long(907459210); break;
  case QPaintEngine::PolylineMode: result = Val_long(-984475677); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPaintEngine::Type mlqt_QPaintEngine_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 4387128: return QPaintEngine::X11;
  case 902170211: return QPaintEngine::Windows;
  case -818136719: return QPaintEngine::QuickDraw;
  case -603212438: return QPaintEngine::CoreGraphics;
  case 870709035: return QPaintEngine::MacPrinter;
  case 340604144: return QPaintEngine::QWindowSystem;
  case 323605163: return QPaintEngine::PostScript;
  case -701973361: return QPaintEngine::OpenGL;
  case -941664098: return QPaintEngine::Picture;
  case 4146756: return QPaintEngine::SVG;
  case -276970851: return QPaintEngine::Raster;
  case 1034162234: return QPaintEngine::Direct3D;
  case 4000722: return QPaintEngine::Pdf;
  case -701970021: return QPaintEngine::OpenVG;
  case 226246851: return QPaintEngine::OpenGL2;
  case 390925086: return QPaintEngine::PaintBuffer;
  case 690724012: return QPaintEngine::Blitter;
  case 1034162011: return QPaintEngine::Direct2D;
  case 948354667: return QPaintEngine::User;
  case 456069871: return QPaintEngine::MaxUser;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPaintEngine::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QPaintEngine_Type_to_ocaml(const QPaintEngine::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPaintEngine::X11: result = Val_long(4387128); break;
  case QPaintEngine::Windows: result = Val_long(902170211); break;
  case QPaintEngine::QuickDraw: result = Val_long(-818136719); break;
  case QPaintEngine::CoreGraphics: result = Val_long(-603212438); break;
  case QPaintEngine::MacPrinter: result = Val_long(870709035); break;
  case QPaintEngine::QWindowSystem: result = Val_long(340604144); break;
  case QPaintEngine::PostScript: result = Val_long(323605163); break;
  case QPaintEngine::OpenGL: result = Val_long(-701973361); break;
  case QPaintEngine::Picture: result = Val_long(-941664098); break;
  case QPaintEngine::SVG: result = Val_long(4146756); break;
  case QPaintEngine::Raster: result = Val_long(-276970851); break;
  case QPaintEngine::Direct3D: result = Val_long(1034162234); break;
  case QPaintEngine::Pdf: result = Val_long(4000722); break;
  case QPaintEngine::OpenVG: result = Val_long(-701970021); break;
  case QPaintEngine::OpenGL2: result = Val_long(226246851); break;
  case QPaintEngine::PaintBuffer: result = Val_long(390925086); break;
  case QPaintEngine::Blitter: result = Val_long(690724012); break;
  case QPaintEngine::Direct2D: result = Val_long(1034162011); break;
  case QPaintEngine::User: result = Val_long(948354667); break;
  case QPaintEngine::MaxUser: result = Val_long(456069871); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextOption::TabType mlqt_QTextOption_TabType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1036603282: return QTextOption::LeftTab;
  case 1037145081: return QTextOption::RightTab;
  case -121151648: return QTextOption::CenterTab;
  case 810104238: return QTextOption::DelimiterTab;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextOption::TabType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextOption_TabType_to_ocaml(const QTextOption::TabType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextOption::LeftTab: result = Val_long(-1036603282); break;
  case QTextOption::RightTab: result = Val_long(1037145081); break;
  case QTextOption::CenterTab: result = Val_long(-121151648); break;
  case QTextOption::DelimiterTab: result = Val_long(810104238); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextOption::WrapMode mlqt_QTextOption_WrapMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -752292149: return QTextOption::NoWrap;
  case -628305708: return QTextOption::WordWrap;
  case 177746768: return QTextOption::ManualWrap;
  case -270513787: return QTextOption::WrapAnywhere;
  case -753237233: return QTextOption::WrapAtWordBoundaryOrAnywhere;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextOption::WrapMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextOption_WrapMode_to_ocaml(const QTextOption::WrapMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextOption::NoWrap: result = Val_long(-752292149); break;
  case QTextOption::WordWrap: result = Val_long(-628305708); break;
  case QTextOption::ManualWrap: result = Val_long(177746768); break;
  case QTextOption::WrapAnywhere: result = Val_long(-270513787); break;
  case QTextOption::WrapAtWordBoundaryOrAnywhere: result = Val_long(-753237233); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextOption::Flag mlqt_QTextOption_Flag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -908551319: return QTextOption::ShowTabsAndSpaces;
  case 812468598: return QTextOption::ShowLineAndParagraphSeparators;
  case 725634589: return QTextOption::AddSpaceForLineAndParagraphSeparators;
  case -645207323: return QTextOption::SuppressColors;
  case -114188513: return QTextOption::ShowDocumentTerminator;
  case -463670511: return QTextOption::IncludeTrailingSpaces;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextOption::Flag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextOption_Flag_to_ocaml(const QTextOption::Flag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextOption::ShowTabsAndSpaces: result = Val_long(-908551319); break;
  case QTextOption::ShowLineAndParagraphSeparators: result = Val_long(812468598); break;
  case QTextOption::AddSpaceForLineAndParagraphSeparators: result = Val_long(725634589); break;
  case QTextOption::SuppressColors: result = Val_long(-645207323); break;
  case QTextOption::ShowDocumentTerminator: result = Val_long(-114188513); break;
  case QTextOption::IncludeTrailingSpaces: result = Val_long(-463670511); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextItem::RenderFlag mlqt_QTextItem_RenderFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -887040002: return QTextItem::RightToLeft;
  case 518168424: return QTextItem::Overline;
  case 698610924: return QTextItem::Underline;
  case 772242780: return QTextItem::StrikeOut;
  case -186089976: return QTextItem::Dummy;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextItem::RenderFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextItem_RenderFlag_to_ocaml(const QTextItem::RenderFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextItem::RightToLeft: result = Val_long(-887040002); break;
  case QTextItem::Overline: result = Val_long(518168424); break;
  case QTextItem::Underline: result = Val_long(698610924); break;
  case QTextItem::StrikeOut: result = Val_long(772242780); break;
  case QTextItem::Dummy: result = Val_long(-186089976); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextLine::Edge mlqt_QTextLine_Edge_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -692954458: return QTextLine::Leading;
  case -830450436: return QTextLine::Trailing;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextLine::Edge)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextLine_Edge_to_ocaml(const QTextLine::Edge& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextLine::Leading: result = Val_long(-692954458); break;
  case QTextLine::Trailing: result = Val_long(-830450436); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextLine::CursorPosition mlqt_QTextLine_CursorPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1053032636: return QTextLine::CursorBetweenCharacters;
  case -390534348: return QTextLine::CursorOnCharacter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextLine::CursorPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextLine_CursorPosition_to_ocaml(const QTextLine::CursorPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextLine::CursorBetweenCharacters: result = Val_long(1053032636); break;
  case QTextLine::CursorOnCharacter: result = Val_long(-390534348); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurfaceFormat::FormatOption mlqt_QSurfaceFormat_FormatOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -435174661: return QSurfaceFormat::StereoBuffers;
  case 1032124412: return QSurfaceFormat::DebugContext;
  case 715938888: return QSurfaceFormat::DeprecatedFunctions;
  case 47859514: return QSurfaceFormat::ResetNotification;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurfaceFormat::FormatOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurfaceFormat_FormatOption_to_ocaml(const QSurfaceFormat::FormatOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurfaceFormat::StereoBuffers: result = Val_long(-435174661); break;
  case QSurfaceFormat::DebugContext: result = Val_long(1032124412); break;
  case QSurfaceFormat::DeprecatedFunctions: result = Val_long(715938888); break;
  case QSurfaceFormat::ResetNotification: result = Val_long(47859514); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurfaceFormat::SwapBehavior mlqt_QSurfaceFormat_SwapBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -718144378: return QSurfaceFormat::DefaultSwapBehavior;
  case 970226120: return QSurfaceFormat::SingleBuffer;
  case 136694545: return QSurfaceFormat::DoubleBuffer;
  case 745408094: return QSurfaceFormat::TripleBuffer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurfaceFormat::SwapBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurfaceFormat_SwapBehavior_to_ocaml(const QSurfaceFormat::SwapBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurfaceFormat::DefaultSwapBehavior: result = Val_long(-718144378); break;
  case QSurfaceFormat::SingleBuffer: result = Val_long(970226120); break;
  case QSurfaceFormat::DoubleBuffer: result = Val_long(136694545); break;
  case QSurfaceFormat::TripleBuffer: result = Val_long(745408094); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurfaceFormat::RenderableType mlqt_QSurfaceFormat_RenderableType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -540401845: return QSurfaceFormat::DefaultRenderableType;
  case -701973361: return QSurfaceFormat::OpenGL;
  case 1060928189: return QSurfaceFormat::OpenGLES;
  case -701970021: return QSurfaceFormat::OpenVG;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurfaceFormat::RenderableType)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurfaceFormat_RenderableType_to_ocaml(const QSurfaceFormat::RenderableType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurfaceFormat::DefaultRenderableType: result = Val_long(-540401845); break;
  case QSurfaceFormat::OpenGL: result = Val_long(-701973361); break;
  case QSurfaceFormat::OpenGLES: result = Val_long(1060928189); break;
  case QSurfaceFormat::OpenVG: result = Val_long(-701970021); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurfaceFormat::OpenGLContextProfile mlqt_QSurfaceFormat_OpenGLContextProfile_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -754455864: return QSurfaceFormat::NoProfile;
  case -612219542: return QSurfaceFormat::CoreProfile;
  case 922812153: return QSurfaceFormat::CompatibilityProfile;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurfaceFormat::OpenGLContextProfile)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurfaceFormat_OpenGLContextProfile_to_ocaml(const QSurfaceFormat::OpenGLContextProfile& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurfaceFormat::NoProfile: result = Val_long(-754455864); break;
  case QSurfaceFormat::CoreProfile: result = Val_long(-612219542); break;
  case QSurfaceFormat::CompatibilityProfile: result = Val_long(922812153); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGradient::Type mlqt_QGradient_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -820852459: return QGradient::LinearGradient;
  case 829800463: return QGradient::RadialGradient;
  case 188744055: return QGradient::ConicalGradient;
  case 290325361: return QGradient::NoGradient;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGradient::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QGradient_Type_to_ocaml(const QGradient::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGradient::LinearGradient: result = Val_long(-820852459); break;
  case QGradient::RadialGradient: result = Val_long(829800463); break;
  case QGradient::ConicalGradient: result = Val_long(188744055); break;
  case QGradient::NoGradient: result = Val_long(290325361); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGradient::Spread mlqt_QGradient_Spread_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -837310458: return QGradient::PadSpread;
  case -405186960: return QGradient::ReflectSpread;
  case 1021481038: return QGradient::RepeatSpread;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGradient::Spread)Long_val(Field(v, 1));
  }
}

value& mlqt_QGradient_Spread_to_ocaml(const QGradient::Spread& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGradient::PadSpread: result = Val_long(-837310458); break;
  case QGradient::ReflectSpread: result = Val_long(-405186960); break;
  case QGradient::RepeatSpread: result = Val_long(1021481038); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGradient::CoordinateMode mlqt_QGradient_CoordinateMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 923759020: return QGradient::LogicalMode;
  case 473204217: return QGradient::StretchToDeviceMode;
  case 804694630: return QGradient::ObjectBoundingMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGradient::CoordinateMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGradient_CoordinateMode_to_ocaml(const QGradient::CoordinateMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGradient::LogicalMode: result = Val_long(923759020); break;
  case QGradient::StretchToDeviceMode: result = Val_long(473204217); break;
  case QGradient::ObjectBoundingMode: result = Val_long(804694630); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImageReader::ImageReaderError mlqt_QImageReader_ImageReaderError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -638627842: return QImageReader::UnknownError;
  case -524500771: return QImageReader::FileNotFoundError;
  case -962816206: return QImageReader::DeviceError;
  case -622844292: return QImageReader::UnsupportedFormatError;
  case 179148647: return QImageReader::InvalidDataError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImageReader::ImageReaderError)Long_val(Field(v, 1));
  }
}

value& mlqt_QImageReader_ImageReaderError_to_ocaml(const QImageReader::ImageReaderError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImageReader::UnknownError: result = Val_long(-638627842); break;
  case QImageReader::FileNotFoundError: result = Val_long(-524500771); break;
  case QImageReader::DeviceError: result = Val_long(-962816206); break;
  case QImageReader::UnsupportedFormatError: result = Val_long(-622844292); break;
  case QImageReader::InvalidDataError: result = Val_long(179148647); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextLayout::CursorMode mlqt_QTextLayout_CursorMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -352797655: return QTextLayout::SkipCharacters;
  case 70442058: return QTextLayout::SkipWords;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextLayout::CursorMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextLayout_CursorMode_to_ocaml(const QTextLayout::CursorMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextLayout::SkipCharacters: result = Val_long(-352797655); break;
  case QTextLayout::SkipWords: result = Val_long(70442058); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::ColorModel mlqt_QPixelFormat_ColorModel_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 4093677: return QPixelFormat::RGB;
  case 3298029: return QPixelFormat::BGR;
  case 772834257: return QPixelFormat::Indexed;
  case 353003431: return QPixelFormat::Grayscale;
  case 746850044: return QPixelFormat::CMYK;
  case 3599073: return QPixelFormat::HSL;
  case 3599083: return QPixelFormat::HSV;
  case 4444922: return QPixelFormat::YUV;
  case 885266238: return QPixelFormat::Alpha;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::ColorModel)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_ColorModel_to_ocaml(const QPixelFormat::ColorModel& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::RGB: result = Val_long(4093677); break;
  case QPixelFormat::BGR: result = Val_long(3298029); break;
  case QPixelFormat::Indexed: result = Val_long(772834257); break;
  case QPixelFormat::Grayscale: result = Val_long(353003431); break;
  case QPixelFormat::CMYK: result = Val_long(746850044); break;
  case QPixelFormat::HSL: result = Val_long(3599073); break;
  case QPixelFormat::HSV: result = Val_long(3599083); break;
  case QPixelFormat::YUV: result = Val_long(4444922); break;
  case QPixelFormat::Alpha: result = Val_long(885266238); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::AlphaUsage mlqt_QPixelFormat_AlphaUsage_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -745041582: return QPixelFormat::UsesAlpha;
  case 1073525917: return QPixelFormat::IgnoresAlpha;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::AlphaUsage)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_AlphaUsage_to_ocaml(const QPixelFormat::AlphaUsage& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::UsesAlpha: result = Val_long(-745041582); break;
  case QPixelFormat::IgnoresAlpha: result = Val_long(1073525917); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::AlphaPosition mlqt_QPixelFormat_AlphaPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 588293194: return QPixelFormat::AtBeginning;
  case 971845768: return QPixelFormat::AtEnd;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::AlphaPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_AlphaPosition_to_ocaml(const QPixelFormat::AlphaPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::AtBeginning: result = Val_long(588293194); break;
  case QPixelFormat::AtEnd: result = Val_long(971845768); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::AlphaPremultiplied mlqt_QPixelFormat_AlphaPremultiplied_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -326118301: return QPixelFormat::NotPremultiplied;
  case -331398858: return QPixelFormat::Premultiplied;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::AlphaPremultiplied)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_AlphaPremultiplied_to_ocaml(const QPixelFormat::AlphaPremultiplied& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::NotPremultiplied: result = Val_long(-326118301); break;
  case QPixelFormat::Premultiplied: result = Val_long(-331398858); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::TypeInterpretation mlqt_QPixelFormat_TypeInterpretation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -639711959: return QPixelFormat::UnsignedInteger;
  case 292244263: return QPixelFormat::UnsignedShort;
  case 506992317: return QPixelFormat::UnsignedByte;
  case -36096630: return QPixelFormat::FloatingPoint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::TypeInterpretation)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_TypeInterpretation_to_ocaml(const QPixelFormat::TypeInterpretation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::UnsignedInteger: result = Val_long(-639711959); break;
  case QPixelFormat::UnsignedShort: result = Val_long(292244263); break;
  case QPixelFormat::UnsignedByte: result = Val_long(506992317); break;
  case QPixelFormat::FloatingPoint: result = Val_long(-36096630); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::YUVLayout mlqt_QPixelFormat_YUVLayout_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1070753786: return QPixelFormat::YUV444;
  case 1070753338: return QPixelFormat::YUV422;
  case 1070753114: return QPixelFormat::YUV411;
  case 407309080: return QPixelFormat::YUV420P;
  case 635612373: return QPixelFormat::YUV420SP;
  case 991259134: return QPixelFormat::YV12;
  case 947058343: return QPixelFormat::UYVY;
  case 991218361: return QPixelFormat::YUYV;
  case 869273897: return QPixelFormat::NV12;
  case 869274119: return QPixelFormat::NV21;
  case 813382514: return QPixelFormat::IMC1;
  case 813382515: return QPixelFormat::IMC2;
  case 813382516: return QPixelFormat::IMC3;
  case 813382517: return QPixelFormat::IMC4;
  case 19903: return QPixelFormat::Y8;
  case 4436862: return QPixelFormat::Y16;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::YUVLayout)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_YUVLayout_to_ocaml(const QPixelFormat::YUVLayout& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::YUV444: result = Val_long(1070753786); break;
  case QPixelFormat::YUV422: result = Val_long(1070753338); break;
  case QPixelFormat::YUV411: result = Val_long(1070753114); break;
  case QPixelFormat::YUV420P: result = Val_long(407309080); break;
  case QPixelFormat::YUV420SP: result = Val_long(635612373); break;
  case QPixelFormat::YV12: result = Val_long(991259134); break;
  case QPixelFormat::UYVY: result = Val_long(947058343); break;
  case QPixelFormat::YUYV: result = Val_long(991218361); break;
  case QPixelFormat::NV12: result = Val_long(869273897); break;
  case QPixelFormat::NV21: result = Val_long(869274119); break;
  case QPixelFormat::IMC1: result = Val_long(813382514); break;
  case QPixelFormat::IMC2: result = Val_long(813382515); break;
  case QPixelFormat::IMC3: result = Val_long(813382516); break;
  case QPixelFormat::IMC4: result = Val_long(813382517); break;
  case QPixelFormat::Y8: result = Val_long(19903); break;
  case QPixelFormat::Y16: result = Val_long(4436862); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPixelFormat::ByteOrder mlqt_QPixelFormat_ByteOrder_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -812811695: return QPixelFormat::LittleEndian;
  case -1037191845: return QPixelFormat::BigEndian;
  case -322481501: return QPixelFormat::CurrentSystemEndian;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPixelFormat::ByteOrder)Long_val(Field(v, 1));
  }
}

value& mlqt_QPixelFormat_ByteOrder_to_ocaml(const QPixelFormat::ByteOrder& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPixelFormat::LittleEndian: result = Val_long(-812811695); break;
  case QPixelFormat::BigEndian: result = Val_long(-1037191845); break;
  case QPixelFormat::CurrentSystemEndian: result = Val_long(-322481501); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTextureBlitter::Origin mlqt_QOpenGLTextureBlitter_Origin_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 869401144: return QOpenGLTextureBlitter::OriginBottomLeft;
  case -711389226: return QOpenGLTextureBlitter::OriginTopLeft;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTextureBlitter::Origin)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTextureBlitter_Origin_to_ocaml(const QOpenGLTextureBlitter::Origin& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTextureBlitter::OriginBottomLeft: result = Val_long(869401144); break;
  case QOpenGLTextureBlitter::OriginTopLeft: result = Val_long(-711389226); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCursor::MoveMode mlqt_QTextCursor_MoveMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 659601542: return QTextCursor::MoveAnchor;
  case -429902598: return QTextCursor::KeepAnchor;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCursor::MoveMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCursor_MoveMode_to_ocaml(const QTextCursor::MoveMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCursor::MoveAnchor: result = Val_long(659601542); break;
  case QTextCursor::KeepAnchor: result = Val_long(-429902598); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCursor::MoveOperation mlqt_QTextCursor_MoveOperation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -863332334: return QTextCursor::NoMove;
  case 389604418: return QTextCursor::Start;
  case 19067: return QTextCursor::Up;
  case 723612301: return QTextCursor::StartOfLine;
  case -769826668: return QTextCursor::StartOfBlock;
  case 845896803: return QTextCursor::StartOfWord;
  case 601936246: return QTextCursor::PreviousBlock;
  case -343801774: return QTextCursor::PreviousCharacter;
  case 1035017665: return QTextCursor::PreviousWord;
  case 847852583: return QTextCursor::Left;
  case -750936303: return QTextCursor::WordLeft;
  case 3455931: return QTextCursor::End;
  case 759637122: return QTextCursor::Down;
  case 817736390: return QTextCursor::EndOfLine;
  case 940020892: return QTextCursor::EndOfWord;
  case 892492347: return QTextCursor::EndOfBlock;
  case -32215238: return QTextCursor::NextBlock;
  case 517066774: return QTextCursor::NextCharacter;
  case -730110851: return QTextCursor::NextWord;
  case -57574468: return QTextCursor::Right;
  case -105210478: return QTextCursor::WordRight;
  case -952400811: return QTextCursor::NextCell;
  case 812727705: return QTextCursor::PreviousCell;
  case -225012025: return QTextCursor::NextRow;
  case 389591555: return QTextCursor::PreviousRow;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCursor::MoveOperation)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCursor_MoveOperation_to_ocaml(const QTextCursor::MoveOperation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCursor::NoMove: result = Val_long(-863332334); break;
  case QTextCursor::Start: result = Val_long(389604418); break;
  case QTextCursor::Up: result = Val_long(19067); break;
  case QTextCursor::StartOfLine: result = Val_long(723612301); break;
  case QTextCursor::StartOfBlock: result = Val_long(-769826668); break;
  case QTextCursor::StartOfWord: result = Val_long(845896803); break;
  case QTextCursor::PreviousBlock: result = Val_long(601936246); break;
  case QTextCursor::PreviousCharacter: result = Val_long(-343801774); break;
  case QTextCursor::PreviousWord: result = Val_long(1035017665); break;
  case QTextCursor::Left: result = Val_long(847852583); break;
  case QTextCursor::WordLeft: result = Val_long(-750936303); break;
  case QTextCursor::End: result = Val_long(3455931); break;
  case QTextCursor::Down: result = Val_long(759637122); break;
  case QTextCursor::EndOfLine: result = Val_long(817736390); break;
  case QTextCursor::EndOfWord: result = Val_long(940020892); break;
  case QTextCursor::EndOfBlock: result = Val_long(892492347); break;
  case QTextCursor::NextBlock: result = Val_long(-32215238); break;
  case QTextCursor::NextCharacter: result = Val_long(517066774); break;
  case QTextCursor::NextWord: result = Val_long(-730110851); break;
  case QTextCursor::Right: result = Val_long(-57574468); break;
  case QTextCursor::WordRight: result = Val_long(-105210478); break;
  case QTextCursor::NextCell: result = Val_long(-952400811); break;
  case QTextCursor::PreviousCell: result = Val_long(812727705); break;
  case QTextCursor::NextRow: result = Val_long(-225012025); break;
  case QTextCursor::PreviousRow: result = Val_long(389591555); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCursor::SelectionType mlqt_QTextCursor_SelectionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 574764100: return QTextCursor::WordUnderCursor;
  case -702555558: return QTextCursor::LineUnderCursor;
  case -347763231: return QTextCursor::BlockUnderCursor;
  case -188437701: return QTextCursor::Document;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCursor::SelectionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCursor_SelectionType_to_ocaml(const QTextCursor::SelectionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCursor::WordUnderCursor: result = Val_long(574764100); break;
  case QTextCursor::LineUnderCursor: result = Val_long(-702555558); break;
  case QTextCursor::BlockUnderCursor: result = Val_long(-347763231); break;
  case QTextCursor::Document: result = Val_long(-188437701); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::Target mlqt_QOpenGLTexture_Target_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 742330532: return QOpenGLTexture::Target1D;
  case 275446357: return QOpenGLTexture::Target1DArray;
  case 742330755: return QOpenGLTexture::Target2D;
  case 973107478: return QOpenGLTexture::Target2DArray;
  case 742330978: return QOpenGLTexture::Target3D;
  case 200232246: return QOpenGLTexture::TargetCubeMap;
  case 477883523: return QOpenGLTexture::TargetCubeMapArray;
  case -493303136: return QOpenGLTexture::Target2DMultisample;
  case -14577959: return QOpenGLTexture::Target2DMultisampleArray;
  case -557296002: return QOpenGLTexture::TargetRectangle;
  case -718585007: return QOpenGLTexture::TargetBuffer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::Target)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_Target_to_ocaml(const QOpenGLTexture::Target& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::Target1D: result = Val_long(742330532); break;
  case QOpenGLTexture::Target1DArray: result = Val_long(275446357); break;
  case QOpenGLTexture::Target2D: result = Val_long(742330755); break;
  case QOpenGLTexture::Target2DArray: result = Val_long(973107478); break;
  case QOpenGLTexture::Target3D: result = Val_long(742330978); break;
  case QOpenGLTexture::TargetCubeMap: result = Val_long(200232246); break;
  case QOpenGLTexture::TargetCubeMapArray: result = Val_long(477883523); break;
  case QOpenGLTexture::Target2DMultisample: result = Val_long(-493303136); break;
  case QOpenGLTexture::Target2DMultisampleArray: result = Val_long(-14577959); break;
  case QOpenGLTexture::TargetRectangle: result = Val_long(-557296002); break;
  case QOpenGLTexture::TargetBuffer: result = Val_long(-718585007); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::BindingTarget mlqt_QOpenGLTexture_BindingTarget_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -267587383: return QOpenGLTexture::BindingTarget1D;
  case 562394128: return QOpenGLTexture::BindingTarget1DArray;
  case -267587160: return QOpenGLTexture::BindingTarget2D;
  case -887428399: return QOpenGLTexture::BindingTarget2DArray;
  case -267586937: return QOpenGLTexture::BindingTarget3D;
  case 487180017: return QOpenGLTexture::BindingTargetCubeMap;
  case -1064874776: return QOpenGLTexture::BindingTargetCubeMapArray;
  case -931020133: return QOpenGLTexture::BindingTarget2DMultisample;
  case 837601534: return QOpenGLTexture::BindingTarget2DMultisampleArray;
  case -960432903: return QOpenGLTexture::BindingTargetRectangle;
  case 322738678: return QOpenGLTexture::BindingTargetBuffer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::BindingTarget)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_BindingTarget_to_ocaml(const QOpenGLTexture::BindingTarget& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::BindingTarget1D: result = Val_long(-267587383); break;
  case QOpenGLTexture::BindingTarget1DArray: result = Val_long(562394128); break;
  case QOpenGLTexture::BindingTarget2D: result = Val_long(-267587160); break;
  case QOpenGLTexture::BindingTarget2DArray: result = Val_long(-887428399); break;
  case QOpenGLTexture::BindingTarget3D: result = Val_long(-267586937); break;
  case QOpenGLTexture::BindingTargetCubeMap: result = Val_long(487180017); break;
  case QOpenGLTexture::BindingTargetCubeMapArray: result = Val_long(-1064874776); break;
  case QOpenGLTexture::BindingTarget2DMultisample: result = Val_long(-931020133); break;
  case QOpenGLTexture::BindingTarget2DMultisampleArray: result = Val_long(837601534); break;
  case QOpenGLTexture::BindingTargetRectangle: result = Val_long(-960432903); break;
  case QOpenGLTexture::BindingTargetBuffer: result = Val_long(322738678); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::MipMapGeneration mlqt_QOpenGLTexture_MipMapGeneration_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 477308726: return QOpenGLTexture::GenerateMipMaps;
  case -203949659: return QOpenGLTexture::DontGenerateMipMaps;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::MipMapGeneration)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_MipMapGeneration_to_ocaml(const QOpenGLTexture::MipMapGeneration& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::GenerateMipMaps: result = Val_long(477308726); break;
  case QOpenGLTexture::DontGenerateMipMaps: result = Val_long(-203949659); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::TextureUnitReset mlqt_QOpenGLTexture_TextureUnitReset_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1063635056: return QOpenGLTexture::ResetTextureUnit;
  case -512915903: return QOpenGLTexture::DontResetTextureUnit;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::TextureUnitReset)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_TextureUnitReset_to_ocaml(const QOpenGLTexture::TextureUnitReset& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::ResetTextureUnit: result = Val_long(-1063635056); break;
  case QOpenGLTexture::DontResetTextureUnit: result = Val_long(-512915903); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::TextureFormat mlqt_QOpenGLTexture_TextureFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 659572344: return QOpenGLTexture::NoFormat;
  case 196370584: return QOpenGLTexture::R8_UNorm;
  case 668801941: return QOpenGLTexture::RG8_UNorm;
  case 291226461: return QOpenGLTexture::RGB8_UNorm;
  case 1031633014: return QOpenGLTexture::RGBA8_UNorm;
  case -363045015: return QOpenGLTexture::R16_UNorm;
  case -237551156: return QOpenGLTexture::RG16_UNorm;
  case -685020924: return QOpenGLTexture::RGB16_UNorm;
  case -930600501: return QOpenGLTexture::RGBA16_UNorm;
  case -454609002: return QOpenGLTexture::R8_SNorm;
  case 17822355: return QOpenGLTexture::RG8_SNorm;
  case -359753125: return QOpenGLTexture::RGB8_SNorm;
  case 380653428: return QOpenGLTexture::RGBA8_SNorm;
  case -1014024601: return QOpenGLTexture::R16_SNorm;
  case -888530742: return QOpenGLTexture::RG16_SNorm;
  case 811483138: return QOpenGLTexture::RGB16_SNorm;
  case 565903561: return QOpenGLTexture::RGBA16_SNorm;
  case 4090351: return QOpenGLTexture::R8U;
  case 912887826: return QOpenGLTexture::RG8U;
  case -436470454: return QOpenGLTexture::RGB8U;
  case -695705903: return QOpenGLTexture::RGBA8U;
  case 911793342: return QOpenGLTexture::R16U;
  case -437316293: return QOpenGLTexture::RG16U;
  case -696502013: return QOpenGLTexture::RGB16U;
  case -523948644: return QOpenGLTexture::RGBA16U;
  case 911891908: return QOpenGLTexture::R32U;
  case -437217727: return QOpenGLTexture::RG32U;
  case -696403447: return QOpenGLTexture::RGB32U;
  case -523850078: return QOpenGLTexture::RGBA32U;
  case 4090339: return QOpenGLTexture::R8I;
  case 912887814: return QOpenGLTexture::RG8I;
  case -436470466: return QOpenGLTexture::RGB8I;
  case -695705915: return QOpenGLTexture::RGBA8I;
  case 911793330: return QOpenGLTexture::R16I;
  case -437316305: return QOpenGLTexture::RG16I;
  case -696502025: return QOpenGLTexture::RGB16I;
  case -523948656: return QOpenGLTexture::RGBA16I;
  case 911891896: return QOpenGLTexture::R32I;
  case -437217739: return QOpenGLTexture::RG32I;
  case -696403459: return QOpenGLTexture::RGB32I;
  case -523850090: return QOpenGLTexture::RGBA32I;
  case 911793327: return QOpenGLTexture::R16F;
  case -437316308: return QOpenGLTexture::RG16F;
  case -696502028: return QOpenGLTexture::RGB16F;
  case -523948659: return QOpenGLTexture::RGBA16F;
  case 911891893: return QOpenGLTexture::R32F;
  case -437217742: return QOpenGLTexture::RG32F;
  case -696403462: return QOpenGLTexture::RGB32F;
  case -523850093: return QOpenGLTexture::RGBA32F;
  case -696100868: return QOpenGLTexture::RGB9E5;
  case -729741862: return QOpenGLTexture::RG11B10F;
  case -437214194: return QOpenGLTexture::RG3B2;
  case -57168219: return QOpenGLTexture::R5G6B5;
  case -696300680: return QOpenGLTexture::RGB5A1;
  case -436468480: return QOpenGLTexture::RGBA4;
  case -701429027: return QOpenGLTexture::RGB10A2;
  case 3392553: return QOpenGLTexture::D16;
  case 3392774: return QOpenGLTexture::D24;
  case -931931381: return QOpenGLTexture::D24S8;
  case 3392995: return QOpenGLTexture::D32;
  case 756637955: return QOpenGLTexture::D32F;
  case -119398702: return QOpenGLTexture::D32FS8X24;
  case 18565: return QOpenGLTexture::S8;
  case 510720963: return QOpenGLTexture::RGB_DXT1;
  case 72550556: return QOpenGLTexture::RGBA_DXT1;
  case 72550558: return QOpenGLTexture::RGBA_DXT3;
  case 72550560: return QOpenGLTexture::RGBA_DXT5;
  case -193117576: return QOpenGLTexture::R_ATI1N_UNorm;
  case -844097162: return QOpenGLTexture::R_ATI1N_SNorm;
  case 166659194: return QOpenGLTexture::RG_ATI2N_UNorm;
  case -484320392: return QOpenGLTexture::RG_ATI2N_SNorm;
  case 1009548529: return QOpenGLTexture::RGB_BP_UNSIGNED_FLOAT;
  case 612754264: return QOpenGLTexture::RGB_BP_SIGNED_FLOAT;
  case 106568594: return QOpenGLTexture::RGB_BP_UNorm;
  case -682007028: return QOpenGLTexture::R11_EAC_UNorm;
  case 814497034: return QOpenGLTexture::R11_EAC_SNorm;
  case 865646063: return QOpenGLTexture::RG11_EAC_UNorm;
  case 214666477: return QOpenGLTexture::RG11_EAC_SNorm;
  case -339548142: return QOpenGLTexture::RGB8_ETC2;
  case -1008220833: return QOpenGLTexture::SRGB8_ETC2;
  case -82611530: return QOpenGLTexture::RGB8_PunchThrough_Alpha1_ETC2;
  case 625124483: return QOpenGLTexture::SRGB8_PunchThrough_Alpha1_ETC2;
  case 439415553: return QOpenGLTexture::RGBA8_ETC2_EAC;
  case -652009718: return QOpenGLTexture::SRGB8_Alpha8_ETC2_EAC;
  case -339548143: return QOpenGLTexture::RGB8_ETC1;
  case -778014083: return QOpenGLTexture::RGBA_ASTC_4x4;
  case -777964354: return QOpenGLTexture::RGBA_ASTC_5x4;
  case -777964353: return QOpenGLTexture::RGBA_ASTC_5x5;
  case -777914624: return QOpenGLTexture::RGBA_ASTC_6x5;
  case -777914623: return QOpenGLTexture::RGBA_ASTC_6x6;
  case -777815166: return QOpenGLTexture::RGBA_ASTC_8x5;
  case -777815165: return QOpenGLTexture::RGBA_ASTC_8x6;
  case -777815163: return QOpenGLTexture::RGBA_ASTC_8x8;
  case 412201007: return QOpenGLTexture::RGBA_ASTC_10x5;
  case 412201008: return QOpenGLTexture::RGBA_ASTC_10x6;
  case 412201010: return QOpenGLTexture::RGBA_ASTC_10x8;
  case -420973147: return QOpenGLTexture::RGBA_ASTC_10x10;
  case -398794013: return QOpenGLTexture::RGBA_ASTC_12x10;
  case -398794011: return QOpenGLTexture::RGBA_ASTC_12x12;
  case -526899146: return QOpenGLTexture::SRGB8_Alpha8_ASTC_4x4;
  case -526849417: return QOpenGLTexture::SRGB8_Alpha8_ASTC_5x4;
  case -526849416: return QOpenGLTexture::SRGB8_Alpha8_ASTC_5x5;
  case -526799687: return QOpenGLTexture::SRGB8_Alpha8_ASTC_6x5;
  case -526799686: return QOpenGLTexture::SRGB8_Alpha8_ASTC_6x6;
  case -526700229: return QOpenGLTexture::SRGB8_Alpha8_ASTC_8x5;
  case -526700228: return QOpenGLTexture::SRGB8_Alpha8_ASTC_8x6;
  case -526700226: return QOpenGLTexture::SRGB8_Alpha8_ASTC_8x8;
  case 576257110: return QOpenGLTexture::SRGB8_Alpha8_ASTC_10x5;
  case 576257111: return QOpenGLTexture::SRGB8_Alpha8_ASTC_10x6;
  case 576257113: return QOpenGLTexture::SRGB8_Alpha8_ASTC_10x8;
  case -343684194: return QOpenGLTexture::SRGB8_Alpha8_ASTC_10x10;
  case -321505060: return QOpenGLTexture::SRGB8_Alpha8_ASTC_12x10;
  case -321505058: return QOpenGLTexture::SRGB8_Alpha8_ASTC_12x12;
  case 11255422: return QOpenGLTexture::SRGB8;
  case 931364379: return QOpenGLTexture::SRGB8_Alpha8;
  case 45483798: return QOpenGLTexture::SRGB_DXT1;
  case 735048887: return QOpenGLTexture::SRGB_Alpha_DXT1;
  case 735048889: return QOpenGLTexture::SRGB_Alpha_DXT3;
  case 735048891: return QOpenGLTexture::SRGB_Alpha_DXT5;
  case 599968869: return QOpenGLTexture::SRGB_BP_UNorm;
  case -473255814: return QOpenGLTexture::DepthFormat;
  case -775611115: return QOpenGLTexture::AlphaFormat;
  case -654513660: return QOpenGLTexture::RGBFormat;
  case 417733387: return QOpenGLTexture::RGBAFormat;
  case -159019729: return QOpenGLTexture::LuminanceFormat;
  case 732423229: return QOpenGLTexture::LuminanceAlphaFormat;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::TextureFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_TextureFormat_to_ocaml(const QOpenGLTexture::TextureFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::NoFormat: result = Val_long(659572344); break;
  case QOpenGLTexture::R8_UNorm: result = Val_long(196370584); break;
  case QOpenGLTexture::RG8_UNorm: result = Val_long(668801941); break;
  case QOpenGLTexture::RGB8_UNorm: result = Val_long(291226461); break;
  case QOpenGLTexture::RGBA8_UNorm: result = Val_long(1031633014); break;
  case QOpenGLTexture::R16_UNorm: result = Val_long(-363045015); break;
  case QOpenGLTexture::RG16_UNorm: result = Val_long(-237551156); break;
  case QOpenGLTexture::RGB16_UNorm: result = Val_long(-685020924); break;
  case QOpenGLTexture::RGBA16_UNorm: result = Val_long(-930600501); break;
  case QOpenGLTexture::R8_SNorm: result = Val_long(-454609002); break;
  case QOpenGLTexture::RG8_SNorm: result = Val_long(17822355); break;
  case QOpenGLTexture::RGB8_SNorm: result = Val_long(-359753125); break;
  case QOpenGLTexture::RGBA8_SNorm: result = Val_long(380653428); break;
  case QOpenGLTexture::R16_SNorm: result = Val_long(-1014024601); break;
  case QOpenGLTexture::RG16_SNorm: result = Val_long(-888530742); break;
  case QOpenGLTexture::RGB16_SNorm: result = Val_long(811483138); break;
  case QOpenGLTexture::RGBA16_SNorm: result = Val_long(565903561); break;
  case QOpenGLTexture::R8U: result = Val_long(4090351); break;
  case QOpenGLTexture::RG8U: result = Val_long(912887826); break;
  case QOpenGLTexture::RGB8U: result = Val_long(-436470454); break;
  case QOpenGLTexture::RGBA8U: result = Val_long(-695705903); break;
  case QOpenGLTexture::R16U: result = Val_long(911793342); break;
  case QOpenGLTexture::RG16U: result = Val_long(-437316293); break;
  case QOpenGLTexture::RGB16U: result = Val_long(-696502013); break;
  case QOpenGLTexture::RGBA16U: result = Val_long(-523948644); break;
  case QOpenGLTexture::R32U: result = Val_long(911891908); break;
  case QOpenGLTexture::RG32U: result = Val_long(-437217727); break;
  case QOpenGLTexture::RGB32U: result = Val_long(-696403447); break;
  case QOpenGLTexture::RGBA32U: result = Val_long(-523850078); break;
  case QOpenGLTexture::R8I: result = Val_long(4090339); break;
  case QOpenGLTexture::RG8I: result = Val_long(912887814); break;
  case QOpenGLTexture::RGB8I: result = Val_long(-436470466); break;
  case QOpenGLTexture::RGBA8I: result = Val_long(-695705915); break;
  case QOpenGLTexture::R16I: result = Val_long(911793330); break;
  case QOpenGLTexture::RG16I: result = Val_long(-437316305); break;
  case QOpenGLTexture::RGB16I: result = Val_long(-696502025); break;
  case QOpenGLTexture::RGBA16I: result = Val_long(-523948656); break;
  case QOpenGLTexture::R32I: result = Val_long(911891896); break;
  case QOpenGLTexture::RG32I: result = Val_long(-437217739); break;
  case QOpenGLTexture::RGB32I: result = Val_long(-696403459); break;
  case QOpenGLTexture::RGBA32I: result = Val_long(-523850090); break;
  case QOpenGLTexture::R16F: result = Val_long(911793327); break;
  case QOpenGLTexture::RG16F: result = Val_long(-437316308); break;
  case QOpenGLTexture::RGB16F: result = Val_long(-696502028); break;
  case QOpenGLTexture::RGBA16F: result = Val_long(-523948659); break;
  case QOpenGLTexture::R32F: result = Val_long(911891893); break;
  case QOpenGLTexture::RG32F: result = Val_long(-437217742); break;
  case QOpenGLTexture::RGB32F: result = Val_long(-696403462); break;
  case QOpenGLTexture::RGBA32F: result = Val_long(-523850093); break;
  case QOpenGLTexture::RGB9E5: result = Val_long(-696100868); break;
  case QOpenGLTexture::RG11B10F: result = Val_long(-729741862); break;
  case QOpenGLTexture::RG3B2: result = Val_long(-437214194); break;
  case QOpenGLTexture::R5G6B5: result = Val_long(-57168219); break;
  case QOpenGLTexture::RGB5A1: result = Val_long(-696300680); break;
  case QOpenGLTexture::RGBA4: result = Val_long(-436468480); break;
  case QOpenGLTexture::RGB10A2: result = Val_long(-701429027); break;
  case QOpenGLTexture::D16: result = Val_long(3392553); break;
  case QOpenGLTexture::D24: result = Val_long(3392774); break;
  case QOpenGLTexture::D24S8: result = Val_long(-931931381); break;
  case QOpenGLTexture::D32: result = Val_long(3392995); break;
  case QOpenGLTexture::D32F: result = Val_long(756637955); break;
  case QOpenGLTexture::D32FS8X24: result = Val_long(-119398702); break;
  case QOpenGLTexture::S8: result = Val_long(18565); break;
  case QOpenGLTexture::RGB_DXT1: result = Val_long(510720963); break;
  case QOpenGLTexture::RGBA_DXT1: result = Val_long(72550556); break;
  case QOpenGLTexture::RGBA_DXT3: result = Val_long(72550558); break;
  case QOpenGLTexture::RGBA_DXT5: result = Val_long(72550560); break;
  case QOpenGLTexture::R_ATI1N_UNorm: result = Val_long(-193117576); break;
  case QOpenGLTexture::R_ATI1N_SNorm: result = Val_long(-844097162); break;
  case QOpenGLTexture::RG_ATI2N_UNorm: result = Val_long(166659194); break;
  case QOpenGLTexture::RG_ATI2N_SNorm: result = Val_long(-484320392); break;
  case QOpenGLTexture::RGB_BP_UNSIGNED_FLOAT: result = Val_long(1009548529); break;
  case QOpenGLTexture::RGB_BP_SIGNED_FLOAT: result = Val_long(612754264); break;
  case QOpenGLTexture::RGB_BP_UNorm: result = Val_long(106568594); break;
  case QOpenGLTexture::R11_EAC_UNorm: result = Val_long(-682007028); break;
  case QOpenGLTexture::R11_EAC_SNorm: result = Val_long(814497034); break;
  case QOpenGLTexture::RG11_EAC_UNorm: result = Val_long(865646063); break;
  case QOpenGLTexture::RG11_EAC_SNorm: result = Val_long(214666477); break;
  case QOpenGLTexture::RGB8_ETC2: result = Val_long(-339548142); break;
  case QOpenGLTexture::SRGB8_ETC2: result = Val_long(-1008220833); break;
  case QOpenGLTexture::RGB8_PunchThrough_Alpha1_ETC2: result = Val_long(-82611530); break;
  case QOpenGLTexture::SRGB8_PunchThrough_Alpha1_ETC2: result = Val_long(625124483); break;
  case QOpenGLTexture::RGBA8_ETC2_EAC: result = Val_long(439415553); break;
  case QOpenGLTexture::SRGB8_Alpha8_ETC2_EAC: result = Val_long(-652009718); break;
  case QOpenGLTexture::RGB8_ETC1: result = Val_long(-339548143); break;
  case QOpenGLTexture::RGBA_ASTC_4x4: result = Val_long(-778014083); break;
  case QOpenGLTexture::RGBA_ASTC_5x4: result = Val_long(-777964354); break;
  case QOpenGLTexture::RGBA_ASTC_5x5: result = Val_long(-777964353); break;
  case QOpenGLTexture::RGBA_ASTC_6x5: result = Val_long(-777914624); break;
  case QOpenGLTexture::RGBA_ASTC_6x6: result = Val_long(-777914623); break;
  case QOpenGLTexture::RGBA_ASTC_8x5: result = Val_long(-777815166); break;
  case QOpenGLTexture::RGBA_ASTC_8x6: result = Val_long(-777815165); break;
  case QOpenGLTexture::RGBA_ASTC_8x8: result = Val_long(-777815163); break;
  case QOpenGLTexture::RGBA_ASTC_10x5: result = Val_long(412201007); break;
  case QOpenGLTexture::RGBA_ASTC_10x6: result = Val_long(412201008); break;
  case QOpenGLTexture::RGBA_ASTC_10x8: result = Val_long(412201010); break;
  case QOpenGLTexture::RGBA_ASTC_10x10: result = Val_long(-420973147); break;
  case QOpenGLTexture::RGBA_ASTC_12x10: result = Val_long(-398794013); break;
  case QOpenGLTexture::RGBA_ASTC_12x12: result = Val_long(-398794011); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_4x4: result = Val_long(-526899146); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_5x4: result = Val_long(-526849417); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_5x5: result = Val_long(-526849416); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_6x5: result = Val_long(-526799687); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_6x6: result = Val_long(-526799686); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_8x5: result = Val_long(-526700229); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_8x6: result = Val_long(-526700228); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_8x8: result = Val_long(-526700226); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_10x5: result = Val_long(576257110); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_10x6: result = Val_long(576257111); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_10x8: result = Val_long(576257113); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_10x10: result = Val_long(-343684194); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_12x10: result = Val_long(-321505060); break;
  case QOpenGLTexture::SRGB8_Alpha8_ASTC_12x12: result = Val_long(-321505058); break;
  case QOpenGLTexture::SRGB8: result = Val_long(11255422); break;
  case QOpenGLTexture::SRGB8_Alpha8: result = Val_long(931364379); break;
  case QOpenGLTexture::SRGB_DXT1: result = Val_long(45483798); break;
  case QOpenGLTexture::SRGB_Alpha_DXT1: result = Val_long(735048887); break;
  case QOpenGLTexture::SRGB_Alpha_DXT3: result = Val_long(735048889); break;
  case QOpenGLTexture::SRGB_Alpha_DXT5: result = Val_long(735048891); break;
  case QOpenGLTexture::SRGB_BP_UNorm: result = Val_long(599968869); break;
  case QOpenGLTexture::DepthFormat: result = Val_long(-473255814); break;
  case QOpenGLTexture::AlphaFormat: result = Val_long(-775611115); break;
  case QOpenGLTexture::RGBFormat: result = Val_long(-654513660); break;
  case QOpenGLTexture::RGBAFormat: result = Val_long(417733387); break;
  case QOpenGLTexture::LuminanceFormat: result = Val_long(-159019729); break;
  case QOpenGLTexture::LuminanceAlphaFormat: result = Val_long(732423229); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::CubeMapFace mlqt_QOpenGLTexture_CubeMapFace_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -243311112: return QOpenGLTexture::CubeMapPositiveX;
  case -372792644: return QOpenGLTexture::CubeMapNegativeX;
  case -243311111: return QOpenGLTexture::CubeMapPositiveY;
  case -372792643: return QOpenGLTexture::CubeMapNegativeY;
  case -243311110: return QOpenGLTexture::CubeMapPositiveZ;
  case -372792642: return QOpenGLTexture::CubeMapNegativeZ;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::CubeMapFace)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_CubeMapFace_to_ocaml(const QOpenGLTexture::CubeMapFace& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::CubeMapPositiveX: result = Val_long(-243311112); break;
  case QOpenGLTexture::CubeMapNegativeX: result = Val_long(-372792644); break;
  case QOpenGLTexture::CubeMapPositiveY: result = Val_long(-243311111); break;
  case QOpenGLTexture::CubeMapNegativeY: result = Val_long(-372792643); break;
  case QOpenGLTexture::CubeMapPositiveZ: result = Val_long(-243311110); break;
  case QOpenGLTexture::CubeMapNegativeZ: result = Val_long(-372792642); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::PixelFormat mlqt_QOpenGLTexture_PixelFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -890410893: return QOpenGLTexture::NoSourceFormat;
  case 4100401: return QOpenGLTexture::Red;
  case 18357: return QOpenGLTexture::RG;
  case 4093677: return QOpenGLTexture::RGB;
  case 3298029: return QOpenGLTexture::BGR;
  case 912890036: return QOpenGLTexture::RGBA;
  case 735460532: return QOpenGLTexture::BGRA;
  case 689039696: return QOpenGLTexture::Red_Integer;
  case 921945044: return QOpenGLTexture::RG_Integer;
  case 474475276: return QOpenGLTexture::RGB_Integer;
  case 1031259916: return QOpenGLTexture::BGR_Integer;
  case 228895699: return QOpenGLTexture::RGBA_Integer;
  case -162181165: return QOpenGLTexture::BGRA_Integer;
  case -850074148: return QOpenGLTexture::Stencil;
  case -363372317: return QOpenGLTexture::Depth;
  case 241481561: return QOpenGLTexture::DepthStencil;
  case 885266238: return QOpenGLTexture::Alpha;
  case 173742040: return QOpenGLTexture::Luminance;
  case -756314010: return QOpenGLTexture::LuminanceAlpha;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::PixelFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_PixelFormat_to_ocaml(const QOpenGLTexture::PixelFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::NoSourceFormat: result = Val_long(-890410893); break;
  case QOpenGLTexture::Red: result = Val_long(4100401); break;
  case QOpenGLTexture::RG: result = Val_long(18357); break;
  case QOpenGLTexture::RGB: result = Val_long(4093677); break;
  case QOpenGLTexture::BGR: result = Val_long(3298029); break;
  case QOpenGLTexture::RGBA: result = Val_long(912890036); break;
  case QOpenGLTexture::BGRA: result = Val_long(735460532); break;
  case QOpenGLTexture::Red_Integer: result = Val_long(689039696); break;
  case QOpenGLTexture::RG_Integer: result = Val_long(921945044); break;
  case QOpenGLTexture::RGB_Integer: result = Val_long(474475276); break;
  case QOpenGLTexture::BGR_Integer: result = Val_long(1031259916); break;
  case QOpenGLTexture::RGBA_Integer: result = Val_long(228895699); break;
  case QOpenGLTexture::BGRA_Integer: result = Val_long(-162181165); break;
  case QOpenGLTexture::Stencil: result = Val_long(-850074148); break;
  case QOpenGLTexture::Depth: result = Val_long(-363372317); break;
  case QOpenGLTexture::DepthStencil: result = Val_long(241481561); break;
  case QOpenGLTexture::Alpha: result = Val_long(885266238); break;
  case QOpenGLTexture::Luminance: result = Val_long(173742040); break;
  case QOpenGLTexture::LuminanceAlpha: result = Val_long(-756314010); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::PixelType mlqt_QOpenGLTexture_PixelType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -864802881: return QOpenGLTexture::NoPixelType;
  case 815034505: return QOpenGLTexture::Int8;
  case 564379486: return QOpenGLTexture::UInt8;
  case -783416972: return QOpenGLTexture::Int16;
  case -844911361: return QOpenGLTexture::UInt16;
  case -783416530: return QOpenGLTexture::Int32;
  case -844910919: return QOpenGLTexture::UInt32;
  case 928626529: return QOpenGLTexture::Float16;
  case -592672324: return QOpenGLTexture::Float16OES;
  case 928626971: return QOpenGLTexture::Float32;
  case -1009953155: return QOpenGLTexture::UInt32_RGB9_E5;
  case 358494048: return QOpenGLTexture::UInt32_RG11B10F;
  case 674661677: return QOpenGLTexture::UInt8_RG3B2;
  case -294717967: return QOpenGLTexture::UInt8_RG3B2_Rev;
  case 530570744: return QOpenGLTexture::UInt16_RGB5A1;
  case -205778884: return QOpenGLTexture::UInt16_RGB5A1_Rev;
  case -977780443: return QOpenGLTexture::UInt16_R5G6B5;
  case 441060841: return QOpenGLTexture::UInt16_R5G6B5_Rev;
  case -479116672: return QOpenGLTexture::UInt16_RGBA4;
  case -728868668: return QOpenGLTexture::UInt16_RGBA4_Rev;
  case 796937150: return QOpenGLTexture::UInt32_RGBA8;
  case 573430018: return QOpenGLTexture::UInt32_RGBA8_Rev;
  case 1046475799: return QOpenGLTexture::UInt32_RGB10A2;
  case 480977371: return QOpenGLTexture::UInt32_RGB10A2_Rev;
  case 301474245: return QOpenGLTexture::UInt32_D24S8;
  case -690151386: return QOpenGLTexture::Float32_D32_UInt32_S8_X24;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::PixelType)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_PixelType_to_ocaml(const QOpenGLTexture::PixelType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::NoPixelType: result = Val_long(-864802881); break;
  case QOpenGLTexture::Int8: result = Val_long(815034505); break;
  case QOpenGLTexture::UInt8: result = Val_long(564379486); break;
  case QOpenGLTexture::Int16: result = Val_long(-783416972); break;
  case QOpenGLTexture::UInt16: result = Val_long(-844911361); break;
  case QOpenGLTexture::Int32: result = Val_long(-783416530); break;
  case QOpenGLTexture::UInt32: result = Val_long(-844910919); break;
  case QOpenGLTexture::Float16: result = Val_long(928626529); break;
  case QOpenGLTexture::Float16OES: result = Val_long(-592672324); break;
  case QOpenGLTexture::Float32: result = Val_long(928626971); break;
  case QOpenGLTexture::UInt32_RGB9_E5: result = Val_long(-1009953155); break;
  case QOpenGLTexture::UInt32_RG11B10F: result = Val_long(358494048); break;
  case QOpenGLTexture::UInt8_RG3B2: result = Val_long(674661677); break;
  case QOpenGLTexture::UInt8_RG3B2_Rev: result = Val_long(-294717967); break;
  case QOpenGLTexture::UInt16_RGB5A1: result = Val_long(530570744); break;
  case QOpenGLTexture::UInt16_RGB5A1_Rev: result = Val_long(-205778884); break;
  case QOpenGLTexture::UInt16_R5G6B5: result = Val_long(-977780443); break;
  case QOpenGLTexture::UInt16_R5G6B5_Rev: result = Val_long(441060841); break;
  case QOpenGLTexture::UInt16_RGBA4: result = Val_long(-479116672); break;
  case QOpenGLTexture::UInt16_RGBA4_Rev: result = Val_long(-728868668); break;
  case QOpenGLTexture::UInt32_RGBA8: result = Val_long(796937150); break;
  case QOpenGLTexture::UInt32_RGBA8_Rev: result = Val_long(573430018); break;
  case QOpenGLTexture::UInt32_RGB10A2: result = Val_long(1046475799); break;
  case QOpenGLTexture::UInt32_RGB10A2_Rev: result = Val_long(480977371); break;
  case QOpenGLTexture::UInt32_D24S8: result = Val_long(301474245); break;
  case QOpenGLTexture::Float32_D32_UInt32_S8_X24: result = Val_long(-690151386); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::SwizzleComponent mlqt_QOpenGLTexture_SwizzleComponent_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -417735405: return QOpenGLTexture::SwizzleRed;
  case -95811835: return QOpenGLTexture::SwizzleGreen;
  case -990279528: return QOpenGLTexture::SwizzleBlue;
  case 32743328: return QOpenGLTexture::SwizzleAlpha;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::SwizzleComponent)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_SwizzleComponent_to_ocaml(const QOpenGLTexture::SwizzleComponent& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::SwizzleRed: result = Val_long(-417735405); break;
  case QOpenGLTexture::SwizzleGreen: result = Val_long(-95811835); break;
  case QOpenGLTexture::SwizzleBlue: result = Val_long(-990279528); break;
  case QOpenGLTexture::SwizzleAlpha: result = Val_long(32743328); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::SwizzleValue mlqt_QOpenGLTexture_SwizzleValue_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -88707968: return QOpenGLTexture::RedValue;
  case -47283762: return QOpenGLTexture::GreenValue;
  case 734387799: return QOpenGLTexture::BlueValue;
  case -921774253: return QOpenGLTexture::AlphaValue;
  case -455618807: return QOpenGLTexture::ZeroValue;
  case 733716299: return QOpenGLTexture::OneValue;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::SwizzleValue)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_SwizzleValue_to_ocaml(const QOpenGLTexture::SwizzleValue& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::RedValue: result = Val_long(-88707968); break;
  case QOpenGLTexture::GreenValue: result = Val_long(-47283762); break;
  case QOpenGLTexture::BlueValue: result = Val_long(734387799); break;
  case QOpenGLTexture::AlphaValue: result = Val_long(-921774253); break;
  case QOpenGLTexture::ZeroValue: result = Val_long(-455618807); break;
  case QOpenGLTexture::OneValue: result = Val_long(733716299); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::WrapMode mlqt_QOpenGLTexture_WrapMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 990972795: return QOpenGLTexture::Repeat;
  case 780489337: return QOpenGLTexture::MirroredRepeat;
  case 5546131: return QOpenGLTexture::ClampToEdge;
  case -523802942: return QOpenGLTexture::ClampToBorder;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::WrapMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_WrapMode_to_ocaml(const QOpenGLTexture::WrapMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::Repeat: result = Val_long(990972795); break;
  case QOpenGLTexture::MirroredRepeat: result = Val_long(780489337); break;
  case QOpenGLTexture::ClampToEdge: result = Val_long(5546131); break;
  case QOpenGLTexture::ClampToBorder: result = Val_long(-523802942); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::CoordinateDirection mlqt_QOpenGLTexture_CoordinateDirection_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 516331860: return QOpenGLTexture::DirectionS;
  case 516331861: return QOpenGLTexture::DirectionT;
  case 516331859: return QOpenGLTexture::DirectionR;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::CoordinateDirection)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_CoordinateDirection_to_ocaml(const QOpenGLTexture::CoordinateDirection& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::DirectionS: result = Val_long(516331860); break;
  case QOpenGLTexture::DirectionT: result = Val_long(516331861); break;
  case QOpenGLTexture::DirectionR: result = Val_long(516331859); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::Feature mlqt_QOpenGLTexture_Feature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -589027527: return QOpenGLTexture::ImmutableStorage;
  case -278537510: return QOpenGLTexture::ImmutableMultisampleStorage;
  case 130372596: return QOpenGLTexture::TextureRectangle;
  case 318282709: return QOpenGLTexture::TextureArrays;
  case -786693588: return QOpenGLTexture::Texture3D;
  case -968604056: return QOpenGLTexture::TextureMultisample;
  case 731701275: return QOpenGLTexture::TextureBuffer;
  case -117770490: return QOpenGLTexture::TextureCubeMapArrays;
  case -704556322: return QOpenGLTexture::Swizzle;
  case 377797980: return QOpenGLTexture::StencilTexturing;
  case -666021415: return QOpenGLTexture::AnisotropicFiltering;
  case 461836351: return QOpenGLTexture::NPOTTextures;
  case -513722321: return QOpenGLTexture::NPOTTextureRepeat;
  case -786694034: return QOpenGLTexture::Texture1D;
  case -85200949: return QOpenGLTexture::TextureComparisonOperators;
  case 997179905: return QOpenGLTexture::TextureMipMapLevel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::Feature)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_Feature_to_ocaml(const QOpenGLTexture::Feature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::ImmutableStorage: result = Val_long(-589027527); break;
  case QOpenGLTexture::ImmutableMultisampleStorage: result = Val_long(-278537510); break;
  case QOpenGLTexture::TextureRectangle: result = Val_long(130372596); break;
  case QOpenGLTexture::TextureArrays: result = Val_long(318282709); break;
  case QOpenGLTexture::Texture3D: result = Val_long(-786693588); break;
  case QOpenGLTexture::TextureMultisample: result = Val_long(-968604056); break;
  case QOpenGLTexture::TextureBuffer: result = Val_long(731701275); break;
  case QOpenGLTexture::TextureCubeMapArrays: result = Val_long(-117770490); break;
  case QOpenGLTexture::Swizzle: result = Val_long(-704556322); break;
  case QOpenGLTexture::StencilTexturing: result = Val_long(377797980); break;
  case QOpenGLTexture::AnisotropicFiltering: result = Val_long(-666021415); break;
  case QOpenGLTexture::NPOTTextures: result = Val_long(461836351); break;
  case QOpenGLTexture::NPOTTextureRepeat: result = Val_long(-513722321); break;
  case QOpenGLTexture::Texture1D: result = Val_long(-786694034); break;
  case QOpenGLTexture::TextureComparisonOperators: result = Val_long(-85200949); break;
  case QOpenGLTexture::TextureMipMapLevel: result = Val_long(997179905); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::DepthStencilMode mlqt_QOpenGLTexture_DepthStencilMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1061745178: return QOpenGLTexture::DepthMode;
  case 697107295: return QOpenGLTexture::StencilMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::DepthStencilMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_DepthStencilMode_to_ocaml(const QOpenGLTexture::DepthStencilMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::DepthMode: result = Val_long(-1061745178); break;
  case QOpenGLTexture::StencilMode: result = Val_long(697107295); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::ComparisonFunction mlqt_QOpenGLTexture_ComparisonFunction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 740249686: return QOpenGLTexture::CompareLessEqual;
  case 860595327: return QOpenGLTexture::CompareGreaterEqual;
  case 565094014: return QOpenGLTexture::CompareLess;
  case -212548875: return QOpenGLTexture::CompareGreater;
  case -683344657: return QOpenGLTexture::CompareEqual;
  case 539540689: return QOpenGLTexture::CommpareNotEqual;
  case 201094452: return QOpenGLTexture::CompareAlways;
  case -34444345: return QOpenGLTexture::CompareNever;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::ComparisonFunction)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_ComparisonFunction_to_ocaml(const QOpenGLTexture::ComparisonFunction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::CompareLessEqual: result = Val_long(740249686); break;
  case QOpenGLTexture::CompareGreaterEqual: result = Val_long(860595327); break;
  case QOpenGLTexture::CompareLess: result = Val_long(565094014); break;
  case QOpenGLTexture::CompareGreater: result = Val_long(-212548875); break;
  case QOpenGLTexture::CompareEqual: result = Val_long(-683344657); break;
  case QOpenGLTexture::CommpareNotEqual: result = Val_long(539540689); break;
  case QOpenGLTexture::CompareAlways: result = Val_long(201094452); break;
  case QOpenGLTexture::CompareNever: result = Val_long(-34444345); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::ComparisonMode mlqt_QOpenGLTexture_ComparisonMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -786397966: return QOpenGLTexture::CompareRefToTexture;
  case 587769309: return QOpenGLTexture::CompareNone;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::ComparisonMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_ComparisonMode_to_ocaml(const QOpenGLTexture::ComparisonMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::CompareRefToTexture: result = Val_long(-786397966); break;
  case QOpenGLTexture::CompareNone: result = Val_long(587769309); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLTexture::Filter mlqt_QOpenGLTexture_Filter_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 857423934: return QOpenGLTexture::Nearest;
  case 557106693: return QOpenGLTexture::Linear;
  case 60528824: return QOpenGLTexture::NearestMipMapNearest;
  case 659462859: return QOpenGLTexture::NearestMipMapLinear;
  case -621886831: return QOpenGLTexture::LinearMipMapNearest;
  case 280833810: return QOpenGLTexture::LinearMipMapLinear;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLTexture::Filter)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLTexture_Filter_to_ocaml(const QOpenGLTexture::Filter& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLTexture::Nearest: result = Val_long(857423934); break;
  case QOpenGLTexture::Linear: result = Val_long(557106693); break;
  case QOpenGLTexture::NearestMipMapNearest: result = Val_long(60528824); break;
  case QOpenGLTexture::NearestMipMapLinear: result = Val_long(659462859); break;
  case QOpenGLTexture::LinearMipMapNearest: result = Val_long(-621886831); break;
  case QOpenGLTexture::LinearMipMapLinear: result = Val_long(280833810); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageSize::PageSizeId mlqt_QPageSize_PageSizeId_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 14547: return QPageSize::A4;
  case 14771: return QPageSize::B5;
  case -677568250: return QPageSize::Letter;
  case 92610585: return QPageSize::Legal;
  case -756936312: return QPageSize::Executive;
  case 14543: return QPageSize::A0;
  case 14544: return QPageSize::A1;
  case 14545: return QPageSize::A2;
  case 14546: return QPageSize::A3;
  case 14548: return QPageSize::A5;
  case 14549: return QPageSize::A6;
  case 14550: return QPageSize::A7;
  case 14551: return QPageSize::A8;
  case 14552: return QPageSize::A9;
  case 14766: return QPageSize::B0;
  case 14767: return QPageSize::B1;
  case 3293089: return QPageSize::B10;
  case 14768: return QPageSize::B2;
  case 14769: return QPageSize::B3;
  case 14770: return QPageSize::B4;
  case 14772: return QPageSize::B6;
  case 14773: return QPageSize::B7;
  case 14774: return QPageSize::B8;
  case 14775: return QPageSize::B9;
  case 3343731: return QPageSize::C5E;
  case -828770598: return QPageSize::Comm10E;
  case 3398589: return QPageSize::DLE;
  case 398301577: return QPageSize::Folio;
  case -855647799: return QPageSize::Ledger;
  case 581267923: return QPageSize::Tabloid;
  case -198771759: return QPageSize::Custom;
  case 3243360: return QPageSize::A10;
  case -42559394: return QPageSize::A3Extra;
  case -472779587: return QPageSize::A4Extra;
  case 591137229: return QPageSize::A4Plus;
  case -333821196: return QPageSize::A4Small;
  case -902999780: return QPageSize::A5Extra;
  case -205338659: return QPageSize::B5Extra;
  case -513420958: return QPageSize::JisB0;
  case -513420957: return QPageSize::JisB1;
  case -513420956: return QPageSize::JisB2;
  case -513420955: return QPageSize::JisB3;
  case -513420954: return QPageSize::JisB4;
  case -513420953: return QPageSize::JisB5;
  case -513420952: return QPageSize::JisB6;
  case -513420951: return QPageSize::JisB7;
  case -513420950: return QPageSize::JisB8;
  case -513420949: return QPageSize::JisB9;
  case -676240019: return QPageSize::JisB10;
  case 907594752: return QPageSize::AnsiC;
  case 907594753: return QPageSize::AnsiD;
  case 907594754: return QPageSize::AnsiE;
  case -853348425: return QPageSize::LegalExtra;
  case 647984042: return QPageSize::LetterExtra;
  case -857962624: return QPageSize::LetterPlus;
  case 786942433: return QPageSize::LetterSmall;
  case -492954691: return QPageSize::TabloidExtra;
  case 951157131: return QPageSize::ArchA;
  case 951157132: return QPageSize::ArchB;
  case 951157133: return QPageSize::ArchC;
  case 951157134: return QPageSize::ArchD;
  case 951157135: return QPageSize::ArchE;
  case 454676413: return QPageSize::Imperial7x9;
  case 472196474: return QPageSize::Imperial8x10;
  case 483286042: return QPageSize::Imperial9x11;
  case 483286043: return QPageSize::Imperial9x12;
  case -852747746: return QPageSize::Imperial10x11;
  case -852747744: return QPageSize::Imperial10x13;
  case -852747743: return QPageSize::Imperial10x14;
  case -830568612: return QPageSize::Imperial12x11;
  case -797299911: return QPageSize::Imperial15x11;
  case -515584795: return QPageSize::ExecutiveStandard;
  case 870532114: return QPageSize::Note;
  case 20885936: return QPageSize::Quarto;
  case -503678961: return QPageSize::Statement;
  case -673857914: return QPageSize::SuperA;
  case -673857913: return QPageSize::SuperB;
  case -288223664: return QPageSize::Postcard;
  case 496879233: return QPageSize::DoublePostcard;
  case -506430363: return QPageSize::Prc16K;
  case -506331797: return QPageSize::Prc32K;
  case -659134443: return QPageSize::Prc32KBig;
  case -427960398: return QPageSize::FanFoldUS;
  case 485317114: return QPageSize::FanFoldGerman;
  case 634215391: return QPageSize::FanFoldGermanLegal;
  case 526385378: return QPageSize::EnvelopeB4;
  case 526385379: return QPageSize::EnvelopeB5;
  case 526385380: return QPageSize::EnvelopeB6;
  case 526385597: return QPageSize::EnvelopeC0;
  case 526385598: return QPageSize::EnvelopeC1;
  case 526385599: return QPageSize::EnvelopeC2;
  case 526385600: return QPageSize::EnvelopeC3;
  case 526385601: return QPageSize::EnvelopeC4;
  case 526385603: return QPageSize::EnvelopeC6;
  case -727611118: return QPageSize::EnvelopeC65;
  case 526385604: return QPageSize::EnvelopeC7;
  case -190238967: return QPageSize::Envelope9;
  case 526381584: return QPageSize::Envelope11;
  case 526381585: return QPageSize::Envelope12;
  case 526381587: return QPageSize::Envelope14;
  case -129349294: return QPageSize::EnvelopeMonarch;
  case -920182000: return QPageSize::EnvelopePersonal;
  case 136086904: return QPageSize::EnvelopeChou3;
  case 136086905: return QPageSize::EnvelopeChou4;
  case -268729063: return QPageSize::EnvelopeInvite;
  case -590990224: return QPageSize::EnvelopeItalian;
  case 514695714: return QPageSize::EnvelopeKaku2;
  case 514695715: return QPageSize::EnvelopeKaku3;
  case -1048847296: return QPageSize::EnvelopePrc1;
  case -1048847295: return QPageSize::EnvelopePrc2;
  case -1048847294: return QPageSize::EnvelopePrc3;
  case -1048847293: return QPageSize::EnvelopePrc4;
  case -1048847292: return QPageSize::EnvelopePrc5;
  case -1048847291: return QPageSize::EnvelopePrc6;
  case -1048847290: return QPageSize::EnvelopePrc7;
  case -1048847289: return QPageSize::EnvelopePrc8;
  case -1048847288: return QPageSize::EnvelopePrc9;
  case 182770672: return QPageSize::EnvelopePrc10;
  case -949186363: return QPageSize::EnvelopeYou4;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageSize::PageSizeId)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageSize_PageSizeId_to_ocaml(const QPageSize::PageSizeId& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageSize::A4: result = Val_long(14547); break;
  case QPageSize::B5: result = Val_long(14771); break;
  case QPageSize::Letter: result = Val_long(-677568250); break;
  case QPageSize::Legal: result = Val_long(92610585); break;
  case QPageSize::Executive: result = Val_long(-756936312); break;
  case QPageSize::A0: result = Val_long(14543); break;
  case QPageSize::A1: result = Val_long(14544); break;
  case QPageSize::A2: result = Val_long(14545); break;
  case QPageSize::A3: result = Val_long(14546); break;
  case QPageSize::A5: result = Val_long(14548); break;
  case QPageSize::A6: result = Val_long(14549); break;
  case QPageSize::A7: result = Val_long(14550); break;
  case QPageSize::A8: result = Val_long(14551); break;
  case QPageSize::A9: result = Val_long(14552); break;
  case QPageSize::B0: result = Val_long(14766); break;
  case QPageSize::B1: result = Val_long(14767); break;
  case QPageSize::B10: result = Val_long(3293089); break;
  case QPageSize::B2: result = Val_long(14768); break;
  case QPageSize::B3: result = Val_long(14769); break;
  case QPageSize::B4: result = Val_long(14770); break;
  case QPageSize::B6: result = Val_long(14772); break;
  case QPageSize::B7: result = Val_long(14773); break;
  case QPageSize::B8: result = Val_long(14774); break;
  case QPageSize::B9: result = Val_long(14775); break;
  case QPageSize::C5E: result = Val_long(3343731); break;
  case QPageSize::Comm10E: result = Val_long(-828770598); break;
  case QPageSize::DLE: result = Val_long(3398589); break;
  case QPageSize::Folio: result = Val_long(398301577); break;
  case QPageSize::Ledger: result = Val_long(-855647799); break;
  case QPageSize::Tabloid: result = Val_long(581267923); break;
  case QPageSize::Custom: result = Val_long(-198771759); break;
  case QPageSize::A10: result = Val_long(3243360); break;
  case QPageSize::A3Extra: result = Val_long(-42559394); break;
  case QPageSize::A4Extra: result = Val_long(-472779587); break;
  case QPageSize::A4Plus: result = Val_long(591137229); break;
  case QPageSize::A4Small: result = Val_long(-333821196); break;
  case QPageSize::A5Extra: result = Val_long(-902999780); break;
  case QPageSize::B5Extra: result = Val_long(-205338659); break;
  case QPageSize::JisB0: result = Val_long(-513420958); break;
  case QPageSize::JisB1: result = Val_long(-513420957); break;
  case QPageSize::JisB2: result = Val_long(-513420956); break;
  case QPageSize::JisB3: result = Val_long(-513420955); break;
  case QPageSize::JisB4: result = Val_long(-513420954); break;
  case QPageSize::JisB5: result = Val_long(-513420953); break;
  case QPageSize::JisB6: result = Val_long(-513420952); break;
  case QPageSize::JisB7: result = Val_long(-513420951); break;
  case QPageSize::JisB8: result = Val_long(-513420950); break;
  case QPageSize::JisB9: result = Val_long(-513420949); break;
  case QPageSize::JisB10: result = Val_long(-676240019); break;
  case QPageSize::AnsiC: result = Val_long(907594752); break;
  case QPageSize::AnsiD: result = Val_long(907594753); break;
  case QPageSize::AnsiE: result = Val_long(907594754); break;
  case QPageSize::LegalExtra: result = Val_long(-853348425); break;
  case QPageSize::LetterExtra: result = Val_long(647984042); break;
  case QPageSize::LetterPlus: result = Val_long(-857962624); break;
  case QPageSize::LetterSmall: result = Val_long(786942433); break;
  case QPageSize::TabloidExtra: result = Val_long(-492954691); break;
  case QPageSize::ArchA: result = Val_long(951157131); break;
  case QPageSize::ArchB: result = Val_long(951157132); break;
  case QPageSize::ArchC: result = Val_long(951157133); break;
  case QPageSize::ArchD: result = Val_long(951157134); break;
  case QPageSize::ArchE: result = Val_long(951157135); break;
  case QPageSize::Imperial7x9: result = Val_long(454676413); break;
  case QPageSize::Imperial8x10: result = Val_long(472196474); break;
  case QPageSize::Imperial9x11: result = Val_long(483286042); break;
  case QPageSize::Imperial9x12: result = Val_long(483286043); break;
  case QPageSize::Imperial10x11: result = Val_long(-852747746); break;
  case QPageSize::Imperial10x13: result = Val_long(-852747744); break;
  case QPageSize::Imperial10x14: result = Val_long(-852747743); break;
  case QPageSize::Imperial12x11: result = Val_long(-830568612); break;
  case QPageSize::Imperial15x11: result = Val_long(-797299911); break;
  case QPageSize::ExecutiveStandard: result = Val_long(-515584795); break;
  case QPageSize::Note: result = Val_long(870532114); break;
  case QPageSize::Quarto: result = Val_long(20885936); break;
  case QPageSize::Statement: result = Val_long(-503678961); break;
  case QPageSize::SuperA: result = Val_long(-673857914); break;
  case QPageSize::SuperB: result = Val_long(-673857913); break;
  case QPageSize::Postcard: result = Val_long(-288223664); break;
  case QPageSize::DoublePostcard: result = Val_long(496879233); break;
  case QPageSize::Prc16K: result = Val_long(-506430363); break;
  case QPageSize::Prc32K: result = Val_long(-506331797); break;
  case QPageSize::Prc32KBig: result = Val_long(-659134443); break;
  case QPageSize::FanFoldUS: result = Val_long(-427960398); break;
  case QPageSize::FanFoldGerman: result = Val_long(485317114); break;
  case QPageSize::FanFoldGermanLegal: result = Val_long(634215391); break;
  case QPageSize::EnvelopeB4: result = Val_long(526385378); break;
  case QPageSize::EnvelopeB5: result = Val_long(526385379); break;
  case QPageSize::EnvelopeB6: result = Val_long(526385380); break;
  case QPageSize::EnvelopeC0: result = Val_long(526385597); break;
  case QPageSize::EnvelopeC1: result = Val_long(526385598); break;
  case QPageSize::EnvelopeC2: result = Val_long(526385599); break;
  case QPageSize::EnvelopeC3: result = Val_long(526385600); break;
  case QPageSize::EnvelopeC4: result = Val_long(526385601); break;
  case QPageSize::EnvelopeC6: result = Val_long(526385603); break;
  case QPageSize::EnvelopeC65: result = Val_long(-727611118); break;
  case QPageSize::EnvelopeC7: result = Val_long(526385604); break;
  case QPageSize::Envelope9: result = Val_long(-190238967); break;
  case QPageSize::Envelope11: result = Val_long(526381584); break;
  case QPageSize::Envelope12: result = Val_long(526381585); break;
  case QPageSize::Envelope14: result = Val_long(526381587); break;
  case QPageSize::EnvelopeMonarch: result = Val_long(-129349294); break;
  case QPageSize::EnvelopePersonal: result = Val_long(-920182000); break;
  case QPageSize::EnvelopeChou3: result = Val_long(136086904); break;
  case QPageSize::EnvelopeChou4: result = Val_long(136086905); break;
  case QPageSize::EnvelopeInvite: result = Val_long(-268729063); break;
  case QPageSize::EnvelopeItalian: result = Val_long(-590990224); break;
  case QPageSize::EnvelopeKaku2: result = Val_long(514695714); break;
  case QPageSize::EnvelopeKaku3: result = Val_long(514695715); break;
  case QPageSize::EnvelopePrc1: result = Val_long(-1048847296); break;
  case QPageSize::EnvelopePrc2: result = Val_long(-1048847295); break;
  case QPageSize::EnvelopePrc3: result = Val_long(-1048847294); break;
  case QPageSize::EnvelopePrc4: result = Val_long(-1048847293); break;
  case QPageSize::EnvelopePrc5: result = Val_long(-1048847292); break;
  case QPageSize::EnvelopePrc6: result = Val_long(-1048847291); break;
  case QPageSize::EnvelopePrc7: result = Val_long(-1048847290); break;
  case QPageSize::EnvelopePrc8: result = Val_long(-1048847289); break;
  case QPageSize::EnvelopePrc9: result = Val_long(-1048847288); break;
  case QPageSize::EnvelopePrc10: result = Val_long(182770672); break;
  case QPageSize::EnvelopeYou4: result = Val_long(-949186363); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageSize::Unit mlqt_QPageSize_Unit_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 151086716: return QPageSize::Millimeter;
  case -641915856: return QPageSize::Point;
  case 815030762: return QPageSize::Inch;
  case 892409079: return QPageSize::Pica;
  case -319611900: return QPageSize::Didot;
  case 12139685: return QPageSize::Cicero;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageSize::Unit)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageSize_Unit_to_ocaml(const QPageSize::Unit& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageSize::Millimeter: result = Val_long(151086716); break;
  case QPageSize::Point: result = Val_long(-641915856); break;
  case QPageSize::Inch: result = Val_long(815030762); break;
  case QPageSize::Pica: result = Val_long(892409079); break;
  case QPageSize::Didot: result = Val_long(-319611900); break;
  case QPageSize::Cicero: result = Val_long(12139685); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageSize::SizeMatchPolicy mlqt_QPageSize_SizeMatchPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 125182267: return QPageSize::FuzzyMatch;
  case -979372001: return QPageSize::FuzzyOrientationMatch;
  case -304331226: return QPageSize::ExactMatch;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageSize::SizeMatchPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageSize_SizeMatchPolicy_to_ocaml(const QPageSize::SizeMatchPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageSize::FuzzyMatch: result = Val_long(125182267); break;
  case QPageSize::FuzzyOrientationMatch: result = Val_long(-979372001); break;
  case QPageSize::ExactMatch: result = Val_long(-304331226); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTouchEvent::TouchPoint::InfoFlag mlqt_QTouchEvent_TouchPoint_InfoFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 4000953: return QTouchEvent::TouchPoint::Pen;
  case 660140761: return QTouchEvent::TouchPoint::Token;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTouchEvent::TouchPoint::InfoFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTouchEvent_TouchPoint_InfoFlag_to_ocaml(const QTouchEvent::TouchPoint::InfoFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTouchEvent::TouchPoint::Pen: result = Val_long(4000953); break;
  case QTouchEvent::TouchPoint::Token: result = Val_long(660140761); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTouchDevice::DeviceType mlqt_QTouchDevice_DeviceType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 281426027: return QTouchDevice::TouchScreen;
  case -641478924: return QTouchDevice::TouchPad;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTouchDevice::DeviceType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTouchDevice_DeviceType_to_ocaml(const QTouchDevice::DeviceType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTouchDevice::TouchScreen: result = Val_long(281426027); break;
  case QTouchDevice::TouchPad: result = Val_long(-641478924); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTouchDevice::CapabilityFlag mlqt_QTouchDevice_CapabilityFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 615275721: return QTouchDevice::Position;
  case 726513581: return QTouchDevice::Area;
  case -909154331: return QTouchDevice::Pressure;
  case -122700227: return QTouchDevice::Velocity;
  case 945441986: return QTouchDevice::RawPositions;
  case -8424416: return QTouchDevice::NormalizedPosition;
  case 648169169: return QTouchDevice::MouseEmulation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTouchDevice::CapabilityFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTouchDevice_CapabilityFlag_to_ocaml(const QTouchDevice::CapabilityFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTouchDevice::Position: result = Val_long(615275721); break;
  case QTouchDevice::Area: result = Val_long(726513581); break;
  case QTouchDevice::Pressure: result = Val_long(-909154331); break;
  case QTouchDevice::Velocity: result = Val_long(-122700227); break;
  case QTouchDevice::RawPositions: result = Val_long(945441986); break;
  case QTouchDevice::NormalizedPosition: result = Val_long(-8424416); break;
  case QTouchDevice::MouseEmulation: result = Val_long(648169169); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStaticText::PerformanceHint mlqt_QStaticText_PerformanceHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1049690716: return QStaticText::ModerateCaching;
  case 331189307: return QStaticText::AggressiveCaching;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStaticText::PerformanceHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QStaticText_PerformanceHint_to_ocaml(const QStaticText::PerformanceHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStaticText::ModerateCaching: result = Val_long(1049690716); break;
  case QStaticText::AggressiveCaching: result = Val_long(331189307); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPainterPath::ElementType mlqt_QPainterPath_ElementType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 411617552: return QPainterPath::MoveToElement;
  case -1051172915: return QPainterPath::LineToElement;
  case 926384114: return QPainterPath::CurveToElement;
  case -385704472: return QPainterPath::CurveToDataElement;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPainterPath::ElementType)Long_val(Field(v, 1));
  }
}

value& mlqt_QPainterPath_ElementType_to_ocaml(const QPainterPath::ElementType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPainterPath::MoveToElement: result = Val_long(411617552); break;
  case QPainterPath::LineToElement: result = Val_long(-1051172915); break;
  case QPainterPath::CurveToElement: result = Val_long(926384114); break;
  case QPainterPath::CurveToDataElement: result = Val_long(-385704472); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLFramebufferObject::Attachment mlqt_QOpenGLFramebufferObject_Attachment_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1021834148: return QOpenGLFramebufferObject::NoAttachment;
  case -977462274: return QOpenGLFramebufferObject::CombinedDepthStencil;
  case -363372317: return QOpenGLFramebufferObject::Depth;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLFramebufferObject::Attachment)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLFramebufferObject_Attachment_to_ocaml(const QOpenGLFramebufferObject::Attachment& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLFramebufferObject::NoAttachment: result = Val_long(1021834148); break;
  case QOpenGLFramebufferObject::CombinedDepthStencil: result = Val_long(-977462274); break;
  case QOpenGLFramebufferObject::Depth: result = Val_long(-363372317); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLFramebufferObject::FramebufferRestorePolicy mlqt_QOpenGLFramebufferObject_FramebufferRestorePolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 387035093: return QOpenGLFramebufferObject::DontRestoreFramebufferBinding;
  case 102190848: return QOpenGLFramebufferObject::RestoreFramebufferBindingToDefault;
  case 238169222: return QOpenGLFramebufferObject::RestoreFrameBufferBinding;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLFramebufferObject::FramebufferRestorePolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLFramebufferObject_FramebufferRestorePolicy_to_ocaml(const QOpenGLFramebufferObject::FramebufferRestorePolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLFramebufferObject::DontRestoreFramebufferBinding: result = Val_long(387035093); break;
  case QOpenGLFramebufferObject::RestoreFramebufferBindingToDefault: result = Val_long(102190848); break;
  case QOpenGLFramebufferObject::RestoreFrameBufferBinding: result = Val_long(238169222); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QIcon::Mode mlqt_QIcon_Mode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -453122489: return QIcon::Normal;
  case -709493348: return QIcon::Disabled;
  case -891636250: return QIcon::Active;
  case 186574459: return QIcon::Selected;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QIcon::Mode)Long_val(Field(v, 1));
  }
}

value& mlqt_QIcon_Mode_to_ocaml(const QIcon::Mode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QIcon::Normal: result = Val_long(-453122489); break;
  case QIcon::Disabled: result = Val_long(-709493348); break;
  case QIcon::Active: result = Val_long(-891636250); break;
  case QIcon::Selected: result = Val_long(186574459); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QIcon::State mlqt_QIcon_State_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 17727: return QIcon::On;
  case 3951439: return QIcon::Off;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QIcon::State)Long_val(Field(v, 1));
  }
}

value& mlqt_QIcon_State_to_ocaml(const QIcon::State& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QIcon::On: result = Val_long(17727); break;
  case QIcon::Off: result = Val_long(3951439); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPaintDevice::PaintDeviceMetric mlqt_QPaintDevice_PaintDeviceMetric_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 278693741: return QPaintDevice::PdmWidth;
  case 782856352: return QPaintDevice::PdmHeight;
  case -698400755: return QPaintDevice::PdmWidthMM;
  case -1067508736: return QPaintDevice::PdmHeightMM;
  case -607903363: return QPaintDevice::PdmNumColors;
  case 493077098: return QPaintDevice::PdmDepth;
  case -363182380: return QPaintDevice::PdmDpiX;
  case -363182379: return QPaintDevice::PdmDpiY;
  case 147378571: return QPaintDevice::PdmPhysicalDpiX;
  case 147378572: return QPaintDevice::PdmPhysicalDpiY;
  case -882631980: return QPaintDevice::PdmDevicePixelRatio;
  case -51097458: return QPaintDevice::PdmDevicePixelRatioScaled;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPaintDevice::PaintDeviceMetric)Long_val(Field(v, 1));
  }
}

value& mlqt_QPaintDevice_PaintDeviceMetric_to_ocaml(const QPaintDevice::PaintDeviceMetric& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPaintDevice::PdmWidth: result = Val_long(278693741); break;
  case QPaintDevice::PdmHeight: result = Val_long(782856352); break;
  case QPaintDevice::PdmWidthMM: result = Val_long(-698400755); break;
  case QPaintDevice::PdmHeightMM: result = Val_long(-1067508736); break;
  case QPaintDevice::PdmNumColors: result = Val_long(-607903363); break;
  case QPaintDevice::PdmDepth: result = Val_long(493077098); break;
  case QPaintDevice::PdmDpiX: result = Val_long(-363182380); break;
  case QPaintDevice::PdmDpiY: result = Val_long(-363182379); break;
  case QPaintDevice::PdmPhysicalDpiX: result = Val_long(147378571); break;
  case QPaintDevice::PdmPhysicalDpiY: result = Val_long(147378572); break;
  case QPaintDevice::PdmDevicePixelRatio: result = Val_long(-882631980); break;
  case QPaintDevice::PdmDevicePixelRatioScaled: result = Val_long(-51097458); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPalette::ColorGroup mlqt_QPalette_ColorGroup_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -891636250: return QPalette::Active;
  case -709493348: return QPalette::Disabled;
  case -1008610421: return QPalette::Inactive;
  case -1026116503: return QPalette::NColorGroups;
  case 422888473: return QPalette::Current;
  case 3256577: return QPalette::All;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPalette::ColorGroup)Long_val(Field(v, 1));
  }
}

value& mlqt_QPalette_ColorGroup_to_ocaml(const QPalette::ColorGroup& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPalette::Active: result = Val_long(-891636250); break;
  case QPalette::Disabled: result = Val_long(-709493348); break;
  case QPalette::Inactive: result = Val_long(-1008610421); break;
  case QPalette::NColorGroups: result = Val_long(-1026116503); break;
  case QPalette::Current: result = Val_long(422888473); break;
  case QPalette::All: result = Val_long(3256577); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPalette::ColorRole mlqt_QPalette_ColorRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -830388003: return QPalette::WindowText;
  case 242538002: return QPalette::Button;
  case 136970422: return QPalette::Light;
  case 858173038: return QPalette::Midlight;
  case 758939798: return QPalette::Dark;
  case 3852648: return QPalette::Mid;
  case 936573133: return QPalette::Text;
  case -890041817: return QPalette::BrightText;
  case 765542367: return QPalette::ButtonText;
  case 736760881: return QPalette::Base;
  case 119605264: return QPalette::Window;
  case -776651776: return QPalette::Shadow;
  case 248722964: return QPalette::Highlight;
  case -474125888: return QPalette::HighlightedText;
  case 848053274: return QPalette::Link;
  case 484906480: return QPalette::LinkVisited;
  case 778326603: return QPalette::AlternateBase;
  case -807886729: return QPalette::NoRole;
  case 176733812: return QPalette::ToolTipBase;
  case 376546064: return QPalette::ToolTipText;
  case -868162104: return QPalette::NColorRoles;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPalette::ColorRole)Long_val(Field(v, 1));
  }
}

value& mlqt_QPalette_ColorRole_to_ocaml(const QPalette::ColorRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPalette::WindowText: result = Val_long(-830388003); break;
  case QPalette::Button: result = Val_long(242538002); break;
  case QPalette::Light: result = Val_long(136970422); break;
  case QPalette::Midlight: result = Val_long(858173038); break;
  case QPalette::Dark: result = Val_long(758939798); break;
  case QPalette::Mid: result = Val_long(3852648); break;
  case QPalette::Text: result = Val_long(936573133); break;
  case QPalette::BrightText: result = Val_long(-890041817); break;
  case QPalette::ButtonText: result = Val_long(765542367); break;
  case QPalette::Base: result = Val_long(736760881); break;
  case QPalette::Window: result = Val_long(119605264); break;
  case QPalette::Shadow: result = Val_long(-776651776); break;
  case QPalette::Highlight: result = Val_long(248722964); break;
  case QPalette::HighlightedText: result = Val_long(-474125888); break;
  case QPalette::Link: result = Val_long(848053274); break;
  case QPalette::LinkVisited: result = Val_long(484906480); break;
  case QPalette::AlternateBase: result = Val_long(778326603); break;
  case QPalette::NoRole: result = Val_long(-807886729); break;
  case QPalette::ToolTipBase: result = Val_long(176733812); break;
  case QPalette::ToolTipText: result = Val_long(376546064); break;
  case QPalette::NColorRoles: result = Val_long(-868162104); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRawFont::AntialiasingType mlqt_QRawFont_AntialiasingType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1052665222: return QRawFont::PixelAntialiasing;
  case -853627622: return QRawFont::SubPixelAntialiasing;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRawFont::AntialiasingType)Long_val(Field(v, 1));
  }
}

value& mlqt_QRawFont_AntialiasingType_to_ocaml(const QRawFont::AntialiasingType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRawFont::PixelAntialiasing: result = Val_long(-1052665222); break;
  case QRawFont::SubPixelAntialiasing: result = Val_long(-853627622); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRawFont::LayoutFlag mlqt_QRawFont_LayoutFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 22461524: return QRawFont::SeparateAdvances;
  case 224742566: return QRawFont::KernedAdvances;
  case 91836670: return QRawFont::UseDesignMetrics;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRawFont::LayoutFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QRawFont_LayoutFlag_to_ocaml(const QRawFont::LayoutFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRawFont::SeparateAdvances: result = Val_long(22461524); break;
  case QRawFont::KernedAdvances: result = Val_long(224742566); break;
  case QRawFont::UseDesignMetrics: result = Val_long(91836670); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLDebugMessage::Source mlqt_QOpenGLDebugMessage_Source_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -7118062: return QOpenGLDebugMessage::InvalidSource;
  case 829707509: return QOpenGLDebugMessage::APISource;
  case -236042918: return QOpenGLDebugMessage::WindowSystemSource;
  case 928898047: return QOpenGLDebugMessage::ShaderCompilerSource;
  case 69008026: return QOpenGLDebugMessage::ThirdPartySource;
  case -904795093: return QOpenGLDebugMessage::ApplicationSource;
  case 347086763: return QOpenGLDebugMessage::OtherSource;
  case 828635335: return QOpenGLDebugMessage::AnySource;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLDebugMessage::Source)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLDebugMessage_Source_to_ocaml(const QOpenGLDebugMessage::Source& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLDebugMessage::InvalidSource: result = Val_long(-7118062); break;
  case QOpenGLDebugMessage::APISource: result = Val_long(829707509); break;
  case QOpenGLDebugMessage::WindowSystemSource: result = Val_long(-236042918); break;
  case QOpenGLDebugMessage::ShaderCompilerSource: result = Val_long(928898047); break;
  case QOpenGLDebugMessage::ThirdPartySource: result = Val_long(69008026); break;
  case QOpenGLDebugMessage::ApplicationSource: result = Val_long(-904795093); break;
  case QOpenGLDebugMessage::OtherSource: result = Val_long(347086763); break;
  case QOpenGLDebugMessage::AnySource: result = Val_long(828635335); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLDebugMessage::Type mlqt_QOpenGLDebugMessage_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 424335665: return QOpenGLDebugMessage::InvalidType;
  case 356798082: return QOpenGLDebugMessage::ErrorType;
  case 929317023: return QOpenGLDebugMessage::DeprecatedBehaviorType;
  case 685290236: return QOpenGLDebugMessage::UndefinedBehaviorType;
  case 1013268355: return QOpenGLDebugMessage::PortabilityType;
  case -261444438: return QOpenGLDebugMessage::PerformanceType;
  case 632229258: return QOpenGLDebugMessage::OtherType;
  case -613810764: return QOpenGLDebugMessage::MarkerType;
  case 560249843: return QOpenGLDebugMessage::GroupPushType;
  case 48844684: return QOpenGLDebugMessage::GroupPopType;
  case -309123162: return QOpenGLDebugMessage::AnyType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLDebugMessage::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLDebugMessage_Type_to_ocaml(const QOpenGLDebugMessage::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLDebugMessage::InvalidType: result = Val_long(424335665); break;
  case QOpenGLDebugMessage::ErrorType: result = Val_long(356798082); break;
  case QOpenGLDebugMessage::DeprecatedBehaviorType: result = Val_long(929317023); break;
  case QOpenGLDebugMessage::UndefinedBehaviorType: result = Val_long(685290236); break;
  case QOpenGLDebugMessage::PortabilityType: result = Val_long(1013268355); break;
  case QOpenGLDebugMessage::PerformanceType: result = Val_long(-261444438); break;
  case QOpenGLDebugMessage::OtherType: result = Val_long(632229258); break;
  case QOpenGLDebugMessage::MarkerType: result = Val_long(-613810764); break;
  case QOpenGLDebugMessage::GroupPushType: result = Val_long(560249843); break;
  case QOpenGLDebugMessage::GroupPopType: result = Val_long(48844684); break;
  case QOpenGLDebugMessage::AnyType: result = Val_long(-309123162); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLDebugMessage::Severity mlqt_QOpenGLDebugMessage_Severity_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -373515340: return QOpenGLDebugMessage::InvalidSeverity;
  case -39051425: return QOpenGLDebugMessage::HighSeverity;
  case -461811854: return QOpenGLDebugMessage::MediumSeverity;
  case -988018095: return QOpenGLDebugMessage::LowSeverity;
  case -594923544: return QOpenGLDebugMessage::NotificationSeverity;
  case 556124329: return QOpenGLDebugMessage::AnySeverity;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLDebugMessage::Severity)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLDebugMessage_Severity_to_ocaml(const QOpenGLDebugMessage::Severity& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLDebugMessage::InvalidSeverity: result = Val_long(-373515340); break;
  case QOpenGLDebugMessage::HighSeverity: result = Val_long(-39051425); break;
  case QOpenGLDebugMessage::MediumSeverity: result = Val_long(-461811854); break;
  case QOpenGLDebugMessage::LowSeverity: result = Val_long(-988018095); break;
  case QOpenGLDebugMessage::NotificationSeverity: result = Val_long(-594923544); break;
  case QOpenGLDebugMessage::AnySeverity: result = Val_long(556124329); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPainter::RenderHint mlqt_QPainter_RenderHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 281371412: return QPainter::Antialiasing;
  case 273734497: return QPainter::TextAntialiasing;
  case 338644321: return QPainter::SmoothPixmapTransform;
  case 692099057: return QPainter::HighQualityAntialiasing;
  case 150338324: return QPainter::NonCosmeticDefaultPen;
  case -48513111: return QPainter::Qt4CompatiblePainting;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPainter::RenderHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QPainter_RenderHint_to_ocaml(const QPainter::RenderHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPainter::Antialiasing: result = Val_long(281371412); break;
  case QPainter::TextAntialiasing: result = Val_long(273734497); break;
  case QPainter::SmoothPixmapTransform: result = Val_long(338644321); break;
  case QPainter::HighQualityAntialiasing: result = Val_long(692099057); break;
  case QPainter::NonCosmeticDefaultPen: result = Val_long(150338324); break;
  case QPainter::Qt4CompatiblePainting: result = Val_long(-48513111); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPainter::PixmapFragmentHint mlqt_QPainter_PixmapFragmentHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -959394008: return QPainter::OpaqueHint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPainter::PixmapFragmentHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QPainter_PixmapFragmentHint_to_ocaml(const QPainter::PixmapFragmentHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPainter::OpaqueHint: result = Val_long(-959394008); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPainter::CompositionMode mlqt_QPainter_CompositionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 95810529: return QPainter::CompositionMode_SourceOver;
  case 603072944: return QPainter::CompositionMode_DestinationOver;
  case 228028091: return QPainter::CompositionMode_Clear;
  case 24329197: return QPainter::CompositionMode_Source;
  case 615423548: return QPainter::CompositionMode_Destination;
  case 833360178: return QPainter::CompositionMode_SourceIn;
  case 608167233: return QPainter::CompositionMode_DestinationIn;
  case -991457631: return QPainter::CompositionMode_SourceOut;
  case 330123186: return QPainter::CompositionMode_DestinationOut;
  case -59540639: return QPainter::CompositionMode_SourceAtop;
  case 447721776: return QPainter::CompositionMode_DestinationAtop;
  case 599532873: return QPainter::CompositionMode_Xor;
  case 462979564: return QPainter::CompositionMode_Plus;
  case -443230794: return QPainter::CompositionMode_Multiply;
  case 379504254: return QPainter::CompositionMode_Screen;
  case 858286142: return QPainter::CompositionMode_Overlay;
  case -260325007: return QPainter::CompositionMode_Darken;
  case 603680621: return QPainter::CompositionMode_Lighten;
  case 365068422: return QPainter::CompositionMode_ColorDodge;
  case -126170240: return QPainter::CompositionMode_ColorBurn;
  case -1031402983: return QPainter::CompositionMode_HardLight;
  case -430178374: return QPainter::CompositionMode_SoftLight;
  case -634710001: return QPainter::CompositionMode_Difference;
  case -765562116: return QPainter::CompositionMode_Exclusion;
  case -134542513: return QPainter::RasterOp_SourceOrDestination;
  case -101233837: return QPainter::RasterOp_SourceAndDestination;
  case -708688625: return QPainter::RasterOp_SourceXorDestination;
  case 611889701: return QPainter::RasterOp_NotSourceAndNotDestination;
  case 293962603: return QPainter::RasterOp_NotSourceOrNotDestination;
  case 265119776: return QPainter::RasterOp_NotSourceXorDestination;
  case 890725517: return QPainter::RasterOp_NotSource;
  case 872574564: return QPainter::RasterOp_NotSourceAndDestination;
  case 401560726: return QPainter::RasterOp_SourceAndNotDestination;
  case -630934178: return QPainter::RasterOp_NotSourceOrDestination;
  case -467748326: return QPainter::RasterOp_SourceOrNotDestination;
  case 198816162: return QPainter::RasterOp_ClearDestination;
  case 301001581: return QPainter::RasterOp_SetDestination;
  case -32296548: return QPainter::RasterOp_NotDestination;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPainter::CompositionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QPainter_CompositionMode_to_ocaml(const QPainter::CompositionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPainter::CompositionMode_SourceOver: result = Val_long(95810529); break;
  case QPainter::CompositionMode_DestinationOver: result = Val_long(603072944); break;
  case QPainter::CompositionMode_Clear: result = Val_long(228028091); break;
  case QPainter::CompositionMode_Source: result = Val_long(24329197); break;
  case QPainter::CompositionMode_Destination: result = Val_long(615423548); break;
  case QPainter::CompositionMode_SourceIn: result = Val_long(833360178); break;
  case QPainter::CompositionMode_DestinationIn: result = Val_long(608167233); break;
  case QPainter::CompositionMode_SourceOut: result = Val_long(-991457631); break;
  case QPainter::CompositionMode_DestinationOut: result = Val_long(330123186); break;
  case QPainter::CompositionMode_SourceAtop: result = Val_long(-59540639); break;
  case QPainter::CompositionMode_DestinationAtop: result = Val_long(447721776); break;
  case QPainter::CompositionMode_Xor: result = Val_long(599532873); break;
  case QPainter::CompositionMode_Plus: result = Val_long(462979564); break;
  case QPainter::CompositionMode_Multiply: result = Val_long(-443230794); break;
  case QPainter::CompositionMode_Screen: result = Val_long(379504254); break;
  case QPainter::CompositionMode_Overlay: result = Val_long(858286142); break;
  case QPainter::CompositionMode_Darken: result = Val_long(-260325007); break;
  case QPainter::CompositionMode_Lighten: result = Val_long(603680621); break;
  case QPainter::CompositionMode_ColorDodge: result = Val_long(365068422); break;
  case QPainter::CompositionMode_ColorBurn: result = Val_long(-126170240); break;
  case QPainter::CompositionMode_HardLight: result = Val_long(-1031402983); break;
  case QPainter::CompositionMode_SoftLight: result = Val_long(-430178374); break;
  case QPainter::CompositionMode_Difference: result = Val_long(-634710001); break;
  case QPainter::CompositionMode_Exclusion: result = Val_long(-765562116); break;
  case QPainter::RasterOp_SourceOrDestination: result = Val_long(-134542513); break;
  case QPainter::RasterOp_SourceAndDestination: result = Val_long(-101233837); break;
  case QPainter::RasterOp_SourceXorDestination: result = Val_long(-708688625); break;
  case QPainter::RasterOp_NotSourceAndNotDestination: result = Val_long(611889701); break;
  case QPainter::RasterOp_NotSourceOrNotDestination: result = Val_long(293962603); break;
  case QPainter::RasterOp_NotSourceXorDestination: result = Val_long(265119776); break;
  case QPainter::RasterOp_NotSource: result = Val_long(890725517); break;
  case QPainter::RasterOp_NotSourceAndDestination: result = Val_long(872574564); break;
  case QPainter::RasterOp_SourceAndNotDestination: result = Val_long(401560726); break;
  case QPainter::RasterOp_NotSourceOrDestination: result = Val_long(-630934178); break;
  case QPainter::RasterOp_SourceOrNotDestination: result = Val_long(-467748326); break;
  case QPainter::RasterOp_ClearDestination: result = Val_long(198816162); break;
  case QPainter::RasterOp_SetDestination: result = Val_long(301001581); break;
  case QPainter::RasterOp_NotDestination: result = Val_long(-32296548); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLFunctions::OpenGLFeature mlqt_QOpenGLFunctions_OpenGLFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -174408798: return QOpenGLFunctions::Multitexture;
  case 752331150: return QOpenGLFunctions::Shaders;
  case -18756781: return QOpenGLFunctions::Buffers;
  case -857962746: return QOpenGLFunctions::Framebuffers;
  case -647678094: return QOpenGLFunctions::BlendColor;
  case -895620899: return QOpenGLFunctions::BlendEquation;
  case -235181728: return QOpenGLFunctions::BlendEquationSeparate;
  case -330935144: return QOpenGLFunctions::BlendFuncSeparate;
  case -399334811: return QOpenGLFunctions::BlendSubtract;
  case 1001327865: return QOpenGLFunctions::CompressedTextures;
  case 960176963: return QOpenGLFunctions::Multisample;
  case -595198625: return QOpenGLFunctions::StencilSeparate;
  case 461836351: return QOpenGLFunctions::NPOTTextures;
  case -513722321: return QOpenGLFunctions::NPOTTextureRepeat;
  case -667277362: return QOpenGLFunctions::FixedFunctionPipeline;
  case -414789108: return QOpenGLFunctions::TextureRGFormats;
  case 54262524: return QOpenGLFunctions::MultipleRenderTargets;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLFunctions::OpenGLFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLFunctions_OpenGLFeature_to_ocaml(const QOpenGLFunctions::OpenGLFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLFunctions::Multitexture: result = Val_long(-174408798); break;
  case QOpenGLFunctions::Shaders: result = Val_long(752331150); break;
  case QOpenGLFunctions::Buffers: result = Val_long(-18756781); break;
  case QOpenGLFunctions::Framebuffers: result = Val_long(-857962746); break;
  case QOpenGLFunctions::BlendColor: result = Val_long(-647678094); break;
  case QOpenGLFunctions::BlendEquation: result = Val_long(-895620899); break;
  case QOpenGLFunctions::BlendEquationSeparate: result = Val_long(-235181728); break;
  case QOpenGLFunctions::BlendFuncSeparate: result = Val_long(-330935144); break;
  case QOpenGLFunctions::BlendSubtract: result = Val_long(-399334811); break;
  case QOpenGLFunctions::CompressedTextures: result = Val_long(1001327865); break;
  case QOpenGLFunctions::Multisample: result = Val_long(960176963); break;
  case QOpenGLFunctions::StencilSeparate: result = Val_long(-595198625); break;
  case QOpenGLFunctions::NPOTTextures: result = Val_long(461836351); break;
  case QOpenGLFunctions::NPOTTextureRepeat: result = Val_long(-513722321); break;
  case QOpenGLFunctions::FixedFunctionPipeline: result = Val_long(-667277362); break;
  case QOpenGLFunctions::TextureRGFormats: result = Val_long(-414789108); break;
  case QOpenGLFunctions::MultipleRenderTargets: result = Val_long(54262524); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFormat::FormatType mlqt_QTextFormat_FormatType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -890224274: return QTextFormat::InvalidFormat;
  case 25987140: return QTextFormat::BlockFormat;
  case -396416307: return QTextFormat::CharFormat;
  case -693780907: return QTextFormat::ListFormat;
  case 553636293: return QTextFormat::TableFormat;
  case -1073155292: return QTextFormat::FrameFormat;
  case -490413054: return QTextFormat::UserFormat;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFormat::FormatType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFormat_FormatType_to_ocaml(const QTextFormat::FormatType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFormat::InvalidFormat: result = Val_long(-890224274); break;
  case QTextFormat::BlockFormat: result = Val_long(25987140); break;
  case QTextFormat::CharFormat: result = Val_long(-396416307); break;
  case QTextFormat::ListFormat: result = Val_long(-693780907); break;
  case QTextFormat::TableFormat: result = Val_long(553636293); break;
  case QTextFormat::FrameFormat: result = Val_long(-1073155292); break;
  case QTextFormat::UserFormat: result = Val_long(-490413054); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFormat::Property mlqt_QTextFormat_Property_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 292966323: return QTextFormat::ObjectIndex;
  case 925297401: return QTextFormat::CssFloat;
  case 836007445: return QTextFormat::LayoutDirection;
  case -909764969: return QTextFormat::OutlinePen;
  case -596689524: return QTextFormat::BackgroundBrush;
  case -509406057: return QTextFormat::ForegroundBrush;
  case -666394366: return QTextFormat::BackgroundImageUrl;
  case -518434826: return QTextFormat::BlockAlignment;
  case -108767818: return QTextFormat::BlockTopMargin;
  case -801829306: return QTextFormat::BlockBottomMargin;
  case -224252126: return QTextFormat::BlockLeftMargin;
  case 441537789: return QTextFormat::BlockRightMargin;
  case -1047228135: return QTextFormat::TextIndent;
  case -172141899: return QTextFormat::TabPositions;
  case 401671545: return QTextFormat::BlockIndent;
  case -844822757: return QTextFormat::LineHeight;
  case 367546229: return QTextFormat::LineHeightType;
  case 245735270: return QTextFormat::BlockNonBreakableLines;
  case -472632835: return QTextFormat::BlockTrailingHorizontalRulerWidth;
  case -22784652: return QTextFormat::FirstFontProperty;
  case -85143128: return QTextFormat::FontLetterSpacingType;
  case 606712782: return QTextFormat::FontLetterSpacing;
  case 998935850: return QTextFormat::FontWordSpacing;
  case -279541802: return QTextFormat::FontStretch;
  case 312744809: return QTextFormat::FontStyleHint;
  case 801222485: return QTextFormat::FontStyleStrategy;
  case 691733661: return QTextFormat::FontKerning;
  case -450827257: return QTextFormat::FontHintingPreference;
  case 363199219: return QTextFormat::FontFamily;
  case -646248126: return QTextFormat::FontPointSize;
  case -970422243: return QTextFormat::FontSizeAdjustment;
  case 749407431: return QTextFormat::FontWeight;
  case 828951103: return QTextFormat::FontItalic;
  case 1066874141: return QTextFormat::FontUnderline;
  case 789459031: return QTextFormat::FontOverline;
  case -1006977651: return QTextFormat::FontStrikeOut;
  case -1050583941: return QTextFormat::FontFixedPitch;
  case 1034120824: return QTextFormat::FontPixelSize;
  case -388072860: return QTextFormat::TextUnderlineColor;
  case 278452224: return QTextFormat::TextVerticalAlignment;
  case 561031733: return QTextFormat::TextOutline;
  case 580890162: return QTextFormat::TextUnderlineStyle;
  case 707196822: return QTextFormat::TextToolTip;
  case 311202335: return QTextFormat::IsAnchor;
  case 790057760: return QTextFormat::AnchorHref;
  case 855751552: return QTextFormat::AnchorName;
  case -973968071: return QTextFormat::ObjectType;
  case 1009861587: return QTextFormat::ListStyle;
  case -318096502: return QTextFormat::ListIndent;
  case -747574567: return QTextFormat::ListNumberPrefix;
  case -1050676200: return QTextFormat::ListNumberSuffix;
  case 647278809: return QTextFormat::FrameBorder;
  case -51915749: return QTextFormat::FrameMargin;
  case 958031172: return QTextFormat::FramePadding;
  case 607776441: return QTextFormat::FrameWidth;
  case -993629228: return QTextFormat::FrameHeight;
  case 355858134: return QTextFormat::FrameTopMargin;
  case -643505882: return QTextFormat::FrameBottomMargin;
  case 308120066: return QTextFormat::FrameLeftMargin;
  case 1048935965: return QTextFormat::FrameRightMargin;
  case -536582943: return QTextFormat::FrameBorderBrush;
  case 724152728: return QTextFormat::FrameBorderStyle;
  case -754801009: return QTextFormat::TableColumns;
  case 139983508: return QTextFormat::TableColumnWidthConstraints;
  case -922858317: return QTextFormat::TableCellSpacing;
  case 130052865: return QTextFormat::TableCellPadding;
  case 806555536: return QTextFormat::TableHeaderRowCount;
  case -649062604: return QTextFormat::TableCellRowSpan;
  case 854146448: return QTextFormat::TableCellColumnSpan;
  case -688386932: return QTextFormat::TableCellTopPadding;
  case 458177366: return QTextFormat::TableCellBottomPadding;
  case 210766266: return QTextFormat::TableCellLeftPadding;
  case -298876379: return QTextFormat::TableCellRightPadding;
  case -855185626: return QTextFormat::ImageName;
  case -857636661: return QTextFormat::ImageWidth;
  case 784247170: return QTextFormat::ImageHeight;
  case -371994763: return QTextFormat::FullWidthSelection;
  case 576120802: return QTextFormat::PageBreakPolicy;
  case 189113824: return QTextFormat::UserProperty;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFormat::Property)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFormat_Property_to_ocaml(const QTextFormat::Property& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFormat::ObjectIndex: result = Val_long(292966323); break;
  case QTextFormat::CssFloat: result = Val_long(925297401); break;
  case QTextFormat::LayoutDirection: result = Val_long(836007445); break;
  case QTextFormat::OutlinePen: result = Val_long(-909764969); break;
  case QTextFormat::BackgroundBrush: result = Val_long(-596689524); break;
  case QTextFormat::ForegroundBrush: result = Val_long(-509406057); break;
  case QTextFormat::BackgroundImageUrl: result = Val_long(-666394366); break;
  case QTextFormat::BlockAlignment: result = Val_long(-518434826); break;
  case QTextFormat::BlockTopMargin: result = Val_long(-108767818); break;
  case QTextFormat::BlockBottomMargin: result = Val_long(-801829306); break;
  case QTextFormat::BlockLeftMargin: result = Val_long(-224252126); break;
  case QTextFormat::BlockRightMargin: result = Val_long(441537789); break;
  case QTextFormat::TextIndent: result = Val_long(-1047228135); break;
  case QTextFormat::TabPositions: result = Val_long(-172141899); break;
  case QTextFormat::BlockIndent: result = Val_long(401671545); break;
  case QTextFormat::LineHeight: result = Val_long(-844822757); break;
  case QTextFormat::LineHeightType: result = Val_long(367546229); break;
  case QTextFormat::BlockNonBreakableLines: result = Val_long(245735270); break;
  case QTextFormat::BlockTrailingHorizontalRulerWidth: result = Val_long(-472632835); break;
  case QTextFormat::FirstFontProperty: result = Val_long(-22784652); break;
  case QTextFormat::FontLetterSpacingType: result = Val_long(-85143128); break;
  case QTextFormat::FontLetterSpacing: result = Val_long(606712782); break;
  case QTextFormat::FontWordSpacing: result = Val_long(998935850); break;
  case QTextFormat::FontStretch: result = Val_long(-279541802); break;
  case QTextFormat::FontStyleHint: result = Val_long(312744809); break;
  case QTextFormat::FontStyleStrategy: result = Val_long(801222485); break;
  case QTextFormat::FontKerning: result = Val_long(691733661); break;
  case QTextFormat::FontHintingPreference: result = Val_long(-450827257); break;
  case QTextFormat::FontFamily: result = Val_long(363199219); break;
  case QTextFormat::FontPointSize: result = Val_long(-646248126); break;
  case QTextFormat::FontSizeAdjustment: result = Val_long(-970422243); break;
  case QTextFormat::FontWeight: result = Val_long(749407431); break;
  case QTextFormat::FontItalic: result = Val_long(828951103); break;
  case QTextFormat::FontUnderline: result = Val_long(1066874141); break;
  case QTextFormat::FontOverline: result = Val_long(789459031); break;
  case QTextFormat::FontStrikeOut: result = Val_long(-1006977651); break;
  case QTextFormat::FontFixedPitch: result = Val_long(-1050583941); break;
  case QTextFormat::FontPixelSize: result = Val_long(1034120824); break;
  case QTextFormat::TextUnderlineColor: result = Val_long(-388072860); break;
  case QTextFormat::TextVerticalAlignment: result = Val_long(278452224); break;
  case QTextFormat::TextOutline: result = Val_long(561031733); break;
  case QTextFormat::TextUnderlineStyle: result = Val_long(580890162); break;
  case QTextFormat::TextToolTip: result = Val_long(707196822); break;
  case QTextFormat::IsAnchor: result = Val_long(311202335); break;
  case QTextFormat::AnchorHref: result = Val_long(790057760); break;
  case QTextFormat::AnchorName: result = Val_long(855751552); break;
  case QTextFormat::ObjectType: result = Val_long(-973968071); break;
  case QTextFormat::ListStyle: result = Val_long(1009861587); break;
  case QTextFormat::ListIndent: result = Val_long(-318096502); break;
  case QTextFormat::ListNumberPrefix: result = Val_long(-747574567); break;
  case QTextFormat::ListNumberSuffix: result = Val_long(-1050676200); break;
  case QTextFormat::FrameBorder: result = Val_long(647278809); break;
  case QTextFormat::FrameMargin: result = Val_long(-51915749); break;
  case QTextFormat::FramePadding: result = Val_long(958031172); break;
  case QTextFormat::FrameWidth: result = Val_long(607776441); break;
  case QTextFormat::FrameHeight: result = Val_long(-993629228); break;
  case QTextFormat::FrameTopMargin: result = Val_long(355858134); break;
  case QTextFormat::FrameBottomMargin: result = Val_long(-643505882); break;
  case QTextFormat::FrameLeftMargin: result = Val_long(308120066); break;
  case QTextFormat::FrameRightMargin: result = Val_long(1048935965); break;
  case QTextFormat::FrameBorderBrush: result = Val_long(-536582943); break;
  case QTextFormat::FrameBorderStyle: result = Val_long(724152728); break;
  case QTextFormat::TableColumns: result = Val_long(-754801009); break;
  case QTextFormat::TableColumnWidthConstraints: result = Val_long(139983508); break;
  case QTextFormat::TableCellSpacing: result = Val_long(-922858317); break;
  case QTextFormat::TableCellPadding: result = Val_long(130052865); break;
  case QTextFormat::TableHeaderRowCount: result = Val_long(806555536); break;
  case QTextFormat::TableCellRowSpan: result = Val_long(-649062604); break;
  case QTextFormat::TableCellColumnSpan: result = Val_long(854146448); break;
  case QTextFormat::TableCellTopPadding: result = Val_long(-688386932); break;
  case QTextFormat::TableCellBottomPadding: result = Val_long(458177366); break;
  case QTextFormat::TableCellLeftPadding: result = Val_long(210766266); break;
  case QTextFormat::TableCellRightPadding: result = Val_long(-298876379); break;
  case QTextFormat::ImageName: result = Val_long(-855185626); break;
  case QTextFormat::ImageWidth: result = Val_long(-857636661); break;
  case QTextFormat::ImageHeight: result = Val_long(784247170); break;
  case QTextFormat::FullWidthSelection: result = Val_long(-371994763); break;
  case QTextFormat::PageBreakPolicy: result = Val_long(576120802); break;
  case QTextFormat::UserProperty: result = Val_long(189113824); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFormat::ObjectTypes mlqt_QTextFormat_ObjectTypes_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1057043968: return QTextFormat::NoObject;
  case -1045290918: return QTextFormat::ImageObject;
  case 951107917: return QTextFormat::TableObject;
  case -246047857: return QTextFormat::TableCellObject;
  case -92941430: return QTextFormat::UserObject;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFormat::ObjectTypes)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFormat_ObjectTypes_to_ocaml(const QTextFormat::ObjectTypes& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFormat::NoObject: result = Val_long(1057043968); break;
  case QTextFormat::ImageObject: result = Val_long(-1045290918); break;
  case QTextFormat::TableObject: result = Val_long(951107917); break;
  case QTextFormat::TableCellObject: result = Val_long(-246047857); break;
  case QTextFormat::UserObject: result = Val_long(-92941430); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFormat::PageBreakFlag mlqt_QTextFormat_PageBreakFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 195852702: return QTextFormat::PageBreak_Auto;
  case 417938909: return QTextFormat::PageBreak_AlwaysBefore;
  case 265966206: return QTextFormat::PageBreak_AlwaysAfter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFormat::PageBreakFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFormat_PageBreakFlag_to_ocaml(const QTextFormat::PageBreakFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFormat::PageBreak_Auto: result = Val_long(195852702); break;
  case QTextFormat::PageBreak_AlwaysBefore: result = Val_long(417938909); break;
  case QTextFormat::PageBreak_AlwaysAfter: result = Val_long(265966206); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QColor::Spec mlqt_QColor_Spec_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 144245463: return QColor::Invalid;
  case 4100845: return QColor::Rgb;
  case 3606251: return QColor::Hsv;
  case 748448540: return QColor::Cmyk;
  case 3606241: return QColor::Hsl;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QColor::Spec)Long_val(Field(v, 1));
  }
}

value& mlqt_QColor_Spec_to_ocaml(const QColor::Spec& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QColor::Invalid: result = Val_long(144245463); break;
  case QColor::Rgb: result = Val_long(4100845); break;
  case QColor::Hsv: result = Val_long(3606251); break;
  case QColor::Cmyk: result = Val_long(748448540); break;
  case QColor::Hsl: result = Val_long(3606241); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QColor::NameFormat mlqt_QColor_NameFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1061503214: return QColor::HexRgb;
  case -679989849: return QColor::HexArgb;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QColor::NameFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QColor_NameFormat_to_ocaml(const QColor::NameFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QColor::HexRgb: result = Val_long(-1061503214); break;
  case QColor::HexArgb: result = Val_long(-679989849); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::Event mlqt_QAccessible_Event_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -820475550: return QAccessible::SoundPlayed;
  case 884721468: return QAccessible::Alert;
  case 45379153: return QAccessible::ForegroundChanged;
  case -1061765597: return QAccessible::MenuStart;
  case 127839068: return QAccessible::MenuEnd;
  case 525509271: return QAccessible::PopupMenuStart;
  case 48024272: return QAccessible::PopupMenuEnd;
  case -973437422: return QAccessible::ContextHelpStart;
  case 232475019: return QAccessible::ContextHelpEnd;
  case -399276289: return QAccessible::DragDropStart;
  case 555500856: return QAccessible::DragDropEnd;
  case -165010854: return QAccessible::DialogStart;
  case 465683411: return QAccessible::DialogEnd;
  case -159799987: return QAccessible::ScrollingStart;
  case 18256902: return QAccessible::ScrollingEnd;
  case 919563596: return QAccessible::MenuCommand;
  case 179466174: return QAccessible::ActionChanged;
  case -1016666447: return QAccessible::ActiveDescendantChanged;
  case -895827880: return QAccessible::AttributeChanged;
  case 174761302: return QAccessible::DocumentContentChanged;
  case 859394266: return QAccessible::DocumentLoadComplete;
  case -146431732: return QAccessible::DocumentLoadStopped;
  case 66916596: return QAccessible::DocumentReload;
  case 1005977303: return QAccessible::HyperlinkEndIndexChanged;
  case 26958204: return QAccessible::HyperlinkNumberOfAnchorsChanged;
  case -876602151: return QAccessible::HyperlinkSelectedLinkChanged;
  case -1043581634: return QAccessible::HypertextLinkActivated;
  case -1054559474: return QAccessible::HypertextLinkSelected;
  case 4876382: return QAccessible::HyperlinkStartIndexChanged;
  case 281775355: return QAccessible::HypertextChanged;
  case -619441264: return QAccessible::HypertextNLinksChanged;
  case 961978679: return QAccessible::ObjectAttributeChanged;
  case 736038469: return QAccessible::PageChanged;
  case -134865489: return QAccessible::SectionChanged;
  case 502099772: return QAccessible::TableCaptionChanged;
  case 401409500: return QAccessible::TableColumnDescriptionChanged;
  case 206273251: return QAccessible::TableColumnHeaderChanged;
  case -664531623: return QAccessible::TableModelChanged;
  case -983070396: return QAccessible::TableRowDescriptionChanged;
  case 615493755: return QAccessible::TableRowHeaderChanged;
  case -601579780: return QAccessible::TableSummaryChanged;
  case -685972699: return QAccessible::TextAttributeChanged;
  case 1051903709: return QAccessible::TextCaretMoved;
  case 475122609: return QAccessible::TextColumnChanged;
  case 1051551173: return QAccessible::TextInserted;
  case 850571859: return QAccessible::TextRemoved;
  case -578661138: return QAccessible::TextUpdated;
  case -481771275: return QAccessible::TextSelectionChanged;
  case -798355272: return QAccessible::VisibleDataChanged;
  case -937716535: return QAccessible::ObjectCreated;
  case -537505542: return QAccessible::ObjectDestroyed;
  case -985903236: return QAccessible::ObjectShow;
  case 1039642433: return QAccessible::ObjectHide;
  case -764665124: return QAccessible::ObjectReorder;
  case 397856696: return QAccessible::Focus;
  case 804116524: return QAccessible::Selection;
  case 630207829: return QAccessible::SelectionAdd;
  case -626175600: return QAccessible::SelectionRemove;
  case 749442231: return QAccessible::SelectionWithin;
  case -763821309: return QAccessible::StateChanged;
  case -291581153: return QAccessible::LocationChanged;
  case 466267593: return QAccessible::NameChanged;
  case 492587896: return QAccessible::DescriptionChanged;
  case 492430755: return QAccessible::ValueChanged;
  case 517045450: return QAccessible::ParentChanged;
  case 972523539: return QAccessible::HelpChanged;
  case -947986819: return QAccessible::DefaultActionChanged;
  case 187003561: return QAccessible::AcceleratorChanged;
  case -483620413: return QAccessible::InvalidEvent;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::Event)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_Event_to_ocaml(const QAccessible::Event& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::SoundPlayed: result = Val_long(-820475550); break;
  case QAccessible::Alert: result = Val_long(884721468); break;
  case QAccessible::ForegroundChanged: result = Val_long(45379153); break;
  case QAccessible::MenuStart: result = Val_long(-1061765597); break;
  case QAccessible::MenuEnd: result = Val_long(127839068); break;
  case QAccessible::PopupMenuStart: result = Val_long(525509271); break;
  case QAccessible::PopupMenuEnd: result = Val_long(48024272); break;
  case QAccessible::ContextHelpStart: result = Val_long(-973437422); break;
  case QAccessible::ContextHelpEnd: result = Val_long(232475019); break;
  case QAccessible::DragDropStart: result = Val_long(-399276289); break;
  case QAccessible::DragDropEnd: result = Val_long(555500856); break;
  case QAccessible::DialogStart: result = Val_long(-165010854); break;
  case QAccessible::DialogEnd: result = Val_long(465683411); break;
  case QAccessible::ScrollingStart: result = Val_long(-159799987); break;
  case QAccessible::ScrollingEnd: result = Val_long(18256902); break;
  case QAccessible::MenuCommand: result = Val_long(919563596); break;
  case QAccessible::ActionChanged: result = Val_long(179466174); break;
  case QAccessible::ActiveDescendantChanged: result = Val_long(-1016666447); break;
  case QAccessible::AttributeChanged: result = Val_long(-895827880); break;
  case QAccessible::DocumentContentChanged: result = Val_long(174761302); break;
  case QAccessible::DocumentLoadComplete: result = Val_long(859394266); break;
  case QAccessible::DocumentLoadStopped: result = Val_long(-146431732); break;
  case QAccessible::DocumentReload: result = Val_long(66916596); break;
  case QAccessible::HyperlinkEndIndexChanged: result = Val_long(1005977303); break;
  case QAccessible::HyperlinkNumberOfAnchorsChanged: result = Val_long(26958204); break;
  case QAccessible::HyperlinkSelectedLinkChanged: result = Val_long(-876602151); break;
  case QAccessible::HypertextLinkActivated: result = Val_long(-1043581634); break;
  case QAccessible::HypertextLinkSelected: result = Val_long(-1054559474); break;
  case QAccessible::HyperlinkStartIndexChanged: result = Val_long(4876382); break;
  case QAccessible::HypertextChanged: result = Val_long(281775355); break;
  case QAccessible::HypertextNLinksChanged: result = Val_long(-619441264); break;
  case QAccessible::ObjectAttributeChanged: result = Val_long(961978679); break;
  case QAccessible::PageChanged: result = Val_long(736038469); break;
  case QAccessible::SectionChanged: result = Val_long(-134865489); break;
  case QAccessible::TableCaptionChanged: result = Val_long(502099772); break;
  case QAccessible::TableColumnDescriptionChanged: result = Val_long(401409500); break;
  case QAccessible::TableColumnHeaderChanged: result = Val_long(206273251); break;
  case QAccessible::TableModelChanged: result = Val_long(-664531623); break;
  case QAccessible::TableRowDescriptionChanged: result = Val_long(-983070396); break;
  case QAccessible::TableRowHeaderChanged: result = Val_long(615493755); break;
  case QAccessible::TableSummaryChanged: result = Val_long(-601579780); break;
  case QAccessible::TextAttributeChanged: result = Val_long(-685972699); break;
  case QAccessible::TextCaretMoved: result = Val_long(1051903709); break;
  case QAccessible::TextColumnChanged: result = Val_long(475122609); break;
  case QAccessible::TextInserted: result = Val_long(1051551173); break;
  case QAccessible::TextRemoved: result = Val_long(850571859); break;
  case QAccessible::TextUpdated: result = Val_long(-578661138); break;
  case QAccessible::TextSelectionChanged: result = Val_long(-481771275); break;
  case QAccessible::VisibleDataChanged: result = Val_long(-798355272); break;
  case QAccessible::ObjectCreated: result = Val_long(-937716535); break;
  case QAccessible::ObjectDestroyed: result = Val_long(-537505542); break;
  case QAccessible::ObjectShow: result = Val_long(-985903236); break;
  case QAccessible::ObjectHide: result = Val_long(1039642433); break;
  case QAccessible::ObjectReorder: result = Val_long(-764665124); break;
  case QAccessible::Focus: result = Val_long(397856696); break;
  case QAccessible::Selection: result = Val_long(804116524); break;
  case QAccessible::SelectionAdd: result = Val_long(630207829); break;
  case QAccessible::SelectionRemove: result = Val_long(-626175600); break;
  case QAccessible::SelectionWithin: result = Val_long(749442231); break;
  case QAccessible::StateChanged: result = Val_long(-763821309); break;
  case QAccessible::LocationChanged: result = Val_long(-291581153); break;
  case QAccessible::NameChanged: result = Val_long(466267593); break;
  case QAccessible::DescriptionChanged: result = Val_long(492587896); break;
  case QAccessible::ValueChanged: result = Val_long(492430755); break;
  case QAccessible::ParentChanged: result = Val_long(517045450); break;
  case QAccessible::HelpChanged: result = Val_long(972523539); break;
  case QAccessible::DefaultActionChanged: result = Val_long(-947986819); break;
  case QAccessible::AcceleratorChanged: result = Val_long(187003561); break;
  case QAccessible::InvalidEvent: result = Val_long(-483620413); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::Role mlqt_QAccessible_Role_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -807886729: return QAccessible::NoRole;
  case 645701435: return QAccessible::TitleBar;
  case 127686996: return QAccessible::MenuBar;
  case -540067930: return QAccessible::ScrollBar;
  case 793051890: return QAccessible::Grip;
  case 335150255: return QAccessible::Sound;
  case -209911050: return QAccessible::Cursor;
  case -733124253: return QAccessible::Caret;
  case 781202923: return QAccessible::AlertMessage;
  case 119605264: return QAccessible::Window;
  case 1055145579: return QAccessible::Client;
  case -511122997: return QAccessible::PopupMenu;
  case 635481714: return QAccessible::MenuItem;
  case 935693507: return QAccessible::ToolTip;
  case 242303792: return QAccessible::Application;
  case -188437701: return QAccessible::Document;
  case 892013704: return QAccessible::Pane;
  case -656339778: return QAccessible::Chart;
  case -439912216: return QAccessible::Dialog;
  case 414105868: return QAccessible::Border;
  case -345807069: return QAccessible::Grouping;
  case -749584315: return QAccessible::Separator;
  case 934796603: return QAccessible::ToolBar;
  case 473984417: return QAccessible::StatusBar;
  case 504440814: return QAccessible::Table;
  case 126999843: return QAccessible::ColumnHeader;
  case -465449177: return QAccessible::RowHeader;
  case -81804554: return QAccessible::Column;
  case 4102650: return QAccessible::Row;
  case 748047810: return QAccessible::Cell;
  case 848053274: return QAccessible::Link;
  case 402561486: return QAccessible::HelpBalloon;
  case -291661378: return QAccessible::Assistant;
  case 848054398: return QAccessible::List;
  case -10071887: return QAccessible::ListItem;
  case 937215358: return QAccessible::Tree;
  case 54087089: return QAccessible::TreeItem;
  case -660899034: return QAccessible::PageTab;
  case -263657116: return QAccessible::PropertyPage;
  case 897632175: return QAccessible::Indicator;
  case -1051164024: return QAccessible::Graphic;
  case 626444443: return QAccessible::StaticText;
  case 680815505: return QAccessible::EditableText;
  case 242538002: return QAccessible::Button;
  case 110052931: return QAccessible::CheckBox;
  case 364309805: return QAccessible::RadioButton;
  case -876695939: return QAccessible::ComboBox;
  case -897035258: return QAccessible::ProgressBar;
  case 759333840: return QAccessible::Dial;
  case -113708280: return QAccessible::HotkeyField;
  case 614021697: return QAccessible::Slider;
  case 23642441: return QAccessible::SpinBox;
  case -321468168: return QAccessible::Canvas;
  case -318255388: return QAccessible::Animation;
  case 875460524: return QAccessible::Equation;
  case 116298851: return QAccessible::ButtonDropDown;
  case 687913169: return QAccessible::ButtonMenu;
  case 149713607: return QAccessible::ButtonDropGrid;
  case 1010696605: return QAccessible::Whitespace;
  case 523980452: return QAccessible::PageTabList;
  case -611288658: return QAccessible::Clock;
  case 761394023: return QAccessible::Splitter;
  case 320359640: return QAccessible::LayeredPane;
  case -912466532: return QAccessible::Terminal;
  case -337252932: return QAccessible::Desktop;
  case -22741170: return QAccessible::Paragraph;
  case -567895121: return QAccessible::WebDocument;
  case 724118981: return QAccessible::Section;
  case -830183752: return QAccessible::ColorChooser;
  case 808235707: return QAccessible::Footer;
  case 781815140: return QAccessible::Form;
  case 811368354: return QAccessible::Heading;
  case 870532114: return QAccessible::Note;
  case 888364599: return QAccessible::ComplementaryContent;
  case -400169087: return QAccessible::UserRole;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::Role)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_Role_to_ocaml(const QAccessible::Role& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::NoRole: result = Val_long(-807886729); break;
  case QAccessible::TitleBar: result = Val_long(645701435); break;
  case QAccessible::MenuBar: result = Val_long(127686996); break;
  case QAccessible::ScrollBar: result = Val_long(-540067930); break;
  case QAccessible::Grip: result = Val_long(793051890); break;
  case QAccessible::Sound: result = Val_long(335150255); break;
  case QAccessible::Cursor: result = Val_long(-209911050); break;
  case QAccessible::Caret: result = Val_long(-733124253); break;
  case QAccessible::AlertMessage: result = Val_long(781202923); break;
  case QAccessible::Window: result = Val_long(119605264); break;
  case QAccessible::Client: result = Val_long(1055145579); break;
  case QAccessible::PopupMenu: result = Val_long(-511122997); break;
  case QAccessible::MenuItem: result = Val_long(635481714); break;
  case QAccessible::ToolTip: result = Val_long(935693507); break;
  case QAccessible::Application: result = Val_long(242303792); break;
  case QAccessible::Document: result = Val_long(-188437701); break;
  case QAccessible::Pane: result = Val_long(892013704); break;
  case QAccessible::Chart: result = Val_long(-656339778); break;
  case QAccessible::Dialog: result = Val_long(-439912216); break;
  case QAccessible::Border: result = Val_long(414105868); break;
  case QAccessible::Grouping: result = Val_long(-345807069); break;
  case QAccessible::Separator: result = Val_long(-749584315); break;
  case QAccessible::ToolBar: result = Val_long(934796603); break;
  case QAccessible::StatusBar: result = Val_long(473984417); break;
  case QAccessible::Table: result = Val_long(504440814); break;
  case QAccessible::ColumnHeader: result = Val_long(126999843); break;
  case QAccessible::RowHeader: result = Val_long(-465449177); break;
  case QAccessible::Column: result = Val_long(-81804554); break;
  case QAccessible::Row: result = Val_long(4102650); break;
  case QAccessible::Cell: result = Val_long(748047810); break;
  case QAccessible::Link: result = Val_long(848053274); break;
  case QAccessible::HelpBalloon: result = Val_long(402561486); break;
  case QAccessible::Assistant: result = Val_long(-291661378); break;
  case QAccessible::List: result = Val_long(848054398); break;
  case QAccessible::ListItem: result = Val_long(-10071887); break;
  case QAccessible::Tree: result = Val_long(937215358); break;
  case QAccessible::TreeItem: result = Val_long(54087089); break;
  case QAccessible::PageTab: result = Val_long(-660899034); break;
  case QAccessible::PropertyPage: result = Val_long(-263657116); break;
  case QAccessible::Indicator: result = Val_long(897632175); break;
  case QAccessible::Graphic: result = Val_long(-1051164024); break;
  case QAccessible::StaticText: result = Val_long(626444443); break;
  case QAccessible::EditableText: result = Val_long(680815505); break;
  case QAccessible::Button: result = Val_long(242538002); break;
  case QAccessible::CheckBox: result = Val_long(110052931); break;
  case QAccessible::RadioButton: result = Val_long(364309805); break;
  case QAccessible::ComboBox: result = Val_long(-876695939); break;
  case QAccessible::ProgressBar: result = Val_long(-897035258); break;
  case QAccessible::Dial: result = Val_long(759333840); break;
  case QAccessible::HotkeyField: result = Val_long(-113708280); break;
  case QAccessible::Slider: result = Val_long(614021697); break;
  case QAccessible::SpinBox: result = Val_long(23642441); break;
  case QAccessible::Canvas: result = Val_long(-321468168); break;
  case QAccessible::Animation: result = Val_long(-318255388); break;
  case QAccessible::Equation: result = Val_long(875460524); break;
  case QAccessible::ButtonDropDown: result = Val_long(116298851); break;
  case QAccessible::ButtonMenu: result = Val_long(687913169); break;
  case QAccessible::ButtonDropGrid: result = Val_long(149713607); break;
  case QAccessible::Whitespace: result = Val_long(1010696605); break;
  case QAccessible::PageTabList: result = Val_long(523980452); break;
  case QAccessible::Clock: result = Val_long(-611288658); break;
  case QAccessible::Splitter: result = Val_long(761394023); break;
  case QAccessible::LayeredPane: result = Val_long(320359640); break;
  case QAccessible::Terminal: result = Val_long(-912466532); break;
  case QAccessible::Desktop: result = Val_long(-337252932); break;
  case QAccessible::Paragraph: result = Val_long(-22741170); break;
  case QAccessible::WebDocument: result = Val_long(-567895121); break;
  case QAccessible::Section: result = Val_long(724118981); break;
  case QAccessible::ColorChooser: result = Val_long(-830183752); break;
  case QAccessible::Footer: result = Val_long(808235707); break;
  case QAccessible::Form: result = Val_long(781815140); break;
  case QAccessible::Heading: result = Val_long(811368354); break;
  case QAccessible::Note: result = Val_long(870532114); break;
  case QAccessible::ComplementaryContent: result = Val_long(888364599); break;
  case QAccessible::UserRole: result = Val_long(-400169087); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::Text mlqt_QAccessible_Text_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 869834347: return QAccessible::Name;
  case -1018191652: return QAccessible::Description;
  case -991563951: return QAccessible::Value;
  case 803495649: return QAccessible::Help;
  case 180747659: return QAccessible::Accelerator;
  case -826739319: return QAccessible::DebugDescription;
  case -378484552: return QAccessible::UserText;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::Text)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_Text_to_ocaml(const QAccessible::Text& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::Name: result = Val_long(869834347); break;
  case QAccessible::Description: result = Val_long(-1018191652); break;
  case QAccessible::Value: result = Val_long(-991563951); break;
  case QAccessible::Help: result = Val_long(803495649); break;
  case QAccessible::Accelerator: result = Val_long(180747659); break;
  case QAccessible::DebugDescription: result = Val_long(-826739319); break;
  case QAccessible::UserText: result = Val_long(-378484552); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::RelationFlag mlqt_QAccessible_RelationFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 48004564: return QAccessible::Label;
  case -624743817: return QAccessible::Labelled;
  case -76571460: return QAccessible::Controller;
  case -76571474: return QAccessible::Controlled;
  case 888714486: return QAccessible::AllRelations;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::RelationFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_RelationFlag_to_ocaml(const QAccessible::RelationFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::Label: result = Val_long(48004564); break;
  case QAccessible::Labelled: result = Val_long(-624743817); break;
  case QAccessible::Controller: result = Val_long(-76571460); break;
  case QAccessible::Controlled: result = Val_long(-76571474); break;
  case QAccessible::AllRelations: result = Val_long(888714486); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::InterfaceType mlqt_QAccessible_InterfaceType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 962402092: return QAccessible::TextInterface;
  case 182529000: return QAccessible::EditableTextInterface;
  case 799092776: return QAccessible::ValueInterface;
  case 197441283: return QAccessible::ActionInterface;
  case 846611198: return QAccessible::ImageInterface;
  case 284851179: return QAccessible::TableInterface;
  case 452589289: return QAccessible::TableCellInterface;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::InterfaceType)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_InterfaceType_to_ocaml(const QAccessible::InterfaceType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::TextInterface: result = Val_long(962402092); break;
  case QAccessible::EditableTextInterface: result = Val_long(182529000); break;
  case QAccessible::ValueInterface: result = Val_long(799092776); break;
  case QAccessible::ActionInterface: result = Val_long(197441283); break;
  case QAccessible::ImageInterface: result = Val_long(846611198); break;
  case QAccessible::TableInterface: result = Val_long(284851179); break;
  case QAccessible::TableCellInterface: result = Val_long(452589289); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessible::TextBoundaryType mlqt_QAccessible_TextBoundaryType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 37074432: return QAccessible::CharBoundary;
  case -419599116: return QAccessible::WordBoundary;
  case 717320397: return QAccessible::SentenceBoundary;
  case 651313752: return QAccessible::ParagraphBoundary;
  case -531317474: return QAccessible::LineBoundary;
  case 879055467: return QAccessible::NoBoundary;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessible::TextBoundaryType)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessible_TextBoundaryType_to_ocaml(const QAccessible::TextBoundaryType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessible::CharBoundary: result = Val_long(37074432); break;
  case QAccessible::WordBoundary: result = Val_long(-419599116); break;
  case QAccessible::SentenceBoundary: result = Val_long(717320397); break;
  case QAccessible::ParagraphBoundary: result = Val_long(651313752); break;
  case QAccessible::LineBoundary: result = Val_long(-531317474); break;
  case QAccessible::NoBoundary: result = Val_long(879055467); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImageIOHandler::ImageOption mlqt_QImageIOHandler_ImageOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 925682913: return QImageIOHandler::Size;
  case 840715316: return QImageIOHandler::ClipRect;
  case -1018191652: return QImageIOHandler::Description;
  case -724896530: return QImageIOHandler::ScaledClipRect;
  case -805957477: return QImageIOHandler::ScaledSize;
  case -709871643: return QImageIOHandler::CompressionRatio;
  case 568588039: return QImageIOHandler::Gamma;
  case 295513247: return QImageIOHandler::Quality;
  case 869834347: return QImageIOHandler::Name;
  case -396513222: return QImageIOHandler::SubType;
  case 890401202: return QImageIOHandler::IncrementalReading;
  case -981203246: return QImageIOHandler::Endianness;
  case -318255388: return QImageIOHandler::Animation;
  case -304916875: return QImageIOHandler::BackgroundColor;
  case 704721106: return QImageIOHandler::ImageFormat;
  case -272439545: return QImageIOHandler::SupportedSubTypes;
  case 731747992: return QImageIOHandler::OptimizedWrite;
  case 190717559: return QImageIOHandler::ProgressiveScanWrite;
  case 64352868: return QImageIOHandler::ImageTransformation;
  case 750830975: return QImageIOHandler::TransformedByDefault;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImageIOHandler::ImageOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QImageIOHandler_ImageOption_to_ocaml(const QImageIOHandler::ImageOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImageIOHandler::Size: result = Val_long(925682913); break;
  case QImageIOHandler::ClipRect: result = Val_long(840715316); break;
  case QImageIOHandler::Description: result = Val_long(-1018191652); break;
  case QImageIOHandler::ScaledClipRect: result = Val_long(-724896530); break;
  case QImageIOHandler::ScaledSize: result = Val_long(-805957477); break;
  case QImageIOHandler::CompressionRatio: result = Val_long(-709871643); break;
  case QImageIOHandler::Gamma: result = Val_long(568588039); break;
  case QImageIOHandler::Quality: result = Val_long(295513247); break;
  case QImageIOHandler::Name: result = Val_long(869834347); break;
  case QImageIOHandler::SubType: result = Val_long(-396513222); break;
  case QImageIOHandler::IncrementalReading: result = Val_long(890401202); break;
  case QImageIOHandler::Endianness: result = Val_long(-981203246); break;
  case QImageIOHandler::Animation: result = Val_long(-318255388); break;
  case QImageIOHandler::BackgroundColor: result = Val_long(-304916875); break;
  case QImageIOHandler::ImageFormat: result = Val_long(704721106); break;
  case QImageIOHandler::SupportedSubTypes: result = Val_long(-272439545); break;
  case QImageIOHandler::OptimizedWrite: result = Val_long(731747992); break;
  case QImageIOHandler::ProgressiveScanWrite: result = Val_long(190717559); break;
  case QImageIOHandler::ImageTransformation: result = Val_long(64352868); break;
  case QImageIOHandler::TransformedByDefault: result = Val_long(750830975); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImageIOHandler::Transformation mlqt_QImageIOHandler_Transformation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 742537537: return QImageIOHandler::TransformationNone;
  case 337644808: return QImageIOHandler::TransformationMirror;
  case 653670710: return QImageIOHandler::TransformationFlip;
  case 847105221: return QImageIOHandler::TransformationRotate180;
  case 61580283: return QImageIOHandler::TransformationRotate90;
  case 124191425: return QImageIOHandler::TransformationMirrorAndRotate90;
  case 260966739: return QImageIOHandler::TransformationFlipAndRotate90;
  case 847154727: return QImageIOHandler::TransformationRotate270;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImageIOHandler::Transformation)Long_val(Field(v, 1));
  }
}

value& mlqt_QImageIOHandler_Transformation_to_ocaml(const QImageIOHandler::Transformation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImageIOHandler::TransformationNone: result = Val_long(742537537); break;
  case QImageIOHandler::TransformationMirror: result = Val_long(337644808); break;
  case QImageIOHandler::TransformationFlip: result = Val_long(653670710); break;
  case QImageIOHandler::TransformationRotate180: result = Val_long(847105221); break;
  case QImageIOHandler::TransformationRotate90: result = Val_long(61580283); break;
  case QImageIOHandler::TransformationMirrorAndRotate90: result = Val_long(124191425); break;
  case QImageIOHandler::TransformationFlipAndRotate90: result = Val_long(260966739); break;
  case QImageIOHandler::TransformationRotate270: result = Val_long(847154727); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRegion::RegionType mlqt_QRegion_RegionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 995079183: return QRegion::Rectangle;
  case -656971586: return QRegion::Ellipse;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRegion::RegionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QRegion_RegionType_to_ocaml(const QRegion::RegionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRegion::Rectangle: result = Val_long(995079183); break;
  case QRegion::Ellipse: result = Val_long(-656971586); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFontDatabase::WritingSystem mlqt_QFontDatabase_WritingSystem_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 3257036: return QFontDatabase::Any;
  case 48900580: return QFontDatabase::Latin;
  case 756711072: return QFontDatabase::Greek;
  case -246389529: return QFontDatabase::Cyrillic;
  case 264388881: return QFontDatabase::Armenian;
  case 843600863: return QFontDatabase::Hebrew;
  case -515309428: return QFontDatabase::Arabic;
  case 650475551: return QFontDatabase::Syriac;
  case 940462247: return QFontDatabase::Thaana;
  case 90688528: return QFontDatabase::Devanagari;
  case 889639362: return QFontDatabase::Bengali;
  case 55626976: return QFontDatabase::Gurmukhi;
  case -442252311: return QFontDatabase::Gujarati;
  case -934134514: return QFontDatabase::Oriya;
  case 504987171: return QFontDatabase::Tamil;
  case 86971144: return QFontDatabase::Telugu;
  case 377160808: return QFontDatabase::Kannada;
  case -565045241: return QFontDatabase::Malayalam;
  case 302668966: return QFontDatabase::Sinhala;
  case 936717180: return QFontDatabase::Thai;
  case 3801146: return QFontDatabase::Lao;
  case -790390071: return QFontDatabase::Tibetan;
  case 101329093: return QFontDatabase::Myanmar;
  case 245738224: return QFontDatabase::Georgian;
  case -199311235: return QFontDatabase::Khmer;
  case 619464661: return QFontDatabase::SimplifiedChinese;
  case 893247078: return QFontDatabase::TraditionalChinese;
  case 890252049: return QFontDatabase::Japanese;
  case 837140260: return QFontDatabase::Korean;
  case 606235551: return QFontDatabase::Vietnamese;
  case 594682744: return QFontDatabase::Symbol;
  case -1056174820: return QFontDatabase::Ogham;
  case 75848645: return QFontDatabase::Runic;
  case 3902834: return QFontDatabase::Nko;
  case 18174311: return QFontDatabase::WritingSystemsCount;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFontDatabase::WritingSystem)Long_val(Field(v, 1));
  }
}

value& mlqt_QFontDatabase_WritingSystem_to_ocaml(const QFontDatabase::WritingSystem& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFontDatabase::Any: result = Val_long(3257036); break;
  case QFontDatabase::Latin: result = Val_long(48900580); break;
  case QFontDatabase::Greek: result = Val_long(756711072); break;
  case QFontDatabase::Cyrillic: result = Val_long(-246389529); break;
  case QFontDatabase::Armenian: result = Val_long(264388881); break;
  case QFontDatabase::Hebrew: result = Val_long(843600863); break;
  case QFontDatabase::Arabic: result = Val_long(-515309428); break;
  case QFontDatabase::Syriac: result = Val_long(650475551); break;
  case QFontDatabase::Thaana: result = Val_long(940462247); break;
  case QFontDatabase::Devanagari: result = Val_long(90688528); break;
  case QFontDatabase::Bengali: result = Val_long(889639362); break;
  case QFontDatabase::Gurmukhi: result = Val_long(55626976); break;
  case QFontDatabase::Gujarati: result = Val_long(-442252311); break;
  case QFontDatabase::Oriya: result = Val_long(-934134514); break;
  case QFontDatabase::Tamil: result = Val_long(504987171); break;
  case QFontDatabase::Telugu: result = Val_long(86971144); break;
  case QFontDatabase::Kannada: result = Val_long(377160808); break;
  case QFontDatabase::Malayalam: result = Val_long(-565045241); break;
  case QFontDatabase::Sinhala: result = Val_long(302668966); break;
  case QFontDatabase::Thai: result = Val_long(936717180); break;
  case QFontDatabase::Lao: result = Val_long(3801146); break;
  case QFontDatabase::Tibetan: result = Val_long(-790390071); break;
  case QFontDatabase::Myanmar: result = Val_long(101329093); break;
  case QFontDatabase::Georgian: result = Val_long(245738224); break;
  case QFontDatabase::Khmer: result = Val_long(-199311235); break;
  case QFontDatabase::SimplifiedChinese: result = Val_long(619464661); break;
  case QFontDatabase::TraditionalChinese: result = Val_long(893247078); break;
  case QFontDatabase::Japanese: result = Val_long(890252049); break;
  case QFontDatabase::Korean: result = Val_long(837140260); break;
  case QFontDatabase::Vietnamese: result = Val_long(606235551); break;
  case QFontDatabase::Symbol: result = Val_long(594682744); break;
  case QFontDatabase::Ogham: result = Val_long(-1056174820); break;
  case QFontDatabase::Runic: result = Val_long(75848645); break;
  case QFontDatabase::Nko: result = Val_long(3902834); break;
  case QFontDatabase::WritingSystemsCount: result = Val_long(18174311); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFontDatabase::SystemFont mlqt_QFontDatabase_SystemFont_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -88063753: return QFontDatabase::GeneralFont;
  case -965071549: return QFontDatabase::FixedFont;
  case 155069287: return QFontDatabase::TitleFont;
  case 874608254: return QFontDatabase::SmallestReadableFont;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFontDatabase::SystemFont)Long_val(Field(v, 1));
  }
}

value& mlqt_QFontDatabase_SystemFont_to_ocaml(const QFontDatabase::SystemFont& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFontDatabase::GeneralFont: result = Val_long(-88063753); break;
  case QFontDatabase::FixedFont: result = Val_long(-965071549); break;
  case QFontDatabase::TitleFont: result = Val_long(155069287); break;
  case QFontDatabase::SmallestReadableFont: result = Val_long(874608254); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QIconEngine::IconEngineHook mlqt_QIconEngine_IconEngineHook_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 100686508: return QIconEngine::AvailableSizesHook;
  case 887782535: return QIconEngine::IconNameHook;
  case 337247284: return QIconEngine::IsNullHook;
  case -1070378630: return QIconEngine::ScaledPixmapHook;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QIconEngine::IconEngineHook)Long_val(Field(v, 1));
  }
}

value& mlqt_QIconEngine_IconEngineHook_to_ocaml(const QIconEngine::IconEngineHook& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QIconEngine::AvailableSizesHook: result = Val_long(100686508); break;
  case QIconEngine::IconNameHook: result = Val_long(887782535); break;
  case QIconEngine::IsNullHook: result = Val_long(337247284); break;
  case QIconEngine::ScaledPixmapHook: result = Val_long(-1070378630); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImageWriter::ImageWriterError mlqt_QImageWriter_ImageWriterError_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -638627842: return QImageWriter::UnknownError;
  case -962816206: return QImageWriter::DeviceError;
  case -622844292: return QImageWriter::UnsupportedFormatError;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImageWriter::ImageWriterError)Long_val(Field(v, 1));
  }
}

value& mlqt_QImageWriter_ImageWriterError_to_ocaml(const QImageWriter::ImageWriterError& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImageWriter::UnknownError: result = Val_long(-638627842); break;
  case QImageWriter::DeviceError: result = Val_long(-962816206); break;
  case QImageWriter::UnsupportedFormatError: result = Val_long(-622844292); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageLayout::Unit mlqt_QPageLayout_Unit_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 151086716: return QPageLayout::Millimeter;
  case -641915856: return QPageLayout::Point;
  case 815030762: return QPageLayout::Inch;
  case 892409079: return QPageLayout::Pica;
  case -319611900: return QPageLayout::Didot;
  case 12139685: return QPageLayout::Cicero;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageLayout::Unit)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageLayout_Unit_to_ocaml(const QPageLayout::Unit& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageLayout::Millimeter: result = Val_long(151086716); break;
  case QPageLayout::Point: result = Val_long(-641915856); break;
  case QPageLayout::Inch: result = Val_long(815030762); break;
  case QPageLayout::Pica: result = Val_long(892409079); break;
  case QPageLayout::Didot: result = Val_long(-319611900); break;
  case QPageLayout::Cicero: result = Val_long(12139685); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageLayout::Orientation mlqt_QPageLayout_Orientation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 308338043: return QPageLayout::Portrait;
  case 511727643: return QPageLayout::Landscape;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageLayout::Orientation)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageLayout_Orientation_to_ocaml(const QPageLayout::Orientation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageLayout::Portrait: result = Val_long(308338043); break;
  case QPageLayout::Landscape: result = Val_long(511727643); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPageLayout::Mode mlqt_QPageLayout_Mode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 723346784: return QPageLayout::StandardMode;
  case 672941601: return QPageLayout::FullPageMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPageLayout::Mode)Long_val(Field(v, 1));
  }
}

value& mlqt_QPageLayout_Mode_to_ocaml(const QPageLayout::Mode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPageLayout::StandardMode: result = Val_long(723346784); break;
  case QPageLayout::FullPageMode: result = Val_long(672941601); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStandardItem::ItemType mlqt_QStandardItem_ItemType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStandardItem::Type;
  case -377491771: return QStandardItem::UserType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStandardItem::ItemType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStandardItem_ItemType_to_ocaml(const QStandardItem::ItemType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStandardItem::Type: result = Val_long(937565914); break;
  case QStandardItem::UserType: result = Val_long(-377491771); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLBuffer::Type mlqt_QOpenGLBuffer_Type_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 951843748: return QOpenGLBuffer::VertexBuffer;
  case -640090734: return QOpenGLBuffer::IndexBuffer;
  case -231627073: return QOpenGLBuffer::PixelPackBuffer;
  case -137436200: return QOpenGLBuffer::PixelUnpackBuffer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLBuffer::Type)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLBuffer_Type_to_ocaml(const QOpenGLBuffer::Type& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLBuffer::VertexBuffer: result = Val_long(951843748); break;
  case QOpenGLBuffer::IndexBuffer: result = Val_long(-640090734); break;
  case QOpenGLBuffer::PixelPackBuffer: result = Val_long(-231627073); break;
  case QOpenGLBuffer::PixelUnpackBuffer: result = Val_long(-137436200); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLBuffer::UsagePattern mlqt_QOpenGLBuffer_UsagePattern_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 109818052: return QOpenGLBuffer::StreamDraw;
  case 264425494: return QOpenGLBuffer::StreamRead;
  case 98582645: return QOpenGLBuffer::StreamCopy;
  case 449652722: return QOpenGLBuffer::StaticDraw;
  case 604260164: return QOpenGLBuffer::StaticRead;
  case 438417315: return QOpenGLBuffer::StaticCopy;
  case -869221629: return QOpenGLBuffer::DynamicDraw;
  case -714614187: return QOpenGLBuffer::DynamicRead;
  case -880457036: return QOpenGLBuffer::DynamicCopy;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLBuffer::UsagePattern)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLBuffer_UsagePattern_to_ocaml(const QOpenGLBuffer::UsagePattern& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLBuffer::StreamDraw: result = Val_long(109818052); break;
  case QOpenGLBuffer::StreamRead: result = Val_long(264425494); break;
  case QOpenGLBuffer::StreamCopy: result = Val_long(98582645); break;
  case QOpenGLBuffer::StaticDraw: result = Val_long(449652722); break;
  case QOpenGLBuffer::StaticRead: result = Val_long(604260164); break;
  case QOpenGLBuffer::StaticCopy: result = Val_long(438417315); break;
  case QOpenGLBuffer::DynamicDraw: result = Val_long(-869221629); break;
  case QOpenGLBuffer::DynamicRead: result = Val_long(-714614187); break;
  case QOpenGLBuffer::DynamicCopy: result = Val_long(-880457036); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLBuffer::Access mlqt_QOpenGLBuffer_Access_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -883155966: return QOpenGLBuffer::ReadOnly;
  case -197568053: return QOpenGLBuffer::WriteOnly;
  case -1022125687: return QOpenGLBuffer::ReadWrite;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLBuffer::Access)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLBuffer_Access_to_ocaml(const QOpenGLBuffer::Access& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLBuffer::ReadOnly: result = Val_long(-883155966); break;
  case QOpenGLBuffer::WriteOnly: result = Val_long(-197568053); break;
  case QOpenGLBuffer::ReadWrite: result = Val_long(-1022125687); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLBuffer::RangeAccessFlag mlqt_QOpenGLBuffer_RangeAccessFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 677715859: return QOpenGLBuffer::RangeRead;
  case 431312386: return QOpenGLBuffer::RangeWrite;
  case 1050425720: return QOpenGLBuffer::RangeInvalidate;
  case -431631208: return QOpenGLBuffer::RangeInvalidateBuffer;
  case -958242309: return QOpenGLBuffer::RangeFlushExplicit;
  case -961026710: return QOpenGLBuffer::RangeUnsynchronized;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLBuffer::RangeAccessFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLBuffer_RangeAccessFlag_to_ocaml(const QOpenGLBuffer::RangeAccessFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLBuffer::RangeRead: result = Val_long(677715859); break;
  case QOpenGLBuffer::RangeWrite: result = Val_long(431312386); break;
  case QOpenGLBuffer::RangeInvalidate: result = Val_long(1050425720); break;
  case QOpenGLBuffer::RangeInvalidateBuffer: result = Val_long(-431631208); break;
  case QOpenGLBuffer::RangeFlushExplicit: result = Val_long(-958242309); break;
  case QOpenGLBuffer::RangeUnsynchronized: result = Val_long(-961026710); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGlyphRun::GlyphRunFlag mlqt_QGlyphRun_GlyphRunFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 518168424: return QGlyphRun::Overline;
  case 698610924: return QGlyphRun::Underline;
  case 772242780: return QGlyphRun::StrikeOut;
  case -887040002: return QGlyphRun::RightToLeft;
  case 299537829: return QGlyphRun::SplitLigature;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGlyphRun::GlyphRunFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGlyphRun_GlyphRunFlag_to_ocaml(const QGlyphRun::GlyphRunFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGlyphRun::Overline: result = Val_long(518168424); break;
  case QGlyphRun::Underline: result = Val_long(698610924); break;
  case QGlyphRun::StrikeOut: result = Val_long(772242780); break;
  case QGlyphRun::RightToLeft: result = Val_long(-887040002); break;
  case QGlyphRun::SplitLigature: result = Val_long(299537829); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTransform::TransformationType mlqt_QTransform_TransformationType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -504157572: return QTransform::TxNone;
  case -684320502: return QTransform::TxTranslate;
  case 735740486: return QTransform::TxScale;
  case -1034823905: return QTransform::TxRotate;
  case 791384797: return QTransform::TxShear;
  case -904385131: return QTransform::TxProject;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTransform::TransformationType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTransform_TransformationType_to_ocaml(const QTransform::TransformationType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTransform::TxNone: result = Val_long(-504157572); break;
  case QTransform::TxTranslate: result = Val_long(-684320502); break;
  case QTransform::TxScale: result = Val_long(735740486); break;
  case QTransform::TxRotate: result = Val_long(-1034823905); break;
  case QTransform::TxShear: result = Val_long(791384797); break;
  case QTransform::TxProject: result = Val_long(-904385131); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::StyleHint mlqt_QFont_StyleHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -150905334: return QFont::SansSerif;
  case 224104285: return QFont::Serif;
  case -317847251: return QFont::TypeWriter;
  case 786505568: return QFont::Decorative;
  case 662113039: return QFont::System;
  case -595476795: return QFont::AnyStyle;
  case 434178725: return QFont::Cursive;
  case 12104099: return QFont::Monospace;
  case -897120378: return QFont::Fantasy;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::StyleHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_StyleHint_to_ocaml(const QFont::StyleHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::SansSerif: result = Val_long(-150905334); break;
  case QFont::Serif: result = Val_long(224104285); break;
  case QFont::TypeWriter: result = Val_long(-317847251); break;
  case QFont::Decorative: result = Val_long(786505568); break;
  case QFont::System: result = Val_long(662113039); break;
  case QFont::AnyStyle: result = Val_long(-595476795); break;
  case QFont::Cursive: result = Val_long(434178725); break;
  case QFont::Monospace: result = Val_long(12104099); break;
  case QFont::Fantasy: result = Val_long(-897120378); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::StyleStrategy mlqt_QFont_StyleStrategy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 597449841: return QFont::PreferDefault;
  case 327520831: return QFont::PreferBitmap;
  case 334585574: return QFont::PreferDevice;
  case -376005838: return QFont::PreferOutline;
  case -817644297: return QFont::ForceOutline;
  case -50691851: return QFont::PreferMatch;
  case -870021009: return QFont::PreferQuality;
  case 128886366: return QFont::PreferAntialias;
  case 1003183629: return QFont::NoAntialias;
  case 436044995: return QFont::OpenGLCompatible;
  case 584287056: return QFont::ForceIntegerMetrics;
  case 840873767: return QFont::NoSubpixelAntialias;
  case 980171013: return QFont::NoFontMerging;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::StyleStrategy)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_StyleStrategy_to_ocaml(const QFont::StyleStrategy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::PreferDefault: result = Val_long(597449841); break;
  case QFont::PreferBitmap: result = Val_long(327520831); break;
  case QFont::PreferDevice: result = Val_long(334585574); break;
  case QFont::PreferOutline: result = Val_long(-376005838); break;
  case QFont::ForceOutline: result = Val_long(-817644297); break;
  case QFont::PreferMatch: result = Val_long(-50691851); break;
  case QFont::PreferQuality: result = Val_long(-870021009); break;
  case QFont::PreferAntialias: result = Val_long(128886366); break;
  case QFont::NoAntialias: result = Val_long(1003183629); break;
  case QFont::OpenGLCompatible: result = Val_long(436044995); break;
  case QFont::ForceIntegerMetrics: result = Val_long(584287056); break;
  case QFont::NoSubpixelAntialias: result = Val_long(840873767); break;
  case QFont::NoFontMerging: result = Val_long(980171013); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::HintingPreference mlqt_QFont_HintingPreference_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -121738934: return QFont::PreferDefaultHinting;
  case -755871958: return QFont::PreferNoHinting;
  case 448329621: return QFont::PreferVerticalHinting;
  case -759760996: return QFont::PreferFullHinting;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::HintingPreference)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_HintingPreference_to_ocaml(const QFont::HintingPreference& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::PreferDefaultHinting: result = Val_long(-121738934); break;
  case QFont::PreferNoHinting: result = Val_long(-755871958); break;
  case QFont::PreferVerticalHinting: result = Val_long(448329621); break;
  case QFont::PreferFullHinting: result = Val_long(-759760996); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::Weight mlqt_QFont_Weight_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 936718969: return QFont::Thin;
  case -177332154: return QFont::ExtraLight;
  case 136970422: return QFont::Light;
  case -453122489: return QFont::Normal;
  case 861718677: return QFont::Medium;
  case -817097374: return QFont::DemiBold;
  case 737455525: return QFont::Bold;
  case 485666837: return QFont::ExtraBold;
  case -937474657: return QFont::Black;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::Weight)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_Weight_to_ocaml(const QFont::Weight& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::Thin: result = Val_long(936718969); break;
  case QFont::ExtraLight: result = Val_long(-177332154); break;
  case QFont::Light: result = Val_long(136970422); break;
  case QFont::Normal: result = Val_long(-453122489); break;
  case QFont::Medium: result = Val_long(861718677); break;
  case QFont::DemiBold: result = Val_long(-817097374); break;
  case QFont::Bold: result = Val_long(737455525); break;
  case QFont::ExtraBold: result = Val_long(485666837); break;
  case QFont::Black: result = Val_long(-937474657); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::Style mlqt_QFont_Style_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 204709400: return QFont::StyleNormal;
  case -500278559: return QFont::StyleItalic;
  case 552096672: return QFont::StyleOblique;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::Style)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_Style_to_ocaml(const QFont::Style& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::StyleNormal: result = Val_long(204709400); break;
  case QFont::StyleItalic: result = Val_long(-500278559); break;
  case QFont::StyleOblique: result = Val_long(552096672); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::Stretch mlqt_QFont_Stretch_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1021320039: return QFont::AnyStretch;
  case -415287045: return QFont::UltraCondensed;
  case 24110359: return QFont::ExtraCondensed;
  case -864240249: return QFont::Condensed;
  case 397050681: return QFont::SemiCondensed;
  case 167510027: return QFont::Unstretched;
  case -519388185: return QFont::SemiExpanded;
  case -746533543: return QFont::Expanded;
  case -444020791: return QFont::ExtraExpanded;
  case 748125285: return QFont::UltraExpanded;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::Stretch)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_Stretch_to_ocaml(const QFont::Stretch& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::AnyStretch: result = Val_long(-1021320039); break;
  case QFont::UltraCondensed: result = Val_long(-415287045); break;
  case QFont::ExtraCondensed: result = Val_long(24110359); break;
  case QFont::Condensed: result = Val_long(-864240249); break;
  case QFont::SemiCondensed: result = Val_long(397050681); break;
  case QFont::Unstretched: result = Val_long(167510027); break;
  case QFont::SemiExpanded: result = Val_long(-519388185); break;
  case QFont::Expanded: result = Val_long(-746533543); break;
  case QFont::ExtraExpanded: result = Val_long(-444020791); break;
  case QFont::UltraExpanded: result = Val_long(748125285); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::Capitalization mlqt_QFont_Capitalization_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 151899435: return QFont::MixedCase;
  case 938219473: return QFont::AllUppercase;
  case 928199664: return QFont::AllLowercase;
  case 180783208: return QFont::SmallCaps;
  case -666038836: return QFont::Capitalize;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::Capitalization)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_Capitalization_to_ocaml(const QFont::Capitalization& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::MixedCase: result = Val_long(151899435); break;
  case QFont::AllUppercase: result = Val_long(938219473); break;
  case QFont::AllLowercase: result = Val_long(928199664); break;
  case QFont::SmallCaps: result = Val_long(180783208); break;
  case QFont::Capitalize: result = Val_long(-666038836); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFont::SpacingType mlqt_QFont_SpacingType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -124944535: return QFont::PercentageSpacing;
  case -152346196: return QFont::AbsoluteSpacing;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFont::SpacingType)Long_val(Field(v, 1));
  }
}

value& mlqt_QFont_SpacingType_to_ocaml(const QFont::SpacingType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFont::PercentageSpacing: result = Val_long(-124944535); break;
  case QFont::AbsoluteSpacing: result = Val_long(-152346196); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QKeySequence::StandardKey mlqt_QKeySequence_StandardKey_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -234982315: return QKeySequence::UnknownKey;
  case -948606693: return QKeySequence::HelpContents;
  case -25506163: return QKeySequence::WhatsThis;
  case 881668074: return QKeySequence::Open;
  case -611285096: return QKeySequence::Close;
  case 925284189: return QKeySequence::Save;
  case 3901504: return QKeySequence::New;
  case 527250507: return QKeySequence::Delete;
  case 3358050: return QKeySequence::Cut;
  case 748546005: return QKeySequence::Copy;
  case -796671181: return QKeySequence::Paste;
  case 948105796: return QKeySequence::Undo;
  case 914389534: return QKeySequence::Redo;
  case 736757319: return QKeySequence::Back;
  case 857475493: return QKeySequence::Forward;
  case 980550075: return QKeySequence::Refresh;
  case 793412088: return QKeySequence::ZoomIn;
  case 837536539: return QKeySequence::ZoomOut;
  case -608647155: return QKeySequence::Print;
  case -744628524: return QKeySequence::AddTab;
  case 248619913: return QKeySequence::NextChild;
  case 882771397: return QKeySequence::PreviousChild;
  case 781515865: return QKeySequence::Find;
  case -179810836: return QKeySequence::FindNext;
  case -650054224: return QKeySequence::FindPrevious;
  case -126259180: return QKeySequence::Replace;
  case 802126693: return QKeySequence::SelectAll;
  case 737455525: return QKeySequence::Bold;
  case 989373200: return QKeySequence::Italic;
  case 698610924: return QKeySequence::Underline;
  case -923863915: return QKeySequence::MoveToNextChar;
  case 923345881: return QKeySequence::MoveToPreviousChar;
  case -701720695: return QKeySequence::MoveToNextWord;
  case -1001994547: return QKeySequence::MoveToPreviousWord;
  case -824005197: return QKeySequence::MoveToNextLine;
  case 1023204599: return QKeySequence::MoveToPreviousLine;
  case -780046322: return QKeySequence::MoveToNextPage;
  case 1067163474: return QKeySequence::MoveToPreviousPage;
  case -874467583: return QKeySequence::MoveToStartOfLine;
  case 706290234: return QKeySequence::MoveToEndOfLine;
  case -659355232: return QKeySequence::MoveToStartOfBlock;
  case -337680313: return QKeySequence::MoveToEndOfBlock;
  case 932024488: return QKeySequence::MoveToStartOfDocument;
  case -128805791: return QKeySequence::MoveToEndOfDocument;
  case -250360667: return QKeySequence::SelectNextChar;
  case 82002921: return QKeySequence::SelectPreviousChar;
  case -28217447: return QKeySequence::SelectNextWord;
  case 304146141: return QKeySequence::SelectPreviousWord;
  case -150501949: return QKeySequence::SelectNextLine;
  case 181861639: return QKeySequence::SelectPreviousLine;
  case -106543074: return QKeySequence::SelectNextPage;
  case 225820514: return QKeySequence::SelectPreviousPage;
  case 585515249: return QKeySequence::SelectStartOfLine;
  case 573659178: return QKeySequence::SelectEndOfLine;
  case 646785456: return QKeySequence::SelectStartOfBlock;
  case 150365271: return QKeySequence::SelectEndOfBlock;
  case 1062918808: return QKeySequence::SelectStartOfDocument;
  case -917208495: return QKeySequence::SelectEndOfDocument;
  case -982006280: return QKeySequence::DeleteStartOfWord;
  case 958725873: return QKeySequence::DeleteEndOfWord;
  case 836441371: return QKeySequence::DeleteEndOfLine;
  case 33384656: return QKeySequence::InsertParagraphSeparator;
  case 213434040: return QKeySequence::InsertLineSeparator;
  case -674676305: return QKeySequence::SaveAs;
  case -685551976: return QKeySequence::Preferences;
  case 904096751: return QKeySequence::Quit;
  case 620343931: return QKeySequence::FullScreen;
  case 59852125: return QKeySequence::Deselect;
  case 458742328: return QKeySequence::DeleteCompleteLine;
  case -323132129: return QKeySequence::Backspace;
  case -322412134: return QKeySequence::Cancel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QKeySequence::StandardKey)Long_val(Field(v, 1));
  }
}

value& mlqt_QKeySequence_StandardKey_to_ocaml(const QKeySequence::StandardKey& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QKeySequence::UnknownKey: result = Val_long(-234982315); break;
  case QKeySequence::HelpContents: result = Val_long(-948606693); break;
  case QKeySequence::WhatsThis: result = Val_long(-25506163); break;
  case QKeySequence::Open: result = Val_long(881668074); break;
  case QKeySequence::Close: result = Val_long(-611285096); break;
  case QKeySequence::Save: result = Val_long(925284189); break;
  case QKeySequence::New: result = Val_long(3901504); break;
  case QKeySequence::Delete: result = Val_long(527250507); break;
  case QKeySequence::Cut: result = Val_long(3358050); break;
  case QKeySequence::Copy: result = Val_long(748546005); break;
  case QKeySequence::Paste: result = Val_long(-796671181); break;
  case QKeySequence::Undo: result = Val_long(948105796); break;
  case QKeySequence::Redo: result = Val_long(914389534); break;
  case QKeySequence::Back: result = Val_long(736757319); break;
  case QKeySequence::Forward: result = Val_long(857475493); break;
  case QKeySequence::Refresh: result = Val_long(980550075); break;
  case QKeySequence::ZoomIn: result = Val_long(793412088); break;
  case QKeySequence::ZoomOut: result = Val_long(837536539); break;
  case QKeySequence::Print: result = Val_long(-608647155); break;
  case QKeySequence::AddTab: result = Val_long(-744628524); break;
  case QKeySequence::NextChild: result = Val_long(248619913); break;
  case QKeySequence::PreviousChild: result = Val_long(882771397); break;
  case QKeySequence::Find: result = Val_long(781515865); break;
  case QKeySequence::FindNext: result = Val_long(-179810836); break;
  case QKeySequence::FindPrevious: result = Val_long(-650054224); break;
  case QKeySequence::Replace: result = Val_long(-126259180); break;
  case QKeySequence::SelectAll: result = Val_long(802126693); break;
  case QKeySequence::Bold: result = Val_long(737455525); break;
  case QKeySequence::Italic: result = Val_long(989373200); break;
  case QKeySequence::Underline: result = Val_long(698610924); break;
  case QKeySequence::MoveToNextChar: result = Val_long(-923863915); break;
  case QKeySequence::MoveToPreviousChar: result = Val_long(923345881); break;
  case QKeySequence::MoveToNextWord: result = Val_long(-701720695); break;
  case QKeySequence::MoveToPreviousWord: result = Val_long(-1001994547); break;
  case QKeySequence::MoveToNextLine: result = Val_long(-824005197); break;
  case QKeySequence::MoveToPreviousLine: result = Val_long(1023204599); break;
  case QKeySequence::MoveToNextPage: result = Val_long(-780046322); break;
  case QKeySequence::MoveToPreviousPage: result = Val_long(1067163474); break;
  case QKeySequence::MoveToStartOfLine: result = Val_long(-874467583); break;
  case QKeySequence::MoveToEndOfLine: result = Val_long(706290234); break;
  case QKeySequence::MoveToStartOfBlock: result = Val_long(-659355232); break;
  case QKeySequence::MoveToEndOfBlock: result = Val_long(-337680313); break;
  case QKeySequence::MoveToStartOfDocument: result = Val_long(932024488); break;
  case QKeySequence::MoveToEndOfDocument: result = Val_long(-128805791); break;
  case QKeySequence::SelectNextChar: result = Val_long(-250360667); break;
  case QKeySequence::SelectPreviousChar: result = Val_long(82002921); break;
  case QKeySequence::SelectNextWord: result = Val_long(-28217447); break;
  case QKeySequence::SelectPreviousWord: result = Val_long(304146141); break;
  case QKeySequence::SelectNextLine: result = Val_long(-150501949); break;
  case QKeySequence::SelectPreviousLine: result = Val_long(181861639); break;
  case QKeySequence::SelectNextPage: result = Val_long(-106543074); break;
  case QKeySequence::SelectPreviousPage: result = Val_long(225820514); break;
  case QKeySequence::SelectStartOfLine: result = Val_long(585515249); break;
  case QKeySequence::SelectEndOfLine: result = Val_long(573659178); break;
  case QKeySequence::SelectStartOfBlock: result = Val_long(646785456); break;
  case QKeySequence::SelectEndOfBlock: result = Val_long(150365271); break;
  case QKeySequence::SelectStartOfDocument: result = Val_long(1062918808); break;
  case QKeySequence::SelectEndOfDocument: result = Val_long(-917208495); break;
  case QKeySequence::DeleteStartOfWord: result = Val_long(-982006280); break;
  case QKeySequence::DeleteEndOfWord: result = Val_long(958725873); break;
  case QKeySequence::DeleteEndOfLine: result = Val_long(836441371); break;
  case QKeySequence::InsertParagraphSeparator: result = Val_long(33384656); break;
  case QKeySequence::InsertLineSeparator: result = Val_long(213434040); break;
  case QKeySequence::SaveAs: result = Val_long(-674676305); break;
  case QKeySequence::Preferences: result = Val_long(-685551976); break;
  case QKeySequence::Quit: result = Val_long(904096751); break;
  case QKeySequence::FullScreen: result = Val_long(620343931); break;
  case QKeySequence::Deselect: result = Val_long(59852125); break;
  case QKeySequence::DeleteCompleteLine: result = Val_long(458742328); break;
  case QKeySequence::Backspace: result = Val_long(-323132129); break;
  case QKeySequence::Cancel: result = Val_long(-322412134); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QKeySequence::SequenceFormat mlqt_QKeySequence_SequenceFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 180018692: return QKeySequence::NativeText;
  case -939854840: return QKeySequence::PortableText;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QKeySequence::SequenceFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QKeySequence_SequenceFormat_to_ocaml(const QKeySequence::SequenceFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QKeySequence::NativeText: result = Val_long(180018692); break;
  case QKeySequence::PortableText: result = Val_long(-939854840); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QKeySequence::SequenceMatch mlqt_QKeySequence_SequenceMatch_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 595064100: return QKeySequence::NoMatch;
  case 315906596: return QKeySequence::PartialMatch;
  case -304331226: return QKeySequence::ExactMatch;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QKeySequence::SequenceMatch)Long_val(Field(v, 1));
  }
}

value& mlqt_QKeySequence_SequenceMatch_to_ocaml(const QKeySequence::SequenceMatch& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QKeySequence::NoMatch: result = Val_long(595064100); break;
  case QKeySequence::PartialMatch: result = Val_long(315906596); break;
  case QKeySequence::ExactMatch: result = Val_long(-304331226); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurface::SurfaceClass mlqt_QSurface_SurfaceClass_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 119605264: return QSurface::Window;
  case 998468603: return QSurface::Offscreen;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurface::SurfaceClass)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurface_SurfaceClass_to_ocaml(const QSurface::SurfaceClass& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurface::Window: result = Val_long(119605264); break;
  case QSurface::Offscreen: result = Val_long(998468603); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSurface::SurfaceType mlqt_QSurface_SurfaceType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 589891856: return QSurface::RasterSurface;
  case -395374242: return QSurface::OpenGLSurface;
  case 1005457483: return QSurface::RasterGLSurface;
  case 647495122: return QSurface::OpenVGSurface;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSurface::SurfaceType)Long_val(Field(v, 1));
  }
}

value& mlqt_QSurface_SurfaceType_to_ocaml(const QSurface::SurfaceType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSurface::RasterSurface: result = Val_long(589891856); break;
  case QSurface::OpenGLSurface: result = Val_long(-395374242); break;
  case QSurface::RasterGLSurface: result = Val_long(1005457483); break;
  case QSurface::OpenVGSurface: result = Val_long(647495122); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWindow::Visibility mlqt_QWindow_Visibility_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 19559306: return QWindow::Hidden;
  case -911611331: return QWindow::AutomaticVisibility;
  case -679508881: return QWindow::Windowed;
  case -898573466: return QWindow::Minimized;
  case 548662776: return QWindow::Maximized;
  case 620343931: return QWindow::FullScreen;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWindow::Visibility)Long_val(Field(v, 1));
  }
}

value& mlqt_QWindow_Visibility_to_ocaml(const QWindow::Visibility& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWindow::Hidden: result = Val_long(19559306); break;
  case QWindow::AutomaticVisibility: result = Val_long(-911611331); break;
  case QWindow::Windowed: result = Val_long(-679508881); break;
  case QWindow::Minimized: result = Val_long(-898573466); break;
  case QWindow::Maximized: result = Val_long(548662776); break;
  case QWindow::FullScreen: result = Val_long(620343931); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWindow::AncestorMode mlqt_QWindow_AncestorMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 364085571: return QWindow::ExcludeTransients;
  case -643748335: return QWindow::IncludeTransients;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWindow::AncestorMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QWindow_AncestorMode_to_ocaml(const QWindow::AncestorMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWindow::ExcludeTransients: result = Val_long(364085571); break;
  case QWindow::IncludeTransients: result = Val_long(-643748335); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCharFormat::VerticalAlignment mlqt_QTextCharFormat_VerticalAlignment_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 594196140: return QTextCharFormat::AlignNormal;
  case 475712321: return QTextCharFormat::AlignSuperScript;
  case 1001859142: return QTextCharFormat::AlignSubScript;
  case 1063262170: return QTextCharFormat::AlignMiddle;
  case 596724976: return QTextCharFormat::AlignTop;
  case -663082128: return QTextCharFormat::AlignBottom;
  case 979831882: return QTextCharFormat::AlignBaseline;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCharFormat::VerticalAlignment)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCharFormat_VerticalAlignment_to_ocaml(const QTextCharFormat::VerticalAlignment& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCharFormat::AlignNormal: result = Val_long(594196140); break;
  case QTextCharFormat::AlignSuperScript: result = Val_long(475712321); break;
  case QTextCharFormat::AlignSubScript: result = Val_long(1001859142); break;
  case QTextCharFormat::AlignMiddle: result = Val_long(1063262170); break;
  case QTextCharFormat::AlignTop: result = Val_long(596724976); break;
  case QTextCharFormat::AlignBottom: result = Val_long(-663082128); break;
  case QTextCharFormat::AlignBaseline: result = Val_long(979831882); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCharFormat::UnderlineStyle mlqt_QTextCharFormat_UnderlineStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -843932565: return QTextCharFormat::NoUnderline;
  case -129923772: return QTextCharFormat::SingleUnderline;
  case 477672762: return QTextCharFormat::DashUnderline;
  case -363321603: return QTextCharFormat::DotLine;
  case 9738187: return QTextCharFormat::DashDotLine;
  case -419709018: return QTextCharFormat::DashDotDotLine;
  case 192798707: return QTextCharFormat::WaveUnderline;
  case -729922868: return QTextCharFormat::SpellCheckUnderline;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCharFormat::UnderlineStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCharFormat_UnderlineStyle_to_ocaml(const QTextCharFormat::UnderlineStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCharFormat::NoUnderline: result = Val_long(-843932565); break;
  case QTextCharFormat::SingleUnderline: result = Val_long(-129923772); break;
  case QTextCharFormat::DashUnderline: result = Val_long(477672762); break;
  case QTextCharFormat::DotLine: result = Val_long(-363321603); break;
  case QTextCharFormat::DashDotLine: result = Val_long(9738187); break;
  case QTextCharFormat::DashDotDotLine: result = Val_long(-419709018); break;
  case QTextCharFormat::WaveUnderline: result = Val_long(192798707); break;
  case QTextCharFormat::SpellCheckUnderline: result = Val_long(-729922868); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextCharFormat::FontPropertiesInheritanceBehavior mlqt_QTextCharFormat_FontPropertiesInheritanceBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -969688422: return QTextCharFormat::FontPropertiesSpecifiedOnly;
  case -197760129: return QTextCharFormat::FontPropertiesAll;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextCharFormat::FontPropertiesInheritanceBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextCharFormat_FontPropertiesInheritanceBehavior_to_ocaml(const QTextCharFormat::FontPropertiesInheritanceBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextCharFormat::FontPropertiesSpecifiedOnly: result = Val_long(-969688422); break;
  case QTextCharFormat::FontPropertiesAll: result = Val_long(-197760129); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextBlockFormat::LineHeightTypes mlqt_QTextBlockFormat_LineHeightTypes_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -343161681: return QTextBlockFormat::SingleHeight;
  case 749568428: return QTextBlockFormat::ProportionalHeight;
  case 45063259: return QTextBlockFormat::FixedHeight;
  case 283303989: return QTextBlockFormat::MinimumHeight;
  case 112539696: return QTextBlockFormat::LineDistanceHeight;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextBlockFormat::LineHeightTypes)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextBlockFormat_LineHeightTypes_to_ocaml(const QTextBlockFormat::LineHeightTypes& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextBlockFormat::SingleHeight: result = Val_long(-343161681); break;
  case QTextBlockFormat::ProportionalHeight: result = Val_long(749568428); break;
  case QTextBlockFormat::FixedHeight: result = Val_long(45063259); break;
  case QTextBlockFormat::MinimumHeight: result = Val_long(283303989); break;
  case QTextBlockFormat::LineDistanceHeight: result = Val_long(112539696); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextListFormat::Style mlqt_QTextListFormat_Style_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -66063629: return QTextListFormat::ListDisc;
  case 790929710: return QTextListFormat::ListCircle;
  case 839462843: return QTextListFormat::ListSquare;
  case 33931187: return QTextListFormat::ListDecimal;
  case 701845435: return QTextListFormat::ListLowerAlpha;
  case 788779194: return QTextListFormat::ListUpperAlpha;
  case -174161062: return QTextListFormat::ListLowerRoman;
  case -87227303: return QTextListFormat::ListUpperRoman;
  case -280213443: return QTextListFormat::ListStyleUndefined;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextListFormat::Style)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextListFormat_Style_to_ocaml(const QTextListFormat::Style& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextListFormat::ListDisc: result = Val_long(-66063629); break;
  case QTextListFormat::ListCircle: result = Val_long(790929710); break;
  case QTextListFormat::ListSquare: result = Val_long(839462843); break;
  case QTextListFormat::ListDecimal: result = Val_long(33931187); break;
  case QTextListFormat::ListLowerAlpha: result = Val_long(701845435); break;
  case QTextListFormat::ListUpperAlpha: result = Val_long(788779194); break;
  case QTextListFormat::ListLowerRoman: result = Val_long(-174161062); break;
  case QTextListFormat::ListUpperRoman: result = Val_long(-87227303); break;
  case QTextListFormat::ListStyleUndefined: result = Val_long(-280213443); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFrameFormat::Position mlqt_QTextFrameFormat_Position_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 884501139: return QTextFrameFormat::InFlow;
  case 482072483: return QTextFrameFormat::FloatLeft;
  case -22158144: return QTextFrameFormat::FloatRight;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFrameFormat::Position)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFrameFormat_Position_to_ocaml(const QTextFrameFormat::Position& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFrameFormat::InFlow: result = Val_long(884501139); break;
  case QTextFrameFormat::FloatLeft: result = Val_long(482072483); break;
  case QTextFrameFormat::FloatRight: result = Val_long(-22158144); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextFrameFormat::BorderStyle mlqt_QTextFrameFormat_BorderStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 31805458: return QTextFrameFormat::BorderStyle_None;
  case -967287100: return QTextFrameFormat::BorderStyle_Dotted;
  case 906620427: return QTextFrameFormat::BorderStyle_Dashed;
  case 130033041: return QTextFrameFormat::BorderStyle_Solid;
  case -957091093: return QTextFrameFormat::BorderStyle_Double;
  case 658330465: return QTextFrameFormat::BorderStyle_DotDash;
  case -291884596: return QTextFrameFormat::BorderStyle_DotDotDash;
  case 810312660: return QTextFrameFormat::BorderStyle_Groove;
  case -262392431: return QTextFrameFormat::BorderStyle_Ridge;
  case -988123581: return QTextFrameFormat::BorderStyle_Inset;
  case 548147118: return QTextFrameFormat::BorderStyle_Outset;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextFrameFormat::BorderStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextFrameFormat_BorderStyle_to_ocaml(const QTextFrameFormat::BorderStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextFrameFormat::BorderStyle_None: result = Val_long(31805458); break;
  case QTextFrameFormat::BorderStyle_Dotted: result = Val_long(-967287100); break;
  case QTextFrameFormat::BorderStyle_Dashed: result = Val_long(906620427); break;
  case QTextFrameFormat::BorderStyle_Solid: result = Val_long(130033041); break;
  case QTextFrameFormat::BorderStyle_Double: result = Val_long(-957091093); break;
  case QTextFrameFormat::BorderStyle_DotDash: result = Val_long(658330465); break;
  case QTextFrameFormat::BorderStyle_DotDotDash: result = Val_long(-291884596); break;
  case QTextFrameFormat::BorderStyle_Groove: result = Val_long(810312660); break;
  case QTextFrameFormat::BorderStyle_Ridge: result = Val_long(-262392431); break;
  case QTextFrameFormat::BorderStyle_Inset: result = Val_long(-988123581); break;
  case QTextFrameFormat::BorderStyle_Outset: result = Val_long(548147118); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImage::InvertMode mlqt_QImage_InvertMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 940416375: return QImage::InvertRgb;
  case -740545782: return QImage::InvertRgba;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImage::InvertMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QImage_InvertMode_to_ocaml(const QImage::InvertMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImage::InvertRgb: result = Val_long(940416375); break;
  case QImage::InvertRgba: result = Val_long(-740545782); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImage::Format mlqt_QImage_Format_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -742781265: return QImage::Format_Invalid;
  case -261511829: return QImage::Format_Mono;
  case -832617648: return QImage::Format_MonoLSB;
  case 304882799: return QImage::Format_Indexed8;
  case 846585508: return QImage::Format_RGB32;
  case 22914067: return QImage::Format_ARGB32;
  case 900903114: return QImage::Format_ARGB32_Premultiplied;
  case 846585066: return QImage::Format_RGB16;
  case 564087655: return QImage::Format_ARGB8565_Premultiplied;
  case -189842607: return QImage::Format_RGB666;
  case 348577643: return QImage::Format_ARGB6666_Premultiplied;
  case -189892560: return QImage::Format_RGB555;
  case -630250936: return QImage::Format_ARGB8555_Premultiplied;
  case -189742701: return QImage::Format_RGB888;
  case -189942513: return QImage::Format_RGB444;
  case 834653163: return QImage::Format_ARGB4444_Premultiplied;
  case 6638963: return QImage::Format_RGBX8888;
  case -1037175332: return QImage::Format_RGBA8888;
  case -643878829: return QImage::Format_RGBA8888_Premultiplied;
  case -65488222: return QImage::Format_BGR30;
  case -457091224: return QImage::Format_A2BGR30_Premultiplied;
  case 846585506: return QImage::Format_RGB30;
  case 106265448: return QImage::Format_A2RGB30_Premultiplied;
  case 352286306: return QImage::Format_Alpha8;
  case -944884263: return QImage::Format_Grayscale8;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImage::Format)Long_val(Field(v, 1));
  }
}

value& mlqt_QImage_Format_to_ocaml(const QImage::Format& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImage::Format_Invalid: result = Val_long(-742781265); break;
  case QImage::Format_Mono: result = Val_long(-261511829); break;
  case QImage::Format_MonoLSB: result = Val_long(-832617648); break;
  case QImage::Format_Indexed8: result = Val_long(304882799); break;
  case QImage::Format_RGB32: result = Val_long(846585508); break;
  case QImage::Format_ARGB32: result = Val_long(22914067); break;
  case QImage::Format_ARGB32_Premultiplied: result = Val_long(900903114); break;
  case QImage::Format_RGB16: result = Val_long(846585066); break;
  case QImage::Format_ARGB8565_Premultiplied: result = Val_long(564087655); break;
  case QImage::Format_RGB666: result = Val_long(-189842607); break;
  case QImage::Format_ARGB6666_Premultiplied: result = Val_long(348577643); break;
  case QImage::Format_RGB555: result = Val_long(-189892560); break;
  case QImage::Format_ARGB8555_Premultiplied: result = Val_long(-630250936); break;
  case QImage::Format_RGB888: result = Val_long(-189742701); break;
  case QImage::Format_RGB444: result = Val_long(-189942513); break;
  case QImage::Format_ARGB4444_Premultiplied: result = Val_long(834653163); break;
  case QImage::Format_RGBX8888: result = Val_long(6638963); break;
  case QImage::Format_RGBA8888: result = Val_long(-1037175332); break;
  case QImage::Format_RGBA8888_Premultiplied: result = Val_long(-643878829); break;
  case QImage::Format_BGR30: result = Val_long(-65488222); break;
  case QImage::Format_A2BGR30_Premultiplied: result = Val_long(-457091224); break;
  case QImage::Format_RGB30: result = Val_long(846585506); break;
  case QImage::Format_A2RGB30_Premultiplied: result = Val_long(106265448); break;
  case QImage::Format_Alpha8: result = Val_long(352286306); break;
  case QImage::Format_Grayscale8: result = Val_long(-944884263); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPagedPaintDevice::PageSize mlqt_QPagedPaintDevice_PageSize_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 14547: return QPagedPaintDevice::A4;
  case 14771: return QPagedPaintDevice::B5;
  case -677568250: return QPagedPaintDevice::Letter;
  case 92610585: return QPagedPaintDevice::Legal;
  case -756936312: return QPagedPaintDevice::Executive;
  case 14543: return QPagedPaintDevice::A0;
  case 14544: return QPagedPaintDevice::A1;
  case 14545: return QPagedPaintDevice::A2;
  case 14546: return QPagedPaintDevice::A3;
  case 14548: return QPagedPaintDevice::A5;
  case 14549: return QPagedPaintDevice::A6;
  case 14550: return QPagedPaintDevice::A7;
  case 14551: return QPagedPaintDevice::A8;
  case 14552: return QPagedPaintDevice::A9;
  case 14766: return QPagedPaintDevice::B0;
  case 14767: return QPagedPaintDevice::B1;
  case 3293089: return QPagedPaintDevice::B10;
  case 14768: return QPagedPaintDevice::B2;
  case 14769: return QPagedPaintDevice::B3;
  case 14770: return QPagedPaintDevice::B4;
  case 14772: return QPagedPaintDevice::B6;
  case 14773: return QPagedPaintDevice::B7;
  case 14774: return QPagedPaintDevice::B8;
  case 14775: return QPagedPaintDevice::B9;
  case 3343731: return QPagedPaintDevice::C5E;
  case -828770598: return QPagedPaintDevice::Comm10E;
  case 3398589: return QPagedPaintDevice::DLE;
  case 398301577: return QPagedPaintDevice::Folio;
  case -855647799: return QPagedPaintDevice::Ledger;
  case 581267923: return QPagedPaintDevice::Tabloid;
  case -198771759: return QPagedPaintDevice::Custom;
  case 3243360: return QPagedPaintDevice::A10;
  case -42559394: return QPagedPaintDevice::A3Extra;
  case -472779587: return QPagedPaintDevice::A4Extra;
  case 591137229: return QPagedPaintDevice::A4Plus;
  case -333821196: return QPagedPaintDevice::A4Small;
  case -902999780: return QPagedPaintDevice::A5Extra;
  case -205338659: return QPagedPaintDevice::B5Extra;
  case -513420958: return QPagedPaintDevice::JisB0;
  case -513420957: return QPagedPaintDevice::JisB1;
  case -513420956: return QPagedPaintDevice::JisB2;
  case -513420955: return QPagedPaintDevice::JisB3;
  case -513420954: return QPagedPaintDevice::JisB4;
  case -513420953: return QPagedPaintDevice::JisB5;
  case -513420952: return QPagedPaintDevice::JisB6;
  case -513420951: return QPagedPaintDevice::JisB7;
  case -513420950: return QPagedPaintDevice::JisB8;
  case -513420949: return QPagedPaintDevice::JisB9;
  case -676240019: return QPagedPaintDevice::JisB10;
  case 907594752: return QPagedPaintDevice::AnsiC;
  case 907594753: return QPagedPaintDevice::AnsiD;
  case 907594754: return QPagedPaintDevice::AnsiE;
  case -853348425: return QPagedPaintDevice::LegalExtra;
  case 647984042: return QPagedPaintDevice::LetterExtra;
  case -857962624: return QPagedPaintDevice::LetterPlus;
  case 786942433: return QPagedPaintDevice::LetterSmall;
  case -492954691: return QPagedPaintDevice::TabloidExtra;
  case 951157131: return QPagedPaintDevice::ArchA;
  case 951157132: return QPagedPaintDevice::ArchB;
  case 951157133: return QPagedPaintDevice::ArchC;
  case 951157134: return QPagedPaintDevice::ArchD;
  case 951157135: return QPagedPaintDevice::ArchE;
  case 454676413: return QPagedPaintDevice::Imperial7x9;
  case 472196474: return QPagedPaintDevice::Imperial8x10;
  case 483286042: return QPagedPaintDevice::Imperial9x11;
  case 483286043: return QPagedPaintDevice::Imperial9x12;
  case -852747746: return QPagedPaintDevice::Imperial10x11;
  case -852747744: return QPagedPaintDevice::Imperial10x13;
  case -852747743: return QPagedPaintDevice::Imperial10x14;
  case -830568612: return QPagedPaintDevice::Imperial12x11;
  case -797299911: return QPagedPaintDevice::Imperial15x11;
  case -515584795: return QPagedPaintDevice::ExecutiveStandard;
  case 870532114: return QPagedPaintDevice::Note;
  case 20885936: return QPagedPaintDevice::Quarto;
  case -503678961: return QPagedPaintDevice::Statement;
  case -673857914: return QPagedPaintDevice::SuperA;
  case -673857913: return QPagedPaintDevice::SuperB;
  case -288223664: return QPagedPaintDevice::Postcard;
  case 496879233: return QPagedPaintDevice::DoublePostcard;
  case -506430363: return QPagedPaintDevice::Prc16K;
  case -506331797: return QPagedPaintDevice::Prc32K;
  case -659134443: return QPagedPaintDevice::Prc32KBig;
  case -427960398: return QPagedPaintDevice::FanFoldUS;
  case 485317114: return QPagedPaintDevice::FanFoldGerman;
  case 634215391: return QPagedPaintDevice::FanFoldGermanLegal;
  case 526385378: return QPagedPaintDevice::EnvelopeB4;
  case 526385379: return QPagedPaintDevice::EnvelopeB5;
  case 526385380: return QPagedPaintDevice::EnvelopeB6;
  case 526385597: return QPagedPaintDevice::EnvelopeC0;
  case 526385598: return QPagedPaintDevice::EnvelopeC1;
  case 526385599: return QPagedPaintDevice::EnvelopeC2;
  case 526385600: return QPagedPaintDevice::EnvelopeC3;
  case 526385601: return QPagedPaintDevice::EnvelopeC4;
  case 526385603: return QPagedPaintDevice::EnvelopeC6;
  case -727611118: return QPagedPaintDevice::EnvelopeC65;
  case 526385604: return QPagedPaintDevice::EnvelopeC7;
  case -190238967: return QPagedPaintDevice::Envelope9;
  case 526381584: return QPagedPaintDevice::Envelope11;
  case 526381585: return QPagedPaintDevice::Envelope12;
  case 526381587: return QPagedPaintDevice::Envelope14;
  case -129349294: return QPagedPaintDevice::EnvelopeMonarch;
  case -920182000: return QPagedPaintDevice::EnvelopePersonal;
  case 136086904: return QPagedPaintDevice::EnvelopeChou3;
  case 136086905: return QPagedPaintDevice::EnvelopeChou4;
  case -268729063: return QPagedPaintDevice::EnvelopeInvite;
  case -590990224: return QPagedPaintDevice::EnvelopeItalian;
  case 514695714: return QPagedPaintDevice::EnvelopeKaku2;
  case 514695715: return QPagedPaintDevice::EnvelopeKaku3;
  case -1048847296: return QPagedPaintDevice::EnvelopePrc1;
  case -1048847295: return QPagedPaintDevice::EnvelopePrc2;
  case -1048847294: return QPagedPaintDevice::EnvelopePrc3;
  case -1048847293: return QPagedPaintDevice::EnvelopePrc4;
  case -1048847292: return QPagedPaintDevice::EnvelopePrc5;
  case -1048847291: return QPagedPaintDevice::EnvelopePrc6;
  case -1048847290: return QPagedPaintDevice::EnvelopePrc7;
  case -1048847289: return QPagedPaintDevice::EnvelopePrc8;
  case -1048847288: return QPagedPaintDevice::EnvelopePrc9;
  case 182770672: return QPagedPaintDevice::EnvelopePrc10;
  case -949186363: return QPagedPaintDevice::EnvelopeYou4;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPagedPaintDevice::PageSize)Long_val(Field(v, 1));
  }
}

value& mlqt_QPagedPaintDevice_PageSize_to_ocaml(const QPagedPaintDevice::PageSize& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPagedPaintDevice::A4: result = Val_long(14547); break;
  case QPagedPaintDevice::B5: result = Val_long(14771); break;
  case QPagedPaintDevice::Letter: result = Val_long(-677568250); break;
  case QPagedPaintDevice::Legal: result = Val_long(92610585); break;
  case QPagedPaintDevice::Executive: result = Val_long(-756936312); break;
  case QPagedPaintDevice::A0: result = Val_long(14543); break;
  case QPagedPaintDevice::A1: result = Val_long(14544); break;
  case QPagedPaintDevice::A2: result = Val_long(14545); break;
  case QPagedPaintDevice::A3: result = Val_long(14546); break;
  case QPagedPaintDevice::A5: result = Val_long(14548); break;
  case QPagedPaintDevice::A6: result = Val_long(14549); break;
  case QPagedPaintDevice::A7: result = Val_long(14550); break;
  case QPagedPaintDevice::A8: result = Val_long(14551); break;
  case QPagedPaintDevice::A9: result = Val_long(14552); break;
  case QPagedPaintDevice::B0: result = Val_long(14766); break;
  case QPagedPaintDevice::B1: result = Val_long(14767); break;
  case QPagedPaintDevice::B10: result = Val_long(3293089); break;
  case QPagedPaintDevice::B2: result = Val_long(14768); break;
  case QPagedPaintDevice::B3: result = Val_long(14769); break;
  case QPagedPaintDevice::B4: result = Val_long(14770); break;
  case QPagedPaintDevice::B6: result = Val_long(14772); break;
  case QPagedPaintDevice::B7: result = Val_long(14773); break;
  case QPagedPaintDevice::B8: result = Val_long(14774); break;
  case QPagedPaintDevice::B9: result = Val_long(14775); break;
  case QPagedPaintDevice::C5E: result = Val_long(3343731); break;
  case QPagedPaintDevice::Comm10E: result = Val_long(-828770598); break;
  case QPagedPaintDevice::DLE: result = Val_long(3398589); break;
  case QPagedPaintDevice::Folio: result = Val_long(398301577); break;
  case QPagedPaintDevice::Ledger: result = Val_long(-855647799); break;
  case QPagedPaintDevice::Tabloid: result = Val_long(581267923); break;
  case QPagedPaintDevice::Custom: result = Val_long(-198771759); break;
  case QPagedPaintDevice::A10: result = Val_long(3243360); break;
  case QPagedPaintDevice::A3Extra: result = Val_long(-42559394); break;
  case QPagedPaintDevice::A4Extra: result = Val_long(-472779587); break;
  case QPagedPaintDevice::A4Plus: result = Val_long(591137229); break;
  case QPagedPaintDevice::A4Small: result = Val_long(-333821196); break;
  case QPagedPaintDevice::A5Extra: result = Val_long(-902999780); break;
  case QPagedPaintDevice::B5Extra: result = Val_long(-205338659); break;
  case QPagedPaintDevice::JisB0: result = Val_long(-513420958); break;
  case QPagedPaintDevice::JisB1: result = Val_long(-513420957); break;
  case QPagedPaintDevice::JisB2: result = Val_long(-513420956); break;
  case QPagedPaintDevice::JisB3: result = Val_long(-513420955); break;
  case QPagedPaintDevice::JisB4: result = Val_long(-513420954); break;
  case QPagedPaintDevice::JisB5: result = Val_long(-513420953); break;
  case QPagedPaintDevice::JisB6: result = Val_long(-513420952); break;
  case QPagedPaintDevice::JisB7: result = Val_long(-513420951); break;
  case QPagedPaintDevice::JisB8: result = Val_long(-513420950); break;
  case QPagedPaintDevice::JisB9: result = Val_long(-513420949); break;
  case QPagedPaintDevice::JisB10: result = Val_long(-676240019); break;
  case QPagedPaintDevice::AnsiC: result = Val_long(907594752); break;
  case QPagedPaintDevice::AnsiD: result = Val_long(907594753); break;
  case QPagedPaintDevice::AnsiE: result = Val_long(907594754); break;
  case QPagedPaintDevice::LegalExtra: result = Val_long(-853348425); break;
  case QPagedPaintDevice::LetterExtra: result = Val_long(647984042); break;
  case QPagedPaintDevice::LetterPlus: result = Val_long(-857962624); break;
  case QPagedPaintDevice::LetterSmall: result = Val_long(786942433); break;
  case QPagedPaintDevice::TabloidExtra: result = Val_long(-492954691); break;
  case QPagedPaintDevice::ArchA: result = Val_long(951157131); break;
  case QPagedPaintDevice::ArchB: result = Val_long(951157132); break;
  case QPagedPaintDevice::ArchC: result = Val_long(951157133); break;
  case QPagedPaintDevice::ArchD: result = Val_long(951157134); break;
  case QPagedPaintDevice::ArchE: result = Val_long(951157135); break;
  case QPagedPaintDevice::Imperial7x9: result = Val_long(454676413); break;
  case QPagedPaintDevice::Imperial8x10: result = Val_long(472196474); break;
  case QPagedPaintDevice::Imperial9x11: result = Val_long(483286042); break;
  case QPagedPaintDevice::Imperial9x12: result = Val_long(483286043); break;
  case QPagedPaintDevice::Imperial10x11: result = Val_long(-852747746); break;
  case QPagedPaintDevice::Imperial10x13: result = Val_long(-852747744); break;
  case QPagedPaintDevice::Imperial10x14: result = Val_long(-852747743); break;
  case QPagedPaintDevice::Imperial12x11: result = Val_long(-830568612); break;
  case QPagedPaintDevice::Imperial15x11: result = Val_long(-797299911); break;
  case QPagedPaintDevice::ExecutiveStandard: result = Val_long(-515584795); break;
  case QPagedPaintDevice::Note: result = Val_long(870532114); break;
  case QPagedPaintDevice::Quarto: result = Val_long(20885936); break;
  case QPagedPaintDevice::Statement: result = Val_long(-503678961); break;
  case QPagedPaintDevice::SuperA: result = Val_long(-673857914); break;
  case QPagedPaintDevice::SuperB: result = Val_long(-673857913); break;
  case QPagedPaintDevice::Postcard: result = Val_long(-288223664); break;
  case QPagedPaintDevice::DoublePostcard: result = Val_long(496879233); break;
  case QPagedPaintDevice::Prc16K: result = Val_long(-506430363); break;
  case QPagedPaintDevice::Prc32K: result = Val_long(-506331797); break;
  case QPagedPaintDevice::Prc32KBig: result = Val_long(-659134443); break;
  case QPagedPaintDevice::FanFoldUS: result = Val_long(-427960398); break;
  case QPagedPaintDevice::FanFoldGerman: result = Val_long(485317114); break;
  case QPagedPaintDevice::FanFoldGermanLegal: result = Val_long(634215391); break;
  case QPagedPaintDevice::EnvelopeB4: result = Val_long(526385378); break;
  case QPagedPaintDevice::EnvelopeB5: result = Val_long(526385379); break;
  case QPagedPaintDevice::EnvelopeB6: result = Val_long(526385380); break;
  case QPagedPaintDevice::EnvelopeC0: result = Val_long(526385597); break;
  case QPagedPaintDevice::EnvelopeC1: result = Val_long(526385598); break;
  case QPagedPaintDevice::EnvelopeC2: result = Val_long(526385599); break;
  case QPagedPaintDevice::EnvelopeC3: result = Val_long(526385600); break;
  case QPagedPaintDevice::EnvelopeC4: result = Val_long(526385601); break;
  case QPagedPaintDevice::EnvelopeC6: result = Val_long(526385603); break;
  case QPagedPaintDevice::EnvelopeC65: result = Val_long(-727611118); break;
  case QPagedPaintDevice::EnvelopeC7: result = Val_long(526385604); break;
  case QPagedPaintDevice::Envelope9: result = Val_long(-190238967); break;
  case QPagedPaintDevice::Envelope11: result = Val_long(526381584); break;
  case QPagedPaintDevice::Envelope12: result = Val_long(526381585); break;
  case QPagedPaintDevice::Envelope14: result = Val_long(526381587); break;
  case QPagedPaintDevice::EnvelopeMonarch: result = Val_long(-129349294); break;
  case QPagedPaintDevice::EnvelopePersonal: result = Val_long(-920182000); break;
  case QPagedPaintDevice::EnvelopeChou3: result = Val_long(136086904); break;
  case QPagedPaintDevice::EnvelopeChou4: result = Val_long(136086905); break;
  case QPagedPaintDevice::EnvelopeInvite: result = Val_long(-268729063); break;
  case QPagedPaintDevice::EnvelopeItalian: result = Val_long(-590990224); break;
  case QPagedPaintDevice::EnvelopeKaku2: result = Val_long(514695714); break;
  case QPagedPaintDevice::EnvelopeKaku3: result = Val_long(514695715); break;
  case QPagedPaintDevice::EnvelopePrc1: result = Val_long(-1048847296); break;
  case QPagedPaintDevice::EnvelopePrc2: result = Val_long(-1048847295); break;
  case QPagedPaintDevice::EnvelopePrc3: result = Val_long(-1048847294); break;
  case QPagedPaintDevice::EnvelopePrc4: result = Val_long(-1048847293); break;
  case QPagedPaintDevice::EnvelopePrc5: result = Val_long(-1048847292); break;
  case QPagedPaintDevice::EnvelopePrc6: result = Val_long(-1048847291); break;
  case QPagedPaintDevice::EnvelopePrc7: result = Val_long(-1048847290); break;
  case QPagedPaintDevice::EnvelopePrc8: result = Val_long(-1048847289); break;
  case QPagedPaintDevice::EnvelopePrc9: result = Val_long(-1048847288); break;
  case QPagedPaintDevice::EnvelopePrc10: result = Val_long(182770672); break;
  case QPagedPaintDevice::EnvelopeYou4: result = Val_long(-949186363); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAccessibleTableModelChangeEvent::ModelChangeType mlqt_QAccessibleTableModelChangeEvent_ModelChangeType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 893367686: return QAccessibleTableModelChangeEvent::ModelReset;
  case -219507766: return QAccessibleTableModelChangeEvent::DataChanged;
  case 815979057: return QAccessibleTableModelChangeEvent::RowsInserted;
  case 1034596789: return QAccessibleTableModelChangeEvent::ColumnsInserted;
  case 666546023: return QAccessibleTableModelChangeEvent::RowsRemoved;
  case -911788957: return QAccessibleTableModelChangeEvent::ColumnsRemoved;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAccessibleTableModelChangeEvent::ModelChangeType)Long_val(Field(v, 1));
  }
}

value& mlqt_QAccessibleTableModelChangeEvent_ModelChangeType_to_ocaml(const QAccessibleTableModelChangeEvent::ModelChangeType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAccessibleTableModelChangeEvent::ModelReset: result = Val_long(893367686); break;
  case QAccessibleTableModelChangeEvent::DataChanged: result = Val_long(-219507766); break;
  case QAccessibleTableModelChangeEvent::RowsInserted: result = Val_long(815979057); break;
  case QAccessibleTableModelChangeEvent::ColumnsInserted: result = Val_long(1034596789); break;
  case QAccessibleTableModelChangeEvent::RowsRemoved: result = Val_long(666546023); break;
  case QAccessibleTableModelChangeEvent::ColumnsRemoved: result = Val_long(-911788957); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPlatformSurfaceEvent::SurfaceEventType mlqt_QPlatformSurfaceEvent_SurfaceEventType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -29435045: return QPlatformSurfaceEvent::SurfaceCreated;
  case -436306245: return QPlatformSurfaceEvent::SurfaceAboutToBeDestroyed;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPlatformSurfaceEvent::SurfaceEventType)Long_val(Field(v, 1));
  }
}

value& mlqt_QPlatformSurfaceEvent_SurfaceEventType_to_ocaml(const QPlatformSurfaceEvent::SurfaceEventType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPlatformSurfaceEvent::SurfaceCreated: result = Val_long(-29435045); break;
  case QPlatformSurfaceEvent::SurfaceAboutToBeDestroyed: result = Val_long(-436306245); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QInputMethodEvent::AttributeType mlqt_QInputMethodEvent_AttributeType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 724571108: return QInputMethodEvent::TextFormat;
  case -209911050: return QInputMethodEvent::Cursor;
  case -742179720: return QInputMethodEvent::Language;
  case 915184762: return QInputMethodEvent::Ruby;
  case 804116524: return QInputMethodEvent::Selection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QInputMethodEvent::AttributeType)Long_val(Field(v, 1));
  }
}

value& mlqt_QInputMethodEvent_AttributeType_to_ocaml(const QInputMethodEvent::AttributeType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QInputMethodEvent::TextFormat: result = Val_long(724571108); break;
  case QInputMethodEvent::Cursor: result = Val_long(-209911050); break;
  case QInputMethodEvent::Language: result = Val_long(-742179720); break;
  case QInputMethodEvent::Ruby: result = Val_long(915184762); break;
  case QInputMethodEvent::Selection: result = Val_long(804116524); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScrollEvent::ScrollState mlqt_QScrollEvent_ScrollState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -279800684: return QScrollEvent::ScrollStarted;
  case -670618226: return QScrollEvent::ScrollUpdated;
  case -883617601: return QScrollEvent::ScrollFinished;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScrollEvent::ScrollState)Long_val(Field(v, 1));
  }
}

value& mlqt_QScrollEvent_ScrollState_to_ocaml(const QScrollEvent::ScrollState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScrollEvent::ScrollStarted: result = Val_long(-279800684); break;
  case QScrollEvent::ScrollUpdated: result = Val_long(-670618226); break;
  case QScrollEvent::ScrollFinished: result = Val_long(-883617601); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QImageIOPlugin::Capability mlqt_QImageIOPlugin_Capability_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 928013158: return QImageIOPlugin::CanRead;
  case 413035215: return QImageIOPlugin::CanWrite;
  case 26234644: return QImageIOPlugin::CanReadIncremental;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QImageIOPlugin::Capability)Long_val(Field(v, 1));
  }
}

value& mlqt_QImageIOPlugin_Capability_to_ocaml(const QImageIOPlugin::Capability& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QImageIOPlugin::CanRead: result = Val_long(928013158); break;
  case QImageIOPlugin::CanWrite: result = Val_long(413035215); break;
  case QImageIOPlugin::CanReadIncremental: result = Val_long(26234644); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMovie::MovieState mlqt_QMovie_MovieState_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 821254476: return QMovie::NotRunning;
  case 605598926: return QMovie::Paused;
  case 951752159: return QMovie::Running;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMovie::MovieState)Long_val(Field(v, 1));
  }
}

value& mlqt_QMovie_MovieState_to_ocaml(const QMovie::MovieState& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMovie::NotRunning: result = Val_long(821254476); break;
  case QMovie::Paused: result = Val_long(605598926); break;
  case QMovie::Running: result = Val_long(951752159); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMovie::CacheMode mlqt_QMovie_CacheMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -426638854: return QMovie::CacheNone;
  case -204789729: return QMovie::CacheAll;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMovie::CacheMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QMovie_CacheMode_to_ocaml(const QMovie::CacheMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMovie::CacheNone: result = Val_long(-426638854); break;
  case QMovie::CacheAll: result = Val_long(-204789729); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QClipboard::Mode mlqt_QClipboard_Mode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -475380298: return QClipboard::Clipboard;
  case 804116524: return QClipboard::Selection;
  case -258378183: return QClipboard::FindBuffer;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QClipboard::Mode)Long_val(Field(v, 1));
  }
}

value& mlqt_QClipboard_Mode_to_ocaml(const QClipboard::Mode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QClipboard::Clipboard: result = Val_long(-475380298); break;
  case QClipboard::Selection: result = Val_long(804116524); break;
  case QClipboard::FindBuffer: result = Val_long(-258378183); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QInputMethod::Action mlqt_QInputMethod_Action_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -611587032: return QInputMethod::Click;
  case 160416526: return QInputMethod::ContextMenu;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QInputMethod::Action)Long_val(Field(v, 1));
  }
}

value& mlqt_QInputMethod_Action_to_ocaml(const QInputMethod::Action& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QInputMethod::Click: result = Val_long(-611587032); break;
  case QInputMethod::ContextMenu: result = Val_long(160416526); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLContext::OpenGLModuleType mlqt_QOpenGLContext_OpenGLModuleType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 136714378: return QOpenGLContext::LibGL;
  case -263910536: return QOpenGLContext::LibGLES;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLContext::OpenGLModuleType)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLContext_OpenGLModuleType_to_ocaml(const QOpenGLContext::OpenGLModuleType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLContext::LibGL: result = Val_long(136714378); break;
  case QOpenGLContext::LibGLES: result = Val_long(-263910536); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSessionManager::RestartHint mlqt_QSessionManager_RestartHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1002840563: return QSessionManager::RestartIfRunning;
  case 790368978: return QSessionManager::RestartAnyway;
  case 176359759: return QSessionManager::RestartImmediately;
  case 475563101: return QSessionManager::RestartNever;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSessionManager::RestartHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QSessionManager_RestartHint_to_ocaml(const QSessionManager::RestartHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSessionManager::RestartIfRunning: result = Val_long(1002840563); break;
  case QSessionManager::RestartAnyway: result = Val_long(790368978); break;
  case QSessionManager::RestartImmediately: result = Val_long(176359759); break;
  case QSessionManager::RestartNever: result = Val_long(475563101); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLDebugLogger::LoggingMode mlqt_QOpenGLDebugLogger_LoggingMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -216475561: return QOpenGLDebugLogger::AsynchronousLogging;
  case -565651466: return QOpenGLDebugLogger::SynchronousLogging;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLDebugLogger::LoggingMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLDebugLogger_LoggingMode_to_ocaml(const QOpenGLDebugLogger::LoggingMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLDebugLogger::AsynchronousLogging: result = Val_long(-216475561); break;
  case QOpenGLDebugLogger::SynchronousLogging: result = Val_long(-565651466); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLShader::ShaderTypeBit mlqt_QOpenGLShader_ShaderTypeBit_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -706982012: return QOpenGLShader::Vertex;
  case 127343600: return QOpenGLShader::Fragment;
  case 744144594: return QOpenGLShader::Geometry;
  case 730089852: return QOpenGLShader::TessellationControl;
  case 730386941: return QOpenGLShader::TessellationEvaluation;
  case -792105129: return QOpenGLShader::Compute;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLShader::ShaderTypeBit)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLShader_ShaderTypeBit_to_ocaml(const QOpenGLShader::ShaderTypeBit& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLShader::Vertex: result = Val_long(-706982012); break;
  case QOpenGLShader::Fragment: result = Val_long(127343600); break;
  case QOpenGLShader::Geometry: result = Val_long(744144594); break;
  case QOpenGLShader::TessellationControl: result = Val_long(730089852); break;
  case QOpenGLShader::TessellationEvaluation: result = Val_long(730386941); break;
  case QOpenGLShader::Compute: result = Val_long(-792105129); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextDocument::MetaInformation mlqt_QTextDocument_MetaInformation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 98976861: return QTextDocument::DocumentTitle;
  case 209235700: return QTextDocument::DocumentUrl;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextDocument::MetaInformation)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextDocument_MetaInformation_to_ocaml(const QTextDocument::MetaInformation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextDocument::DocumentTitle: result = Val_long(98976861); break;
  case QTextDocument::DocumentUrl: result = Val_long(209235700); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextDocument::FindFlag mlqt_QTextDocument_FindFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -592898724: return QTextDocument::FindBackward;
  case 899674874: return QTextDocument::FindCaseSensitively;
  case 359116907: return QTextDocument::FindWholeWords;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextDocument::FindFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextDocument_FindFlag_to_ocaml(const QTextDocument::FindFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextDocument::FindBackward: result = Val_long(-592898724); break;
  case QTextDocument::FindCaseSensitively: result = Val_long(899674874); break;
  case QTextDocument::FindWholeWords: result = Val_long(359116907); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextDocument::ResourceType mlqt_QTextDocument_ResourceType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 746511737: return QTextDocument::HtmlResource;
  case 976411433: return QTextDocument::ImageResource;
  case 624088764: return QTextDocument::StyleSheetResource;
  case -240272807: return QTextDocument::UserResource;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextDocument::ResourceType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextDocument_ResourceType_to_ocaml(const QTextDocument::ResourceType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextDocument::HtmlResource: result = Val_long(746511737); break;
  case QTextDocument::ImageResource: result = Val_long(976411433); break;
  case QTextDocument::StyleSheetResource: result = Val_long(624088764); break;
  case QTextDocument::UserResource: result = Val_long(-240272807); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextDocument::Stacks mlqt_QTextDocument_Stacks_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -720556444: return QTextDocument::UndoStack;
  case -646778806: return QTextDocument::RedoStack;
  case -449175140: return QTextDocument::UndoAndRedoStacks;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextDocument::Stacks)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextDocument_Stacks_to_ocaml(const QTextDocument::Stacks& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextDocument::UndoStack: result = Val_long(-720556444); break;
  case QTextDocument::RedoStack: result = Val_long(-646778806); break;
  case QTextDocument::UndoAndRedoStacks: result = Val_long(-449175140); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QValidator::State mlqt_QValidator_State_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 144245463: return QValidator::Invalid;
  case -485600295: return QValidator::Intermediate;
  case 1067067586: return QValidator::Acceptable;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QValidator::State)Long_val(Field(v, 1));
  }
}

value& mlqt_QValidator_State_to_ocaml(const QValidator::State& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QValidator::Invalid: result = Val_long(144245463); break;
  case QValidator::Intermediate: result = Val_long(-485600295); break;
  case QValidator::Acceptable: result = Val_long(1067067586); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDoubleValidator::Notation mlqt_QDoubleValidator_Notation_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -621393601: return QDoubleValidator::StandardNotation;
  case 367126443: return QDoubleValidator::ScientificNotation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDoubleValidator::Notation)Long_val(Field(v, 1));
  }
}

value& mlqt_QDoubleValidator_Notation_to_ocaml(const QDoubleValidator::Notation& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDoubleValidator::StandardNotation: result = Val_long(-621393601); break;
  case QDoubleValidator::ScientificNotation: result = Val_long(367126443); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabletEvent::TabletDevice mlqt_QTabletEvent_TabletDevice_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 456758231: return QTabletEvent::NoDevice;
  case 893005837: return QTabletEvent::Puck;
  case -899192782: return QTabletEvent::Stylus;
  case -507237936: return QTabletEvent::Airbrush;
  case 58550215: return QTabletEvent::FourDMouse;
  case -1007379184: return QTabletEvent::XFreeEraser;
  case -717112304: return QTabletEvent::RotationStylus;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabletEvent::TabletDevice)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabletEvent_TabletDevice_to_ocaml(const QTabletEvent::TabletDevice& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabletEvent::NoDevice: result = Val_long(456758231); break;
  case QTabletEvent::Puck: result = Val_long(893005837); break;
  case QTabletEvent::Stylus: result = Val_long(-899192782); break;
  case QTabletEvent::Airbrush: result = Val_long(-507237936); break;
  case QTabletEvent::FourDMouse: result = Val_long(58550215); break;
  case QTabletEvent::XFreeEraser: result = Val_long(-1007379184); break;
  case QTabletEvent::RotationStylus: result = Val_long(-717112304); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabletEvent::PointerType mlqt_QTabletEvent_PointerType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 393821811: return QTabletEvent::UnknownPointer;
  case 4000953: return QTabletEvent::Pen;
  case -209911050: return QTabletEvent::Cursor;
  case -87862036: return QTabletEvent::Eraser;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabletEvent::PointerType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabletEvent_PointerType_to_ocaml(const QTabletEvent::PointerType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabletEvent::UnknownPointer: result = Val_long(393821811); break;
  case QTabletEvent::Pen: result = Val_long(4000953); break;
  case QTabletEvent::Cursor: result = Val_long(-209911050); break;
  case QTabletEvent::Eraser: result = Val_long(-87862036); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QContextMenuEvent::Reason mlqt_QContextMenuEvent_Reason_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 529696261: return QContextMenuEvent::Mouse;
  case -1042581305: return QContextMenuEvent::Keyboard;
  case -912009552: return QContextMenuEvent::Other;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QContextMenuEvent::Reason)Long_val(Field(v, 1));
  }
}

value& mlqt_QContextMenuEvent_Reason_to_ocaml(const QContextMenuEvent::Reason& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QContextMenuEvent::Mouse: result = Val_long(529696261); break;
  case QContextMenuEvent::Keyboard: result = Val_long(-1042581305); break;
  case QContextMenuEvent::Other: result = Val_long(-912009552); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLWindow::UpdateBehavior mlqt_QOpenGLWindow_UpdateBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1379145: return QOpenGLWindow::NoPartialUpdate;
  case -942110305: return QOpenGLWindow::PartialUpdateBlit;
  case 362599335: return QOpenGLWindow::PartialUpdateBlend;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLWindow::UpdateBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLWindow_UpdateBehavior_to_ocaml(const QOpenGLWindow::UpdateBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLWindow::NoPartialUpdate: result = Val_long(1379145); break;
  case QOpenGLWindow::PartialUpdateBlit: result = Val_long(-942110305); break;
  case QOpenGLWindow::PartialUpdateBlend: result = Val_long(362599335); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTreeWidgetItem::ItemType mlqt_QTreeWidgetItem_ItemType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QTreeWidgetItem::Type;
  case -377491771: return QTreeWidgetItem::UserType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTreeWidgetItem::ItemType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTreeWidgetItem_ItemType_to_ocaml(const QTreeWidgetItem::ItemType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTreeWidgetItem::Type: result = Val_long(937565914); break;
  case QTreeWidgetItem::UserType: result = Val_long(-377491771); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTreeWidgetItem::ChildIndicatorPolicy mlqt_QTreeWidgetItem_ChildIndicatorPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -876856590: return QTreeWidgetItem::ShowIndicator;
  case 755647393: return QTreeWidgetItem::DontShowIndicator;
  case 750774394: return QTreeWidgetItem::DontShowIndicatorWhenChildless;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTreeWidgetItem::ChildIndicatorPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QTreeWidgetItem_ChildIndicatorPolicy_to_ocaml(const QTreeWidgetItem::ChildIndicatorPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTreeWidgetItem::ShowIndicator: result = Val_long(-876856590); break;
  case QTreeWidgetItem::DontShowIndicator: result = Val_long(755647393); break;
  case QTreeWidgetItem::DontShowIndicatorWhenChildless: result = Val_long(750774394); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileIconProvider::IconType mlqt_QFileIconProvider_IconType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -545784517: return QFileIconProvider::Computer;
  case -337252932: return QFileIconProvider::Desktop;
  case 232304312: return QFileIconProvider::Trashcan;
  case 655223950: return QFileIconProvider::Network;
  case -219555606: return QFileIconProvider::Drive;
  case 774171342: return QFileIconProvider::Folder;
  case 781515420: return QFileIconProvider::File;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileIconProvider::IconType)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileIconProvider_IconType_to_ocaml(const QFileIconProvider::IconType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileIconProvider::Computer: result = Val_long(-545784517); break;
  case QFileIconProvider::Desktop: result = Val_long(-337252932); break;
  case QFileIconProvider::Trashcan: result = Val_long(232304312); break;
  case QFileIconProvider::Network: result = Val_long(655223950); break;
  case QFileIconProvider::Drive: result = Val_long(-219555606); break;
  case QFileIconProvider::Folder: result = Val_long(774171342); break;
  case QFileIconProvider::File: result = Val_long(781515420); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileIconProvider::Option mlqt_QFileIconProvider_Option_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 341789684: return QFileIconProvider::DontUseCustomDirectoryIcons;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileIconProvider::Option)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileIconProvider_Option_to_ocaml(const QFileIconProvider::Option& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileIconProvider::DontUseCustomDirectoryIcons: result = Val_long(341789684); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGestureRecognizer::ResultFlag mlqt_QGestureRecognizer_ResultFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -950194894: return QGestureRecognizer::Ignore;
  case -540319807: return QGestureRecognizer::MayBeGesture;
  case 1071503441: return QGestureRecognizer::TriggerGesture;
  case 902697558: return QGestureRecognizer::FinishGesture;
  case 812148751: return QGestureRecognizer::CancelGesture;
  case -994093929: return QGestureRecognizer::ResultState_Mask;
  case 354906501: return QGestureRecognizer::ConsumeEventHint;
  case -671490745: return QGestureRecognizer::ResultHint_Mask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGestureRecognizer::ResultFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGestureRecognizer_ResultFlag_to_ocaml(const QGestureRecognizer::ResultFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGestureRecognizer::Ignore: result = Val_long(-950194894); break;
  case QGestureRecognizer::MayBeGesture: result = Val_long(-540319807); break;
  case QGestureRecognizer::TriggerGesture: result = Val_long(1071503441); break;
  case QGestureRecognizer::FinishGesture: result = Val_long(902697558); break;
  case QGestureRecognizer::CancelGesture: result = Val_long(812148751); break;
  case QGestureRecognizer::ResultState_Mask: result = Val_long(-994093929); break;
  case QGestureRecognizer::ConsumeEventHint: result = Val_long(354906501); break;
  case QGestureRecognizer::ResultHint_Mask: result = Val_long(-671490745); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTreeWidgetItemIterator::IteratorFlag mlqt_QTreeWidgetItemIterator_IteratorFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 3256577: return QTreeWidgetItemIterator::All;
  case 19559306: return QTreeWidgetItemIterator::Hidden;
  case -346964803: return QTreeWidgetItemIterator::NotHidden;
  case 186574459: return QTreeWidgetItemIterator::Selected;
  case 769791444: return QTreeWidgetItemIterator::Unselected;
  case 987478710: return QTreeWidgetItemIterator::Selectable;
  case -498394775: return QTreeWidgetItemIterator::NotSelectable;
  case 411352781: return QTreeWidgetItemIterator::DragEnabled;
  case -353138256: return QTreeWidgetItemIterator::DragDisabled;
  case 612270066: return QTreeWidgetItemIterator::DropEnabled;
  case -645740309: return QTreeWidgetItemIterator::DropDisabled;
  case 659789465: return QTreeWidgetItemIterator::HasChildren;
  case -679943488: return QTreeWidgetItemIterator::NoChildren;
  case -529147129: return QTreeWidgetItemIterator::Checked;
  case -659644812: return QTreeWidgetItemIterator::NotChecked;
  case -880661407: return QTreeWidgetItemIterator::Enabled;
  case -709493348: return QTreeWidgetItemIterator::Disabled;
  case 794280132: return QTreeWidgetItemIterator::Editable;
  case -389415753: return QTreeWidgetItemIterator::NotEditable;
  case -533395529: return QTreeWidgetItemIterator::UserFlag;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTreeWidgetItemIterator::IteratorFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTreeWidgetItemIterator_IteratorFlag_to_ocaml(const QTreeWidgetItemIterator::IteratorFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTreeWidgetItemIterator::All: result = Val_long(3256577); break;
  case QTreeWidgetItemIterator::Hidden: result = Val_long(19559306); break;
  case QTreeWidgetItemIterator::NotHidden: result = Val_long(-346964803); break;
  case QTreeWidgetItemIterator::Selected: result = Val_long(186574459); break;
  case QTreeWidgetItemIterator::Unselected: result = Val_long(769791444); break;
  case QTreeWidgetItemIterator::Selectable: result = Val_long(987478710); break;
  case QTreeWidgetItemIterator::NotSelectable: result = Val_long(-498394775); break;
  case QTreeWidgetItemIterator::DragEnabled: result = Val_long(411352781); break;
  case QTreeWidgetItemIterator::DragDisabled: result = Val_long(-353138256); break;
  case QTreeWidgetItemIterator::DropEnabled: result = Val_long(612270066); break;
  case QTreeWidgetItemIterator::DropDisabled: result = Val_long(-645740309); break;
  case QTreeWidgetItemIterator::HasChildren: result = Val_long(659789465); break;
  case QTreeWidgetItemIterator::NoChildren: result = Val_long(-679943488); break;
  case QTreeWidgetItemIterator::Checked: result = Val_long(-529147129); break;
  case QTreeWidgetItemIterator::NotChecked: result = Val_long(-659644812); break;
  case QTreeWidgetItemIterator::Enabled: result = Val_long(-880661407); break;
  case QTreeWidgetItemIterator::Disabled: result = Val_long(-709493348); break;
  case QTreeWidgetItemIterator::Editable: result = Val_long(794280132); break;
  case QTreeWidgetItemIterator::NotEditable: result = Val_long(-389415753); break;
  case QTreeWidgetItemIterator::UserFlag: result = Val_long(-533395529); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScrollerProperties::OvershootPolicy mlqt_QScrollerProperties_OvershootPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -75702068: return QScrollerProperties::OvershootWhenScrollable;
  case 183349877: return QScrollerProperties::OvershootAlwaysOff;
  case -490306343: return QScrollerProperties::OvershootAlwaysOn;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScrollerProperties::OvershootPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QScrollerProperties_OvershootPolicy_to_ocaml(const QScrollerProperties::OvershootPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScrollerProperties::OvershootWhenScrollable: result = Val_long(-75702068); break;
  case QScrollerProperties::OvershootAlwaysOff: result = Val_long(183349877); break;
  case QScrollerProperties::OvershootAlwaysOn: result = Val_long(-490306343); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScrollerProperties::FrameRates mlqt_QScrollerProperties_FrameRates_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1003883683: return QScrollerProperties::Standard;
  case 409727811: return QScrollerProperties::Fps60;
  case 409727142: return QScrollerProperties::Fps30;
  case 409726919: return QScrollerProperties::Fps20;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScrollerProperties::FrameRates)Long_val(Field(v, 1));
  }
}

value& mlqt_QScrollerProperties_FrameRates_to_ocaml(const QScrollerProperties::FrameRates& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScrollerProperties::Standard: result = Val_long(-1003883683); break;
  case QScrollerProperties::Fps60: result = Val_long(409727811); break;
  case QScrollerProperties::Fps30: result = Val_long(409727142); break;
  case QScrollerProperties::Fps20: result = Val_long(409726919); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScrollerProperties::ScrollMetric mlqt_QScrollerProperties_ScrollMetric_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -905778713: return QScrollerProperties::MousePressEventDelay;
  case -68194045: return QScrollerProperties::DragStartDistance;
  case -131436014: return QScrollerProperties::DragVelocitySmoothingFactor;
  case -263416641: return QScrollerProperties::AxisLockThreshold;
  case -1060733542: return QScrollerProperties::ScrollingCurve;
  case 129389038: return QScrollerProperties::DecelerationFactor;
  case 590744043: return QScrollerProperties::MinimumVelocity;
  case -951036419: return QScrollerProperties::MaximumVelocity;
  case -262433798: return QScrollerProperties::MaximumClickThroughVelocity;
  case 451428252: return QScrollerProperties::AcceleratingFlickMaximumTime;
  case 398100832: return QScrollerProperties::AcceleratingFlickSpeedupFactor;
  case -1057090856: return QScrollerProperties::SnapPositionRatio;
  case -420939881: return QScrollerProperties::SnapTime;
  case 899506951: return QScrollerProperties::OvershootDragResistanceFactor;
  case -963988541: return QScrollerProperties::OvershootDragDistanceFactor;
  case -906788260: return QScrollerProperties::OvershootScrollDistanceFactor;
  case 282923653: return QScrollerProperties::OvershootScrollTime;
  case -654649927: return QScrollerProperties::HorizontalOvershootPolicy;
  case 712880743: return QScrollerProperties::VerticalOvershootPolicy;
  case -621284979: return QScrollerProperties::FrameRate;
  case 388861778: return QScrollerProperties::ScrollMetricCount;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScrollerProperties::ScrollMetric)Long_val(Field(v, 1));
  }
}

value& mlqt_QScrollerProperties_ScrollMetric_to_ocaml(const QScrollerProperties::ScrollMetric& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScrollerProperties::MousePressEventDelay: result = Val_long(-905778713); break;
  case QScrollerProperties::DragStartDistance: result = Val_long(-68194045); break;
  case QScrollerProperties::DragVelocitySmoothingFactor: result = Val_long(-131436014); break;
  case QScrollerProperties::AxisLockThreshold: result = Val_long(-263416641); break;
  case QScrollerProperties::ScrollingCurve: result = Val_long(-1060733542); break;
  case QScrollerProperties::DecelerationFactor: result = Val_long(129389038); break;
  case QScrollerProperties::MinimumVelocity: result = Val_long(590744043); break;
  case QScrollerProperties::MaximumVelocity: result = Val_long(-951036419); break;
  case QScrollerProperties::MaximumClickThroughVelocity: result = Val_long(-262433798); break;
  case QScrollerProperties::AcceleratingFlickMaximumTime: result = Val_long(451428252); break;
  case QScrollerProperties::AcceleratingFlickSpeedupFactor: result = Val_long(398100832); break;
  case QScrollerProperties::SnapPositionRatio: result = Val_long(-1057090856); break;
  case QScrollerProperties::SnapTime: result = Val_long(-420939881); break;
  case QScrollerProperties::OvershootDragResistanceFactor: result = Val_long(899506951); break;
  case QScrollerProperties::OvershootDragDistanceFactor: result = Val_long(-963988541); break;
  case QScrollerProperties::OvershootScrollDistanceFactor: result = Val_long(-906788260); break;
  case QScrollerProperties::OvershootScrollTime: result = Val_long(282923653); break;
  case QScrollerProperties::HorizontalOvershootPolicy: result = Val_long(-654649927); break;
  case QScrollerProperties::VerticalOvershootPolicy: result = Val_long(712880743); break;
  case QScrollerProperties::FrameRate: result = Val_long(-621284979); break;
  case QScrollerProperties::ScrollMetricCount: result = Val_long(388861778); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTableWidgetItem::ItemType mlqt_QTableWidgetItem_ItemType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QTableWidgetItem::Type;
  case -377491771: return QTableWidgetItem::UserType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTableWidgetItem::ItemType)Long_val(Field(v, 1));
  }
}

value& mlqt_QTableWidgetItem_ItemType_to_ocaml(const QTableWidgetItem::ItemType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTableWidgetItem::Type: result = Val_long(937565914); break;
  case QTableWidgetItem::UserType: result = Val_long(-377491771); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsItem::GraphicsItemFlag mlqt_QGraphicsItem_GraphicsItemFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -740709391: return QGraphicsItem::ItemIsMovable;
  case 779328755: return QGraphicsItem::ItemIsSelectable;
  case 629894581: return QGraphicsItem::ItemIsFocusable;
  case -758441962: return QGraphicsItem::ItemClipsToShape;
  case -750302057: return QGraphicsItem::ItemClipsChildrenToShape;
  case -144788484: return QGraphicsItem::ItemIgnoresTransformations;
  case -488990029: return QGraphicsItem::ItemIgnoresParentOpacity;
  case 201107022: return QGraphicsItem::ItemDoesntPropagateOpacityToChildren;
  case 35629154: return QGraphicsItem::ItemStacksBehindParent;
  case 202220910: return QGraphicsItem::ItemUsesExtendedStyleOption;
  case -969614014: return QGraphicsItem::ItemHasNoContents;
  case -269428903: return QGraphicsItem::ItemSendsGeometryChanges;
  case -643758605: return QGraphicsItem::ItemAcceptsInputMethod;
  case -169464959: return QGraphicsItem::ItemNegativeZStacksBehindParent;
  case 470626759: return QGraphicsItem::ItemIsPanel;
  case 629405945: return QGraphicsItem::ItemIsFocusScope;
  case 868000646: return QGraphicsItem::ItemSendsScenePositionChanges;
  case 231326046: return QGraphicsItem::ItemStopsClickFocusPropagation;
  case 317991935: return QGraphicsItem::ItemStopsFocusHandling;
  case 913810219: return QGraphicsItem::ItemContainsChildrenInShape;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsItem::GraphicsItemFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsItem_GraphicsItemFlag_to_ocaml(const QGraphicsItem::GraphicsItemFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsItem::ItemIsMovable: result = Val_long(-740709391); break;
  case QGraphicsItem::ItemIsSelectable: result = Val_long(779328755); break;
  case QGraphicsItem::ItemIsFocusable: result = Val_long(629894581); break;
  case QGraphicsItem::ItemClipsToShape: result = Val_long(-758441962); break;
  case QGraphicsItem::ItemClipsChildrenToShape: result = Val_long(-750302057); break;
  case QGraphicsItem::ItemIgnoresTransformations: result = Val_long(-144788484); break;
  case QGraphicsItem::ItemIgnoresParentOpacity: result = Val_long(-488990029); break;
  case QGraphicsItem::ItemDoesntPropagateOpacityToChildren: result = Val_long(201107022); break;
  case QGraphicsItem::ItemStacksBehindParent: result = Val_long(35629154); break;
  case QGraphicsItem::ItemUsesExtendedStyleOption: result = Val_long(202220910); break;
  case QGraphicsItem::ItemHasNoContents: result = Val_long(-969614014); break;
  case QGraphicsItem::ItemSendsGeometryChanges: result = Val_long(-269428903); break;
  case QGraphicsItem::ItemAcceptsInputMethod: result = Val_long(-643758605); break;
  case QGraphicsItem::ItemNegativeZStacksBehindParent: result = Val_long(-169464959); break;
  case QGraphicsItem::ItemIsPanel: result = Val_long(470626759); break;
  case QGraphicsItem::ItemIsFocusScope: result = Val_long(629405945); break;
  case QGraphicsItem::ItemSendsScenePositionChanges: result = Val_long(868000646); break;
  case QGraphicsItem::ItemStopsClickFocusPropagation: result = Val_long(231326046); break;
  case QGraphicsItem::ItemStopsFocusHandling: result = Val_long(317991935); break;
  case QGraphicsItem::ItemContainsChildrenInShape: result = Val_long(913810219); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsItem::GraphicsItemChange mlqt_QGraphicsItem_GraphicsItemChange_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -791141492: return QGraphicsItem::ItemPositionChange;
  case -604463004: return QGraphicsItem::ItemMatrixChange;
  case 583055951: return QGraphicsItem::ItemVisibleChange;
  case -75482210: return QGraphicsItem::ItemEnabledChange;
  case -12321090: return QGraphicsItem::ItemSelectedChange;
  case -502922227: return QGraphicsItem::ItemParentChange;
  case 334621031: return QGraphicsItem::ItemChildAddedChange;
  case 567857159: return QGraphicsItem::ItemChildRemovedChange;
  case 319452169: return QGraphicsItem::ItemTransformChange;
  case 659515606: return QGraphicsItem::ItemPositionHasChanged;
  case -234865709: return QGraphicsItem::ItemTransformHasChanged;
  case -74384023: return QGraphicsItem::ItemSceneChange;
  case -279044839: return QGraphicsItem::ItemVisibleHasChanged;
  case -1055264280: return QGraphicsItem::ItemEnabledHasChanged;
  case -229784312: return QGraphicsItem::ItemSelectedHasChanged;
  case -610394665: return QGraphicsItem::ItemParentHasChanged;
  case -1049168589: return QGraphicsItem::ItemSceneHasChanged;
  case 199825081: return QGraphicsItem::ItemCursorChange;
  case -228723069: return QGraphicsItem::ItemCursorHasChanged;
  case -205319808: return QGraphicsItem::ItemToolTipChange;
  case -59088694: return QGraphicsItem::ItemToolTipHasChanged;
  case 485064100: return QGraphicsItem::ItemFlagsChange;
  case 794729144: return QGraphicsItem::ItemFlagsHaveChanged;
  case 171492154: return QGraphicsItem::ItemZValueChange;
  case -156993660: return QGraphicsItem::ItemZValueHasChanged;
  case -1020155800: return QGraphicsItem::ItemOpacityChange;
  case -891122766: return QGraphicsItem::ItemOpacityHasChanged;
  case 827721788: return QGraphicsItem::ItemScenePositionHasChanged;
  case 285138401: return QGraphicsItem::ItemRotationChange;
  case -345345621: return QGraphicsItem::ItemRotationHasChanged;
  case 1030124839: return QGraphicsItem::ItemScaleChange;
  case 653665265: return QGraphicsItem::ItemScaleHasChanged;
  case -1065004127: return QGraphicsItem::ItemTransformOriginPointChange;
  case -994130069: return QGraphicsItem::ItemTransformOriginPointHasChanged;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsItem::GraphicsItemChange)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsItem_GraphicsItemChange_to_ocaml(const QGraphicsItem::GraphicsItemChange& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsItem::ItemPositionChange: result = Val_long(-791141492); break;
  case QGraphicsItem::ItemMatrixChange: result = Val_long(-604463004); break;
  case QGraphicsItem::ItemVisibleChange: result = Val_long(583055951); break;
  case QGraphicsItem::ItemEnabledChange: result = Val_long(-75482210); break;
  case QGraphicsItem::ItemSelectedChange: result = Val_long(-12321090); break;
  case QGraphicsItem::ItemParentChange: result = Val_long(-502922227); break;
  case QGraphicsItem::ItemChildAddedChange: result = Val_long(334621031); break;
  case QGraphicsItem::ItemChildRemovedChange: result = Val_long(567857159); break;
  case QGraphicsItem::ItemTransformChange: result = Val_long(319452169); break;
  case QGraphicsItem::ItemPositionHasChanged: result = Val_long(659515606); break;
  case QGraphicsItem::ItemTransformHasChanged: result = Val_long(-234865709); break;
  case QGraphicsItem::ItemSceneChange: result = Val_long(-74384023); break;
  case QGraphicsItem::ItemVisibleHasChanged: result = Val_long(-279044839); break;
  case QGraphicsItem::ItemEnabledHasChanged: result = Val_long(-1055264280); break;
  case QGraphicsItem::ItemSelectedHasChanged: result = Val_long(-229784312); break;
  case QGraphicsItem::ItemParentHasChanged: result = Val_long(-610394665); break;
  case QGraphicsItem::ItemSceneHasChanged: result = Val_long(-1049168589); break;
  case QGraphicsItem::ItemCursorChange: result = Val_long(199825081); break;
  case QGraphicsItem::ItemCursorHasChanged: result = Val_long(-228723069); break;
  case QGraphicsItem::ItemToolTipChange: result = Val_long(-205319808); break;
  case QGraphicsItem::ItemToolTipHasChanged: result = Val_long(-59088694); break;
  case QGraphicsItem::ItemFlagsChange: result = Val_long(485064100); break;
  case QGraphicsItem::ItemFlagsHaveChanged: result = Val_long(794729144); break;
  case QGraphicsItem::ItemZValueChange: result = Val_long(171492154); break;
  case QGraphicsItem::ItemZValueHasChanged: result = Val_long(-156993660); break;
  case QGraphicsItem::ItemOpacityChange: result = Val_long(-1020155800); break;
  case QGraphicsItem::ItemOpacityHasChanged: result = Val_long(-891122766); break;
  case QGraphicsItem::ItemScenePositionHasChanged: result = Val_long(827721788); break;
  case QGraphicsItem::ItemRotationChange: result = Val_long(285138401); break;
  case QGraphicsItem::ItemRotationHasChanged: result = Val_long(-345345621); break;
  case QGraphicsItem::ItemScaleChange: result = Val_long(1030124839); break;
  case QGraphicsItem::ItemScaleHasChanged: result = Val_long(653665265); break;
  case QGraphicsItem::ItemTransformOriginPointChange: result = Val_long(-1065004127); break;
  case QGraphicsItem::ItemTransformOriginPointHasChanged: result = Val_long(-994130069); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsItem::CacheMode mlqt_QGraphicsItem_CacheMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -513194463: return QGraphicsItem::NoCache;
  case 1069172919: return QGraphicsItem::ItemCoordinateCache;
  case 814666900: return QGraphicsItem::DeviceCoordinateCache;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsItem::CacheMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsItem_CacheMode_to_ocaml(const QGraphicsItem::CacheMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsItem::NoCache: result = Val_long(-513194463); break;
  case QGraphicsItem::ItemCoordinateCache: result = Val_long(1069172919); break;
  case QGraphicsItem::DeviceCoordinateCache: result = Val_long(814666900); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsItem::PanelModality mlqt_QGraphicsItem_PanelModality_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 267682816: return QGraphicsItem::NonModal;
  case -831280471: return QGraphicsItem::PanelModal;
  case -600733855: return QGraphicsItem::SceneModal;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsItem::PanelModality)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsItem_PanelModality_to_ocaml(const QGraphicsItem::PanelModality& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsItem::NonModal: result = Val_long(267682816); break;
  case QGraphicsItem::PanelModal: result = Val_long(-831280471); break;
  case QGraphicsItem::SceneModal: result = Val_long(-600733855); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListWidgetItem::ItemType mlqt_QListWidgetItem_ItemType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QListWidgetItem::Type;
  case -377491771: return QListWidgetItem::UserType;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListWidgetItem::ItemType)Long_val(Field(v, 1));
  }
}

value& mlqt_QListWidgetItem_ItemType_to_ocaml(const QListWidgetItem::ItemType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListWidgetItem::Type: result = Val_long(937565914); break;
  case QListWidgetItem::UserType: result = Val_long(-377491771); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QColormap::Mode mlqt_QColormap_Mode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -251740343: return QColormap::Direct;
  case 772834257: return QColormap::Indexed;
  case 793050115: return QColormap::Gray;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QColormap::Mode)Long_val(Field(v, 1));
  }
}

value& mlqt_QColormap_Mode_to_ocaml(const QColormap::Mode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QColormap::Direct: result = Val_long(-251740343); break;
  case QColormap::Indexed: result = Val_long(772834257); break;
  case QColormap::Gray: result = Val_long(793050115); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturn::HintReturnType mlqt_QStyleHintReturn_HintReturnType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -824721481: return QStyleHintReturn::SH_Default;
  case 728237110: return QStyleHintReturn::SH_Mask;
  case 267790203: return QStyleHintReturn::SH_Variant;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturn::HintReturnType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturn_HintReturnType_to_ocaml(const QStyleHintReturn::HintReturnType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturn::SH_Default: result = Val_long(-824721481); break;
  case QStyleHintReturn::SH_Mask: result = Val_long(728237110); break;
  case QStyleHintReturn::SH_Variant: result = Val_long(267790203); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturn::StyleOptionType mlqt_QStyleHintReturn_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleHintReturn::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturn::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturn_StyleOptionType_to_ocaml(const QStyleHintReturn::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturn::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturn::StyleOptionVersion mlqt_QStyleHintReturn_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleHintReturn::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturn::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturn_StyleOptionVersion_to_ocaml(const QStyleHintReturn::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturn::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOption::OptionType mlqt_QStyleOption_OptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 326213310: return QStyleOption::SO_Default;
  case 911975513: return QStyleOption::SO_FocusRect;
  case 130165397: return QStyleOption::SO_Button;
  case -346939950: return QStyleOption::SO_Tab;
  case 210659765: return QStyleOption::SO_MenuItem;
  case -166538006: return QStyleOption::SO_Frame;
  case -718617437: return QStyleOption::SO_ProgressBar;
  case -501971056: return QStyleOption::SO_ToolBox;
  case 719442480: return QStyleOption::SO_Header;
  case -990144198: return QStyleOption::SO_DockWidget;
  case -1019137669: return QStyleOption::SO_ViewItem;
  case 657070359: return QStyleOption::SO_TabWidgetFrame;
  case -168037422: return QStyleOption::SO_TabBarBase;
  case 1012890984: return QStyleOption::SO_RubberBand;
  case -501974184: return QStyleOption::SO_ToolBar;
  case -800649119: return QStyleOption::SO_GraphicsItem;
  case -81843155: return QStyleOption::SO_Complex;
  case 501649092: return QStyleOption::SO_Slider;
  case 734355302: return QStyleOption::SO_SpinBox;
  case 797153677: return QStyleOption::SO_ToolButton;
  case 845965760: return QStyleOption::SO_ComboBox;
  case 220879486: return QStyleOption::SO_TitleBar;
  case -772568209: return QStyleOption::SO_GroupBox;
  case 513675158: return QStyleOption::SO_SizeGrip;
  case -814801275: return QStyleOption::SO_CustomBase;
  case 785437423: return QStyleOption::SO_ComplexCustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOption::OptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOption_OptionType_to_ocaml(const QStyleOption::OptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOption::SO_Default: result = Val_long(326213310); break;
  case QStyleOption::SO_FocusRect: result = Val_long(911975513); break;
  case QStyleOption::SO_Button: result = Val_long(130165397); break;
  case QStyleOption::SO_Tab: result = Val_long(-346939950); break;
  case QStyleOption::SO_MenuItem: result = Val_long(210659765); break;
  case QStyleOption::SO_Frame: result = Val_long(-166538006); break;
  case QStyleOption::SO_ProgressBar: result = Val_long(-718617437); break;
  case QStyleOption::SO_ToolBox: result = Val_long(-501971056); break;
  case QStyleOption::SO_Header: result = Val_long(719442480); break;
  case QStyleOption::SO_DockWidget: result = Val_long(-990144198); break;
  case QStyleOption::SO_ViewItem: result = Val_long(-1019137669); break;
  case QStyleOption::SO_TabWidgetFrame: result = Val_long(657070359); break;
  case QStyleOption::SO_TabBarBase: result = Val_long(-168037422); break;
  case QStyleOption::SO_RubberBand: result = Val_long(1012890984); break;
  case QStyleOption::SO_ToolBar: result = Val_long(-501974184); break;
  case QStyleOption::SO_GraphicsItem: result = Val_long(-800649119); break;
  case QStyleOption::SO_Complex: result = Val_long(-81843155); break;
  case QStyleOption::SO_Slider: result = Val_long(501649092); break;
  case QStyleOption::SO_SpinBox: result = Val_long(734355302); break;
  case QStyleOption::SO_ToolButton: result = Val_long(797153677); break;
  case QStyleOption::SO_ComboBox: result = Val_long(845965760); break;
  case QStyleOption::SO_TitleBar: result = Val_long(220879486); break;
  case QStyleOption::SO_GroupBox: result = Val_long(-772568209); break;
  case QStyleOption::SO_SizeGrip: result = Val_long(513675158); break;
  case QStyleOption::SO_CustomBase: result = Val_long(-814801275); break;
  case QStyleOption::SO_ComplexCustomBase: result = Val_long(785437423); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOption::StyleOptionType mlqt_QStyleOption_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOption::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOption::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOption_StyleOptionType_to_ocaml(const QStyleOption::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOption::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOption::StyleOptionVersion mlqt_QStyleOption_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOption::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOption::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOption_StyleOptionVersion_to_ocaml(const QStyleOption::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOption::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSizePolicy::PolicyFlag mlqt_QSizePolicy_PolicyFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -160443009: return QSizePolicy::GrowFlag;
  case 987389766: return QSizePolicy::ExpandFlag;
  case -692779211: return QSizePolicy::ShrinkFlag;
  case 983033342: return QSizePolicy::IgnoreFlag;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSizePolicy::PolicyFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QSizePolicy_PolicyFlag_to_ocaml(const QSizePolicy::PolicyFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSizePolicy::GrowFlag: result = Val_long(-160443009); break;
  case QSizePolicy::ExpandFlag: result = Val_long(987389766); break;
  case QSizePolicy::ShrinkFlag: result = Val_long(-692779211); break;
  case QSizePolicy::IgnoreFlag: result = Val_long(983033342); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSizePolicy::Policy mlqt_QSizePolicy_Policy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 332360020: return QSizePolicy::Fixed;
  case 423357870: return QSizePolicy::Minimum;
  case 677566400: return QSizePolicy::Maximum;
  case 124783905: return QSizePolicy::Preferred;
  case -936255686: return QSizePolicy::MinimumExpanding;
  case 1026945704: return QSizePolicy::Expanding;
  case 707419890: return QSizePolicy::Ignored;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSizePolicy::Policy)Long_val(Field(v, 1));
  }
}

value& mlqt_QSizePolicy_Policy_to_ocaml(const QSizePolicy::Policy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSizePolicy::Fixed: result = Val_long(332360020); break;
  case QSizePolicy::Minimum: result = Val_long(423357870); break;
  case QSizePolicy::Maximum: result = Val_long(677566400); break;
  case QSizePolicy::Preferred: result = Val_long(124783905); break;
  case QSizePolicy::MinimumExpanding: result = Val_long(-936255686); break;
  case QSizePolicy::Expanding: result = Val_long(1026945704); break;
  case QSizePolicy::Ignored: result = Val_long(707419890); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSizePolicy::ControlType mlqt_QSizePolicy_ControlType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 49972219: return QSizePolicy::DefaultType;
  case -238209255: return QSizePolicy::ButtonBox;
  case 110052931: return QSizePolicy::CheckBox;
  case -876695939: return QSizePolicy::ComboBox;
  case 431024141: return QSizePolicy::Frame;
  case -347746260: return QSizePolicy::GroupBox;
  case 48004564: return QSizePolicy::Label;
  case 848053268: return QSizePolicy::Line;
  case -638987202: return QSizePolicy::LineEdit;
  case 611371916: return QSizePolicy::PushButton;
  case 364309805: return QSizePolicy::RadioButton;
  case 614021697: return QSizePolicy::Slider;
  case 23642441: return QSizePolicy::SpinBox;
  case -820884519: return QSizePolicy::TabWidget;
  case -176273526: return QSizePolicy::ToolButton;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSizePolicy::ControlType)Long_val(Field(v, 1));
  }
}

value& mlqt_QSizePolicy_ControlType_to_ocaml(const QSizePolicy::ControlType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSizePolicy::DefaultType: result = Val_long(49972219); break;
  case QSizePolicy::ButtonBox: result = Val_long(-238209255); break;
  case QSizePolicy::CheckBox: result = Val_long(110052931); break;
  case QSizePolicy::ComboBox: result = Val_long(-876695939); break;
  case QSizePolicy::Frame: result = Val_long(431024141); break;
  case QSizePolicy::GroupBox: result = Val_long(-347746260); break;
  case QSizePolicy::Label: result = Val_long(48004564); break;
  case QSizePolicy::Line: result = Val_long(848053268); break;
  case QSizePolicy::LineEdit: result = Val_long(-638987202); break;
  case QSizePolicy::PushButton: result = Val_long(611371916); break;
  case QSizePolicy::RadioButton: result = Val_long(364309805); break;
  case QSizePolicy::Slider: result = Val_long(614021697); break;
  case QSizePolicy::SpinBox: result = Val_long(23642441); break;
  case QSizePolicy::TabWidget: result = Val_long(-820884519); break;
  case QSizePolicy::ToolButton: result = Val_long(-176273526); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QApplication::ColorSpec mlqt_QApplication_ColorSpec_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1002494364: return QApplication::NormalColor;
  case -1010077742: return QApplication::CustomColor;
  case 1001088036: return QApplication::ManyColor;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QApplication::ColorSpec)Long_val(Field(v, 1));
  }
}

value& mlqt_QApplication_ColorSpec_to_ocaml(const QApplication::ColorSpec& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QApplication::NormalColor: result = Val_long(1002494364); break;
  case QApplication::CustomColor: result = Val_long(-1010077742); break;
  case QApplication::ManyColor: result = Val_long(1001088036); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileSystemModel::Roles mlqt_QFileSystemModel_Roles_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 10707531: return QFileSystemModel::FileIconRole;
  case -918886793: return QFileSystemModel::FilePathRole;
  case -803029475: return QFileSystemModel::FileNameRole;
  case -425253048: return QFileSystemModel::FilePermissions;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileSystemModel::Roles)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileSystemModel_Roles_to_ocaml(const QFileSystemModel::Roles& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileSystemModel::FileIconRole: result = Val_long(10707531); break;
  case QFileSystemModel::FilePathRole: result = Val_long(-918886793); break;
  case QFileSystemModel::FileNameRole: result = Val_long(-803029475); break;
  case QFileSystemModel::FilePermissions: result = Val_long(-425253048); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDirModel::Roles mlqt_QDirModel_Roles_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 10707531: return QDirModel::FileIconRole;
  case -918886793: return QDirModel::FilePathRole;
  case -803029475: return QDirModel::FileNameRole;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDirModel::Roles)Long_val(Field(v, 1));
  }
}

value& mlqt_QDirModel_Roles_to_ocaml(const QDirModel::Roles& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDirModel::FileIconRole: result = Val_long(10707531); break;
  case QDirModel::FilePathRole: result = Val_long(-918886793); break;
  case QDirModel::FileNameRole: result = Val_long(-803029475); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionFocusRect::StyleOptionType mlqt_QStyleOptionFocusRect_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionFocusRect::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionFocusRect::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionFocusRect_StyleOptionType_to_ocaml(const QStyleOptionFocusRect::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionFocusRect::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionFocusRect::StyleOptionVersion mlqt_QStyleOptionFocusRect_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionFocusRect::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionFocusRect::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionFocusRect_StyleOptionVersion_to_ocaml(const QStyleOptionFocusRect::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionFocusRect::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionFrame::StyleOptionType mlqt_QStyleOptionFrame_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionFrame::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionFrame::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionFrame_StyleOptionType_to_ocaml(const QStyleOptionFrame::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionFrame::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionFrame::StyleOptionVersion mlqt_QStyleOptionFrame_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionFrame::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionFrame::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionFrame_StyleOptionVersion_to_ocaml(const QStyleOptionFrame::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionFrame::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionFrame::FrameFeature mlqt_QStyleOptionFrame_FrameFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionFrame::None;
  case 781662169: return QStyleOptionFrame::Flat;
  case -631199731: return QStyleOptionFrame::Rounded;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionFrame::FrameFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionFrame_FrameFeature_to_ocaml(const QStyleOptionFrame::FrameFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionFrame::None: result = Val_long(870530776); break;
  case QStyleOptionFrame::Flat: result = Val_long(781662169); break;
  case QStyleOptionFrame::Rounded: result = Val_long(-631199731); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTabWidgetFrame::StyleOptionType mlqt_QStyleOptionTabWidgetFrame_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionTabWidgetFrame::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTabWidgetFrame::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTabWidgetFrame_StyleOptionType_to_ocaml(const QStyleOptionTabWidgetFrame::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTabWidgetFrame::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTabWidgetFrame::StyleOptionVersion mlqt_QStyleOptionTabWidgetFrame_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionTabWidgetFrame::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTabWidgetFrame::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTabWidgetFrame_StyleOptionVersion_to_ocaml(const QStyleOptionTabWidgetFrame::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTabWidgetFrame::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTabBarBase::StyleOptionType mlqt_QStyleOptionTabBarBase_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionTabBarBase::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTabBarBase::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTabBarBase_StyleOptionType_to_ocaml(const QStyleOptionTabBarBase::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTabBarBase::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTabBarBase::StyleOptionVersion mlqt_QStyleOptionTabBarBase_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionTabBarBase::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTabBarBase::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTabBarBase_StyleOptionVersion_to_ocaml(const QStyleOptionTabBarBase::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTabBarBase::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionHeader::StyleOptionType mlqt_QStyleOptionHeader_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionHeader::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionHeader::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionHeader_StyleOptionType_to_ocaml(const QStyleOptionHeader::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionHeader::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionHeader::StyleOptionVersion mlqt_QStyleOptionHeader_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionHeader::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionHeader::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionHeader_StyleOptionVersion_to_ocaml(const QStyleOptionHeader::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionHeader::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionHeader::SectionPosition mlqt_QStyleOptionHeader_SectionPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -925296707: return QStyleOptionHeader::Beginning;
  case 15943541: return QStyleOptionHeader::Middle;
  case 3455931: return QStyleOptionHeader::End;
  case -388241205: return QStyleOptionHeader::OnlyOneSection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionHeader::SectionPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionHeader_SectionPosition_to_ocaml(const QStyleOptionHeader::SectionPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionHeader::Beginning: result = Val_long(-925296707); break;
  case QStyleOptionHeader::Middle: result = Val_long(15943541); break;
  case QStyleOptionHeader::End: result = Val_long(3455931); break;
  case QStyleOptionHeader::OnlyOneSection: result = Val_long(-388241205); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionHeader::SelectedPosition mlqt_QStyleOptionHeader_SelectedPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -82624299: return QStyleOptionHeader::NotAdjacent;
  case 789718872: return QStyleOptionHeader::NextIsSelected;
  case -57922660: return QStyleOptionHeader::PreviousIsSelected;
  case -892121932: return QStyleOptionHeader::NextAndPreviousAreSelected;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionHeader::SelectedPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionHeader_SelectedPosition_to_ocaml(const QStyleOptionHeader::SelectedPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionHeader::NotAdjacent: result = Val_long(-82624299); break;
  case QStyleOptionHeader::NextIsSelected: result = Val_long(789718872); break;
  case QStyleOptionHeader::PreviousIsSelected: result = Val_long(-57922660); break;
  case QStyleOptionHeader::NextAndPreviousAreSelected: result = Val_long(-892121932); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionHeader::SortIndicator mlqt_QStyleOptionHeader_SortIndicator_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionHeader::None;
  case -456394375: return QStyleOptionHeader::SortUp;
  case 530255616: return QStyleOptionHeader::SortDown;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionHeader::SortIndicator)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionHeader_SortIndicator_to_ocaml(const QStyleOptionHeader::SortIndicator& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionHeader::None: result = Val_long(870530776); break;
  case QStyleOptionHeader::SortUp: result = Val_long(-456394375); break;
  case QStyleOptionHeader::SortDown: result = Val_long(530255616); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionButton::StyleOptionType mlqt_QStyleOptionButton_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionButton::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionButton::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionButton_StyleOptionType_to_ocaml(const QStyleOptionButton::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionButton::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionButton::StyleOptionVersion mlqt_QStyleOptionButton_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionButton::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionButton::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionButton_StyleOptionVersion_to_ocaml(const QStyleOptionButton::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionButton::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionButton::ButtonFeature mlqt_QStyleOptionButton_ButtonFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionButton::None;
  case 781662169: return QStyleOptionButton::Flat;
  case -454128135: return QStyleOptionButton::HasMenu;
  case 474580339: return QStyleOptionButton::DefaultButton;
  case -799003516: return QStyleOptionButton::AutoDefaultButton;
  case 443418263: return QStyleOptionButton::CommandLinkButton;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionButton::ButtonFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionButton_ButtonFeature_to_ocaml(const QStyleOptionButton::ButtonFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionButton::None: result = Val_long(870530776); break;
  case QStyleOptionButton::Flat: result = Val_long(781662169); break;
  case QStyleOptionButton::HasMenu: result = Val_long(-454128135); break;
  case QStyleOptionButton::DefaultButton: result = Val_long(474580339); break;
  case QStyleOptionButton::AutoDefaultButton: result = Val_long(-799003516); break;
  case QStyleOptionButton::CommandLinkButton: result = Val_long(443418263); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::StyleOptionType mlqt_QStyleOptionTab_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionTab::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_StyleOptionType_to_ocaml(const QStyleOptionTab::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::StyleOptionVersion mlqt_QStyleOptionTab_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionTab::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_StyleOptionVersion_to_ocaml(const QStyleOptionTab::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::TabPosition mlqt_QStyleOptionTab_TabPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -925296707: return QStyleOptionTab::Beginning;
  case 15943541: return QStyleOptionTab::Middle;
  case 3455931: return QStyleOptionTab::End;
  case -219459013: return QStyleOptionTab::OnlyOneTab;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::TabPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_TabPosition_to_ocaml(const QStyleOptionTab::TabPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::Beginning: result = Val_long(-925296707); break;
  case QStyleOptionTab::Middle: result = Val_long(15943541); break;
  case QStyleOptionTab::End: result = Val_long(3455931); break;
  case QStyleOptionTab::OnlyOneTab: result = Val_long(-219459013); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::SelectedPosition mlqt_QStyleOptionTab_SelectedPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -82624299: return QStyleOptionTab::NotAdjacent;
  case 789718872: return QStyleOptionTab::NextIsSelected;
  case -57922660: return QStyleOptionTab::PreviousIsSelected;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::SelectedPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_SelectedPosition_to_ocaml(const QStyleOptionTab::SelectedPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::NotAdjacent: result = Val_long(-82624299); break;
  case QStyleOptionTab::NextIsSelected: result = Val_long(789718872); break;
  case QStyleOptionTab::PreviousIsSelected: result = Val_long(-57922660); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::CornerWidget mlqt_QStyleOptionTab_CornerWidget_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1001126841: return QStyleOptionTab::NoCornerWidgets;
  case 105254976: return QStyleOptionTab::LeftCornerWidget;
  case 942007125: return QStyleOptionTab::RightCornerWidget;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::CornerWidget)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_CornerWidget_to_ocaml(const QStyleOptionTab::CornerWidget& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::NoCornerWidgets: result = Val_long(1001126841); break;
  case QStyleOptionTab::LeftCornerWidget: result = Val_long(105254976); break;
  case QStyleOptionTab::RightCornerWidget: result = Val_long(942007125); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTab::TabFeature mlqt_QStyleOptionTab_TabFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionTab::None;
  case -326271341: return QStyleOptionTab::HasFrame;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTab::TabFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTab_TabFeature_to_ocaml(const QStyleOptionTab::TabFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTab::None: result = Val_long(870530776); break;
  case QStyleOptionTab::HasFrame: result = Val_long(-326271341); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBar::StyleOptionType mlqt_QStyleOptionToolBar_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionToolBar::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBar::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBar_StyleOptionType_to_ocaml(const QStyleOptionToolBar::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBar::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBar::StyleOptionVersion mlqt_QStyleOptionToolBar_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionToolBar::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBar::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBar_StyleOptionVersion_to_ocaml(const QStyleOptionToolBar::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBar::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBar::ToolBarPosition mlqt_QStyleOptionToolBar_ToolBarPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -925296707: return QStyleOptionToolBar::Beginning;
  case 15943541: return QStyleOptionToolBar::Middle;
  case 3455931: return QStyleOptionToolBar::End;
  case -807460806: return QStyleOptionToolBar::OnlyOne;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBar::ToolBarPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBar_ToolBarPosition_to_ocaml(const QStyleOptionToolBar::ToolBarPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBar::Beginning: result = Val_long(-925296707); break;
  case QStyleOptionToolBar::Middle: result = Val_long(15943541); break;
  case QStyleOptionToolBar::End: result = Val_long(3455931); break;
  case QStyleOptionToolBar::OnlyOne: result = Val_long(-807460806); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBar::ToolBarFeature mlqt_QStyleOptionToolBar_ToolBarFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionToolBar::None;
  case 356689486: return QStyleOptionToolBar::Movable;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBar::ToolBarFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBar_ToolBarFeature_to_ocaml(const QStyleOptionToolBar::ToolBarFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBar::None: result = Val_long(870530776); break;
  case QStyleOptionToolBar::Movable: result = Val_long(356689486); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionProgressBar::StyleOptionType mlqt_QStyleOptionProgressBar_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionProgressBar::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionProgressBar::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionProgressBar_StyleOptionType_to_ocaml(const QStyleOptionProgressBar::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionProgressBar::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionProgressBar::StyleOptionVersion mlqt_QStyleOptionProgressBar_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionProgressBar::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionProgressBar::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionProgressBar_StyleOptionVersion_to_ocaml(const QStyleOptionProgressBar::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionProgressBar::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionMenuItem::StyleOptionType mlqt_QStyleOptionMenuItem_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionMenuItem::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionMenuItem::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionMenuItem_StyleOptionType_to_ocaml(const QStyleOptionMenuItem::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionMenuItem::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionMenuItem::StyleOptionVersion mlqt_QStyleOptionMenuItem_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionMenuItem::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionMenuItem::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionMenuItem_StyleOptionVersion_to_ocaml(const QStyleOptionMenuItem::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionMenuItem::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionMenuItem::MenuItemType mlqt_QStyleOptionMenuItem_MenuItemType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -453122489: return QStyleOptionMenuItem::Normal;
  case -72264108: return QStyleOptionMenuItem::DefaultItem;
  case -749584315: return QStyleOptionMenuItem::Separator;
  case -475135201: return QStyleOptionMenuItem::SubMenu;
  case -435762726: return QStyleOptionMenuItem::Scroller;
  case 747326413: return QStyleOptionMenuItem::TearOff;
  case -285088690: return QStyleOptionMenuItem::Margin;
  case 522165402: return QStyleOptionMenuItem::EmptyArea;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionMenuItem::MenuItemType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionMenuItem_MenuItemType_to_ocaml(const QStyleOptionMenuItem::MenuItemType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionMenuItem::Normal: result = Val_long(-453122489); break;
  case QStyleOptionMenuItem::DefaultItem: result = Val_long(-72264108); break;
  case QStyleOptionMenuItem::Separator: result = Val_long(-749584315); break;
  case QStyleOptionMenuItem::SubMenu: result = Val_long(-475135201); break;
  case QStyleOptionMenuItem::Scroller: result = Val_long(-435762726); break;
  case QStyleOptionMenuItem::TearOff: result = Val_long(747326413); break;
  case QStyleOptionMenuItem::Margin: result = Val_long(-285088690); break;
  case QStyleOptionMenuItem::EmptyArea: result = Val_long(522165402); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionMenuItem::CheckType mlqt_QStyleOptionMenuItem_CheckType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -708566289: return QStyleOptionMenuItem::NotCheckable;
  case 407121086: return QStyleOptionMenuItem::Exclusive;
  case 554145329: return QStyleOptionMenuItem::NonExclusive;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionMenuItem::CheckType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionMenuItem_CheckType_to_ocaml(const QStyleOptionMenuItem::CheckType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionMenuItem::NotCheckable: result = Val_long(-708566289); break;
  case QStyleOptionMenuItem::Exclusive: result = Val_long(407121086); break;
  case QStyleOptionMenuItem::NonExclusive: result = Val_long(554145329); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionDockWidget::StyleOptionType mlqt_QStyleOptionDockWidget_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionDockWidget::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionDockWidget::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionDockWidget_StyleOptionType_to_ocaml(const QStyleOptionDockWidget::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionDockWidget::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionDockWidget::StyleOptionVersion mlqt_QStyleOptionDockWidget_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionDockWidget::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionDockWidget::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionDockWidget_StyleOptionVersion_to_ocaml(const QStyleOptionDockWidget::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionDockWidget::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionViewItem::StyleOptionType mlqt_QStyleOptionViewItem_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionViewItem::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionViewItem::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionViewItem_StyleOptionType_to_ocaml(const QStyleOptionViewItem::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionViewItem::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionViewItem::StyleOptionVersion mlqt_QStyleOptionViewItem_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionViewItem::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionViewItem::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionViewItem_StyleOptionVersion_to_ocaml(const QStyleOptionViewItem::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionViewItem::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionViewItem::Position mlqt_QStyleOptionViewItem_Position_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 847852583: return QStyleOptionViewItem::Left;
  case -57574468: return QStyleOptionViewItem::Right;
  case 4202101: return QStyleOptionViewItem::Top;
  case 437082891: return QStyleOptionViewItem::Bottom;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionViewItem::Position)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionViewItem_Position_to_ocaml(const QStyleOptionViewItem::Position& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionViewItem::Left: result = Val_long(847852583); break;
  case QStyleOptionViewItem::Right: result = Val_long(-57574468); break;
  case QStyleOptionViewItem::Top: result = Val_long(4202101); break;
  case QStyleOptionViewItem::Bottom: result = Val_long(437082891); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionViewItem::ViewItemFeature mlqt_QStyleOptionViewItem_ViewItemFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionViewItem::None;
  case -234513481: return QStyleOptionViewItem::WrapText;
  case -687429350: return QStyleOptionViewItem::Alternate;
  case -543829311: return QStyleOptionViewItem::HasCheckIndicator;
  case 1018107432: return QStyleOptionViewItem::HasDisplay;
  case 444013834: return QStyleOptionViewItem::HasDecoration;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionViewItem::ViewItemFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionViewItem_ViewItemFeature_to_ocaml(const QStyleOptionViewItem::ViewItemFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionViewItem::None: result = Val_long(870530776); break;
  case QStyleOptionViewItem::WrapText: result = Val_long(-234513481); break;
  case QStyleOptionViewItem::Alternate: result = Val_long(-687429350); break;
  case QStyleOptionViewItem::HasCheckIndicator: result = Val_long(-543829311); break;
  case QStyleOptionViewItem::HasDisplay: result = Val_long(1018107432); break;
  case QStyleOptionViewItem::HasDecoration: result = Val_long(444013834); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionViewItem::ViewItemPosition mlqt_QStyleOptionViewItem_ViewItemPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 144245463: return QStyleOptionViewItem::Invalid;
  case -925296707: return QStyleOptionViewItem::Beginning;
  case 15943541: return QStyleOptionViewItem::Middle;
  case 3455931: return QStyleOptionViewItem::End;
  case -807460806: return QStyleOptionViewItem::OnlyOne;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionViewItem::ViewItemPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionViewItem_ViewItemPosition_to_ocaml(const QStyleOptionViewItem::ViewItemPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionViewItem::Invalid: result = Val_long(144245463); break;
  case QStyleOptionViewItem::Beginning: result = Val_long(-925296707); break;
  case QStyleOptionViewItem::Middle: result = Val_long(15943541); break;
  case QStyleOptionViewItem::End: result = Val_long(3455931); break;
  case QStyleOptionViewItem::OnlyOne: result = Val_long(-807460806); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBox::StyleOptionType mlqt_QStyleOptionToolBox_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionToolBox::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBox::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBox_StyleOptionType_to_ocaml(const QStyleOptionToolBox::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBox::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBox::StyleOptionVersion mlqt_QStyleOptionToolBox_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionToolBox::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBox::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBox_StyleOptionVersion_to_ocaml(const QStyleOptionToolBox::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBox::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBox::TabPosition mlqt_QStyleOptionToolBox_TabPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -925296707: return QStyleOptionToolBox::Beginning;
  case 15943541: return QStyleOptionToolBox::Middle;
  case 3455931: return QStyleOptionToolBox::End;
  case -219459013: return QStyleOptionToolBox::OnlyOneTab;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBox::TabPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBox_TabPosition_to_ocaml(const QStyleOptionToolBox::TabPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBox::Beginning: result = Val_long(-925296707); break;
  case QStyleOptionToolBox::Middle: result = Val_long(15943541); break;
  case QStyleOptionToolBox::End: result = Val_long(3455931); break;
  case QStyleOptionToolBox::OnlyOneTab: result = Val_long(-219459013); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolBox::SelectedPosition mlqt_QStyleOptionToolBox_SelectedPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -82624299: return QStyleOptionToolBox::NotAdjacent;
  case 789718872: return QStyleOptionToolBox::NextIsSelected;
  case -57922660: return QStyleOptionToolBox::PreviousIsSelected;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolBox::SelectedPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolBox_SelectedPosition_to_ocaml(const QStyleOptionToolBox::SelectedPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolBox::NotAdjacent: result = Val_long(-82624299); break;
  case QStyleOptionToolBox::NextIsSelected: result = Val_long(789718872); break;
  case QStyleOptionToolBox::PreviousIsSelected: result = Val_long(-57922660); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionRubberBand::StyleOptionType mlqt_QStyleOptionRubberBand_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionRubberBand::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionRubberBand::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionRubberBand_StyleOptionType_to_ocaml(const QStyleOptionRubberBand::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionRubberBand::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionRubberBand::StyleOptionVersion mlqt_QStyleOptionRubberBand_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionRubberBand::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionRubberBand::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionRubberBand_StyleOptionVersion_to_ocaml(const QStyleOptionRubberBand::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionRubberBand::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionComplex::StyleOptionType mlqt_QStyleOptionComplex_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionComplex::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionComplex::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionComplex_StyleOptionType_to_ocaml(const QStyleOptionComplex::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionComplex::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionComplex::StyleOptionVersion mlqt_QStyleOptionComplex_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionComplex::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionComplex::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionComplex_StyleOptionVersion_to_ocaml(const QStyleOptionComplex::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionComplex::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionGraphicsItem::StyleOptionType mlqt_QStyleOptionGraphicsItem_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionGraphicsItem::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionGraphicsItem::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionGraphicsItem_StyleOptionType_to_ocaml(const QStyleOptionGraphicsItem::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionGraphicsItem::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionGraphicsItem::StyleOptionVersion mlqt_QStyleOptionGraphicsItem_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionGraphicsItem::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionGraphicsItem::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionGraphicsItem_StyleOptionVersion_to_ocaml(const QStyleOptionGraphicsItem::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionGraphicsItem::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLayout::SizeConstraint mlqt_QLayout_SizeConstraint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -658107748: return QLayout::SetDefaultConstraint;
  case -244286816: return QLayout::SetNoConstraint;
  case 519921997: return QLayout::SetMinimumSize;
  case 429694067: return QLayout::SetFixedSize;
  case -635978657: return QLayout::SetMaximumSize;
  case -862571842: return QLayout::SetMinAndMaxSize;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLayout::SizeConstraint)Long_val(Field(v, 1));
  }
}

value& mlqt_QLayout_SizeConstraint_to_ocaml(const QLayout::SizeConstraint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLayout::SetDefaultConstraint: result = Val_long(-658107748); break;
  case QLayout::SetNoConstraint: result = Val_long(-244286816); break;
  case QLayout::SetMinimumSize: result = Val_long(519921997); break;
  case QLayout::SetFixedSize: result = Val_long(429694067); break;
  case QLayout::SetMaximumSize: result = Val_long(-635978657); break;
  case QLayout::SetMinAndMaxSize: result = Val_long(-862571842); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturnMask::StyleOptionType mlqt_QStyleHintReturnMask_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleHintReturnMask::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturnMask::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturnMask_StyleOptionType_to_ocaml(const QStyleHintReturnMask::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturnMask::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturnMask::StyleOptionVersion mlqt_QStyleHintReturnMask_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleHintReturnMask::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturnMask::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturnMask_StyleOptionVersion_to_ocaml(const QStyleHintReturnMask::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturnMask::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturnVariant::StyleOptionType mlqt_QStyleHintReturnVariant_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleHintReturnVariant::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturnVariant::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturnVariant_StyleOptionType_to_ocaml(const QStyleHintReturnVariant::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturnVariant::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleHintReturnVariant::StyleOptionVersion mlqt_QStyleHintReturnVariant_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleHintReturnVariant::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleHintReturnVariant::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleHintReturnVariant_StyleOptionVersion_to_ocaml(const QStyleHintReturnVariant::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleHintReturnVariant::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWidget::RenderFlag mlqt_QWidget_RenderFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 36910146: return QWidget::DrawWindowBackground;
  case 242217347: return QWidget::DrawChildren;
  case 1060117310: return QWidget::IgnoreMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWidget::RenderFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QWidget_RenderFlag_to_ocaml(const QWidget::RenderFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWidget::DrawWindowBackground: result = Val_long(36910146); break;
  case QWidget::DrawChildren: result = Val_long(242217347); break;
  case QWidget::IgnoreMask: result = Val_long(1060117310); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsPixmapItem::ShapeMode mlqt_QGraphicsPixmapItem_ShapeMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 609753717: return QGraphicsPixmapItem::MaskShape;
  case -97722567: return QGraphicsPixmapItem::BoundingRectShape;
  case 218671755: return QGraphicsPixmapItem::HeuristicMaskShape;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsPixmapItem::ShapeMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsPixmapItem_ShapeMode_to_ocaml(const QGraphicsPixmapItem::ShapeMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsPixmapItem::MaskShape: result = Val_long(609753717); break;
  case QGraphicsPixmapItem::BoundingRectShape: result = Val_long(-97722567); break;
  case QGraphicsPixmapItem::HeuristicMaskShape: result = Val_long(218671755); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsEffect::ChangeFlag mlqt_QGraphicsEffect_ChangeFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1019765631: return QGraphicsEffect::SourceAttached;
  case -123878259: return QGraphicsEffect::SourceDetached;
  case 615753457: return QGraphicsEffect::SourceBoundingRectChanged;
  case 653500750: return QGraphicsEffect::SourceInvalidated;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsEffect::ChangeFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsEffect_ChangeFlag_to_ocaml(const QGraphicsEffect::ChangeFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsEffect::SourceAttached: result = Val_long(1019765631); break;
  case QGraphicsEffect::SourceDetached: result = Val_long(-123878259); break;
  case QGraphicsEffect::SourceBoundingRectChanged: result = Val_long(615753457); break;
  case QGraphicsEffect::SourceInvalidated: result = Val_long(653500750); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsEffect::PixmapPadMode mlqt_QGraphicsEffect_PixmapPadMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 853342066: return QGraphicsEffect::NoPad;
  case -593915792: return QGraphicsEffect::PadToTransparentBorder;
  case -5205311: return QGraphicsEffect::PadToEffectiveBoundingRect;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsEffect::PixmapPadMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsEffect_PixmapPadMode_to_ocaml(const QGraphicsEffect::PixmapPadMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsEffect::NoPad: result = Val_long(853342066); break;
  case QGraphicsEffect::PadToTransparentBorder: result = Val_long(-593915792); break;
  case QGraphicsEffect::PadToEffectiveBoundingRect: result = Val_long(-5205311); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsScene::ItemIndexMethod mlqt_QGraphicsScene_ItemIndexMethod_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1026850955: return QGraphicsScene::BspTreeIndex;
  case -563525903: return QGraphicsScene::NoIndex;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsScene::ItemIndexMethod)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsScene_ItemIndexMethod_to_ocaml(const QGraphicsScene::ItemIndexMethod& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsScene::BspTreeIndex: result = Val_long(-1026850955); break;
  case QGraphicsScene::NoIndex: result = Val_long(-563525903); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsScene::SceneLayer mlqt_QGraphicsScene_SceneLayer_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 293521310: return QGraphicsScene::ItemLayer;
  case 322397923: return QGraphicsScene::BackgroundLayer;
  case 409681390: return QGraphicsScene::ForegroundLayer;
  case -924356253: return QGraphicsScene::AllLayers;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsScene::SceneLayer)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsScene_SceneLayer_to_ocaml(const QGraphicsScene::SceneLayer& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsScene::ItemLayer: result = Val_long(293521310); break;
  case QGraphicsScene::BackgroundLayer: result = Val_long(322397923); break;
  case QGraphicsScene::ForegroundLayer: result = Val_long(409681390); break;
  case QGraphicsScene::AllLayers: result = Val_long(-924356253); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemDelegate::EndEditHint mlqt_QAbstractItemDelegate_EndEditHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -919080312: return QAbstractItemDelegate::NoHint;
  case -827893776: return QAbstractItemDelegate::EditNextItem;
  case 185167412: return QAbstractItemDelegate::EditPreviousItem;
  case -792377295: return QAbstractItemDelegate::SubmitModelCache;
  case 287085821: return QAbstractItemDelegate::RevertModelCache;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemDelegate::EndEditHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemDelegate_EndEditHint_to_ocaml(const QAbstractItemDelegate::EndEditHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemDelegate::NoHint: result = Val_long(-919080312); break;
  case QAbstractItemDelegate::EditNextItem: result = Val_long(-827893776); break;
  case QAbstractItemDelegate::EditPreviousItem: result = Val_long(185167412); break;
  case QAbstractItemDelegate::SubmitModelCache: result = Val_long(-792377295); break;
  case QAbstractItemDelegate::RevertModelCache: result = Val_long(287085821); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDataWidgetMapper::SubmitPolicy mlqt_QDataWidgetMapper_SubmitPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -58561273: return QDataWidgetMapper::AutoSubmit;
  case 687161118: return QDataWidgetMapper::ManualSubmit;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDataWidgetMapper::SubmitPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QDataWidgetMapper_SubmitPolicy_to_ocaml(const QDataWidgetMapper::SubmitPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDataWidgetMapper::AutoSubmit: result = Val_long(-58561273); break;
  case QDataWidgetMapper::ManualSubmit: result = Val_long(687161118); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAction::MenuRole mlqt_QAction_MenuRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -807886729: return QAction::NoRole;
  case -250918317: return QAction::TextHeuristicRole;
  case -974638952: return QAction::ApplicationSpecificRole;
  case 727398918: return QAction::AboutQtRole;
  case -986812349: return QAction::AboutRole;
  case 559059502: return QAction::PreferencesRole;
  case 381789957: return QAction::QuitRole;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAction::MenuRole)Long_val(Field(v, 1));
  }
}

value& mlqt_QAction_MenuRole_to_ocaml(const QAction::MenuRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAction::NoRole: result = Val_long(-807886729); break;
  case QAction::TextHeuristicRole: result = Val_long(-250918317); break;
  case QAction::ApplicationSpecificRole: result = Val_long(-974638952); break;
  case QAction::AboutQtRole: result = Val_long(727398918); break;
  case QAction::AboutRole: result = Val_long(-986812349); break;
  case QAction::PreferencesRole: result = Val_long(559059502); break;
  case QAction::QuitRole: result = Val_long(381789957); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAction::Priority mlqt_QAction_Priority_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -981870600: return QAction::LowPriority;
  case 607665355: return QAction::NormalPriority;
  case -32903930: return QAction::HighPriority;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAction::Priority)Long_val(Field(v, 1));
  }
}

value& mlqt_QAction_Priority_to_ocaml(const QAction::Priority& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAction::LowPriority: result = Val_long(-981870600); break;
  case QAction::NormalPriority: result = Val_long(607665355); break;
  case QAction::HighPriority: result = Val_long(-32903930); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAction::ActionEvent mlqt_QAction_ActionEvent_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -214926056: return QAction::Trigger;
  case 1049777564: return QAction::Hover;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAction::ActionEvent)Long_val(Field(v, 1));
  }
}

value& mlqt_QAction_ActionEvent_to_ocaml(const QAction::ActionEvent& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAction::Trigger: result = Val_long(-214926056); break;
  case QAction::Hover: result = Val_long(1049777564); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGesture::GestureCancelPolicy mlqt_QGesture_GestureCancelPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 782595442: return QGesture::CancelNone;
  case 776519651: return QGesture::CancelAllInContext;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGesture::GestureCancelPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QGesture_GestureCancelPolicy_to_ocaml(const QGesture::GestureCancelPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGesture::CancelNone: result = Val_long(782595442); break;
  case QGesture::CancelAllInContext: result = Val_long(776519651); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::StateFlag mlqt_QStyle_StateFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 979323686: return QStyle::State_None;
  case 480527571: return QStyle::State_Enabled;
  case 263395814: return QStyle::State_Raised;
  case -44429450: return QStyle::State_Sunken;
  case -660028735: return QStyle::State_Off;
  case 233280511: return QStyle::State_NoChange;
  case 960037389: return QStyle::State_On;
  case -844708135: return QStyle::State_DownArrow;
  case -989053998: return QStyle::State_Horizontal;
  case 390508940: return QStyle::State_HasFocus;
  case -659778073: return QStyle::State_Top;
  case -1059088679: return QStyle::State_Bottom;
  case -475280375: return QStyle::State_FocusAtBorder;
  case -735536177: return QStyle::State_AutoRaise;
  case 135185131: return QStyle::State_MouseOver;
  case 544725440: return QStyle::State_UpArrow;
  case 936522185: return QStyle::State_Selected;
  case -240324172: return QStyle::State_Active;
  case 770917342: return QStyle::State_Window;
  case 990460984: return QStyle::State_Open;
  case -154197843: return QStyle::State_Children;
  case 924122497: return QStyle::State_Item;
  case -49779372: return QStyle::State_Sibling;
  case -1003821718: return QStyle::State_Editing;
  case 58992979: return QStyle::State_KeyboardFocusChange;
  case -133208240: return QStyle::State_ReadOnly;
  case 950474905: return QStyle::State_Small;
  case 967935749: return QStyle::State_Mini;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::StateFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_StateFlag_to_ocaml(const QStyle::StateFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::State_None: result = Val_long(979323686); break;
  case QStyle::State_Enabled: result = Val_long(480527571); break;
  case QStyle::State_Raised: result = Val_long(263395814); break;
  case QStyle::State_Sunken: result = Val_long(-44429450); break;
  case QStyle::State_Off: result = Val_long(-660028735); break;
  case QStyle::State_NoChange: result = Val_long(233280511); break;
  case QStyle::State_On: result = Val_long(960037389); break;
  case QStyle::State_DownArrow: result = Val_long(-844708135); break;
  case QStyle::State_Horizontal: result = Val_long(-989053998); break;
  case QStyle::State_HasFocus: result = Val_long(390508940); break;
  case QStyle::State_Top: result = Val_long(-659778073); break;
  case QStyle::State_Bottom: result = Val_long(-1059088679); break;
  case QStyle::State_FocusAtBorder: result = Val_long(-475280375); break;
  case QStyle::State_AutoRaise: result = Val_long(-735536177); break;
  case QStyle::State_MouseOver: result = Val_long(135185131); break;
  case QStyle::State_UpArrow: result = Val_long(544725440); break;
  case QStyle::State_Selected: result = Val_long(936522185); break;
  case QStyle::State_Active: result = Val_long(-240324172); break;
  case QStyle::State_Window: result = Val_long(770917342); break;
  case QStyle::State_Open: result = Val_long(990460984); break;
  case QStyle::State_Children: result = Val_long(-154197843); break;
  case QStyle::State_Item: result = Val_long(924122497); break;
  case QStyle::State_Sibling: result = Val_long(-49779372); break;
  case QStyle::State_Editing: result = Val_long(-1003821718); break;
  case QStyle::State_KeyboardFocusChange: result = Val_long(58992979); break;
  case QStyle::State_ReadOnly: result = Val_long(-133208240); break;
  case QStyle::State_Small: result = Val_long(950474905); break;
  case QStyle::State_Mini: result = Val_long(967935749); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::PrimitiveElement mlqt_QStyle_PrimitiveElement_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 715447043: return QStyle::PE_Frame;
  case 696239248: return QStyle::PE_FrameDefaultButton;
  case 854991866: return QStyle::PE_FrameDockWidget;
  case 458011033: return QStyle::PE_FrameFocusRect;
  case -678304209: return QStyle::PE_FrameGroupBox;
  case -969545151: return QStyle::PE_FrameLineEdit;
  case -82539966: return QStyle::PE_FrameMenu;
  case -225994178: return QStyle::PE_FrameStatusBar;
  case 626620534: return QStyle::PE_FrameTabWidget;
  case 505186131: return QStyle::PE_FrameWindow;
  case 975171301: return QStyle::PE_FrameButtonBevel;
  case -710366387: return QStyle::PE_FrameButtonTool;
  case -470385006: return QStyle::PE_FrameTabBarBase;
  case -1023702209: return QStyle::PE_PanelButtonCommand;
  case 508640622: return QStyle::PE_PanelButtonBevel;
  case 1020936420: return QStyle::PE_PanelButtonTool;
  case -872199494: return QStyle::PE_PanelMenuBar;
  case -65089887: return QStyle::PE_PanelToolBar;
  case -275375080: return QStyle::PE_PanelLineEdit;
  case 252038246: return QStyle::PE_IndicatorArrowDown;
  case 340253707: return QStyle::PE_IndicatorArrowLeft;
  case 564509528: return QStyle::PE_IndicatorArrowRight;
  case -46370465: return QStyle::PE_IndicatorArrowUp;
  case 796600871: return QStyle::PE_IndicatorBranch;
  case -821446456: return QStyle::PE_IndicatorButtonDropDown;
  case 72300203: return QStyle::PE_IndicatorViewItemCheck;
  case -960143128: return QStyle::PE_IndicatorCheckBox;
  case -296035336: return QStyle::PE_IndicatorDockWidgetResizeHandle;
  case -123268265: return QStyle::PE_IndicatorHeaderArrow;
  case -413272463: return QStyle::PE_IndicatorMenuCheckMark;
  case -794703205: return QStyle::PE_IndicatorProgressChunk;
  case -136493144: return QStyle::PE_IndicatorRadioButton;
  case -70719991: return QStyle::PE_IndicatorSpinDown;
  case -23231255: return QStyle::PE_IndicatorSpinMinus;
  case 62205185: return QStyle::PE_IndicatorSpinPlus;
  case -636957630: return QStyle::PE_IndicatorSpinUp;
  case -523361666: return QStyle::PE_IndicatorToolBarHandle;
  case -405198001: return QStyle::PE_IndicatorToolBarSeparator;
  case 861689491: return QStyle::PE_PanelTipLabel;
  case -17598862: return QStyle::PE_IndicatorTabTear;
  case 126600105: return QStyle::PE_PanelScrollAreaCorner;
  case -989345746: return QStyle::PE_Widget;
  case 922921801: return QStyle::PE_IndicatorColumnViewArrow;
  case 114331615: return QStyle::PE_IndicatorItemViewItemDrop;
  case 55807813: return QStyle::PE_PanelItemViewItem;
  case 453305384: return QStyle::PE_PanelItemViewRow;
  case -44891001: return QStyle::PE_PanelStatusBar;
  case -789614616: return QStyle::PE_IndicatorTabClose;
  case -575454055: return QStyle::PE_PanelMenu;
  case 503408650: return QStyle::PE_IndicatorTabTearRight;
  case -323789364: return QStyle::PE_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::PrimitiveElement)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_PrimitiveElement_to_ocaml(const QStyle::PrimitiveElement& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::PE_Frame: result = Val_long(715447043); break;
  case QStyle::PE_FrameDefaultButton: result = Val_long(696239248); break;
  case QStyle::PE_FrameDockWidget: result = Val_long(854991866); break;
  case QStyle::PE_FrameFocusRect: result = Val_long(458011033); break;
  case QStyle::PE_FrameGroupBox: result = Val_long(-678304209); break;
  case QStyle::PE_FrameLineEdit: result = Val_long(-969545151); break;
  case QStyle::PE_FrameMenu: result = Val_long(-82539966); break;
  case QStyle::PE_FrameStatusBar: result = Val_long(-225994178); break;
  case QStyle::PE_FrameTabWidget: result = Val_long(626620534); break;
  case QStyle::PE_FrameWindow: result = Val_long(505186131); break;
  case QStyle::PE_FrameButtonBevel: result = Val_long(975171301); break;
  case QStyle::PE_FrameButtonTool: result = Val_long(-710366387); break;
  case QStyle::PE_FrameTabBarBase: result = Val_long(-470385006); break;
  case QStyle::PE_PanelButtonCommand: result = Val_long(-1023702209); break;
  case QStyle::PE_PanelButtonBevel: result = Val_long(508640622); break;
  case QStyle::PE_PanelButtonTool: result = Val_long(1020936420); break;
  case QStyle::PE_PanelMenuBar: result = Val_long(-872199494); break;
  case QStyle::PE_PanelToolBar: result = Val_long(-65089887); break;
  case QStyle::PE_PanelLineEdit: result = Val_long(-275375080); break;
  case QStyle::PE_IndicatorArrowDown: result = Val_long(252038246); break;
  case QStyle::PE_IndicatorArrowLeft: result = Val_long(340253707); break;
  case QStyle::PE_IndicatorArrowRight: result = Val_long(564509528); break;
  case QStyle::PE_IndicatorArrowUp: result = Val_long(-46370465); break;
  case QStyle::PE_IndicatorBranch: result = Val_long(796600871); break;
  case QStyle::PE_IndicatorButtonDropDown: result = Val_long(-821446456); break;
  case QStyle::PE_IndicatorViewItemCheck: result = Val_long(72300203); break;
  case QStyle::PE_IndicatorCheckBox: result = Val_long(-960143128); break;
  case QStyle::PE_IndicatorDockWidgetResizeHandle: result = Val_long(-296035336); break;
  case QStyle::PE_IndicatorHeaderArrow: result = Val_long(-123268265); break;
  case QStyle::PE_IndicatorMenuCheckMark: result = Val_long(-413272463); break;
  case QStyle::PE_IndicatorProgressChunk: result = Val_long(-794703205); break;
  case QStyle::PE_IndicatorRadioButton: result = Val_long(-136493144); break;
  case QStyle::PE_IndicatorSpinDown: result = Val_long(-70719991); break;
  case QStyle::PE_IndicatorSpinMinus: result = Val_long(-23231255); break;
  case QStyle::PE_IndicatorSpinPlus: result = Val_long(62205185); break;
  case QStyle::PE_IndicatorSpinUp: result = Val_long(-636957630); break;
  case QStyle::PE_IndicatorToolBarHandle: result = Val_long(-523361666); break;
  case QStyle::PE_IndicatorToolBarSeparator: result = Val_long(-405198001); break;
  case QStyle::PE_PanelTipLabel: result = Val_long(861689491); break;
  case QStyle::PE_IndicatorTabTear: result = Val_long(-17598862); break;
  case QStyle::PE_PanelScrollAreaCorner: result = Val_long(126600105); break;
  case QStyle::PE_Widget: result = Val_long(-989345746); break;
  case QStyle::PE_IndicatorColumnViewArrow: result = Val_long(922921801); break;
  case QStyle::PE_IndicatorItemViewItemDrop: result = Val_long(114331615); break;
  case QStyle::PE_PanelItemViewItem: result = Val_long(55807813); break;
  case QStyle::PE_PanelItemViewRow: result = Val_long(453305384); break;
  case QStyle::PE_PanelStatusBar: result = Val_long(-44891001); break;
  case QStyle::PE_IndicatorTabClose: result = Val_long(-789614616); break;
  case QStyle::PE_PanelMenu: result = Val_long(-575454055); break;
  case QStyle::PE_IndicatorTabTearRight: result = Val_long(503408650); break;
  case QStyle::PE_CustomBase: result = Val_long(-323789364); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::ControlElement mlqt_QStyle_ControlElement_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -252445367: return QStyle::CE_PushButton;
  case -65867151: return QStyle::CE_PushButtonBevel;
  case 996194283: return QStyle::CE_PushButtonLabel;
  case -596795712: return QStyle::CE_CheckBox;
  case 584541972: return QStyle::CE_CheckBoxLabel;
  case 1006584016: return QStyle::CE_RadioButton;
  case -338670844: return QStyle::CE_RadioButtonLabel;
  case 608220986: return QStyle::CE_TabBarTab;
  case 46475655: return QStyle::CE_TabBarTabShape;
  case -162048934: return QStyle::CE_TabBarTabLabel;
  case -254761047: return QStyle::CE_ProgressBar;
  case 833313923: return QStyle::CE_ProgressBarGroove;
  case 109296099: return QStyle::CE_ProgressBarContents;
  case -878808693: return QStyle::CE_ProgressBarLabel;
  case -71366929: return QStyle::CE_MenuItem;
  case -441422442: return QStyle::CE_MenuScroller;
  case -175050520: return QStyle::CE_MenuVMargin;
  case 795112026: return QStyle::CE_MenuHMargin;
  case 989641649: return QStyle::CE_MenuTearoff;
  case -739951266: return QStyle::CE_MenuEmptyArea;
  case -473507798: return QStyle::CE_MenuBarItem;
  case 536221251: return QStyle::CE_MenuBarEmptyArea;
  case -281345235: return QStyle::CE_ToolButtonLabel;
  case 1070779626: return QStyle::CE_Header;
  case -459001317: return QStyle::CE_HeaderSection;
  case 115908778: return QStyle::CE_HeaderLabel;
  case -802782113: return QStyle::CE_ToolBoxTab;
  case 231648464: return QStyle::CE_SizeGrip;
  case 54545380: return QStyle::CE_Splitter;
  case -824353502: return QStyle::CE_RubberBand;
  case -139454460: return QStyle::CE_DockWidgetTitle;
  case -429668052: return QStyle::CE_ScrollBarAddLine;
  case -131458037: return QStyle::CE_ScrollBarSubLine;
  case -385709177: return QStyle::CE_ScrollBarAddPage;
  case -87499162: return QStyle::CE_ScrollBarSubPage;
  case -472575094: return QStyle::CE_ScrollBarSlider;
  case -992113945: return QStyle::CE_ScrollBarFirst;
  case -872416385: return QStyle::CE_ScrollBarLast;
  case 202985234: return QStyle::CE_FocusFrame;
  case 25291930: return QStyle::CE_ComboBoxLabel;
  case 536798046: return QStyle::CE_ToolBar;
  case 216831554: return QStyle::CE_ToolBoxTabShape;
  case 8306965: return QStyle::CE_ToolBoxTabLabel;
  case -257629584: return QStyle::CE_HeaderEmptyArea;
  case -233339606: return QStyle::CE_ColumnViewGrip;
  case 136195432: return QStyle::CE_ItemViewItem;
  case -41330035: return QStyle::CE_ShapedFrame;
  case -504562113: return QStyle::CE_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::ControlElement)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_ControlElement_to_ocaml(const QStyle::ControlElement& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::CE_PushButton: result = Val_long(-252445367); break;
  case QStyle::CE_PushButtonBevel: result = Val_long(-65867151); break;
  case QStyle::CE_PushButtonLabel: result = Val_long(996194283); break;
  case QStyle::CE_CheckBox: result = Val_long(-596795712); break;
  case QStyle::CE_CheckBoxLabel: result = Val_long(584541972); break;
  case QStyle::CE_RadioButton: result = Val_long(1006584016); break;
  case QStyle::CE_RadioButtonLabel: result = Val_long(-338670844); break;
  case QStyle::CE_TabBarTab: result = Val_long(608220986); break;
  case QStyle::CE_TabBarTabShape: result = Val_long(46475655); break;
  case QStyle::CE_TabBarTabLabel: result = Val_long(-162048934); break;
  case QStyle::CE_ProgressBar: result = Val_long(-254761047); break;
  case QStyle::CE_ProgressBarGroove: result = Val_long(833313923); break;
  case QStyle::CE_ProgressBarContents: result = Val_long(109296099); break;
  case QStyle::CE_ProgressBarLabel: result = Val_long(-878808693); break;
  case QStyle::CE_MenuItem: result = Val_long(-71366929); break;
  case QStyle::CE_MenuScroller: result = Val_long(-441422442); break;
  case QStyle::CE_MenuVMargin: result = Val_long(-175050520); break;
  case QStyle::CE_MenuHMargin: result = Val_long(795112026); break;
  case QStyle::CE_MenuTearoff: result = Val_long(989641649); break;
  case QStyle::CE_MenuEmptyArea: result = Val_long(-739951266); break;
  case QStyle::CE_MenuBarItem: result = Val_long(-473507798); break;
  case QStyle::CE_MenuBarEmptyArea: result = Val_long(536221251); break;
  case QStyle::CE_ToolButtonLabel: result = Val_long(-281345235); break;
  case QStyle::CE_Header: result = Val_long(1070779626); break;
  case QStyle::CE_HeaderSection: result = Val_long(-459001317); break;
  case QStyle::CE_HeaderLabel: result = Val_long(115908778); break;
  case QStyle::CE_ToolBoxTab: result = Val_long(-802782113); break;
  case QStyle::CE_SizeGrip: result = Val_long(231648464); break;
  case QStyle::CE_Splitter: result = Val_long(54545380); break;
  case QStyle::CE_RubberBand: result = Val_long(-824353502); break;
  case QStyle::CE_DockWidgetTitle: result = Val_long(-139454460); break;
  case QStyle::CE_ScrollBarAddLine: result = Val_long(-429668052); break;
  case QStyle::CE_ScrollBarSubLine: result = Val_long(-131458037); break;
  case QStyle::CE_ScrollBarAddPage: result = Val_long(-385709177); break;
  case QStyle::CE_ScrollBarSubPage: result = Val_long(-87499162); break;
  case QStyle::CE_ScrollBarSlider: result = Val_long(-472575094); break;
  case QStyle::CE_ScrollBarFirst: result = Val_long(-992113945); break;
  case QStyle::CE_ScrollBarLast: result = Val_long(-872416385); break;
  case QStyle::CE_FocusFrame: result = Val_long(202985234); break;
  case QStyle::CE_ComboBoxLabel: result = Val_long(25291930); break;
  case QStyle::CE_ToolBar: result = Val_long(536798046); break;
  case QStyle::CE_ToolBoxTabShape: result = Val_long(216831554); break;
  case QStyle::CE_ToolBoxTabLabel: result = Val_long(8306965); break;
  case QStyle::CE_HeaderEmptyArea: result = Val_long(-257629584); break;
  case QStyle::CE_ColumnViewGrip: result = Val_long(-233339606); break;
  case QStyle::CE_ItemViewItem: result = Val_long(136195432); break;
  case QStyle::CE_ShapedFrame: result = Val_long(-41330035); break;
  case QStyle::CE_CustomBase: result = Val_long(-504562113); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::SubElement mlqt_QStyle_SubElement_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -82045037: return QStyle::SE_PushButtonContents;
  case -800408445: return QStyle::SE_PushButtonFocusRect;
  case -141321505: return QStyle::SE_CheckBoxIndicator;
  case 519136266: return QStyle::SE_CheckBoxContents;
  case 119035948: return QStyle::SE_CheckBoxFocusRect;
  case 244083868: return QStyle::SE_CheckBoxClickRect;
  case -548964113: return QStyle::SE_RadioButtonIndicator;
  case -551618566: return QStyle::SE_RadioButtonContents;
  case -288606660: return QStyle::SE_RadioButtonFocusRect;
  case -163558740: return QStyle::SE_RadioButtonClickRect;
  case -174384974: return QStyle::SE_ComboBoxFocusRect;
  case 609929646: return QStyle::SE_SliderFocusRect;
  case 401974899: return QStyle::SE_ProgressBarGroove;
  case -882352173: return QStyle::SE_ProgressBarContents;
  case 477083035: return QStyle::SE_ProgressBarLabel;
  case -882072407: return QStyle::SE_ToolBoxTabContents;
  case 834524826: return QStyle::SE_HeaderLabel;
  case -409058705: return QStyle::SE_HeaderArrow;
  case -807572918: return QStyle::SE_TabWidgetTabBar;
  case 455118865: return QStyle::SE_TabWidgetTabPane;
  case -315736765: return QStyle::SE_TabWidgetTabContents;
  case -139212536: return QStyle::SE_TabWidgetLeftCorner;
  case 384848261: return QStyle::SE_TabWidgetRightCorner;
  case 689649023: return QStyle::SE_ItemViewItemCheckIndicator;
  case -956441118: return QStyle::SE_TabBarTearIndicator;
  case -103446192: return QStyle::SE_TreeViewDisclosureItem;
  case 634578181: return QStyle::SE_LineEditContents;
  case -894283110: return QStyle::SE_FrameContents;
  case -80796378: return QStyle::SE_DockWidgetCloseButton;
  case -402631158: return QStyle::SE_DockWidgetFloatButton;
  case -353888116: return QStyle::SE_DockWidgetTitleBarText;
  case -81512803: return QStyle::SE_DockWidgetIcon;
  case -445237299: return QStyle::SE_CheckBoxLayoutItem;
  case 693890183: return QStyle::SE_ComboBoxLayoutItem;
  case 133338031: return QStyle::SE_DateTimeEditLayoutItem;
  case -743346623: return QStyle::SE_DialogButtonBoxLayoutItem;
  case 75046628: return QStyle::SE_LabelLayoutItem;
  case -629508138: return QStyle::SE_ProgressBarLayoutItem;
  case 677093270: return QStyle::SE_PushButtonLayoutItem;
  case 992257981: return QStyle::SE_RadioButtonLayoutItem;
  case -497608693: return QStyle::SE_SliderLayoutItem;
  case -83996327: return QStyle::SE_SpinBoxLayoutItem;
  case -438352620: return QStyle::SE_ToolButtonLayoutItem;
  case 909896285: return QStyle::SE_FrameLayoutItem;
  case -612262154: return QStyle::SE_GroupBoxLayoutItem;
  case -561706327: return QStyle::SE_TabWidgetLayoutItem;
  case -869742392: return QStyle::SE_ItemViewItemDecoration;
  case -511099323: return QStyle::SE_ItemViewItemText;
  case -1035441020: return QStyle::SE_ItemViewItemFocusRect;
  case -371815645: return QStyle::SE_TabBarTabLeftButton;
  case 725602788: return QStyle::SE_TabBarTabRightButton;
  case 679175927: return QStyle::SE_TabBarTabText;
  case 170170039: return QStyle::SE_ShapedFrameContents;
  case -549369962: return QStyle::SE_ToolBarHandle;
  case 744346577: return QStyle::SE_TabBarScrollLeftButton;
  case 521675126: return QStyle::SE_TabBarScrollRightButton;
  case -69596518: return QStyle::SE_TabBarTearIndicatorRight;
  case 1039455823: return QStyle::SE_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::SubElement)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_SubElement_to_ocaml(const QStyle::SubElement& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::SE_PushButtonContents: result = Val_long(-82045037); break;
  case QStyle::SE_PushButtonFocusRect: result = Val_long(-800408445); break;
  case QStyle::SE_CheckBoxIndicator: result = Val_long(-141321505); break;
  case QStyle::SE_CheckBoxContents: result = Val_long(519136266); break;
  case QStyle::SE_CheckBoxFocusRect: result = Val_long(119035948); break;
  case QStyle::SE_CheckBoxClickRect: result = Val_long(244083868); break;
  case QStyle::SE_RadioButtonIndicator: result = Val_long(-548964113); break;
  case QStyle::SE_RadioButtonContents: result = Val_long(-551618566); break;
  case QStyle::SE_RadioButtonFocusRect: result = Val_long(-288606660); break;
  case QStyle::SE_RadioButtonClickRect: result = Val_long(-163558740); break;
  case QStyle::SE_ComboBoxFocusRect: result = Val_long(-174384974); break;
  case QStyle::SE_SliderFocusRect: result = Val_long(609929646); break;
  case QStyle::SE_ProgressBarGroove: result = Val_long(401974899); break;
  case QStyle::SE_ProgressBarContents: result = Val_long(-882352173); break;
  case QStyle::SE_ProgressBarLabel: result = Val_long(477083035); break;
  case QStyle::SE_ToolBoxTabContents: result = Val_long(-882072407); break;
  case QStyle::SE_HeaderLabel: result = Val_long(834524826); break;
  case QStyle::SE_HeaderArrow: result = Val_long(-409058705); break;
  case QStyle::SE_TabWidgetTabBar: result = Val_long(-807572918); break;
  case QStyle::SE_TabWidgetTabPane: result = Val_long(455118865); break;
  case QStyle::SE_TabWidgetTabContents: result = Val_long(-315736765); break;
  case QStyle::SE_TabWidgetLeftCorner: result = Val_long(-139212536); break;
  case QStyle::SE_TabWidgetRightCorner: result = Val_long(384848261); break;
  case QStyle::SE_ItemViewItemCheckIndicator: result = Val_long(689649023); break;
  case QStyle::SE_TabBarTearIndicator: result = Val_long(-956441118); break;
  case QStyle::SE_TreeViewDisclosureItem: result = Val_long(-103446192); break;
  case QStyle::SE_LineEditContents: result = Val_long(634578181); break;
  case QStyle::SE_FrameContents: result = Val_long(-894283110); break;
  case QStyle::SE_DockWidgetCloseButton: result = Val_long(-80796378); break;
  case QStyle::SE_DockWidgetFloatButton: result = Val_long(-402631158); break;
  case QStyle::SE_DockWidgetTitleBarText: result = Val_long(-353888116); break;
  case QStyle::SE_DockWidgetIcon: result = Val_long(-81512803); break;
  case QStyle::SE_CheckBoxLayoutItem: result = Val_long(-445237299); break;
  case QStyle::SE_ComboBoxLayoutItem: result = Val_long(693890183); break;
  case QStyle::SE_DateTimeEditLayoutItem: result = Val_long(133338031); break;
  case QStyle::SE_DialogButtonBoxLayoutItem: result = Val_long(-743346623); break;
  case QStyle::SE_LabelLayoutItem: result = Val_long(75046628); break;
  case QStyle::SE_ProgressBarLayoutItem: result = Val_long(-629508138); break;
  case QStyle::SE_PushButtonLayoutItem: result = Val_long(677093270); break;
  case QStyle::SE_RadioButtonLayoutItem: result = Val_long(992257981); break;
  case QStyle::SE_SliderLayoutItem: result = Val_long(-497608693); break;
  case QStyle::SE_SpinBoxLayoutItem: result = Val_long(-83996327); break;
  case QStyle::SE_ToolButtonLayoutItem: result = Val_long(-438352620); break;
  case QStyle::SE_FrameLayoutItem: result = Val_long(909896285); break;
  case QStyle::SE_GroupBoxLayoutItem: result = Val_long(-612262154); break;
  case QStyle::SE_TabWidgetLayoutItem: result = Val_long(-561706327); break;
  case QStyle::SE_ItemViewItemDecoration: result = Val_long(-869742392); break;
  case QStyle::SE_ItemViewItemText: result = Val_long(-511099323); break;
  case QStyle::SE_ItemViewItemFocusRect: result = Val_long(-1035441020); break;
  case QStyle::SE_TabBarTabLeftButton: result = Val_long(-371815645); break;
  case QStyle::SE_TabBarTabRightButton: result = Val_long(725602788); break;
  case QStyle::SE_TabBarTabText: result = Val_long(679175927); break;
  case QStyle::SE_ShapedFrameContents: result = Val_long(170170039); break;
  case QStyle::SE_ToolBarHandle: result = Val_long(-549369962); break;
  case QStyle::SE_TabBarScrollLeftButton: result = Val_long(744346577); break;
  case QStyle::SE_TabBarScrollRightButton: result = Val_long(521675126); break;
  case QStyle::SE_TabBarTearIndicatorRight: result = Val_long(-69596518); break;
  case QStyle::SE_CustomBase: result = Val_long(1039455823); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::ComplexControl mlqt_QStyle_ComplexControl_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1009978006: return QStyle::CC_SpinBox;
  case 554178364: return QStyle::CC_ComboBox;
  case 717321735: return QStyle::CC_ScrollBar;
  case -1066228416: return QStyle::CC_Slider;
  case 1048747529: return QStyle::CC_ToolButton;
  case -70907910: return QStyle::CC_TitleBar;
  case 207282447: return QStyle::CC_Dial;
  case -1064355605: return QStyle::CC_GroupBox;
  case 288801353: return QStyle::CC_MdiControls;
  case -563207423: return QStyle::CC_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::ComplexControl)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_ComplexControl_to_ocaml(const QStyle::ComplexControl& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::CC_SpinBox: result = Val_long(-1009978006); break;
  case QStyle::CC_ComboBox: result = Val_long(554178364); break;
  case QStyle::CC_ScrollBar: result = Val_long(717321735); break;
  case QStyle::CC_Slider: result = Val_long(-1066228416); break;
  case QStyle::CC_ToolButton: result = Val_long(1048747529); break;
  case QStyle::CC_TitleBar: result = Val_long(-70907910); break;
  case QStyle::CC_Dial: result = Val_long(207282447); break;
  case QStyle::CC_GroupBox: result = Val_long(-1064355605); break;
  case QStyle::CC_MdiControls: result = Val_long(288801353); break;
  case QStyle::CC_CustomBase: result = Val_long(-563207423); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::PixelMetric mlqt_QStyle_PixelMetric_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 695215778: return QStyle::PM_ButtonMargin;
  case -516874686: return QStyle::PM_ButtonDefaultIndicator;
  case -629201412: return QStyle::PM_MenuButtonIndicator;
  case -157401326: return QStyle::PM_ButtonShiftHorizontal;
  case -91654364: return QStyle::PM_ButtonShiftVertical;
  case -51867496: return QStyle::PM_DefaultFrameWidth;
  case 1029878592: return QStyle::PM_SpinBoxFrameWidth;
  case 346590136: return QStyle::PM_ComboBoxFrameWidth;
  case -798065497: return QStyle::PM_MaximumDragDistance;
  case -1046687570: return QStyle::PM_ScrollBarExtent;
  case 312762797: return QStyle::PM_ScrollBarSliderMin;
  case 1006754161: return QStyle::PM_SliderThickness;
  case 389764090: return QStyle::PM_SliderControlThickness;
  case -603816759: return QStyle::PM_SliderLength;
  case 20369408: return QStyle::PM_SliderTickmarkOffset;
  case -685709562: return QStyle::PM_SliderSpaceAvailable;
  case -696757578: return QStyle::PM_DockWidgetSeparatorExtent;
  case 333667019: return QStyle::PM_DockWidgetHandleExtent;
  case 675161458: return QStyle::PM_DockWidgetFrameWidth;
  case 871165362: return QStyle::PM_TabBarTabOverlap;
  case -50821261: return QStyle::PM_TabBarTabHSpace;
  case 368546981: return QStyle::PM_TabBarTabVSpace;
  case 595656408: return QStyle::PM_TabBarBaseHeight;
  case 372465526: return QStyle::PM_TabBarBaseOverlap;
  case 769709309: return QStyle::PM_ProgressBarChunkWidth;
  case -988982243: return QStyle::PM_SplitterWidth;
  case -341901116: return QStyle::PM_TitleBarHeight;
  case 982357922: return QStyle::PM_MenuScrollerHeight;
  case -1070228939: return QStyle::PM_MenuHMargin;
  case 107092163: return QStyle::PM_MenuVMargin;
  case -460833213: return QStyle::PM_MenuPanelWidth;
  case 544706707: return QStyle::PM_MenuTearoffHeight;
  case -236418092: return QStyle::PM_MenuDesktopFrameWidth;
  case 584530132: return QStyle::PM_MenuBarPanelWidth;
  case -881814018: return QStyle::PM_MenuBarItemSpacing;
  case 946096530: return QStyle::PM_MenuBarVMargin;
  case -231224572: return QStyle::PM_MenuBarHMargin;
  case -731878631: return QStyle::PM_IndicatorWidth;
  case 911000436: return QStyle::PM_IndicatorHeight;
  case -663772781: return QStyle::PM_ExclusiveIndicatorWidth;
  case 1066219450: return QStyle::PM_ExclusiveIndicatorHeight;
  case 673061934: return QStyle::PM_DialogButtonsSeparator;
  case 11105981: return QStyle::PM_DialogButtonsButtonWidth;
  case -907155632: return QStyle::PM_DialogButtonsButtonHeight;
  case 290329497: return QStyle::PM_MdiSubWindowFrameWidth;
  case 457461152: return QStyle::PM_MdiSubWindowMinimizedWidth;
  case 465958013: return QStyle::PM_HeaderMargin;
  case -812249731: return QStyle::PM_HeaderMarkSize;
  case 840957039: return QStyle::PM_HeaderGripMargin;
  case -938692303: return QStyle::PM_TabBarTabShiftHorizontal;
  case 841012099: return QStyle::PM_TabBarTabShiftVertical;
  case 605360039: return QStyle::PM_TabBarScrollButtonWidth;
  case -738004558: return QStyle::PM_ToolBarFrameWidth;
  case -744245493: return QStyle::PM_ToolBarHandleExtent;
  case -200680073: return QStyle::PM_ToolBarItemSpacing;
  case -822787910: return QStyle::PM_ToolBarItemMargin;
  case -391700874: return QStyle::PM_ToolBarSeparatorExtent;
  case 516858128: return QStyle::PM_ToolBarExtensionExtent;
  case 140284239: return QStyle::PM_SpinBoxSliderHeight;
  case -97860164: return QStyle::PM_DefaultTopLevelMargin;
  case -330939381: return QStyle::PM_DefaultChildMargin;
  case -517465766: return QStyle::PM_DefaultLayoutSpacing;
  case 746406835: return QStyle::PM_ToolBarIconSize;
  case 828716479: return QStyle::PM_ListViewIconSize;
  case 817282394: return QStyle::PM_IconViewIconSize;
  case 764336031: return QStyle::PM_SmallIconSize;
  case 956903059: return QStyle::PM_LargeIconSize;
  case -226009491: return QStyle::PM_FocusFrameVMargin;
  case 744153055: return QStyle::PM_FocusFrameHMargin;
  case 907484524: return QStyle::PM_ToolTipLabelFrameWidth;
  case 1039614868: return QStyle::PM_CheckBoxLabelSpacing;
  case -247325478: return QStyle::PM_TabBarIconSize;
  case 424401270: return QStyle::PM_SizeGripSize;
  case 886537965: return QStyle::PM_DockWidgetTitleMargin;
  case -568766496: return QStyle::PM_MessageBoxIconSize;
  case 927965262: return QStyle::PM_ButtonIconSize;
  case -127346796: return QStyle::PM_DockWidgetTitleBarButtonMargin;
  case 1049640250: return QStyle::PM_RadioButtonLabelSpacing;
  case -568619327: return QStyle::PM_LayoutLeftMargin;
  case 833425143: return QStyle::PM_LayoutTopMargin;
  case 957063294: return QStyle::PM_LayoutRightMargin;
  case 343724965: return QStyle::PM_LayoutBottomMargin;
  case -792847021: return QStyle::PM_LayoutHorizontalSpacing;
  case 425088769: return QStyle::PM_LayoutVerticalSpacing;
  case -670655959: return QStyle::PM_TabBar_ScrollButtonOverlap;
  case -221148671: return QStyle::PM_TextCursorWidth;
  case -182754916: return QStyle::PM_TabCloseIndicatorWidth;
  case 959020945: return QStyle::PM_TabCloseIndicatorHeight;
  case -192213784: return QStyle::PM_ScrollView_ScrollBarSpacing;
  case 199236844: return QStyle::PM_ScrollView_ScrollBarOverlap;
  case 670294378: return QStyle::PM_SubMenuOverlap;
  case 419540484: return QStyle::PM_TreeViewIndentation;
  case -253780264: return QStyle::PM_HeaderDefaultSectionSizeHorizontal;
  case 765540714: return QStyle::PM_HeaderDefaultSectionSizeVertical;
  case -245472567: return QStyle::PM_TitleBarButtonIconSize;
  case -804832464: return QStyle::PM_TitleBarButtonSize;
  case -89208124: return QStyle::PM_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::PixelMetric)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_PixelMetric_to_ocaml(const QStyle::PixelMetric& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::PM_ButtonMargin: result = Val_long(695215778); break;
  case QStyle::PM_ButtonDefaultIndicator: result = Val_long(-516874686); break;
  case QStyle::PM_MenuButtonIndicator: result = Val_long(-629201412); break;
  case QStyle::PM_ButtonShiftHorizontal: result = Val_long(-157401326); break;
  case QStyle::PM_ButtonShiftVertical: result = Val_long(-91654364); break;
  case QStyle::PM_DefaultFrameWidth: result = Val_long(-51867496); break;
  case QStyle::PM_SpinBoxFrameWidth: result = Val_long(1029878592); break;
  case QStyle::PM_ComboBoxFrameWidth: result = Val_long(346590136); break;
  case QStyle::PM_MaximumDragDistance: result = Val_long(-798065497); break;
  case QStyle::PM_ScrollBarExtent: result = Val_long(-1046687570); break;
  case QStyle::PM_ScrollBarSliderMin: result = Val_long(312762797); break;
  case QStyle::PM_SliderThickness: result = Val_long(1006754161); break;
  case QStyle::PM_SliderControlThickness: result = Val_long(389764090); break;
  case QStyle::PM_SliderLength: result = Val_long(-603816759); break;
  case QStyle::PM_SliderTickmarkOffset: result = Val_long(20369408); break;
  case QStyle::PM_SliderSpaceAvailable: result = Val_long(-685709562); break;
  case QStyle::PM_DockWidgetSeparatorExtent: result = Val_long(-696757578); break;
  case QStyle::PM_DockWidgetHandleExtent: result = Val_long(333667019); break;
  case QStyle::PM_DockWidgetFrameWidth: result = Val_long(675161458); break;
  case QStyle::PM_TabBarTabOverlap: result = Val_long(871165362); break;
  case QStyle::PM_TabBarTabHSpace: result = Val_long(-50821261); break;
  case QStyle::PM_TabBarTabVSpace: result = Val_long(368546981); break;
  case QStyle::PM_TabBarBaseHeight: result = Val_long(595656408); break;
  case QStyle::PM_TabBarBaseOverlap: result = Val_long(372465526); break;
  case QStyle::PM_ProgressBarChunkWidth: result = Val_long(769709309); break;
  case QStyle::PM_SplitterWidth: result = Val_long(-988982243); break;
  case QStyle::PM_TitleBarHeight: result = Val_long(-341901116); break;
  case QStyle::PM_MenuScrollerHeight: result = Val_long(982357922); break;
  case QStyle::PM_MenuHMargin: result = Val_long(-1070228939); break;
  case QStyle::PM_MenuVMargin: result = Val_long(107092163); break;
  case QStyle::PM_MenuPanelWidth: result = Val_long(-460833213); break;
  case QStyle::PM_MenuTearoffHeight: result = Val_long(544706707); break;
  case QStyle::PM_MenuDesktopFrameWidth: result = Val_long(-236418092); break;
  case QStyle::PM_MenuBarPanelWidth: result = Val_long(584530132); break;
  case QStyle::PM_MenuBarItemSpacing: result = Val_long(-881814018); break;
  case QStyle::PM_MenuBarVMargin: result = Val_long(946096530); break;
  case QStyle::PM_MenuBarHMargin: result = Val_long(-231224572); break;
  case QStyle::PM_IndicatorWidth: result = Val_long(-731878631); break;
  case QStyle::PM_IndicatorHeight: result = Val_long(911000436); break;
  case QStyle::PM_ExclusiveIndicatorWidth: result = Val_long(-663772781); break;
  case QStyle::PM_ExclusiveIndicatorHeight: result = Val_long(1066219450); break;
  case QStyle::PM_DialogButtonsSeparator: result = Val_long(673061934); break;
  case QStyle::PM_DialogButtonsButtonWidth: result = Val_long(11105981); break;
  case QStyle::PM_DialogButtonsButtonHeight: result = Val_long(-907155632); break;
  case QStyle::PM_MdiSubWindowFrameWidth: result = Val_long(290329497); break;
  case QStyle::PM_MdiSubWindowMinimizedWidth: result = Val_long(457461152); break;
  case QStyle::PM_HeaderMargin: result = Val_long(465958013); break;
  case QStyle::PM_HeaderMarkSize: result = Val_long(-812249731); break;
  case QStyle::PM_HeaderGripMargin: result = Val_long(840957039); break;
  case QStyle::PM_TabBarTabShiftHorizontal: result = Val_long(-938692303); break;
  case QStyle::PM_TabBarTabShiftVertical: result = Val_long(841012099); break;
  case QStyle::PM_TabBarScrollButtonWidth: result = Val_long(605360039); break;
  case QStyle::PM_ToolBarFrameWidth: result = Val_long(-738004558); break;
  case QStyle::PM_ToolBarHandleExtent: result = Val_long(-744245493); break;
  case QStyle::PM_ToolBarItemSpacing: result = Val_long(-200680073); break;
  case QStyle::PM_ToolBarItemMargin: result = Val_long(-822787910); break;
  case QStyle::PM_ToolBarSeparatorExtent: result = Val_long(-391700874); break;
  case QStyle::PM_ToolBarExtensionExtent: result = Val_long(516858128); break;
  case QStyle::PM_SpinBoxSliderHeight: result = Val_long(140284239); break;
  case QStyle::PM_DefaultTopLevelMargin: result = Val_long(-97860164); break;
  case QStyle::PM_DefaultChildMargin: result = Val_long(-330939381); break;
  case QStyle::PM_DefaultLayoutSpacing: result = Val_long(-517465766); break;
  case QStyle::PM_ToolBarIconSize: result = Val_long(746406835); break;
  case QStyle::PM_ListViewIconSize: result = Val_long(828716479); break;
  case QStyle::PM_IconViewIconSize: result = Val_long(817282394); break;
  case QStyle::PM_SmallIconSize: result = Val_long(764336031); break;
  case QStyle::PM_LargeIconSize: result = Val_long(956903059); break;
  case QStyle::PM_FocusFrameVMargin: result = Val_long(-226009491); break;
  case QStyle::PM_FocusFrameHMargin: result = Val_long(744153055); break;
  case QStyle::PM_ToolTipLabelFrameWidth: result = Val_long(907484524); break;
  case QStyle::PM_CheckBoxLabelSpacing: result = Val_long(1039614868); break;
  case QStyle::PM_TabBarIconSize: result = Val_long(-247325478); break;
  case QStyle::PM_SizeGripSize: result = Val_long(424401270); break;
  case QStyle::PM_DockWidgetTitleMargin: result = Val_long(886537965); break;
  case QStyle::PM_MessageBoxIconSize: result = Val_long(-568766496); break;
  case QStyle::PM_ButtonIconSize: result = Val_long(927965262); break;
  case QStyle::PM_DockWidgetTitleBarButtonMargin: result = Val_long(-127346796); break;
  case QStyle::PM_RadioButtonLabelSpacing: result = Val_long(1049640250); break;
  case QStyle::PM_LayoutLeftMargin: result = Val_long(-568619327); break;
  case QStyle::PM_LayoutTopMargin: result = Val_long(833425143); break;
  case QStyle::PM_LayoutRightMargin: result = Val_long(957063294); break;
  case QStyle::PM_LayoutBottomMargin: result = Val_long(343724965); break;
  case QStyle::PM_LayoutHorizontalSpacing: result = Val_long(-792847021); break;
  case QStyle::PM_LayoutVerticalSpacing: result = Val_long(425088769); break;
  case QStyle::PM_TabBar_ScrollButtonOverlap: result = Val_long(-670655959); break;
  case QStyle::PM_TextCursorWidth: result = Val_long(-221148671); break;
  case QStyle::PM_TabCloseIndicatorWidth: result = Val_long(-182754916); break;
  case QStyle::PM_TabCloseIndicatorHeight: result = Val_long(959020945); break;
  case QStyle::PM_ScrollView_ScrollBarSpacing: result = Val_long(-192213784); break;
  case QStyle::PM_ScrollView_ScrollBarOverlap: result = Val_long(199236844); break;
  case QStyle::PM_SubMenuOverlap: result = Val_long(670294378); break;
  case QStyle::PM_TreeViewIndentation: result = Val_long(419540484); break;
  case QStyle::PM_HeaderDefaultSectionSizeHorizontal: result = Val_long(-253780264); break;
  case QStyle::PM_HeaderDefaultSectionSizeVertical: result = Val_long(765540714); break;
  case QStyle::PM_TitleBarButtonIconSize: result = Val_long(-245472567); break;
  case QStyle::PM_TitleBarButtonSize: result = Val_long(-804832464); break;
  case QStyle::PM_CustomBase: result = Val_long(-89208124); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::ContentsType mlqt_QStyle_ContentsType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -886347366: return QStyle::CT_PushButton;
  case 550151377: return QStyle::CT_CheckBox;
  case -767124641: return QStyle::CT_RadioButton;
  case 473490840: return QStyle::CT_ToolButton;
  case -436597493: return QStyle::CT_ComboBox;
  case -945991179: return QStyle::CT_Splitter;
  case 119013944: return QStyle::CT_ProgressBar;
  case -1071903488: return QStyle::CT_MenuItem;
  case -99732807: return QStyle::CT_MenuBarItem;
  case -871856506: return QStyle::CT_MenuBar;
  case -564399795: return QStyle::CT_Menu;
  case 826867721: return QStyle::CT_TabBarTab;
  case 214710607: return QStyle::CT_Slider;
  case 965121368: return QStyle::CT_ScrollBar;
  case -198888756: return QStyle::CT_LineEdit;
  case -975901061: return QStyle::CT_SpinBox;
  case -768888095: return QStyle::CT_SizeGrip;
  case 684304779: return QStyle::CT_TabWidget;
  case -963474197: return QStyle::CT_DialogButtons;
  case 526552682: return QStyle::CT_HeaderSection;
  case 92352186: return QStyle::CT_GroupBox;
  case 855578586: return QStyle::CT_MdiControls;
  case -263843847: return QStyle::CT_ItemViewItem;
  case 1009019536: return QStyle::CT_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::ContentsType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_ContentsType_to_ocaml(const QStyle::ContentsType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::CT_PushButton: result = Val_long(-886347366); break;
  case QStyle::CT_CheckBox: result = Val_long(550151377); break;
  case QStyle::CT_RadioButton: result = Val_long(-767124641); break;
  case QStyle::CT_ToolButton: result = Val_long(473490840); break;
  case QStyle::CT_ComboBox: result = Val_long(-436597493); break;
  case QStyle::CT_Splitter: result = Val_long(-945991179); break;
  case QStyle::CT_ProgressBar: result = Val_long(119013944); break;
  case QStyle::CT_MenuItem: result = Val_long(-1071903488); break;
  case QStyle::CT_MenuBarItem: result = Val_long(-99732807); break;
  case QStyle::CT_MenuBar: result = Val_long(-871856506); break;
  case QStyle::CT_Menu: result = Val_long(-564399795); break;
  case QStyle::CT_TabBarTab: result = Val_long(826867721); break;
  case QStyle::CT_Slider: result = Val_long(214710607); break;
  case QStyle::CT_ScrollBar: result = Val_long(965121368); break;
  case QStyle::CT_LineEdit: result = Val_long(-198888756); break;
  case QStyle::CT_SpinBox: result = Val_long(-975901061); break;
  case QStyle::CT_SizeGrip: result = Val_long(-768888095); break;
  case QStyle::CT_TabWidget: result = Val_long(684304779); break;
  case QStyle::CT_DialogButtons: result = Val_long(-963474197); break;
  case QStyle::CT_HeaderSection: result = Val_long(526552682); break;
  case QStyle::CT_GroupBox: result = Val_long(92352186); break;
  case QStyle::CT_MdiControls: result = Val_long(855578586); break;
  case QStyle::CT_ItemViewItem: result = Val_long(-263843847); break;
  case QStyle::CT_CustomBase: result = Val_long(1009019536); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::RequestSoftwareInputPanel mlqt_QStyle_RequestSoftwareInputPanel_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 492051581: return QStyle::RSIP_OnMouseClickAndAlreadyFocused;
  case -1047452167: return QStyle::RSIP_OnMouseClick;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::RequestSoftwareInputPanel)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_RequestSoftwareInputPanel_to_ocaml(const QStyle::RequestSoftwareInputPanel& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::RSIP_OnMouseClickAndAlreadyFocused: result = Val_long(492051581); break;
  case QStyle::RSIP_OnMouseClick: result = Val_long(-1047452167); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::StyleHint mlqt_QStyle_StyleHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -128232057: return QStyle::SH_EtchDisabledText;
  case -994384103: return QStyle::SH_DitherDisabledText;
  case 470905648: return QStyle::SH_ScrollBar_MiddleClickAbsolutePosition;
  case 968713518: return QStyle::SH_ScrollBar_ScrollWhenPointerLeavesControl;
  case -322132084: return QStyle::SH_TabBar_SelectMouseType;
  case -314932020: return QStyle::SH_TabBar_Alignment;
  case -250164446: return QStyle::SH_Header_ArrowAlignment;
  case -866007784: return QStyle::SH_Slider_SnapToValue;
  case 99947361: return QStyle::SH_Slider_SloppyKeyEvents;
  case -591651839: return QStyle::SH_ProgressDialog_CenterCancelButton;
  case -1487012: return QStyle::SH_ProgressDialog_TextLabelAlignment;
  case 987080228: return QStyle::SH_PrintDialog_RightAlignButtons;
  case -393310755: return QStyle::SH_MainWindow_SpaceBelowMenuBar;
  case -851876915: return QStyle::SH_FontDialog_SelectAssociatedText;
  case 693862522: return QStyle::SH_Menu_AllowActiveAndDisabled;
  case -819824925: return QStyle::SH_Menu_SpaceActivatesItem;
  case 1036565920: return QStyle::SH_Menu_SubMenuPopupDelay;
  case 297244637: return QStyle::SH_ScrollView_FrameOnlyAroundContents;
  case -565318145: return QStyle::SH_MenuBar_AltKeyNavigation;
  case 769029190: return QStyle::SH_ComboBox_ListMouseTracking;
  case 1001297222: return QStyle::SH_Menu_MouseTracking;
  case -775265145: return QStyle::SH_MenuBar_MouseTracking;
  case -493923694: return QStyle::SH_ItemView_ChangeHighlightOnFocus;
  case 921013828: return QStyle::SH_Widget_ShareActivation;
  case -928367014: return QStyle::SH_Workspace_FillSpaceOnMaximize;
  case 747821876: return QStyle::SH_ComboBox_Popup;
  case 41407367: return QStyle::SH_TitleBar_NoBorder;
  case -480928380: return QStyle::SH_Slider_StopMouseOverSlider;
  case 921350506: return QStyle::SH_BlinkCursorWhenTextSelected;
  case 907444801: return QStyle::SH_RichText_FullWidthSelection;
  case 900095773: return QStyle::SH_Menu_Scrollable;
  case -218287057: return QStyle::SH_GroupBox_TextLabelVerticalAlignment;
  case -552209659: return QStyle::SH_GroupBox_TextLabelColor;
  case 309192685: return QStyle::SH_Menu_SloppySubMenus;
  case 930392526: return QStyle::SH_Table_GridLineColor;
  case -524368873: return QStyle::SH_LineEdit_PasswordCharacter;
  case -49085501: return QStyle::SH_DialogButtons_DefaultButton;
  case -529818627: return QStyle::SH_ToolBox_SelectedPageTitleBold;
  case -49085102: return QStyle::SH_TabBar_PreferNoArrows;
  case 794280958: return QStyle::SH_ScrollBar_LeftClickAbsolutePosition;
  case -782373461: return QStyle::SH_ListViewExpand_SelectMouseType;
  case -956290520: return QStyle::SH_UnderlineShortcut;
  case -741414861: return QStyle::SH_SpinBox_AnimateButton;
  case -433317906: return QStyle::SH_SpinBox_KeyPressAutoRepeatRate;
  case -635135150: return QStyle::SH_SpinBox_ClickAutoRepeatRate;
  case 198281304: return QStyle::SH_Menu_FillScreenWithScroll;
  case 457953671: return QStyle::SH_ToolTipLabel_Opacity;
  case -215218241: return QStyle::SH_DrawMenuBarSeparator;
  case -231108993: return QStyle::SH_TitleBar_ModifyNotification;
  case 437198215: return QStyle::SH_Button_FocusPolicy;
  case -1018567158: return QStyle::SH_MessageBox_UseBorderForButtonSpacing;
  case -139222461: return QStyle::SH_TitleBar_AutoRaise;
  case 18258242: return QStyle::SH_ToolButton_PopupDelay;
  case -225461108: return QStyle::SH_FocusFrame_Mask;
  case 235844732: return QStyle::SH_RubberBand_Mask;
  case 811580408: return QStyle::SH_WindowFrame_Mask;
  case -95433473: return QStyle::SH_SpinControls_DisableOnBounds;
  case 966354313: return QStyle::SH_Dial_BackgroundRole;
  case 302569789: return QStyle::SH_ComboBox_LayoutDirection;
  case 407579523: return QStyle::SH_ItemView_EllipsisLocation;
  case 437055141: return QStyle::SH_ItemView_ShowDecorationSelected;
  case -638724866: return QStyle::SH_ItemView_ActivateItemOnSingleClick;
  case 516113227: return QStyle::SH_ScrollBar_ContextMenu;
  case -649410759: return QStyle::SH_ScrollBar_RollBetweenButtons;
  case 877157194: return QStyle::SH_Slider_AbsoluteSetButtons;
  case 409598754: return QStyle::SH_Slider_PageSetButtons;
  case 217352549: return QStyle::SH_Menu_KeyboardSearch;
  case -1036806897: return QStyle::SH_TabBar_ElideMode;
  case -187624466: return QStyle::SH_DialogButtonLayout;
  case 670384664: return QStyle::SH_ComboBox_PopupFrameStyle;
  case -285462829: return QStyle::SH_MessageBox_TextInteractionFlags;
  case -425260759: return QStyle::SH_DialogButtonBox_ButtonsHaveIcons;
  case -59238673: return QStyle::SH_SpellCheckUnderlineStyle;
  case -858209573: return QStyle::SH_MessageBox_CenterButtons;
  case 741548800: return QStyle::SH_Menu_SelectionWrap;
  case -201698390: return QStyle::SH_ItemView_MovementWithoutUpdatingSelection;
  case -1019630990: return QStyle::SH_ToolTip_Mask;
  case 678944545: return QStyle::SH_FocusFrame_AboveWidget;
  case 298491402: return QStyle::SH_TextControl_FocusIndicatorTextCharFormat;
  case 389280764: return QStyle::SH_WizardStyle;
  case 698338000: return QStyle::SH_ItemView_ArrowKeysNavigateIntoChildren;
  case -83913886: return QStyle::SH_Menu_Mask;
  case -69847696: return QStyle::SH_Menu_FlashTriggeredItem;
  case -975078819: return QStyle::SH_Menu_FadeOutOnHide;
  case -590504455: return QStyle::SH_SpinBox_ClickAutoRepeatThreshold;
  case -84847035: return QStyle::SH_ItemView_PaintAlternatingRowColorsForEmptyArea;
  case -185604780: return QStyle::SH_FormLayoutWrapPolicy;
  case 58721805: return QStyle::SH_TabWidget_DefaultTabPosition;
  case -791423712: return QStyle::SH_ToolBar_Movable;
  case 894665339: return QStyle::SH_FormLayoutFieldGrowthPolicy;
  case 54885383: return QStyle::SH_FormLayoutFormAlignment;
  case 520591943: return QStyle::SH_FormLayoutLabelAlignment;
  case -36329849: return QStyle::SH_ItemView_DrawDelegateFrame;
  case -342344260: return QStyle::SH_TabBar_CloseButtonPosition;
  case -380912222: return QStyle::SH_DockWidget_ButtonsHaveFrame;
  case 851705437: return QStyle::SH_ToolButtonStyle;
  case 316324166: return QStyle::SH_RequestSoftwareInputPanel;
  case 331357735: return QStyle::SH_ScrollBar_Transient;
  case -18894840: return QStyle::SH_Menu_SupportsSections;
  case 420070046: return QStyle::SH_ToolTip_WakeUpDelay;
  case -184747508: return QStyle::SH_ToolTip_FallAsleepDelay;
  case 87225232: return QStyle::SH_Widget_Animate;
  case 849238659: return QStyle::SH_Splitter_OpaqueResize;
  case 294432262: return QStyle::SH_ComboBox_UseNativePopup;
  case -58976411: return QStyle::SH_LineEdit_PasswordMaskDelay;
  case 582114065: return QStyle::SH_TabBar_ChangeCurrentDelay;
  case 1001261144: return QStyle::SH_Menu_SubMenuUniDirection;
  case -1066171751: return QStyle::SH_Menu_SubMenuUniDirectionFailCount;
  case 611445045: return QStyle::SH_Menu_SubMenuSloppySelectOtherActions;
  case -731104811: return QStyle::SH_Menu_SubMenuSloppyCloseTimeout;
  case 664239879: return QStyle::SH_Menu_SubMenuResetWhenReenteringParent;
  case -785327187: return QStyle::SH_Menu_SubMenuDontStartSloppyOnLeave;
  case 646836525: return QStyle::SH_ItemView_ScrollMode;
  case 53681964: return QStyle::SH_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::StyleHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_StyleHint_to_ocaml(const QStyle::StyleHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::SH_EtchDisabledText: result = Val_long(-128232057); break;
  case QStyle::SH_DitherDisabledText: result = Val_long(-994384103); break;
  case QStyle::SH_ScrollBar_MiddleClickAbsolutePosition: result = Val_long(470905648); break;
  case QStyle::SH_ScrollBar_ScrollWhenPointerLeavesControl: result = Val_long(968713518); break;
  case QStyle::SH_TabBar_SelectMouseType: result = Val_long(-322132084); break;
  case QStyle::SH_TabBar_Alignment: result = Val_long(-314932020); break;
  case QStyle::SH_Header_ArrowAlignment: result = Val_long(-250164446); break;
  case QStyle::SH_Slider_SnapToValue: result = Val_long(-866007784); break;
  case QStyle::SH_Slider_SloppyKeyEvents: result = Val_long(99947361); break;
  case QStyle::SH_ProgressDialog_CenterCancelButton: result = Val_long(-591651839); break;
  case QStyle::SH_ProgressDialog_TextLabelAlignment: result = Val_long(-1487012); break;
  case QStyle::SH_PrintDialog_RightAlignButtons: result = Val_long(987080228); break;
  case QStyle::SH_MainWindow_SpaceBelowMenuBar: result = Val_long(-393310755); break;
  case QStyle::SH_FontDialog_SelectAssociatedText: result = Val_long(-851876915); break;
  case QStyle::SH_Menu_AllowActiveAndDisabled: result = Val_long(693862522); break;
  case QStyle::SH_Menu_SpaceActivatesItem: result = Val_long(-819824925); break;
  case QStyle::SH_Menu_SubMenuPopupDelay: result = Val_long(1036565920); break;
  case QStyle::SH_ScrollView_FrameOnlyAroundContents: result = Val_long(297244637); break;
  case QStyle::SH_MenuBar_AltKeyNavigation: result = Val_long(-565318145); break;
  case QStyle::SH_ComboBox_ListMouseTracking: result = Val_long(769029190); break;
  case QStyle::SH_Menu_MouseTracking: result = Val_long(1001297222); break;
  case QStyle::SH_MenuBar_MouseTracking: result = Val_long(-775265145); break;
  case QStyle::SH_ItemView_ChangeHighlightOnFocus: result = Val_long(-493923694); break;
  case QStyle::SH_Widget_ShareActivation: result = Val_long(921013828); break;
  case QStyle::SH_Workspace_FillSpaceOnMaximize: result = Val_long(-928367014); break;
  case QStyle::SH_ComboBox_Popup: result = Val_long(747821876); break;
  case QStyle::SH_TitleBar_NoBorder: result = Val_long(41407367); break;
  case QStyle::SH_Slider_StopMouseOverSlider: result = Val_long(-480928380); break;
  case QStyle::SH_BlinkCursorWhenTextSelected: result = Val_long(921350506); break;
  case QStyle::SH_RichText_FullWidthSelection: result = Val_long(907444801); break;
  case QStyle::SH_Menu_Scrollable: result = Val_long(900095773); break;
  case QStyle::SH_GroupBox_TextLabelVerticalAlignment: result = Val_long(-218287057); break;
  case QStyle::SH_GroupBox_TextLabelColor: result = Val_long(-552209659); break;
  case QStyle::SH_Menu_SloppySubMenus: result = Val_long(309192685); break;
  case QStyle::SH_Table_GridLineColor: result = Val_long(930392526); break;
  case QStyle::SH_LineEdit_PasswordCharacter: result = Val_long(-524368873); break;
  case QStyle::SH_DialogButtons_DefaultButton: result = Val_long(-49085501); break;
  case QStyle::SH_ToolBox_SelectedPageTitleBold: result = Val_long(-529818627); break;
  case QStyle::SH_TabBar_PreferNoArrows: result = Val_long(-49085102); break;
  case QStyle::SH_ScrollBar_LeftClickAbsolutePosition: result = Val_long(794280958); break;
  case QStyle::SH_ListViewExpand_SelectMouseType: result = Val_long(-782373461); break;
  case QStyle::SH_UnderlineShortcut: result = Val_long(-956290520); break;
  case QStyle::SH_SpinBox_AnimateButton: result = Val_long(-741414861); break;
  case QStyle::SH_SpinBox_KeyPressAutoRepeatRate: result = Val_long(-433317906); break;
  case QStyle::SH_SpinBox_ClickAutoRepeatRate: result = Val_long(-635135150); break;
  case QStyle::SH_Menu_FillScreenWithScroll: result = Val_long(198281304); break;
  case QStyle::SH_ToolTipLabel_Opacity: result = Val_long(457953671); break;
  case QStyle::SH_DrawMenuBarSeparator: result = Val_long(-215218241); break;
  case QStyle::SH_TitleBar_ModifyNotification: result = Val_long(-231108993); break;
  case QStyle::SH_Button_FocusPolicy: result = Val_long(437198215); break;
  case QStyle::SH_MessageBox_UseBorderForButtonSpacing: result = Val_long(-1018567158); break;
  case QStyle::SH_TitleBar_AutoRaise: result = Val_long(-139222461); break;
  case QStyle::SH_ToolButton_PopupDelay: result = Val_long(18258242); break;
  case QStyle::SH_FocusFrame_Mask: result = Val_long(-225461108); break;
  case QStyle::SH_RubberBand_Mask: result = Val_long(235844732); break;
  case QStyle::SH_WindowFrame_Mask: result = Val_long(811580408); break;
  case QStyle::SH_SpinControls_DisableOnBounds: result = Val_long(-95433473); break;
  case QStyle::SH_Dial_BackgroundRole: result = Val_long(966354313); break;
  case QStyle::SH_ComboBox_LayoutDirection: result = Val_long(302569789); break;
  case QStyle::SH_ItemView_EllipsisLocation: result = Val_long(407579523); break;
  case QStyle::SH_ItemView_ShowDecorationSelected: result = Val_long(437055141); break;
  case QStyle::SH_ItemView_ActivateItemOnSingleClick: result = Val_long(-638724866); break;
  case QStyle::SH_ScrollBar_ContextMenu: result = Val_long(516113227); break;
  case QStyle::SH_ScrollBar_RollBetweenButtons: result = Val_long(-649410759); break;
  case QStyle::SH_Slider_AbsoluteSetButtons: result = Val_long(877157194); break;
  case QStyle::SH_Slider_PageSetButtons: result = Val_long(409598754); break;
  case QStyle::SH_Menu_KeyboardSearch: result = Val_long(217352549); break;
  case QStyle::SH_TabBar_ElideMode: result = Val_long(-1036806897); break;
  case QStyle::SH_DialogButtonLayout: result = Val_long(-187624466); break;
  case QStyle::SH_ComboBox_PopupFrameStyle: result = Val_long(670384664); break;
  case QStyle::SH_MessageBox_TextInteractionFlags: result = Val_long(-285462829); break;
  case QStyle::SH_DialogButtonBox_ButtonsHaveIcons: result = Val_long(-425260759); break;
  case QStyle::SH_SpellCheckUnderlineStyle: result = Val_long(-59238673); break;
  case QStyle::SH_MessageBox_CenterButtons: result = Val_long(-858209573); break;
  case QStyle::SH_Menu_SelectionWrap: result = Val_long(741548800); break;
  case QStyle::SH_ItemView_MovementWithoutUpdatingSelection: result = Val_long(-201698390); break;
  case QStyle::SH_ToolTip_Mask: result = Val_long(-1019630990); break;
  case QStyle::SH_FocusFrame_AboveWidget: result = Val_long(678944545); break;
  case QStyle::SH_TextControl_FocusIndicatorTextCharFormat: result = Val_long(298491402); break;
  case QStyle::SH_WizardStyle: result = Val_long(389280764); break;
  case QStyle::SH_ItemView_ArrowKeysNavigateIntoChildren: result = Val_long(698338000); break;
  case QStyle::SH_Menu_Mask: result = Val_long(-83913886); break;
  case QStyle::SH_Menu_FlashTriggeredItem: result = Val_long(-69847696); break;
  case QStyle::SH_Menu_FadeOutOnHide: result = Val_long(-975078819); break;
  case QStyle::SH_SpinBox_ClickAutoRepeatThreshold: result = Val_long(-590504455); break;
  case QStyle::SH_ItemView_PaintAlternatingRowColorsForEmptyArea: result = Val_long(-84847035); break;
  case QStyle::SH_FormLayoutWrapPolicy: result = Val_long(-185604780); break;
  case QStyle::SH_TabWidget_DefaultTabPosition: result = Val_long(58721805); break;
  case QStyle::SH_ToolBar_Movable: result = Val_long(-791423712); break;
  case QStyle::SH_FormLayoutFieldGrowthPolicy: result = Val_long(894665339); break;
  case QStyle::SH_FormLayoutFormAlignment: result = Val_long(54885383); break;
  case QStyle::SH_FormLayoutLabelAlignment: result = Val_long(520591943); break;
  case QStyle::SH_ItemView_DrawDelegateFrame: result = Val_long(-36329849); break;
  case QStyle::SH_TabBar_CloseButtonPosition: result = Val_long(-342344260); break;
  case QStyle::SH_DockWidget_ButtonsHaveFrame: result = Val_long(-380912222); break;
  case QStyle::SH_ToolButtonStyle: result = Val_long(851705437); break;
  case QStyle::SH_RequestSoftwareInputPanel: result = Val_long(316324166); break;
  case QStyle::SH_ScrollBar_Transient: result = Val_long(331357735); break;
  case QStyle::SH_Menu_SupportsSections: result = Val_long(-18894840); break;
  case QStyle::SH_ToolTip_WakeUpDelay: result = Val_long(420070046); break;
  case QStyle::SH_ToolTip_FallAsleepDelay: result = Val_long(-184747508); break;
  case QStyle::SH_Widget_Animate: result = Val_long(87225232); break;
  case QStyle::SH_Splitter_OpaqueResize: result = Val_long(849238659); break;
  case QStyle::SH_ComboBox_UseNativePopup: result = Val_long(294432262); break;
  case QStyle::SH_LineEdit_PasswordMaskDelay: result = Val_long(-58976411); break;
  case QStyle::SH_TabBar_ChangeCurrentDelay: result = Val_long(582114065); break;
  case QStyle::SH_Menu_SubMenuUniDirection: result = Val_long(1001261144); break;
  case QStyle::SH_Menu_SubMenuUniDirectionFailCount: result = Val_long(-1066171751); break;
  case QStyle::SH_Menu_SubMenuSloppySelectOtherActions: result = Val_long(611445045); break;
  case QStyle::SH_Menu_SubMenuSloppyCloseTimeout: result = Val_long(-731104811); break;
  case QStyle::SH_Menu_SubMenuResetWhenReenteringParent: result = Val_long(664239879); break;
  case QStyle::SH_Menu_SubMenuDontStartSloppyOnLeave: result = Val_long(-785327187); break;
  case QStyle::SH_ItemView_ScrollMode: result = Val_long(646836525); break;
  case QStyle::SH_CustomBase: result = Val_long(53681964); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyle::StandardPixmap mlqt_QStyle_StandardPixmap_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 508684718: return QStyle::SP_TitleBarMenuButton;
  case 711572231: return QStyle::SP_TitleBarMinButton;
  case 11324825: return QStyle::SP_TitleBarMaxButton;
  case -504995731: return QStyle::SP_TitleBarCloseButton;
  case 162305398: return QStyle::SP_TitleBarNormalButton;
  case 192595746: return QStyle::SP_TitleBarShadeButton;
  case -396956631: return QStyle::SP_TitleBarUnshadeButton;
  case -1049788603: return QStyle::SP_TitleBarContextHelpButton;
  case -44186255: return QStyle::SP_DockWidgetCloseButton;
  case -496610874: return QStyle::SP_MessageBoxInformation;
  case -564142922: return QStyle::SP_MessageBoxWarning;
  case -609871611: return QStyle::SP_MessageBoxCritical;
  case -744577140: return QStyle::SP_MessageBoxQuestion;
  case -98271885: return QStyle::SP_DesktopIcon;
  case -255412593: return QStyle::SP_TrashIcon;
  case -149408138: return QStyle::SP_ComputerIcon;
  case -878437793: return QStyle::SP_DriveFDIcon;
  case 408605469: return QStyle::SP_DriveHDIcon;
  case 412222786: return QStyle::SP_DriveCDIcon;
  case -788857469: return QStyle::SP_DriveDVDIcon;
  case 325575374: return QStyle::SP_DriveNetIcon;
  case 438556878: return QStyle::SP_DirOpenIcon;
  case 910510192: return QStyle::SP_DirClosedIcon;
  case 712557822: return QStyle::SP_DirLinkIcon;
  case 884099176: return QStyle::SP_DirLinkOpenIcon;
  case -543113385: return QStyle::SP_FileIcon;
  case 90034033: return QStyle::SP_FileLinkIcon;
  case 589391028: return QStyle::SP_ToolBarHorizontalExtensionButton;
  case 912245154: return QStyle::SP_ToolBarVerticalExtensionButton;
  case 927042140: return QStyle::SP_FileDialogStart;
  case -1028667563: return QStyle::SP_FileDialogEnd;
  case -838791349: return QStyle::SP_FileDialogToParent;
  case 433249832: return QStyle::SP_FileDialogNewFolder;
  case 65860859: return QStyle::SP_FileDialogDetailedView;
  case -130561991: return QStyle::SP_FileDialogInfoView;
  case 29881829: return QStyle::SP_FileDialogContentsView;
  case -410491863: return QStyle::SP_FileDialogListView;
  case 353968493: return QStyle::SP_FileDialogBack;
  case -659248540: return QStyle::SP_DirIcon;
  case -322991656: return QStyle::SP_DialogOkButton;
  case -963457610: return QStyle::SP_DialogCancelButton;
  case 983753661: return QStyle::SP_DialogHelpButton;
  case 696230278: return QStyle::SP_DialogOpenButton;
  case 614252857: return QStyle::SP_DialogSaveButton;
  case -727230368: return QStyle::SP_DialogCloseButton;
  case -699272554: return QStyle::SP_DialogApplyButton;
  case 980137399: return QStyle::SP_DialogResetButton;
  case 309263558: return QStyle::SP_DialogDiscardButton;
  case -974441073: return QStyle::SP_DialogYesButton;
  case -639438147: return QStyle::SP_DialogNoButton;
  case 240629634: return QStyle::SP_ArrowUp;
  case 303636809: return QStyle::SP_ArrowDown;
  case 391852270: return QStyle::SP_ArrowLeft;
  case -813912811: return QStyle::SP_ArrowRight;
  case 280757006: return QStyle::SP_ArrowBack;
  case -63372482: return QStyle::SP_ArrowForward;
  case -462623325: return QStyle::SP_DirHomeIcon;
  case 430521571: return QStyle::SP_CommandLink;
  case 1066774932: return QStyle::SP_VistaShield;
  case -136678753: return QStyle::SP_BrowserReload;
  case 588681672: return QStyle::SP_BrowserStop;
  case 1051003766: return QStyle::SP_MediaPlay;
  case -1062810236: return QStyle::SP_MediaStop;
  case 177130292: return QStyle::SP_MediaPause;
  case 575997892: return QStyle::SP_MediaSkipForward;
  case -479202044: return QStyle::SP_MediaSkipBackward;
  case 919886315: return QStyle::SP_MediaSeekForward;
  case 1045988605: return QStyle::SP_MediaSeekBackward;
  case 573696988: return QStyle::SP_MediaVolume;
  case -1006201361: return QStyle::SP_MediaVolumeMuted;
  case -64586785: return QStyle::SP_LineEditClearButton;
  case 288263204: return QStyle::SP_CustomBase;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyle::StandardPixmap)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyle_StandardPixmap_to_ocaml(const QStyle::StandardPixmap& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyle::SP_TitleBarMenuButton: result = Val_long(508684718); break;
  case QStyle::SP_TitleBarMinButton: result = Val_long(711572231); break;
  case QStyle::SP_TitleBarMaxButton: result = Val_long(11324825); break;
  case QStyle::SP_TitleBarCloseButton: result = Val_long(-504995731); break;
  case QStyle::SP_TitleBarNormalButton: result = Val_long(162305398); break;
  case QStyle::SP_TitleBarShadeButton: result = Val_long(192595746); break;
  case QStyle::SP_TitleBarUnshadeButton: result = Val_long(-396956631); break;
  case QStyle::SP_TitleBarContextHelpButton: result = Val_long(-1049788603); break;
  case QStyle::SP_DockWidgetCloseButton: result = Val_long(-44186255); break;
  case QStyle::SP_MessageBoxInformation: result = Val_long(-496610874); break;
  case QStyle::SP_MessageBoxWarning: result = Val_long(-564142922); break;
  case QStyle::SP_MessageBoxCritical: result = Val_long(-609871611); break;
  case QStyle::SP_MessageBoxQuestion: result = Val_long(-744577140); break;
  case QStyle::SP_DesktopIcon: result = Val_long(-98271885); break;
  case QStyle::SP_TrashIcon: result = Val_long(-255412593); break;
  case QStyle::SP_ComputerIcon: result = Val_long(-149408138); break;
  case QStyle::SP_DriveFDIcon: result = Val_long(-878437793); break;
  case QStyle::SP_DriveHDIcon: result = Val_long(408605469); break;
  case QStyle::SP_DriveCDIcon: result = Val_long(412222786); break;
  case QStyle::SP_DriveDVDIcon: result = Val_long(-788857469); break;
  case QStyle::SP_DriveNetIcon: result = Val_long(325575374); break;
  case QStyle::SP_DirOpenIcon: result = Val_long(438556878); break;
  case QStyle::SP_DirClosedIcon: result = Val_long(910510192); break;
  case QStyle::SP_DirLinkIcon: result = Val_long(712557822); break;
  case QStyle::SP_DirLinkOpenIcon: result = Val_long(884099176); break;
  case QStyle::SP_FileIcon: result = Val_long(-543113385); break;
  case QStyle::SP_FileLinkIcon: result = Val_long(90034033); break;
  case QStyle::SP_ToolBarHorizontalExtensionButton: result = Val_long(589391028); break;
  case QStyle::SP_ToolBarVerticalExtensionButton: result = Val_long(912245154); break;
  case QStyle::SP_FileDialogStart: result = Val_long(927042140); break;
  case QStyle::SP_FileDialogEnd: result = Val_long(-1028667563); break;
  case QStyle::SP_FileDialogToParent: result = Val_long(-838791349); break;
  case QStyle::SP_FileDialogNewFolder: result = Val_long(433249832); break;
  case QStyle::SP_FileDialogDetailedView: result = Val_long(65860859); break;
  case QStyle::SP_FileDialogInfoView: result = Val_long(-130561991); break;
  case QStyle::SP_FileDialogContentsView: result = Val_long(29881829); break;
  case QStyle::SP_FileDialogListView: result = Val_long(-410491863); break;
  case QStyle::SP_FileDialogBack: result = Val_long(353968493); break;
  case QStyle::SP_DirIcon: result = Val_long(-659248540); break;
  case QStyle::SP_DialogOkButton: result = Val_long(-322991656); break;
  case QStyle::SP_DialogCancelButton: result = Val_long(-963457610); break;
  case QStyle::SP_DialogHelpButton: result = Val_long(983753661); break;
  case QStyle::SP_DialogOpenButton: result = Val_long(696230278); break;
  case QStyle::SP_DialogSaveButton: result = Val_long(614252857); break;
  case QStyle::SP_DialogCloseButton: result = Val_long(-727230368); break;
  case QStyle::SP_DialogApplyButton: result = Val_long(-699272554); break;
  case QStyle::SP_DialogResetButton: result = Val_long(980137399); break;
  case QStyle::SP_DialogDiscardButton: result = Val_long(309263558); break;
  case QStyle::SP_DialogYesButton: result = Val_long(-974441073); break;
  case QStyle::SP_DialogNoButton: result = Val_long(-639438147); break;
  case QStyle::SP_ArrowUp: result = Val_long(240629634); break;
  case QStyle::SP_ArrowDown: result = Val_long(303636809); break;
  case QStyle::SP_ArrowLeft: result = Val_long(391852270); break;
  case QStyle::SP_ArrowRight: result = Val_long(-813912811); break;
  case QStyle::SP_ArrowBack: result = Val_long(280757006); break;
  case QStyle::SP_ArrowForward: result = Val_long(-63372482); break;
  case QStyle::SP_DirHomeIcon: result = Val_long(-462623325); break;
  case QStyle::SP_CommandLink: result = Val_long(430521571); break;
  case QStyle::SP_VistaShield: result = Val_long(1066774932); break;
  case QStyle::SP_BrowserReload: result = Val_long(-136678753); break;
  case QStyle::SP_BrowserStop: result = Val_long(588681672); break;
  case QStyle::SP_MediaPlay: result = Val_long(1051003766); break;
  case QStyle::SP_MediaStop: result = Val_long(-1062810236); break;
  case QStyle::SP_MediaPause: result = Val_long(177130292); break;
  case QStyle::SP_MediaSkipForward: result = Val_long(575997892); break;
  case QStyle::SP_MediaSkipBackward: result = Val_long(-479202044); break;
  case QStyle::SP_MediaSeekForward: result = Val_long(919886315); break;
  case QStyle::SP_MediaSeekBackward: result = Val_long(1045988605); break;
  case QStyle::SP_MediaVolume: result = Val_long(573696988); break;
  case QStyle::SP_MediaVolumeMuted: result = Val_long(-1006201361); break;
  case QStyle::SP_LineEditClearButton: result = Val_long(-64586785); break;
  case QStyle::SP_CustomBase: result = Val_long(288263204); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCompleter::CompletionMode mlqt_QCompleter_CompletionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -489369528: return QCompleter::PopupCompletion;
  case -28225352: return QCompleter::UnfilteredPopupCompletion;
  case 519519989: return QCompleter::InlineCompletion;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCompleter::CompletionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QCompleter_CompletionMode_to_ocaml(const QCompleter::CompletionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCompleter::PopupCompletion: result = Val_long(-489369528); break;
  case QCompleter::UnfilteredPopupCompletion: result = Val_long(-28225352); break;
  case QCompleter::InlineCompletion: result = Val_long(519519989); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCompleter::ModelSorting mlqt_QCompleter_ModelSorting_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 183036243: return QCompleter::UnsortedModel;
  case -512405831: return QCompleter::CaseSensitivelySortedModel;
  case -825222562: return QCompleter::CaseInsensitivelySortedModel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCompleter::ModelSorting)Long_val(Field(v, 1));
  }
}

value& mlqt_QCompleter_ModelSorting_to_ocaml(const QCompleter::ModelSorting& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCompleter::UnsortedModel: result = Val_long(183036243); break;
  case QCompleter::CaseSensitivelySortedModel: result = Val_long(-512405831); break;
  case QCompleter::CaseInsensitivelySortedModel: result = Val_long(-825222562); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScroller::State mlqt_QScroller_State_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1008610421: return QScroller::Inactive;
  case 121109122: return QScroller::Pressed;
  case 289274095: return QScroller::Dragging;
  case -538125611: return QScroller::Scrolling;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScroller::State)Long_val(Field(v, 1));
  }
}

value& mlqt_QScroller_State_to_ocaml(const QScroller::State& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScroller::Inactive: result = Val_long(-1008610421); break;
  case QScroller::Pressed: result = Val_long(121109122); break;
  case QScroller::Dragging: result = Val_long(289274095); break;
  case QScroller::Scrolling: result = Val_long(-538125611); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScroller::ScrollerGestureType mlqt_QScroller_ScrollerGestureType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 331168938: return QScroller::TouchGesture;
  case 296785753: return QScroller::LeftMouseButtonGesture;
  case 250832942: return QScroller::RightMouseButtonGesture;
  case -988309977: return QScroller::MiddleMouseButtonGesture;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScroller::ScrollerGestureType)Long_val(Field(v, 1));
  }
}

value& mlqt_QScroller_ScrollerGestureType_to_ocaml(const QScroller::ScrollerGestureType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScroller::TouchGesture: result = Val_long(331168938); break;
  case QScroller::LeftMouseButtonGesture: result = Val_long(296785753); break;
  case QScroller::RightMouseButtonGesture: result = Val_long(250832942); break;
  case QScroller::MiddleMouseButtonGesture: result = Val_long(-988309977); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QScroller::Input mlqt_QScroller_Input_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1031020345: return QScroller::InputPress;
  case 828276763: return QScroller::InputMove;
  case 959195901: return QScroller::InputRelease;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QScroller::Input)Long_val(Field(v, 1));
  }
}

value& mlqt_QScroller_Input_to_ocaml(const QScroller::Input& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QScroller::InputPress: result = Val_long(1031020345); break;
  case QScroller::InputMove: result = Val_long(828276763); break;
  case QScroller::InputRelease: result = Val_long(959195901); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSystemTrayIcon::ActivationReason mlqt_QSystemTrayIcon_ActivationReason_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 785140586: return QSystemTrayIcon::Unknown;
  case -423051825: return QSystemTrayIcon::Context;
  case 833133399: return QSystemTrayIcon::DoubleClick;
  case -214926056: return QSystemTrayIcon::Trigger;
  case 672693395: return QSystemTrayIcon::MiddleClick;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSystemTrayIcon::ActivationReason)Long_val(Field(v, 1));
  }
}

value& mlqt_QSystemTrayIcon_ActivationReason_to_ocaml(const QSystemTrayIcon::ActivationReason& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSystemTrayIcon::Unknown: result = Val_long(785140586); break;
  case QSystemTrayIcon::Context: result = Val_long(-423051825); break;
  case QSystemTrayIcon::DoubleClick: result = Val_long(833133399); break;
  case QSystemTrayIcon::Trigger: result = Val_long(-214926056); break;
  case QSystemTrayIcon::MiddleClick: result = Val_long(672693395); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSystemTrayIcon::MessageIcon mlqt_QSystemTrayIcon_MessageIcon_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -908288902: return QSystemTrayIcon::NoIcon;
  case -120868276: return QSystemTrayIcon::Information;
  case -685964740: return QSystemTrayIcon::Warning;
  case 141150399: return QSystemTrayIcon::Critical;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSystemTrayIcon::MessageIcon)Long_val(Field(v, 1));
  }
}

value& mlqt_QSystemTrayIcon_MessageIcon_to_ocaml(const QSystemTrayIcon::MessageIcon& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSystemTrayIcon::NoIcon: result = Val_long(-908288902); break;
  case QSystemTrayIcon::Information: result = Val_long(-120868276); break;
  case QSystemTrayIcon::Warning: result = Val_long(-685964740); break;
  case QSystemTrayIcon::Critical: result = Val_long(141150399); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPinchGesture::ChangeFlag mlqt_QPinchGesture_ChangeFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 967270171: return QPinchGesture::ScaleFactorChanged;
  case -948445217: return QPinchGesture::RotationAngleChanged;
  case -458502119: return QPinchGesture::CenterPointChanged;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPinchGesture::ChangeFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QPinchGesture_ChangeFlag_to_ocaml(const QPinchGesture::ChangeFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPinchGesture::ScaleFactorChanged: result = Val_long(967270171); break;
  case QPinchGesture::RotationAngleChanged: result = Val_long(-948445217); break;
  case QPinchGesture::CenterPointChanged: result = Val_long(-458502119); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSwipeGesture::SwipeDirection mlqt_QSwipeGesture_SwipeDirection_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -702420578: return QSwipeGesture::NoDirection;
  case 847852583: return QSwipeGesture::Left;
  case -57574468: return QSwipeGesture::Right;
  case 19067: return QSwipeGesture::Up;
  case 759637122: return QSwipeGesture::Down;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSwipeGesture::SwipeDirection)Long_val(Field(v, 1));
  }
}

value& mlqt_QSwipeGesture_SwipeDirection_to_ocaml(const QSwipeGesture::SwipeDirection& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSwipeGesture::NoDirection: result = Val_long(-702420578); break;
  case QSwipeGesture::Left: result = Val_long(847852583); break;
  case QSwipeGesture::Right: result = Val_long(-57574468); break;
  case QSwipeGesture::Up: result = Val_long(19067); break;
  case QSwipeGesture::Down: result = Val_long(759637122); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsBlurEffect::BlurHint mlqt_QGraphicsBlurEffect_BlurHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -395315337: return QGraphicsBlurEffect::PerformanceHint;
  case 37802438: return QGraphicsBlurEffect::QualityHint;
  case -11896181: return QGraphicsBlurEffect::AnimationHint;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsBlurEffect::BlurHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsBlurEffect_BlurHint_to_ocaml(const QGraphicsBlurEffect::BlurHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsBlurEffect::PerformanceHint: result = Val_long(-395315337); break;
  case QGraphicsBlurEffect::QualityHint: result = Val_long(37802438); break;
  case QGraphicsBlurEffect::AnimationHint: result = Val_long(-11896181); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsSceneContextMenuEvent::Reason mlqt_QGraphicsSceneContextMenuEvent_Reason_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 529696261: return QGraphicsSceneContextMenuEvent::Mouse;
  case -1042581305: return QGraphicsSceneContextMenuEvent::Keyboard;
  case -912009552: return QGraphicsSceneContextMenuEvent::Other;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsSceneContextMenuEvent::Reason)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsSceneContextMenuEvent_Reason_to_ocaml(const QGraphicsSceneContextMenuEvent::Reason& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsSceneContextMenuEvent::Mouse: result = Val_long(529696261); break;
  case QGraphicsSceneContextMenuEvent::Keyboard: result = Val_long(-1042581305); break;
  case QGraphicsSceneContextMenuEvent::Other: result = Val_long(-912009552); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDialog::DialogCode mlqt_QDialog_DialogCode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 87407518: return QDialog::Rejected;
  case 566851975: return QDialog::Accepted;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDialog::DialogCode)Long_val(Field(v, 1));
  }
}

value& mlqt_QDialog_DialogCode_to_ocaml(const QDialog::DialogCode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDialog::Rejected: result = Val_long(87407518); break;
  case QDialog::Accepted: result = Val_long(566851975); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QOpenGLWidget::UpdateBehavior mlqt_QOpenGLWidget_UpdateBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1379145: return QOpenGLWidget::NoPartialUpdate;
  case 843266122: return QOpenGLWidget::PartialUpdate;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QOpenGLWidget::UpdateBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QOpenGLWidget_UpdateBehavior_to_ocaml(const QOpenGLWidget::UpdateBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QOpenGLWidget::NoPartialUpdate: result = Val_long(1379145); break;
  case QOpenGLWidget::PartialUpdate: result = Val_long(843266122); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractSlider::SliderAction mlqt_QAbstractSlider_SliderAction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -424225224: return QAbstractSlider::SliderNoAction;
  case 309230988: return QAbstractSlider::SliderSingleStepAdd;
  case 310129899: return QAbstractSlider::SliderSingleStepSub;
  case -792292635: return QAbstractSlider::SliderPageStepAdd;
  case -791393724: return QAbstractSlider::SliderPageStepSub;
  case -810953966: return QAbstractSlider::SliderToMinimum;
  case -556745436: return QAbstractSlider::SliderToMaximum;
  case -1023148558: return QAbstractSlider::SliderMove;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractSlider::SliderAction)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractSlider_SliderAction_to_ocaml(const QAbstractSlider::SliderAction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractSlider::SliderNoAction: result = Val_long(-424225224); break;
  case QAbstractSlider::SliderSingleStepAdd: result = Val_long(309230988); break;
  case QAbstractSlider::SliderSingleStepSub: result = Val_long(310129899); break;
  case QAbstractSlider::SliderPageStepAdd: result = Val_long(-792292635); break;
  case QAbstractSlider::SliderPageStepSub: result = Val_long(-791393724); break;
  case QAbstractSlider::SliderToMinimum: result = Val_long(-810953966); break;
  case QAbstractSlider::SliderToMaximum: result = Val_long(-556745436); break;
  case QAbstractSlider::SliderMove: result = Val_long(-1023148558); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractSpinBox::StepEnabledFlag mlqt_QAbstractSpinBox_StepEnabledFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -169576380: return QAbstractSpinBox::StepNone;
  case 1010243162: return QAbstractSpinBox::StepUpEnabled;
  case -711620557: return QAbstractSpinBox::StepDownEnabled;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractSpinBox::StepEnabledFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractSpinBox_StepEnabledFlag_to_ocaml(const QAbstractSpinBox::StepEnabledFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractSpinBox::StepNone: result = Val_long(-169576380); break;
  case QAbstractSpinBox::StepUpEnabled: result = Val_long(1010243162); break;
  case QAbstractSpinBox::StepDownEnabled: result = Val_long(-711620557); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractSpinBox::ButtonSymbols mlqt_QAbstractSpinBox_ButtonSymbols_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 562974439: return QAbstractSpinBox::UpDownArrows;
  case 615033494: return QAbstractSpinBox::PlusMinus;
  case 708047840: return QAbstractSpinBox::NoButtons;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractSpinBox::ButtonSymbols)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractSpinBox_ButtonSymbols_to_ocaml(const QAbstractSpinBox::ButtonSymbols& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractSpinBox::UpDownArrows: result = Val_long(562974439); break;
  case QAbstractSpinBox::PlusMinus: result = Val_long(615033494); break;
  case QAbstractSpinBox::NoButtons: result = Val_long(708047840); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractSpinBox::CorrectionMode mlqt_QAbstractSpinBox_CorrectionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -699285483: return QAbstractSpinBox::CorrectToPreviousValue;
  case 975278648: return QAbstractSpinBox::CorrectToNearestValue;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractSpinBox::CorrectionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractSpinBox_CorrectionMode_to_ocaml(const QAbstractSpinBox::CorrectionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractSpinBox::CorrectToPreviousValue: result = Val_long(-699285483); break;
  case QAbstractSpinBox::CorrectToNearestValue: result = Val_long(975278648); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCalendarWidget::HorizontalHeaderFormat mlqt_QCalendarWidget_HorizontalHeaderFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 566292498: return QCalendarWidget::NoHorizontalHeader;
  case -162021478: return QCalendarWidget::SingleLetterDayNames;
  case -401364920: return QCalendarWidget::ShortDayNames;
  case -498154104: return QCalendarWidget::LongDayNames;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCalendarWidget::HorizontalHeaderFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QCalendarWidget_HorizontalHeaderFormat_to_ocaml(const QCalendarWidget::HorizontalHeaderFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCalendarWidget::NoHorizontalHeader: result = Val_long(566292498); break;
  case QCalendarWidget::SingleLetterDayNames: result = Val_long(-162021478); break;
  case QCalendarWidget::ShortDayNames: result = Val_long(-401364920); break;
  case QCalendarWidget::LongDayNames: result = Val_long(-498154104); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCalendarWidget::VerticalHeaderFormat mlqt_QCalendarWidget_VerticalHeaderFormat_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1000363748: return QCalendarWidget::NoVerticalHeader;
  case 742439633: return QCalendarWidget::ISOWeekNumbers;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCalendarWidget::VerticalHeaderFormat)Long_val(Field(v, 1));
  }
}

value& mlqt_QCalendarWidget_VerticalHeaderFormat_to_ocaml(const QCalendarWidget::VerticalHeaderFormat& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCalendarWidget::NoVerticalHeader: result = Val_long(1000363748); break;
  case QCalendarWidget::ISOWeekNumbers: result = Val_long(742439633); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QCalendarWidget::SelectionMode mlqt_QCalendarWidget_SelectionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -738426965: return QCalendarWidget::NoSelection;
  case -24418172: return QCalendarWidget::SingleSelection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QCalendarWidget::SelectionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QCalendarWidget_SelectionMode_to_ocaml(const QCalendarWidget::SelectionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QCalendarWidget::NoSelection: result = Val_long(-738426965); break;
  case QCalendarWidget::SingleSelection: result = Val_long(-24418172); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QComboBox::InsertPolicy mlqt_QComboBox_InsertPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -945882502: return QComboBox::NoInsert;
  case -760047287: return QComboBox::InsertAtTop;
  case 6240493: return QComboBox::InsertAtCurrent;
  case 184835255: return QComboBox::InsertAtBottom;
  case 141934198: return QComboBox::InsertAfterCurrent;
  case 242598497: return QComboBox::InsertBeforeCurrent;
  case 1007152958: return QComboBox::InsertAlphabetically;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QComboBox::InsertPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QComboBox_InsertPolicy_to_ocaml(const QComboBox::InsertPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QComboBox::NoInsert: result = Val_long(-945882502); break;
  case QComboBox::InsertAtTop: result = Val_long(-760047287); break;
  case QComboBox::InsertAtCurrent: result = Val_long(6240493); break;
  case QComboBox::InsertAtBottom: result = Val_long(184835255); break;
  case QComboBox::InsertAfterCurrent: result = Val_long(141934198); break;
  case QComboBox::InsertBeforeCurrent: result = Val_long(242598497); break;
  case QComboBox::InsertAlphabetically: result = Val_long(1007152958); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QComboBox::SizeAdjustPolicy mlqt_QComboBox_SizeAdjustPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -939839676: return QComboBox::AdjustToContents;
  case 963976010: return QComboBox::AdjustToContentsOnFirstShow;
  case 659539876: return QComboBox::AdjustToMinimumContentsLength;
  case -878261149: return QComboBox::AdjustToMinimumContentsLengthWithIcon;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QComboBox::SizeAdjustPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QComboBox_SizeAdjustPolicy_to_ocaml(const QComboBox::SizeAdjustPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QComboBox::AdjustToContents: result = Val_long(-939839676); break;
  case QComboBox::AdjustToContentsOnFirstShow: result = Val_long(963976010); break;
  case QComboBox::AdjustToMinimumContentsLength: result = Val_long(659539876); break;
  case QComboBox::AdjustToMinimumContentsLengthWithIcon: result = Val_long(-878261149); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDialogButtonBox::ButtonRole mlqt_QDialogButtonBox_ButtonRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 401658349: return QDialogButtonBox::InvalidRole;
  case 901370558: return QDialogButtonBox::AcceptRole;
  case -28571499: return QDialogButtonBox::RejectRole;
  case -551209608: return QDialogButtonBox::DestructiveRole;
  case -844731796: return QDialogButtonBox::ActionRole;
  case -535037193: return QDialogButtonBox::HelpRole;
  case -996243427: return QDialogButtonBox::YesRole;
  case -807886729: return QDialogButtonBox::NoRole;
  case 862835909: return QDialogButtonBox::ResetRole;
  case -682570780: return QDialogButtonBox::ApplyRole;
  case 811774223: return QDialogButtonBox::NRoles;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDialogButtonBox::ButtonRole)Long_val(Field(v, 1));
  }
}

value& mlqt_QDialogButtonBox_ButtonRole_to_ocaml(const QDialogButtonBox::ButtonRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDialogButtonBox::InvalidRole: result = Val_long(401658349); break;
  case QDialogButtonBox::AcceptRole: result = Val_long(901370558); break;
  case QDialogButtonBox::RejectRole: result = Val_long(-28571499); break;
  case QDialogButtonBox::DestructiveRole: result = Val_long(-551209608); break;
  case QDialogButtonBox::ActionRole: result = Val_long(-844731796); break;
  case QDialogButtonBox::HelpRole: result = Val_long(-535037193); break;
  case QDialogButtonBox::YesRole: result = Val_long(-996243427); break;
  case QDialogButtonBox::NoRole: result = Val_long(-807886729); break;
  case QDialogButtonBox::ResetRole: result = Val_long(862835909); break;
  case QDialogButtonBox::ApplyRole: result = Val_long(-682570780); break;
  case QDialogButtonBox::NRoles: result = Val_long(811774223); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDialogButtonBox::StandardButton mlqt_QDialogButtonBox_StandardButton_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 60954931: return QDialogButtonBox::NoButton;
  case 17724: return QDialogButtonBox::Ok;
  case 925284189: return QDialogButtonBox::Save;
  case -128962108: return QDialogButtonBox::SaveAll;
  case 881668074: return QDialogButtonBox::Open;
  case 4448519: return QDialogButtonBox::Yes;
  case -322625569: return QDialogButtonBox::YesToAll;
  case 17505: return QDialogButtonBox::No;
  case 878728773: return QDialogButtonBox::NoToAll;
  case 774323088: return QDialogButtonBox::Abort;
  case -101284024: return QDialogButtonBox::Retry;
  case -950194894: return QDialogButtonBox::Ignore;
  case -611285096: return QDialogButtonBox::Close;
  case -322412134: return QDialogButtonBox::Cancel;
  case -310786: return QDialogButtonBox::Discard;
  case 803495649: return QDialogButtonBox::Help;
  case 929625422: return QDialogButtonBox::Apply;
  case -101336657: return QDialogButtonBox::Reset;
  case -346752544: return QDialogButtonBox::RestoreDefaults;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDialogButtonBox::StandardButton)Long_val(Field(v, 1));
  }
}

value& mlqt_QDialogButtonBox_StandardButton_to_ocaml(const QDialogButtonBox::StandardButton& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDialogButtonBox::NoButton: result = Val_long(60954931); break;
  case QDialogButtonBox::Ok: result = Val_long(17724); break;
  case QDialogButtonBox::Save: result = Val_long(925284189); break;
  case QDialogButtonBox::SaveAll: result = Val_long(-128962108); break;
  case QDialogButtonBox::Open: result = Val_long(881668074); break;
  case QDialogButtonBox::Yes: result = Val_long(4448519); break;
  case QDialogButtonBox::YesToAll: result = Val_long(-322625569); break;
  case QDialogButtonBox::No: result = Val_long(17505); break;
  case QDialogButtonBox::NoToAll: result = Val_long(878728773); break;
  case QDialogButtonBox::Abort: result = Val_long(774323088); break;
  case QDialogButtonBox::Retry: result = Val_long(-101284024); break;
  case QDialogButtonBox::Ignore: result = Val_long(-950194894); break;
  case QDialogButtonBox::Close: result = Val_long(-611285096); break;
  case QDialogButtonBox::Cancel: result = Val_long(-322412134); break;
  case QDialogButtonBox::Discard: result = Val_long(-310786); break;
  case QDialogButtonBox::Help: result = Val_long(803495649); break;
  case QDialogButtonBox::Apply: result = Val_long(929625422); break;
  case QDialogButtonBox::Reset: result = Val_long(-101336657); break;
  case QDialogButtonBox::RestoreDefaults: result = Val_long(-346752544); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDialogButtonBox::ButtonLayout mlqt_QDialogButtonBox_ButtonLayout_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 289515462: return QDialogButtonBox::WinLayout;
  case -1059855751: return QDialogButtonBox::MacLayout;
  case 431182934: return QDialogButtonBox::KdeLayout;
  case 605772906: return QDialogButtonBox::GnomeLayout;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDialogButtonBox::ButtonLayout)Long_val(Field(v, 1));
  }
}

value& mlqt_QDialogButtonBox_ButtonLayout_to_ocaml(const QDialogButtonBox::ButtonLayout& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDialogButtonBox::WinLayout: result = Val_long(289515462); break;
  case QDialogButtonBox::MacLayout: result = Val_long(-1059855751); break;
  case QDialogButtonBox::KdeLayout: result = Val_long(431182934); break;
  case QDialogButtonBox::GnomeLayout: result = Val_long(605772906); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDockWidget::DockWidgetFeature mlqt_QDockWidget_DockWidgetFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 323944062: return QDockWidget::DockWidgetClosable;
  case 1015661559: return QDockWidget::DockWidgetMovable;
  case 136555263: return QDockWidget::DockWidgetFloatable;
  case -460979448: return QDockWidget::DockWidgetVerticalTitleBar;
  case 662646987: return QDockWidget::DockWidgetFeatureMask;
  case 335217813: return QDockWidget::AllDockWidgetFeatures;
  case 114421749: return QDockWidget::NoDockWidgetFeatures;
  case 676836040: return QDockWidget::Reserved;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDockWidget::DockWidgetFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QDockWidget_DockWidgetFeature_to_ocaml(const QDockWidget::DockWidgetFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDockWidget::DockWidgetClosable: result = Val_long(323944062); break;
  case QDockWidget::DockWidgetMovable: result = Val_long(1015661559); break;
  case QDockWidget::DockWidgetFloatable: result = Val_long(136555263); break;
  case QDockWidget::DockWidgetVerticalTitleBar: result = Val_long(-460979448); break;
  case QDockWidget::DockWidgetFeatureMask: result = Val_long(662646987); break;
  case QDockWidget::AllDockWidgetFeatures: result = Val_long(335217813); break;
  case QDockWidget::NoDockWidgetFeatures: result = Val_long(114421749); break;
  case QDockWidget::Reserved: result = Val_long(676836040); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFrame::Shape mlqt_QFrame_Shape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 651699212: return QFrame::NoFrame;
  case 3306987: return QFrame::Box;
  case -796923164: return QFrame::Panel;
  case -902555288: return QFrame::WinPanel;
  case 660998236: return QFrame::HLine;
  case 922888042: return QFrame::VLine;
  case -211437615: return QFrame::StyledPanel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFrame::Shape)Long_val(Field(v, 1));
  }
}

value& mlqt_QFrame_Shape_to_ocaml(const QFrame::Shape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFrame::NoFrame: result = Val_long(651699212); break;
  case QFrame::Box: result = Val_long(3306987); break;
  case QFrame::Panel: result = Val_long(-796923164); break;
  case QFrame::WinPanel: result = Val_long(-902555288); break;
  case QFrame::HLine: result = Val_long(660998236); break;
  case QFrame::VLine: result = Val_long(922888042); break;
  case QFrame::StyledPanel: result = Val_long(-211437615); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFrame::Shadow mlqt_QFrame_Shadow_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -675583510: return QFrame::Plain;
  case -387916264: return QFrame::Raised;
  case -695741528: return QFrame::Sunken;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFrame::Shadow)Long_val(Field(v, 1));
  }
}

value& mlqt_QFrame_Shadow_to_ocaml(const QFrame::Shadow& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFrame::Plain: result = Val_long(-675583510); break;
  case QFrame::Raised: result = Val_long(-387916264); break;
  case QFrame::Sunken: result = Val_long(-695741528); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFrame::StyleMask mlqt_QFrame_StyleMask_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 772918507: return QFrame::Shadow_Mask;
  case 805614154: return QFrame::Shape_Mask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFrame::StyleMask)Long_val(Field(v, 1));
  }
}

value& mlqt_QFrame_StyleMask_to_ocaml(const QFrame::StyleMask& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFrame::Shadow_Mask: result = Val_long(772918507); break;
  case QFrame::Shape_Mask: result = Val_long(805614154); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLineEdit::ActionPosition mlqt_QLineEdit_ActionPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 617794927: return QLineEdit::LeadingPosition;
  case -817623611: return QLineEdit::TrailingPosition;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLineEdit::ActionPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QLineEdit_ActionPosition_to_ocaml(const QLineEdit::ActionPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLineEdit::LeadingPosition: result = Val_long(617794927); break;
  case QLineEdit::TrailingPosition: result = Val_long(-817623611); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLineEdit::EchoMode mlqt_QLineEdit_EchoMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -453122489: return QLineEdit::Normal;
  case -952648730: return QLineEdit::NoEcho;
  case 578936635: return QLineEdit::Password;
  case -430349655: return QLineEdit::PasswordEchoOnEdit;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLineEdit::EchoMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QLineEdit_EchoMode_to_ocaml(const QLineEdit::EchoMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLineEdit::Normal: result = Val_long(-453122489); break;
  case QLineEdit::NoEcho: result = Val_long(-952648730); break;
  case QLineEdit::Password: result = Val_long(578936635); break;
  case QLineEdit::PasswordEchoOnEdit: result = Val_long(-430349655); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMainWindow::DockOption mlqt_QMainWindow_DockOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -571077539: return QMainWindow::AnimatedDocks;
  case -472640: return QMainWindow::AllowNestedDocks;
  case -59674997: return QMainWindow::AllowTabbedDocks;
  case -890668951: return QMainWindow::ForceTabbedDocks;
  case -556902348: return QMainWindow::VerticalTabs;
  case 69675053: return QMainWindow::GroupedDragging;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMainWindow::DockOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QMainWindow_DockOption_to_ocaml(const QMainWindow::DockOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMainWindow::AnimatedDocks: result = Val_long(-571077539); break;
  case QMainWindow::AllowNestedDocks: result = Val_long(-472640); break;
  case QMainWindow::AllowTabbedDocks: result = Val_long(-59674997); break;
  case QMainWindow::ForceTabbedDocks: result = Val_long(-890668951); break;
  case QMainWindow::VerticalTabs: result = Val_long(-556902348); break;
  case QMainWindow::GroupedDragging: result = Val_long(69675053); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMdiSubWindow::SubWindowOption mlqt_QMdiSubWindow_SubWindowOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -640034950: return QMdiSubWindow::AllowOutsideAreaHorizontally;
  case 434510668: return QMdiSubWindow::AllowOutsideAreaVertically;
  case 30675769: return QMdiSubWindow::RubberBandResize;
  case -855748330: return QMdiSubWindow::RubberBandMove;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMdiSubWindow::SubWindowOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QMdiSubWindow_SubWindowOption_to_ocaml(const QMdiSubWindow::SubWindowOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMdiSubWindow::AllowOutsideAreaHorizontally: result = Val_long(-640034950); break;
  case QMdiSubWindow::AllowOutsideAreaVertically: result = Val_long(434510668); break;
  case QMdiSubWindow::RubberBandResize: result = Val_long(30675769); break;
  case QMdiSubWindow::RubberBandMove: result = Val_long(-855748330); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QProgressBar::Direction mlqt_QProgressBar_Direction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -649304485: return QProgressBar::TopToBottom;
  case -572701489: return QProgressBar::BottomToTop;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QProgressBar::Direction)Long_val(Field(v, 1));
  }
}

value& mlqt_QProgressBar_Direction_to_ocaml(const QProgressBar::Direction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QProgressBar::TopToBottom: result = Val_long(-649304485); break;
  case QProgressBar::BottomToTop: result = Val_long(-572701489); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QRubberBand::Shape mlqt_QRubberBand_Shape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 848053268: return QRubberBand::Line;
  case 995079183: return QRubberBand::Rectangle;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QRubberBand::Shape)Long_val(Field(v, 1));
  }
}

value& mlqt_QRubberBand_Shape_to_ocaml(const QRubberBand::Shape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QRubberBand::Line: result = Val_long(848053268); break;
  case QRubberBand::Rectangle: result = Val_long(995079183); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabBar::Shape mlqt_QTabBar_Shape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -472326792: return QTabBar::RoundedNorth;
  case -992212288: return QTabBar::RoundedSouth;
  case 299420380: return QTabBar::RoundedWest;
  case 99609258: return QTabBar::RoundedEast;
  case -374802418: return QTabBar::TriangularNorth;
  case -894687914: return QTabBar::TriangularSouth;
  case 280597766: return QTabBar::TriangularWest;
  case 80786644: return QTabBar::TriangularEast;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabBar::Shape)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabBar_Shape_to_ocaml(const QTabBar::Shape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabBar::RoundedNorth: result = Val_long(-472326792); break;
  case QTabBar::RoundedSouth: result = Val_long(-992212288); break;
  case QTabBar::RoundedWest: result = Val_long(299420380); break;
  case QTabBar::RoundedEast: result = Val_long(99609258); break;
  case QTabBar::TriangularNorth: result = Val_long(-374802418); break;
  case QTabBar::TriangularSouth: result = Val_long(-894687914); break;
  case QTabBar::TriangularWest: result = Val_long(280597766); break;
  case QTabBar::TriangularEast: result = Val_long(80786644); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabBar::ButtonPosition mlqt_QTabBar_ButtonPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 755010910: return QTabBar::LeftSide;
  case -655572109: return QTabBar::RightSide;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabBar::ButtonPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabBar_ButtonPosition_to_ocaml(const QTabBar::ButtonPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabBar::LeftSide: result = Val_long(755010910); break;
  case QTabBar::RightSide: result = Val_long(-655572109); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabBar::SelectionBehavior mlqt_QTabBar_SelectionBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 160660690: return QTabBar::SelectLeftTab;
  case -408445163: return QTabBar::SelectRightTab;
  case 251590818: return QTabBar::SelectPreviousTab;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabBar::SelectionBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabBar_SelectionBehavior_to_ocaml(const QTabBar::SelectionBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabBar::SelectLeftTab: result = Val_long(160660690); break;
  case QTabBar::SelectRightTab: result = Val_long(-408445163); break;
  case QTabBar::SelectPreviousTab: result = Val_long(251590818); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabWidget::TabPosition mlqt_QTabWidget_TabPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 855037093: return QTabWidget::North;
  case 335151597: return QTabWidget::South;
  case 969840719: return QTabWidget::West;
  case 770029597: return QTabWidget::East;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabWidget::TabPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabWidget_TabPosition_to_ocaml(const QTabWidget::TabPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabWidget::North: result = Val_long(855037093); break;
  case QTabWidget::South: result = Val_long(335151597); break;
  case QTabWidget::West: result = Val_long(969840719); break;
  case QTabWidget::East: result = Val_long(770029597); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTabWidget::TabShape mlqt_QTabWidget_TabShape_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -631199731: return QTabWidget::Rounded;
  case -697133769: return QTabWidget::Triangular;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTabWidget::TabShape)Long_val(Field(v, 1));
  }
}

value& mlqt_QTabWidget_TabShape_to_ocaml(const QTabWidget::TabShape& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTabWidget::Rounded: result = Val_long(-631199731); break;
  case QTabWidget::Triangular: result = Val_long(-697133769); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QBoxLayout::Direction mlqt_QBoxLayout_Direction_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 430845690: return QBoxLayout::LeftToRight;
  case -887040002: return QBoxLayout::RightToLeft;
  case -649304485: return QBoxLayout::TopToBottom;
  case -572701489: return QBoxLayout::BottomToTop;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QBoxLayout::Direction)Long_val(Field(v, 1));
  }
}

value& mlqt_QBoxLayout_Direction_to_ocaml(const QBoxLayout::Direction& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QBoxLayout::LeftToRight: result = Val_long(430845690); break;
  case QBoxLayout::RightToLeft: result = Val_long(-887040002); break;
  case QBoxLayout::TopToBottom: result = Val_long(-649304485); break;
  case QBoxLayout::BottomToTop: result = Val_long(-572701489); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFormLayout::FieldGrowthPolicy mlqt_QFormLayout_FieldGrowthPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -84419411: return QFormLayout::FieldsStayAtSizeHint;
  case 472817652: return QFormLayout::ExpandingFieldsGrow;
  case 272837780: return QFormLayout::AllNonFixedFieldsGrow;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFormLayout::FieldGrowthPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QFormLayout_FieldGrowthPolicy_to_ocaml(const QFormLayout::FieldGrowthPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFormLayout::FieldsStayAtSizeHint: result = Val_long(-84419411); break;
  case QFormLayout::ExpandingFieldsGrow: result = Val_long(472817652); break;
  case QFormLayout::AllNonFixedFieldsGrow: result = Val_long(272837780); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFormLayout::RowWrapPolicy mlqt_QFormLayout_RowWrapPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -43550252: return QFormLayout::DontWrapRows;
  case -473476929: return QFormLayout::WrapLongRows;
  case 60256784: return QFormLayout::WrapAllRows;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFormLayout::RowWrapPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QFormLayout_RowWrapPolicy_to_ocaml(const QFormLayout::RowWrapPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFormLayout::DontWrapRows: result = Val_long(-43550252); break;
  case QFormLayout::WrapLongRows: result = Val_long(-473476929); break;
  case QFormLayout::WrapAllRows: result = Val_long(60256784); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFormLayout::ItemRole mlqt_QFormLayout_ItemRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -19263638: return QFormLayout::LabelRole;
  case 80769328: return QFormLayout::FieldRole;
  case -732149836: return QFormLayout::SpanningRole;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFormLayout::ItemRole)Long_val(Field(v, 1));
  }
}

value& mlqt_QFormLayout_ItemRole_to_ocaml(const QFormLayout::ItemRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFormLayout::LabelRole: result = Val_long(-19263638); break;
  case QFormLayout::FieldRole: result = Val_long(80769328); break;
  case QFormLayout::SpanningRole: result = Val_long(-732149836); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStackedLayout::StackingMode mlqt_QStackedLayout_StackingMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -212573154: return QStackedLayout::StackOne;
  case -213269799: return QStackedLayout::StackAll;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStackedLayout::StackingMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QStackedLayout_StackingMode_to_ocaml(const QStackedLayout::StackingMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStackedLayout::StackOne: result = Val_long(-212573154); break;
  case QStackedLayout::StackAll: result = Val_long(-213269799); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSlider::StyleOptionType mlqt_QStyleOptionSlider_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionSlider::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSlider::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSlider_StyleOptionType_to_ocaml(const QStyleOptionSlider::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSlider::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSlider::StyleOptionVersion mlqt_QStyleOptionSlider_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionSlider::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSlider::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSlider_StyleOptionVersion_to_ocaml(const QStyleOptionSlider::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSlider::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSpinBox::StyleOptionType mlqt_QStyleOptionSpinBox_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionSpinBox::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSpinBox::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSpinBox_StyleOptionType_to_ocaml(const QStyleOptionSpinBox::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSpinBox::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSpinBox::StyleOptionVersion mlqt_QStyleOptionSpinBox_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionSpinBox::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSpinBox::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSpinBox_StyleOptionVersion_to_ocaml(const QStyleOptionSpinBox::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSpinBox::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolButton::StyleOptionType mlqt_QStyleOptionToolButton_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionToolButton::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolButton::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolButton_StyleOptionType_to_ocaml(const QStyleOptionToolButton::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolButton::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolButton::StyleOptionVersion mlqt_QStyleOptionToolButton_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionToolButton::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolButton::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolButton_StyleOptionVersion_to_ocaml(const QStyleOptionToolButton::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolButton::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionToolButton::ToolButtonFeature mlqt_QStyleOptionToolButton_ToolButtonFeature_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 870530776: return QStyleOptionToolButton::None;
  case 951904681: return QStyleOptionToolButton::Arrow;
  case 858943935: return QStyleOptionToolButton::Menu;
  case -945823273: return QStyleOptionToolButton::PopupDelay;
  case -454128135: return QStyleOptionToolButton::HasMenu;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionToolButton::ToolButtonFeature)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionToolButton_ToolButtonFeature_to_ocaml(const QStyleOptionToolButton::ToolButtonFeature& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionToolButton::None: result = Val_long(870530776); break;
  case QStyleOptionToolButton::Arrow: result = Val_long(951904681); break;
  case QStyleOptionToolButton::Menu: result = Val_long(858943935); break;
  case QStyleOptionToolButton::PopupDelay: result = Val_long(-945823273); break;
  case QStyleOptionToolButton::HasMenu: result = Val_long(-454128135); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionComboBox::StyleOptionType mlqt_QStyleOptionComboBox_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionComboBox::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionComboBox::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionComboBox_StyleOptionType_to_ocaml(const QStyleOptionComboBox::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionComboBox::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionComboBox::StyleOptionVersion mlqt_QStyleOptionComboBox_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionComboBox::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionComboBox::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionComboBox_StyleOptionVersion_to_ocaml(const QStyleOptionComboBox::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionComboBox::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTitleBar::StyleOptionType mlqt_QStyleOptionTitleBar_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionTitleBar::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTitleBar::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTitleBar_StyleOptionType_to_ocaml(const QStyleOptionTitleBar::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTitleBar::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionTitleBar::StyleOptionVersion mlqt_QStyleOptionTitleBar_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionTitleBar::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionTitleBar::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionTitleBar_StyleOptionVersion_to_ocaml(const QStyleOptionTitleBar::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionTitleBar::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionGroupBox::StyleOptionType mlqt_QStyleOptionGroupBox_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionGroupBox::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionGroupBox::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionGroupBox_StyleOptionType_to_ocaml(const QStyleOptionGroupBox::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionGroupBox::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionGroupBox::StyleOptionVersion mlqt_QStyleOptionGroupBox_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionGroupBox::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionGroupBox::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionGroupBox_StyleOptionVersion_to_ocaml(const QStyleOptionGroupBox::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionGroupBox::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSizeGrip::StyleOptionType mlqt_QStyleOptionSizeGrip_StyleOptionType_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 937565914: return QStyleOptionSizeGrip::Type;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSizeGrip::StyleOptionType)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSizeGrip_StyleOptionType_to_ocaml(const QStyleOptionSizeGrip::StyleOptionType& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSizeGrip::Type: result = Val_long(937565914); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QStyleOptionSizeGrip::StyleOptionVersion mlqt_QStyleOptionSizeGrip_StyleOptionVersion_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -901574920: return QStyleOptionSizeGrip::Version;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QStyleOptionSizeGrip::StyleOptionVersion)Long_val(Field(v, 1));
  }
}

value& mlqt_QStyleOptionSizeGrip_StyleOptionVersion_to_ocaml(const QStyleOptionSizeGrip::StyleOptionVersion& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QStyleOptionSizeGrip::Version: result = Val_long(-901574920); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractScrollArea::SizeAdjustPolicy mlqt_QAbstractScrollArea_SizeAdjustPolicy_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -96460253: return QAbstractScrollArea::AdjustIgnored;
  case 963976010: return QAbstractScrollArea::AdjustToContentsOnFirstShow;
  case -939839676: return QAbstractScrollArea::AdjustToContents;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractScrollArea::SizeAdjustPolicy)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractScrollArea_SizeAdjustPolicy_to_ocaml(const QAbstractScrollArea::SizeAdjustPolicy& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractScrollArea::AdjustIgnored: result = Val_long(-96460253); break;
  case QAbstractScrollArea::AdjustToContentsOnFirstShow: result = Val_long(963976010); break;
  case QAbstractScrollArea::AdjustToContents: result = Val_long(-939839676); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLCDNumber::Mode mlqt_QLCDNumber_Mode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 3603131: return QLCDNumber::Hex;
  case 3404194: return QLCDNumber::Dec;
  case 3950784: return QLCDNumber::Oct;
  case 3305639: return QLCDNumber::Bin;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLCDNumber::Mode)Long_val(Field(v, 1));
  }
}

value& mlqt_QLCDNumber_Mode_to_ocaml(const QLCDNumber::Mode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLCDNumber::Hex: result = Val_long(3603131); break;
  case QLCDNumber::Dec: result = Val_long(3404194); break;
  case QLCDNumber::Oct: result = Val_long(3950784); break;
  case QLCDNumber::Bin: result = Val_long(3305639); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QLCDNumber::SegmentStyle mlqt_QLCDNumber_SegmentStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 789528418: return QLCDNumber::Outline;
  case 969114050: return QLCDNumber::Filled;
  case 781662169: return QLCDNumber::Flat;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QLCDNumber::SegmentStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_QLCDNumber_SegmentStyle_to_ocaml(const QLCDNumber::SegmentStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QLCDNumber::Outline: result = Val_long(789528418); break;
  case QLCDNumber::Filled: result = Val_long(969114050); break;
  case QLCDNumber::Flat: result = Val_long(781662169); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFontComboBox::FontFilter mlqt_QFontComboBox_FontFilter_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -685296893: return QFontComboBox::AllFonts;
  case -708675889: return QFontComboBox::ScalableFonts;
  case -972876350: return QFontComboBox::NonScalableFonts;
  case 1064127139: return QFontComboBox::MonospacedFonts;
  case 1071734175: return QFontComboBox::ProportionalFonts;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFontComboBox::FontFilter)Long_val(Field(v, 1));
  }
}

value& mlqt_QFontComboBox_FontFilter_to_ocaml(const QFontComboBox::FontFilter& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFontComboBox::AllFonts: result = Val_long(-685296893); break;
  case QFontComboBox::ScalableFonts: result = Val_long(-708675889); break;
  case QFontComboBox::NonScalableFonts: result = Val_long(-972876350); break;
  case QFontComboBox::MonospacedFonts: result = Val_long(1064127139); break;
  case QFontComboBox::ProportionalFonts: result = Val_long(1071734175); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QDateTimeEdit::Section mlqt_QDateTimeEdit_Section_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1033283460: return QDateTimeEdit::NoSection;
  case 155376316: return QDateTimeEdit::AmPmSection;
  case 502586625: return QDateTimeEdit::MSecSection;
  case -355121999: return QDateTimeEdit::SecondSection;
  case 91774289: return QDateTimeEdit::MinuteSection;
  case 718086401: return QDateTimeEdit::HourSection;
  case 893501193: return QDateTimeEdit::DaySection;
  case -1005643099: return QDateTimeEdit::MonthSection;
  case 1003314568: return QDateTimeEdit::YearSection;
  case -10549552: return QDateTimeEdit::TimeSections_Mask;
  case 696384527: return QDateTimeEdit::DateSections_Mask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QDateTimeEdit::Section)Long_val(Field(v, 1));
  }
}

value& mlqt_QDateTimeEdit_Section_to_ocaml(const QDateTimeEdit::Section& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QDateTimeEdit::NoSection: result = Val_long(1033283460); break;
  case QDateTimeEdit::AmPmSection: result = Val_long(155376316); break;
  case QDateTimeEdit::MSecSection: result = Val_long(502586625); break;
  case QDateTimeEdit::SecondSection: result = Val_long(-355121999); break;
  case QDateTimeEdit::MinuteSection: result = Val_long(91774289); break;
  case QDateTimeEdit::HourSection: result = Val_long(718086401); break;
  case QDateTimeEdit::DaySection: result = Val_long(893501193); break;
  case QDateTimeEdit::MonthSection: result = Val_long(-1005643099); break;
  case QDateTimeEdit::YearSection: result = Val_long(1003314568); break;
  case QDateTimeEdit::TimeSections_Mask: result = Val_long(-10549552); break;
  case QDateTimeEdit::DateSections_Mask: result = Val_long(696384527); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QSlider::TickPosition mlqt_QSlider_TickPosition_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 813881941: return QSlider::NoTicks;
  case -962598681: return QSlider::TicksAbove;
  case -603990917: return QSlider::TicksBelow;
  case -735145595: return QSlider::TicksBothSides;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QSlider::TickPosition)Long_val(Field(v, 1));
  }
}

value& mlqt_QSlider_TickPosition_to_ocaml(const QSlider::TickPosition& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QSlider::NoTicks: result = Val_long(813881941); break;
  case QSlider::TicksAbove: result = Val_long(-962598681); break;
  case QSlider::TicksBelow: result = Val_long(-603990917); break;
  case QSlider::TicksBothSides: result = Val_long(-735145595); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QToolButton::ToolButtonPopupMode mlqt_QToolButton_ToolButtonPopupMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 566174794: return QToolButton::DelayedPopup;
  case 464935771: return QToolButton::MenuButtonPopup;
  case -612474965: return QToolButton::InstantPopup;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QToolButton::ToolButtonPopupMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QToolButton_ToolButtonPopupMode_to_ocaml(const QToolButton::ToolButtonPopupMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QToolButton::DelayedPopup: result = Val_long(566174794); break;
  case QToolButton::MenuButtonPopup: result = Val_long(464935771); break;
  case QToolButton::InstantPopup: result = Val_long(-612474965); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QColorDialog::ColorDialogOption mlqt_QColorDialog_ColorDialogOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 416239042: return QColorDialog::ShowAlphaChannel;
  case 708047840: return QColorDialog::NoButtons;
  case -165990667: return QColorDialog::DontUseNativeDialog;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QColorDialog::ColorDialogOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QColorDialog_ColorDialogOption_to_ocaml(const QColorDialog::ColorDialogOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QColorDialog::ShowAlphaChannel: result = Val_long(416239042); break;
  case QColorDialog::NoButtons: result = Val_long(708047840); break;
  case QColorDialog::DontUseNativeDialog: result = Val_long(-165990667); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDialog::ViewMode mlqt_QFileDialog_ViewMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 615765681: return QFileDialog::Detail;
  case 848054398: return QFileDialog::List;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDialog::ViewMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDialog_ViewMode_to_ocaml(const QFileDialog::ViewMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDialog::Detail: result = Val_long(615765681); break;
  case QFileDialog::List: result = Val_long(848054398); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDialog::FileMode mlqt_QFileDialog_FileMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -465173656: return QFileDialog::AnyFile;
  case 857603783: return QFileDialog::ExistingFile;
  case 840421965: return QFileDialog::Directory;
  case 119599052: return QFileDialog::ExistingFiles;
  case 969879129: return QFileDialog::DirectoryOnly;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDialog::FileMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDialog_FileMode_to_ocaml(const QFileDialog::FileMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDialog::AnyFile: result = Val_long(-465173656); break;
  case QFileDialog::ExistingFile: result = Val_long(857603783); break;
  case QFileDialog::Directory: result = Val_long(840421965); break;
  case QFileDialog::ExistingFiles: result = Val_long(119599052); break;
  case QFileDialog::DirectoryOnly: result = Val_long(969879129); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDialog::AcceptMode mlqt_QFileDialog_AcceptMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 868150034: return QFileDialog::AcceptOpen;
  case 911766149: return QFileDialog::AcceptSave;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDialog::AcceptMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDialog_AcceptMode_to_ocaml(const QFileDialog::AcceptMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDialog::AcceptOpen: result = Val_long(868150034); break;
  case QFileDialog::AcceptSave: result = Val_long(911766149); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDialog::DialogLabel mlqt_QFileDialog_DialogLabel_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 373944388: return QFileDialog::LookIn;
  case 1005917959: return QFileDialog::FileName;
  case 1073649526: return QFileDialog::FileType;
  case 1067124520: return QFileDialog::Accept;
  case 924435839: return QFileDialog::Reject;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDialog::DialogLabel)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDialog_DialogLabel_to_ocaml(const QFileDialog::DialogLabel& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDialog::LookIn: result = Val_long(373944388); break;
  case QFileDialog::FileName: result = Val_long(1005917959); break;
  case QFileDialog::FileType: result = Val_long(1073649526); break;
  case QFileDialog::Accept: result = Val_long(1067124520); break;
  case QFileDialog::Reject: result = Val_long(924435839); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFileDialog::Option mlqt_QFileDialog_Option_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -638487217: return QFileDialog::ShowDirsOnly;
  case 740823597: return QFileDialog::DontResolveSymlinks;
  case -910600004: return QFileDialog::DontConfirmOverwrite;
  case 703182505: return QFileDialog::DontUseSheet;
  case -165990667: return QFileDialog::DontUseNativeDialog;
  case -883155966: return QFileDialog::ReadOnly;
  case 53155677: return QFileDialog::HideNameFilterDetails;
  case 341789684: return QFileDialog::DontUseCustomDirectoryIcons;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFileDialog::Option)Long_val(Field(v, 1));
  }
}

value& mlqt_QFileDialog_Option_to_ocaml(const QFileDialog::Option& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFileDialog::ShowDirsOnly: result = Val_long(-638487217); break;
  case QFileDialog::DontResolveSymlinks: result = Val_long(740823597); break;
  case QFileDialog::DontConfirmOverwrite: result = Val_long(-910600004); break;
  case QFileDialog::DontUseSheet: result = Val_long(703182505); break;
  case QFileDialog::DontUseNativeDialog: result = Val_long(-165990667); break;
  case QFileDialog::ReadOnly: result = Val_long(-883155966); break;
  case QFileDialog::HideNameFilterDetails: result = Val_long(53155677); break;
  case QFileDialog::DontUseCustomDirectoryIcons: result = Val_long(341789684); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QFontDialog::FontDialogOption mlqt_QFontDialog_FontDialogOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 708047840: return QFontDialog::NoButtons;
  case -165990667: return QFontDialog::DontUseNativeDialog;
  case -708675889: return QFontDialog::ScalableFonts;
  case -972876350: return QFontDialog::NonScalableFonts;
  case 1064127139: return QFontDialog::MonospacedFonts;
  case 1071734175: return QFontDialog::ProportionalFonts;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QFontDialog::FontDialogOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QFontDialog_FontDialogOption_to_ocaml(const QFontDialog::FontDialogOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QFontDialog::NoButtons: result = Val_long(708047840); break;
  case QFontDialog::DontUseNativeDialog: result = Val_long(-165990667); break;
  case QFontDialog::ScalableFonts: result = Val_long(-708675889); break;
  case QFontDialog::NonScalableFonts: result = Val_long(-972876350); break;
  case QFontDialog::MonospacedFonts: result = Val_long(1064127139); break;
  case QFontDialog::ProportionalFonts: result = Val_long(1071734175); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QInputDialog::InputDialogOption mlqt_QInputDialog_InputDialogOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 708047840: return QInputDialog::NoButtons;
  case 522813668: return QInputDialog::UseListViewForComboBoxItems;
  case -67666994: return QInputDialog::UsePlainTextEditForTextInput;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QInputDialog::InputDialogOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QInputDialog_InputDialogOption_to_ocaml(const QInputDialog::InputDialogOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QInputDialog::NoButtons: result = Val_long(708047840); break;
  case QInputDialog::UseListViewForComboBoxItems: result = Val_long(522813668); break;
  case QInputDialog::UsePlainTextEditForTextInput: result = Val_long(-67666994); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QInputDialog::InputMode mlqt_QInputDialog_InputMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -119655427: return QInputDialog::TextInput;
  case -531849029: return QInputDialog::IntInput;
  case 661119769: return QInputDialog::DoubleInput;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QInputDialog::InputMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QInputDialog_InputMode_to_ocaml(const QInputDialog::InputMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QInputDialog::TextInput: result = Val_long(-119655427); break;
  case QInputDialog::IntInput: result = Val_long(-531849029); break;
  case QInputDialog::DoubleInput: result = Val_long(661119769); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMessageBox::Icon mlqt_QMessageBox_Icon_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -908288902: return QMessageBox::NoIcon;
  case -120868276: return QMessageBox::Information;
  case -685964740: return QMessageBox::Warning;
  case 141150399: return QMessageBox::Critical;
  case 6444870: return QMessageBox::Question;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMessageBox::Icon)Long_val(Field(v, 1));
  }
}

value& mlqt_QMessageBox_Icon_to_ocaml(const QMessageBox::Icon& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMessageBox::NoIcon: result = Val_long(-908288902); break;
  case QMessageBox::Information: result = Val_long(-120868276); break;
  case QMessageBox::Warning: result = Val_long(-685964740); break;
  case QMessageBox::Critical: result = Val_long(141150399); break;
  case QMessageBox::Question: result = Val_long(6444870); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMessageBox::ButtonRole mlqt_QMessageBox_ButtonRole_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 401658349: return QMessageBox::InvalidRole;
  case 901370558: return QMessageBox::AcceptRole;
  case -28571499: return QMessageBox::RejectRole;
  case -551209608: return QMessageBox::DestructiveRole;
  case -844731796: return QMessageBox::ActionRole;
  case -535037193: return QMessageBox::HelpRole;
  case -996243427: return QMessageBox::YesRole;
  case -807886729: return QMessageBox::NoRole;
  case 862835909: return QMessageBox::ResetRole;
  case -682570780: return QMessageBox::ApplyRole;
  case 811774223: return QMessageBox::NRoles;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMessageBox::ButtonRole)Long_val(Field(v, 1));
  }
}

value& mlqt_QMessageBox_ButtonRole_to_ocaml(const QMessageBox::ButtonRole& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMessageBox::InvalidRole: result = Val_long(401658349); break;
  case QMessageBox::AcceptRole: result = Val_long(901370558); break;
  case QMessageBox::RejectRole: result = Val_long(-28571499); break;
  case QMessageBox::DestructiveRole: result = Val_long(-551209608); break;
  case QMessageBox::ActionRole: result = Val_long(-844731796); break;
  case QMessageBox::HelpRole: result = Val_long(-535037193); break;
  case QMessageBox::YesRole: result = Val_long(-996243427); break;
  case QMessageBox::NoRole: result = Val_long(-807886729); break;
  case QMessageBox::ResetRole: result = Val_long(862835909); break;
  case QMessageBox::ApplyRole: result = Val_long(-682570780); break;
  case QMessageBox::NRoles: result = Val_long(811774223); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMessageBox::StandardButton mlqt_QMessageBox_StandardButton_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 60954931: return QMessageBox::NoButton;
  case 17724: return QMessageBox::Ok;
  case 925284189: return QMessageBox::Save;
  case -128962108: return QMessageBox::SaveAll;
  case 881668074: return QMessageBox::Open;
  case 4448519: return QMessageBox::Yes;
  case -322625569: return QMessageBox::YesToAll;
  case 17505: return QMessageBox::No;
  case 878728773: return QMessageBox::NoToAll;
  case 774323088: return QMessageBox::Abort;
  case -101284024: return QMessageBox::Retry;
  case -950194894: return QMessageBox::Ignore;
  case -611285096: return QMessageBox::Close;
  case -322412134: return QMessageBox::Cancel;
  case -310786: return QMessageBox::Discard;
  case 803495649: return QMessageBox::Help;
  case 929625422: return QMessageBox::Apply;
  case -101336657: return QMessageBox::Reset;
  case -346752544: return QMessageBox::RestoreDefaults;
  case -384499551: return QMessageBox::Default;
  case 258914209: return QMessageBox::Escape;
  case -118719784: return QMessageBox::FlagMask;
  case 687715358: return QMessageBox::ButtonMask;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMessageBox::StandardButton)Long_val(Field(v, 1));
  }
}

value& mlqt_QMessageBox_StandardButton_to_ocaml(const QMessageBox::StandardButton& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMessageBox::NoButton: result = Val_long(60954931); break;
  case QMessageBox::Ok: result = Val_long(17724); break;
  case QMessageBox::Save: result = Val_long(925284189); break;
  case QMessageBox::SaveAll: result = Val_long(-128962108); break;
  case QMessageBox::Open: result = Val_long(881668074); break;
  case QMessageBox::Yes: result = Val_long(4448519); break;
  case QMessageBox::YesToAll: result = Val_long(-322625569); break;
  case QMessageBox::No: result = Val_long(17505); break;
  case QMessageBox::NoToAll: result = Val_long(878728773); break;
  case QMessageBox::Abort: result = Val_long(774323088); break;
  case QMessageBox::Retry: result = Val_long(-101284024); break;
  case QMessageBox::Ignore: result = Val_long(-950194894); break;
  case QMessageBox::Close: result = Val_long(-611285096); break;
  case QMessageBox::Cancel: result = Val_long(-322412134); break;
  case QMessageBox::Discard: result = Val_long(-310786); break;
  case QMessageBox::Help: result = Val_long(803495649); break;
  case QMessageBox::Apply: result = Val_long(929625422); break;
  case QMessageBox::Reset: result = Val_long(-101336657); break;
  case QMessageBox::RestoreDefaults: result = Val_long(-346752544); break;
  case QMessageBox::Default: result = Val_long(-384499551); break;
  case QMessageBox::Escape: result = Val_long(258914209); break;
  case QMessageBox::FlagMask: result = Val_long(-118719784); break;
  case QMessageBox::ButtonMask: result = Val_long(687715358); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWizard::WizardButton mlqt_QWizard_WizardButton_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 253447065: return QWizard::BackButton;
  case 96671589: return QWizard::NextButton;
  case 568878441: return QWizard::CommitButton;
  case 527164101: return QWizard::FinishButton;
  case -416979156: return QWizard::CancelButton;
  case 793842611: return QWizard::HelpButton;
  case 1014237742: return QWizard::CustomButton1;
  case 1014237743: return QWizard::CustomButton2;
  case 1014237744: return QWizard::CustomButton3;
  case -1012636187: return QWizard::Stretch;
  case 60954931: return QWizard::NoButton;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWizard::WizardButton)Long_val(Field(v, 1));
  }
}

value& mlqt_QWizard_WizardButton_to_ocaml(const QWizard::WizardButton& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWizard::BackButton: result = Val_long(253447065); break;
  case QWizard::NextButton: result = Val_long(96671589); break;
  case QWizard::CommitButton: result = Val_long(568878441); break;
  case QWizard::FinishButton: result = Val_long(527164101); break;
  case QWizard::CancelButton: result = Val_long(-416979156); break;
  case QWizard::HelpButton: result = Val_long(793842611); break;
  case QWizard::CustomButton1: result = Val_long(1014237742); break;
  case QWizard::CustomButton2: result = Val_long(1014237743); break;
  case QWizard::CustomButton3: result = Val_long(1014237744); break;
  case QWizard::Stretch: result = Val_long(-1012636187); break;
  case QWizard::NoButton: result = Val_long(60954931); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWizard::WizardPixmap mlqt_QWizard_WizardPixmap_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 1012692545: return QWizard::WatermarkPixmap;
  case -651759224: return QWizard::LogoPixmap;
  case -501884215: return QWizard::BannerPixmap;
  case -247365045: return QWizard::BackgroundPixmap;
  case -940007544: return QWizard::NPixmaps;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWizard::WizardPixmap)Long_val(Field(v, 1));
  }
}

value& mlqt_QWizard_WizardPixmap_to_ocaml(const QWizard::WizardPixmap& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWizard::WatermarkPixmap: result = Val_long(1012692545); break;
  case QWizard::LogoPixmap: result = Val_long(-651759224); break;
  case QWizard::BannerPixmap: result = Val_long(-501884215); break;
  case QWizard::BackgroundPixmap: result = Val_long(-247365045); break;
  case QWizard::NPixmaps: result = Val_long(-940007544); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWizard::WizardStyle mlqt_QWizard_WizardStyle_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 506416607: return QWizard::ClassicStyle;
  case 830467762: return QWizard::ModernStyle;
  case 577642562: return QWizard::MacStyle;
  case 497660848: return QWizard::AeroStyle;
  case -168720112: return QWizard::NStyles;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWizard::WizardStyle)Long_val(Field(v, 1));
  }
}

value& mlqt_QWizard_WizardStyle_to_ocaml(const QWizard::WizardStyle& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWizard::ClassicStyle: result = Val_long(506416607); break;
  case QWizard::ModernStyle: result = Val_long(830467762); break;
  case QWizard::MacStyle: result = Val_long(577642562); break;
  case QWizard::AeroStyle: result = Val_long(497660848); break;
  case QWizard::NStyles: result = Val_long(-168720112); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QWizard::WizardOption mlqt_QWizard_WizardOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 609076106: return QWizard::IndependentPages;
  case -701003287: return QWizard::IgnoreSubTitles;
  case 164151688: return QWizard::ExtendedWatermarkPixmap;
  case -367306638: return QWizard::NoDefaultButton;
  case -126791272: return QWizard::NoBackButtonOnStartPage;
  case -664532002: return QWizard::NoBackButtonOnLastPage;
  case -164830055: return QWizard::DisabledBackButtonOnLastPage;
  case 368821841: return QWizard::HaveNextButtonOnLastPage;
  case -828875123: return QWizard::HaveFinishButtonOnEarlyPages;
  case -160745203: return QWizard::NoCancelButton;
  case 942380306: return QWizard::CancelButtonOnLeft;
  case 66907195: return QWizard::HaveHelpButton;
  case -696259894: return QWizard::HelpButtonOnRight;
  case 77870758: return QWizard::HaveCustomButton1;
  case 77870759: return QWizard::HaveCustomButton2;
  case 77870760: return QWizard::HaveCustomButton3;
  case 224049009: return QWizard::NoCancelButtonOnLastPage;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QWizard::WizardOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QWizard_WizardOption_to_ocaml(const QWizard::WizardOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QWizard::IndependentPages: result = Val_long(609076106); break;
  case QWizard::IgnoreSubTitles: result = Val_long(-701003287); break;
  case QWizard::ExtendedWatermarkPixmap: result = Val_long(164151688); break;
  case QWizard::NoDefaultButton: result = Val_long(-367306638); break;
  case QWizard::NoBackButtonOnStartPage: result = Val_long(-126791272); break;
  case QWizard::NoBackButtonOnLastPage: result = Val_long(-664532002); break;
  case QWizard::DisabledBackButtonOnLastPage: result = Val_long(-164830055); break;
  case QWizard::HaveNextButtonOnLastPage: result = Val_long(368821841); break;
  case QWizard::HaveFinishButtonOnEarlyPages: result = Val_long(-828875123); break;
  case QWizard::NoCancelButton: result = Val_long(-160745203); break;
  case QWizard::CancelButtonOnLeft: result = Val_long(942380306); break;
  case QWizard::HaveHelpButton: result = Val_long(66907195); break;
  case QWizard::HelpButtonOnRight: result = Val_long(-696259894); break;
  case QWizard::HaveCustomButton1: result = Val_long(77870758); break;
  case QWizard::HaveCustomButton2: result = Val_long(77870759); break;
  case QWizard::HaveCustomButton3: result = Val_long(77870760); break;
  case QWizard::NoCancelButtonOnLastPage: result = Val_long(224049009); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsView::ViewportAnchor mlqt_QGraphicsView_ViewportAnchor_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 171110838: return QGraphicsView::NoAnchor;
  case -646396657: return QGraphicsView::AnchorViewCenter;
  case 201497826: return QGraphicsView::AnchorUnderMouse;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsView::ViewportAnchor)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsView_ViewportAnchor_to_ocaml(const QGraphicsView::ViewportAnchor& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsView::NoAnchor: result = Val_long(171110838); break;
  case QGraphicsView::AnchorViewCenter: result = Val_long(-646396657); break;
  case QGraphicsView::AnchorUnderMouse: result = Val_long(201497826); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsView::CacheModeFlag mlqt_QGraphicsView_CacheModeFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -426638854: return QGraphicsView::CacheNone;
  case -448044880: return QGraphicsView::CacheBackground;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsView::CacheModeFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsView_CacheModeFlag_to_ocaml(const QGraphicsView::CacheModeFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsView::CacheNone: result = Val_long(-426638854); break;
  case QGraphicsView::CacheBackground: result = Val_long(-448044880); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsView::DragMode mlqt_QGraphicsView_DragMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -962993931: return QGraphicsView::NoDrag;
  case -251403184: return QGraphicsView::ScrollHandDrag;
  case -955409927: return QGraphicsView::RubberBandDrag;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsView::DragMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsView_DragMode_to_ocaml(const QGraphicsView::DragMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsView::NoDrag: result = Val_long(-962993931); break;
  case QGraphicsView::ScrollHandDrag: result = Val_long(-251403184); break;
  case QGraphicsView::RubberBandDrag: result = Val_long(-955409927); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsView::ViewportUpdateMode mlqt_QGraphicsView_ViewportUpdateMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1067567842: return QGraphicsView::FullViewportUpdate;
  case 952866608: return QGraphicsView::MinimalViewportUpdate;
  case -926501160: return QGraphicsView::SmartViewportUpdate;
  case -957745328: return QGraphicsView::NoViewportUpdate;
  case -270968841: return QGraphicsView::BoundingRectViewportUpdate;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsView::ViewportUpdateMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsView_ViewportUpdateMode_to_ocaml(const QGraphicsView::ViewportUpdateMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsView::FullViewportUpdate: result = Val_long(-1067567842); break;
  case QGraphicsView::MinimalViewportUpdate: result = Val_long(952866608); break;
  case QGraphicsView::SmartViewportUpdate: result = Val_long(-926501160); break;
  case QGraphicsView::NoViewportUpdate: result = Val_long(-957745328); break;
  case QGraphicsView::BoundingRectViewportUpdate: result = Val_long(-270968841); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QGraphicsView::OptimizationFlag mlqt_QGraphicsView_OptimizationFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 698068330: return QGraphicsView::DontClipPainter;
  case -893852620: return QGraphicsView::DontSavePainterState;
  case 341100381: return QGraphicsView::DontAdjustForAntialiasing;
  case -912219374: return QGraphicsView::IndirectPainting;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QGraphicsView::OptimizationFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QGraphicsView_OptimizationFlag_to_ocaml(const QGraphicsView::OptimizationFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QGraphicsView::DontClipPainter: result = Val_long(698068330); break;
  case QGraphicsView::DontSavePainterState: result = Val_long(-893852620); break;
  case QGraphicsView::DontAdjustForAntialiasing: result = Val_long(341100381); break;
  case QGraphicsView::IndirectPainting: result = Val_long(-912219374); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::SelectionMode mlqt_QAbstractItemView_SelectionMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -738426965: return QAbstractItemView::NoSelection;
  case -24418172: return QAbstractItemView::SingleSelection;
  case 522144435: return QAbstractItemView::MultiSelection;
  case -957160397: return QAbstractItemView::ExtendedSelection;
  case 457927044: return QAbstractItemView::ContiguousSelection;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::SelectionMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_SelectionMode_to_ocaml(const QAbstractItemView::SelectionMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::NoSelection: result = Val_long(-738426965); break;
  case QAbstractItemView::SingleSelection: result = Val_long(-24418172); break;
  case QAbstractItemView::MultiSelection: result = Val_long(522144435); break;
  case QAbstractItemView::ExtendedSelection: result = Val_long(-957160397); break;
  case QAbstractItemView::ContiguousSelection: result = Val_long(457927044); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::SelectionBehavior mlqt_QAbstractItemView_SelectionBehavior_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -5617852: return QAbstractItemView::SelectItems;
  case 821784149: return QAbstractItemView::SelectRows;
  case 134717729: return QAbstractItemView::SelectColumns;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::SelectionBehavior)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_SelectionBehavior_to_ocaml(const QAbstractItemView::SelectionBehavior& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::SelectItems: result = Val_long(-5617852); break;
  case QAbstractItemView::SelectRows: result = Val_long(821784149); break;
  case QAbstractItemView::SelectColumns: result = Val_long(134717729); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::ScrollHint mlqt_QAbstractItemView_ScrollHint_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -1007464908: return QAbstractItemView::EnsureVisible;
  case -658883111: return QAbstractItemView::PositionAtTop;
  case 160035367: return QAbstractItemView::PositionAtBottom;
  case 703344913: return QAbstractItemView::PositionAtCenter;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::ScrollHint)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_ScrollHint_to_ocaml(const QAbstractItemView::ScrollHint& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::EnsureVisible: result = Val_long(-1007464908); break;
  case QAbstractItemView::PositionAtTop: result = Val_long(-658883111); break;
  case QAbstractItemView::PositionAtBottom: result = Val_long(160035367); break;
  case QAbstractItemView::PositionAtCenter: result = Val_long(703344913); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::EditTrigger mlqt_QAbstractItemView_EditTrigger_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -370410906: return QAbstractItemView::NoEditTriggers;
  case 79083995: return QAbstractItemView::CurrentChanged;
  case -511199370: return QAbstractItemView::DoubleClicked;
  case -907784852: return QAbstractItemView::SelectedClicked;
  case 861177229: return QAbstractItemView::EditKeyPressed;
  case -27189073: return QAbstractItemView::AnyKeyPressed;
  case 1021171462: return QAbstractItemView::AllEditTriggers;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::EditTrigger)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_EditTrigger_to_ocaml(const QAbstractItemView::EditTrigger& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::NoEditTriggers: result = Val_long(-370410906); break;
  case QAbstractItemView::CurrentChanged: result = Val_long(79083995); break;
  case QAbstractItemView::DoubleClicked: result = Val_long(-511199370); break;
  case QAbstractItemView::SelectedClicked: result = Val_long(-907784852); break;
  case QAbstractItemView::EditKeyPressed: result = Val_long(861177229); break;
  case QAbstractItemView::AnyKeyPressed: result = Val_long(-27189073); break;
  case QAbstractItemView::AllEditTriggers: result = Val_long(1021171462); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::ScrollMode mlqt_QAbstractItemView_ScrollMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 569238499: return QAbstractItemView::ScrollPerItem;
  case 248552886: return QAbstractItemView::ScrollPerPixel;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::ScrollMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_ScrollMode_to_ocaml(const QAbstractItemView::ScrollMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::ScrollPerItem: result = Val_long(569238499); break;
  case QAbstractItemView::ScrollPerPixel: result = Val_long(248552886); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QAbstractItemView::DragDropMode mlqt_QAbstractItemView_DragDropMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 125789124: return QAbstractItemView::NoDragDrop;
  case 23372704: return QAbstractItemView::DragOnly;
  case -922818213: return QAbstractItemView::DropOnly;
  case -98412957: return QAbstractItemView::DragDrop;
  case -67918578: return QAbstractItemView::InternalMove;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QAbstractItemView::DragDropMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QAbstractItemView_DragDropMode_to_ocaml(const QAbstractItemView::DragDropMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QAbstractItemView::NoDragDrop: result = Val_long(125789124); break;
  case QAbstractItemView::DragOnly: result = Val_long(23372704); break;
  case QAbstractItemView::DropOnly: result = Val_long(-922818213); break;
  case QAbstractItemView::DragDrop: result = Val_long(-98412957); break;
  case QAbstractItemView::InternalMove: result = Val_long(-67918578); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMdiArea::AreaOption mlqt_QMdiArea_AreaOption_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -101947800: return QMdiArea::DontMaximizeSubWindowOnActivation;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMdiArea::AreaOption)Long_val(Field(v, 1));
  }
}

value& mlqt_QMdiArea_AreaOption_to_ocaml(const QMdiArea::AreaOption& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMdiArea::DontMaximizeSubWindowOnActivation: result = Val_long(-101947800); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMdiArea::WindowOrder mlqt_QMdiArea_WindowOrder_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 319444943: return QMdiArea::CreationOrder;
  case 253402996: return QMdiArea::StackingOrder;
  case 659291248: return QMdiArea::ActivationHistoryOrder;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMdiArea::WindowOrder)Long_val(Field(v, 1));
  }
}

value& mlqt_QMdiArea_WindowOrder_to_ocaml(const QMdiArea::WindowOrder& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMdiArea::CreationOrder: result = Val_long(319444943); break;
  case QMdiArea::StackingOrder: result = Val_long(253402996); break;
  case QMdiArea::ActivationHistoryOrder: result = Val_long(659291248); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QMdiArea::ViewMode mlqt_QMdiArea_ViewMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -824080395: return QMdiArea::SubWindowView;
  case 95753905: return QMdiArea::TabbedView;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QMdiArea::ViewMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QMdiArea_ViewMode_to_ocaml(const QMdiArea::ViewMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QMdiArea::SubWindowView: result = Val_long(-824080395); break;
  case QMdiArea::TabbedView: result = Val_long(95753905); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QPlainTextEdit::LineWrapMode mlqt_QPlainTextEdit_LineWrapMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -752292149: return QPlainTextEdit::NoWrap;
  case 984115074: return QPlainTextEdit::WidgetWidth;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QPlainTextEdit::LineWrapMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QPlainTextEdit_LineWrapMode_to_ocaml(const QPlainTextEdit::LineWrapMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QPlainTextEdit::NoWrap: result = Val_long(-752292149); break;
  case QPlainTextEdit::WidgetWidth: result = Val_long(984115074); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextEdit::LineWrapMode mlqt_QTextEdit_LineWrapMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case -752292149: return QTextEdit::NoWrap;
  case 984115074: return QTextEdit::WidgetWidth;
  case -276178924: return QTextEdit::FixedPixelWidth;
  case -785181092: return QTextEdit::FixedColumnWidth;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextEdit::LineWrapMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextEdit_LineWrapMode_to_ocaml(const QTextEdit::LineWrapMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextEdit::NoWrap: result = Val_long(-752292149); break;
  case QTextEdit::WidgetWidth: result = Val_long(984115074); break;
  case QTextEdit::FixedPixelWidth: result = Val_long(-276178924); break;
  case QTextEdit::FixedColumnWidth: result = Val_long(-785181092); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QTextEdit::AutoFormattingFlag mlqt_QTextEdit_AutoFormattingFlag_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 98680295: return QTextEdit::AutoNone;
  case 18537519: return QTextEdit::AutoBulletList;
  case -356513582: return QTextEdit::AutoAll;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QTextEdit::AutoFormattingFlag)Long_val(Field(v, 1));
  }
}

value& mlqt_QTextEdit_AutoFormattingFlag_to_ocaml(const QTextEdit::AutoFormattingFlag& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QTextEdit::AutoNone: result = Val_long(98680295); break;
  case QTextEdit::AutoBulletList: result = Val_long(18537519); break;
  case QTextEdit::AutoAll: result = Val_long(-356513582); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QHeaderView::ResizeMode mlqt_QHeaderView_ResizeMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 546035138: return QHeaderView::Interactive;
  case -1012636187: return QHeaderView::Stretch;
  case 332360020: return QHeaderView::Fixed;
  case -378581783: return QHeaderView::ResizeToContents;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QHeaderView::ResizeMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QHeaderView_ResizeMode_to_ocaml(const QHeaderView::ResizeMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QHeaderView::Interactive: result = Val_long(546035138); break;
  case QHeaderView::Stretch: result = Val_long(-1012636187); break;
  case QHeaderView::Fixed: result = Val_long(332360020); break;
  case QHeaderView::ResizeToContents: result = Val_long(-378581783); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListView::Movement mlqt_QListView_Movement_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 982536398: return QListView::Static;
  case 781961420: return QListView::Free;
  case 925925994: return QListView::Snap;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListView::Movement)Long_val(Field(v, 1));
  }
}

value& mlqt_QListView_Movement_to_ocaml(const QListView::Movement& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListView::Static: result = Val_long(982536398); break;
  case QListView::Free: result = Val_long(781961420); break;
  case QListView::Snap: result = Val_long(925925994); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListView::Flow mlqt_QListView_Flow_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 430845690: return QListView::LeftToRight;
  case -649304485: return QListView::TopToBottom;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListView::Flow)Long_val(Field(v, 1));
  }
}

value& mlqt_QListView_Flow_to_ocaml(const QListView::Flow& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListView::LeftToRight: result = Val_long(430845690); break;
  case QListView::TopToBottom: result = Val_long(-649304485); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListView::ResizeMode mlqt_QListView_ResizeMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 332360020: return QListView::Fixed;
  case -676446033: return QListView::Adjust;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListView::ResizeMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QListView_ResizeMode_to_ocaml(const QListView::ResizeMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListView::Fixed: result = Val_long(332360020); break;
  case QListView::Adjust: result = Val_long(-676446033); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListView::LayoutMode mlqt_QListView_LayoutMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 925327257: return QListView::SinglePass;
  case 224479865: return QListView::Batched;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListView::LayoutMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QListView_LayoutMode_to_ocaml(const QListView::LayoutMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListView::SinglePass: result = Val_long(925327257); break;
  case QListView::Batched: result = Val_long(224479865); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

QListView::ViewMode mlqt_QListView_ViewMode_from_ocaml(const value& v)
{
  switch(Long_val(v)) {
  case 34037505: return QListView::ListMode;
  case -820358244: return QListView::IconMode;
  default:
    mlqt_assert(Is_block(v) && Field(v, 0) == -965933879);
    return (QListView::ViewMode)Long_val(Field(v, 1));
  }
}

value& mlqt_QListView_ViewMode_to_ocaml(const QListView::ViewMode& v)
{
  value& result = *mlqt_region_alloc();
  switch(v) {
  case QListView::ListMode: result = Val_long(34037505); break;
  case QListView::IconMode: result = Val_long(-820358244); break;
  default:
    result = caml_alloc_small(2, 0);
    Field(result, 0) = Val_long(-965933879);
    Field(result, 1) = Val_long((value)v);
  }
  return result;
}

