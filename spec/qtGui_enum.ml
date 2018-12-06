open Mlspec.Decl

let qTextLength'Type = qenum "QTextLength" "Type" [
  "VariableLength";
  "FixedLength";
  "PercentageLength";
]
let qPaintEngine'PaintEngineFeature = qenum "QPaintEngine" "PaintEngineFeature" [
  "PrimitiveTransform";
  "PatternTransform";
  "PixmapTransform";
  "PatternBrush";
  "LinearGradientFill";
  "RadialGradientFill";
  "ConicalGradientFill";
  "AlphaBlend";
  "PorterDuff";
  "PainterPaths";
  "Antialiasing";
  "BrushStroke";
  "ConstantOpacity";
  "MaskedBrush";
  "PerspectiveTransform";
  "BlendModes";
  "ObjectBoundingModeGradients";
  "RasterOpModes";
  "PaintOutsidePaintEvent";
  "AllFeatures";
]
let qPaintEngine'DirtyFlag = qenum "QPaintEngine" "DirtyFlag" [
  "DirtyPen";
  "DirtyBrush";
  "DirtyBrushOrigin";
  "DirtyFont";
  "DirtyBackground";
  "DirtyBackgroundMode";
  "DirtyTransform";
  "DirtyClipRegion";
  "DirtyClipPath";
  "DirtyHints";
  "DirtyCompositionMode";
  "DirtyClipEnabled";
  "DirtyOpacity";
  "AllDirty";
]
let qPaintEngine'PolygonDrawMode = qenum "QPaintEngine" "PolygonDrawMode" [
  "OddEvenMode";
  "WindingMode";
  "ConvexMode";
  "PolylineMode";
]
let qPaintEngine'Type = qenum "QPaintEngine" "Type" [
  "X11";
  "Windows";
  "QuickDraw";
  "CoreGraphics";
  "MacPrinter";
  "QWindowSystem";
  "PostScript";
  "OpenGL";
  "Picture";
  "SVG";
  "Raster";
  "Direct3D";
  "Pdf";
  "OpenVG";
  "OpenGL2";
  "PaintBuffer";
  "Blitter";
  "Direct2D";
  "User";
  "MaxUser";
]
let qTextOption'TabType = qenum "QTextOption" "TabType" [
  "LeftTab";
  "RightTab";
  "CenterTab";
  "DelimiterTab";
]
let qTextOption'WrapMode = qenum "QTextOption" "WrapMode" [
  "NoWrap";
  "WordWrap";
  "ManualWrap";
  "WrapAnywhere";
  "WrapAtWordBoundaryOrAnywhere";
]
let qTextOption'Flag = qenum "QTextOption" "Flag" [
  "ShowTabsAndSpaces";
  "ShowLineAndParagraphSeparators";
  "AddSpaceForLineAndParagraphSeparators";
  "SuppressColors";
  "ShowDocumentTerminator";
  "IncludeTrailingSpaces";
]
let qTextOption'Flags = qflags qTextOption'Flag "Flags"
let qTextItem'RenderFlag = qenum "QTextItem" "RenderFlag" [
  "RightToLeft";
  "Overline";
  "Underline";
  "StrikeOut";
  "Dummy";
]
let qTextLine'Edge = qenum "QTextLine" "Edge" [
  "Leading";
  "Trailing";
]
let qTextLine'CursorPosition = qenum "QTextLine" "CursorPosition" [
  "CursorBetweenCharacters";
  "CursorOnCharacter";
]
let qSurfaceFormat'FormatOption = qenum "QSurfaceFormat" "FormatOption" [
  "StereoBuffers";
  "DebugContext";
  "DeprecatedFunctions";
  "ResetNotification";
]
let qSurfaceFormat'SwapBehavior = qenum "QSurfaceFormat" "SwapBehavior" [
  "DefaultSwapBehavior";
  "SingleBuffer";
  "DoubleBuffer";
  "TripleBuffer";
]
let qSurfaceFormat'RenderableType = qenum "QSurfaceFormat" "RenderableType" [
  "DefaultRenderableType";
  "OpenGL";
  "OpenGLES";
  "OpenVG";
]
let qSurfaceFormat'OpenGLContextProfile = qenum "QSurfaceFormat" "OpenGLContextProfile" [
  "NoProfile";
  "CoreProfile";
  "CompatibilityProfile";
]
let qGradient'Type = qenum "QGradient" "Type" [
  "LinearGradient";
  "RadialGradient";
  "ConicalGradient";
  "NoGradient";
]
let qGradient'Spread = qenum "QGradient" "Spread" [
  "PadSpread";
  "ReflectSpread";
  "RepeatSpread";
]
let qGradient'CoordinateMode = qenum "QGradient" "CoordinateMode" [
  "LogicalMode";
  "StretchToDeviceMode";
  "ObjectBoundingMode";
]
let qImageReader'ImageReaderError = qenum "QImageReader" "ImageReaderError" [
  "UnknownError";
  "FileNotFoundError";
  "DeviceError";
  "UnsupportedFormatError";
  "InvalidDataError";
]
let qTextLayout'CursorMode = qenum "QTextLayout" "CursorMode" [
  "SkipCharacters";
  "SkipWords";
]
let qPixelFormat'ColorModel = qenum "QPixelFormat" "ColorModel" [
  "RGB";
  "BGR";
  "Indexed";
  "Grayscale";
  "CMYK";
  "HSL";
  "HSV";
  "YUV";
  "Alpha";
]
let qPixelFormat'AlphaUsage = qenum "QPixelFormat" "AlphaUsage" [
  "UsesAlpha";
  "IgnoresAlpha";
]
let qPixelFormat'AlphaPosition = qenum "QPixelFormat" "AlphaPosition" [
  "AtBeginning";
  "AtEnd";
]
let qPixelFormat'AlphaPremultiplied = qenum "QPixelFormat" "AlphaPremultiplied" [
  "NotPremultiplied";
  "Premultiplied";
]
let qPixelFormat'TypeInterpretation = qenum "QPixelFormat" "TypeInterpretation" [
  "UnsignedInteger";
  "UnsignedShort";
  "UnsignedByte";
  "FloatingPoint";
]
let qPixelFormat'YUVLayout = qenum "QPixelFormat" "YUVLayout" [
  "YUV444";
  "YUV422";
  "YUV411";
  "YUV420P";
  "YUV420SP";
  "YV12";
  "UYVY";
  "YUYV";
  "NV12";
  "NV21";
  "IMC1";
  "IMC2";
  "IMC3";
  "IMC4";
  "Y8";
  "Y16";
]
let qPixelFormat'ByteOrder = qenum "QPixelFormat" "ByteOrder" [
  "LittleEndian";
  "BigEndian";
  "CurrentSystemEndian";
]
let qOpenGLTextureBlitter'Origin = qenum ~version:9999 "QOpenGLTextureBlitter" "Origin" [
  "OriginBottomLeft";
  "OriginTopLeft";
]
(*let qDesktopServices'StandardLocation = qenum "QDesktopServices" "StandardLocation" [
  "DesktopLocation";
  "DocumentsLocation";
  "FontsLocation";
  "ApplicationsLocation";
  "MusicLocation";
  "MoviesLocation";
  "PicturesLocation";
  "TempLocation";
  "HomeLocation";
  "DataLocation";
  "CacheLocation";
]*)
let qTextCursor'MoveMode = qenum "QTextCursor" "MoveMode" [
  "MoveAnchor";
  "KeepAnchor";
]
let qTextCursor'MoveOperation = qenum "QTextCursor" "MoveOperation" [
  "NoMove";
  "Start";
  "Up";
  "StartOfLine";
  "StartOfBlock";
  "StartOfWord";
  "PreviousBlock";
  "PreviousCharacter";
  "PreviousWord";
  "Left";
  "WordLeft";
  "End";
  "Down";
  "EndOfLine";
  "EndOfWord";
  "EndOfBlock";
  "NextBlock";
  "NextCharacter";
  "NextWord";
  "Right";
  "WordRight";
  "NextCell";
  "PreviousCell";
  "NextRow";
  "PreviousRow";
]
let qTextCursor'SelectionType = qenum "QTextCursor" "SelectionType" [
  "WordUnderCursor";
  "LineUnderCursor";
  "BlockUnderCursor";
  "Document";
]
let qOpenGLTexture'Target = qenum "QOpenGLTexture" "Target" [
  "Target1D";
  "Target1DArray";
  "Target2D";
  "Target2DArray";
  "Target3D";
  "TargetCubeMap";
  "TargetCubeMapArray";
  "Target2DMultisample";
  "Target2DMultisampleArray";
  "TargetRectangle";
  "TargetBuffer";
]
let qOpenGLTexture'BindingTarget = qenum "QOpenGLTexture" "BindingTarget" [
  "BindingTarget1D";
  "BindingTarget1DArray";
  "BindingTarget2D";
  "BindingTarget2DArray";
  "BindingTarget3D";
  "BindingTargetCubeMap";
  "BindingTargetCubeMapArray";
  "BindingTarget2DMultisample";
  "BindingTarget2DMultisampleArray";
  "BindingTargetRectangle";
  "BindingTargetBuffer";
]
let qOpenGLTexture'MipMapGeneration = qenum "QOpenGLTexture" "MipMapGeneration" [
  "GenerateMipMaps";
  "DontGenerateMipMaps";
]
let qOpenGLTexture'TextureUnitReset = qenum "QOpenGLTexture" "TextureUnitReset" [
  "ResetTextureUnit";
  "DontResetTextureUnit";
]
let qOpenGLTexture'TextureFormat = qenum "QOpenGLTexture" "TextureFormat" [
  "NoFormat";
  "R8_UNorm";
  "RG8_UNorm";
  "RGB8_UNorm";
  "RGBA8_UNorm";
  "R16_UNorm";
  "RG16_UNorm";
  "RGB16_UNorm";
  "RGBA16_UNorm";
  "R8_SNorm";
  "RG8_SNorm";
  "RGB8_SNorm";
  "RGBA8_SNorm";
  "R16_SNorm";
  "RG16_SNorm";
  "RGB16_SNorm";
  "RGBA16_SNorm";
  "R8U";
  "RG8U";
  "RGB8U";
  "RGBA8U";
  "R16U";
  "RG16U";
  "RGB16U";
  "RGBA16U";
  "R32U";
  "RG32U";
  "RGB32U";
  "RGBA32U";
  "R8I";
  "RG8I";
  "RGB8I";
  "RGBA8I";
  "R16I";
  "RG16I";
  "RGB16I";
  "RGBA16I";
  "R32I";
  "RG32I";
  "RGB32I";
  "RGBA32I";
  "R16F";
  "RG16F";
  "RGB16F";
  "RGBA16F";
  "R32F";
  "RG32F";
  "RGB32F";
  "RGBA32F";
  "RGB9E5";
  "RG11B10F";
  "RG3B2";
  "R5G6B5";
  "RGB5A1";
  "RGBA4";
  "RGB10A2";
  "D16";
  "D24";
  "D24S8";
  "D32";
  "D32F";
  "D32FS8X24";
  "S8";
  "RGB_DXT1";
  "RGBA_DXT1";
  "RGBA_DXT3";
  "RGBA_DXT5";
  "R_ATI1N_UNorm";
  "R_ATI1N_SNorm";
  "RG_ATI2N_UNorm";
  "RG_ATI2N_SNorm";
  "RGB_BP_UNSIGNED_FLOAT";
  "RGB_BP_SIGNED_FLOAT";
  "RGB_BP_UNorm";
  "R11_EAC_UNorm";
  "R11_EAC_SNorm";
  "RG11_EAC_UNorm";
  "RG11_EAC_SNorm";
  "RGB8_ETC2";
  "SRGB8_ETC2";
  "RGB8_PunchThrough_Alpha1_ETC2";
  "SRGB8_PunchThrough_Alpha1_ETC2";
  "RGBA8_ETC2_EAC";
  "SRGB8_Alpha8_ETC2_EAC";
  "RGB8_ETC1";
  "RGBA_ASTC_4x4";
  "RGBA_ASTC_5x4";
  "RGBA_ASTC_5x5";
  "RGBA_ASTC_6x5";
  "RGBA_ASTC_6x6";
  "RGBA_ASTC_8x5";
  "RGBA_ASTC_8x6";
  "RGBA_ASTC_8x8";
  "RGBA_ASTC_10x5";
  "RGBA_ASTC_10x6";
  "RGBA_ASTC_10x8";
  "RGBA_ASTC_10x10";
  "RGBA_ASTC_12x10";
  "RGBA_ASTC_12x12";
  "SRGB8_Alpha8_ASTC_4x4";
  "SRGB8_Alpha8_ASTC_5x4";
  "SRGB8_Alpha8_ASTC_5x5";
  "SRGB8_Alpha8_ASTC_6x5";
  "SRGB8_Alpha8_ASTC_6x6";
  "SRGB8_Alpha8_ASTC_8x5";
  "SRGB8_Alpha8_ASTC_8x6";
  "SRGB8_Alpha8_ASTC_8x8";
  "SRGB8_Alpha8_ASTC_10x5";
  "SRGB8_Alpha8_ASTC_10x6";
  "SRGB8_Alpha8_ASTC_10x8";
  "SRGB8_Alpha8_ASTC_10x10";
  "SRGB8_Alpha8_ASTC_12x10";
  "SRGB8_Alpha8_ASTC_12x12";
  "SRGB8";
  "SRGB8_Alpha8";
  "SRGB_DXT1";
  "SRGB_Alpha_DXT1";
  "SRGB_Alpha_DXT3";
  "SRGB_Alpha_DXT5";
  "SRGB_BP_UNorm";
  "DepthFormat";
  "AlphaFormat";
  "RGBFormat";
  "RGBAFormat";
  "LuminanceFormat";
  "LuminanceAlphaFormat";
]
let qOpenGLTexture'CubeMapFace = qenum "QOpenGLTexture" "CubeMapFace" [
  "CubeMapPositiveX";
  "CubeMapNegativeX";
  "CubeMapPositiveY";
  "CubeMapNegativeY";
  "CubeMapPositiveZ";
  "CubeMapNegativeZ";
]
let qOpenGLTexture'PixelFormat = qenum "QOpenGLTexture" "PixelFormat" [
  "NoSourceFormat";
  "Red";
  "RG";
  "RGB";
  "BGR";
  "RGBA";
  "BGRA";
  "Red_Integer";
  "RG_Integer";
  "RGB_Integer";
  "BGR_Integer";
  "RGBA_Integer";
  "BGRA_Integer";
  "Stencil";
  "Depth";
  "DepthStencil";
  "Alpha";
  "Luminance";
  "LuminanceAlpha";
]
let qOpenGLTexture'PixelType = qenum "QOpenGLTexture" "PixelType" [
  "NoPixelType";
  "Int8";
  "UInt8";
  "Int16";
  "UInt16";
  "Int32";
  "UInt32";
  "Float16";
  "Float16OES";
  "Float32";
  "UInt32_RGB9_E5";
  "UInt32_RG11B10F";
  "UInt8_RG3B2";
  "UInt8_RG3B2_Rev";
  "UInt16_RGB5A1";
  "UInt16_RGB5A1_Rev";
  "UInt16_R5G6B5";
  "UInt16_R5G6B5_Rev";
  "UInt16_RGBA4";
  "UInt16_RGBA4_Rev";
  "UInt32_RGBA8";
  "UInt32_RGBA8_Rev";
  "UInt32_RGB10A2";
  "UInt32_RGB10A2_Rev";
  "UInt32_D24S8";
  "Float32_D32_UInt32_S8_X24";
]
let qOpenGLTexture'SwizzleComponent = qenum "QOpenGLTexture" "SwizzleComponent" [
  "SwizzleRed";
  "SwizzleGreen";
  "SwizzleBlue";
  "SwizzleAlpha";
]
let qOpenGLTexture'SwizzleValue = qenum "QOpenGLTexture" "SwizzleValue" [
  "RedValue";
  "GreenValue";
  "BlueValue";
  "AlphaValue";
  "ZeroValue";
  "OneValue";
]
let qOpenGLTexture'WrapMode = qenum "QOpenGLTexture" "WrapMode" [
  "Repeat";
  "MirroredRepeat";
  "ClampToEdge";
  "ClampToBorder";
]
let qOpenGLTexture'CoordinateDirection = qenum "QOpenGLTexture" "CoordinateDirection" [
  "DirectionS";
  "DirectionT";
  "DirectionR";
]
let qOpenGLTexture'Feature = qenum "QOpenGLTexture" "Feature" [
  "ImmutableStorage";
  "ImmutableMultisampleStorage";
  "TextureRectangle";
  "TextureArrays";
  "Texture3D";
  "TextureMultisample";
  "TextureBuffer";
  "TextureCubeMapArrays";
  "Swizzle";
  "StencilTexturing";
  "AnisotropicFiltering";
  "NPOTTextures";
  "NPOTTextureRepeat";
  "Texture1D";
  "TextureComparisonOperators";
  "TextureMipMapLevel";
]
let qOpenGLTexture'DepthStencilMode = qenum "QOpenGLTexture" "DepthStencilMode" [
  "DepthMode";
  "StencilMode";
]
let qOpenGLTexture'ComparisonFunction = qenum "QOpenGLTexture" "ComparisonFunction" [
  "CompareLessEqual";
  "CompareGreaterEqual";
  "CompareLess";
  "CompareGreater";
  "CompareEqual";
  "CommpareNotEqual";
  "CompareAlways";
  "CompareNever";
]
let qOpenGLTexture'ComparisonMode = qenum "QOpenGLTexture" "ComparisonMode" [
  "CompareRefToTexture";
  "CompareNone";
]
let qOpenGLTexture'Filter = qenum "QOpenGLTexture" "Filter" [
  "Nearest";
  "Linear";
  "NearestMipMapNearest";
  "NearestMipMapLinear";
  "LinearMipMapNearest";
  "LinearMipMapLinear";
]
let qPageSize'PageSizeId = qenum "QPageSize" "PageSizeId" [
  "A4";
  "B5";
  "Letter";
  "Legal";
  "Executive";
  "A0";
  "A1";
  "A2";
  "A3";
  "A5";
  "A6";
  "A7";
  "A8";
  "A9";
  "B0";
  "B1";
  "B10";
  "B2";
  "B3";
  "B4";
  "B6";
  "B7";
  "B8";
  "B9";
  "C5E";
  "Comm10E";
  "DLE";
  "Folio";
  "Ledger";
  "Tabloid";
  "Custom";
  "A10";
  "A3Extra";
  "A4Extra";
  "A4Plus";
  "A4Small";
  "A5Extra";
  "B5Extra";
  "JisB0";
  "JisB1";
  "JisB2";
  "JisB3";
  "JisB4";
  "JisB5";
  "JisB6";
  "JisB7";
  "JisB8";
  "JisB9";
  "JisB10";
  "AnsiC";
  "AnsiD";
  "AnsiE";
  "LegalExtra";
  "LetterExtra";
  "LetterPlus";
  "LetterSmall";
  "TabloidExtra";
  "ArchA";
  "ArchB";
  "ArchC";
  "ArchD";
  "ArchE";
  "Imperial7x9";
  "Imperial8x10";
  "Imperial9x11";
  "Imperial9x12";
  "Imperial10x11";
  "Imperial10x13";
  "Imperial10x14";
  "Imperial12x11";
  "Imperial15x11";
  "ExecutiveStandard";
  "Note";
  "Quarto";
  "Statement";
  "SuperA";
  "SuperB";
  "Postcard";
  "DoublePostcard";
  "Prc16K";
  "Prc32K";
  "Prc32KBig";
  "FanFoldUS";
  "FanFoldGerman";
  "FanFoldGermanLegal";
  "EnvelopeB4";
  "EnvelopeB5";
  "EnvelopeB6";
  "EnvelopeC0";
  "EnvelopeC1";
  "EnvelopeC2";
  "EnvelopeC3";
  "EnvelopeC4";
  "EnvelopeC6";
  "EnvelopeC65";
  "EnvelopeC7";
  "Envelope9";
  "Envelope11";
  "Envelope12";
  "Envelope14";
  "EnvelopeMonarch";
  "EnvelopePersonal";
  "EnvelopeChou3";
  "EnvelopeChou4";
  "EnvelopeInvite";
  "EnvelopeItalian";
  "EnvelopeKaku2";
  "EnvelopeKaku3";
  "EnvelopePrc1";
  "EnvelopePrc2";
  "EnvelopePrc3";
  "EnvelopePrc4";
  "EnvelopePrc5";
  "EnvelopePrc6";
  "EnvelopePrc7";
  "EnvelopePrc8";
  "EnvelopePrc9";
  "EnvelopePrc10";
  "EnvelopeYou4";
  (*"LastPageSize";*)
  (*"NPageSize";*)
  (*"NPaperSize";*)
  (*"AnsiA";*)
  (*"AnsiB";*)
  (*"EnvelopeC5";*)
  (*"EnvelopeDL";*)
  (*"Envelope10";*)
]
let qPageSize'Unit = qenum "QPageSize" "Unit" [
  "Millimeter";
  "Point";
  "Inch";
  "Pica";
  "Didot";
  "Cicero";
]
let qPageSize'SizeMatchPolicy = qenum "QPageSize" "SizeMatchPolicy" [
  "FuzzyMatch";
  "FuzzyOrientationMatch";
  "ExactMatch";
]
let qTouchEvent'TouchPoint'InfoFlag = qenum "QTouchEvent::TouchPoint" "InfoFlag" [
  "Pen";
  "Token";
]
let qTouchDevice'DeviceType = qenum "QTouchDevice" "DeviceType" [
  "TouchScreen";
  "TouchPad";
]
let qTouchDevice'CapabilityFlag = qenum "QTouchDevice" "CapabilityFlag" [
  "Position";
  "Area";
  "Pressure";
  "Velocity";
  "RawPositions";
  "NormalizedPosition";
  "MouseEmulation";
]
let qStaticText'PerformanceHint = qenum "QStaticText" "PerformanceHint" [
  "ModerateCaching";
  "AggressiveCaching";
]
let qPainterPath'ElementType = qenum "QPainterPath" "ElementType" [
  "MoveToElement";
  "LineToElement";
  "CurveToElement";
  "CurveToDataElement";
]
let qOpenGLFramebufferObject'Attachment = qenum "QOpenGLFramebufferObject" "Attachment" [
  "NoAttachment";
  "CombinedDepthStencil";
  "Depth";
]
let qOpenGLFramebufferObject'FramebufferRestorePolicy = qenum ~version:9999 "QOpenGLFramebufferObject" "FramebufferRestorePolicy" [
  "DontRestoreFramebufferBinding";
  "RestoreFramebufferBindingToDefault";
  "RestoreFrameBufferBinding";
]
let qIcon'Mode = qenum "QIcon" "Mode" [
  "Normal";
  "Disabled";
  "Active";
  "Selected";
]
let qIcon'State = qenum "QIcon" "State" [
  "On";
  "Off";
]
let qPaintDevice'PaintDeviceMetric = qenum "QPaintDevice" "PaintDeviceMetric" [
  "PdmWidth";
  "PdmHeight";
  "PdmWidthMM";
  "PdmHeightMM";
  "PdmNumColors";
  "PdmDepth";
  "PdmDpiX";
  "PdmDpiY";
  "PdmPhysicalDpiX";
  "PdmPhysicalDpiY";
  "PdmDevicePixelRatio";
  "PdmDevicePixelRatioScaled";
]
let qPalette'ColorGroup = qenum "QPalette" "ColorGroup" [
  "Active";
  "Disabled";
  "Inactive";
  "NColorGroups";
  "Current";
  "All";
  (*"Normal";*)
]
let qPalette'ColorRole = qenum "QPalette" "ColorRole" [
  "WindowText";
  "Button";
  "Light";
  "Midlight";
  "Dark";
  "Mid";
  "Text";
  "BrightText";
  "ButtonText";
  "Base";
  "Window";
  "Shadow";
  "Highlight";
  "HighlightedText";
  "Link";
  "LinkVisited";
  "AlternateBase";
  "NoRole";
  "ToolTipBase";
  "ToolTipText";
  "NColorRoles";
  (*"Foreground";*)
  (*"Background";*)
]
let qRawFont'AntialiasingType = qenum "QRawFont" "AntialiasingType" [
  "PixelAntialiasing";
  "SubPixelAntialiasing";
]
let qRawFont'LayoutFlag = qenum "QRawFont" "LayoutFlag" [
  "SeparateAdvances";
  "KernedAdvances";
  "UseDesignMetrics";
]
let qOpenGLDebugMessage'Source = qenum "QOpenGLDebugMessage" "Source" [
  "InvalidSource";
  "APISource";
  "WindowSystemSource";
  "ShaderCompilerSource";
  "ThirdPartySource";
  "ApplicationSource";
  "OtherSource";
  (*"LastSource";*)
  "AnySource";
]
let qOpenGLDebugMessage'Type = qenum "QOpenGLDebugMessage" "Type" [
  "InvalidType";
  "ErrorType";
  "DeprecatedBehaviorType";
  "UndefinedBehaviorType";
  "PortabilityType";
  "PerformanceType";
  "OtherType";
  "MarkerType";
  "GroupPushType";
  "GroupPopType";
  (*"LastType";*)
  "AnyType";
]
let qOpenGLDebugMessage'Severity = qenum "QOpenGLDebugMessage" "Severity" [
  "InvalidSeverity";
  "HighSeverity";
  "MediumSeverity";
  "LowSeverity";
  "NotificationSeverity";
  (*"LastSeverity";*)
  "AnySeverity";
]
let qPainter'RenderHint = qenum "QPainter" "RenderHint" [
  "Antialiasing";
  "TextAntialiasing";
  "SmoothPixmapTransform";
  "HighQualityAntialiasing";
  "NonCosmeticDefaultPen";
  "Qt4CompatiblePainting";
]
let qPainter'RenderHints = qflags qPainter'RenderHint "RenderHints"
let qPainter'PixmapFragmentHint = qenum "QPainter" "PixmapFragmentHint" [
  "OpaqueHint";
]
let qPainter'CompositionMode = qenum "QPainter" "CompositionMode" [
  "CompositionMode_SourceOver";
  "CompositionMode_DestinationOver";
  "CompositionMode_Clear";
  "CompositionMode_Source";
  "CompositionMode_Destination";
  "CompositionMode_SourceIn";
  "CompositionMode_DestinationIn";
  "CompositionMode_SourceOut";
  "CompositionMode_DestinationOut";
  "CompositionMode_SourceAtop";
  "CompositionMode_DestinationAtop";
  "CompositionMode_Xor";
  "CompositionMode_Plus";
  "CompositionMode_Multiply";
  "CompositionMode_Screen";
  "CompositionMode_Overlay";
  "CompositionMode_Darken";
  "CompositionMode_Lighten";
  "CompositionMode_ColorDodge";
  "CompositionMode_ColorBurn";
  "CompositionMode_HardLight";
  "CompositionMode_SoftLight";
  "CompositionMode_Difference";
  "CompositionMode_Exclusion";
  "RasterOp_SourceOrDestination";
  "RasterOp_SourceAndDestination";
  "RasterOp_SourceXorDestination";
  "RasterOp_NotSourceAndNotDestination";
  "RasterOp_NotSourceOrNotDestination";
  "RasterOp_NotSourceXorDestination";
  "RasterOp_NotSource";
  "RasterOp_NotSourceAndDestination";
  "RasterOp_SourceAndNotDestination";
  "RasterOp_NotSourceOrDestination";
  "RasterOp_SourceOrNotDestination";
  "RasterOp_ClearDestination";
  "RasterOp_SetDestination";
  "RasterOp_NotDestination";
]
let qOpenGLFunctions'OpenGLFeature = qenum "QOpenGLFunctions" "OpenGLFeature" [
  "Multitexture";
  "Shaders";
  "Buffers";
  "Framebuffers";
  "BlendColor";
  "BlendEquation";
  "BlendEquationSeparate";
  "BlendFuncSeparate";
  "BlendSubtract";
  "CompressedTextures";
  "Multisample";
  "StencilSeparate";
  "NPOTTextures";
  "NPOTTextureRepeat";
  "FixedFunctionPipeline";
  "TextureRGFormats";
  "MultipleRenderTargets";
]
let qTextFormat'FormatType = qenum "QTextFormat" "FormatType" [
  "InvalidFormat";
  "BlockFormat";
  "CharFormat";
  "ListFormat";
  "TableFormat";
  "FrameFormat";
  "UserFormat";
]
let qTextFormat'Property = qenum "QTextFormat" "Property" [
  "ObjectIndex";
  "CssFloat";
  "LayoutDirection";
  "OutlinePen";
  "BackgroundBrush";
  "ForegroundBrush";
  "BackgroundImageUrl";
  "BlockAlignment";
  "BlockTopMargin";
  "BlockBottomMargin";
  "BlockLeftMargin";
  "BlockRightMargin";
  "TextIndent";
  "TabPositions";
  "BlockIndent";
  "LineHeight";
  "LineHeightType";
  "BlockNonBreakableLines";
  "BlockTrailingHorizontalRulerWidth";
  "FirstFontProperty";
  (*"FontCapitalization";*)
  "FontLetterSpacingType";
  "FontLetterSpacing";
  "FontWordSpacing";
  "FontStretch";
  "FontStyleHint";
  "FontStyleStrategy";
  "FontKerning";
  "FontHintingPreference";
  "FontFamily";
  "FontPointSize";
  "FontSizeAdjustment";
  (*"FontSizeIncrement";*)
  "FontWeight";
  "FontItalic";
  "FontUnderline";
  "FontOverline";
  "FontStrikeOut";
  "FontFixedPitch";
  "FontPixelSize";
  (*"LastFontProperty";*)
  "TextUnderlineColor";
  "TextVerticalAlignment";
  "TextOutline";
  "TextUnderlineStyle";
  "TextToolTip";
  "IsAnchor";
  "AnchorHref";
  "AnchorName";
  "ObjectType";
  "ListStyle";
  "ListIndent";
  "ListNumberPrefix";
  "ListNumberSuffix";
  "FrameBorder";
  "FrameMargin";
  "FramePadding";
  "FrameWidth";
  "FrameHeight";
  "FrameTopMargin";
  "FrameBottomMargin";
  "FrameLeftMargin";
  "FrameRightMargin";
  "FrameBorderBrush";
  "FrameBorderStyle";
  "TableColumns";
  "TableColumnWidthConstraints";
  "TableCellSpacing";
  "TableCellPadding";
  "TableHeaderRowCount";
  "TableCellRowSpan";
  "TableCellColumnSpan";
  "TableCellTopPadding";
  "TableCellBottomPadding";
  "TableCellLeftPadding";
  "TableCellRightPadding";
  "ImageName";
  "ImageWidth";
  "ImageHeight";
  "FullWidthSelection";
  "PageBreakPolicy";
  "UserProperty";
]
let qTextFormat'ObjectTypes = qenum "QTextFormat" "ObjectTypes" [
  "NoObject";
  "ImageObject";
  "TableObject";
  "TableCellObject";
  "UserObject";
]
let qTextFormat'PageBreakFlag = qenum "QTextFormat" "PageBreakFlag" [
  "PageBreak_Auto";
  "PageBreak_AlwaysBefore";
  "PageBreak_AlwaysAfter";
]
let qColor'Spec = qenum "QColor" "Spec" [
  "Invalid";
  "Rgb";
  "Hsv";
  "Cmyk";
  "Hsl";
]
let qColor'NameFormat = qenum "QColor" "NameFormat" [
  "HexRgb";
  "HexArgb";
]
let qAccessible'Event = qenum "QAccessible" "Event" [
  "SoundPlayed";
  "Alert";
  "ForegroundChanged";
  "MenuStart";
  "MenuEnd";
  "PopupMenuStart";
  "PopupMenuEnd";
  "ContextHelpStart";
  "ContextHelpEnd";
  "DragDropStart";
  "DragDropEnd";
  "DialogStart";
  "DialogEnd";
  "ScrollingStart";
  "ScrollingEnd";
  "MenuCommand";
  "ActionChanged";
  "ActiveDescendantChanged";
  "AttributeChanged";
  "DocumentContentChanged";
  "DocumentLoadComplete";
  "DocumentLoadStopped";
  "DocumentReload";
  "HyperlinkEndIndexChanged";
  "HyperlinkNumberOfAnchorsChanged";
  "HyperlinkSelectedLinkChanged";
  "HypertextLinkActivated";
  "HypertextLinkSelected";
  "HyperlinkStartIndexChanged";
  "HypertextChanged";
  "HypertextNLinksChanged";
  "ObjectAttributeChanged";
  "PageChanged";
  "SectionChanged";
  "TableCaptionChanged";
  "TableColumnDescriptionChanged";
  "TableColumnHeaderChanged";
  "TableModelChanged";
  "TableRowDescriptionChanged";
  "TableRowHeaderChanged";
  "TableSummaryChanged";
  "TextAttributeChanged";
  "TextCaretMoved";
  "TextColumnChanged";
  "TextInserted";
  "TextRemoved";
  "TextUpdated";
  "TextSelectionChanged";
  "VisibleDataChanged";
  "ObjectCreated";
  "ObjectDestroyed";
  "ObjectShow";
  "ObjectHide";
  "ObjectReorder";
  "Focus";
  "Selection";
  "SelectionAdd";
  "SelectionRemove";
  "SelectionWithin";
  "StateChanged";
  "LocationChanged";
  "NameChanged";
  "DescriptionChanged";
  "ValueChanged";
  "ParentChanged";
  "HelpChanged";
  "DefaultActionChanged";
  "AcceleratorChanged";
  "InvalidEvent";
]
let qAccessible'Role = qenum "QAccessible" "Role" [
  "NoRole";
  "TitleBar";
  "MenuBar";
  "ScrollBar";
  "Grip";
  "Sound";
  "Cursor";
  "Caret";
  "AlertMessage";
  "Window";
  "Client";
  "PopupMenu";
  "MenuItem";
  "ToolTip";
  "Application";
  "Document";
  "Pane";
  "Chart";
  "Dialog";
  "Border";
  "Grouping";
  "Separator";
  "ToolBar";
  "StatusBar";
  "Table";
  "ColumnHeader";
  "RowHeader";
  "Column";
  "Row";
  "Cell";
  "Link";
  "HelpBalloon";
  "Assistant";
  "List";
  "ListItem";
  "Tree";
  "TreeItem";
  "PageTab";
  "PropertyPage";
  "Indicator";
  "Graphic";
  "StaticText";
  "EditableText";
  "Button";
  "CheckBox";
  "RadioButton";
  "ComboBox";
  "ProgressBar";
  "Dial";
  "HotkeyField";
  "Slider";
  "SpinBox";
  "Canvas";
  "Animation";
  "Equation";
  "ButtonDropDown";
  "ButtonMenu";
  "ButtonDropGrid";
  "Whitespace";
  "PageTabList";
  "Clock";
  "Splitter";
  "LayeredPane";
  "Terminal";
  "Desktop";
  "Paragraph";
  "WebDocument";
  "Section";
  "ColorChooser";
  "Footer";
  "Form";
  "Heading";
  "Note";
  "ComplementaryContent";
  "UserRole";
]
let qAccessible'Text = qenum "QAccessible" "Text" [
  "Name";
  "Description";
  "Value";
  "Help";
  "Accelerator";
  "DebugDescription";
  "UserText";
]
let qAccessible'RelationFlag = qenum "QAccessible" "RelationFlag" [
  "Label";
  "Labelled";
  "Controller";
  "Controlled";
  "AllRelations";
]
let qAccessible'InterfaceType = qenum "QAccessible" "InterfaceType" [
  "TextInterface";
  "EditableTextInterface";
  "ValueInterface";
  "ActionInterface";
  "ImageInterface";
  "TableInterface";
  "TableCellInterface";
]
let qAccessible'TextBoundaryType = qenum "QAccessible" "TextBoundaryType" [
  "CharBoundary";
  "WordBoundary";
  "SentenceBoundary";
  "ParagraphBoundary";
  "LineBoundary";
  "NoBoundary";
]
let qImageIOHandler'ImageOption = qenum "QImageIOHandler" "ImageOption" [
  "Size";
  "ClipRect";
  "Description";
  "ScaledClipRect";
  "ScaledSize";
  "CompressionRatio";
  "Gamma";
  "Quality";
  "Name";
  "SubType";
  "IncrementalReading";
  "Endianness";
  "Animation";
  "BackgroundColor";
  "ImageFormat";
  "SupportedSubTypes";
  "OptimizedWrite";
  "ProgressiveScanWrite";
  "ImageTransformation";
  "TransformedByDefault";
]
let qImageIOHandler'Transformation = qenum "QImageIOHandler" "Transformation" [
  "TransformationNone";
  "TransformationMirror";
  "TransformationFlip";
  "TransformationRotate180";
  "TransformationRotate90";
  "TransformationMirrorAndRotate90";
  "TransformationFlipAndRotate90";
  "TransformationRotate270";
]
let qRegion'RegionType = qenum "QRegion" "RegionType" [
  "Rectangle";
  "Ellipse";
]
let qFontDatabase'WritingSystem = qenum "QFontDatabase" "WritingSystem" [
  "Any";
  "Latin";
  "Greek";
  "Cyrillic";
  "Armenian";
  "Hebrew";
  "Arabic";
  "Syriac";
  "Thaana";
  "Devanagari";
  "Bengali";
  "Gurmukhi";
  "Gujarati";
  "Oriya";
  "Tamil";
  "Telugu";
  "Kannada";
  "Malayalam";
  "Sinhala";
  "Thai";
  "Lao";
  "Tibetan";
  "Myanmar";
  "Georgian";
  "Khmer";
  "SimplifiedChinese";
  "TraditionalChinese";
  "Japanese";
  "Korean";
  "Vietnamese";
  "Symbol";
  (*"Other";*)
  "Ogham";
  "Runic";
  "Nko";
  "WritingSystemsCount";
]
let qFontDatabase'SystemFont = qenum "QFontDatabase" "SystemFont" [
  "GeneralFont";
  "FixedFont";
  "TitleFont";
  "SmallestReadableFont";
]
let qIconEngine'IconEngineHook = qenum "QIconEngine" "IconEngineHook" [
  "AvailableSizesHook";
  "IconNameHook";
  "IsNullHook";
  "ScaledPixmapHook";
]
let qImageWriter'ImageWriterError = qenum "QImageWriter" "ImageWriterError" [
  "UnknownError";
  "DeviceError";
  "UnsupportedFormatError";
]
let qPageLayout'Unit = qenum "QPageLayout" "Unit" [
  "Millimeter";
  "Point";
  "Inch";
  "Pica";
  "Didot";
  "Cicero";
]
let qPageLayout'Orientation = qenum "QPageLayout" "Orientation" [
  "Portrait";
  "Landscape";
]
let qPageLayout'Mode = qenum "QPageLayout" "Mode" [
  "StandardMode";
  "FullPageMode";
]
let qStandardItem'ItemType = qenum "QStandardItem" "ItemType" [
  "Type";
  "UserType";
]
let qOpenGLBuffer'Type = qenum "QOpenGLBuffer" "Type" [
  "VertexBuffer";
  "IndexBuffer";
  "PixelPackBuffer";
  "PixelUnpackBuffer";
]
let qOpenGLBuffer'UsagePattern = qenum "QOpenGLBuffer" "UsagePattern" [
  "StreamDraw";
  "StreamRead";
  "StreamCopy";
  "StaticDraw";
  "StaticRead";
  "StaticCopy";
  "DynamicDraw";
  "DynamicRead";
  "DynamicCopy";
]
let qOpenGLBuffer'Access = qenum "QOpenGLBuffer" "Access" [
  "ReadOnly";
  "WriteOnly";
  "ReadWrite";
]
let qOpenGLBuffer'RangeAccessFlag = qenum "QOpenGLBuffer" "RangeAccessFlag" [
  "RangeRead";
  "RangeWrite";
  "RangeInvalidate";
  "RangeInvalidateBuffer";
  "RangeFlushExplicit";
  "RangeUnsynchronized";
]
let qGlyphRun'GlyphRunFlag = qenum "QGlyphRun" "GlyphRunFlag" [
  "Overline";
  "Underline";
  "StrikeOut";
  "RightToLeft";
  "SplitLigature";
]
let qTransform'TransformationType = qenum "QTransform" "TransformationType" [
  "TxNone";
  "TxTranslate";
  "TxScale";
  "TxRotate";
  "TxShear";
  "TxProject";
]
let qFont'StyleHint = qenum "QFont" "StyleHint" [
  (*"Helvetica";*)
  "SansSerif";
  (*"Times";*)
  "Serif";
  (*"Courier";*)
  "TypeWriter";
  (*"OldEnglish";*)
  "Decorative";
  "System";
  "AnyStyle";
  "Cursive";
  "Monospace";
  "Fantasy";
]
let qFont'StyleStrategy = qenum "QFont" "StyleStrategy" [
  "PreferDefault";
  "PreferBitmap";
  "PreferDevice";
  "PreferOutline";
  "ForceOutline";
  "PreferMatch";
  "PreferQuality";
  "PreferAntialias";
  "NoAntialias";
  "OpenGLCompatible";
  "ForceIntegerMetrics";
  "NoSubpixelAntialias";
  "NoFontMerging";
]
let qFont'HintingPreference = qenum "QFont" "HintingPreference" [
  "PreferDefaultHinting";
  "PreferNoHinting";
  "PreferVerticalHinting";
  "PreferFullHinting";
]
let qFont'Weight = qenum "QFont" "Weight" [
  "Thin";
  "ExtraLight";
  "Light";
  "Normal";
  "Medium";
  "DemiBold";
  "Bold";
  "ExtraBold";
  "Black";
]
let qFont'Style = qenum "QFont" "Style" [
  "StyleNormal";
  "StyleItalic";
  "StyleOblique";
]
let qFont'Stretch = qenum "QFont" "Stretch" [
  "AnyStretch";
  "UltraCondensed";
  "ExtraCondensed";
  "Condensed";
  "SemiCondensed";
  "Unstretched";
  "SemiExpanded";
  "Expanded";
  "ExtraExpanded";
  "UltraExpanded";
]
let qFont'Capitalization = qenum "QFont" "Capitalization" [
  "MixedCase";
  "AllUppercase";
  "AllLowercase";
  "SmallCaps";
  "Capitalize";
]
let qFont'SpacingType = qenum "QFont" "SpacingType" [
  "PercentageSpacing";
  "AbsoluteSpacing";
]
let qKeySequence'StandardKey = qenum "QKeySequence" "StandardKey" [
  "UnknownKey";
  "HelpContents";
  "WhatsThis";
  "Open";
  "Close";
  "Save";
  "New";
  "Delete";
  "Cut";
  "Copy";
  "Paste";
  "Undo";
  "Redo";
  "Back";
  "Forward";
  "Refresh";
  "ZoomIn";
  "ZoomOut";
  "Print";
  "AddTab";
  "NextChild";
  "PreviousChild";
  "Find";
  "FindNext";
  "FindPrevious";
  "Replace";
  "SelectAll";
  "Bold";
  "Italic";
  "Underline";
  "MoveToNextChar";
  "MoveToPreviousChar";
  "MoveToNextWord";
  "MoveToPreviousWord";
  "MoveToNextLine";
  "MoveToPreviousLine";
  "MoveToNextPage";
  "MoveToPreviousPage";
  "MoveToStartOfLine";
  "MoveToEndOfLine";
  "MoveToStartOfBlock";
  "MoveToEndOfBlock";
  "MoveToStartOfDocument";
  "MoveToEndOfDocument";
  "SelectNextChar";
  "SelectPreviousChar";
  "SelectNextWord";
  "SelectPreviousWord";
  "SelectNextLine";
  "SelectPreviousLine";
  "SelectNextPage";
  "SelectPreviousPage";
  "SelectStartOfLine";
  "SelectEndOfLine";
  "SelectStartOfBlock";
  "SelectEndOfBlock";
  "SelectStartOfDocument";
  "SelectEndOfDocument";
  "DeleteStartOfWord";
  "DeleteEndOfWord";
  "DeleteEndOfLine";
  "InsertParagraphSeparator";
  "InsertLineSeparator";
  "SaveAs";
  "Preferences";
  "Quit";
  "FullScreen";
  "Deselect";
  "DeleteCompleteLine";
  "Backspace";
  "Cancel";
]
let qKeySequence'SequenceFormat = qenum "QKeySequence" "SequenceFormat" [
  "NativeText";
  "PortableText";
]
let qKeySequence'SequenceMatch = qenum "QKeySequence" "SequenceMatch" [
  "NoMatch";
  "PartialMatch";
  "ExactMatch";
]
let qSurface'SurfaceClass = qenum "QSurface" "SurfaceClass" [
  "Window";
  "Offscreen";
]
let qSurface'SurfaceType = qenum "QSurface" "SurfaceType" [
  "RasterSurface";
  "OpenGLSurface";
  "RasterGLSurface";
  "OpenVGSurface";
]
let qWindow'Visibility = qenum "QWindow" "Visibility" [
  "Hidden";
  "AutomaticVisibility";
  "Windowed";
  "Minimized";
  "Maximized";
  "FullScreen";
]
let qWindow'AncestorMode = qenum "QWindow" "AncestorMode" [
  "ExcludeTransients";
  "IncludeTransients";
]
let qTextCharFormat'VerticalAlignment = qenum "QTextCharFormat" "VerticalAlignment" [
  "AlignNormal";
  "AlignSuperScript";
  "AlignSubScript";
  "AlignMiddle";
  "AlignTop";
  "AlignBottom";
  "AlignBaseline";
]
let qTextCharFormat'UnderlineStyle = qenum "QTextCharFormat" "UnderlineStyle" [
  "NoUnderline";
  "SingleUnderline";
  "DashUnderline";
  "DotLine";
  "DashDotLine";
  "DashDotDotLine";
  "WaveUnderline";
  "SpellCheckUnderline";
]
let qTextCharFormat'FontPropertiesInheritanceBehavior = qenum "QTextCharFormat" "FontPropertiesInheritanceBehavior" [
  "FontPropertiesSpecifiedOnly";
  "FontPropertiesAll";
]
let qTextBlockFormat'LineHeightTypes = qenum "QTextBlockFormat" "LineHeightTypes" [
  "SingleHeight";
  "ProportionalHeight";
  "FixedHeight";
  "MinimumHeight";
  "LineDistanceHeight";
]
let qTextListFormat'Style = qenum "QTextListFormat" "Style" [
  "ListDisc";
  "ListCircle";
  "ListSquare";
  "ListDecimal";
  "ListLowerAlpha";
  "ListUpperAlpha";
  "ListLowerRoman";
  "ListUpperRoman";
  "ListStyleUndefined";
]
let qTextFrameFormat'Position = qenum "QTextFrameFormat" "Position" [
  "InFlow";
  "FloatLeft";
  "FloatRight";
]
let qTextFrameFormat'BorderStyle = qenum "QTextFrameFormat" "BorderStyle" [
  "BorderStyle_None";
  "BorderStyle_Dotted";
  "BorderStyle_Dashed";
  "BorderStyle_Solid";
  "BorderStyle_Double";
  "BorderStyle_DotDash";
  "BorderStyle_DotDotDash";
  "BorderStyle_Groove";
  "BorderStyle_Ridge";
  "BorderStyle_Inset";
  "BorderStyle_Outset";
]
let qImage'InvertMode = qenum "QImage" "InvertMode" [
  "InvertRgb";
  "InvertRgba";
]
let qImage'Format = qenum "QImage" "Format" [
  "Format_Invalid";
  "Format_Mono";
  "Format_MonoLSB";
  "Format_Indexed8";
  "Format_RGB32";
  "Format_ARGB32";
  "Format_ARGB32_Premultiplied";
  "Format_RGB16";
  "Format_ARGB8565_Premultiplied";
  "Format_RGB666";
  "Format_ARGB6666_Premultiplied";
  "Format_RGB555";
  "Format_ARGB8555_Premultiplied";
  "Format_RGB888";
  "Format_RGB444";
  "Format_ARGB4444_Premultiplied";
  "Format_RGBX8888";
  "Format_RGBA8888";
  "Format_RGBA8888_Premultiplied";
  "Format_BGR30";
  "Format_A2BGR30_Premultiplied";
  "Format_RGB30";
  "Format_A2RGB30_Premultiplied";
  "Format_Alpha8";
  "Format_Grayscale8";
]
let qPagedPaintDevice'PageSize = qenum "QPagedPaintDevice" "PageSize" [
  "A4";
  "B5";
  "Letter";
  "Legal";
  "Executive";
  "A0";
  "A1";
  "A2";
  "A3";
  "A5";
  "A6";
  "A7";
  "A8";
  "A9";
  "B0";
  "B1";
  "B10";
  "B2";
  "B3";
  "B4";
  "B6";
  "B7";
  "B8";
  "B9";
  "C5E";
  "Comm10E";
  "DLE";
  "Folio";
  "Ledger";
  "Tabloid";
  "Custom";
  "A10";
  "A3Extra";
  "A4Extra";
  "A4Plus";
  "A4Small";
  "A5Extra";
  "B5Extra";
  "JisB0";
  "JisB1";
  "JisB2";
  "JisB3";
  "JisB4";
  "JisB5";
  "JisB6";
  "JisB7";
  "JisB8";
  "JisB9";
  "JisB10";
  "AnsiC";
  "AnsiD";
  "AnsiE";
  "LegalExtra";
  "LetterExtra";
  "LetterPlus";
  "LetterSmall";
  "TabloidExtra";
  "ArchA";
  "ArchB";
  "ArchC";
  "ArchD";
  "ArchE";
  "Imperial7x9";
  "Imperial8x10";
  "Imperial9x11";
  "Imperial9x12";
  "Imperial10x11";
  "Imperial10x13";
  "Imperial10x14";
  "Imperial12x11";
  "Imperial15x11";
  "ExecutiveStandard";
  "Note";
  "Quarto";
  "Statement";
  "SuperA";
  "SuperB";
  "Postcard";
  "DoublePostcard";
  "Prc16K";
  "Prc32K";
  "Prc32KBig";
  "FanFoldUS";
  "FanFoldGerman";
  "FanFoldGermanLegal";
  "EnvelopeB4";
  "EnvelopeB5";
  "EnvelopeB6";
  "EnvelopeC0";
  "EnvelopeC1";
  "EnvelopeC2";
  "EnvelopeC3";
  "EnvelopeC4";
  "EnvelopeC6";
  "EnvelopeC65";
  "EnvelopeC7";
  "Envelope9";
  "Envelope11";
  "Envelope12";
  "Envelope14";
  "EnvelopeMonarch";
  "EnvelopePersonal";
  "EnvelopeChou3";
  "EnvelopeChou4";
  "EnvelopeInvite";
  "EnvelopeItalian";
  "EnvelopeKaku2";
  "EnvelopeKaku3";
  "EnvelopePrc1";
  "EnvelopePrc2";
  "EnvelopePrc3";
  "EnvelopePrc4";
  "EnvelopePrc5";
  "EnvelopePrc6";
  "EnvelopePrc7";
  "EnvelopePrc8";
  "EnvelopePrc9";
  "EnvelopePrc10";
  "EnvelopeYou4";
  (*"LastPageSize";*)
  (*"NPageSize";*)
  (*"NPaperSize";*)
  (*"AnsiA";*)
  (*"AnsiB";*)
  (*"EnvelopeC5";*)
  (*"EnvelopeDL";*)
  (*"Envelope10";*)
]
let qAccessibleTableModelChangeEvent'ModelChangeType = qenum "QAccessibleTableModelChangeEvent" "ModelChangeType" [
  "ModelReset";
  "DataChanged";
  "RowsInserted";
  "ColumnsInserted";
  "RowsRemoved";
  "ColumnsRemoved";
]
let qPlatformSurfaceEvent'SurfaceEventType = qenum "QPlatformSurfaceEvent" "SurfaceEventType" [
  "SurfaceCreated";
  "SurfaceAboutToBeDestroyed";
]
let qInputMethodEvent'AttributeType = qenum "QInputMethodEvent" "AttributeType" [
  "TextFormat";
  "Cursor";
  "Language";
  "Ruby";
  "Selection";
]
let qScrollEvent'ScrollState = qenum "QScrollEvent" "ScrollState" [
  "ScrollStarted";
  "ScrollUpdated";
  "ScrollFinished";
]
let qImageIOPlugin'Capability = qenum "QImageIOPlugin" "Capability" [
  "CanRead";
  "CanWrite";
  "CanReadIncremental";
]
let qMovie'MovieState = qenum "QMovie" "MovieState" [
  "NotRunning";
  "Paused";
  "Running";
]
let qMovie'CacheMode = qenum "QMovie" "CacheMode" [
  "CacheNone";
  "CacheAll";
]
let qClipboard'Mode = qenum "QClipboard" "Mode" [
  "Clipboard";
  "Selection";
  "FindBuffer";
  (*"LastMode";*)
]
let qInputMethod'Action = qenum "QInputMethod" "Action" [
  "Click";
  "ContextMenu";
]
let qOpenGLContext'OpenGLModuleType = qenum "QOpenGLContext" "OpenGLModuleType" [
  "LibGL";
  "LibGLES";
]
let qSessionManager'RestartHint = qenum "QSessionManager" "RestartHint" [
  "RestartIfRunning";
  "RestartAnyway";
  "RestartImmediately";
  "RestartNever";
]
let qOpenGLDebugLogger'LoggingMode = qenum "QOpenGLDebugLogger" "LoggingMode" [
  "AsynchronousLogging";
  "SynchronousLogging";
]
let qOpenGLShader'ShaderTypeBit = qenum "QOpenGLShader" "ShaderTypeBit" [
  "Vertex";
  "Fragment";
  "Geometry";
  "TessellationControl";
  "TessellationEvaluation";
  "Compute";
]
let qTextDocument'MetaInformation = qenum "QTextDocument" "MetaInformation" [
  "DocumentTitle";
  "DocumentUrl";
]
let qTextDocument'FindFlag = qenum "QTextDocument" "FindFlag" [
  "FindBackward";
  "FindCaseSensitively";
  "FindWholeWords";
]
let qTextDocument'FindFlags = qflags qTextDocument'FindFlag "FindFlags"
let qTextDocument'ResourceType = qenum "QTextDocument" "ResourceType" [
  "HtmlResource";
  "ImageResource";
  "StyleSheetResource";
  "UserResource";
]
let qTextDocument'Stacks = qenum "QTextDocument" "Stacks" [
  "UndoStack";
  "RedoStack";
  "UndoAndRedoStacks";
]
let qValidator'State = qenum "QValidator" "State" [
  "Invalid";
  "Intermediate";
  "Acceptable";
]
let qDoubleValidator'Notation = qenum "QDoubleValidator" "Notation" [
  "StandardNotation";
  "ScientificNotation";
]
let qTabletEvent'TabletDevice = qenum "QTabletEvent" "TabletDevice" [
  "NoDevice";
  "Puck";
  "Stylus";
  "Airbrush";
  "FourDMouse";
  "XFreeEraser";
  "RotationStylus";
]
let qTabletEvent'PointerType = qenum "QTabletEvent" "PointerType" [
  "UnknownPointer";
  "Pen";
  "Cursor";
  "Eraser";
]
let qContextMenuEvent'Reason = qenum "QContextMenuEvent" "Reason" [
  "Mouse";
  "Keyboard";
  "Other";
]
(*let qTouchEvent'DeviceType = qenum "QTouchEvent" "DeviceType" [
  "TouchScreen";
  "TouchPad";
]*)
let qOpenGLWindow'UpdateBehavior = qenum "QOpenGLWindow" "UpdateBehavior" [
  "NoPartialUpdate";
  "PartialUpdateBlit";
  "PartialUpdateBlend";
]
