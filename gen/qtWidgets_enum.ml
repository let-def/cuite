open Shared

let qTreeWidgetItem'ItemType = qenum "QTreeWidgetItem" "ItemType" [
  "Type";
  "UserType";
]
let qTreeWidgetItem'ChildIndicatorPolicy = qenum "QTreeWidgetItem" "ChildIndicatorPolicy" [
  "ShowIndicator";
  "DontShowIndicator";
  "DontShowIndicatorWhenChildless";
]
let qFileIconProvider'IconType = qenum "QFileIconProvider" "IconType" [
  "Computer";
  "Desktop";
  "Trashcan";
  "Network";
  "Drive";
  "Folder";
  "File";
]
let qFileIconProvider'Option = qenum "QFileIconProvider" "Option" [
  "DontUseCustomDirectoryIcons";
]
let qFileIconProvider'Options = qflags "QFileIconProvider" "Options" qFileIconProvider'Option
let qGestureRecognizer'ResultFlag = qenum "QGestureRecognizer" "ResultFlag" [
  "Ignore";
  "MayBeGesture";
  "TriggerGesture";
  "FinishGesture";
  "CancelGesture";
  "ResultState_Mask";
  "ConsumeEventHint";
  "ResultHint_Mask";
]
let qTreeWidgetItemIterator'IteratorFlag = qenum "QTreeWidgetItemIterator" "IteratorFlag" [
  "All";
  "Hidden";
  "NotHidden";
  "Selected";
  "Unselected";
  "Selectable";
  "NotSelectable";
  "DragEnabled";
  "DragDisabled";
  "DropEnabled";
  "DropDisabled";
  "HasChildren";
  "NoChildren";
  "Checked";
  "NotChecked";
  "Enabled";
  "Disabled";
  "Editable";
  "NotEditable";
  "UserFlag";
]
let qScrollerProperties'OvershootPolicy = qenum "QScrollerProperties" "OvershootPolicy" [
  "OvershootWhenScrollable";
  "OvershootAlwaysOff";
  "OvershootAlwaysOn";
]
let qScrollerProperties'FrameRates = qenum "QScrollerProperties" "FrameRates" [
  "Standard";
  "Fps60";
  "Fps30";
  "Fps20";
]
let qScrollerProperties'ScrollMetric = qenum "QScrollerProperties" "ScrollMetric" [
  "MousePressEventDelay";
  "DragStartDistance";
  "DragVelocitySmoothingFactor";
  "AxisLockThreshold";
  "ScrollingCurve";
  "DecelerationFactor";
  "MinimumVelocity";
  "MaximumVelocity";
  "MaximumClickThroughVelocity";
  "AcceleratingFlickMaximumTime";
  "AcceleratingFlickSpeedupFactor";
  "SnapPositionRatio";
  "SnapTime";
  "OvershootDragResistanceFactor";
  "OvershootDragDistanceFactor";
  "OvershootScrollDistanceFactor";
  "OvershootScrollTime";
  "HorizontalOvershootPolicy";
  "VerticalOvershootPolicy";
  "FrameRate";
  "ScrollMetricCount";
]
let qTableWidgetItem'ItemType = qenum "QTableWidgetItem" "ItemType" [
  "Type";
  "UserType";
]
let qGraphicsItem'GraphicsItemFlag = qenum "QGraphicsItem" "GraphicsItemFlag" [
  "ItemIsMovable";
  "ItemIsSelectable";
  "ItemIsFocusable";
  "ItemClipsToShape";
  "ItemClipsChildrenToShape";
  "ItemIgnoresTransformations";
  "ItemIgnoresParentOpacity";
  "ItemDoesntPropagateOpacityToChildren";
  "ItemStacksBehindParent";
  "ItemUsesExtendedStyleOption";
  "ItemHasNoContents";
  "ItemSendsGeometryChanges";
  "ItemAcceptsInputMethod";
  "ItemNegativeZStacksBehindParent";
  "ItemIsPanel";
  "ItemIsFocusScope";
  "ItemSendsScenePositionChanges";
  "ItemStopsClickFocusPropagation";
  "ItemStopsFocusHandling";
  "ItemContainsChildrenInShape";
]
let qGraphicsItem'GraphicsItemChange = qenum "QGraphicsItem" "GraphicsItemChange" [
  "ItemPositionChange";
  "ItemMatrixChange";
  "ItemVisibleChange";
  "ItemEnabledChange";
  "ItemSelectedChange";
  "ItemParentChange";
  "ItemChildAddedChange";
  "ItemChildRemovedChange";
  "ItemTransformChange";
  "ItemPositionHasChanged";
  "ItemTransformHasChanged";
  "ItemSceneChange";
  "ItemVisibleHasChanged";
  "ItemEnabledHasChanged";
  "ItemSelectedHasChanged";
  "ItemParentHasChanged";
  "ItemSceneHasChanged";
  "ItemCursorChange";
  "ItemCursorHasChanged";
  "ItemToolTipChange";
  "ItemToolTipHasChanged";
  "ItemFlagsChange";
  "ItemFlagsHaveChanged";
  "ItemZValueChange";
  "ItemZValueHasChanged";
  "ItemOpacityChange";
  "ItemOpacityHasChanged";
  "ItemScenePositionHasChanged";
  "ItemRotationChange";
  "ItemRotationHasChanged";
  "ItemScaleChange";
  "ItemScaleHasChanged";
  "ItemTransformOriginPointChange";
  "ItemTransformOriginPointHasChanged";
]
let qGraphicsItem'CacheMode = qenum "QGraphicsItem" "CacheMode" [
  "NoCache";
  "ItemCoordinateCache";
  "DeviceCoordinateCache";
]
let qGraphicsItem'PanelModality = qenum "QGraphicsItem" "PanelModality" [
  "NonModal";
  "PanelModal";
  "SceneModal";
]
let qListWidgetItem'ItemType = qenum "QListWidgetItem" "ItemType" [
  "Type";
  "UserType";
]
let qColormap'Mode = qenum "QColormap" "Mode" [
  "Direct";
  "Indexed";
  "Gray";
]
let qStyleHintReturn'HintReturnType = qenum "QStyleHintReturn" "HintReturnType" [
  "SH_Default";
  "SH_Mask";
  "SH_Variant";
]
let qStyleHintReturn'StyleOptionType = qenum "QStyleHintReturn" "StyleOptionType" [
  "Type";
]
let qStyleHintReturn'StyleOptionVersion = qenum "QStyleHintReturn" "StyleOptionVersion" [
  "Version";
]
let qStyleOption'OptionType = qenum "QStyleOption" "OptionType" [
  "SO_Default";
  "SO_FocusRect";
  "SO_Button";
  "SO_Tab";
  "SO_MenuItem";
  "SO_Frame";
  "SO_ProgressBar";
  "SO_ToolBox";
  "SO_Header";
  "SO_DockWidget";
  "SO_ViewItem";
  "SO_TabWidgetFrame";
  "SO_TabBarBase";
  "SO_RubberBand";
  "SO_ToolBar";
  "SO_GraphicsItem";
  "SO_Complex";
  "SO_Slider";
  "SO_SpinBox";
  "SO_ToolButton";
  "SO_ComboBox";
  "SO_TitleBar";
  "SO_GroupBox";
  "SO_SizeGrip";
  "SO_CustomBase";
  "SO_ComplexCustomBase";
]
let qStyleOption'StyleOptionType = qenum "QStyleOption" "StyleOptionType" [
  "Type";
]
let qStyleOption'StyleOptionVersion = qenum "QStyleOption" "StyleOptionVersion" [
  "Version";
]
let qSizePolicy'PolicyFlag = qenum "QSizePolicy" "PolicyFlag" [
  "GrowFlag";
  "ExpandFlag";
  "ShrinkFlag";
  "IgnoreFlag";
]
let qSizePolicy'Policy = qenum "QSizePolicy" "Policy" [
  "Fixed";
  "Minimum";
  "Maximum";
  "Preferred";
  "MinimumExpanding";
  "Expanding";
  "Ignored";
]
let qSizePolicy'ControlType = qenum "QSizePolicy" "ControlType" [
  "DefaultType";
  "ButtonBox";
  "CheckBox";
  "ComboBox";
  "Frame";
  "GroupBox";
  "Label";
  "Line";
  "LineEdit";
  "PushButton";
  "RadioButton";
  "Slider";
  "SpinBox";
  "TabWidget";
  "ToolButton";
]
let qSizePolicy'ControlTypes = qflags "QSizePolicy" "ControlTypes" qSizePolicy'ControlType
let qApplication'ColorSpec = qenum "QApplication" "ColorSpec" [
  "NormalColor";
  "CustomColor";
  "ManyColor";
]
let qFileSystemModel'Roles = qenum "QFileSystemModel" "Roles" [
  "FileIconRole";
  "FilePathRole";
  "FileNameRole";
  "FilePermissions";
]
let qDirModel'Roles = qenum "QDirModel" "Roles" [
  "FileIconRole";
  "FilePathRole";
  "FileNameRole";
]
let qStyleOptionFocusRect'StyleOptionType = qenum "QStyleOptionFocusRect" "StyleOptionType" [
  "Type";
]
let qStyleOptionFocusRect'StyleOptionVersion = qenum "QStyleOptionFocusRect" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionFrame'StyleOptionType = qenum "QStyleOptionFrame" "StyleOptionType" [
  "Type";
]
let qStyleOptionFrame'StyleOptionVersion = qenum "QStyleOptionFrame" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionFrame'FrameFeature = qenum "QStyleOptionFrame" "FrameFeature" [
  "None";
  "Flat";
  "Rounded";
]
let qStyleOptionTabWidgetFrame'StyleOptionType = qenum "QStyleOptionTabWidgetFrame" "StyleOptionType" [
  "Type";
]
let qStyleOptionTabWidgetFrame'StyleOptionVersion = qenum "QStyleOptionTabWidgetFrame" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionTabBarBase'StyleOptionType = qenum "QStyleOptionTabBarBase" "StyleOptionType" [
  "Type";
]
let qStyleOptionTabBarBase'StyleOptionVersion = qenum "QStyleOptionTabBarBase" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionHeader'StyleOptionType = qenum "QStyleOptionHeader" "StyleOptionType" [
  "Type";
]
let qStyleOptionHeader'StyleOptionVersion = qenum "QStyleOptionHeader" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionHeader'SectionPosition = qenum "QStyleOptionHeader" "SectionPosition" [
  "Beginning";
  "Middle";
  "End";
  "OnlyOneSection";
]
let qStyleOptionHeader'SelectedPosition = qenum "QStyleOptionHeader" "SelectedPosition" [
  "NotAdjacent";
  "NextIsSelected";
  "PreviousIsSelected";
  "NextAndPreviousAreSelected";
]
let qStyleOptionHeader'SortIndicator = qenum "QStyleOptionHeader" "SortIndicator" [
  "None";
  "SortUp";
  "SortDown";
]
let qStyleOptionButton'StyleOptionType = qenum "QStyleOptionButton" "StyleOptionType" [
  "Type";
]
let qStyleOptionButton'StyleOptionVersion = qenum "QStyleOptionButton" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionButton'ButtonFeature = qenum "QStyleOptionButton" "ButtonFeature" [
  "None";
  "Flat";
  "HasMenu";
  "DefaultButton";
  "AutoDefaultButton";
  "CommandLinkButton";
]
let qStyleOptionTab'StyleOptionType = qenum "QStyleOptionTab" "StyleOptionType" [
  "Type";
]
let qStyleOptionTab'StyleOptionVersion = qenum "QStyleOptionTab" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionTab'TabPosition = qenum "QStyleOptionTab" "TabPosition" [
  "Beginning";
  "Middle";
  "End";
  "OnlyOneTab";
]
let qStyleOptionTab'SelectedPosition = qenum "QStyleOptionTab" "SelectedPosition" [
  "NotAdjacent";
  "NextIsSelected";
  "PreviousIsSelected";
]
let qStyleOptionTab'CornerWidget = qenum "QStyleOptionTab" "CornerWidget" [
  "NoCornerWidgets";
  "LeftCornerWidget";
  "RightCornerWidget";
]
let qStyleOptionTab'TabFeature = qenum "QStyleOptionTab" "TabFeature" [
  "None";
  "HasFrame";
]
let qStyleOptionToolBar'StyleOptionType = qenum "QStyleOptionToolBar" "StyleOptionType" [
  "Type";
]
let qStyleOptionToolBar'StyleOptionVersion = qenum "QStyleOptionToolBar" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionToolBar'ToolBarPosition = qenum "QStyleOptionToolBar" "ToolBarPosition" [
  "Beginning";
  "Middle";
  "End";
  "OnlyOne";
]
let qStyleOptionToolBar'ToolBarFeature = qenum "QStyleOptionToolBar" "ToolBarFeature" [
  "None";
  "Movable";
]
let qStyleOptionProgressBar'StyleOptionType = qenum "QStyleOptionProgressBar" "StyleOptionType" [
  "Type";
]
let qStyleOptionProgressBar'StyleOptionVersion = qenum "QStyleOptionProgressBar" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionMenuItem'StyleOptionType = qenum "QStyleOptionMenuItem" "StyleOptionType" [
  "Type";
]
let qStyleOptionMenuItem'StyleOptionVersion = qenum "QStyleOptionMenuItem" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionMenuItem'MenuItemType = qenum "QStyleOptionMenuItem" "MenuItemType" [
  "Normal";
  "DefaultItem";
  "Separator";
  "SubMenu";
  "Scroller";
  "TearOff";
  "Margin";
  "EmptyArea";
]
let qStyleOptionMenuItem'CheckType = qenum "QStyleOptionMenuItem" "CheckType" [
  "NotCheckable";
  "Exclusive";
  "NonExclusive";
]
let qStyleOptionDockWidget'StyleOptionType = qenum "QStyleOptionDockWidget" "StyleOptionType" [
  "Type";
]
let qStyleOptionDockWidget'StyleOptionVersion = qenum "QStyleOptionDockWidget" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionViewItem'StyleOptionType = qenum "QStyleOptionViewItem" "StyleOptionType" [
  "Type";
]
let qStyleOptionViewItem'StyleOptionVersion = qenum "QStyleOptionViewItem" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionViewItem'Position = qenum "QStyleOptionViewItem" "Position" [
  "Left";
  "Right";
  "Top";
  "Bottom";
]
let qStyleOptionViewItem'ViewItemFeature = qenum "QStyleOptionViewItem" "ViewItemFeature" [
  "None";
  "WrapText";
  "Alternate";
  "HasCheckIndicator";
  "HasDisplay";
  "HasDecoration";
]
let qStyleOptionViewItem'ViewItemPosition = qenum "QStyleOptionViewItem" "ViewItemPosition" [
  "Invalid";
  "Beginning";
  "Middle";
  "End";
  "OnlyOne";
]
let qStyleOptionToolBox'StyleOptionType = qenum "QStyleOptionToolBox" "StyleOptionType" [
  "Type";
]
let qStyleOptionToolBox'StyleOptionVersion = qenum "QStyleOptionToolBox" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionToolBox'TabPosition = qenum "QStyleOptionToolBox" "TabPosition" [
  "Beginning";
  "Middle";
  "End";
  "OnlyOneTab";
]
let qStyleOptionToolBox'SelectedPosition = qenum "QStyleOptionToolBox" "SelectedPosition" [
  "NotAdjacent";
  "NextIsSelected";
  "PreviousIsSelected";
]
let qStyleOptionRubberBand'StyleOptionType = qenum "QStyleOptionRubberBand" "StyleOptionType" [
  "Type";
]
let qStyleOptionRubberBand'StyleOptionVersion = qenum "QStyleOptionRubberBand" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionComplex'StyleOptionType = qenum "QStyleOptionComplex" "StyleOptionType" [
  "Type";
]
let qStyleOptionComplex'StyleOptionVersion = qenum "QStyleOptionComplex" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionGraphicsItem'StyleOptionType = qenum "QStyleOptionGraphicsItem" "StyleOptionType" [
  "Type";
]
let qStyleOptionGraphicsItem'StyleOptionVersion = qenum "QStyleOptionGraphicsItem" "StyleOptionVersion" [
  "Version";
]
let qLayout'SizeConstraint = qenum "QLayout" "SizeConstraint" [
  "SetDefaultConstraint";
  "SetNoConstraint";
  "SetMinimumSize";
  "SetFixedSize";
  "SetMaximumSize";
  "SetMinAndMaxSize";
]
let qStyleHintReturnMask'StyleOptionType = qenum "QStyleHintReturnMask" "StyleOptionType" [
  "Type";
]
let qStyleHintReturnMask'StyleOptionVersion = qenum "QStyleHintReturnMask" "StyleOptionVersion" [
  "Version";
]
let qStyleHintReturnVariant'StyleOptionType = qenum "QStyleHintReturnVariant" "StyleOptionType" [
  "Type";
]
let qStyleHintReturnVariant'StyleOptionVersion = qenum "QStyleHintReturnVariant" "StyleOptionVersion" [
  "Version";
]
let qWidget'RenderFlag = qenum "QWidget" "RenderFlag" [
  "DrawWindowBackground";
  "DrawChildren";
  "IgnoreMask";
]
let qGraphicsPixmapItem'ShapeMode = qenum "QGraphicsPixmapItem" "ShapeMode" [
  "MaskShape";
  "BoundingRectShape";
  "HeuristicMaskShape";
]
let qGraphicsEffect'ChangeFlag = qenum "QGraphicsEffect" "ChangeFlag" [
  "SourceAttached";
  "SourceDetached";
  "SourceBoundingRectChanged";
  "SourceInvalidated";
]
let qGraphicsEffect'PixmapPadMode = qenum "QGraphicsEffect" "PixmapPadMode" [
  "NoPad";
  "PadToTransparentBorder";
  "PadToEffectiveBoundingRect";
]
let qGraphicsScene'ItemIndexMethod = qenum "QGraphicsScene" "ItemIndexMethod" [
  "BspTreeIndex";
  "NoIndex";
]
let qGraphicsScene'SceneLayer = qenum "QGraphicsScene" "SceneLayer" [
  "ItemLayer";
  "BackgroundLayer";
  "ForegroundLayer";
  "AllLayers";
]
let qGraphicsScene'SceneLayers = qflags "QGraphicsScene" "SceneLayers" qGraphicsScene'SceneLayer
let qAbstractItemDelegate'EndEditHint = qenum "QAbstractItemDelegate" "EndEditHint" [
  "NoHint";
  "EditNextItem";
  "EditPreviousItem";
  "SubmitModelCache";
  "RevertModelCache";
]
let qDataWidgetMapper'SubmitPolicy = qenum "QDataWidgetMapper" "SubmitPolicy" [
  "AutoSubmit";
  "ManualSubmit";
]
let qAction'MenuRole = qenum "QAction" "MenuRole" [
  "NoRole";
  "TextHeuristicRole";
  "ApplicationSpecificRole";
  "AboutQtRole";
  "AboutRole";
  "PreferencesRole";
  "QuitRole";
]
let qAction'Priority = qenum "QAction" "Priority" [
  "LowPriority";
  "NormalPriority";
  "HighPriority";
]
let qAction'ActionEvent = qenum "QAction" "ActionEvent" [
  "Trigger";
  "Hover";
]
let qGesture'GestureCancelPolicy = qenum "QGesture" "GestureCancelPolicy" [
  "CancelNone";
  "CancelAllInContext";
]
let qStyle'StateFlag = qenum "QStyle" "StateFlag" [
  "State_None";
  "State_Enabled";
  "State_Raised";
  "State_Sunken";
  "State_Off";
  "State_NoChange";
  "State_On";
  "State_DownArrow";
  "State_Horizontal";
  "State_HasFocus";
  "State_Top";
  "State_Bottom";
  "State_FocusAtBorder";
  "State_AutoRaise";
  "State_MouseOver";
  "State_UpArrow";
  "State_Selected";
  "State_Active";
  "State_Window";
  "State_Open";
  "State_Children";
  "State_Item";
  "State_Sibling";
  "State_Editing";
  "State_KeyboardFocusChange";
  (*"State_HasEditFocus";*)
  "State_ReadOnly";
  "State_Small";
  "State_Mini";
]
let qStyle'State = qflags "QStyle" "State" qStyle'StateFlag
let qStyle'PrimitiveElement = qenum "QStyle" "PrimitiveElement" [
  "PE_Frame";
  "PE_FrameDefaultButton";
  "PE_FrameDockWidget";
  "PE_FrameFocusRect";
  "PE_FrameGroupBox";
  "PE_FrameLineEdit";
  "PE_FrameMenu";
  "PE_FrameStatusBar";
  (*"PE_FrameStatusBarItem";*)
  "PE_FrameTabWidget";
  "PE_FrameWindow";
  "PE_FrameButtonBevel";
  "PE_FrameButtonTool";
  "PE_FrameTabBarBase";
  "PE_PanelButtonCommand";
  "PE_PanelButtonBevel";
  "PE_PanelButtonTool";
  "PE_PanelMenuBar";
  "PE_PanelToolBar";
  "PE_PanelLineEdit";
  "PE_IndicatorArrowDown";
  "PE_IndicatorArrowLeft";
  "PE_IndicatorArrowRight";
  "PE_IndicatorArrowUp";
  "PE_IndicatorBranch";
  "PE_IndicatorButtonDropDown";
  "PE_IndicatorViewItemCheck";
  (*"PE_IndicatorItemViewItemCheck";*)
  "PE_IndicatorCheckBox";
  "PE_IndicatorDockWidgetResizeHandle";
  "PE_IndicatorHeaderArrow";
  "PE_IndicatorMenuCheckMark";
  "PE_IndicatorProgressChunk";
  "PE_IndicatorRadioButton";
  "PE_IndicatorSpinDown";
  "PE_IndicatorSpinMinus";
  "PE_IndicatorSpinPlus";
  "PE_IndicatorSpinUp";
  "PE_IndicatorToolBarHandle";
  "PE_IndicatorToolBarSeparator";
  "PE_PanelTipLabel";
  "PE_IndicatorTabTear";
  (*"PE_IndicatorTabTearLeft";*)
  "PE_PanelScrollAreaCorner";
  "PE_Widget";
  "PE_IndicatorColumnViewArrow";
  "PE_IndicatorItemViewItemDrop";
  "PE_PanelItemViewItem";
  "PE_PanelItemViewRow";
  "PE_PanelStatusBar";
  "PE_IndicatorTabClose";
  "PE_PanelMenu";
  "PE_IndicatorTabTearRight";
  "PE_CustomBase";
]
let qStyle'ControlElement = qenum "QStyle" "ControlElement" [
  "CE_PushButton";
  "CE_PushButtonBevel";
  "CE_PushButtonLabel";
  "CE_CheckBox";
  "CE_CheckBoxLabel";
  "CE_RadioButton";
  "CE_RadioButtonLabel";
  "CE_TabBarTab";
  "CE_TabBarTabShape";
  "CE_TabBarTabLabel";
  "CE_ProgressBar";
  "CE_ProgressBarGroove";
  "CE_ProgressBarContents";
  "CE_ProgressBarLabel";
  "CE_MenuItem";
  "CE_MenuScroller";
  "CE_MenuVMargin";
  "CE_MenuHMargin";
  "CE_MenuTearoff";
  "CE_MenuEmptyArea";
  "CE_MenuBarItem";
  "CE_MenuBarEmptyArea";
  "CE_ToolButtonLabel";
  "CE_Header";
  "CE_HeaderSection";
  "CE_HeaderLabel";
  "CE_ToolBoxTab";
  "CE_SizeGrip";
  "CE_Splitter";
  "CE_RubberBand";
  "CE_DockWidgetTitle";
  "CE_ScrollBarAddLine";
  "CE_ScrollBarSubLine";
  "CE_ScrollBarAddPage";
  "CE_ScrollBarSubPage";
  "CE_ScrollBarSlider";
  "CE_ScrollBarFirst";
  "CE_ScrollBarLast";
  "CE_FocusFrame";
  "CE_ComboBoxLabel";
  "CE_ToolBar";
  "CE_ToolBoxTabShape";
  "CE_ToolBoxTabLabel";
  "CE_HeaderEmptyArea";
  "CE_ColumnViewGrip";
  "CE_ItemViewItem";
  "CE_ShapedFrame";
  "CE_CustomBase";
]
let qStyle'SubElement = qenum "QStyle" "SubElement" [
  "SE_PushButtonContents";
  "SE_PushButtonFocusRect";
  "SE_CheckBoxIndicator";
  "SE_CheckBoxContents";
  "SE_CheckBoxFocusRect";
  "SE_CheckBoxClickRect";
  "SE_RadioButtonIndicator";
  "SE_RadioButtonContents";
  "SE_RadioButtonFocusRect";
  "SE_RadioButtonClickRect";
  "SE_ComboBoxFocusRect";
  "SE_SliderFocusRect";
  "SE_ProgressBarGroove";
  "SE_ProgressBarContents";
  "SE_ProgressBarLabel";
  "SE_ToolBoxTabContents";
  "SE_HeaderLabel";
  "SE_HeaderArrow";
  "SE_TabWidgetTabBar";
  "SE_TabWidgetTabPane";
  "SE_TabWidgetTabContents";
  "SE_TabWidgetLeftCorner";
  "SE_TabWidgetRightCorner";
  (*"SE_ViewItemCheckIndicator";*)
  "SE_ItemViewItemCheckIndicator";
  "SE_TabBarTearIndicator";
  (*"SE_TabBarTearIndicatorLeft";*)
  "SE_TreeViewDisclosureItem";
  "SE_LineEditContents";
  "SE_FrameContents";
  "SE_DockWidgetCloseButton";
  "SE_DockWidgetFloatButton";
  "SE_DockWidgetTitleBarText";
  "SE_DockWidgetIcon";
  "SE_CheckBoxLayoutItem";
  "SE_ComboBoxLayoutItem";
  "SE_DateTimeEditLayoutItem";
  "SE_DialogButtonBoxLayoutItem";
  "SE_LabelLayoutItem";
  "SE_ProgressBarLayoutItem";
  "SE_PushButtonLayoutItem";
  "SE_RadioButtonLayoutItem";
  "SE_SliderLayoutItem";
  "SE_SpinBoxLayoutItem";
  "SE_ToolButtonLayoutItem";
  "SE_FrameLayoutItem";
  "SE_GroupBoxLayoutItem";
  "SE_TabWidgetLayoutItem";
  "SE_ItemViewItemDecoration";
  "SE_ItemViewItemText";
  "SE_ItemViewItemFocusRect";
  "SE_TabBarTabLeftButton";
  "SE_TabBarTabRightButton";
  "SE_TabBarTabText";
  "SE_ShapedFrameContents";
  "SE_ToolBarHandle";
  "SE_TabBarScrollLeftButton";
  "SE_TabBarScrollRightButton";
  "SE_TabBarTearIndicatorRight";
  "SE_CustomBase";
]
let qStyle'ComplexControl = qenum "QStyle" "ComplexControl" [
  "CC_SpinBox";
  "CC_ComboBox";
  "CC_ScrollBar";
  "CC_Slider";
  "CC_ToolButton";
  "CC_TitleBar";
  "CC_Dial";
  "CC_GroupBox";
  "CC_MdiControls";
  "CC_CustomBase";
]
(*let qStyle'SubControl = qenum "QStyle" "SubControl" [
  "SC_None";
  "SC_ScrollBarAddLine";
  "SC_ScrollBarSubLine";
  "SC_ScrollBarAddPage";
  "SC_ScrollBarSubPage";
  "SC_ScrollBarFirst";
  "SC_ScrollBarLast";
  "SC_ScrollBarSlider";
  "SC_ScrollBarGroove";
  "SC_SpinBoxUp";
  "SC_SpinBoxDown";
  "SC_SpinBoxFrame";
  "SC_SpinBoxEditField";
  "SC_ComboBoxFrame";
  "SC_ComboBoxEditField";
  "SC_ComboBoxArrow";
  "SC_ComboBoxListBoxPopup";
  "SC_SliderGroove";
  "SC_SliderHandle";
  "SC_SliderTickmarks";
  "SC_ToolButton";
  "SC_ToolButtonMenu";
  "SC_TitleBarSysMenu";
  "SC_TitleBarMinButton";
  "SC_TitleBarMaxButton";
  "SC_TitleBarCloseButton";
  "SC_TitleBarNormalButton";
  "SC_TitleBarShadeButton";
  "SC_TitleBarUnshadeButton";
  "SC_TitleBarContextHelpButton";
  "SC_TitleBarLabel";
  "SC_DialGroove";
  "SC_DialHandle";
  "SC_DialTickmarks";
  "SC_GroupBoxCheckBox";
  "SC_GroupBoxLabel";
  "SC_GroupBoxContents";
  "SC_GroupBoxFrame";
  "SC_MdiMinButton";
  "SC_MdiNormalButton";
  "SC_MdiCloseButton";
  "SC_CustomBase";
  "SC_All";
]*)
let qStyle'PixelMetric = qenum "QStyle" "PixelMetric" [
  "PM_ButtonMargin";
  "PM_ButtonDefaultIndicator";
  "PM_MenuButtonIndicator";
  "PM_ButtonShiftHorizontal";
  "PM_ButtonShiftVertical";
  "PM_DefaultFrameWidth";
  "PM_SpinBoxFrameWidth";
  "PM_ComboBoxFrameWidth";
  "PM_MaximumDragDistance";
  "PM_ScrollBarExtent";
  "PM_ScrollBarSliderMin";
  "PM_SliderThickness";
  "PM_SliderControlThickness";
  "PM_SliderLength";
  "PM_SliderTickmarkOffset";
  "PM_SliderSpaceAvailable";
  "PM_DockWidgetSeparatorExtent";
  "PM_DockWidgetHandleExtent";
  "PM_DockWidgetFrameWidth";
  "PM_TabBarTabOverlap";
  "PM_TabBarTabHSpace";
  "PM_TabBarTabVSpace";
  "PM_TabBarBaseHeight";
  "PM_TabBarBaseOverlap";
  "PM_ProgressBarChunkWidth";
  "PM_SplitterWidth";
  "PM_TitleBarHeight";
  "PM_MenuScrollerHeight";
  "PM_MenuHMargin";
  "PM_MenuVMargin";
  "PM_MenuPanelWidth";
  "PM_MenuTearoffHeight";
  "PM_MenuDesktopFrameWidth";
  "PM_MenuBarPanelWidth";
  "PM_MenuBarItemSpacing";
  "PM_MenuBarVMargin";
  "PM_MenuBarHMargin";
  "PM_IndicatorWidth";
  "PM_IndicatorHeight";
  "PM_ExclusiveIndicatorWidth";
  "PM_ExclusiveIndicatorHeight";
  "PM_DialogButtonsSeparator";
  "PM_DialogButtonsButtonWidth";
  "PM_DialogButtonsButtonHeight";
  "PM_MdiSubWindowFrameWidth";
  (*"PM_MDIFrameWidth";*)
  "PM_MdiSubWindowMinimizedWidth";
  (*"PM_MDIMinimizedWidth";*)
  "PM_HeaderMargin";
  "PM_HeaderMarkSize";
  "PM_HeaderGripMargin";
  "PM_TabBarTabShiftHorizontal";
  "PM_TabBarTabShiftVertical";
  "PM_TabBarScrollButtonWidth";
  "PM_ToolBarFrameWidth";
  "PM_ToolBarHandleExtent";
  "PM_ToolBarItemSpacing";
  "PM_ToolBarItemMargin";
  "PM_ToolBarSeparatorExtent";
  "PM_ToolBarExtensionExtent";
  "PM_SpinBoxSliderHeight";
  "PM_DefaultTopLevelMargin";
  "PM_DefaultChildMargin";
  "PM_DefaultLayoutSpacing";
  "PM_ToolBarIconSize";
  "PM_ListViewIconSize";
  "PM_IconViewIconSize";
  "PM_SmallIconSize";
  "PM_LargeIconSize";
  "PM_FocusFrameVMargin";
  "PM_FocusFrameHMargin";
  "PM_ToolTipLabelFrameWidth";
  "PM_CheckBoxLabelSpacing";
  "PM_TabBarIconSize";
  "PM_SizeGripSize";
  "PM_DockWidgetTitleMargin";
  "PM_MessageBoxIconSize";
  "PM_ButtonIconSize";
  "PM_DockWidgetTitleBarButtonMargin";
  "PM_RadioButtonLabelSpacing";
  "PM_LayoutLeftMargin";
  "PM_LayoutTopMargin";
  "PM_LayoutRightMargin";
  "PM_LayoutBottomMargin";
  "PM_LayoutHorizontalSpacing";
  "PM_LayoutVerticalSpacing";
  "PM_TabBar_ScrollButtonOverlap";
  "PM_TextCursorWidth";
  "PM_TabCloseIndicatorWidth";
  "PM_TabCloseIndicatorHeight";
  "PM_ScrollView_ScrollBarSpacing";
  "PM_ScrollView_ScrollBarOverlap";
  "PM_SubMenuOverlap";
  "PM_TreeViewIndentation";
  "PM_HeaderDefaultSectionSizeHorizontal";
  "PM_HeaderDefaultSectionSizeVertical";
  "PM_TitleBarButtonIconSize";
  "PM_TitleBarButtonSize";
  "PM_CustomBase";
]
let qStyle'ContentsType = qenum "QStyle" "ContentsType" [
  "CT_PushButton";
  "CT_CheckBox";
  "CT_RadioButton";
  "CT_ToolButton";
  "CT_ComboBox";
  "CT_Splitter";
  "CT_ProgressBar";
  "CT_MenuItem";
  "CT_MenuBarItem";
  "CT_MenuBar";
  "CT_Menu";
  "CT_TabBarTab";
  "CT_Slider";
  "CT_ScrollBar";
  "CT_LineEdit";
  "CT_SpinBox";
  "CT_SizeGrip";
  "CT_TabWidget";
  "CT_DialogButtons";
  "CT_HeaderSection";
  "CT_GroupBox";
  "CT_MdiControls";
  "CT_ItemViewItem";
  "CT_CustomBase";
]
let qStyle'RequestSoftwareInputPanel = qenum "QStyle" "RequestSoftwareInputPanel" [
  "RSIP_OnMouseClickAndAlreadyFocused";
  "RSIP_OnMouseClick";
]
let qStyle'StyleHint = qenum "QStyle" "StyleHint" [
  "SH_EtchDisabledText";
  "SH_DitherDisabledText";
  "SH_ScrollBar_MiddleClickAbsolutePosition";
  "SH_ScrollBar_ScrollWhenPointerLeavesControl";
  "SH_TabBar_SelectMouseType";
  "SH_TabBar_Alignment";
  "SH_Header_ArrowAlignment";
  "SH_Slider_SnapToValue";
  "SH_Slider_SloppyKeyEvents";
  "SH_ProgressDialog_CenterCancelButton";
  "SH_ProgressDialog_TextLabelAlignment";
  "SH_PrintDialog_RightAlignButtons";
  "SH_MainWindow_SpaceBelowMenuBar";
  "SH_FontDialog_SelectAssociatedText";
  "SH_Menu_AllowActiveAndDisabled";
  "SH_Menu_SpaceActivatesItem";
  "SH_Menu_SubMenuPopupDelay";
  "SH_ScrollView_FrameOnlyAroundContents";
  "SH_MenuBar_AltKeyNavigation";
  "SH_ComboBox_ListMouseTracking";
  "SH_Menu_MouseTracking";
  "SH_MenuBar_MouseTracking";
  "SH_ItemView_ChangeHighlightOnFocus";
  "SH_Widget_ShareActivation";
  "SH_Workspace_FillSpaceOnMaximize";
  "SH_ComboBox_Popup";
  "SH_TitleBar_NoBorder";
  "SH_Slider_StopMouseOverSlider";
  (*"SH_ScrollBar_StopMouseOverSlider";*)
  "SH_BlinkCursorWhenTextSelected";
  "SH_RichText_FullWidthSelection";
  "SH_Menu_Scrollable";
  "SH_GroupBox_TextLabelVerticalAlignment";
  "SH_GroupBox_TextLabelColor";
  "SH_Menu_SloppySubMenus";
  "SH_Table_GridLineColor";
  "SH_LineEdit_PasswordCharacter";
  "SH_DialogButtons_DefaultButton";
  "SH_ToolBox_SelectedPageTitleBold";
  "SH_TabBar_PreferNoArrows";
  "SH_ScrollBar_LeftClickAbsolutePosition";
  "SH_ListViewExpand_SelectMouseType";
  "SH_UnderlineShortcut";
  "SH_SpinBox_AnimateButton";
  "SH_SpinBox_KeyPressAutoRepeatRate";
  "SH_SpinBox_ClickAutoRepeatRate";
  "SH_Menu_FillScreenWithScroll";
  "SH_ToolTipLabel_Opacity";
  "SH_DrawMenuBarSeparator";
  "SH_TitleBar_ModifyNotification";
  "SH_Button_FocusPolicy";
  "SH_MessageBox_UseBorderForButtonSpacing";
  "SH_TitleBar_AutoRaise";
  "SH_ToolButton_PopupDelay";
  "SH_FocusFrame_Mask";
  "SH_RubberBand_Mask";
  "SH_WindowFrame_Mask";
  "SH_SpinControls_DisableOnBounds";
  "SH_Dial_BackgroundRole";
  "SH_ComboBox_LayoutDirection";
  "SH_ItemView_EllipsisLocation";
  "SH_ItemView_ShowDecorationSelected";
  "SH_ItemView_ActivateItemOnSingleClick";
  "SH_ScrollBar_ContextMenu";
  "SH_ScrollBar_RollBetweenButtons";
  "SH_Slider_AbsoluteSetButtons";
  "SH_Slider_PageSetButtons";
  "SH_Menu_KeyboardSearch";
  "SH_TabBar_ElideMode";
  "SH_DialogButtonLayout";
  "SH_ComboBox_PopupFrameStyle";
  "SH_MessageBox_TextInteractionFlags";
  "SH_DialogButtonBox_ButtonsHaveIcons";
  "SH_SpellCheckUnderlineStyle";
  "SH_MessageBox_CenterButtons";
  "SH_Menu_SelectionWrap";
  "SH_ItemView_MovementWithoutUpdatingSelection";
  "SH_ToolTip_Mask";
  "SH_FocusFrame_AboveWidget";
  "SH_TextControl_FocusIndicatorTextCharFormat";
  "SH_WizardStyle";
  "SH_ItemView_ArrowKeysNavigateIntoChildren";
  "SH_Menu_Mask";
  "SH_Menu_FlashTriggeredItem";
  "SH_Menu_FadeOutOnHide";
  "SH_SpinBox_ClickAutoRepeatThreshold";
  "SH_ItemView_PaintAlternatingRowColorsForEmptyArea";
  "SH_FormLayoutWrapPolicy";
  "SH_TabWidget_DefaultTabPosition";
  "SH_ToolBar_Movable";
  "SH_FormLayoutFieldGrowthPolicy";
  "SH_FormLayoutFormAlignment";
  "SH_FormLayoutLabelAlignment";
  "SH_ItemView_DrawDelegateFrame";
  "SH_TabBar_CloseButtonPosition";
  "SH_DockWidget_ButtonsHaveFrame";
  "SH_ToolButtonStyle";
  "SH_RequestSoftwareInputPanel";
  "SH_ScrollBar_Transient";
  "SH_Menu_SupportsSections";
  "SH_ToolTip_WakeUpDelay";
  "SH_ToolTip_FallAsleepDelay";
  "SH_Widget_Animate";
  "SH_Splitter_OpaqueResize";
  "SH_ComboBox_UseNativePopup";
  "SH_LineEdit_PasswordMaskDelay";
  "SH_TabBar_ChangeCurrentDelay";
  "SH_Menu_SubMenuUniDirection";
  "SH_Menu_SubMenuUniDirectionFailCount";
  "SH_Menu_SubMenuSloppySelectOtherActions";
  "SH_Menu_SubMenuSloppyCloseTimeout";
  "SH_Menu_SubMenuResetWhenReenteringParent";
  "SH_Menu_SubMenuDontStartSloppyOnLeave";
  "SH_ItemView_ScrollMode";
  "SH_CustomBase";
]
let qStyle'StandardPixmap = qenum "QStyle" "StandardPixmap" [
  "SP_TitleBarMenuButton";
  "SP_TitleBarMinButton";
  "SP_TitleBarMaxButton";
  "SP_TitleBarCloseButton";
  "SP_TitleBarNormalButton";
  "SP_TitleBarShadeButton";
  "SP_TitleBarUnshadeButton";
  "SP_TitleBarContextHelpButton";
  "SP_DockWidgetCloseButton";
  "SP_MessageBoxInformation";
  "SP_MessageBoxWarning";
  "SP_MessageBoxCritical";
  "SP_MessageBoxQuestion";
  "SP_DesktopIcon";
  "SP_TrashIcon";
  "SP_ComputerIcon";
  "SP_DriveFDIcon";
  "SP_DriveHDIcon";
  "SP_DriveCDIcon";
  "SP_DriveDVDIcon";
  "SP_DriveNetIcon";
  "SP_DirOpenIcon";
  "SP_DirClosedIcon";
  "SP_DirLinkIcon";
  "SP_DirLinkOpenIcon";
  "SP_FileIcon";
  "SP_FileLinkIcon";
  "SP_ToolBarHorizontalExtensionButton";
  "SP_ToolBarVerticalExtensionButton";
  "SP_FileDialogStart";
  "SP_FileDialogEnd";
  "SP_FileDialogToParent";
  "SP_FileDialogNewFolder";
  "SP_FileDialogDetailedView";
  "SP_FileDialogInfoView";
  "SP_FileDialogContentsView";
  "SP_FileDialogListView";
  "SP_FileDialogBack";
  "SP_DirIcon";
  "SP_DialogOkButton";
  "SP_DialogCancelButton";
  "SP_DialogHelpButton";
  "SP_DialogOpenButton";
  "SP_DialogSaveButton";
  "SP_DialogCloseButton";
  "SP_DialogApplyButton";
  "SP_DialogResetButton";
  "SP_DialogDiscardButton";
  "SP_DialogYesButton";
  "SP_DialogNoButton";
  "SP_ArrowUp";
  "SP_ArrowDown";
  "SP_ArrowLeft";
  "SP_ArrowRight";
  "SP_ArrowBack";
  "SP_ArrowForward";
  "SP_DirHomeIcon";
  "SP_CommandLink";
  "SP_VistaShield";
  "SP_BrowserReload";
  "SP_BrowserStop";
  "SP_MediaPlay";
  "SP_MediaStop";
  "SP_MediaPause";
  "SP_MediaSkipForward";
  "SP_MediaSkipBackward";
  "SP_MediaSeekForward";
  "SP_MediaSeekBackward";
  "SP_MediaVolume";
  "SP_MediaVolumeMuted";
  "SP_LineEditClearButton";
  "SP_CustomBase";
]
let qCompleter'CompletionMode = qenum "QCompleter" "CompletionMode" [
  "PopupCompletion";
  "UnfilteredPopupCompletion";
  "InlineCompletion";
]
let qCompleter'ModelSorting = qenum "QCompleter" "ModelSorting" [
  "UnsortedModel";
  "CaseSensitivelySortedModel";
  "CaseInsensitivelySortedModel";
]
let qScroller'State = qenum "QScroller" "State" [
  "Inactive";
  "Pressed";
  "Dragging";
  "Scrolling";
]
let qScroller'ScrollerGestureType = qenum "QScroller" "ScrollerGestureType" [
  "TouchGesture";
  "LeftMouseButtonGesture";
  "RightMouseButtonGesture";
  "MiddleMouseButtonGesture";
]
let qScroller'Input = qenum "QScroller" "Input" [
  "InputPress";
  "InputMove";
  "InputRelease";
]
let qSystemTrayIcon'ActivationReason = qenum "QSystemTrayIcon" "ActivationReason" [
  "Unknown";
  "Context";
  "DoubleClick";
  "Trigger";
  "MiddleClick";
]
let qSystemTrayIcon'MessageIcon = qenum "QSystemTrayIcon" "MessageIcon" [
  "NoIcon";
  "Information";
  "Warning";
  "Critical";
]
let qPinchGesture'ChangeFlag = qenum "QPinchGesture" "ChangeFlag" [
  "ScaleFactorChanged";
  "RotationAngleChanged";
  "CenterPointChanged";
]
let qSwipeGesture'SwipeDirection = qenum "QSwipeGesture" "SwipeDirection" [
  "NoDirection";
  "Left";
  "Right";
  "Up";
  "Down";
]
let qGraphicsBlurEffect'BlurHint = qenum "QGraphicsBlurEffect" "BlurHint" [
  "PerformanceHint";
  "QualityHint";
  "AnimationHint";
]
let qGraphicsBlurEffect'BlurHints = qflags "QGraphicsBlurEffect" "BlurHints" qGraphicsBlurEffect'BlurHint
let qGraphicsSceneContextMenuEvent'Reason = qenum "QGraphicsSceneContextMenuEvent" "Reason" [
  "Mouse";
  "Keyboard";
  "Other";
]
let qDialog'DialogCode = qenum "QDialog" "DialogCode" [
  "Rejected";
  "Accepted";
]
let qOpenGLWidget'UpdateBehavior = qenum "QOpenGLWidget" "UpdateBehavior" [
  "NoPartialUpdate";
  "PartialUpdate";
]
let qAbstractSlider'SliderAction = qenum "QAbstractSlider" "SliderAction" [
  "SliderNoAction";
  "SliderSingleStepAdd";
  "SliderSingleStepSub";
  "SliderPageStepAdd";
  "SliderPageStepSub";
  "SliderToMinimum";
  "SliderToMaximum";
  "SliderMove";
]
(*let qAbstractSlider'SliderChange = qenum "QAbstractSlider" "SliderChange" [
  "SliderRangeChange";
  "SliderOrientationChange";
  "SliderStepsChange";
  "SliderValueChange";
]*)
let qAbstractSpinBox'StepEnabledFlag = qenum "QAbstractSpinBox" "StepEnabledFlag" [
  "StepNone";
  "StepUpEnabled";
  "StepDownEnabled";
]
let qAbstractSpinBox'ButtonSymbols = qenum "QAbstractSpinBox" "ButtonSymbols" [
  "UpDownArrows";
  "PlusMinus";
  "NoButtons";
]
let qAbstractSpinBox'CorrectionMode = qenum "QAbstractSpinBox" "CorrectionMode" [
  "CorrectToPreviousValue";
  "CorrectToNearestValue";
]
let qCalendarWidget'HorizontalHeaderFormat = qenum "QCalendarWidget" "HorizontalHeaderFormat" [
  "NoHorizontalHeader";
  "SingleLetterDayNames";
  "ShortDayNames";
  "LongDayNames";
]
let qCalendarWidget'VerticalHeaderFormat = qenum "QCalendarWidget" "VerticalHeaderFormat" [
  "NoVerticalHeader";
  "ISOWeekNumbers";
]
let qCalendarWidget'SelectionMode = qenum "QCalendarWidget" "SelectionMode" [
  "NoSelection";
  "SingleSelection";
]
let qComboBox'InsertPolicy = qenum "QComboBox" "InsertPolicy" [
  "NoInsert";
  "InsertAtTop";
  "InsertAtCurrent";
  "InsertAtBottom";
  "InsertAfterCurrent";
  "InsertBeforeCurrent";
  "InsertAlphabetically";
]
let qComboBox'SizeAdjustPolicy = qenum "QComboBox" "SizeAdjustPolicy" [
  "AdjustToContents";
  "AdjustToContentsOnFirstShow";
  "AdjustToMinimumContentsLength";
  "AdjustToMinimumContentsLengthWithIcon";
]
let qDialogButtonBox'ButtonRole = qenum "QDialogButtonBox" "ButtonRole" [
  "InvalidRole";
  "AcceptRole";
  "RejectRole";
  "DestructiveRole";
  "ActionRole";
  "HelpRole";
  "YesRole";
  "NoRole";
  "ResetRole";
  "ApplyRole";
  "NRoles";
]
let qDialogButtonBox'StandardButton = qenum "QDialogButtonBox" "StandardButton" [
  "NoButton";
  "Ok";
  "Save";
  "SaveAll";
  "Open";
  "Yes";
  "YesToAll";
  "No";
  "NoToAll";
  "Abort";
  "Retry";
  "Ignore";
  "Close";
  "Cancel";
  "Discard";
  "Help";
  "Apply";
  "Reset";
  "RestoreDefaults";
  (*"FirstButton";
  "LastButton";*)
]
let qDialogButtonBox'StandardButtons = qflags "QDialogButtonBox" "StandardButtons" qDialogButtonBox'StandardButton
let qDialogButtonBox'ButtonLayout = qenum "QDialogButtonBox" "ButtonLayout" [
  "WinLayout";
  "MacLayout";
  "KdeLayout";
  "GnomeLayout";
]
let qDockWidget'DockWidgetFeature = qenum "QDockWidget" "DockWidgetFeature" [
  "DockWidgetClosable";
  "DockWidgetMovable";
  "DockWidgetFloatable";
  "DockWidgetVerticalTitleBar";
  "DockWidgetFeatureMask";
  "AllDockWidgetFeatures";
  "NoDockWidgetFeatures";
  "Reserved";
]
let qDockWidget'DockWidgetFeatures = qflags "QDockWidget" "DockWidgetFeatures" qDockWidget'DockWidgetFeature
let qFrame'Shape = qenum "QFrame" "Shape" [
  "NoFrame";
  "Box";
  "Panel";
  "WinPanel";
  "HLine";
  "VLine";
  "StyledPanel";
]
let qFrame'Shadow = qenum "QFrame" "Shadow" [
  "Plain";
  "Raised";
  "Sunken";
]
let qFrame'StyleMask = qenum "QFrame" "StyleMask" [
  "Shadow_Mask";
  "Shape_Mask";
]
let qLineEdit'ActionPosition = qenum "QLineEdit" "ActionPosition" [
  "LeadingPosition";
  "TrailingPosition";
]
let qLineEdit'EchoMode = qenum "QLineEdit" "EchoMode" [
  "Normal";
  "NoEcho";
  "Password";
  "PasswordEchoOnEdit";
]
let qMainWindow'DockOption = qenum "QMainWindow" "DockOption" [
  "AnimatedDocks";
  "AllowNestedDocks";
  "AllowTabbedDocks";
  "ForceTabbedDocks";
  "VerticalTabs";
  "GroupedDragging";
]
let qMainWindow'DockOptions = qflags "QMainWindow" "DockOptions" qMainWindow'DockOption
let qMdiSubWindow'SubWindowOption = qenum "QMdiSubWindow" "SubWindowOption" [
  "AllowOutsideAreaHorizontally";
  "AllowOutsideAreaVertically";
  "RubberBandResize";
  "RubberBandMove";
]
let qProgressBar'Direction = qenum "QProgressBar" "Direction" [
  "TopToBottom";
  "BottomToTop";
]
let qRubberBand'Shape = qenum "QRubberBand" "Shape" [
  "Line";
  "Rectangle";
]
let qTabBar'Shape = qenum "QTabBar" "Shape" [
  "RoundedNorth";
  "RoundedSouth";
  "RoundedWest";
  "RoundedEast";
  "TriangularNorth";
  "TriangularSouth";
  "TriangularWest";
  "TriangularEast";
]
let qTabBar'ButtonPosition = qenum "QTabBar" "ButtonPosition" [
  "LeftSide";
  "RightSide";
]
let qTabBar'SelectionBehavior = qenum "QTabBar" "SelectionBehavior" [
  "SelectLeftTab";
  "SelectRightTab";
  "SelectPreviousTab";
]
let qTabWidget'TabPosition = qenum "QTabWidget" "TabPosition" [
  "North";
  "South";
  "West";
  "East";
]
let qTabWidget'TabShape = qenum "QTabWidget" "TabShape" [
  "Rounded";
  "Triangular";
]
let qBoxLayout'Direction = qenum "QBoxLayout" "Direction" [
  "LeftToRight";
  "RightToLeft";
  "TopToBottom";
  "BottomToTop";
  (*"Down";*)
  (*"Up";*)
]
let qFormLayout'FieldGrowthPolicy = qenum "QFormLayout" "FieldGrowthPolicy" [
  "FieldsStayAtSizeHint";
  "ExpandingFieldsGrow";
  "AllNonFixedFieldsGrow";
]
let qFormLayout'RowWrapPolicy = qenum "QFormLayout" "RowWrapPolicy" [
  "DontWrapRows";
  "WrapLongRows";
  "WrapAllRows";
]
let qFormLayout'ItemRole = qenum "QFormLayout" "ItemRole" [
  "LabelRole";
  "FieldRole";
  "SpanningRole";
]
let qStackedLayout'StackingMode = qenum "QStackedLayout" "StackingMode" [
  "StackOne";
  "StackAll";
]
let qStyleOptionSlider'StyleOptionType = qenum "QStyleOptionSlider" "StyleOptionType" [
  "Type";
]
let qStyleOptionSlider'StyleOptionVersion = qenum "QStyleOptionSlider" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionSpinBox'StyleOptionType = qenum "QStyleOptionSpinBox" "StyleOptionType" [
  "Type";
]
let qStyleOptionSpinBox'StyleOptionVersion = qenum "QStyleOptionSpinBox" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionToolButton'StyleOptionType = qenum "QStyleOptionToolButton" "StyleOptionType" [
  "Type";
]
let qStyleOptionToolButton'StyleOptionVersion = qenum "QStyleOptionToolButton" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionToolButton'ToolButtonFeature = qenum "QStyleOptionToolButton" "ToolButtonFeature" [
  "None";
  "Arrow";
  "Menu";
  (*"MenuButtonPopup";*)
  "PopupDelay";
  "HasMenu";
]
let qStyleOptionComboBox'StyleOptionType = qenum "QStyleOptionComboBox" "StyleOptionType" [
  "Type";
]
let qStyleOptionComboBox'StyleOptionVersion = qenum "QStyleOptionComboBox" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionTitleBar'StyleOptionType = qenum "QStyleOptionTitleBar" "StyleOptionType" [
  "Type";
]
let qStyleOptionTitleBar'StyleOptionVersion = qenum "QStyleOptionTitleBar" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionGroupBox'StyleOptionType = qenum "QStyleOptionGroupBox" "StyleOptionType" [
  "Type";
]
let qStyleOptionGroupBox'StyleOptionVersion = qenum "QStyleOptionGroupBox" "StyleOptionVersion" [
  "Version";
]
let qStyleOptionSizeGrip'StyleOptionType = qenum "QStyleOptionSizeGrip" "StyleOptionType" [
  "Type";
]
let qStyleOptionSizeGrip'StyleOptionVersion = qenum "QStyleOptionSizeGrip" "StyleOptionVersion" [
  "Version";
]
let qAbstractScrollArea'SizeAdjustPolicy = qenum "QAbstractScrollArea" "SizeAdjustPolicy" [
  "AdjustIgnored";
  "AdjustToContentsOnFirstShow";
  "AdjustToContents";
]
let qLCDNumber'Mode = qenum "QLCDNumber" "Mode" [
  "Hex";
  "Dec";
  "Oct";
  "Bin";
]
let qLCDNumber'SegmentStyle = qenum "QLCDNumber" "SegmentStyle" [
  "Outline";
  "Filled";
  "Flat";
]
let qFontComboBox'FontFilter = qenum "QFontComboBox" "FontFilter" [
  "AllFonts";
  "ScalableFonts";
  "NonScalableFonts";
  "MonospacedFonts";
  "ProportionalFonts";
]
let qFontComboBox'FontFilters = qflags "QFontComboBox" "FontFilters" qFontComboBox'FontFilter
let qDateTimeEdit'Section = qenum "QDateTimeEdit" "Section" [
  "NoSection";
  "AmPmSection";
  "MSecSection";
  "SecondSection";
  "MinuteSection";
  "HourSection";
  "DaySection";
  "MonthSection";
  "YearSection";
  "TimeSections_Mask";
  "DateSections_Mask";
]
let qDateTimeEdit'Sections = qflags "QDateTimeEdit" "Sections" qDateTimeEdit'Section
let qSlider'TickPosition = qenum "QSlider" "TickPosition" [
  "NoTicks";
  "TicksAbove";
  (*"TicksLeft";*)
  "TicksBelow";
  (*"TicksRight";*)
  "TicksBothSides";
]
let qToolButton'ToolButtonPopupMode = qenum "QToolButton" "ToolButtonPopupMode" [
  "DelayedPopup";
  "MenuButtonPopup";
  "InstantPopup";
]
let qColorDialog'ColorDialogOption = qenum "QColorDialog" "ColorDialogOption" [
  "ShowAlphaChannel";
  "NoButtons";
  "DontUseNativeDialog";
]
let qColorDialog'ColorDialogOptions = qflags "QColorDialog" "ColorDialogOptions" qColorDialog'ColorDialogOption
let qFileDialog'ViewMode = qenum "QFileDialog" "ViewMode" [
  "Detail";
  "List";
]
let qFileDialog'FileMode = qenum "QFileDialog" "FileMode" [
  "AnyFile";
  "ExistingFile";
  "Directory";
  "ExistingFiles";
  "DirectoryOnly";
]
let qFileDialog'AcceptMode = qenum "QFileDialog" "AcceptMode" [
  "AcceptOpen";
  "AcceptSave";
]
let qFileDialog'DialogLabel = qenum "QFileDialog" "DialogLabel" [
  "LookIn";
  "FileName";
  "FileType";
  "Accept";
  "Reject";
]
let qFileDialog'Option = qenum "QFileDialog" "Option" [
  "ShowDirsOnly";
  "DontResolveSymlinks";
  "DontConfirmOverwrite";
  "DontUseSheet";
  "DontUseNativeDialog";
  "ReadOnly";
  "HideNameFilterDetails";
  "DontUseCustomDirectoryIcons";
]
let qFileDialog'Options = qflags "QFileDialog" "Options" qFileDialog'Option
let qFontDialog'FontDialogOption = qenum "QFontDialog" "FontDialogOption" [
  "NoButtons";
  "DontUseNativeDialog";
  "ScalableFonts";
  "NonScalableFonts";
  "MonospacedFonts";
  "ProportionalFonts";
]
let qFontDialog'FontDialogOptions = qflags "QFontDialog" "FontDialogOptions" qFontDialog'FontDialogOption
let qInputDialog'InputDialogOption = qenum "QInputDialog" "InputDialogOption" [
  "NoButtons";
  "UseListViewForComboBoxItems";
  "UsePlainTextEditForTextInput";
]
let qInputDialog'InputDialogOptions = qflags "QInputDialog" "InputDialogOptions" qInputDialog'InputDialogOption
let qInputDialog'InputMode = qenum "QInputDialog" "InputMode" [
  "TextInput";
  "IntInput";
  "DoubleInput";
]
let qMessageBox'Icon = qenum "QMessageBox" "Icon" [
  "NoIcon";
  "Information";
  "Warning";
  "Critical";
  "Question";
]
let qMessageBox'ButtonRole = qenum "QMessageBox" "ButtonRole" [
  "InvalidRole";
  "AcceptRole";
  "RejectRole";
  "DestructiveRole";
  "ActionRole";
  "HelpRole";
  "YesRole";
  "NoRole";
  "ResetRole";
  "ApplyRole";
  "NRoles";
]
let qMessageBox'StandardButton = qenum "QMessageBox" "StandardButton" [
  "NoButton";
  "Ok";
  "Save";
  "SaveAll";
  "Open";
  "Yes";
  "YesToAll";
  "No";
  "NoToAll";
  "Abort";
  "Retry";
  "Ignore";
  "Close";
  "Cancel";
  "Discard";
  "Help";
  "Apply";
  "Reset";
  "RestoreDefaults";
  (*"FirstButton";*)
  (*"LastButton";*)
  (*"YesAll";*)
  (*"NoAll";*)
  "Default";
  "Escape";
  "FlagMask";
  "ButtonMask";
]
let qMessageBox'StandardButtons = qflags "QMessageBox" "StandardButtons" qMessageBox'StandardButton
let qWizard'WizardButton = qenum "QWizard" "WizardButton" [
  "BackButton";
  "NextButton";
  "CommitButton";
  "FinishButton";
  "CancelButton";
  "HelpButton";
  "CustomButton1";
  "CustomButton2";
  "CustomButton3";
  "Stretch";
  "NoButton";
  (*"NStandardButtons";*)
  (*"NButtons";*)
]
let qWizard'WizardPixmap = qenum "QWizard" "WizardPixmap" [
  "WatermarkPixmap";
  "LogoPixmap";
  "BannerPixmap";
  "BackgroundPixmap";
  "NPixmaps";
]
let qWizard'WizardStyle = qenum "QWizard" "WizardStyle" [
  "ClassicStyle";
  "ModernStyle";
  "MacStyle";
  "AeroStyle";
  "NStyles";
]
let qWizard'WizardOption = qenum "QWizard" "WizardOption" [
  "IndependentPages";
  "IgnoreSubTitles";
  "ExtendedWatermarkPixmap";
  "NoDefaultButton";
  "NoBackButtonOnStartPage";
  "NoBackButtonOnLastPage";
  "DisabledBackButtonOnLastPage";
  "HaveNextButtonOnLastPage";
  "HaveFinishButtonOnEarlyPages";
  "NoCancelButton";
  "CancelButtonOnLeft";
  "HaveHelpButton";
  "HelpButtonOnRight";
  "HaveCustomButton1";
  "HaveCustomButton2";
  "HaveCustomButton3";
  "NoCancelButtonOnLastPage";
]
let qWizard'WizardOptions = qflags "QWizard" "WizardOptions" qWizard'WizardOption
let qGraphicsView'ViewportAnchor = qenum "QGraphicsView" "ViewportAnchor" [
  "NoAnchor";
  "AnchorViewCenter";
  "AnchorUnderMouse";
]
let qGraphicsView'CacheModeFlag = qenum "QGraphicsView" "CacheModeFlag" [
  "CacheNone";
  "CacheBackground";
]
let qGraphicsView'CacheMode = qflags "QGraphicsView" "CacheMode" qGraphicsView'CacheModeFlag
let qGraphicsView'DragMode = qenum "QGraphicsView" "DragMode" [
  "NoDrag";
  "ScrollHandDrag";
  "RubberBandDrag";
]
let qGraphicsView'ViewportUpdateMode = qenum "QGraphicsView" "ViewportUpdateMode" [
  "FullViewportUpdate";
  "MinimalViewportUpdate";
  "SmartViewportUpdate";
  "NoViewportUpdate";
  "BoundingRectViewportUpdate";
]
let qGraphicsView'OptimizationFlag = qenum "QGraphicsView" "OptimizationFlag" [
  "DontClipPainter";
  "DontSavePainterState";
  "DontAdjustForAntialiasing";
  "IndirectPainting";
]
let qGraphicsView'OptimizationFlags = qflags "QGraphicsView" "OptimizationFlags" qGraphicsView'OptimizationFlag
let qAbstractItemView'SelectionMode = qenum "QAbstractItemView" "SelectionMode" [
  "NoSelection";
  "SingleSelection";
  "MultiSelection";
  "ExtendedSelection";
  "ContiguousSelection";
]
let qAbstractItemView'SelectionBehavior = qenum "QAbstractItemView" "SelectionBehavior" [
  "SelectItems";
  "SelectRows";
  "SelectColumns";
]
let qAbstractItemView'ScrollHint = qenum "QAbstractItemView" "ScrollHint" [
  "EnsureVisible";
  "PositionAtTop";
  "PositionAtBottom";
  "PositionAtCenter";
]
let qAbstractItemView'EditTrigger = qenum "QAbstractItemView" "EditTrigger" [
  "NoEditTriggers";
  "CurrentChanged";
  "DoubleClicked";
  "SelectedClicked";
  "EditKeyPressed";
  "AnyKeyPressed";
  "AllEditTriggers";
]
let qAbstractItemView'EditTriggers = qflags "QAbstractItemView" "EditTriggers" qAbstractItemView'EditTrigger
let qAbstractItemView'ScrollMode = qenum "QAbstractItemView" "ScrollMode" [
  "ScrollPerItem";
  "ScrollPerPixel";
]
let qAbstractItemView'DragDropMode = qenum "QAbstractItemView" "DragDropMode" [
  "NoDragDrop";
  "DragOnly";
  "DropOnly";
  "DragDrop";
  "InternalMove";
]
(*let qAbstractItemView'CursorAction = qenum "QAbstractItemView" "CursorAction" [
  "MoveUp";
  "MoveDown";
  "MoveLeft";
  "MoveRight";
  "MoveHome";
  "MoveEnd";
  "MovePageUp";
  "MovePageDown";
  "MoveNext";
  "MovePrevious";
]*)
(*let qAbstractItemView'State = qenum "QAbstractItemView" "State" [
  "NoState";
  "DraggingState";
  "DragSelectingState";
  "EditingState";
  "ExpandingState";
  "CollapsingState";
  "AnimatingState";
]*)
(*let qAbstractItemView'DropIndicatorPosition = qenum "QAbstractItemView" "DropIndicatorPosition" [
  "OnItem";
  "AboveItem";
  "BelowItem";
  "OnViewport";
]*)
let qMdiArea'AreaOption = qenum "QMdiArea" "AreaOption" [
  "DontMaximizeSubWindowOnActivation";
]
let qMdiArea'WindowOrder = qenum "QMdiArea" "WindowOrder" [
  "CreationOrder";
  "StackingOrder";
  "ActivationHistoryOrder";
]
let qMdiArea'ViewMode = qenum "QMdiArea" "ViewMode" [
  "SubWindowView";
  "TabbedView";
]
let qPlainTextEdit'LineWrapMode = qenum "QPlainTextEdit" "LineWrapMode" [
  "NoWrap";
  "WidgetWidth";
]
let qTextEdit'LineWrapMode = qenum "QTextEdit" "LineWrapMode" [
  "NoWrap";
  "WidgetWidth";
  "FixedPixelWidth";
  "FixedColumnWidth";
]
let qTextEdit'AutoFormattingFlag = qenum "QTextEdit" "AutoFormattingFlag" [
  "AutoNone";
  "AutoBulletList";
  "AutoAll";
]
let qTextEdit'AutoFormatting = qflags "QTextEdit" "AutoFormatting" qTextEdit'AutoFormattingFlag
let qHeaderView'ResizeMode = qenum "QHeaderView" "ResizeMode" [
  "Interactive";
  "Stretch";
  "Fixed";
  "ResizeToContents";
  (*"Custom";*)
]
let qListView'Movement = qenum "QListView" "Movement" [
  "Static";
  "Free";
  "Snap";
]
let qListView'Flow = qenum "QListView" "Flow" [
  "LeftToRight";
  "TopToBottom";
]
let qListView'ResizeMode = qenum "QListView" "ResizeMode" [
  "Fixed";
  "Adjust";
]
let qListView'LayoutMode = qenum "QListView" "LayoutMode" [
  "SinglePass";
  "Batched";
]
let qListView'ViewMode = qenum "QListView" "ViewMode" [
  "ListMode";
  "IconMode";
]
