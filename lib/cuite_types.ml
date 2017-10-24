open Qt

type qJsonParseError'ParseError = [`NoError
  | `UnterminatedObject
  | `MissingNameSeparator
  | `UnterminatedArray
  | `MissingValueSeparator
  | `IllegalValue
  | `TerminationByNumber
  | `IllegalNumber
  | `IllegalEscapeSequence
  | `IllegalUTF8String
  | `UnterminatedString
  | `MissingObject
  | `DeepNesting
  | `DocumentTooLarge
  | `GarbageAtEnd
  | `Invalid_value of int
  ]
type qEasingCurve'Type = [`Linear
  | `InQuad
  | `OutQuad
  | `InOutQuad
  | `OutInQuad
  | `InCubic
  | `OutCubic
  | `InOutCubic
  | `OutInCubic
  | `InQuart
  | `OutQuart
  | `InOutQuart
  | `OutInQuart
  | `InQuint
  | `OutQuint
  | `InOutQuint
  | `OutInQuint
  | `InSine
  | `OutSine
  | `InOutSine
  | `OutInSine
  | `InExpo
  | `OutExpo
  | `InOutExpo
  | `OutInExpo
  | `InCirc
  | `OutCirc
  | `InOutCirc
  | `OutInCirc
  | `InElastic
  | `OutElastic
  | `InOutElastic
  | `OutInElastic
  | `InBack
  | `OutBack
  | `InOutBack
  | `OutInBack
  | `InBounce
  | `OutBounce
  | `InOutBounce
  | `OutInBounce
  | `InCurve
  | `OutCurve
  | `SineCurve
  | `CosineCurve
  | `BezierSpline
  | `TCBSpline
  | `Custom
  | `NCurveTypes
  | `Invalid_value of int
  ]
type qTimeZone'TimeType = [`StandardTime
  | `DaylightTime
  | `GenericTime
  | `Invalid_value of int
  ]
type qTimeZone'NameType = [`DefaultName
  | `LongName
  | `ShortName
  | `OffsetName
  | `Invalid_value of int
  ]
type qLineF'IntersectType = [`NoIntersection
  | `BoundedIntersection
  | `UnboundedIntersection
  | `Invalid_value of int
  ]
type qEvent'Type = [`None
  | `Timer
  | `MouseButtonPress
  | `MouseButtonRelease
  | `MouseButtonDblClick
  | `MouseMove
  | `KeyPress
  | `KeyRelease
  | `FocusIn
  | `FocusOut
  | `FocusAboutToChange
  | `Enter
  | `Leave
  | `Paint
  | `Move
  | `Resize
  | `Create
  | `Destroy
  | `Show
  | `Hide
  | `Close
  | `Quit
  | `ParentChange
  | `ParentAboutToChange
  | `ThreadChange
  | `WindowActivate
  | `WindowDeactivate
  | `ShowToParent
  | `HideToParent
  | `Wheel
  | `WindowTitleChange
  | `WindowIconChange
  | `ApplicationWindowIconChange
  | `ApplicationFontChange
  | `ApplicationLayoutDirectionChange
  | `ApplicationPaletteChange
  | `PaletteChange
  | `Clipboard
  | `Speech
  | `MetaCall
  | `SockAct
  | `WinEventAct
  | `DeferredDelete
  | `DragEnter
  | `DragMove
  | `DragLeave
  | `Drop
  | `DragResponse
  | `ChildAdded
  | `ChildPolished
  | `ChildRemoved
  | `ShowWindowRequest
  | `PolishRequest
  | `Polish
  | `LayoutRequest
  | `UpdateRequest
  | `UpdateLater
  | `EmbeddingControl
  | `ActivateControl
  | `DeactivateControl
  | `ContextMenu
  | `InputMethod
  | `TabletMove
  | `LocaleChange
  | `LanguageChange
  | `LayoutDirectionChange
  | `Style
  | `TabletPress
  | `TabletRelease
  | `OkRequest
  | `HelpRequest
  | `IconDrag
  | `FontChange
  | `EnabledChange
  | `ActivationChange
  | `StyleChange
  | `IconTextChange
  | `ModifiedChange
  | `MouseTrackingChange
  | `WindowBlocked
  | `WindowUnblocked
  | `WindowStateChange
  | `ReadOnlyChange
  | `ToolTip
  | `WhatsThis
  | `StatusTip
  | `ActionChanged
  | `ActionAdded
  | `ActionRemoved
  | `FileOpen
  | `Shortcut
  | `ShortcutOverride
  | `WhatsThisClicked
  | `ToolBarChange
  | `ApplicationActivate
  | `ApplicationDeactivate
  | `QueryWhatsThis
  | `EnterWhatsThisMode
  | `LeaveWhatsThisMode
  | `ZOrderChange
  | `HoverEnter
  | `HoverLeave
  | `HoverMove
  | `AcceptDropsChange
  | `ZeroTimerEvent
  | `GraphicsSceneMouseMove
  | `GraphicsSceneMousePress
  | `GraphicsSceneMouseRelease
  | `GraphicsSceneMouseDoubleClick
  | `GraphicsSceneContextMenu
  | `GraphicsSceneHoverEnter
  | `GraphicsSceneHoverMove
  | `GraphicsSceneHoverLeave
  | `GraphicsSceneHelp
  | `GraphicsSceneDragEnter
  | `GraphicsSceneDragMove
  | `GraphicsSceneDragLeave
  | `GraphicsSceneDrop
  | `GraphicsSceneWheel
  | `KeyboardLayoutChange
  | `DynamicPropertyChange
  | `TabletEnterProximity
  | `TabletLeaveProximity
  | `NonClientAreaMouseMove
  | `NonClientAreaMouseButtonPress
  | `NonClientAreaMouseButtonRelease
  | `NonClientAreaMouseButtonDblClick
  | `MacSizeChange
  | `ContentsRectChange
  | `MacGLWindowChange
  | `FutureCallOut
  | `GraphicsSceneResize
  | `GraphicsSceneMove
  | `CursorChange
  | `ToolTipChange
  | `NetworkReplyUpdated
  | `GrabMouse
  | `UngrabMouse
  | `GrabKeyboard
  | `UngrabKeyboard
  | `MacGLClearDrawable
  | `StateMachineSignal
  | `StateMachineWrapped
  | `TouchBegin
  | `TouchUpdate
  | `TouchEnd
  | `NativeGesture
  | `RequestSoftwareInputPanel
  | `CloseSoftwareInputPanel
  | `WinIdChange
  | `Gesture
  | `GestureOverride
  | `ScrollPrepare
  | `Scroll
  | `Expose
  | `InputMethodQuery
  | `OrientationChange
  | `TouchCancel
  | `ThemeChange
  | `SockClose
  | `PlatformPanel
  | `StyleAnimationUpdate
  | `ApplicationStateChange
  | `WindowChangeInternal
  | `ScreenChangeInternal
  | `PlatformSurface
  | `Pointer
  | `TabletTrackingChange
  | `User
  | `MaxUser
  | `Invalid_value of int
  ]
type qMimeDatabase'MatchMode = [`MatchDefault
  | `MatchExtension
  | `MatchContent
  | `Invalid_value of int
  ]
type qJsonDocument'DataValidation = [`Validate
  | `BypassValidation
  | `Invalid_value of int
  ]
type qJsonDocument'JsonFormat = [`Indented
  | `Compact
  | `Invalid_value of int
  ]
type qByteArray'Base64Option = [`Base64Encoding
  | `Base64UrlEncoding
  | `OmitTrailingEquals
  | `Invalid_value of int
  ]
type qLocale'Language = [`AnyLanguage
  | `C
  | `Abkhazian
  | `Oromo
  | `Afar
  | `Afrikaans
  | `Albanian
  | `Amharic
  | `Arabic
  | `Armenian
  | `Assamese
  | `Aymara
  | `Azerbaijani
  | `Bashkir
  | `Basque
  | `Bengali
  | `Dzongkha
  | `Bihari
  | `Bislama
  | `Breton
  | `Bulgarian
  | `Burmese
  | `Belarusian
  | `Khmer
  | `Catalan
  | `Chinese
  | `Corsican
  | `Croatian
  | `Czech
  | `Danish
  | `Dutch
  | `English
  | `Esperanto
  | `Estonian
  | `Faroese
  | `Fijian
  | `Finnish
  | `French
  | `WesternFrisian
  | `Gaelic
  | `Galician
  | `Georgian
  | `German
  | `Greek
  | `Greenlandic
  | `Guarani
  | `Gujarati
  | `Hausa
  | `Hebrew
  | `Hindi
  | `Hungarian
  | `Icelandic
  | `Indonesian
  | `Interlingua
  | `Interlingue
  | `Inuktitut
  | `Inupiak
  | `Irish
  | `Italian
  | `Japanese
  | `Javanese
  | `Kannada
  | `Kashmiri
  | `Kazakh
  | `Kinyarwanda
  | `Kirghiz
  | `Korean
  | `Kurdish
  | `Rundi
  | `Lao
  | `Latin
  | `Latvian
  | `Lingala
  | `Lithuanian
  | `Macedonian
  | `Malagasy
  | `Malay
  | `Malayalam
  | `Maltese
  | `Maori
  | `Marathi
  | `Marshallese
  | `Mongolian
  | `NauruLanguage
  | `Nepali
  | `NorwegianBokmal
  | `Occitan
  | `Oriya
  | `Pashto
  | `Persian
  | `Polish
  | `Portuguese
  | `Punjabi
  | `Quechua
  | `Romansh
  | `Romanian
  | `Russian
  | `Samoan
  | `Sango
  | `Sanskrit
  | `Serbian
  | `Ossetic
  | `SouthernSotho
  | `Tswana
  | `Shona
  | `Sindhi
  | `Sinhala
  | `Swati
  | `Slovak
  | `Slovenian
  | `Somali
  | `Spanish
  | `Sundanese
  | `Swahili
  | `Swedish
  | `Sardinian
  | `Tajik
  | `Tamil
  | `Tatar
  | `Telugu
  | `Thai
  | `Tibetan
  | `Tigrinya
  | `Tongan
  | `Tsonga
  | `Turkish
  | `Turkmen
  | `Tahitian
  | `Uighur
  | `Ukrainian
  | `Urdu
  | `Uzbek
  | `Vietnamese
  | `Volapuk
  | `Welsh
  | `Wolof
  | `Xhosa
  | `Yiddish
  | `Yoruba
  | `Zhuang
  | `Zulu
  | `NorwegianNynorsk
  | `Bosnian
  | `Divehi
  | `Manx
  | `Cornish
  | `Akan
  | `Konkani
  | `Ga
  | `Igbo
  | `Kamba
  | `Syriac
  | `Blin
  | `Geez
  | `Koro
  | `Sidamo
  | `Atsam
  | `Tigre
  | `Jju
  | `Friulian
  | `Venda
  | `Ewe
  | `Walamo
  | `Hawaiian
  | `Tyap
  | `Nyanja
  | `Filipino
  | `SwissGerman
  | `SichuanYi
  | `Kpelle
  | `LowGerman
  | `SouthNdebele
  | `NorthernSotho
  | `NorthernSami
  | `Taroko
  | `Gusii
  | `Taita
  | `Fulah
  | `Kikuyu
  | `Samburu
  | `Sena
  | `NorthNdebele
  | `Rombo
  | `Tachelhit
  | `Kabyle
  | `Nyankole
  | `Bena
  | `Vunjo
  | `Bambara
  | `Embu
  | `Cherokee
  | `Morisyen
  | `Makonde
  | `Langi
  | `Ganda
  | `Bemba
  | `Kabuverdianu
  | `Meru
  | `Kalenjin
  | `Nama
  | `Machame
  | `Colognian
  | `Masai
  | `Soga
  | `Luyia
  | `Asu
  | `Teso
  | `Saho
  | `KoyraChiini
  | `Rwa
  | `Luo
  | `Chiga
  | `CentralMoroccoTamazight
  | `KoyraboroSenni
  | `Shambala
  | `Bodo
  | `Avaric
  | `Chamorro
  | `Chechen
  | `Church
  | `Chuvash
  | `Cree
  | `Haitian
  | `Herero
  | `HiriMotu
  | `Kanuri
  | `Komi
  | `Kongo
  | `Kwanyama
  | `Limburgish
  | `LubaKatanga
  | `Luxembourgish
  | `Navaho
  | `Ndonga
  | `Ojibwa
  | `Pali
  | `Walloon
  | `Aghem
  | `Basaa
  | `Zarma
  | `Duala
  | `JolaFonyi
  | `Ewondo
  | `Bafia
  | `MakhuwaMeetto
  | `Mundang
  | `Kwasio
  | `Nuer
  | `Sakha
  | `Sangu
  | `CongoSwahili
  | `Tasawaq
  | `Vai
  | `Walser
  | `Yangben
  | `Avestan
  | `Asturian
  | `Ngomba
  | `Kako
  | `Meta
  | `Ngiemboon
  | `Aragonese
  | `Akkadian
  | `AncientEgyptian
  | `AncientGreek
  | `Aramaic
  | `Balinese
  | `Bamun
  | `BatakToba
  | `Buginese
  | `Buhid
  | `Carian
  | `Chakma
  | `ClassicalMandaic
  | `Coptic
  | `Dogri
  | `EasternCham
  | `EasternKayah
  | `Etruscan
  | `Gothic
  | `Hanunoo
  | `Ingush
  | `LargeFloweryMiao
  | `Lepcha
  | `Limbu
  | `Lisu
  | `Lu
  | `Lycian
  | `Lydian
  | `Mandingo
  | `Manipuri
  | `Meroitic
  | `NorthernThai
  | `OldIrish
  | `OldNorse
  | `OldPersian
  | `OldTurkish
  | `Pahlavi
  | `Parthian
  | `Phoenician
  | `PrakritLanguage
  | `Rejang
  | `Sabaean
  | `Samaritan
  | `Santali
  | `Saurashtra
  | `Sora
  | `Sylheti
  | `Tagbanwa
  | `TaiDam
  | `TaiNua
  | `Ugaritic
  | `Akoose
  | `Lakota
  | `StandardMoroccanTamazight
  | `Mapuche
  | `CentralKurdish
  | `LowerSorbian
  | `UpperSorbian
  | `Kenyang
  | `Mohawk
  | `Nko
  | `Prussian
  | `Kiche
  | `SouthernSami
  | `LuleSami
  | `InariSami
  | `SkoltSami
  | `Warlpiri
  | `ManichaeanMiddlePersian
  | `Mende
  | `AncientNorthArabian
  | `LinearA
  | `HmongNjua
  | `Ho
  | `Lezghian
  | `Bassa
  | `Mono
  | `TedimChin
  | `Maithili
  | `Ahom
  | `AmericanSignLanguage
  | `ArdhamagadhiPrakrit
  | `Bhojpuri
  | `HieroglyphicLuwian
  | `LiteraryChinese
  | `Mazanderani
  | `Mru
  | `Newari
  | `NorthernLuri
  | `Palauan
  | `Papiamento
  | `Saraiki
  | `TokelauLanguage
  | `TokPisin
  | `TuvaluLanguage
  | `UncodedLanguages
  | `Cantonese
  | `Osage
  | `Tangut
  | `Invalid_value of int
  ]
type qLocale'Script = [`AnyScript
  | `ArabicScript
  | `CyrillicScript
  | `DeseretScript
  | `GurmukhiScript
  | `SimplifiedHanScript
  | `TraditionalHanScript
  | `LatinScript
  | `MongolianScript
  | `TifinaghScript
  | `ArmenianScript
  | `BengaliScript
  | `CherokeeScript
  | `DevanagariScript
  | `EthiopicScript
  | `GeorgianScript
  | `GreekScript
  | `GujaratiScript
  | `HebrewScript
  | `JapaneseScript
  | `KhmerScript
  | `KannadaScript
  | `KoreanScript
  | `LaoScript
  | `MalayalamScript
  | `MyanmarScript
  | `OriyaScript
  | `TamilScript
  | `TeluguScript
  | `ThaanaScript
  | `ThaiScript
  | `TibetanScript
  | `SinhalaScript
  | `SyriacScript
  | `YiScript
  | `VaiScript
  | `AvestanScript
  | `BalineseScript
  | `BamumScript
  | `BatakScript
  | `BopomofoScript
  | `BrahmiScript
  | `BugineseScript
  | `BuhidScript
  | `CanadianAboriginalScript
  | `CarianScript
  | `ChakmaScript
  | `ChamScript
  | `CopticScript
  | `CypriotScript
  | `EgyptianHieroglyphsScript
  | `FraserScript
  | `GlagoliticScript
  | `GothicScript
  | `HanScript
  | `HangulScript
  | `HanunooScript
  | `ImperialAramaicScript
  | `InscriptionalPahlaviScript
  | `InscriptionalParthianScript
  | `JavaneseScript
  | `KaithiScript
  | `KatakanaScript
  | `KayahLiScript
  | `KharoshthiScript
  | `LannaScript
  | `LepchaScript
  | `LimbuScript
  | `LinearBScript
  | `LycianScript
  | `LydianScript
  | `MandaeanScript
  | `MeiteiMayekScript
  | `MeroiticScript
  | `MeroiticCursiveScript
  | `NkoScript
  | `NewTaiLueScript
  | `OghamScript
  | `OlChikiScript
  | `OldItalicScript
  | `OldPersianScript
  | `OldSouthArabianScript
  | `OrkhonScript
  | `OsmanyaScript
  | `PhagsPaScript
  | `PhoenicianScript
  | `PollardPhoneticScript
  | `RejangScript
  | `RunicScript
  | `SamaritanScript
  | `SaurashtraScript
  | `SharadaScript
  | `ShavianScript
  | `SoraSompengScript
  | `CuneiformScript
  | `SundaneseScript
  | `SylotiNagriScript
  | `TagalogScript
  | `TagbanwaScript
  | `TaiLeScript
  | `TaiVietScript
  | `TakriScript
  | `UgariticScript
  | `BrailleScript
  | `HiraganaScript
  | `CaucasianAlbanianScript
  | `BassaVahScript
  | `DuployanScript
  | `ElbasanScript
  | `GranthaScript
  | `PahawhHmongScript
  | `KhojkiScript
  | `LinearAScript
  | `MahajaniScript
  | `ManichaeanScript
  | `MendeKikakuiScript
  | `ModiScript
  | `MroScript
  | `OldNorthArabianScript
  | `NabataeanScript
  | `PalmyreneScript
  | `PauCinHauScript
  | `OldPermicScript
  | `PsalterPahlaviScript
  | `SiddhamScript
  | `KhudawadiScript
  | `TirhutaScript
  | `VarangKshitiScript
  | `AhomScript
  | `AnatolianHieroglyphsScript
  | `HatranScript
  | `MultaniScript
  | `OldHungarianScript
  | `SignWritingScript
  | `AdlamScript
  | `BhaiksukiScript
  | `MarchenScript
  | `NewaScript
  | `OsageScript
  | `TangutScript
  | `HanWithBopomofoScript
  | `JamoScript
  | `Invalid_value of int
  ]
type qLocale'Country = [`AnyCountry
  | `Afghanistan
  | `Albania
  | `Algeria
  | `AmericanSamoa
  | `Andorra
  | `Angola
  | `Anguilla
  | `Antarctica
  | `AntiguaAndBarbuda
  | `Argentina
  | `Armenia
  | `Aruba
  | `Australia
  | `Austria
  | `Azerbaijan
  | `Bahamas
  | `Bahrain
  | `Bangladesh
  | `Barbados
  | `Belarus
  | `Belgium
  | `Belize
  | `Benin
  | `Bermuda
  | `Bhutan
  | `Bolivia
  | `BosniaAndHerzegowina
  | `Botswana
  | `BouvetIsland
  | `Brazil
  | `BritishIndianOceanTerritory
  | `Brunei
  | `Bulgaria
  | `BurkinaFaso
  | `Burundi
  | `Cambodia
  | `Cameroon
  | `Canada
  | `CapeVerde
  | `CaymanIslands
  | `CentralAfricanRepublic
  | `Chad
  | `Chile
  | `China
  | `ChristmasIsland
  | `CocosIslands
  | `Colombia
  | `Comoros
  | `CongoKinshasa
  | `CongoBrazzaville
  | `CookIslands
  | `CostaRica
  | `IvoryCoast
  | `Croatia
  | `Cuba
  | `Cyprus
  | `CzechRepublic
  | `Denmark
  | `Djibouti
  | `Dominica
  | `DominicanRepublic
  | `EastTimor
  | `Ecuador
  | `Egypt
  | `ElSalvador
  | `EquatorialGuinea
  | `Eritrea
  | `Estonia
  | `Ethiopia
  | `FalklandIslands
  | `FaroeIslands
  | `Fiji
  | `Finland
  | `France
  | `Guernsey
  | `FrenchGuiana
  | `FrenchPolynesia
  | `FrenchSouthernTerritories
  | `Gabon
  | `Gambia
  | `Georgia
  | `Germany
  | `Ghana
  | `Gibraltar
  | `Greece
  | `Greenland
  | `Grenada
  | `Guadeloupe
  | `Guam
  | `Guatemala
  | `Guinea
  | `GuineaBissau
  | `Guyana
  | `Haiti
  | `HeardAndMcDonaldIslands
  | `Honduras
  | `HongKong
  | `Hungary
  | `Iceland
  | `India
  | `Indonesia
  | `Iran
  | `Iraq
  | `Ireland
  | `Israel
  | `Italy
  | `Jamaica
  | `Japan
  | `Jordan
  | `Kazakhstan
  | `Kenya
  | `Kiribati
  | `NorthKorea
  | `SouthKorea
  | `Kuwait
  | `Kyrgyzstan
  | `Laos
  | `Latvia
  | `Lebanon
  | `Lesotho
  | `Liberia
  | `Libya
  | `Liechtenstein
  | `Lithuania
  | `Luxembourg
  | `Macau
  | `Macedonia
  | `Madagascar
  | `Malawi
  | `Malaysia
  | `Maldives
  | `Mali
  | `Malta
  | `MarshallIslands
  | `Martinique
  | `Mauritania
  | `Mauritius
  | `Mayotte
  | `Mexico
  | `Micronesia
  | `Moldova
  | `Monaco
  | `Mongolia
  | `Montserrat
  | `Morocco
  | `Mozambique
  | `Myanmar
  | `Namibia
  | `NauruCountry
  | `Nepal
  | `Netherlands
  | `CuraSao
  | `NewCaledonia
  | `NewZealand
  | `Nicaragua
  | `Niger
  | `Nigeria
  | `Niue
  | `NorfolkIsland
  | `NorthernMarianaIslands
  | `Norway
  | `Oman
  | `Pakistan
  | `Palau
  | `PalestinianTerritories
  | `Panama
  | `PapuaNewGuinea
  | `Paraguay
  | `Peru
  | `Philippines
  | `Pitcairn
  | `Poland
  | `Portugal
  | `PuertoRico
  | `Qatar
  | `Reunion
  | `Romania
  | `Russia
  | `Rwanda
  | `SaintKittsAndNevis
  | `SaintLucia
  | `SaintVincentAndTheGrenadines
  | `Samoa
  | `SanMarino
  | `SaoTomeAndPrincipe
  | `SaudiArabia
  | `Senegal
  | `Seychelles
  | `SierraLeone
  | `Singapore
  | `Slovakia
  | `Slovenia
  | `SolomonIslands
  | `Somalia
  | `SouthAfrica
  | `SouthGeorgiaAndTheSouthSandwichIslands
  | `Spain
  | `SriLanka
  | `SaintHelena
  | `SaintPierreAndMiquelon
  | `Sudan
  | `Suriname
  | `SvalbardAndJanMayenIslands
  | `Swaziland
  | `Sweden
  | `Switzerland
  | `Syria
  | `Taiwan
  | `Tajikistan
  | `Tanzania
  | `Thailand
  | `Togo
  | `TokelauCountry
  | `Tonga
  | `TrinidadAndTobago
  | `Tunisia
  | `Turkey
  | `Turkmenistan
  | `TurksAndCaicosIslands
  | `TuvaluCountry
  | `Uganda
  | `Ukraine
  | `UnitedArabEmirates
  | `UnitedKingdom
  | `UnitedStates
  | `UnitedStatesMinorOutlyingIslands
  | `Uruguay
  | `Uzbekistan
  | `Vanuatu
  | `VaticanCityState
  | `Venezuela
  | `Vietnam
  | `BritishVirginIslands
  | `UnitedStatesVirginIslands
  | `WallisAndFutunaIslands
  | `WesternSahara
  | `Yemen
  | `CanaryIslands
  | `Zambia
  | `Zimbabwe
  | `ClippertonIsland
  | `Montenegro
  | `Serbia
  | `SaintBarthelemy
  | `SaintMartin
  | `LatinAmericaAndTheCaribbean
  | `AscensionIsland
  | `AlandIslands
  | `DiegoGarcia
  | `CeutaAndMelilla
  | `IsleOfMan
  | `Jersey
  | `TristanDaCunha
  | `SouthSudan
  | `Bonaire
  | `SintMaarten
  | `Kosovo
  | `EuropeanUnion
  | `OutlyingOceania
  | `Invalid_value of int
  ]
type qLocale'MeasurementSystem = [`MetricSystem
  | `ImperialUSSystem
  | `ImperialUKSystem
  | `Invalid_value of int
  ]
type qLocale'FormatType = [`LongFormat
  | `ShortFormat
  | `NarrowFormat
  | `Invalid_value of int
  ]
type qLocale'NumberOption = [`DefaultNumberOptions
  | `OmitGroupSeparator
  | `RejectGroupSeparator
  | `OmitLeadingZeroInExponent
  | `RejectLeadingZeroInExponent
  | `IncludeTrailingZeroesAfterDot
  | `RejectTrailingZeroesAfterDot
  | `Invalid_value of int
  ]
type qLocale'FloatingPointPrecisionOption = [`FloatingPointShortest
  | `Invalid_value of int
  ]
type qLocale'CurrencySymbolFormat = [`CurrencyIsoCode
  | `CurrencySymbol
  | `CurrencyDisplayName
  | `Invalid_value of int
  ]
type qLocale'QuotationStyle = [`StandardQuotation
  | `AlternateQuotation
  | `Invalid_value of int
  ]
type qReadWriteLock'RecursionMode = [`NonRecursive
  | `Recursive
  | `Invalid_value of int
  ]
type qXmlStreamReader'TokenType = [`NoToken
  | `Invalid
  | `StartDocument
  | `EndDocument
  | `StartElement
  | `EndElement
  | `Characters
  | `Comment
  | `DTD
  | `EntityReference
  | `ProcessingInstruction
  | `Invalid_value of int
  ]
type qXmlStreamReader'ReadElementTextBehaviour = [`ErrorOnUnexpectedElement
  | `IncludeChildElements
  | `SkipChildElements
  | `Invalid_value of int
  ]
type qXmlStreamReader'Error = [`NoError
  | `UnexpectedElementError
  | `CustomError
  | `NotWellFormedError
  | `PrematureEndOfDocumentError
  | `Invalid_value of int
  ]
type qMetaMethod'Access = [`Private
  | `Protected
  | `Public
  | `Invalid_value of int
  ]
type qMetaMethod'MethodType = [`Method
  | `Signal
  | `Slot
  | `Constructor
  | `Invalid_value of int
  ]
type qOperatingSystemVersion'OSType = [`Unknown
  | `Windows
  | `MacOS
  | `IOS
  | `TvOS
  | `WatchOS
  | `Android
  | `Invalid_value of int
  ]
type qMetaType'Type = [`UnknownType
  | `Bool
  | `Int
  | `UInt
  | `LongLong
  | `ULongLong
  | `Double
  | `Long
  | `Short
  | `Char
  | `ULong
  | `UShort
  | `UChar
  | `Float
  | `VoidStar
  | `QChar
  | `QString
  | `QStringList
  | `QByteArray
  | `QBitArray
  | `QDate
  | `QTime
  | `QDateTime
  | `QUrl
  | `QLocale
  | `QRect
  | `QRectF
  | `QSize
  | `QSizeF
  | `QLine
  | `QLineF
  | `QPoint
  | `QPointF
  | `QRegExp
  | `QEasingCurve
  | `QUuid
  | `QVariant
  | `QModelIndex
  | `QPersistentModelIndex
  | `QRegularExpression
  | `QJsonValue
  | `QJsonObject
  | `QJsonArray
  | `QJsonDocument
  | `QByteArrayList
  | `QObjectStar
  | `SChar
  | `Void
  | `QVariantMap
  | `QVariantList
  | `QVariantHash
  | `QFont
  | `QPixmap
  | `QBrush
  | `QColor
  | `QPalette
  | `QIcon
  | `QImage
  | `QPolygon
  | `QRegion
  | `QBitmap
  | `QCursor
  | `QKeySequence
  | `QPen
  | `QTextLength
  | `QTextFormat
  | `QMatrix
  | `QTransform
  | `QMatrix4x4
  | `QVector2D
  | `QVector3D
  | `QVector4D
  | `QQuaternion
  | `QPolygonF
  | `QSizePolicy
  | `User
  | `Invalid_value of int
  ]
type qMetaType'TypeFlag = [`NeedsConstruction
  | `NeedsDestruction
  | `MovableType
  | `PointerToQObject
  | `IsEnumeration
  | `SharedPointerToQObject
  | `WeakPointerToQObject
  | `TrackingPointerToQObject
  | `WasDeclaredAsMetaType
  | `IsGadget
  | `Invalid_value of int
  ]
type qChar'SpecialCharacter = [`Null
  | `Tabulation
  | `LineFeed
  | `CarriageReturn
  | `Space
  | `Nbsp
  | `SoftHyphen
  | `ReplacementCharacter
  | `ObjectReplacementCharacter
  | `ByteOrderMark
  | `ByteOrderSwapped
  | `ParagraphSeparator
  | `LineSeparator
  | `LastValidCodePoint
  | `Invalid_value of int
  ]
type qChar'Category = [`Mark_NonSpacing
  | `Mark_SpacingCombining
  | `Mark_Enclosing
  | `Number_DecimalDigit
  | `Number_Letter
  | `Number_Other
  | `Separator_Space
  | `Separator_Line
  | `Separator_Paragraph
  | `Other_Control
  | `Other_Format
  | `Other_Surrogate
  | `Other_PrivateUse
  | `Other_NotAssigned
  | `Letter_Uppercase
  | `Letter_Lowercase
  | `Letter_Titlecase
  | `Letter_Modifier
  | `Letter_Other
  | `Punctuation_Connector
  | `Punctuation_Dash
  | `Punctuation_Open
  | `Punctuation_Close
  | `Punctuation_InitialQuote
  | `Punctuation_FinalQuote
  | `Punctuation_Other
  | `Symbol_Math
  | `Symbol_Currency
  | `Symbol_Modifier
  | `Symbol_Other
  | `Invalid_value of int
  ]
type qChar'Script = [`Script_Unknown
  | `Script_Inherited
  | `Script_Common
  | `Script_Latin
  | `Script_Greek
  | `Script_Cyrillic
  | `Script_Armenian
  | `Script_Hebrew
  | `Script_Arabic
  | `Script_Syriac
  | `Script_Thaana
  | `Script_Devanagari
  | `Script_Bengali
  | `Script_Gurmukhi
  | `Script_Gujarati
  | `Script_Oriya
  | `Script_Tamil
  | `Script_Telugu
  | `Script_Kannada
  | `Script_Malayalam
  | `Script_Sinhala
  | `Script_Thai
  | `Script_Lao
  | `Script_Tibetan
  | `Script_Myanmar
  | `Script_Georgian
  | `Script_Hangul
  | `Script_Ethiopic
  | `Script_Cherokee
  | `Script_CanadianAboriginal
  | `Script_Ogham
  | `Script_Runic
  | `Script_Khmer
  | `Script_Mongolian
  | `Script_Hiragana
  | `Script_Katakana
  | `Script_Bopomofo
  | `Script_Han
  | `Script_Yi
  | `Script_OldItalic
  | `Script_Gothic
  | `Script_Deseret
  | `Script_Tagalog
  | `Script_Hanunoo
  | `Script_Buhid
  | `Script_Tagbanwa
  | `Script_Coptic
  | `Script_Limbu
  | `Script_TaiLe
  | `Script_LinearB
  | `Script_Ugaritic
  | `Script_Shavian
  | `Script_Osmanya
  | `Script_Cypriot
  | `Script_Braille
  | `Script_Buginese
  | `Script_NewTaiLue
  | `Script_Glagolitic
  | `Script_Tifinagh
  | `Script_SylotiNagri
  | `Script_OldPersian
  | `Script_Kharoshthi
  | `Script_Balinese
  | `Script_Cuneiform
  | `Script_Phoenician
  | `Script_PhagsPa
  | `Script_Nko
  | `Script_Sundanese
  | `Script_Lepcha
  | `Script_OlChiki
  | `Script_Vai
  | `Script_Saurashtra
  | `Script_KayahLi
  | `Script_Rejang
  | `Script_Lycian
  | `Script_Carian
  | `Script_Lydian
  | `Script_Cham
  | `Script_TaiTham
  | `Script_TaiViet
  | `Script_Avestan
  | `Script_EgyptianHieroglyphs
  | `Script_Samaritan
  | `Script_Lisu
  | `Script_Bamum
  | `Script_Javanese
  | `Script_MeeteiMayek
  | `Script_ImperialAramaic
  | `Script_OldSouthArabian
  | `Script_InscriptionalParthian
  | `Script_InscriptionalPahlavi
  | `Script_OldTurkic
  | `Script_Kaithi
  | `Script_Batak
  | `Script_Brahmi
  | `Script_Mandaic
  | `Script_Chakma
  | `Script_MeroiticCursive
  | `Script_MeroiticHieroglyphs
  | `Script_Miao
  | `Script_Sharada
  | `Script_SoraSompeng
  | `Script_Takri
  | `Script_CaucasianAlbanian
  | `Script_BassaVah
  | `Script_Duployan
  | `Script_Elbasan
  | `Script_Grantha
  | `Script_PahawhHmong
  | `Script_Khojki
  | `Script_LinearA
  | `Script_Mahajani
  | `Script_Manichaean
  | `Script_MendeKikakui
  | `Script_Modi
  | `Script_Mro
  | `Script_OldNorthArabian
  | `Script_Nabataean
  | `Script_Palmyrene
  | `Script_PauCinHau
  | `Script_OldPermic
  | `Script_PsalterPahlavi
  | `Script_Siddham
  | `Script_Khudawadi
  | `Script_Tirhuta
  | `Script_WarangCiti
  | `Script_Ahom
  | `Script_AnatolianHieroglyphs
  | `Script_Hatran
  | `Script_Multani
  | `Script_OldHungarian
  | `Script_SignWriting
  | `ScriptCount
  | `Invalid_value of int
  ]
type qChar'Direction = [`DirL
  | `DirR
  | `DirEN
  | `DirES
  | `DirET
  | `DirAN
  | `DirCS
  | `DirB
  | `DirS
  | `DirWS
  | `DirON
  | `DirLRE
  | `DirLRO
  | `DirAL
  | `DirRLE
  | `DirRLO
  | `DirPDF
  | `DirNSM
  | `DirBN
  | `DirLRI
  | `DirRLI
  | `DirFSI
  | `DirPDI
  | `Invalid_value of int
  ]
type qChar'Decomposition = [`NoDecomposition
  | `Canonical
  | `Font
  | `NoBreak
  | `Initial
  | `Medial
  | `Final
  | `Isolated
  | `Circle
  | `Super
  | `Sub
  | `Vertical
  | `Wide
  | `Narrow
  | `Small
  | `Square
  | `Compat
  | `Fraction
  | `Invalid_value of int
  ]
type qChar'JoiningType = [`Joining_None
  | `Joining_Causing
  | `Joining_Dual
  | `Joining_Right
  | `Joining_Left
  | `Joining_Transparent
  | `Invalid_value of int
  ]
type qChar'Joining = [`OtherJoining
  | `Dual
  | `Right
  | `Center
  | `Invalid_value of int
  ]
type qChar'UnicodeVersion = [`Unicode_Unassigned
  | `Unicode_1_1
  | `Unicode_2_0
  | `Unicode_2_1_2
  | `Unicode_3_0
  | `Unicode_3_1
  | `Unicode_3_2
  | `Unicode_4_0
  | `Unicode_4_1
  | `Unicode_5_0
  | `Unicode_5_1
  | `Unicode_5_2
  | `Unicode_6_0
  | `Unicode_6_1
  | `Unicode_6_2
  | `Unicode_6_3
  | `Unicode_7_0
  | `Unicode_8_0
  | `Invalid_value of int
  ]
type qElapsedTimer'ClockType = [`SystemTime
  | `MonotonicClock
  | `TickCounter
  | `MachAbsoluteTime
  | `PerformanceCounter
  | `Invalid_value of int
  ]
type qStandardPaths'StandardLocation = [`DesktopLocation
  | `DocumentsLocation
  | `FontsLocation
  | `ApplicationsLocation
  | `MusicLocation
  | `MoviesLocation
  | `PicturesLocation
  | `TempLocation
  | `HomeLocation
  | `DataLocation
  | `CacheLocation
  | `GenericDataLocation
  | `RuntimeLocation
  | `ConfigLocation
  | `DownloadLocation
  | `GenericCacheLocation
  | `GenericConfigLocation
  | `AppDataLocation
  | `AppConfigLocation
  | `Invalid_value of int
  ]
type qStandardPaths'LocateOption = [`LocateFile
  | `LocateDirectory
  | `Invalid_value of int
  ]
type qDirIterator'IteratorFlag = [`NoIteratorFlags
  | `FollowSymlinks
  | `Subdirectories
  | `Invalid_value of int
  ]
type qRegExp'PatternSyntax = [`RegExp
  | `Wildcard
  | `FixedString
  | `RegExp2
  | `WildcardUnix
  | `W3CXmlSchema11
  | `Invalid_value of int
  ]
type qRegExp'CaretMode = [`CaretAtZero
  | `CaretAtOffset
  | `CaretWontMatch
  | `Invalid_value of int
  ]
type qTextCodec'ConversionFlag = [`DefaultConversion
  | `ConvertInvalidToNull
  | `IgnoreHeader
  | `FreeFunction
  | `Invalid_value of int
  ]
type qSystemSemaphore'AccessMode = [`Open
  | `Create
  | `Invalid_value of int
  ]
type qSystemSemaphore'SystemSemaphoreError = [`NoError
  | `PermissionDenied
  | `KeyError
  | `AlreadyExists
  | `NotFound
  | `OutOfResources
  | `UnknownError
  | `Invalid_value of int
  ]
type qUrl'ParsingMode = [`TolerantMode
  | `StrictMode
  | `DecodedMode
  | `Invalid_value of int
  ]
type qUrl'UrlFormattingOption = [`None
  | `RemoveScheme
  | `RemovePassword
  | `RemoveUserInfo
  | `RemovePort
  | `RemoveAuthority
  | `RemovePath
  | `RemoveQuery
  | `RemoveFragment
  | `PreferLocalFile
  | `StripTrailingSlash
  | `RemoveFilename
  | `NormalizePathSegments
  | `Invalid_value of int
  ]
type qUrl'ComponentFormattingOption = [`PrettyDecoded
  | `EncodeSpaces
  | `EncodeUnicode
  | `EncodeDelimiters
  | `EncodeReserved
  | `DecodeReserved
  | `FullyEncoded
  | `FullyDecoded
  | `Invalid_value of int
  ]
type qUrl'UserInputResolutionOption = [`DefaultResolution
  | `AssumeLocalFile
  | `Invalid_value of int
  ]
type qUuid'Variant = [`VarUnknown
  | `NCS
  | `DCE
  | `Microsoft
  | `Reserved
  | `Invalid_value of int
  ]
type qUuid'Version = [`VerUnknown
  | `Time
  | `EmbeddedPOSIX
  | `Md5
  | `Random
  | `Sha1
  | `Invalid_value of int
  ]
type qCryptographicHash'Algorithm = [`Md4
  | `Md5
  | `Sha1
  | `Sha224
  | `Sha256
  | `Sha384
  | `Sha512
  | `Sha3_224
  | `Sha3_256
  | `Sha3_384
  | `Sha3_512
  | `Invalid_value of int
  ]
type qLibraryInfo'LibraryLocation = [`PrefixPath
  | `DocumentationPath
  | `HeadersPath
  | `LibrariesPath
  | `LibraryExecutablesPath
  | `BinariesPath
  | `PluginsPath
  | `ImportsPath
  | `Qml2ImportsPath
  | `ArchDataPath
  | `DataPath
  | `TranslationsPath
  | `ExamplesPath
  | `TestsPath
  | `SettingsPath
  | `Invalid_value of int
  ]
type qCommandLineOption'Flag = [`HiddenFromHelp
  | `ShortOptionStyle
  | `Invalid_value of int
  ]
type qRegularExpression'PatternOption = [`NoPatternOption
  | `CaseInsensitiveOption
  | `DotMatchesEverythingOption
  | `MultilineOption
  | `ExtendedPatternSyntaxOption
  | `InvertedGreedinessOption
  | `DontCaptureOption
  | `UseUnicodePropertiesOption
  | `OptimizeOnFirstUsageOption
  | `DontAutomaticallyOptimizeOption
  | `Invalid_value of int
  ]
type qRegularExpression'MatchType = [`NormalMatch
  | `PartialPreferCompleteMatch
  | `PartialPreferFirstMatch
  | `NoMatch
  | `Invalid_value of int
  ]
type qRegularExpression'MatchOption = [`NoMatchOption
  | `AnchoredMatchOption
  | `DontCheckSubjectStringMatchOption
  | `Invalid_value of int
  ]
type qString'SectionFlag = [`SectionDefault
  | `SectionSkipEmpty
  | `SectionIncludeLeadingSep
  | `SectionIncludeTrailingSep
  | `SectionCaseInsensitiveSeps
  | `Invalid_value of int
  ]
type qString'SplitBehavior = [`KeepEmptyParts
  | `SkipEmptyParts
  | `Invalid_value of int
  ]
type qString'NormalizationForm = [`NormalizationForm_D
  | `NormalizationForm_C
  | `NormalizationForm_KD
  | `NormalizationForm_KC
  | `Invalid_value of int
  ]
type qDataStream'ByteOrder = [`BigEndian
  | `LittleEndian
  | `Invalid_value of int
  ]
type qDataStream'Status = [`Ok
  | `ReadPastEnd
  | `ReadCorruptData
  | `WriteFailed
  | `Invalid_value of int
  ]
type qDataStream'FloatingPointPrecision = [`SinglePrecision
  | `DoublePrecision
  | `Invalid_value of int
  ]
type qJsonValue'Type = [`Null
  | `Bool
  | `Double
  | `String
  | `Array
  | `Object
  | `Undefined
  | `Invalid_value of int
  ]
type qCommandLineParser'SingleDashWordOptionMode = [`ParseAsCompactedShortOptions
  | `ParseAsLongOptions
  | `Invalid_value of int
  ]
type qCommandLineParser'OptionsAfterPositionalArgumentsMode = [`ParseAsOptions
  | `ParseAsPositionalArguments
  | `Invalid_value of int
  ]
type qTextStream'RealNumberNotation = [`SmartNotation
  | `FixedNotation
  | `ScientificNotation
  | `Invalid_value of int
  ]
type qTextStream'FieldAlignment = [`AlignLeft
  | `AlignRight
  | `AlignCenter
  | `AlignAccountingStyle
  | `Invalid_value of int
  ]
type qTextStream'Status = [`Ok
  | `ReadPastEnd
  | `ReadCorruptData
  | `WriteFailed
  | `Invalid_value of int
  ]
type qTextStream'NumberFlag = [`ShowBase
  | `ForcePoint
  | `ForceSign
  | `UppercaseBase
  | `UppercaseDigits
  | `Invalid_value of int
  ]
type qDeadlineTimer'ForeverConstant = [`Forever
  | `Invalid_value of int
  ]
type qDate'MonthNameType = [`DateFormat
  | `StandaloneFormat
  | `Invalid_value of int
  ]
type qLockFile'LockError = [`NoError
  | `LockFailedError
  | `PermissionError
  | `UnknownError
  | `Invalid_value of int
  ]
type qSysInfo'Sizes = [`WordSize
  | `Invalid_value of int
  ]
type qSysInfo'Endian = [`BigEndian
  | `LittleEndian
  | `Invalid_value of int
  ]
type qVariant'Type = [`Invalid
  | `Bool
  | `Int
  | `UInt
  | `LongLong
  | `ULongLong
  | `Double
  | `Char
  | `Map
  | `List
  | `String
  | `StringList
  | `ByteArray
  | `BitArray
  | `Date
  | `Time
  | `DateTime
  | `Url
  | `Locale
  | `Rect
  | `RectF
  | `Size
  | `SizeF
  | `Line
  | `LineF
  | `Point
  | `PointF
  | `RegExp
  | `RegularExpression
  | `Hash
  | `EasingCurve
  | `Uuid
  | `ModelIndex
  | `PersistentModelIndex
  | `LastCoreType
  | `Font
  | `Pixmap
  | `Brush
  | `Color
  | `Palette
  | `Image
  | `Polygon
  | `Region
  | `Bitmap
  | `Cursor
  | `KeySequence
  | `Pen
  | `TextLength
  | `TextFormat
  | `Matrix
  | `Transform
  | `Matrix4x4
  | `Vector2D
  | `Vector3D
  | `Vector4D
  | `Quaternion
  | `PolygonF
  | `Icon
  | `SizePolicy
  | `UserType
  | `LastType
  | `Invalid_value of int
  ]
type qTextBoundaryFinder'BoundaryType = [`Grapheme
  | `Word
  | `Sentence
  | `Line
  | `Invalid_value of int
  ]
type qTextBoundaryFinder'BoundaryReason = [`NotAtBoundary
  | `BreakOpportunity
  | `StartOfItem
  | `EndOfItem
  | `MandatoryBreak
  | `SoftHyphen
  | `Invalid_value of int
  ]
type qDir'Filter = [`Dirs
  | `Files
  | `Drives
  | `NoSymLinks
  | `AllEntries
  | `TypeMask
  | `Readable
  | `Writable
  | `Executable
  | `PermissionMask
  | `Modified
  | `Hidden
  | `System
  | `AccessMask
  | `AllDirs
  | `CaseSensitive
  | `NoDot
  | `NoDotDot
  | `NoDotAndDotDot
  | `NoFilter
  | `Invalid_value of int
  ]
type qDir'SortFlag = [`Name
  | `Time
  | `Size
  | `Unsorted
  | `DirsFirst
  | `Reversed
  | `IgnoreCase
  | `DirsLast
  | `LocaleAware
  | `Type
  | `NoSort
  | `Invalid_value of int
  ]
type qMutex'RecursionMode = [`NonRecursive
  | `Recursive
  | `Invalid_value of int
  ]
type qAbstractAnimation'Direction = [`Forward
  | `Backward
  | `Invalid_value of int
  ]
type qAbstractAnimation'State = [`Stopped
  | `Paused
  | `Running
  | `Invalid_value of int
  ]
type qAbstractAnimation'DeletionPolicy = [`KeepWhenStopped
  | `DeleteWhenStopped
  | `Invalid_value of int
  ]
type qIODevice'OpenModeFlag = [`NotOpen
  | `ReadOnly
  | `WriteOnly
  | `ReadWrite
  | `Append
  | `Truncate
  | `Text
  | `Unbuffered
  | `Invalid_value of int
  ]
type qSettings'Status = [`NoError
  | `AccessError
  | `FormatError
  | `Invalid_value of int
  ]
type qSettings'Scope = [`UserScope
  | `SystemScope
  | `Invalid_value of int
  ]
type qAbstractItemModel'LayoutChangeHint = [`NoLayoutChangeHint
  | `VerticalSortHint
  | `HorizontalSortHint
  | `Invalid_value of int
  ]
type qItemSelectionModel'SelectionFlag = [`NoUpdate
  | `Clear
  | `Select
  | `Deselect
  | `Toggle
  | `Current
  | `Rows
  | `Columns
  | `SelectCurrent
  | `ToggleCurrent
  | `ClearAndSelect
  | `Invalid_value of int
  ]
type qEventLoop'ProcessEventsFlag = [`AllEvents
  | `ExcludeUserInputEvents
  | `ExcludeSocketNotifiers
  | `WaitForMoreEvents
  | `X11ExcludeTimers
  | `EventLoopExec
  | `DialogExec
  | `Invalid_value of int
  ]
type qSharedMemory'AccessMode = [`ReadOnly
  | `ReadWrite
  | `Invalid_value of int
  ]
type qSharedMemory'SharedMemoryError = [`NoError
  | `PermissionDenied
  | `InvalidSize
  | `KeyError
  | `AlreadyExists
  | `NotFound
  | `LockError
  | `OutOfResources
  | `UnknownError
  | `Invalid_value of int
  ]
type qSocketNotifier'Type = [`Read
  | `Write
  | `Exception
  | `Invalid_value of int
  ]
type qLibrary'LoadHint = [`ResolveAllSymbolsHint
  | `ExportExternalSymbolsHint
  | `LoadArchiveMemberHint
  | `PreventUnloadHint
  | `DeepBindHint
  | `Invalid_value of int
  ]
type qAbstractTransition'TransitionType = [`ExternalTransition
  | `InternalTransition
  | `Invalid_value of int
  ]
type qThread'Priority = [`IdlePriority
  | `LowestPriority
  | `LowPriority
  | `NormalPriority
  | `HighPriority
  | `HighestPriority
  | `TimeCriticalPriority
  | `InheritPriority
  | `Invalid_value of int
  ]
type qTimeLine'State = [`NotRunning
  | `Paused
  | `Running
  | `Invalid_value of int
  ]
type qTimeLine'Direction = [`Forward
  | `Backward
  | `Invalid_value of int
  ]
type qTimeLine'CurveShape = [`EaseInCurve
  | `EaseOutCurve
  | `EaseInOutCurve
  | `LinearCurve
  | `SineCurve
  | `CosineCurve
  | `Invalid_value of int
  ]
type qHistoryState'HistoryType = [`ShallowHistory
  | `DeepHistory
  | `Invalid_value of int
  ]
type qState'ChildMode = [`ExclusiveStates
  | `ParallelStates
  | `Invalid_value of int
  ]
type qState'RestorePolicy = [`DontRestoreProperties
  | `RestoreProperties
  | `Invalid_value of int
  ]
type qFileDevice'FileError = [`NoError
  | `ReadError
  | `WriteError
  | `FatalError
  | `ResourceError
  | `OpenError
  | `AbortError
  | `TimeOutError
  | `UnspecifiedError
  | `RemoveError
  | `RenameError
  | `PositionError
  | `ResizeError
  | `PermissionsError
  | `CopyError
  | `Invalid_value of int
  ]
type qFileDevice'Permission = [`ReadOwner
  | `WriteOwner
  | `ExeOwner
  | `ReadUser
  | `WriteUser
  | `ExeUser
  | `ReadGroup
  | `WriteGroup
  | `ExeGroup
  | `ReadOther
  | `WriteOther
  | `ExeOther
  | `Invalid_value of int
  ]
type qFileDevice'FileHandleFlag = [`AutoCloseHandle
  | `DontCloseHandle
  | `Invalid_value of int
  ]
type qFileDevice'MemoryMapFlags = [`NoOptions
  | `MapPrivateOption
  | `Invalid_value of int
  ]
type qProcess'ProcessError = [`FailedToStart
  | `Crashed
  | `Timedout
  | `ReadError
  | `WriteError
  | `UnknownError
  | `Invalid_value of int
  ]
type qProcess'ProcessState = [`NotRunning
  | `Starting
  | `Running
  | `Invalid_value of int
  ]
type qProcess'ProcessChannel = [`StandardOutput
  | `StandardError
  | `Invalid_value of int
  ]
type qProcess'ProcessChannelMode = [`SeparateChannels
  | `MergedChannels
  | `ForwardedChannels
  | `ForwardedOutputChannel
  | `ForwardedErrorChannel
  | `Invalid_value of int
  ]
type qProcess'InputChannelMode = [`ManagedInputChannel
  | `ForwardedInputChannel
  | `Invalid_value of int
  ]
type qProcess'ExitStatus = [`NormalExit
  | `CrashExit
  | `Invalid_value of int
  ]
type qStateMachine'EventPriority = [`NormalPriority
  | `HighPriority
  | `Invalid_value of int
  ]
type qStateMachine'Error = [`NoError
  | `NoInitialStateError
  | `NoDefaultStateInHistoryStateError
  | `NoCommonAncestorForTransitionError
  | `Invalid_value of int
  ]
type qt'GlobalColor = [`color0
  | `color1
  | `black
  | `white
  | `darkGray
  | `gray
  | `lightGray
  | `red
  | `green
  | `blue
  | `cyan
  | `magenta
  | `yellow
  | `darkRed
  | `darkGreen
  | `darkBlue
  | `darkCyan
  | `darkMagenta
  | `darkYellow
  | `transparent
  | `Invalid_value of int
  ]
type qt'KeyboardModifier = [`NoModifier
  | `ShiftModifier
  | `ControlModifier
  | `AltModifier
  | `MetaModifier
  | `KeypadModifier
  | `GroupSwitchModifier
  | `KeyboardModifierMask
  | `Invalid_value of int
  ]
type qt'Modifier = [`META
  | `SHIFT
  | `CTRL
  | `ALT
  | `MODIFIER_MASK
  | `UNICODE_ACCEL
  | `Invalid_value of int
  ]
type qt'MouseButton = [`NoButton
  | `LeftButton
  | `RightButton
  | `MiddleButton
  | `BackButton
  | `ForwardButton
  | `TaskButton
  | `ExtraButton4
  | `ExtraButton5
  | `ExtraButton6
  | `ExtraButton7
  | `ExtraButton8
  | `ExtraButton9
  | `ExtraButton10
  | `ExtraButton11
  | `ExtraButton12
  | `ExtraButton13
  | `ExtraButton14
  | `ExtraButton15
  | `ExtraButton16
  | `ExtraButton17
  | `ExtraButton18
  | `ExtraButton19
  | `ExtraButton20
  | `ExtraButton21
  | `ExtraButton22
  | `ExtraButton23
  | `ExtraButton24
  | `AllButtons
  | `MouseButtonMask
  | `Invalid_value of int
  ]
type qt'Orientation = [`Horizontal
  | `Vertical
  | `Invalid_value of int
  ]
type qt'FocusPolicy = [`NoFocus
  | `TabFocus
  | `ClickFocus
  | `StrongFocus
  | `WheelFocus
  | `Invalid_value of int
  ]
type qt'TabFocusBehavior = [`NoTabFocus
  | `TabFocusTextControls
  | `TabFocusListControls
  | `TabFocusAllControls
  | `Invalid_value of int
  ]
type qt'SortOrder = [`AscendingOrder
  | `DescendingOrder
  | `Invalid_value of int
  ]
type qt'TileRule = [`StretchTile
  | `RepeatTile
  | `RoundTile
  | `Invalid_value of int
  ]
type qt'AlignmentFlag = [`AlignLeft
  | `AlignRight
  | `AlignHCenter
  | `AlignJustify
  | `AlignAbsolute
  | `AlignHorizontal_Mask
  | `AlignTop
  | `AlignBottom
  | `AlignVCenter
  | `AlignBaseline
  | `AlignVertical_Mask
  | `AlignCenter
  | `Invalid_value of int
  ]
type qt'TextFlag = [`TextSingleLine
  | `TextDontClip
  | `TextExpandTabs
  | `TextShowMnemonic
  | `TextWordWrap
  | `TextWrapAnywhere
  | `TextDontPrint
  | `TextIncludeTrailingSpaces
  | `TextHideMnemonic
  | `TextJustificationForced
  | `TextForceLeftToRight
  | `TextForceRightToLeft
  | `TextLongestVariant
  | `TextBypassShaping
  | `Invalid_value of int
  ]
type qt'TextElideMode = [`ElideLeft
  | `ElideRight
  | `ElideMiddle
  | `ElideNone
  | `Invalid_value of int
  ]
type qt'WhiteSpaceMode = [`WhiteSpaceNormal
  | `WhiteSpacePre
  | `WhiteSpaceNoWrap
  | `WhiteSpaceModeUndefined
  | `Invalid_value of int
  ]
type qt'HitTestAccuracy = [`ExactHit
  | `FuzzyHit
  | `Invalid_value of int
  ]
type qt'WindowType = [`Widget
  | `Window
  | `Dialog
  | `Sheet
  | `Drawer
  | `Popup
  | `Tool
  | `ToolTip
  | `SplashScreen
  | `Desktop
  | `SubWindow
  | `ForeignWindow
  | `CoverWindow
  | `WindowType_Mask
  | `MSWindowsFixedSizeDialogHint
  | `MSWindowsOwnDC
  | `BypassWindowManagerHint
  | `FramelessWindowHint
  | `WindowTitleHint
  | `WindowSystemMenuHint
  | `WindowMinimizeButtonHint
  | `WindowMaximizeButtonHint
  | `WindowMinMaxButtonsHint
  | `WindowContextHelpButtonHint
  | `WindowShadeButtonHint
  | `WindowStaysOnTopHint
  | `WindowTransparentForInput
  | `WindowOverridesSystemGestures
  | `WindowDoesNotAcceptFocus
  | `MaximizeUsingFullscreenGeometryHint
  | `CustomizeWindowHint
  | `WindowStaysOnBottomHint
  | `WindowCloseButtonHint
  | `MacWindowToolBarButtonHint
  | `BypassGraphicsProxyWidget
  | `NoDropShadowWindowHint
  | `WindowFullscreenButtonHint
  | `Invalid_value of int
  ]
type qt'WindowState = [`WindowNoState
  | `WindowMinimized
  | `WindowMaximized
  | `WindowFullScreen
  | `WindowActive
  | `Invalid_value of int
  ]
type qt'ApplicationState = [`ApplicationSuspended
  | `ApplicationHidden
  | `ApplicationInactive
  | `ApplicationActive
  | `Invalid_value of int
  ]
type qt'ScreenOrientation = [`PrimaryOrientation
  | `PortraitOrientation
  | `LandscapeOrientation
  | `InvertedPortraitOrientation
  | `InvertedLandscapeOrientation
  | `Invalid_value of int
  ]
type qt'WidgetAttribute = [`WA_Disabled
  | `WA_UnderMouse
  | `WA_MouseTracking
  | `WA_ContentsPropagated
  | `WA_OpaquePaintEvent
  | `WA_StaticContents
  | `WA_LaidOut
  | `WA_PaintOnScreen
  | `WA_NoSystemBackground
  | `WA_UpdatesDisabled
  | `WA_Mapped
  | `WA_MacNoClickThrough
  | `WA_InputMethodEnabled
  | `WA_WState_Visible
  | `WA_WState_Hidden
  | `WA_ForceDisabled
  | `WA_KeyCompression
  | `WA_PendingMoveEvent
  | `WA_PendingResizeEvent
  | `WA_SetPalette
  | `WA_SetFont
  | `WA_SetCursor
  | `WA_NoChildEventsFromChildren
  | `WA_WindowModified
  | `WA_Resized
  | `WA_Moved
  | `WA_PendingUpdate
  | `WA_InvalidSize
  | `WA_MacBrushedMetal
  | `WA_CustomWhatsThis
  | `WA_LayoutOnEntireRect
  | `WA_OutsideWSRange
  | `WA_GrabbedShortcut
  | `WA_TransparentForMouseEvents
  | `WA_PaintUnclipped
  | `WA_SetWindowIcon
  | `WA_NoMouseReplay
  | `WA_DeleteOnClose
  | `WA_RightToLeft
  | `WA_SetLayoutDirection
  | `WA_NoChildEventsForParent
  | `WA_ForceUpdatesDisabled
  | `WA_WState_Created
  | `WA_WState_CompressKeys
  | `WA_WState_InPaintEvent
  | `WA_WState_Reparented
  | `WA_WState_ConfigPending
  | `WA_WState_Polished
  | `WA_WState_DND
  | `WA_WState_OwnSizePolicy
  | `WA_WState_ExplicitShowHide
  | `WA_ShowModal
  | `WA_MouseNoMask
  | `WA_GroupLeader
  | `WA_NoMousePropagation
  | `WA_Hover
  | `WA_InputMethodTransparent
  | `WA_QuitOnClose
  | `WA_KeyboardFocusChange
  | `WA_AcceptDrops
  | `WA_DropSiteRegistered
  | `WA_WindowPropagation
  | `WA_NoX11EventCompression
  | `WA_TintedBackground
  | `WA_X11OpenGLOverlay
  | `WA_AlwaysShowToolTips
  | `WA_MacOpaqueSizeGrip
  | `WA_SetStyle
  | `WA_SetLocale
  | `WA_MacShowFocusRect
  | `WA_MacNormalSize
  | `WA_MacSmallSize
  | `WA_MacMiniSize
  | `WA_LayoutUsesWidgetRect
  | `WA_StyledBackground
  | `WA_MSWindowsUseDirect3D
  | `WA_CanHostQMdiSubWindowTitleBar
  | `WA_MacAlwaysShowToolWindow
  | `WA_StyleSheet
  | `WA_ShowWithoutActivating
  | `WA_X11BypassTransientForHint
  | `WA_NativeWindow
  | `WA_DontCreateNativeAncestors
  | `WA_MacVariableSize
  | `WA_DontShowOnScreen
  | `WA_X11NetWmWindowTypeDesktop
  | `WA_X11NetWmWindowTypeDock
  | `WA_X11NetWmWindowTypeToolBar
  | `WA_X11NetWmWindowTypeMenu
  | `WA_X11NetWmWindowTypeUtility
  | `WA_X11NetWmWindowTypeSplash
  | `WA_X11NetWmWindowTypeDialog
  | `WA_X11NetWmWindowTypeDropDownMenu
  | `WA_X11NetWmWindowTypePopupMenu
  | `WA_X11NetWmWindowTypeToolTip
  | `WA_X11NetWmWindowTypeNotification
  | `WA_X11NetWmWindowTypeCombo
  | `WA_X11NetWmWindowTypeDND
  | `WA_MacFrameworkScaled
  | `WA_SetWindowModality
  | `WA_WState_WindowOpacitySet
  | `WA_TranslucentBackground
  | `WA_AcceptTouchEvents
  | `WA_WState_AcceptedTouchBeginEvent
  | `WA_TouchPadAcceptSingleTouchEvents
  | `WA_X11DoNotAcceptFocus
  | `WA_MacNoShadow
  | `WA_AlwaysStackOnTop
  | `WA_TabletTracking
  | `WA_AttributeCount
  | `Invalid_value of int
  ]
type qt'ApplicationAttribute = [`AA_ImmediateWidgetCreation
  | `AA_MSWindowsUseDirect3DByDefault
  | `AA_DontShowIconsInMenus
  | `AA_NativeWindows
  | `AA_DontCreateNativeWidgetSiblings
  | `AA_PluginApplication
  | `AA_DontUseNativeMenuBar
  | `AA_MacDontSwapCtrlAndMeta
  | `AA_Use96Dpi
  | `AA_X11InitThreads
  | `AA_SynthesizeTouchForUnhandledMouseEvents
  | `AA_SynthesizeMouseForUnhandledTouchEvents
  | `AA_UseHighDpiPixmaps
  | `AA_ForceRasterWidgets
  | `AA_UseDesktopOpenGL
  | `AA_UseOpenGLES
  | `AA_UseSoftwareOpenGL
  | `AA_ShareOpenGLContexts
  | `AA_SetPalette
  | `AA_EnableHighDpiScaling
  | `AA_DisableHighDpiScaling
  | `AA_UseStyleSheetPropagationInWidgetStyles
  | `AA_DontUseNativeDialogs
  | `AA_SynthesizeMouseForUnhandledTabletEvents
  | `AA_CompressHighFrequencyEvents
  | `AA_DontCheckOpenGLContextThreadAffinity
  | `AA_DisableShaderDiskCache
  | `AA_AttributeCount
  | `Invalid_value of int
  ]
type qt'ImageConversionFlag = [`ColorMode_Mask
  | `MonoOnly
  | `AlphaDither_Mask
  | `ThresholdAlphaDither
  | `OrderedAlphaDither
  | `DiffuseAlphaDither
  | `Dither_Mask
  | `OrderedDither
  | `ThresholdDither
  | `DitherMode_Mask
  | `PreferDither
  | `AvoidDither
  | `NoOpaqueDetection
  | `NoFormatConversion
  | `Invalid_value of int
  ]
type qt'BGMode = [`TransparentMode
  | `OpaqueMode
  | `Invalid_value of int
  ]
type qt'Key = [`Key_Escape
  | `Key_Tab
  | `Key_Backtab
  | `Key_Backspace
  | `Key_Return
  | `Key_Enter
  | `Key_Insert
  | `Key_Delete
  | `Key_Pause
  | `Key_Print
  | `Key_SysReq
  | `Key_Clear
  | `Key_Home
  | `Key_End
  | `Key_Left
  | `Key_Up
  | `Key_Right
  | `Key_Down
  | `Key_PageUp
  | `Key_PageDown
  | `Key_Shift
  | `Key_Control
  | `Key_Meta
  | `Key_Alt
  | `Key_CapsLock
  | `Key_NumLock
  | `Key_ScrollLock
  | `Key_F1
  | `Key_F2
  | `Key_F3
  | `Key_F4
  | `Key_F5
  | `Key_F6
  | `Key_F7
  | `Key_F8
  | `Key_F9
  | `Key_F10
  | `Key_F11
  | `Key_F12
  | `Key_F13
  | `Key_F14
  | `Key_F15
  | `Key_F16
  | `Key_F17
  | `Key_F18
  | `Key_F19
  | `Key_F20
  | `Key_F21
  | `Key_F22
  | `Key_F23
  | `Key_F24
  | `Key_F25
  | `Key_F26
  | `Key_F27
  | `Key_F28
  | `Key_F29
  | `Key_F30
  | `Key_F31
  | `Key_F32
  | `Key_F33
  | `Key_F34
  | `Key_F35
  | `Key_Super_L
  | `Key_Super_R
  | `Key_Menu
  | `Key_Hyper_L
  | `Key_Hyper_R
  | `Key_Help
  | `Key_Direction_L
  | `Key_Direction_R
  | `Key_Space
  | `Key_Exclam
  | `Key_QuoteDbl
  | `Key_NumberSign
  | `Key_Dollar
  | `Key_Percent
  | `Key_Ampersand
  | `Key_Apostrophe
  | `Key_ParenLeft
  | `Key_ParenRight
  | `Key_Asterisk
  | `Key_Plus
  | `Key_Comma
  | `Key_Minus
  | `Key_Period
  | `Key_Slash
  | `Key_0
  | `Key_1
  | `Key_2
  | `Key_3
  | `Key_4
  | `Key_5
  | `Key_6
  | `Key_7
  | `Key_8
  | `Key_9
  | `Key_Colon
  | `Key_Semicolon
  | `Key_Less
  | `Key_Equal
  | `Key_Greater
  | `Key_Question
  | `Key_At
  | `Key_A
  | `Key_B
  | `Key_C
  | `Key_D
  | `Key_E
  | `Key_F
  | `Key_G
  | `Key_H
  | `Key_I
  | `Key_J
  | `Key_K
  | `Key_L
  | `Key_M
  | `Key_N
  | `Key_O
  | `Key_P
  | `Key_Q
  | `Key_R
  | `Key_S
  | `Key_T
  | `Key_U
  | `Key_V
  | `Key_W
  | `Key_X
  | `Key_Y
  | `Key_Z
  | `Key_BracketLeft
  | `Key_Backslash
  | `Key_BracketRight
  | `Key_AsciiCircum
  | `Key_Underscore
  | `Key_QuoteLeft
  | `Key_BraceLeft
  | `Key_Bar
  | `Key_BraceRight
  | `Key_AsciiTilde
  | `Key_nobreakspace
  | `Key_exclamdown
  | `Key_cent
  | `Key_sterling
  | `Key_currency
  | `Key_yen
  | `Key_brokenbar
  | `Key_section
  | `Key_diaeresis
  | `Key_copyright
  | `Key_ordfeminine
  | `Key_guillemotleft
  | `Key_notsign
  | `Key_hyphen
  | `Key_registered
  | `Key_macron
  | `Key_degree
  | `Key_plusminus
  | `Key_twosuperior
  | `Key_threesuperior
  | `Key_acute
  | `Key_mu
  | `Key_paragraph
  | `Key_periodcentered
  | `Key_cedilla
  | `Key_onesuperior
  | `Key_masculine
  | `Key_guillemotright
  | `Key_onequarter
  | `Key_onehalf
  | `Key_threequarters
  | `Key_questiondown
  | `Key_Agrave
  | `Key_Aacute
  | `Key_Acircumflex
  | `Key_Atilde
  | `Key_Adiaeresis
  | `Key_Aring
  | `Key_AE
  | `Key_Ccedilla
  | `Key_Egrave
  | `Key_Eacute
  | `Key_Ecircumflex
  | `Key_Ediaeresis
  | `Key_Igrave
  | `Key_Iacute
  | `Key_Icircumflex
  | `Key_Idiaeresis
  | `Key_ETH
  | `Key_Ntilde
  | `Key_Ograve
  | `Key_Oacute
  | `Key_Ocircumflex
  | `Key_Otilde
  | `Key_Odiaeresis
  | `Key_multiply
  | `Key_Ooblique
  | `Key_Ugrave
  | `Key_Uacute
  | `Key_Ucircumflex
  | `Key_Udiaeresis
  | `Key_Yacute
  | `Key_THORN
  | `Key_ssharp
  | `Key_division
  | `Key_ydiaeresis
  | `Key_AltGr
  | `Key_Multi_key
  | `Key_Codeinput
  | `Key_SingleCandidate
  | `Key_MultipleCandidate
  | `Key_PreviousCandidate
  | `Key_Mode_switch
  | `Key_Kanji
  | `Key_Muhenkan
  | `Key_Henkan
  | `Key_Romaji
  | `Key_Hiragana
  | `Key_Katakana
  | `Key_Hiragana_Katakana
  | `Key_Zenkaku
  | `Key_Hankaku
  | `Key_Zenkaku_Hankaku
  | `Key_Touroku
  | `Key_Massyo
  | `Key_Kana_Lock
  | `Key_Kana_Shift
  | `Key_Eisu_Shift
  | `Key_Eisu_toggle
  | `Key_Hangul
  | `Key_Hangul_Start
  | `Key_Hangul_End
  | `Key_Hangul_Hanja
  | `Key_Hangul_Jamo
  | `Key_Hangul_Romaja
  | `Key_Hangul_Jeonja
  | `Key_Hangul_Banja
  | `Key_Hangul_PreHanja
  | `Key_Hangul_PostHanja
  | `Key_Hangul_Special
  | `Key_Dead_Grave
  | `Key_Dead_Acute
  | `Key_Dead_Circumflex
  | `Key_Dead_Tilde
  | `Key_Dead_Macron
  | `Key_Dead_Breve
  | `Key_Dead_Abovedot
  | `Key_Dead_Diaeresis
  | `Key_Dead_Abovering
  | `Key_Dead_Doubleacute
  | `Key_Dead_Caron
  | `Key_Dead_Cedilla
  | `Key_Dead_Ogonek
  | `Key_Dead_Iota
  | `Key_Dead_Voiced_Sound
  | `Key_Dead_Semivoiced_Sound
  | `Key_Dead_Belowdot
  | `Key_Dead_Hook
  | `Key_Dead_Horn
  | `Key_Back
  | `Key_Forward
  | `Key_Stop
  | `Key_Refresh
  | `Key_VolumeDown
  | `Key_VolumeMute
  | `Key_VolumeUp
  | `Key_BassBoost
  | `Key_BassUp
  | `Key_BassDown
  | `Key_TrebleUp
  | `Key_TrebleDown
  | `Key_MediaPlay
  | `Key_MediaStop
  | `Key_MediaPrevious
  | `Key_MediaNext
  | `Key_MediaRecord
  | `Key_MediaPause
  | `Key_MediaTogglePlayPause
  | `Key_HomePage
  | `Key_Favorites
  | `Key_Search
  | `Key_Standby
  | `Key_OpenUrl
  | `Key_LaunchMail
  | `Key_LaunchMedia
  | `Key_Launch0
  | `Key_Launch1
  | `Key_Launch2
  | `Key_Launch3
  | `Key_Launch4
  | `Key_Launch5
  | `Key_Launch6
  | `Key_Launch7
  | `Key_Launch8
  | `Key_Launch9
  | `Key_LaunchA
  | `Key_LaunchB
  | `Key_LaunchC
  | `Key_LaunchD
  | `Key_LaunchE
  | `Key_LaunchF
  | `Key_MonBrightnessUp
  | `Key_MonBrightnessDown
  | `Key_KeyboardLightOnOff
  | `Key_KeyboardBrightnessUp
  | `Key_KeyboardBrightnessDown
  | `Key_PowerOff
  | `Key_WakeUp
  | `Key_Eject
  | `Key_ScreenSaver
  | `Key_WWW
  | `Key_Memo
  | `Key_LightBulb
  | `Key_Shop
  | `Key_History
  | `Key_AddFavorite
  | `Key_HotLinks
  | `Key_BrightnessAdjust
  | `Key_Finance
  | `Key_Community
  | `Key_AudioRewind
  | `Key_BackForward
  | `Key_ApplicationLeft
  | `Key_ApplicationRight
  | `Key_Book
  | `Key_CD
  | `Key_Calculator
  | `Key_ToDoList
  | `Key_ClearGrab
  | `Key_Close
  | `Key_Copy
  | `Key_Cut
  | `Key_Display
  | `Key_DOS
  | `Key_Documents
  | `Key_Excel
  | `Key_Explorer
  | `Key_Game
  | `Key_Go
  | `Key_iTouch
  | `Key_LogOff
  | `Key_Market
  | `Key_Meeting
  | `Key_MenuKB
  | `Key_MenuPB
  | `Key_MySites
  | `Key_News
  | `Key_OfficeHome
  | `Key_Option
  | `Key_Paste
  | `Key_Phone
  | `Key_Calendar
  | `Key_Reply
  | `Key_Reload
  | `Key_RotateWindows
  | `Key_RotationPB
  | `Key_RotationKB
  | `Key_Save
  | `Key_Send
  | `Key_Spell
  | `Key_SplitScreen
  | `Key_Support
  | `Key_TaskPane
  | `Key_Terminal
  | `Key_Tools
  | `Key_Travel
  | `Key_Video
  | `Key_Word
  | `Key_Xfer
  | `Key_ZoomIn
  | `Key_ZoomOut
  | `Key_Away
  | `Key_Messenger
  | `Key_WebCam
  | `Key_MailForward
  | `Key_Pictures
  | `Key_Music
  | `Key_Battery
  | `Key_Bluetooth
  | `Key_WLAN
  | `Key_UWB
  | `Key_AudioForward
  | `Key_AudioRepeat
  | `Key_AudioRandomPlay
  | `Key_Subtitle
  | `Key_AudioCycleTrack
  | `Key_Time
  | `Key_Hibernate
  | `Key_View
  | `Key_TopMenu
  | `Key_PowerDown
  | `Key_Suspend
  | `Key_ContrastAdjust
  | `Key_LaunchG
  | `Key_LaunchH
  | `Key_TouchpadToggle
  | `Key_TouchpadOn
  | `Key_TouchpadOff
  | `Key_MicMute
  | `Key_Red
  | `Key_Green
  | `Key_Yellow
  | `Key_Blue
  | `Key_ChannelUp
  | `Key_ChannelDown
  | `Key_Guide
  | `Key_Info
  | `Key_Settings
  | `Key_MicVolumeUp
  | `Key_MicVolumeDown
  | `Key_New
  | `Key_Open
  | `Key_Find
  | `Key_Undo
  | `Key_Redo
  | `Key_MediaLast
  | `Key_Select
  | `Key_Yes
  | `Key_No
  | `Key_Cancel
  | `Key_Printer
  | `Key_Execute
  | `Key_Sleep
  | `Key_Play
  | `Key_Zoom
  | `Key_Exit
  | `Key_Context1
  | `Key_Context2
  | `Key_Context3
  | `Key_Context4
  | `Key_Call
  | `Key_Hangup
  | `Key_Flip
  | `Key_ToggleCallHangup
  | `Key_VoiceDial
  | `Key_LastNumberRedial
  | `Key_Camera
  | `Key_CameraFocus
  | `Key_unknown
  | `Invalid_value of int
  ]
type qt'ArrowType = [`NoArrow
  | `UpArrow
  | `DownArrow
  | `LeftArrow
  | `RightArrow
  | `Invalid_value of int
  ]
type qt'PenStyle = [`NoPen
  | `SolidLine
  | `DashLine
  | `DotLine
  | `DashDotLine
  | `DashDotDotLine
  | `CustomDashLine
  | `MPenStyle
  | `Invalid_value of int
  ]
type qt'PenCapStyle = [`FlatCap
  | `SquareCap
  | `RoundCap
  | `MPenCapStyle
  | `Invalid_value of int
  ]
type qt'PenJoinStyle = [`MiterJoin
  | `BevelJoin
  | `RoundJoin
  | `SvgMiterJoin
  | `MPenJoinStyle
  | `Invalid_value of int
  ]
type qt'BrushStyle = [`NoBrush
  | `SolidPattern
  | `Dense1Pattern
  | `Dense2Pattern
  | `Dense3Pattern
  | `Dense4Pattern
  | `Dense5Pattern
  | `Dense6Pattern
  | `Dense7Pattern
  | `HorPattern
  | `VerPattern
  | `CrossPattern
  | `BDiagPattern
  | `FDiagPattern
  | `DiagCrossPattern
  | `LinearGradientPattern
  | `RadialGradientPattern
  | `ConicalGradientPattern
  | `TexturePattern
  | `Invalid_value of int
  ]
type qt'SizeMode = [`AbsoluteSize
  | `RelativeSize
  | `Invalid_value of int
  ]
type qt'UIEffect = [`UI_General
  | `UI_AnimateMenu
  | `UI_FadeMenu
  | `UI_AnimateCombo
  | `UI_AnimateTooltip
  | `UI_FadeTooltip
  | `UI_AnimateToolBox
  | `Invalid_value of int
  ]
type qt'CursorShape = [`ArrowCursor
  | `UpArrowCursor
  | `CrossCursor
  | `WaitCursor
  | `IBeamCursor
  | `SizeVerCursor
  | `SizeHorCursor
  | `SizeBDiagCursor
  | `SizeFDiagCursor
  | `SizeAllCursor
  | `BlankCursor
  | `SplitVCursor
  | `SplitHCursor
  | `PointingHandCursor
  | `ForbiddenCursor
  | `WhatsThisCursor
  | `BusyCursor
  | `OpenHandCursor
  | `ClosedHandCursor
  | `DragCopyCursor
  | `DragMoveCursor
  | `DragLinkCursor
  | `BitmapCursor
  | `CustomCursor
  | `Invalid_value of int
  ]
type qt'TextFormat = [`PlainText
  | `RichText
  | `AutoText
  | `Invalid_value of int
  ]
type qt'AspectRatioMode = [`IgnoreAspectRatio
  | `KeepAspectRatio
  | `KeepAspectRatioByExpanding
  | `Invalid_value of int
  ]
type qt'DockWidgetArea = [`LeftDockWidgetArea
  | `RightDockWidgetArea
  | `TopDockWidgetArea
  | `BottomDockWidgetArea
  | `DockWidgetArea_Mask
  | `NoDockWidgetArea
  | `Invalid_value of int
  ]
type qt'ToolBarArea = [`LeftToolBarArea
  | `RightToolBarArea
  | `TopToolBarArea
  | `BottomToolBarArea
  | `ToolBarArea_Mask
  | `NoToolBarArea
  | `Invalid_value of int
  ]
type qt'DateFormat = [`TextDate
  | `ISODate
  | `SystemLocaleDate
  | `LocaleDate
  | `SystemLocaleShortDate
  | `SystemLocaleLongDate
  | `DefaultLocaleShortDate
  | `DefaultLocaleLongDate
  | `RFC2822Date
  | `ISODateWithMs
  | `Invalid_value of int
  ]
type qt'TimeSpec = [`LocalTime
  | `UTC
  | `OffsetFromUTC
  | `TimeZone
  | `Invalid_value of int
  ]
type qt'DayOfWeek = [`Monday
  | `Tuesday
  | `Wednesday
  | `Thursday
  | `Friday
  | `Saturday
  | `Sunday
  | `Invalid_value of int
  ]
type qt'ScrollBarPolicy = [`ScrollBarAsNeeded
  | `ScrollBarAlwaysOff
  | `ScrollBarAlwaysOn
  | `Invalid_value of int
  ]
type qt'CaseSensitivity = [`CaseInsensitive
  | `CaseSensitive
  | `Invalid_value of int
  ]
type qt'Corner = [`TopLeftCorner
  | `TopRightCorner
  | `BottomLeftCorner
  | `BottomRightCorner
  | `Invalid_value of int
  ]
type qt'Edge = [`TopEdge
  | `LeftEdge
  | `RightEdge
  | `BottomEdge
  | `Invalid_value of int
  ]
type qt'ConnectionType = [`AutoConnection
  | `DirectConnection
  | `QueuedConnection
  | `BlockingQueuedConnection
  | `UniqueConnection
  | `Invalid_value of int
  ]
type qt'ShortcutContext = [`WidgetShortcut
  | `WindowShortcut
  | `ApplicationShortcut
  | `WidgetWithChildrenShortcut
  | `Invalid_value of int
  ]
type qt'FillRule = [`OddEvenFill
  | `WindingFill
  | `Invalid_value of int
  ]
type qt'MaskMode = [`MaskInColor
  | `MaskOutColor
  | `Invalid_value of int
  ]
type qt'ClipOperation = [`NoClip
  | `ReplaceClip
  | `IntersectClip
  | `Invalid_value of int
  ]
type qt'ItemSelectionMode = [`ContainsItemShape
  | `IntersectsItemShape
  | `ContainsItemBoundingRect
  | `IntersectsItemBoundingRect
  | `Invalid_value of int
  ]
type qt'ItemSelectionOperation = [`ReplaceSelection
  | `AddToSelection
  | `Invalid_value of int
  ]
type qt'TransformationMode = [`FastTransformation
  | `SmoothTransformation
  | `Invalid_value of int
  ]
type qt'Axis = [`XAxis
  | `YAxis
  | `ZAxis
  | `Invalid_value of int
  ]
type qt'FocusReason = [`MouseFocusReason
  | `TabFocusReason
  | `BacktabFocusReason
  | `ActiveWindowFocusReason
  | `PopupFocusReason
  | `ShortcutFocusReason
  | `MenuBarFocusReason
  | `OtherFocusReason
  | `NoFocusReason
  | `Invalid_value of int
  ]
type qt'ContextMenuPolicy = [`NoContextMenu
  | `DefaultContextMenu
  | `ActionsContextMenu
  | `CustomContextMenu
  | `PreventContextMenu
  | `Invalid_value of int
  ]
type qt'InputMethodQuery = [`ImEnabled
  | `ImCursorRectangle
  | `ImFont
  | `ImCursorPosition
  | `ImSurroundingText
  | `ImCurrentSelection
  | `ImMaximumTextLength
  | `ImAnchorPosition
  | `ImHints
  | `ImPreferredLanguage
  | `ImAbsolutePosition
  | `ImTextBeforeCursor
  | `ImTextAfterCursor
  | `ImEnterKeyType
  | `ImAnchorRectangle
  | `ImInputItemClipRectangle
  | `ImPlatformData
  | `ImQueryInput
  | `ImQueryAll
  | `Invalid_value of int
  ]
type qt'InputMethodHint = [`ImhNone
  | `ImhHiddenText
  | `ImhSensitiveData
  | `ImhNoAutoUppercase
  | `ImhPreferNumbers
  | `ImhPreferUppercase
  | `ImhPreferLowercase
  | `ImhNoPredictiveText
  | `ImhDate
  | `ImhTime
  | `ImhPreferLatin
  | `ImhMultiLine
  | `ImhDigitsOnly
  | `ImhFormattedNumbersOnly
  | `ImhUppercaseOnly
  | `ImhLowercaseOnly
  | `ImhDialableCharactersOnly
  | `ImhEmailCharactersOnly
  | `ImhUrlCharactersOnly
  | `ImhLatinOnly
  | `ImhExclusiveInputMask
  | `Invalid_value of int
  ]
type qt'EnterKeyType = [`EnterKeyDefault
  | `EnterKeyReturn
  | `EnterKeyDone
  | `EnterKeyGo
  | `EnterKeySend
  | `EnterKeySearch
  | `EnterKeyNext
  | `EnterKeyPrevious
  | `Invalid_value of int
  ]
type qt'ToolButtonStyle = [`ToolButtonIconOnly
  | `ToolButtonTextOnly
  | `ToolButtonTextBesideIcon
  | `ToolButtonTextUnderIcon
  | `ToolButtonFollowStyle
  | `Invalid_value of int
  ]
type qt'LayoutDirection = [`LeftToRight
  | `RightToLeft
  | `LayoutDirectionAuto
  | `Invalid_value of int
  ]
type qt'AnchorPoint = [`AnchorLeft
  | `AnchorHorizontalCenter
  | `AnchorRight
  | `AnchorTop
  | `AnchorVerticalCenter
  | `AnchorBottom
  | `Invalid_value of int
  ]
type qt'FindChildOption = [`FindDirectChildrenOnly
  | `FindChildrenRecursively
  | `Invalid_value of int
  ]
type qt'DropAction = [`CopyAction
  | `MoveAction
  | `LinkAction
  | `ActionMask
  | `TargetMoveAction
  | `IgnoreAction
  | `Invalid_value of int
  ]
type qt'CheckState = [`Unchecked
  | `PartiallyChecked
  | `Checked
  | `Invalid_value of int
  ]
type qt'ItemDataRole = [`DisplayRole
  | `DecorationRole
  | `EditRole
  | `ToolTipRole
  | `StatusTipRole
  | `WhatsThisRole
  | `FontRole
  | `TextAlignmentRole
  | `BackgroundColorRole
  | `TextColorRole
  | `CheckStateRole
  | `AccessibleTextRole
  | `AccessibleDescriptionRole
  | `SizeHintRole
  | `InitialSortOrderRole
  | `DisplayPropertyRole
  | `DecorationPropertyRole
  | `ToolTipPropertyRole
  | `StatusTipPropertyRole
  | `WhatsThisPropertyRole
  | `UserRole
  | `Invalid_value of int
  ]
type qt'ItemFlag = [`NoItemFlags
  | `ItemIsSelectable
  | `ItemIsEditable
  | `ItemIsDragEnabled
  | `ItemIsDropEnabled
  | `ItemIsUserCheckable
  | `ItemIsEnabled
  | `ItemIsAutoTristate
  | `ItemNeverHasChildren
  | `ItemIsUserTristate
  | `Invalid_value of int
  ]
type qt'MatchFlag = [`MatchExactly
  | `MatchContains
  | `MatchStartsWith
  | `MatchEndsWith
  | `MatchRegExp
  | `MatchWildcard
  | `MatchFixedString
  | `MatchCaseSensitive
  | `MatchWrap
  | `MatchRecursive
  | `Invalid_value of int
  ]
type qt'WindowModality = [`NonModal
  | `WindowModal
  | `ApplicationModal
  | `Invalid_value of int
  ]
type qt'TextInteractionFlag = [`NoTextInteraction
  | `TextSelectableByMouse
  | `TextSelectableByKeyboard
  | `LinksAccessibleByMouse
  | `LinksAccessibleByKeyboard
  | `TextEditable
  | `TextEditorInteraction
  | `TextBrowserInteraction
  | `Invalid_value of int
  ]
type qt'EventPriority = [`HighEventPriority
  | `NormalEventPriority
  | `LowEventPriority
  | `Invalid_value of int
  ]
type qt'SizeHint = [`MinimumSize
  | `PreferredSize
  | `MaximumSize
  | `MinimumDescent
  | `NSizeHints
  | `Invalid_value of int
  ]
type qt'WindowFrameSection = [`NoSection
  | `LeftSection
  | `TopLeftSection
  | `TopSection
  | `TopRightSection
  | `RightSection
  | `BottomRightSection
  | `BottomSection
  | `BottomLeftSection
  | `TitleBarArea
  | `Invalid_value of int
  ]
type qt'CoordinateSystem = [`DeviceCoordinates
  | `LogicalCoordinates
  | `Invalid_value of int
  ]
type qt'TouchPointState = [`TouchPointPressed
  | `TouchPointMoved
  | `TouchPointStationary
  | `TouchPointReleased
  | `Invalid_value of int
  ]
type qt'GestureState = [`NoGesture
  | `GestureStarted
  | `GestureUpdated
  | `GestureFinished
  | `GestureCanceled
  | `Invalid_value of int
  ]
type qt'GestureType = [`TapGesture
  | `TapAndHoldGesture
  | `PanGesture
  | `PinchGesture
  | `SwipeGesture
  | `CustomGesture
  | `LastGestureType
  | `Invalid_value of int
  ]
type qt'GestureFlag = [`DontStartGestureOnChildren
  | `ReceivePartialGestures
  | `IgnoredGesturesPropagateToParent
  | `Invalid_value of int
  ]
type qt'NativeGestureType = [`BeginNativeGesture
  | `EndNativeGesture
  | `PanNativeGesture
  | `ZoomNativeGesture
  | `SmartZoomNativeGesture
  | `RotateNativeGesture
  | `SwipeNativeGesture
  | `Invalid_value of int
  ]
type qt'NavigationMode = [`NavigationModeNone
  | `NavigationModeKeypadTabOrder
  | `NavigationModeKeypadDirectional
  | `NavigationModeCursorAuto
  | `NavigationModeCursorForceVisible
  | `Invalid_value of int
  ]
type qt'CursorMoveStyle = [`LogicalMoveStyle
  | `VisualMoveStyle
  | `Invalid_value of int
  ]
type qt'TimerType = [`PreciseTimer
  | `CoarseTimer
  | `VeryCoarseTimer
  | `Invalid_value of int
  ]
type qt'ScrollPhase = [`NoScrollPhase
  | `ScrollBegin
  | `ScrollUpdate
  | `ScrollEnd
  | `Invalid_value of int
  ]
type qt'MouseEventSource = [`MouseEventNotSynthesized
  | `MouseEventSynthesizedBySystem
  | `MouseEventSynthesizedByQt
  | `MouseEventSynthesizedByApplication
  | `Invalid_value of int
  ]
type qt'MouseEventFlag = [`MouseEventCreatedDoubleClick
  | `MouseEventFlagMask
  | `Invalid_value of int
  ]
type qt'ChecksumType = [`ChecksumIso3309
  | `ChecksumItuV41
  | `Invalid_value of int
  ]
type qTextLength'Type = [`VariableLength
  | `FixedLength
  | `PercentageLength
  | `Invalid_value of int
  ]
type qPaintEngine'PaintEngineFeature = [`PrimitiveTransform
  | `PatternTransform
  | `PixmapTransform
  | `PatternBrush
  | `LinearGradientFill
  | `RadialGradientFill
  | `ConicalGradientFill
  | `AlphaBlend
  | `PorterDuff
  | `PainterPaths
  | `Antialiasing
  | `BrushStroke
  | `ConstantOpacity
  | `MaskedBrush
  | `PerspectiveTransform
  | `BlendModes
  | `ObjectBoundingModeGradients
  | `RasterOpModes
  | `PaintOutsidePaintEvent
  | `AllFeatures
  | `Invalid_value of int
  ]
type qPaintEngine'DirtyFlag = [`DirtyPen
  | `DirtyBrush
  | `DirtyBrushOrigin
  | `DirtyFont
  | `DirtyBackground
  | `DirtyBackgroundMode
  | `DirtyTransform
  | `DirtyClipRegion
  | `DirtyClipPath
  | `DirtyHints
  | `DirtyCompositionMode
  | `DirtyClipEnabled
  | `DirtyOpacity
  | `AllDirty
  | `Invalid_value of int
  ]
type qPaintEngine'PolygonDrawMode = [`OddEvenMode
  | `WindingMode
  | `ConvexMode
  | `PolylineMode
  | `Invalid_value of int
  ]
type qPaintEngine'Type = [`X11
  | `Windows
  | `QuickDraw
  | `CoreGraphics
  | `MacPrinter
  | `QWindowSystem
  | `PostScript
  | `OpenGL
  | `Picture
  | `SVG
  | `Raster
  | `Direct3D
  | `Pdf
  | `OpenVG
  | `OpenGL2
  | `PaintBuffer
  | `Blitter
  | `Direct2D
  | `User
  | `MaxUser
  | `Invalid_value of int
  ]
type qTextOption'TabType = [`LeftTab
  | `RightTab
  | `CenterTab
  | `DelimiterTab
  | `Invalid_value of int
  ]
type qTextOption'WrapMode = [`NoWrap
  | `WordWrap
  | `ManualWrap
  | `WrapAnywhere
  | `WrapAtWordBoundaryOrAnywhere
  | `Invalid_value of int
  ]
type qTextOption'Flag = [`ShowTabsAndSpaces
  | `ShowLineAndParagraphSeparators
  | `AddSpaceForLineAndParagraphSeparators
  | `SuppressColors
  | `ShowDocumentTerminator
  | `IncludeTrailingSpaces
  | `Invalid_value of int
  ]
type qTextItem'RenderFlag = [`RightToLeft
  | `Overline
  | `Underline
  | `StrikeOut
  | `Dummy
  | `Invalid_value of int
  ]
type qTextLine'Edge = [`Leading
  | `Trailing
  | `Invalid_value of int
  ]
type qTextLine'CursorPosition = [`CursorBetweenCharacters
  | `CursorOnCharacter
  | `Invalid_value of int
  ]
type qSurfaceFormat'FormatOption = [`StereoBuffers
  | `DebugContext
  | `DeprecatedFunctions
  | `ResetNotification
  | `Invalid_value of int
  ]
type qSurfaceFormat'SwapBehavior = [`DefaultSwapBehavior
  | `SingleBuffer
  | `DoubleBuffer
  | `TripleBuffer
  | `Invalid_value of int
  ]
type qSurfaceFormat'RenderableType = [`DefaultRenderableType
  | `OpenGL
  | `OpenGLES
  | `OpenVG
  | `Invalid_value of int
  ]
type qSurfaceFormat'OpenGLContextProfile = [`NoProfile
  | `CoreProfile
  | `CompatibilityProfile
  | `Invalid_value of int
  ]
type qGradient'Type = [`LinearGradient
  | `RadialGradient
  | `ConicalGradient
  | `NoGradient
  | `Invalid_value of int
  ]
type qGradient'Spread = [`PadSpread
  | `ReflectSpread
  | `RepeatSpread
  | `Invalid_value of int
  ]
type qGradient'CoordinateMode = [`LogicalMode
  | `StretchToDeviceMode
  | `ObjectBoundingMode
  | `Invalid_value of int
  ]
type qImageReader'ImageReaderError = [`UnknownError
  | `FileNotFoundError
  | `DeviceError
  | `UnsupportedFormatError
  | `InvalidDataError
  | `Invalid_value of int
  ]
type qTextLayout'CursorMode = [`SkipCharacters
  | `SkipWords
  | `Invalid_value of int
  ]
type qPixelFormat'ColorModel = [`RGB
  | `BGR
  | `Indexed
  | `Grayscale
  | `CMYK
  | `HSL
  | `HSV
  | `YUV
  | `Alpha
  | `Invalid_value of int
  ]
type qPixelFormat'AlphaUsage = [`UsesAlpha
  | `IgnoresAlpha
  | `Invalid_value of int
  ]
type qPixelFormat'AlphaPosition = [`AtBeginning
  | `AtEnd
  | `Invalid_value of int
  ]
type qPixelFormat'AlphaPremultiplied = [`NotPremultiplied
  | `Premultiplied
  | `Invalid_value of int
  ]
type qPixelFormat'TypeInterpretation = [`UnsignedInteger
  | `UnsignedShort
  | `UnsignedByte
  | `FloatingPoint
  | `Invalid_value of int
  ]
type qPixelFormat'YUVLayout = [`YUV444
  | `YUV422
  | `YUV411
  | `YUV420P
  | `YUV420SP
  | `YV12
  | `UYVY
  | `YUYV
  | `NV12
  | `NV21
  | `IMC1
  | `IMC2
  | `IMC3
  | `IMC4
  | `Y8
  | `Y16
  | `Invalid_value of int
  ]
type qPixelFormat'ByteOrder = [`LittleEndian
  | `BigEndian
  | `CurrentSystemEndian
  | `Invalid_value of int
  ]
type qOpenGLTextureBlitter'Origin = [`OriginBottomLeft
  | `OriginTopLeft
  | `Invalid_value of int
  ]
type qTextCursor'MoveMode = [`MoveAnchor
  | `KeepAnchor
  | `Invalid_value of int
  ]
type qTextCursor'MoveOperation = [`NoMove
  | `Start
  | `Up
  | `StartOfLine
  | `StartOfBlock
  | `StartOfWord
  | `PreviousBlock
  | `PreviousCharacter
  | `PreviousWord
  | `Left
  | `WordLeft
  | `End
  | `Down
  | `EndOfLine
  | `EndOfWord
  | `EndOfBlock
  | `NextBlock
  | `NextCharacter
  | `NextWord
  | `Right
  | `WordRight
  | `NextCell
  | `PreviousCell
  | `NextRow
  | `PreviousRow
  | `Invalid_value of int
  ]
type qTextCursor'SelectionType = [`WordUnderCursor
  | `LineUnderCursor
  | `BlockUnderCursor
  | `Document
  | `Invalid_value of int
  ]
type qOpenGLTexture'Target = [`Target1D
  | `Target1DArray
  | `Target2D
  | `Target2DArray
  | `Target3D
  | `TargetCubeMap
  | `TargetCubeMapArray
  | `Target2DMultisample
  | `Target2DMultisampleArray
  | `TargetRectangle
  | `TargetBuffer
  | `Invalid_value of int
  ]
type qOpenGLTexture'BindingTarget = [`BindingTarget1D
  | `BindingTarget1DArray
  | `BindingTarget2D
  | `BindingTarget2DArray
  | `BindingTarget3D
  | `BindingTargetCubeMap
  | `BindingTargetCubeMapArray
  | `BindingTarget2DMultisample
  | `BindingTarget2DMultisampleArray
  | `BindingTargetRectangle
  | `BindingTargetBuffer
  | `Invalid_value of int
  ]
type qOpenGLTexture'MipMapGeneration = [`GenerateMipMaps
  | `DontGenerateMipMaps
  | `Invalid_value of int
  ]
type qOpenGLTexture'TextureUnitReset = [`ResetTextureUnit
  | `DontResetTextureUnit
  | `Invalid_value of int
  ]
type qOpenGLTexture'TextureFormat = [`NoFormat
  | `R8_UNorm
  | `RG8_UNorm
  | `RGB8_UNorm
  | `RGBA8_UNorm
  | `R16_UNorm
  | `RG16_UNorm
  | `RGB16_UNorm
  | `RGBA16_UNorm
  | `R8_SNorm
  | `RG8_SNorm
  | `RGB8_SNorm
  | `RGBA8_SNorm
  | `R16_SNorm
  | `RG16_SNorm
  | `RGB16_SNorm
  | `RGBA16_SNorm
  | `R8U
  | `RG8U
  | `RGB8U
  | `RGBA8U
  | `R16U
  | `RG16U
  | `RGB16U
  | `RGBA16U
  | `R32U
  | `RG32U
  | `RGB32U
  | `RGBA32U
  | `R8I
  | `RG8I
  | `RGB8I
  | `RGBA8I
  | `R16I
  | `RG16I
  | `RGB16I
  | `RGBA16I
  | `R32I
  | `RG32I
  | `RGB32I
  | `RGBA32I
  | `R16F
  | `RG16F
  | `RGB16F
  | `RGBA16F
  | `R32F
  | `RG32F
  | `RGB32F
  | `RGBA32F
  | `RGB9E5
  | `RG11B10F
  | `RG3B2
  | `R5G6B5
  | `RGB5A1
  | `RGBA4
  | `RGB10A2
  | `D16
  | `D24
  | `D24S8
  | `D32
  | `D32F
  | `D32FS8X24
  | `S8
  | `RGB_DXT1
  | `RGBA_DXT1
  | `RGBA_DXT3
  | `RGBA_DXT5
  | `R_ATI1N_UNorm
  | `R_ATI1N_SNorm
  | `RG_ATI2N_UNorm
  | `RG_ATI2N_SNorm
  | `RGB_BP_UNSIGNED_FLOAT
  | `RGB_BP_SIGNED_FLOAT
  | `RGB_BP_UNorm
  | `R11_EAC_UNorm
  | `R11_EAC_SNorm
  | `RG11_EAC_UNorm
  | `RG11_EAC_SNorm
  | `RGB8_ETC2
  | `SRGB8_ETC2
  | `RGB8_PunchThrough_Alpha1_ETC2
  | `SRGB8_PunchThrough_Alpha1_ETC2
  | `RGBA8_ETC2_EAC
  | `SRGB8_Alpha8_ETC2_EAC
  | `RGB8_ETC1
  | `RGBA_ASTC_4x4
  | `RGBA_ASTC_5x4
  | `RGBA_ASTC_5x5
  | `RGBA_ASTC_6x5
  | `RGBA_ASTC_6x6
  | `RGBA_ASTC_8x5
  | `RGBA_ASTC_8x6
  | `RGBA_ASTC_8x8
  | `RGBA_ASTC_10x5
  | `RGBA_ASTC_10x6
  | `RGBA_ASTC_10x8
  | `RGBA_ASTC_10x10
  | `RGBA_ASTC_12x10
  | `RGBA_ASTC_12x12
  | `SRGB8_Alpha8_ASTC_4x4
  | `SRGB8_Alpha8_ASTC_5x4
  | `SRGB8_Alpha8_ASTC_5x5
  | `SRGB8_Alpha8_ASTC_6x5
  | `SRGB8_Alpha8_ASTC_6x6
  | `SRGB8_Alpha8_ASTC_8x5
  | `SRGB8_Alpha8_ASTC_8x6
  | `SRGB8_Alpha8_ASTC_8x8
  | `SRGB8_Alpha8_ASTC_10x5
  | `SRGB8_Alpha8_ASTC_10x6
  | `SRGB8_Alpha8_ASTC_10x8
  | `SRGB8_Alpha8_ASTC_10x10
  | `SRGB8_Alpha8_ASTC_12x10
  | `SRGB8_Alpha8_ASTC_12x12
  | `SRGB8
  | `SRGB8_Alpha8
  | `SRGB_DXT1
  | `SRGB_Alpha_DXT1
  | `SRGB_Alpha_DXT3
  | `SRGB_Alpha_DXT5
  | `SRGB_BP_UNorm
  | `DepthFormat
  | `AlphaFormat
  | `RGBFormat
  | `RGBAFormat
  | `LuminanceFormat
  | `LuminanceAlphaFormat
  | `Invalid_value of int
  ]
type qOpenGLTexture'CubeMapFace = [`CubeMapPositiveX
  | `CubeMapNegativeX
  | `CubeMapPositiveY
  | `CubeMapNegativeY
  | `CubeMapPositiveZ
  | `CubeMapNegativeZ
  | `Invalid_value of int
  ]
type qOpenGLTexture'PixelFormat = [`NoSourceFormat
  | `Red
  | `RG
  | `RGB
  | `BGR
  | `RGBA
  | `BGRA
  | `Red_Integer
  | `RG_Integer
  | `RGB_Integer
  | `BGR_Integer
  | `RGBA_Integer
  | `BGRA_Integer
  | `Stencil
  | `Depth
  | `DepthStencil
  | `Alpha
  | `Luminance
  | `LuminanceAlpha
  | `Invalid_value of int
  ]
type qOpenGLTexture'PixelType = [`NoPixelType
  | `Int8
  | `UInt8
  | `Int16
  | `UInt16
  | `Int32
  | `UInt32
  | `Float16
  | `Float16OES
  | `Float32
  | `UInt32_RGB9_E5
  | `UInt32_RG11B10F
  | `UInt8_RG3B2
  | `UInt8_RG3B2_Rev
  | `UInt16_RGB5A1
  | `UInt16_RGB5A1_Rev
  | `UInt16_R5G6B5
  | `UInt16_R5G6B5_Rev
  | `UInt16_RGBA4
  | `UInt16_RGBA4_Rev
  | `UInt32_RGBA8
  | `UInt32_RGBA8_Rev
  | `UInt32_RGB10A2
  | `UInt32_RGB10A2_Rev
  | `UInt32_D24S8
  | `Float32_D32_UInt32_S8_X24
  | `Invalid_value of int
  ]
type qOpenGLTexture'SwizzleComponent = [`SwizzleRed
  | `SwizzleGreen
  | `SwizzleBlue
  | `SwizzleAlpha
  | `Invalid_value of int
  ]
type qOpenGLTexture'SwizzleValue = [`RedValue
  | `GreenValue
  | `BlueValue
  | `AlphaValue
  | `ZeroValue
  | `OneValue
  | `Invalid_value of int
  ]
type qOpenGLTexture'WrapMode = [`Repeat
  | `MirroredRepeat
  | `ClampToEdge
  | `ClampToBorder
  | `Invalid_value of int
  ]
type qOpenGLTexture'CoordinateDirection = [`DirectionS
  | `DirectionT
  | `DirectionR
  | `Invalid_value of int
  ]
type qOpenGLTexture'Feature = [`ImmutableStorage
  | `ImmutableMultisampleStorage
  | `TextureRectangle
  | `TextureArrays
  | `Texture3D
  | `TextureMultisample
  | `TextureBuffer
  | `TextureCubeMapArrays
  | `Swizzle
  | `StencilTexturing
  | `AnisotropicFiltering
  | `NPOTTextures
  | `NPOTTextureRepeat
  | `Texture1D
  | `TextureComparisonOperators
  | `TextureMipMapLevel
  | `Invalid_value of int
  ]
type qOpenGLTexture'DepthStencilMode = [`DepthMode
  | `StencilMode
  | `Invalid_value of int
  ]
type qOpenGLTexture'ComparisonFunction = [`CompareLessEqual
  | `CompareGreaterEqual
  | `CompareLess
  | `CompareGreater
  | `CompareEqual
  | `CommpareNotEqual
  | `CompareAlways
  | `CompareNever
  | `Invalid_value of int
  ]
type qOpenGLTexture'ComparisonMode = [`CompareRefToTexture
  | `CompareNone
  | `Invalid_value of int
  ]
type qOpenGLTexture'Filter = [`Nearest
  | `Linear
  | `NearestMipMapNearest
  | `NearestMipMapLinear
  | `LinearMipMapNearest
  | `LinearMipMapLinear
  | `Invalid_value of int
  ]
type qPageSize'PageSizeId = [`A4
  | `B5
  | `Letter
  | `Legal
  | `Executive
  | `A0
  | `A1
  | `A2
  | `A3
  | `A5
  | `A6
  | `A7
  | `A8
  | `A9
  | `B0
  | `B1
  | `B10
  | `B2
  | `B3
  | `B4
  | `B6
  | `B7
  | `B8
  | `B9
  | `C5E
  | `Comm10E
  | `DLE
  | `Folio
  | `Ledger
  | `Tabloid
  | `Custom
  | `A10
  | `A3Extra
  | `A4Extra
  | `A4Plus
  | `A4Small
  | `A5Extra
  | `B5Extra
  | `JisB0
  | `JisB1
  | `JisB2
  | `JisB3
  | `JisB4
  | `JisB5
  | `JisB6
  | `JisB7
  | `JisB8
  | `JisB9
  | `JisB10
  | `AnsiC
  | `AnsiD
  | `AnsiE
  | `LegalExtra
  | `LetterExtra
  | `LetterPlus
  | `LetterSmall
  | `TabloidExtra
  | `ArchA
  | `ArchB
  | `ArchC
  | `ArchD
  | `ArchE
  | `Imperial7x9
  | `Imperial8x10
  | `Imperial9x11
  | `Imperial9x12
  | `Imperial10x11
  | `Imperial10x13
  | `Imperial10x14
  | `Imperial12x11
  | `Imperial15x11
  | `ExecutiveStandard
  | `Note
  | `Quarto
  | `Statement
  | `SuperA
  | `SuperB
  | `Postcard
  | `DoublePostcard
  | `Prc16K
  | `Prc32K
  | `Prc32KBig
  | `FanFoldUS
  | `FanFoldGerman
  | `FanFoldGermanLegal
  | `EnvelopeB4
  | `EnvelopeB5
  | `EnvelopeB6
  | `EnvelopeC0
  | `EnvelopeC1
  | `EnvelopeC2
  | `EnvelopeC3
  | `EnvelopeC4
  | `EnvelopeC6
  | `EnvelopeC65
  | `EnvelopeC7
  | `Envelope9
  | `Envelope11
  | `Envelope12
  | `Envelope14
  | `EnvelopeMonarch
  | `EnvelopePersonal
  | `EnvelopeChou3
  | `EnvelopeChou4
  | `EnvelopeInvite
  | `EnvelopeItalian
  | `EnvelopeKaku2
  | `EnvelopeKaku3
  | `EnvelopePrc1
  | `EnvelopePrc2
  | `EnvelopePrc3
  | `EnvelopePrc4
  | `EnvelopePrc5
  | `EnvelopePrc6
  | `EnvelopePrc7
  | `EnvelopePrc8
  | `EnvelopePrc9
  | `EnvelopePrc10
  | `EnvelopeYou4
  | `Invalid_value of int
  ]
type qPageSize'Unit = [`Millimeter
  | `Point
  | `Inch
  | `Pica
  | `Didot
  | `Cicero
  | `Invalid_value of int
  ]
type qPageSize'SizeMatchPolicy = [`FuzzyMatch
  | `FuzzyOrientationMatch
  | `ExactMatch
  | `Invalid_value of int
  ]
type qTouchEvent'TouchPoint'InfoFlag = [`Pen
  | `Token
  | `Invalid_value of int
  ]
type qTouchDevice'DeviceType = [`TouchScreen
  | `TouchPad
  | `Invalid_value of int
  ]
type qTouchDevice'CapabilityFlag = [`Position
  | `Area
  | `Pressure
  | `Velocity
  | `RawPositions
  | `NormalizedPosition
  | `MouseEmulation
  | `Invalid_value of int
  ]
type qStaticText'PerformanceHint = [`ModerateCaching
  | `AggressiveCaching
  | `Invalid_value of int
  ]
type qPainterPath'ElementType = [`MoveToElement
  | `LineToElement
  | `CurveToElement
  | `CurveToDataElement
  | `Invalid_value of int
  ]
type qOpenGLFramebufferObject'Attachment = [`NoAttachment
  | `CombinedDepthStencil
  | `Depth
  | `Invalid_value of int
  ]
type qOpenGLFramebufferObject'FramebufferRestorePolicy = [`DontRestoreFramebufferBinding
  | `RestoreFramebufferBindingToDefault
  | `RestoreFrameBufferBinding
  | `Invalid_value of int
  ]
type qIcon'Mode = [`Normal
  | `Disabled
  | `Active
  | `Selected
  | `Invalid_value of int
  ]
type qIcon'State = [`On
  | `Off
  | `Invalid_value of int
  ]
type qPaintDevice'PaintDeviceMetric = [`PdmWidth
  | `PdmHeight
  | `PdmWidthMM
  | `PdmHeightMM
  | `PdmNumColors
  | `PdmDepth
  | `PdmDpiX
  | `PdmDpiY
  | `PdmPhysicalDpiX
  | `PdmPhysicalDpiY
  | `PdmDevicePixelRatio
  | `PdmDevicePixelRatioScaled
  | `Invalid_value of int
  ]
type qPalette'ColorGroup = [`Active
  | `Disabled
  | `Inactive
  | `NColorGroups
  | `Current
  | `All
  | `Invalid_value of int
  ]
type qPalette'ColorRole = [`WindowText
  | `Button
  | `Light
  | `Midlight
  | `Dark
  | `Mid
  | `Text
  | `BrightText
  | `ButtonText
  | `Base
  | `Window
  | `Shadow
  | `Highlight
  | `HighlightedText
  | `Link
  | `LinkVisited
  | `AlternateBase
  | `NoRole
  | `ToolTipBase
  | `ToolTipText
  | `NColorRoles
  | `Invalid_value of int
  ]
type qRawFont'AntialiasingType = [`PixelAntialiasing
  | `SubPixelAntialiasing
  | `Invalid_value of int
  ]
type qRawFont'LayoutFlag = [`SeparateAdvances
  | `KernedAdvances
  | `UseDesignMetrics
  | `Invalid_value of int
  ]
type qOpenGLDebugMessage'Source = [`InvalidSource
  | `APISource
  | `WindowSystemSource
  | `ShaderCompilerSource
  | `ThirdPartySource
  | `ApplicationSource
  | `OtherSource
  | `AnySource
  | `Invalid_value of int
  ]
type qOpenGLDebugMessage'Type = [`InvalidType
  | `ErrorType
  | `DeprecatedBehaviorType
  | `UndefinedBehaviorType
  | `PortabilityType
  | `PerformanceType
  | `OtherType
  | `MarkerType
  | `GroupPushType
  | `GroupPopType
  | `AnyType
  | `Invalid_value of int
  ]
type qOpenGLDebugMessage'Severity = [`InvalidSeverity
  | `HighSeverity
  | `MediumSeverity
  | `LowSeverity
  | `NotificationSeverity
  | `AnySeverity
  | `Invalid_value of int
  ]
type qPainter'RenderHint = [`Antialiasing
  | `TextAntialiasing
  | `SmoothPixmapTransform
  | `HighQualityAntialiasing
  | `NonCosmeticDefaultPen
  | `Qt4CompatiblePainting
  | `Invalid_value of int
  ]
type qPainter'PixmapFragmentHint = [`OpaqueHint
  | `Invalid_value of int
  ]
type qPainter'CompositionMode = [`CompositionMode_SourceOver
  | `CompositionMode_DestinationOver
  | `CompositionMode_Clear
  | `CompositionMode_Source
  | `CompositionMode_Destination
  | `CompositionMode_SourceIn
  | `CompositionMode_DestinationIn
  | `CompositionMode_SourceOut
  | `CompositionMode_DestinationOut
  | `CompositionMode_SourceAtop
  | `CompositionMode_DestinationAtop
  | `CompositionMode_Xor
  | `CompositionMode_Plus
  | `CompositionMode_Multiply
  | `CompositionMode_Screen
  | `CompositionMode_Overlay
  | `CompositionMode_Darken
  | `CompositionMode_Lighten
  | `CompositionMode_ColorDodge
  | `CompositionMode_ColorBurn
  | `CompositionMode_HardLight
  | `CompositionMode_SoftLight
  | `CompositionMode_Difference
  | `CompositionMode_Exclusion
  | `RasterOp_SourceOrDestination
  | `RasterOp_SourceAndDestination
  | `RasterOp_SourceXorDestination
  | `RasterOp_NotSourceAndNotDestination
  | `RasterOp_NotSourceOrNotDestination
  | `RasterOp_NotSourceXorDestination
  | `RasterOp_NotSource
  | `RasterOp_NotSourceAndDestination
  | `RasterOp_SourceAndNotDestination
  | `RasterOp_NotSourceOrDestination
  | `RasterOp_SourceOrNotDestination
  | `RasterOp_ClearDestination
  | `RasterOp_SetDestination
  | `RasterOp_NotDestination
  | `Invalid_value of int
  ]
type qOpenGLFunctions'OpenGLFeature = [`Multitexture
  | `Shaders
  | `Buffers
  | `Framebuffers
  | `BlendColor
  | `BlendEquation
  | `BlendEquationSeparate
  | `BlendFuncSeparate
  | `BlendSubtract
  | `CompressedTextures
  | `Multisample
  | `StencilSeparate
  | `NPOTTextures
  | `NPOTTextureRepeat
  | `FixedFunctionPipeline
  | `TextureRGFormats
  | `MultipleRenderTargets
  | `Invalid_value of int
  ]
type qTextFormat'FormatType = [`InvalidFormat
  | `BlockFormat
  | `CharFormat
  | `ListFormat
  | `TableFormat
  | `FrameFormat
  | `UserFormat
  | `Invalid_value of int
  ]
type qTextFormat'Property = [`ObjectIndex
  | `CssFloat
  | `LayoutDirection
  | `OutlinePen
  | `BackgroundBrush
  | `ForegroundBrush
  | `BackgroundImageUrl
  | `BlockAlignment
  | `BlockTopMargin
  | `BlockBottomMargin
  | `BlockLeftMargin
  | `BlockRightMargin
  | `TextIndent
  | `TabPositions
  | `BlockIndent
  | `LineHeight
  | `LineHeightType
  | `BlockNonBreakableLines
  | `BlockTrailingHorizontalRulerWidth
  | `FirstFontProperty
  | `FontLetterSpacingType
  | `FontLetterSpacing
  | `FontWordSpacing
  | `FontStretch
  | `FontStyleHint
  | `FontStyleStrategy
  | `FontKerning
  | `FontHintingPreference
  | `FontFamily
  | `FontPointSize
  | `FontSizeAdjustment
  | `FontWeight
  | `FontItalic
  | `FontUnderline
  | `FontOverline
  | `FontStrikeOut
  | `FontFixedPitch
  | `FontPixelSize
  | `TextUnderlineColor
  | `TextVerticalAlignment
  | `TextOutline
  | `TextUnderlineStyle
  | `TextToolTip
  | `IsAnchor
  | `AnchorHref
  | `AnchorName
  | `ObjectType
  | `ListStyle
  | `ListIndent
  | `ListNumberPrefix
  | `ListNumberSuffix
  | `FrameBorder
  | `FrameMargin
  | `FramePadding
  | `FrameWidth
  | `FrameHeight
  | `FrameTopMargin
  | `FrameBottomMargin
  | `FrameLeftMargin
  | `FrameRightMargin
  | `FrameBorderBrush
  | `FrameBorderStyle
  | `TableColumns
  | `TableColumnWidthConstraints
  | `TableCellSpacing
  | `TableCellPadding
  | `TableHeaderRowCount
  | `TableCellRowSpan
  | `TableCellColumnSpan
  | `TableCellTopPadding
  | `TableCellBottomPadding
  | `TableCellLeftPadding
  | `TableCellRightPadding
  | `ImageName
  | `ImageWidth
  | `ImageHeight
  | `FullWidthSelection
  | `PageBreakPolicy
  | `UserProperty
  | `Invalid_value of int
  ]
type qTextFormat'ObjectTypes = [`NoObject
  | `ImageObject
  | `TableObject
  | `TableCellObject
  | `UserObject
  | `Invalid_value of int
  ]
type qTextFormat'PageBreakFlag = [`PageBreak_Auto
  | `PageBreak_AlwaysBefore
  | `PageBreak_AlwaysAfter
  | `Invalid_value of int
  ]
type qColor'Spec = [`Invalid
  | `Rgb
  | `Hsv
  | `Cmyk
  | `Hsl
  | `Invalid_value of int
  ]
type qColor'NameFormat = [`HexRgb
  | `HexArgb
  | `Invalid_value of int
  ]
type qAccessible'Event = [`SoundPlayed
  | `Alert
  | `ForegroundChanged
  | `MenuStart
  | `MenuEnd
  | `PopupMenuStart
  | `PopupMenuEnd
  | `ContextHelpStart
  | `ContextHelpEnd
  | `DragDropStart
  | `DragDropEnd
  | `DialogStart
  | `DialogEnd
  | `ScrollingStart
  | `ScrollingEnd
  | `MenuCommand
  | `ActionChanged
  | `ActiveDescendantChanged
  | `AttributeChanged
  | `DocumentContentChanged
  | `DocumentLoadComplete
  | `DocumentLoadStopped
  | `DocumentReload
  | `HyperlinkEndIndexChanged
  | `HyperlinkNumberOfAnchorsChanged
  | `HyperlinkSelectedLinkChanged
  | `HypertextLinkActivated
  | `HypertextLinkSelected
  | `HyperlinkStartIndexChanged
  | `HypertextChanged
  | `HypertextNLinksChanged
  | `ObjectAttributeChanged
  | `PageChanged
  | `SectionChanged
  | `TableCaptionChanged
  | `TableColumnDescriptionChanged
  | `TableColumnHeaderChanged
  | `TableModelChanged
  | `TableRowDescriptionChanged
  | `TableRowHeaderChanged
  | `TableSummaryChanged
  | `TextAttributeChanged
  | `TextCaretMoved
  | `TextColumnChanged
  | `TextInserted
  | `TextRemoved
  | `TextUpdated
  | `TextSelectionChanged
  | `VisibleDataChanged
  | `ObjectCreated
  | `ObjectDestroyed
  | `ObjectShow
  | `ObjectHide
  | `ObjectReorder
  | `Focus
  | `Selection
  | `SelectionAdd
  | `SelectionRemove
  | `SelectionWithin
  | `StateChanged
  | `LocationChanged
  | `NameChanged
  | `DescriptionChanged
  | `ValueChanged
  | `ParentChanged
  | `HelpChanged
  | `DefaultActionChanged
  | `AcceleratorChanged
  | `InvalidEvent
  | `Invalid_value of int
  ]
type qAccessible'Role = [`NoRole
  | `TitleBar
  | `MenuBar
  | `ScrollBar
  | `Grip
  | `Sound
  | `Cursor
  | `Caret
  | `AlertMessage
  | `Window
  | `Client
  | `PopupMenu
  | `MenuItem
  | `ToolTip
  | `Application
  | `Document
  | `Pane
  | `Chart
  | `Dialog
  | `Border
  | `Grouping
  | `Separator
  | `ToolBar
  | `StatusBar
  | `Table
  | `ColumnHeader
  | `RowHeader
  | `Column
  | `Row
  | `Cell
  | `Link
  | `HelpBalloon
  | `Assistant
  | `List
  | `ListItem
  | `Tree
  | `TreeItem
  | `PageTab
  | `PropertyPage
  | `Indicator
  | `Graphic
  | `StaticText
  | `EditableText
  | `Button
  | `CheckBox
  | `RadioButton
  | `ComboBox
  | `ProgressBar
  | `Dial
  | `HotkeyField
  | `Slider
  | `SpinBox
  | `Canvas
  | `Animation
  | `Equation
  | `ButtonDropDown
  | `ButtonMenu
  | `ButtonDropGrid
  | `Whitespace
  | `PageTabList
  | `Clock
  | `Splitter
  | `LayeredPane
  | `Terminal
  | `Desktop
  | `Paragraph
  | `WebDocument
  | `Section
  | `ColorChooser
  | `Footer
  | `Form
  | `Heading
  | `Note
  | `ComplementaryContent
  | `UserRole
  | `Invalid_value of int
  ]
type qAccessible'Text = [`Name
  | `Description
  | `Value
  | `Help
  | `Accelerator
  | `DebugDescription
  | `UserText
  | `Invalid_value of int
  ]
type qAccessible'RelationFlag = [`Label
  | `Labelled
  | `Controller
  | `Controlled
  | `AllRelations
  | `Invalid_value of int
  ]
type qAccessible'InterfaceType = [`TextInterface
  | `EditableTextInterface
  | `ValueInterface
  | `ActionInterface
  | `ImageInterface
  | `TableInterface
  | `TableCellInterface
  | `Invalid_value of int
  ]
type qAccessible'TextBoundaryType = [`CharBoundary
  | `WordBoundary
  | `SentenceBoundary
  | `ParagraphBoundary
  | `LineBoundary
  | `NoBoundary
  | `Invalid_value of int
  ]
type qImageIOHandler'ImageOption = [`Size
  | `ClipRect
  | `Description
  | `ScaledClipRect
  | `ScaledSize
  | `CompressionRatio
  | `Gamma
  | `Quality
  | `Name
  | `SubType
  | `IncrementalReading
  | `Endianness
  | `Animation
  | `BackgroundColor
  | `ImageFormat
  | `SupportedSubTypes
  | `OptimizedWrite
  | `ProgressiveScanWrite
  | `ImageTransformation
  | `TransformedByDefault
  | `Invalid_value of int
  ]
type qImageIOHandler'Transformation = [`TransformationNone
  | `TransformationMirror
  | `TransformationFlip
  | `TransformationRotate180
  | `TransformationRotate90
  | `TransformationMirrorAndRotate90
  | `TransformationFlipAndRotate90
  | `TransformationRotate270
  | `Invalid_value of int
  ]
type qRegion'RegionType = [`Rectangle
  | `Ellipse
  | `Invalid_value of int
  ]
type qFontDatabase'WritingSystem = [`Any
  | `Latin
  | `Greek
  | `Cyrillic
  | `Armenian
  | `Hebrew
  | `Arabic
  | `Syriac
  | `Thaana
  | `Devanagari
  | `Bengali
  | `Gurmukhi
  | `Gujarati
  | `Oriya
  | `Tamil
  | `Telugu
  | `Kannada
  | `Malayalam
  | `Sinhala
  | `Thai
  | `Lao
  | `Tibetan
  | `Myanmar
  | `Georgian
  | `Khmer
  | `SimplifiedChinese
  | `TraditionalChinese
  | `Japanese
  | `Korean
  | `Vietnamese
  | `Symbol
  | `Ogham
  | `Runic
  | `Nko
  | `WritingSystemsCount
  | `Invalid_value of int
  ]
type qFontDatabase'SystemFont = [`GeneralFont
  | `FixedFont
  | `TitleFont
  | `SmallestReadableFont
  | `Invalid_value of int
  ]
type qIconEngine'IconEngineHook = [`AvailableSizesHook
  | `IconNameHook
  | `IsNullHook
  | `ScaledPixmapHook
  | `Invalid_value of int
  ]
type qImageWriter'ImageWriterError = [`UnknownError
  | `DeviceError
  | `UnsupportedFormatError
  | `Invalid_value of int
  ]
type qPageLayout'Unit = [`Millimeter
  | `Point
  | `Inch
  | `Pica
  | `Didot
  | `Cicero
  | `Invalid_value of int
  ]
type qPageLayout'Orientation = [`Portrait
  | `Landscape
  | `Invalid_value of int
  ]
type qPageLayout'Mode = [`StandardMode
  | `FullPageMode
  | `Invalid_value of int
  ]
type qStandardItem'ItemType = [`Type
  | `UserType
  | `Invalid_value of int
  ]
type qOpenGLBuffer'Type = [`VertexBuffer
  | `IndexBuffer
  | `PixelPackBuffer
  | `PixelUnpackBuffer
  | `Invalid_value of int
  ]
type qOpenGLBuffer'UsagePattern = [`StreamDraw
  | `StreamRead
  | `StreamCopy
  | `StaticDraw
  | `StaticRead
  | `StaticCopy
  | `DynamicDraw
  | `DynamicRead
  | `DynamicCopy
  | `Invalid_value of int
  ]
type qOpenGLBuffer'Access = [`ReadOnly
  | `WriteOnly
  | `ReadWrite
  | `Invalid_value of int
  ]
type qOpenGLBuffer'RangeAccessFlag = [`RangeRead
  | `RangeWrite
  | `RangeInvalidate
  | `RangeInvalidateBuffer
  | `RangeFlushExplicit
  | `RangeUnsynchronized
  | `Invalid_value of int
  ]
type qGlyphRun'GlyphRunFlag = [`Overline
  | `Underline
  | `StrikeOut
  | `RightToLeft
  | `SplitLigature
  | `Invalid_value of int
  ]
type qTransform'TransformationType = [`TxNone
  | `TxTranslate
  | `TxScale
  | `TxRotate
  | `TxShear
  | `TxProject
  | `Invalid_value of int
  ]
type qFont'StyleHint = [`SansSerif
  | `Serif
  | `TypeWriter
  | `Decorative
  | `System
  | `AnyStyle
  | `Cursive
  | `Monospace
  | `Fantasy
  | `Invalid_value of int
  ]
type qFont'StyleStrategy = [`PreferDefault
  | `PreferBitmap
  | `PreferDevice
  | `PreferOutline
  | `ForceOutline
  | `PreferMatch
  | `PreferQuality
  | `PreferAntialias
  | `NoAntialias
  | `OpenGLCompatible
  | `ForceIntegerMetrics
  | `NoSubpixelAntialias
  | `NoFontMerging
  | `Invalid_value of int
  ]
type qFont'HintingPreference = [`PreferDefaultHinting
  | `PreferNoHinting
  | `PreferVerticalHinting
  | `PreferFullHinting
  | `Invalid_value of int
  ]
type qFont'Weight = [`Thin
  | `ExtraLight
  | `Light
  | `Normal
  | `Medium
  | `DemiBold
  | `Bold
  | `ExtraBold
  | `Black
  | `Invalid_value of int
  ]
type qFont'Style = [`StyleNormal
  | `StyleItalic
  | `StyleOblique
  | `Invalid_value of int
  ]
type qFont'Stretch = [`AnyStretch
  | `UltraCondensed
  | `ExtraCondensed
  | `Condensed
  | `SemiCondensed
  | `Unstretched
  | `SemiExpanded
  | `Expanded
  | `ExtraExpanded
  | `UltraExpanded
  | `Invalid_value of int
  ]
type qFont'Capitalization = [`MixedCase
  | `AllUppercase
  | `AllLowercase
  | `SmallCaps
  | `Capitalize
  | `Invalid_value of int
  ]
type qFont'SpacingType = [`PercentageSpacing
  | `AbsoluteSpacing
  | `Invalid_value of int
  ]
type qKeySequence'StandardKey = [`UnknownKey
  | `HelpContents
  | `WhatsThis
  | `Open
  | `Close
  | `Save
  | `New
  | `Delete
  | `Cut
  | `Copy
  | `Paste
  | `Undo
  | `Redo
  | `Back
  | `Forward
  | `Refresh
  | `ZoomIn
  | `ZoomOut
  | `Print
  | `AddTab
  | `NextChild
  | `PreviousChild
  | `Find
  | `FindNext
  | `FindPrevious
  | `Replace
  | `SelectAll
  | `Bold
  | `Italic
  | `Underline
  | `MoveToNextChar
  | `MoveToPreviousChar
  | `MoveToNextWord
  | `MoveToPreviousWord
  | `MoveToNextLine
  | `MoveToPreviousLine
  | `MoveToNextPage
  | `MoveToPreviousPage
  | `MoveToStartOfLine
  | `MoveToEndOfLine
  | `MoveToStartOfBlock
  | `MoveToEndOfBlock
  | `MoveToStartOfDocument
  | `MoveToEndOfDocument
  | `SelectNextChar
  | `SelectPreviousChar
  | `SelectNextWord
  | `SelectPreviousWord
  | `SelectNextLine
  | `SelectPreviousLine
  | `SelectNextPage
  | `SelectPreviousPage
  | `SelectStartOfLine
  | `SelectEndOfLine
  | `SelectStartOfBlock
  | `SelectEndOfBlock
  | `SelectStartOfDocument
  | `SelectEndOfDocument
  | `DeleteStartOfWord
  | `DeleteEndOfWord
  | `DeleteEndOfLine
  | `InsertParagraphSeparator
  | `InsertLineSeparator
  | `SaveAs
  | `Preferences
  | `Quit
  | `FullScreen
  | `Deselect
  | `DeleteCompleteLine
  | `Backspace
  | `Cancel
  | `Invalid_value of int
  ]
type qKeySequence'SequenceFormat = [`NativeText
  | `PortableText
  | `Invalid_value of int
  ]
type qKeySequence'SequenceMatch = [`NoMatch
  | `PartialMatch
  | `ExactMatch
  | `Invalid_value of int
  ]
type qSurface'SurfaceClass = [`Window
  | `Offscreen
  | `Invalid_value of int
  ]
type qSurface'SurfaceType = [`RasterSurface
  | `OpenGLSurface
  | `RasterGLSurface
  | `OpenVGSurface
  | `Invalid_value of int
  ]
type qWindow'Visibility = [`Hidden
  | `AutomaticVisibility
  | `Windowed
  | `Minimized
  | `Maximized
  | `FullScreen
  | `Invalid_value of int
  ]
type qWindow'AncestorMode = [`ExcludeTransients
  | `IncludeTransients
  | `Invalid_value of int
  ]
type qTextCharFormat'VerticalAlignment = [`AlignNormal
  | `AlignSuperScript
  | `AlignSubScript
  | `AlignMiddle
  | `AlignTop
  | `AlignBottom
  | `AlignBaseline
  | `Invalid_value of int
  ]
type qTextCharFormat'UnderlineStyle = [`NoUnderline
  | `SingleUnderline
  | `DashUnderline
  | `DotLine
  | `DashDotLine
  | `DashDotDotLine
  | `WaveUnderline
  | `SpellCheckUnderline
  | `Invalid_value of int
  ]
type qTextCharFormat'FontPropertiesInheritanceBehavior = [`FontPropertiesSpecifiedOnly
  | `FontPropertiesAll
  | `Invalid_value of int
  ]
type qTextBlockFormat'LineHeightTypes = [`SingleHeight
  | `ProportionalHeight
  | `FixedHeight
  | `MinimumHeight
  | `LineDistanceHeight
  | `Invalid_value of int
  ]
type qTextListFormat'Style = [`ListDisc
  | `ListCircle
  | `ListSquare
  | `ListDecimal
  | `ListLowerAlpha
  | `ListUpperAlpha
  | `ListLowerRoman
  | `ListUpperRoman
  | `ListStyleUndefined
  | `Invalid_value of int
  ]
type qTextFrameFormat'Position = [`InFlow
  | `FloatLeft
  | `FloatRight
  | `Invalid_value of int
  ]
type qTextFrameFormat'BorderStyle = [`BorderStyle_None
  | `BorderStyle_Dotted
  | `BorderStyle_Dashed
  | `BorderStyle_Solid
  | `BorderStyle_Double
  | `BorderStyle_DotDash
  | `BorderStyle_DotDotDash
  | `BorderStyle_Groove
  | `BorderStyle_Ridge
  | `BorderStyle_Inset
  | `BorderStyle_Outset
  | `Invalid_value of int
  ]
type qImage'InvertMode = [`InvertRgb
  | `InvertRgba
  | `Invalid_value of int
  ]
type qImage'Format = [`Format_Invalid
  | `Format_Mono
  | `Format_MonoLSB
  | `Format_Indexed8
  | `Format_RGB32
  | `Format_ARGB32
  | `Format_ARGB32_Premultiplied
  | `Format_RGB16
  | `Format_ARGB8565_Premultiplied
  | `Format_RGB666
  | `Format_ARGB6666_Premultiplied
  | `Format_RGB555
  | `Format_ARGB8555_Premultiplied
  | `Format_RGB888
  | `Format_RGB444
  | `Format_ARGB4444_Premultiplied
  | `Format_RGBX8888
  | `Format_RGBA8888
  | `Format_RGBA8888_Premultiplied
  | `Format_BGR30
  | `Format_A2BGR30_Premultiplied
  | `Format_RGB30
  | `Format_A2RGB30_Premultiplied
  | `Format_Alpha8
  | `Format_Grayscale8
  | `Invalid_value of int
  ]
type qPagedPaintDevice'PageSize = [`A4
  | `B5
  | `Letter
  | `Legal
  | `Executive
  | `A0
  | `A1
  | `A2
  | `A3
  | `A5
  | `A6
  | `A7
  | `A8
  | `A9
  | `B0
  | `B1
  | `B10
  | `B2
  | `B3
  | `B4
  | `B6
  | `B7
  | `B8
  | `B9
  | `C5E
  | `Comm10E
  | `DLE
  | `Folio
  | `Ledger
  | `Tabloid
  | `Custom
  | `A10
  | `A3Extra
  | `A4Extra
  | `A4Plus
  | `A4Small
  | `A5Extra
  | `B5Extra
  | `JisB0
  | `JisB1
  | `JisB2
  | `JisB3
  | `JisB4
  | `JisB5
  | `JisB6
  | `JisB7
  | `JisB8
  | `JisB9
  | `JisB10
  | `AnsiC
  | `AnsiD
  | `AnsiE
  | `LegalExtra
  | `LetterExtra
  | `LetterPlus
  | `LetterSmall
  | `TabloidExtra
  | `ArchA
  | `ArchB
  | `ArchC
  | `ArchD
  | `ArchE
  | `Imperial7x9
  | `Imperial8x10
  | `Imperial9x11
  | `Imperial9x12
  | `Imperial10x11
  | `Imperial10x13
  | `Imperial10x14
  | `Imperial12x11
  | `Imperial15x11
  | `ExecutiveStandard
  | `Note
  | `Quarto
  | `Statement
  | `SuperA
  | `SuperB
  | `Postcard
  | `DoublePostcard
  | `Prc16K
  | `Prc32K
  | `Prc32KBig
  | `FanFoldUS
  | `FanFoldGerman
  | `FanFoldGermanLegal
  | `EnvelopeB4
  | `EnvelopeB5
  | `EnvelopeB6
  | `EnvelopeC0
  | `EnvelopeC1
  | `EnvelopeC2
  | `EnvelopeC3
  | `EnvelopeC4
  | `EnvelopeC6
  | `EnvelopeC65
  | `EnvelopeC7
  | `Envelope9
  | `Envelope11
  | `Envelope12
  | `Envelope14
  | `EnvelopeMonarch
  | `EnvelopePersonal
  | `EnvelopeChou3
  | `EnvelopeChou4
  | `EnvelopeInvite
  | `EnvelopeItalian
  | `EnvelopeKaku2
  | `EnvelopeKaku3
  | `EnvelopePrc1
  | `EnvelopePrc2
  | `EnvelopePrc3
  | `EnvelopePrc4
  | `EnvelopePrc5
  | `EnvelopePrc6
  | `EnvelopePrc7
  | `EnvelopePrc8
  | `EnvelopePrc9
  | `EnvelopePrc10
  | `EnvelopeYou4
  | `Invalid_value of int
  ]
type qAccessibleTableModelChangeEvent'ModelChangeType = [`ModelReset
  | `DataChanged
  | `RowsInserted
  | `ColumnsInserted
  | `RowsRemoved
  | `ColumnsRemoved
  | `Invalid_value of int
  ]
type qPlatformSurfaceEvent'SurfaceEventType = [`SurfaceCreated
  | `SurfaceAboutToBeDestroyed
  | `Invalid_value of int
  ]
type qInputMethodEvent'AttributeType = [`TextFormat
  | `Cursor
  | `Language
  | `Ruby
  | `Selection
  | `Invalid_value of int
  ]
type qScrollEvent'ScrollState = [`ScrollStarted
  | `ScrollUpdated
  | `ScrollFinished
  | `Invalid_value of int
  ]
type qImageIOPlugin'Capability = [`CanRead
  | `CanWrite
  | `CanReadIncremental
  | `Invalid_value of int
  ]
type qMovie'MovieState = [`NotRunning
  | `Paused
  | `Running
  | `Invalid_value of int
  ]
type qMovie'CacheMode = [`CacheNone
  | `CacheAll
  | `Invalid_value of int
  ]
type qClipboard'Mode = [`Clipboard
  | `Selection
  | `FindBuffer
  | `Invalid_value of int
  ]
type qInputMethod'Action = [`Click
  | `ContextMenu
  | `Invalid_value of int
  ]
type qOpenGLContext'OpenGLModuleType = [`LibGL
  | `LibGLES
  | `Invalid_value of int
  ]
type qSessionManager'RestartHint = [`RestartIfRunning
  | `RestartAnyway
  | `RestartImmediately
  | `RestartNever
  | `Invalid_value of int
  ]
type qOpenGLDebugLogger'LoggingMode = [`AsynchronousLogging
  | `SynchronousLogging
  | `Invalid_value of int
  ]
type qOpenGLShader'ShaderTypeBit = [`Vertex
  | `Fragment
  | `Geometry
  | `TessellationControl
  | `TessellationEvaluation
  | `Compute
  | `Invalid_value of int
  ]
type qTextDocument'MetaInformation = [`DocumentTitle
  | `DocumentUrl
  | `Invalid_value of int
  ]
type qTextDocument'FindFlag = [`FindBackward
  | `FindCaseSensitively
  | `FindWholeWords
  | `Invalid_value of int
  ]
type qTextDocument'ResourceType = [`HtmlResource
  | `ImageResource
  | `StyleSheetResource
  | `UserResource
  | `Invalid_value of int
  ]
type qTextDocument'Stacks = [`UndoStack
  | `RedoStack
  | `UndoAndRedoStacks
  | `Invalid_value of int
  ]
type qValidator'State = [`Invalid
  | `Intermediate
  | `Acceptable
  | `Invalid_value of int
  ]
type qDoubleValidator'Notation = [`StandardNotation
  | `ScientificNotation
  | `Invalid_value of int
  ]
type qTabletEvent'TabletDevice = [`NoDevice
  | `Puck
  | `Stylus
  | `Airbrush
  | `FourDMouse
  | `XFreeEraser
  | `RotationStylus
  | `Invalid_value of int
  ]
type qTabletEvent'PointerType = [`UnknownPointer
  | `Pen
  | `Cursor
  | `Eraser
  | `Invalid_value of int
  ]
type qContextMenuEvent'Reason = [`Mouse
  | `Keyboard
  | `Other
  | `Invalid_value of int
  ]
type qOpenGLWindow'UpdateBehavior = [`NoPartialUpdate
  | `PartialUpdateBlit
  | `PartialUpdateBlend
  | `Invalid_value of int
  ]
type qTreeWidgetItem'ItemType = [`Type
  | `UserType
  | `Invalid_value of int
  ]
type qTreeWidgetItem'ChildIndicatorPolicy = [`ShowIndicator
  | `DontShowIndicator
  | `DontShowIndicatorWhenChildless
  | `Invalid_value of int
  ]
type qFileIconProvider'IconType = [`Computer
  | `Desktop
  | `Trashcan
  | `Network
  | `Drive
  | `Folder
  | `File
  | `Invalid_value of int
  ]
type qFileIconProvider'Option = [`DontUseCustomDirectoryIcons
  | `Invalid_value of int
  ]
type qGestureRecognizer'ResultFlag = [`Ignore
  | `MayBeGesture
  | `TriggerGesture
  | `FinishGesture
  | `CancelGesture
  | `ResultState_Mask
  | `ConsumeEventHint
  | `ResultHint_Mask
  | `Invalid_value of int
  ]
type qTreeWidgetItemIterator'IteratorFlag = [`All
  | `Hidden
  | `NotHidden
  | `Selected
  | `Unselected
  | `Selectable
  | `NotSelectable
  | `DragEnabled
  | `DragDisabled
  | `DropEnabled
  | `DropDisabled
  | `HasChildren
  | `NoChildren
  | `Checked
  | `NotChecked
  | `Enabled
  | `Disabled
  | `Editable
  | `NotEditable
  | `UserFlag
  | `Invalid_value of int
  ]
type qScrollerProperties'OvershootPolicy = [`OvershootWhenScrollable
  | `OvershootAlwaysOff
  | `OvershootAlwaysOn
  | `Invalid_value of int
  ]
type qScrollerProperties'FrameRates = [`Standard
  | `Fps60
  | `Fps30
  | `Fps20
  | `Invalid_value of int
  ]
type qScrollerProperties'ScrollMetric = [`MousePressEventDelay
  | `DragStartDistance
  | `DragVelocitySmoothingFactor
  | `AxisLockThreshold
  | `ScrollingCurve
  | `DecelerationFactor
  | `MinimumVelocity
  | `MaximumVelocity
  | `MaximumClickThroughVelocity
  | `AcceleratingFlickMaximumTime
  | `AcceleratingFlickSpeedupFactor
  | `SnapPositionRatio
  | `SnapTime
  | `OvershootDragResistanceFactor
  | `OvershootDragDistanceFactor
  | `OvershootScrollDistanceFactor
  | `OvershootScrollTime
  | `HorizontalOvershootPolicy
  | `VerticalOvershootPolicy
  | `FrameRate
  | `ScrollMetricCount
  | `Invalid_value of int
  ]
type qTableWidgetItem'ItemType = [`Type
  | `UserType
  | `Invalid_value of int
  ]
type qGraphicsItem'GraphicsItemFlag = [`ItemIsMovable
  | `ItemIsSelectable
  | `ItemIsFocusable
  | `ItemClipsToShape
  | `ItemClipsChildrenToShape
  | `ItemIgnoresTransformations
  | `ItemIgnoresParentOpacity
  | `ItemDoesntPropagateOpacityToChildren
  | `ItemStacksBehindParent
  | `ItemUsesExtendedStyleOption
  | `ItemHasNoContents
  | `ItemSendsGeometryChanges
  | `ItemAcceptsInputMethod
  | `ItemNegativeZStacksBehindParent
  | `ItemIsPanel
  | `ItemIsFocusScope
  | `ItemSendsScenePositionChanges
  | `ItemStopsClickFocusPropagation
  | `ItemStopsFocusHandling
  | `ItemContainsChildrenInShape
  | `Invalid_value of int
  ]
type qGraphicsItem'GraphicsItemChange = [`ItemPositionChange
  | `ItemMatrixChange
  | `ItemVisibleChange
  | `ItemEnabledChange
  | `ItemSelectedChange
  | `ItemParentChange
  | `ItemChildAddedChange
  | `ItemChildRemovedChange
  | `ItemTransformChange
  | `ItemPositionHasChanged
  | `ItemTransformHasChanged
  | `ItemSceneChange
  | `ItemVisibleHasChanged
  | `ItemEnabledHasChanged
  | `ItemSelectedHasChanged
  | `ItemParentHasChanged
  | `ItemSceneHasChanged
  | `ItemCursorChange
  | `ItemCursorHasChanged
  | `ItemToolTipChange
  | `ItemToolTipHasChanged
  | `ItemFlagsChange
  | `ItemFlagsHaveChanged
  | `ItemZValueChange
  | `ItemZValueHasChanged
  | `ItemOpacityChange
  | `ItemOpacityHasChanged
  | `ItemScenePositionHasChanged
  | `ItemRotationChange
  | `ItemRotationHasChanged
  | `ItemScaleChange
  | `ItemScaleHasChanged
  | `ItemTransformOriginPointChange
  | `ItemTransformOriginPointHasChanged
  | `Invalid_value of int
  ]
type qGraphicsItem'CacheMode = [`NoCache
  | `ItemCoordinateCache
  | `DeviceCoordinateCache
  | `Invalid_value of int
  ]
type qGraphicsItem'PanelModality = [`NonModal
  | `PanelModal
  | `SceneModal
  | `Invalid_value of int
  ]
type qListWidgetItem'ItemType = [`Type
  | `UserType
  | `Invalid_value of int
  ]
type qColormap'Mode = [`Direct
  | `Indexed
  | `Gray
  | `Invalid_value of int
  ]
type qStyleHintReturn'HintReturnType = [`SH_Default
  | `SH_Mask
  | `SH_Variant
  | `Invalid_value of int
  ]
type qStyleHintReturn'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleHintReturn'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOption'OptionType = [`SO_Default
  | `SO_FocusRect
  | `SO_Button
  | `SO_Tab
  | `SO_MenuItem
  | `SO_Frame
  | `SO_ProgressBar
  | `SO_ToolBox
  | `SO_Header
  | `SO_DockWidget
  | `SO_ViewItem
  | `SO_TabWidgetFrame
  | `SO_TabBarBase
  | `SO_RubberBand
  | `SO_ToolBar
  | `SO_GraphicsItem
  | `SO_Complex
  | `SO_Slider
  | `SO_SpinBox
  | `SO_ToolButton
  | `SO_ComboBox
  | `SO_TitleBar
  | `SO_GroupBox
  | `SO_SizeGrip
  | `SO_CustomBase
  | `SO_ComplexCustomBase
  | `Invalid_value of int
  ]
type qStyleOption'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOption'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qSizePolicy'PolicyFlag = [`GrowFlag
  | `ExpandFlag
  | `ShrinkFlag
  | `IgnoreFlag
  | `Invalid_value of int
  ]
type qSizePolicy'Policy = [`Fixed
  | `Minimum
  | `Maximum
  | `Preferred
  | `MinimumExpanding
  | `Expanding
  | `Ignored
  | `Invalid_value of int
  ]
type qSizePolicy'ControlType = [`DefaultType
  | `ButtonBox
  | `CheckBox
  | `ComboBox
  | `Frame
  | `GroupBox
  | `Label
  | `Line
  | `LineEdit
  | `PushButton
  | `RadioButton
  | `Slider
  | `SpinBox
  | `TabWidget
  | `ToolButton
  | `Invalid_value of int
  ]
type qApplication'ColorSpec = [`NormalColor
  | `CustomColor
  | `ManyColor
  | `Invalid_value of int
  ]
type qFileSystemModel'Roles = [`FileIconRole
  | `FilePathRole
  | `FileNameRole
  | `FilePermissions
  | `Invalid_value of int
  ]
type qDirModel'Roles = [`FileIconRole
  | `FilePathRole
  | `FileNameRole
  | `Invalid_value of int
  ]
type qStyleOptionFocusRect'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionFocusRect'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionFrame'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionFrame'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionFrame'FrameFeature = [`None
  | `Flat
  | `Rounded
  | `Invalid_value of int
  ]
type qStyleOptionTabWidgetFrame'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionTabWidgetFrame'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionTabBarBase'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionTabBarBase'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionHeader'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionHeader'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionHeader'SectionPosition = [`Beginning
  | `Middle
  | `End
  | `OnlyOneSection
  | `Invalid_value of int
  ]
type qStyleOptionHeader'SelectedPosition = [`NotAdjacent
  | `NextIsSelected
  | `PreviousIsSelected
  | `NextAndPreviousAreSelected
  | `Invalid_value of int
  ]
type qStyleOptionHeader'SortIndicator = [`None
  | `SortUp
  | `SortDown
  | `Invalid_value of int
  ]
type qStyleOptionButton'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionButton'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionButton'ButtonFeature = [`None
  | `Flat
  | `HasMenu
  | `DefaultButton
  | `AutoDefaultButton
  | `CommandLinkButton
  | `Invalid_value of int
  ]
type qStyleOptionTab'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionTab'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionTab'TabPosition = [`Beginning
  | `Middle
  | `End
  | `OnlyOneTab
  | `Invalid_value of int
  ]
type qStyleOptionTab'SelectedPosition = [`NotAdjacent
  | `NextIsSelected
  | `PreviousIsSelected
  | `Invalid_value of int
  ]
type qStyleOptionTab'CornerWidget = [`NoCornerWidgets
  | `LeftCornerWidget
  | `RightCornerWidget
  | `Invalid_value of int
  ]
type qStyleOptionTab'TabFeature = [`None
  | `HasFrame
  | `Invalid_value of int
  ]
type qStyleOptionToolBar'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionToolBar'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionToolBar'ToolBarPosition = [`Beginning
  | `Middle
  | `End
  | `OnlyOne
  | `Invalid_value of int
  ]
type qStyleOptionToolBar'ToolBarFeature = [`None
  | `Movable
  | `Invalid_value of int
  ]
type qStyleOptionProgressBar'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionProgressBar'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionMenuItem'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionMenuItem'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionMenuItem'MenuItemType = [`Normal
  | `DefaultItem
  | `Separator
  | `SubMenu
  | `Scroller
  | `TearOff
  | `Margin
  | `EmptyArea
  | `Invalid_value of int
  ]
type qStyleOptionMenuItem'CheckType = [`NotCheckable
  | `Exclusive
  | `NonExclusive
  | `Invalid_value of int
  ]
type qStyleOptionDockWidget'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionDockWidget'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionViewItem'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionViewItem'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionViewItem'Position = [`Left
  | `Right
  | `Top
  | `Bottom
  | `Invalid_value of int
  ]
type qStyleOptionViewItem'ViewItemFeature = [`None
  | `WrapText
  | `Alternate
  | `HasCheckIndicator
  | `HasDisplay
  | `HasDecoration
  | `Invalid_value of int
  ]
type qStyleOptionViewItem'ViewItemPosition = [`Invalid
  | `Beginning
  | `Middle
  | `End
  | `OnlyOne
  | `Invalid_value of int
  ]
type qStyleOptionToolBox'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionToolBox'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionToolBox'TabPosition = [`Beginning
  | `Middle
  | `End
  | `OnlyOneTab
  | `Invalid_value of int
  ]
type qStyleOptionToolBox'SelectedPosition = [`NotAdjacent
  | `NextIsSelected
  | `PreviousIsSelected
  | `Invalid_value of int
  ]
type qStyleOptionRubberBand'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionRubberBand'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionComplex'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionComplex'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionGraphicsItem'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionGraphicsItem'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qLayout'SizeConstraint = [`SetDefaultConstraint
  | `SetNoConstraint
  | `SetMinimumSize
  | `SetFixedSize
  | `SetMaximumSize
  | `SetMinAndMaxSize
  | `Invalid_value of int
  ]
type qStyleHintReturnMask'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleHintReturnMask'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleHintReturnVariant'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleHintReturnVariant'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qWidget'RenderFlag = [`DrawWindowBackground
  | `DrawChildren
  | `IgnoreMask
  | `Invalid_value of int
  ]
type qGraphicsPixmapItem'ShapeMode = [`MaskShape
  | `BoundingRectShape
  | `HeuristicMaskShape
  | `Invalid_value of int
  ]
type qGraphicsEffect'ChangeFlag = [`SourceAttached
  | `SourceDetached
  | `SourceBoundingRectChanged
  | `SourceInvalidated
  | `Invalid_value of int
  ]
type qGraphicsEffect'PixmapPadMode = [`NoPad
  | `PadToTransparentBorder
  | `PadToEffectiveBoundingRect
  | `Invalid_value of int
  ]
type qGraphicsScene'ItemIndexMethod = [`BspTreeIndex
  | `NoIndex
  | `Invalid_value of int
  ]
type qGraphicsScene'SceneLayer = [`ItemLayer
  | `BackgroundLayer
  | `ForegroundLayer
  | `AllLayers
  | `Invalid_value of int
  ]
type qAbstractItemDelegate'EndEditHint = [`NoHint
  | `EditNextItem
  | `EditPreviousItem
  | `SubmitModelCache
  | `RevertModelCache
  | `Invalid_value of int
  ]
type qDataWidgetMapper'SubmitPolicy = [`AutoSubmit
  | `ManualSubmit
  | `Invalid_value of int
  ]
type qAction'MenuRole = [`NoRole
  | `TextHeuristicRole
  | `ApplicationSpecificRole
  | `AboutQtRole
  | `AboutRole
  | `PreferencesRole
  | `QuitRole
  | `Invalid_value of int
  ]
type qAction'Priority = [`LowPriority
  | `NormalPriority
  | `HighPriority
  | `Invalid_value of int
  ]
type qAction'ActionEvent = [`Trigger
  | `Hover
  | `Invalid_value of int
  ]
type qGesture'GestureCancelPolicy = [`CancelNone
  | `CancelAllInContext
  | `Invalid_value of int
  ]
type qStyle'StateFlag = [`State_None
  | `State_Enabled
  | `State_Raised
  | `State_Sunken
  | `State_Off
  | `State_NoChange
  | `State_On
  | `State_DownArrow
  | `State_Horizontal
  | `State_HasFocus
  | `State_Top
  | `State_Bottom
  | `State_FocusAtBorder
  | `State_AutoRaise
  | `State_MouseOver
  | `State_UpArrow
  | `State_Selected
  | `State_Active
  | `State_Window
  | `State_Open
  | `State_Children
  | `State_Item
  | `State_Sibling
  | `State_Editing
  | `State_KeyboardFocusChange
  | `State_ReadOnly
  | `State_Small
  | `State_Mini
  | `Invalid_value of int
  ]
type qStyle'PrimitiveElement = [`PE_Frame
  | `PE_FrameDefaultButton
  | `PE_FrameDockWidget
  | `PE_FrameFocusRect
  | `PE_FrameGroupBox
  | `PE_FrameLineEdit
  | `PE_FrameMenu
  | `PE_FrameStatusBar
  | `PE_FrameTabWidget
  | `PE_FrameWindow
  | `PE_FrameButtonBevel
  | `PE_FrameButtonTool
  | `PE_FrameTabBarBase
  | `PE_PanelButtonCommand
  | `PE_PanelButtonBevel
  | `PE_PanelButtonTool
  | `PE_PanelMenuBar
  | `PE_PanelToolBar
  | `PE_PanelLineEdit
  | `PE_IndicatorArrowDown
  | `PE_IndicatorArrowLeft
  | `PE_IndicatorArrowRight
  | `PE_IndicatorArrowUp
  | `PE_IndicatorBranch
  | `PE_IndicatorButtonDropDown
  | `PE_IndicatorViewItemCheck
  | `PE_IndicatorCheckBox
  | `PE_IndicatorDockWidgetResizeHandle
  | `PE_IndicatorHeaderArrow
  | `PE_IndicatorMenuCheckMark
  | `PE_IndicatorProgressChunk
  | `PE_IndicatorRadioButton
  | `PE_IndicatorSpinDown
  | `PE_IndicatorSpinMinus
  | `PE_IndicatorSpinPlus
  | `PE_IndicatorSpinUp
  | `PE_IndicatorToolBarHandle
  | `PE_IndicatorToolBarSeparator
  | `PE_PanelTipLabel
  | `PE_IndicatorTabTear
  | `PE_PanelScrollAreaCorner
  | `PE_Widget
  | `PE_IndicatorColumnViewArrow
  | `PE_IndicatorItemViewItemDrop
  | `PE_PanelItemViewItem
  | `PE_PanelItemViewRow
  | `PE_PanelStatusBar
  | `PE_IndicatorTabClose
  | `PE_PanelMenu
  | `PE_IndicatorTabTearRight
  | `PE_CustomBase
  | `Invalid_value of int
  ]
type qStyle'ControlElement = [`CE_PushButton
  | `CE_PushButtonBevel
  | `CE_PushButtonLabel
  | `CE_CheckBox
  | `CE_CheckBoxLabel
  | `CE_RadioButton
  | `CE_RadioButtonLabel
  | `CE_TabBarTab
  | `CE_TabBarTabShape
  | `CE_TabBarTabLabel
  | `CE_ProgressBar
  | `CE_ProgressBarGroove
  | `CE_ProgressBarContents
  | `CE_ProgressBarLabel
  | `CE_MenuItem
  | `CE_MenuScroller
  | `CE_MenuVMargin
  | `CE_MenuHMargin
  | `CE_MenuTearoff
  | `CE_MenuEmptyArea
  | `CE_MenuBarItem
  | `CE_MenuBarEmptyArea
  | `CE_ToolButtonLabel
  | `CE_Header
  | `CE_HeaderSection
  | `CE_HeaderLabel
  | `CE_ToolBoxTab
  | `CE_SizeGrip
  | `CE_Splitter
  | `CE_RubberBand
  | `CE_DockWidgetTitle
  | `CE_ScrollBarAddLine
  | `CE_ScrollBarSubLine
  | `CE_ScrollBarAddPage
  | `CE_ScrollBarSubPage
  | `CE_ScrollBarSlider
  | `CE_ScrollBarFirst
  | `CE_ScrollBarLast
  | `CE_FocusFrame
  | `CE_ComboBoxLabel
  | `CE_ToolBar
  | `CE_ToolBoxTabShape
  | `CE_ToolBoxTabLabel
  | `CE_HeaderEmptyArea
  | `CE_ColumnViewGrip
  | `CE_ItemViewItem
  | `CE_ShapedFrame
  | `CE_CustomBase
  | `Invalid_value of int
  ]
type qStyle'SubElement = [`SE_PushButtonContents
  | `SE_PushButtonFocusRect
  | `SE_CheckBoxIndicator
  | `SE_CheckBoxContents
  | `SE_CheckBoxFocusRect
  | `SE_CheckBoxClickRect
  | `SE_RadioButtonIndicator
  | `SE_RadioButtonContents
  | `SE_RadioButtonFocusRect
  | `SE_RadioButtonClickRect
  | `SE_ComboBoxFocusRect
  | `SE_SliderFocusRect
  | `SE_ProgressBarGroove
  | `SE_ProgressBarContents
  | `SE_ProgressBarLabel
  | `SE_ToolBoxTabContents
  | `SE_HeaderLabel
  | `SE_HeaderArrow
  | `SE_TabWidgetTabBar
  | `SE_TabWidgetTabPane
  | `SE_TabWidgetTabContents
  | `SE_TabWidgetLeftCorner
  | `SE_TabWidgetRightCorner
  | `SE_ItemViewItemCheckIndicator
  | `SE_TabBarTearIndicator
  | `SE_TreeViewDisclosureItem
  | `SE_LineEditContents
  | `SE_FrameContents
  | `SE_DockWidgetCloseButton
  | `SE_DockWidgetFloatButton
  | `SE_DockWidgetTitleBarText
  | `SE_DockWidgetIcon
  | `SE_CheckBoxLayoutItem
  | `SE_ComboBoxLayoutItem
  | `SE_DateTimeEditLayoutItem
  | `SE_DialogButtonBoxLayoutItem
  | `SE_LabelLayoutItem
  | `SE_ProgressBarLayoutItem
  | `SE_PushButtonLayoutItem
  | `SE_RadioButtonLayoutItem
  | `SE_SliderLayoutItem
  | `SE_SpinBoxLayoutItem
  | `SE_ToolButtonLayoutItem
  | `SE_FrameLayoutItem
  | `SE_GroupBoxLayoutItem
  | `SE_TabWidgetLayoutItem
  | `SE_ItemViewItemDecoration
  | `SE_ItemViewItemText
  | `SE_ItemViewItemFocusRect
  | `SE_TabBarTabLeftButton
  | `SE_TabBarTabRightButton
  | `SE_TabBarTabText
  | `SE_ShapedFrameContents
  | `SE_ToolBarHandle
  | `SE_TabBarScrollLeftButton
  | `SE_TabBarScrollRightButton
  | `SE_TabBarTearIndicatorRight
  | `SE_CustomBase
  | `Invalid_value of int
  ]
type qStyle'ComplexControl = [`CC_SpinBox
  | `CC_ComboBox
  | `CC_ScrollBar
  | `CC_Slider
  | `CC_ToolButton
  | `CC_TitleBar
  | `CC_Dial
  | `CC_GroupBox
  | `CC_MdiControls
  | `CC_CustomBase
  | `Invalid_value of int
  ]
type qStyle'PixelMetric = [`PM_ButtonMargin
  | `PM_ButtonDefaultIndicator
  | `PM_MenuButtonIndicator
  | `PM_ButtonShiftHorizontal
  | `PM_ButtonShiftVertical
  | `PM_DefaultFrameWidth
  | `PM_SpinBoxFrameWidth
  | `PM_ComboBoxFrameWidth
  | `PM_MaximumDragDistance
  | `PM_ScrollBarExtent
  | `PM_ScrollBarSliderMin
  | `PM_SliderThickness
  | `PM_SliderControlThickness
  | `PM_SliderLength
  | `PM_SliderTickmarkOffset
  | `PM_SliderSpaceAvailable
  | `PM_DockWidgetSeparatorExtent
  | `PM_DockWidgetHandleExtent
  | `PM_DockWidgetFrameWidth
  | `PM_TabBarTabOverlap
  | `PM_TabBarTabHSpace
  | `PM_TabBarTabVSpace
  | `PM_TabBarBaseHeight
  | `PM_TabBarBaseOverlap
  | `PM_ProgressBarChunkWidth
  | `PM_SplitterWidth
  | `PM_TitleBarHeight
  | `PM_MenuScrollerHeight
  | `PM_MenuHMargin
  | `PM_MenuVMargin
  | `PM_MenuPanelWidth
  | `PM_MenuTearoffHeight
  | `PM_MenuDesktopFrameWidth
  | `PM_MenuBarPanelWidth
  | `PM_MenuBarItemSpacing
  | `PM_MenuBarVMargin
  | `PM_MenuBarHMargin
  | `PM_IndicatorWidth
  | `PM_IndicatorHeight
  | `PM_ExclusiveIndicatorWidth
  | `PM_ExclusiveIndicatorHeight
  | `PM_DialogButtonsSeparator
  | `PM_DialogButtonsButtonWidth
  | `PM_DialogButtonsButtonHeight
  | `PM_MdiSubWindowFrameWidth
  | `PM_MdiSubWindowMinimizedWidth
  | `PM_HeaderMargin
  | `PM_HeaderMarkSize
  | `PM_HeaderGripMargin
  | `PM_TabBarTabShiftHorizontal
  | `PM_TabBarTabShiftVertical
  | `PM_TabBarScrollButtonWidth
  | `PM_ToolBarFrameWidth
  | `PM_ToolBarHandleExtent
  | `PM_ToolBarItemSpacing
  | `PM_ToolBarItemMargin
  | `PM_ToolBarSeparatorExtent
  | `PM_ToolBarExtensionExtent
  | `PM_SpinBoxSliderHeight
  | `PM_DefaultTopLevelMargin
  | `PM_DefaultChildMargin
  | `PM_DefaultLayoutSpacing
  | `PM_ToolBarIconSize
  | `PM_ListViewIconSize
  | `PM_IconViewIconSize
  | `PM_SmallIconSize
  | `PM_LargeIconSize
  | `PM_FocusFrameVMargin
  | `PM_FocusFrameHMargin
  | `PM_ToolTipLabelFrameWidth
  | `PM_CheckBoxLabelSpacing
  | `PM_TabBarIconSize
  | `PM_SizeGripSize
  | `PM_DockWidgetTitleMargin
  | `PM_MessageBoxIconSize
  | `PM_ButtonIconSize
  | `PM_DockWidgetTitleBarButtonMargin
  | `PM_RadioButtonLabelSpacing
  | `PM_LayoutLeftMargin
  | `PM_LayoutTopMargin
  | `PM_LayoutRightMargin
  | `PM_LayoutBottomMargin
  | `PM_LayoutHorizontalSpacing
  | `PM_LayoutVerticalSpacing
  | `PM_TabBar_ScrollButtonOverlap
  | `PM_TextCursorWidth
  | `PM_TabCloseIndicatorWidth
  | `PM_TabCloseIndicatorHeight
  | `PM_ScrollView_ScrollBarSpacing
  | `PM_ScrollView_ScrollBarOverlap
  | `PM_SubMenuOverlap
  | `PM_TreeViewIndentation
  | `PM_HeaderDefaultSectionSizeHorizontal
  | `PM_HeaderDefaultSectionSizeVertical
  | `PM_TitleBarButtonIconSize
  | `PM_TitleBarButtonSize
  | `PM_CustomBase
  | `Invalid_value of int
  ]
type qStyle'ContentsType = [`CT_PushButton
  | `CT_CheckBox
  | `CT_RadioButton
  | `CT_ToolButton
  | `CT_ComboBox
  | `CT_Splitter
  | `CT_ProgressBar
  | `CT_MenuItem
  | `CT_MenuBarItem
  | `CT_MenuBar
  | `CT_Menu
  | `CT_TabBarTab
  | `CT_Slider
  | `CT_ScrollBar
  | `CT_LineEdit
  | `CT_SpinBox
  | `CT_SizeGrip
  | `CT_TabWidget
  | `CT_DialogButtons
  | `CT_HeaderSection
  | `CT_GroupBox
  | `CT_MdiControls
  | `CT_ItemViewItem
  | `CT_CustomBase
  | `Invalid_value of int
  ]
type qStyle'RequestSoftwareInputPanel = [`RSIP_OnMouseClickAndAlreadyFocused
  | `RSIP_OnMouseClick
  | `Invalid_value of int
  ]
type qStyle'StyleHint = [`SH_EtchDisabledText
  | `SH_DitherDisabledText
  | `SH_ScrollBar_MiddleClickAbsolutePosition
  | `SH_ScrollBar_ScrollWhenPointerLeavesControl
  | `SH_TabBar_SelectMouseType
  | `SH_TabBar_Alignment
  | `SH_Header_ArrowAlignment
  | `SH_Slider_SnapToValue
  | `SH_Slider_SloppyKeyEvents
  | `SH_ProgressDialog_CenterCancelButton
  | `SH_ProgressDialog_TextLabelAlignment
  | `SH_PrintDialog_RightAlignButtons
  | `SH_MainWindow_SpaceBelowMenuBar
  | `SH_FontDialog_SelectAssociatedText
  | `SH_Menu_AllowActiveAndDisabled
  | `SH_Menu_SpaceActivatesItem
  | `SH_Menu_SubMenuPopupDelay
  | `SH_ScrollView_FrameOnlyAroundContents
  | `SH_MenuBar_AltKeyNavigation
  | `SH_ComboBox_ListMouseTracking
  | `SH_Menu_MouseTracking
  | `SH_MenuBar_MouseTracking
  | `SH_ItemView_ChangeHighlightOnFocus
  | `SH_Widget_ShareActivation
  | `SH_Workspace_FillSpaceOnMaximize
  | `SH_ComboBox_Popup
  | `SH_TitleBar_NoBorder
  | `SH_Slider_StopMouseOverSlider
  | `SH_BlinkCursorWhenTextSelected
  | `SH_RichText_FullWidthSelection
  | `SH_Menu_Scrollable
  | `SH_GroupBox_TextLabelVerticalAlignment
  | `SH_GroupBox_TextLabelColor
  | `SH_Menu_SloppySubMenus
  | `SH_Table_GridLineColor
  | `SH_LineEdit_PasswordCharacter
  | `SH_DialogButtons_DefaultButton
  | `SH_ToolBox_SelectedPageTitleBold
  | `SH_TabBar_PreferNoArrows
  | `SH_ScrollBar_LeftClickAbsolutePosition
  | `SH_ListViewExpand_SelectMouseType
  | `SH_UnderlineShortcut
  | `SH_SpinBox_AnimateButton
  | `SH_SpinBox_KeyPressAutoRepeatRate
  | `SH_SpinBox_ClickAutoRepeatRate
  | `SH_Menu_FillScreenWithScroll
  | `SH_ToolTipLabel_Opacity
  | `SH_DrawMenuBarSeparator
  | `SH_TitleBar_ModifyNotification
  | `SH_Button_FocusPolicy
  | `SH_MessageBox_UseBorderForButtonSpacing
  | `SH_TitleBar_AutoRaise
  | `SH_ToolButton_PopupDelay
  | `SH_FocusFrame_Mask
  | `SH_RubberBand_Mask
  | `SH_WindowFrame_Mask
  | `SH_SpinControls_DisableOnBounds
  | `SH_Dial_BackgroundRole
  | `SH_ComboBox_LayoutDirection
  | `SH_ItemView_EllipsisLocation
  | `SH_ItemView_ShowDecorationSelected
  | `SH_ItemView_ActivateItemOnSingleClick
  | `SH_ScrollBar_ContextMenu
  | `SH_ScrollBar_RollBetweenButtons
  | `SH_Slider_AbsoluteSetButtons
  | `SH_Slider_PageSetButtons
  | `SH_Menu_KeyboardSearch
  | `SH_TabBar_ElideMode
  | `SH_DialogButtonLayout
  | `SH_ComboBox_PopupFrameStyle
  | `SH_MessageBox_TextInteractionFlags
  | `SH_DialogButtonBox_ButtonsHaveIcons
  | `SH_SpellCheckUnderlineStyle
  | `SH_MessageBox_CenterButtons
  | `SH_Menu_SelectionWrap
  | `SH_ItemView_MovementWithoutUpdatingSelection
  | `SH_ToolTip_Mask
  | `SH_FocusFrame_AboveWidget
  | `SH_TextControl_FocusIndicatorTextCharFormat
  | `SH_WizardStyle
  | `SH_ItemView_ArrowKeysNavigateIntoChildren
  | `SH_Menu_Mask
  | `SH_Menu_FlashTriggeredItem
  | `SH_Menu_FadeOutOnHide
  | `SH_SpinBox_ClickAutoRepeatThreshold
  | `SH_ItemView_PaintAlternatingRowColorsForEmptyArea
  | `SH_FormLayoutWrapPolicy
  | `SH_TabWidget_DefaultTabPosition
  | `SH_ToolBar_Movable
  | `SH_FormLayoutFieldGrowthPolicy
  | `SH_FormLayoutFormAlignment
  | `SH_FormLayoutLabelAlignment
  | `SH_ItemView_DrawDelegateFrame
  | `SH_TabBar_CloseButtonPosition
  | `SH_DockWidget_ButtonsHaveFrame
  | `SH_ToolButtonStyle
  | `SH_RequestSoftwareInputPanel
  | `SH_ScrollBar_Transient
  | `SH_Menu_SupportsSections
  | `SH_ToolTip_WakeUpDelay
  | `SH_ToolTip_FallAsleepDelay
  | `SH_Widget_Animate
  | `SH_Splitter_OpaqueResize
  | `SH_ComboBox_UseNativePopup
  | `SH_LineEdit_PasswordMaskDelay
  | `SH_TabBar_ChangeCurrentDelay
  | `SH_Menu_SubMenuUniDirection
  | `SH_Menu_SubMenuUniDirectionFailCount
  | `SH_Menu_SubMenuSloppySelectOtherActions
  | `SH_Menu_SubMenuSloppyCloseTimeout
  | `SH_Menu_SubMenuResetWhenReenteringParent
  | `SH_Menu_SubMenuDontStartSloppyOnLeave
  | `SH_ItemView_ScrollMode
  | `SH_CustomBase
  | `Invalid_value of int
  ]
type qStyle'StandardPixmap = [`SP_TitleBarMenuButton
  | `SP_TitleBarMinButton
  | `SP_TitleBarMaxButton
  | `SP_TitleBarCloseButton
  | `SP_TitleBarNormalButton
  | `SP_TitleBarShadeButton
  | `SP_TitleBarUnshadeButton
  | `SP_TitleBarContextHelpButton
  | `SP_DockWidgetCloseButton
  | `SP_MessageBoxInformation
  | `SP_MessageBoxWarning
  | `SP_MessageBoxCritical
  | `SP_MessageBoxQuestion
  | `SP_DesktopIcon
  | `SP_TrashIcon
  | `SP_ComputerIcon
  | `SP_DriveFDIcon
  | `SP_DriveHDIcon
  | `SP_DriveCDIcon
  | `SP_DriveDVDIcon
  | `SP_DriveNetIcon
  | `SP_DirOpenIcon
  | `SP_DirClosedIcon
  | `SP_DirLinkIcon
  | `SP_DirLinkOpenIcon
  | `SP_FileIcon
  | `SP_FileLinkIcon
  | `SP_ToolBarHorizontalExtensionButton
  | `SP_ToolBarVerticalExtensionButton
  | `SP_FileDialogStart
  | `SP_FileDialogEnd
  | `SP_FileDialogToParent
  | `SP_FileDialogNewFolder
  | `SP_FileDialogDetailedView
  | `SP_FileDialogInfoView
  | `SP_FileDialogContentsView
  | `SP_FileDialogListView
  | `SP_FileDialogBack
  | `SP_DirIcon
  | `SP_DialogOkButton
  | `SP_DialogCancelButton
  | `SP_DialogHelpButton
  | `SP_DialogOpenButton
  | `SP_DialogSaveButton
  | `SP_DialogCloseButton
  | `SP_DialogApplyButton
  | `SP_DialogResetButton
  | `SP_DialogDiscardButton
  | `SP_DialogYesButton
  | `SP_DialogNoButton
  | `SP_ArrowUp
  | `SP_ArrowDown
  | `SP_ArrowLeft
  | `SP_ArrowRight
  | `SP_ArrowBack
  | `SP_ArrowForward
  | `SP_DirHomeIcon
  | `SP_CommandLink
  | `SP_VistaShield
  | `SP_BrowserReload
  | `SP_BrowserStop
  | `SP_MediaPlay
  | `SP_MediaStop
  | `SP_MediaPause
  | `SP_MediaSkipForward
  | `SP_MediaSkipBackward
  | `SP_MediaSeekForward
  | `SP_MediaSeekBackward
  | `SP_MediaVolume
  | `SP_MediaVolumeMuted
  | `SP_LineEditClearButton
  | `SP_CustomBase
  | `Invalid_value of int
  ]
type qCompleter'CompletionMode = [`PopupCompletion
  | `UnfilteredPopupCompletion
  | `InlineCompletion
  | `Invalid_value of int
  ]
type qCompleter'ModelSorting = [`UnsortedModel
  | `CaseSensitivelySortedModel
  | `CaseInsensitivelySortedModel
  | `Invalid_value of int
  ]
type qScroller'State = [`Inactive
  | `Pressed
  | `Dragging
  | `Scrolling
  | `Invalid_value of int
  ]
type qScroller'ScrollerGestureType = [`TouchGesture
  | `LeftMouseButtonGesture
  | `RightMouseButtonGesture
  | `MiddleMouseButtonGesture
  | `Invalid_value of int
  ]
type qScroller'Input = [`InputPress
  | `InputMove
  | `InputRelease
  | `Invalid_value of int
  ]
type qSystemTrayIcon'ActivationReason = [`Unknown
  | `Context
  | `DoubleClick
  | `Trigger
  | `MiddleClick
  | `Invalid_value of int
  ]
type qSystemTrayIcon'MessageIcon = [`NoIcon
  | `Information
  | `Warning
  | `Critical
  | `Invalid_value of int
  ]
type qPinchGesture'ChangeFlag = [`ScaleFactorChanged
  | `RotationAngleChanged
  | `CenterPointChanged
  | `Invalid_value of int
  ]
type qSwipeGesture'SwipeDirection = [`NoDirection
  | `Left
  | `Right
  | `Up
  | `Down
  | `Invalid_value of int
  ]
type qGraphicsBlurEffect'BlurHint = [`PerformanceHint
  | `QualityHint
  | `AnimationHint
  | `Invalid_value of int
  ]
type qGraphicsSceneContextMenuEvent'Reason = [`Mouse
  | `Keyboard
  | `Other
  | `Invalid_value of int
  ]
type qDialog'DialogCode = [`Rejected
  | `Accepted
  | `Invalid_value of int
  ]
type qOpenGLWidget'UpdateBehavior = [`NoPartialUpdate
  | `PartialUpdate
  | `Invalid_value of int
  ]
type qAbstractSlider'SliderAction = [`SliderNoAction
  | `SliderSingleStepAdd
  | `SliderSingleStepSub
  | `SliderPageStepAdd
  | `SliderPageStepSub
  | `SliderToMinimum
  | `SliderToMaximum
  | `SliderMove
  | `Invalid_value of int
  ]
type qAbstractSpinBox'StepEnabledFlag = [`StepNone
  | `StepUpEnabled
  | `StepDownEnabled
  | `Invalid_value of int
  ]
type qAbstractSpinBox'ButtonSymbols = [`UpDownArrows
  | `PlusMinus
  | `NoButtons
  | `Invalid_value of int
  ]
type qAbstractSpinBox'CorrectionMode = [`CorrectToPreviousValue
  | `CorrectToNearestValue
  | `Invalid_value of int
  ]
type qCalendarWidget'HorizontalHeaderFormat = [`NoHorizontalHeader
  | `SingleLetterDayNames
  | `ShortDayNames
  | `LongDayNames
  | `Invalid_value of int
  ]
type qCalendarWidget'VerticalHeaderFormat = [`NoVerticalHeader
  | `ISOWeekNumbers
  | `Invalid_value of int
  ]
type qCalendarWidget'SelectionMode = [`NoSelection
  | `SingleSelection
  | `Invalid_value of int
  ]
type qComboBox'InsertPolicy = [`NoInsert
  | `InsertAtTop
  | `InsertAtCurrent
  | `InsertAtBottom
  | `InsertAfterCurrent
  | `InsertBeforeCurrent
  | `InsertAlphabetically
  | `Invalid_value of int
  ]
type qComboBox'SizeAdjustPolicy = [`AdjustToContents
  | `AdjustToContentsOnFirstShow
  | `AdjustToMinimumContentsLength
  | `AdjustToMinimumContentsLengthWithIcon
  | `Invalid_value of int
  ]
type qDialogButtonBox'ButtonRole = [`InvalidRole
  | `AcceptRole
  | `RejectRole
  | `DestructiveRole
  | `ActionRole
  | `HelpRole
  | `YesRole
  | `NoRole
  | `ResetRole
  | `ApplyRole
  | `NRoles
  | `Invalid_value of int
  ]
type qDialogButtonBox'StandardButton = [`NoButton
  | `Ok
  | `Save
  | `SaveAll
  | `Open
  | `Yes
  | `YesToAll
  | `No
  | `NoToAll
  | `Abort
  | `Retry
  | `Ignore
  | `Close
  | `Cancel
  | `Discard
  | `Help
  | `Apply
  | `Reset
  | `RestoreDefaults
  | `Invalid_value of int
  ]
type qDialogButtonBox'ButtonLayout = [`WinLayout
  | `MacLayout
  | `KdeLayout
  | `GnomeLayout
  | `Invalid_value of int
  ]
type qDockWidget'DockWidgetFeature = [`DockWidgetClosable
  | `DockWidgetMovable
  | `DockWidgetFloatable
  | `DockWidgetVerticalTitleBar
  | `DockWidgetFeatureMask
  | `AllDockWidgetFeatures
  | `NoDockWidgetFeatures
  | `Reserved
  | `Invalid_value of int
  ]
type qFrame'Shape = [`NoFrame
  | `Box
  | `Panel
  | `WinPanel
  | `HLine
  | `VLine
  | `StyledPanel
  | `Invalid_value of int
  ]
type qFrame'Shadow = [`Plain
  | `Raised
  | `Sunken
  | `Invalid_value of int
  ]
type qFrame'StyleMask = [`Shadow_Mask
  | `Shape_Mask
  | `Invalid_value of int
  ]
type qLineEdit'ActionPosition = [`LeadingPosition
  | `TrailingPosition
  | `Invalid_value of int
  ]
type qLineEdit'EchoMode = [`Normal
  | `NoEcho
  | `Password
  | `PasswordEchoOnEdit
  | `Invalid_value of int
  ]
type qMainWindow'DockOption = [`AnimatedDocks
  | `AllowNestedDocks
  | `AllowTabbedDocks
  | `ForceTabbedDocks
  | `VerticalTabs
  | `GroupedDragging
  | `Invalid_value of int
  ]
type qMdiSubWindow'SubWindowOption = [`AllowOutsideAreaHorizontally
  | `AllowOutsideAreaVertically
  | `RubberBandResize
  | `RubberBandMove
  | `Invalid_value of int
  ]
type qProgressBar'Direction = [`TopToBottom
  | `BottomToTop
  | `Invalid_value of int
  ]
type qRubberBand'Shape = [`Line
  | `Rectangle
  | `Invalid_value of int
  ]
type qTabBar'Shape = [`RoundedNorth
  | `RoundedSouth
  | `RoundedWest
  | `RoundedEast
  | `TriangularNorth
  | `TriangularSouth
  | `TriangularWest
  | `TriangularEast
  | `Invalid_value of int
  ]
type qTabBar'ButtonPosition = [`LeftSide
  | `RightSide
  | `Invalid_value of int
  ]
type qTabBar'SelectionBehavior = [`SelectLeftTab
  | `SelectRightTab
  | `SelectPreviousTab
  | `Invalid_value of int
  ]
type qTabWidget'TabPosition = [`North
  | `South
  | `West
  | `East
  | `Invalid_value of int
  ]
type qTabWidget'TabShape = [`Rounded
  | `Triangular
  | `Invalid_value of int
  ]
type qBoxLayout'Direction = [`LeftToRight
  | `RightToLeft
  | `TopToBottom
  | `BottomToTop
  | `Invalid_value of int
  ]
type qFormLayout'FieldGrowthPolicy = [`FieldsStayAtSizeHint
  | `ExpandingFieldsGrow
  | `AllNonFixedFieldsGrow
  | `Invalid_value of int
  ]
type qFormLayout'RowWrapPolicy = [`DontWrapRows
  | `WrapLongRows
  | `WrapAllRows
  | `Invalid_value of int
  ]
type qFormLayout'ItemRole = [`LabelRole
  | `FieldRole
  | `SpanningRole
  | `Invalid_value of int
  ]
type qStackedLayout'StackingMode = [`StackOne
  | `StackAll
  | `Invalid_value of int
  ]
type qStyleOptionSlider'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionSlider'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionSpinBox'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionSpinBox'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionToolButton'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionToolButton'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionToolButton'ToolButtonFeature = [`None
  | `Arrow
  | `Menu
  | `PopupDelay
  | `HasMenu
  | `Invalid_value of int
  ]
type qStyleOptionComboBox'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionComboBox'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionTitleBar'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionTitleBar'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionGroupBox'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionGroupBox'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qStyleOptionSizeGrip'StyleOptionType = [`Type
  | `Invalid_value of int
  ]
type qStyleOptionSizeGrip'StyleOptionVersion = [`Version
  | `Invalid_value of int
  ]
type qAbstractScrollArea'SizeAdjustPolicy = [`AdjustIgnored
  | `AdjustToContentsOnFirstShow
  | `AdjustToContents
  | `Invalid_value of int
  ]
type qLCDNumber'Mode = [`Hex
  | `Dec
  | `Oct
  | `Bin
  | `Invalid_value of int
  ]
type qLCDNumber'SegmentStyle = [`Outline
  | `Filled
  | `Flat
  | `Invalid_value of int
  ]
type qFontComboBox'FontFilter = [`AllFonts
  | `ScalableFonts
  | `NonScalableFonts
  | `MonospacedFonts
  | `ProportionalFonts
  | `Invalid_value of int
  ]
type qDateTimeEdit'Section = [`NoSection
  | `AmPmSection
  | `MSecSection
  | `SecondSection
  | `MinuteSection
  | `HourSection
  | `DaySection
  | `MonthSection
  | `YearSection
  | `TimeSections_Mask
  | `DateSections_Mask
  | `Invalid_value of int
  ]
type qSlider'TickPosition = [`NoTicks
  | `TicksAbove
  | `TicksBelow
  | `TicksBothSides
  | `Invalid_value of int
  ]
type qToolButton'ToolButtonPopupMode = [`DelayedPopup
  | `MenuButtonPopup
  | `InstantPopup
  | `Invalid_value of int
  ]
type qColorDialog'ColorDialogOption = [`ShowAlphaChannel
  | `NoButtons
  | `DontUseNativeDialog
  | `Invalid_value of int
  ]
type qFileDialog'ViewMode = [`Detail
  | `List
  | `Invalid_value of int
  ]
type qFileDialog'FileMode = [`AnyFile
  | `ExistingFile
  | `Directory
  | `ExistingFiles
  | `DirectoryOnly
  | `Invalid_value of int
  ]
type qFileDialog'AcceptMode = [`AcceptOpen
  | `AcceptSave
  | `Invalid_value of int
  ]
type qFileDialog'DialogLabel = [`LookIn
  | `FileName
  | `FileType
  | `Accept
  | `Reject
  | `Invalid_value of int
  ]
type qFileDialog'Option = [`ShowDirsOnly
  | `DontResolveSymlinks
  | `DontConfirmOverwrite
  | `DontUseSheet
  | `DontUseNativeDialog
  | `ReadOnly
  | `HideNameFilterDetails
  | `DontUseCustomDirectoryIcons
  | `Invalid_value of int
  ]
type qFontDialog'FontDialogOption = [`NoButtons
  | `DontUseNativeDialog
  | `ScalableFonts
  | `NonScalableFonts
  | `MonospacedFonts
  | `ProportionalFonts
  | `Invalid_value of int
  ]
type qInputDialog'InputDialogOption = [`NoButtons
  | `UseListViewForComboBoxItems
  | `UsePlainTextEditForTextInput
  | `Invalid_value of int
  ]
type qInputDialog'InputMode = [`TextInput
  | `IntInput
  | `DoubleInput
  | `Invalid_value of int
  ]
type qMessageBox'Icon = [`NoIcon
  | `Information
  | `Warning
  | `Critical
  | `Question
  | `Invalid_value of int
  ]
type qMessageBox'ButtonRole = [`InvalidRole
  | `AcceptRole
  | `RejectRole
  | `DestructiveRole
  | `ActionRole
  | `HelpRole
  | `YesRole
  | `NoRole
  | `ResetRole
  | `ApplyRole
  | `NRoles
  | `Invalid_value of int
  ]
type qMessageBox'StandardButton = [`NoButton
  | `Ok
  | `Save
  | `SaveAll
  | `Open
  | `Yes
  | `YesToAll
  | `No
  | `NoToAll
  | `Abort
  | `Retry
  | `Ignore
  | `Close
  | `Cancel
  | `Discard
  | `Help
  | `Apply
  | `Reset
  | `RestoreDefaults
  | `Default
  | `Escape
  | `FlagMask
  | `ButtonMask
  | `Invalid_value of int
  ]
type qWizard'WizardButton = [`BackButton
  | `NextButton
  | `CommitButton
  | `FinishButton
  | `CancelButton
  | `HelpButton
  | `CustomButton1
  | `CustomButton2
  | `CustomButton3
  | `Stretch
  | `NoButton
  | `Invalid_value of int
  ]
type qWizard'WizardPixmap = [`WatermarkPixmap
  | `LogoPixmap
  | `BannerPixmap
  | `BackgroundPixmap
  | `NPixmaps
  | `Invalid_value of int
  ]
type qWizard'WizardStyle = [`ClassicStyle
  | `ModernStyle
  | `MacStyle
  | `AeroStyle
  | `NStyles
  | `Invalid_value of int
  ]
type qWizard'WizardOption = [`IndependentPages
  | `IgnoreSubTitles
  | `ExtendedWatermarkPixmap
  | `NoDefaultButton
  | `NoBackButtonOnStartPage
  | `NoBackButtonOnLastPage
  | `DisabledBackButtonOnLastPage
  | `HaveNextButtonOnLastPage
  | `HaveFinishButtonOnEarlyPages
  | `NoCancelButton
  | `CancelButtonOnLeft
  | `HaveHelpButton
  | `HelpButtonOnRight
  | `HaveCustomButton1
  | `HaveCustomButton2
  | `HaveCustomButton3
  | `NoCancelButtonOnLastPage
  | `Invalid_value of int
  ]
type qGraphicsView'ViewportAnchor = [`NoAnchor
  | `AnchorViewCenter
  | `AnchorUnderMouse
  | `Invalid_value of int
  ]
type qGraphicsView'CacheModeFlag = [`CacheNone
  | `CacheBackground
  | `Invalid_value of int
  ]
type qGraphicsView'DragMode = [`NoDrag
  | `ScrollHandDrag
  | `RubberBandDrag
  | `Invalid_value of int
  ]
type qGraphicsView'ViewportUpdateMode = [`FullViewportUpdate
  | `MinimalViewportUpdate
  | `SmartViewportUpdate
  | `NoViewportUpdate
  | `BoundingRectViewportUpdate
  | `Invalid_value of int
  ]
type qGraphicsView'OptimizationFlag = [`DontClipPainter
  | `DontSavePainterState
  | `DontAdjustForAntialiasing
  | `IndirectPainting
  | `Invalid_value of int
  ]
type qAbstractItemView'SelectionMode = [`NoSelection
  | `SingleSelection
  | `MultiSelection
  | `ExtendedSelection
  | `ContiguousSelection
  | `Invalid_value of int
  ]
type qAbstractItemView'SelectionBehavior = [`SelectItems
  | `SelectRows
  | `SelectColumns
  | `Invalid_value of int
  ]
type qAbstractItemView'ScrollHint = [`EnsureVisible
  | `PositionAtTop
  | `PositionAtBottom
  | `PositionAtCenter
  | `Invalid_value of int
  ]
type qAbstractItemView'EditTrigger = [`NoEditTriggers
  | `CurrentChanged
  | `DoubleClicked
  | `SelectedClicked
  | `EditKeyPressed
  | `AnyKeyPressed
  | `AllEditTriggers
  | `Invalid_value of int
  ]
type qAbstractItemView'ScrollMode = [`ScrollPerItem
  | `ScrollPerPixel
  | `Invalid_value of int
  ]
type qAbstractItemView'DragDropMode = [`NoDragDrop
  | `DragOnly
  | `DropOnly
  | `DragDrop
  | `InternalMove
  | `Invalid_value of int
  ]
type qMdiArea'AreaOption = [`DontMaximizeSubWindowOnActivation
  | `Invalid_value of int
  ]
type qMdiArea'WindowOrder = [`CreationOrder
  | `StackingOrder
  | `ActivationHistoryOrder
  | `Invalid_value of int
  ]
type qMdiArea'ViewMode = [`SubWindowView
  | `TabbedView
  | `Invalid_value of int
  ]
type qPlainTextEdit'LineWrapMode = [`NoWrap
  | `WidgetWidth
  | `Invalid_value of int
  ]
type qTextEdit'LineWrapMode = [`NoWrap
  | `WidgetWidth
  | `FixedPixelWidth
  | `FixedColumnWidth
  | `Invalid_value of int
  ]
type qTextEdit'AutoFormattingFlag = [`AutoNone
  | `AutoBulletList
  | `AutoAll
  | `Invalid_value of int
  ]
type qHeaderView'ResizeMode = [`Interactive
  | `Stretch
  | `Fixed
  | `ResizeToContents
  | `Invalid_value of int
  ]
type qListView'Movement = [`Static
  | `Free
  | `Snap
  | `Invalid_value of int
  ]
type qListView'Flow = [`LeftToRight
  | `TopToBottom
  | `Invalid_value of int
  ]
type qListView'ResizeMode = [`Fixed
  | `Adjust
  | `Invalid_value of int
  ]
type qListView'LayoutMode = [`SinglePass
  | `Batched
  | `Invalid_value of int
  ]
type qListView'ViewMode = [`ListMode
  | `IconMode
  | `Invalid_value of int
  ]
type qMetaType'TypeFlags = qMetaType'TypeFlag Qflags.t
let qMetaType'TypeFlags : qMetaType'TypeFlag Qflags.set = Qflags.define (function
  | `NeedsConstruction -> 0x0001L
  | `NeedsDestruction -> 0x0002L
  | `MovableType -> 0x0004L
  | `PointerToQObject -> 0x0008L
  | `IsEnumeration -> 0x0010L
  | `SharedPointerToQObject -> 0x0020L
  | `WeakPointerToQObject -> 0x0040L
  | `TrackingPointerToQObject -> 0x0080L
  | `WasDeclaredAsMetaType -> 0x0100L
  | `IsGadget -> 0x0200L
  | `Invalid_value x -> Int64.of_int x)
type qRegularExpression'PatternOptions = qRegularExpression'PatternOption Qflags.t
let qRegularExpression'PatternOptions : qRegularExpression'PatternOption Qflags.set = Qflags.define (function
  | `NoPatternOption -> 0x0000L
  | `CaseInsensitiveOption -> 0x0001L
  | `DotMatchesEverythingOption -> 0x0002L
  | `MultilineOption -> 0x0004L
  | `ExtendedPatternSyntaxOption -> 0x0008L
  | `InvertedGreedinessOption -> 0x0010L
  | `DontCaptureOption -> 0x0020L
  | `UseUnicodePropertiesOption -> 0x0040L
  | `OptimizeOnFirstUsageOption -> 0x0080L
  | `DontAutomaticallyOptimizeOption -> 0x0100L
  | `Invalid_value x -> Int64.of_int x)
type qRegularExpression'MatchOptions = qRegularExpression'MatchOption Qflags.t
let qRegularExpression'MatchOptions : qRegularExpression'MatchOption Qflags.set = Qflags.define (function
  | `NoMatchOption -> 0x0000L
  | `AnchoredMatchOption -> 0x0001L
  | `DontCheckSubjectStringMatchOption -> 0x0002L
  | `Invalid_value x -> Int64.of_int x)
type qDir'Filters = qDir'Filter Qflags.t
let qDir'Filters : qDir'Filter Qflags.set = Qflags.define (function
  | `Dirs -> 0x0001L
  | `Files -> 0x0002L
  | `Drives -> 0x0004L
  | `NoSymLinks -> 0x0008L
  | `AllEntries -> 0x0007L
  | `TypeMask -> 0x000fL
  | `Readable -> 0x0010L
  | `Writable -> 0x0020L
  | `Executable -> 0x0040L
  | `PermissionMask -> 0x0070L
  | `Modified -> 0x0080L
  | `Hidden -> 0x0100L
  | `System -> 0x0200L
  | `AccessMask -> 0x03f0L
  | `AllDirs -> 0x0400L
  | `CaseSensitive -> 0x0800L
  | `NoDot -> 0x2000L
  | `NoDotDot -> 0x4000L
  | `NoDotAndDotDot -> 0x6000L
  | `NoFilter -> 0xffffffffffffffffL
  | `Invalid_value x -> Int64.of_int x)
type qDir'SortFlags = qDir'SortFlag Qflags.t
let qDir'SortFlags : qDir'SortFlag Qflags.set = Qflags.define (function
  | `Name -> 0x0000L
  | `Time -> 0x0001L
  | `Size -> 0x0002L
  | `Unsorted -> 0x0003L
  | `DirsFirst -> 0x0004L
  | `Reversed -> 0x0008L
  | `IgnoreCase -> 0x0010L
  | `DirsLast -> 0x0020L
  | `LocaleAware -> 0x0040L
  | `Type -> 0x0080L
  | `NoSort -> 0xffffffffffffffffL
  | `Invalid_value x -> Int64.of_int x)
type qItemSelectionModel'SelectionFlags = qItemSelectionModel'SelectionFlag Qflags.t
let qItemSelectionModel'SelectionFlags : qItemSelectionModel'SelectionFlag Qflags.set = Qflags.define (function
  | `NoUpdate -> 0x0000L
  | `Clear -> 0x0001L
  | `Select -> 0x0002L
  | `Deselect -> 0x0004L
  | `Toggle -> 0x0008L
  | `Current -> 0x0010L
  | `Rows -> 0x0020L
  | `Columns -> 0x0040L
  | `SelectCurrent -> 0x0012L
  | `ToggleCurrent -> 0x0018L
  | `ClearAndSelect -> 0x0003L
  | `Invalid_value x -> Int64.of_int x)
type qLibrary'LoadHints = qLibrary'LoadHint Qflags.t
let qLibrary'LoadHints : qLibrary'LoadHint Qflags.set = Qflags.define (function
  | `ResolveAllSymbolsHint -> 0x0001L
  | `ExportExternalSymbolsHint -> 0x0002L
  | `LoadArchiveMemberHint -> 0x0004L
  | `PreventUnloadHint -> 0x0008L
  | `DeepBindHint -> 0x0010L
  | `Invalid_value x -> Int64.of_int x)
type qt'MouseButtons = qt'MouseButton Qflags.t
let qt'MouseButtons : qt'MouseButton Qflags.set = Qflags.define (function
  | `NoButton -> 0x0000L
  | `LeftButton -> 0x0001L
  | `RightButton -> 0x0002L
  | `MiddleButton -> 0x0004L
  | `BackButton -> 0x0008L
  | `ForwardButton -> 0x0010L
  | `TaskButton -> 0x0020L
  | `ExtraButton4 -> 0x0040L
  | `ExtraButton5 -> 0x0080L
  | `ExtraButton6 -> 0x0100L
  | `ExtraButton7 -> 0x0200L
  | `ExtraButton8 -> 0x0400L
  | `ExtraButton9 -> 0x0800L
  | `ExtraButton10 -> 0x1000L
  | `ExtraButton11 -> 0x2000L
  | `ExtraButton12 -> 0x4000L
  | `ExtraButton13 -> 0x8000L
  | `ExtraButton14 -> 0x10000L
  | `ExtraButton15 -> 0x20000L
  | `ExtraButton16 -> 0x40000L
  | `ExtraButton17 -> 0x80000L
  | `ExtraButton18 -> 0x100000L
  | `ExtraButton19 -> 0x200000L
  | `ExtraButton20 -> 0x400000L
  | `ExtraButton21 -> 0x800000L
  | `ExtraButton22 -> 0x1000000L
  | `ExtraButton23 -> 0x2000000L
  | `ExtraButton24 -> 0x4000000L
  | `AllButtons -> 0x7ffffffL
  | `MouseButtonMask -> 0xffffffffL
  | `Invalid_value x -> Int64.of_int x)
type qt'Orientations = qt'Orientation Qflags.t
let qt'Orientations : qt'Orientation Qflags.set = Qflags.define (function
  | `Horizontal -> 0x0001L
  | `Vertical -> 0x0002L
  | `Invalid_value x -> Int64.of_int x)
type qt'Alignment = qt'AlignmentFlag Qflags.t
let qt'Alignment : qt'AlignmentFlag Qflags.set = Qflags.define (function
  | `AlignLeft -> 0x0001L
  | `AlignRight -> 0x0002L
  | `AlignHCenter -> 0x0004L
  | `AlignJustify -> 0x0008L
  | `AlignAbsolute -> 0x0010L
  | `AlignHorizontal_Mask -> 0x001fL
  | `AlignTop -> 0x0020L
  | `AlignBottom -> 0x0040L
  | `AlignVCenter -> 0x0080L
  | `AlignBaseline -> 0x0100L
  | `AlignVertical_Mask -> 0x01e0L
  | `AlignCenter -> 0x0084L
  | `Invalid_value x -> Int64.of_int x)
type qt'WindowFlags = qt'WindowType Qflags.t
let qt'WindowFlags : qt'WindowType Qflags.set = Qflags.define (function
  | `Widget -> 0x0000L
  | `Window -> 0x0001L
  | `Dialog -> 0x0003L
  | `Sheet -> 0x0005L
  | `Drawer -> 0x0007L
  | `Popup -> 0x0009L
  | `Tool -> 0x000bL
  | `ToolTip -> 0x000dL
  | `SplashScreen -> 0x000fL
  | `Desktop -> 0x0011L
  | `SubWindow -> 0x0012L
  | `ForeignWindow -> 0x0021L
  | `CoverWindow -> 0x0041L
  | `WindowType_Mask -> 0x00ffL
  | `MSWindowsFixedSizeDialogHint -> 0x0100L
  | `MSWindowsOwnDC -> 0x0200L
  | `BypassWindowManagerHint -> 0x0400L
  | `FramelessWindowHint -> 0x0800L
  | `WindowTitleHint -> 0x1000L
  | `WindowSystemMenuHint -> 0x2000L
  | `WindowMinimizeButtonHint -> 0x4000L
  | `WindowMaximizeButtonHint -> 0x8000L
  | `WindowMinMaxButtonsHint -> 0xc000L
  | `WindowContextHelpButtonHint -> 0x10000L
  | `WindowShadeButtonHint -> 0x20000L
  | `WindowStaysOnTopHint -> 0x40000L
  | `WindowTransparentForInput -> 0x80000L
  | `WindowOverridesSystemGestures -> 0x100000L
  | `WindowDoesNotAcceptFocus -> 0x200000L
  | `MaximizeUsingFullscreenGeometryHint -> 0x400000L
  | `CustomizeWindowHint -> 0x2000000L
  | `WindowStaysOnBottomHint -> 0x4000000L
  | `WindowCloseButtonHint -> 0x8000000L
  | `MacWindowToolBarButtonHint -> 0x10000000L
  | `BypassGraphicsProxyWidget -> 0x20000000L
  | `NoDropShadowWindowHint -> 0x40000000L
  | `WindowFullscreenButtonHint -> 0x80000000L
  | `Invalid_value x -> Int64.of_int x)
type qt'WindowStates = qt'WindowState Qflags.t
let qt'WindowStates : qt'WindowState Qflags.set = Qflags.define (function
  | `WindowNoState -> 0x0000L
  | `WindowMinimized -> 0x0001L
  | `WindowMaximized -> 0x0002L
  | `WindowFullScreen -> 0x0004L
  | `WindowActive -> 0x0008L
  | `Invalid_value x -> Int64.of_int x)
type qt'DockWidgetAreas = qt'DockWidgetArea Qflags.t
let qt'DockWidgetAreas : qt'DockWidgetArea Qflags.set = Qflags.define (function
  | `LeftDockWidgetArea -> 0x0001L
  | `RightDockWidgetArea -> 0x0002L
  | `TopDockWidgetArea -> 0x0004L
  | `BottomDockWidgetArea -> 0x0008L
  | `DockWidgetArea_Mask -> 0x000fL
  | `NoDockWidgetArea -> 0x0000L
  | `Invalid_value x -> Int64.of_int x)
type qt'ToolBarAreas = qt'ToolBarArea Qflags.t
let qt'ToolBarAreas : qt'ToolBarArea Qflags.set = Qflags.define (function
  | `LeftToolBarArea -> 0x0001L
  | `RightToolBarArea -> 0x0002L
  | `TopToolBarArea -> 0x0004L
  | `BottomToolBarArea -> 0x0008L
  | `ToolBarArea_Mask -> 0x000fL
  | `NoToolBarArea -> 0x0000L
  | `Invalid_value x -> Int64.of_int x)
type qt'Edges = qt'Edge Qflags.t
let qt'Edges : qt'Edge Qflags.set = Qflags.define (function
  | `TopEdge -> 0x0001L
  | `LeftEdge -> 0x0002L
  | `RightEdge -> 0x0004L
  | `BottomEdge -> 0x0008L
  | `Invalid_value x -> Int64.of_int x)
type qt'InputMethodHints = qt'InputMethodHint Qflags.t
let qt'InputMethodHints : qt'InputMethodHint Qflags.set = Qflags.define (function
  | `ImhNone -> 0x0000L
  | `ImhHiddenText -> 0x0001L
  | `ImhSensitiveData -> 0x0002L
  | `ImhNoAutoUppercase -> 0x0004L
  | `ImhPreferNumbers -> 0x0008L
  | `ImhPreferUppercase -> 0x0010L
  | `ImhPreferLowercase -> 0x0020L
  | `ImhNoPredictiveText -> 0x0040L
  | `ImhDate -> 0x0080L
  | `ImhTime -> 0x0100L
  | `ImhPreferLatin -> 0x0200L
  | `ImhMultiLine -> 0x0400L
  | `ImhDigitsOnly -> 0x10000L
  | `ImhFormattedNumbersOnly -> 0x20000L
  | `ImhUppercaseOnly -> 0x40000L
  | `ImhLowercaseOnly -> 0x80000L
  | `ImhDialableCharactersOnly -> 0x100000L
  | `ImhEmailCharactersOnly -> 0x200000L
  | `ImhUrlCharactersOnly -> 0x400000L
  | `ImhLatinOnly -> 0x800000L
  | `ImhExclusiveInputMask -> 0xffff0000L
  | `Invalid_value x -> Int64.of_int x)
type qt'FindChildOptions = qt'FindChildOption Qflags.t
let qt'FindChildOptions : qt'FindChildOption Qflags.set = Qflags.define (function
  | `FindDirectChildrenOnly -> 0x0000L
  | `FindChildrenRecursively -> 0x0001L
  | `Invalid_value x -> Int64.of_int x)
type qt'DropActions = qt'DropAction Qflags.t
let qt'DropActions : qt'DropAction Qflags.set = Qflags.define (function
  | `CopyAction -> 0x0001L
  | `MoveAction -> 0x0002L
  | `LinkAction -> 0x0004L
  | `ActionMask -> 0x00ffL
  | `TargetMoveAction -> 0x8002L
  | `IgnoreAction -> 0x0000L
  | `Invalid_value x -> Int64.of_int x)
type qt'ItemFlags = qt'ItemFlag Qflags.t
let qt'ItemFlags : qt'ItemFlag Qflags.set = Qflags.define (function
  | `NoItemFlags -> 0x0000L
  | `ItemIsSelectable -> 0x0001L
  | `ItemIsEditable -> 0x0002L
  | `ItemIsDragEnabled -> 0x0004L
  | `ItemIsDropEnabled -> 0x0008L
  | `ItemIsUserCheckable -> 0x0010L
  | `ItemIsEnabled -> 0x0020L
  | `ItemIsAutoTristate -> 0x0040L
  | `ItemNeverHasChildren -> 0x0080L
  | `ItemIsUserTristate -> 0x0100L
  | `Invalid_value x -> Int64.of_int x)
type qt'MatchFlags = qt'MatchFlag Qflags.t
let qt'MatchFlags : qt'MatchFlag Qflags.set = Qflags.define (function
  | `MatchExactly -> 0x0000L
  | `MatchContains -> 0x0001L
  | `MatchStartsWith -> 0x0002L
  | `MatchEndsWith -> 0x0003L
  | `MatchRegExp -> 0x0004L
  | `MatchWildcard -> 0x0005L
  | `MatchFixedString -> 0x0008L
  | `MatchCaseSensitive -> 0x0010L
  | `MatchWrap -> 0x0020L
  | `MatchRecursive -> 0x0040L
  | `Invalid_value x -> Int64.of_int x)
type qt'TextInteractionFlags = qt'TextInteractionFlag Qflags.t
let qt'TextInteractionFlags : qt'TextInteractionFlag Qflags.set = Qflags.define (function
  | `NoTextInteraction -> 0x0000L
  | `TextSelectableByMouse -> 0x0001L
  | `TextSelectableByKeyboard -> 0x0002L
  | `LinksAccessibleByMouse -> 0x0004L
  | `LinksAccessibleByKeyboard -> 0x0008L
  | `TextEditable -> 0x0010L
  | `TextEditorInteraction -> 0x0013L
  | `TextBrowserInteraction -> 0x000dL
  | `Invalid_value x -> Int64.of_int x)
type qt'GestureFlags = qt'GestureFlag Qflags.t
let qt'GestureFlags : qt'GestureFlag Qflags.set = Qflags.define (function
  | `DontStartGestureOnChildren -> 0x0001L
  | `ReceivePartialGestures -> 0x0002L
  | `IgnoredGesturesPropagateToParent -> 0x0004L
  | `Invalid_value x -> Int64.of_int x)
type qTextOption'Flags = qTextOption'Flag Qflags.t
let qTextOption'Flags : qTextOption'Flag Qflags.set = Qflags.define (function
  | `ShowTabsAndSpaces -> 0x0001L
  | `ShowLineAndParagraphSeparators -> 0x0002L
  | `AddSpaceForLineAndParagraphSeparators -> 0x0004L
  | `SuppressColors -> 0x0008L
  | `ShowDocumentTerminator -> 0x0010L
  | `IncludeTrailingSpaces -> 0x80000000L
  | `Invalid_value x -> Int64.of_int x)
type qPainter'RenderHints = qPainter'RenderHint Qflags.t
let qPainter'RenderHints : qPainter'RenderHint Qflags.set = Qflags.define (function
  | `Antialiasing -> 0x0001L
  | `TextAntialiasing -> 0x0002L
  | `SmoothPixmapTransform -> 0x0004L
  | `HighQualityAntialiasing -> 0x0008L
  | `NonCosmeticDefaultPen -> 0x0010L
  | `Qt4CompatiblePainting -> 0x0020L
  | `Invalid_value x -> Int64.of_int x)
type qTextDocument'FindFlags = qTextDocument'FindFlag Qflags.t
let qTextDocument'FindFlags : qTextDocument'FindFlag Qflags.set = Qflags.define (function
  | `FindBackward -> 0x0001L
  | `FindCaseSensitively -> 0x0002L
  | `FindWholeWords -> 0x0004L
  | `Invalid_value x -> Int64.of_int x)
type qFileIconProvider'Options = qFileIconProvider'Option Qflags.t
let qFileIconProvider'Options : qFileIconProvider'Option Qflags.set = Qflags.define (function
  | `DontUseCustomDirectoryIcons -> 0x0001L
  | `Invalid_value x -> Int64.of_int x)
type qSizePolicy'ControlTypes = qSizePolicy'ControlType Qflags.t
let qSizePolicy'ControlTypes : qSizePolicy'ControlType Qflags.set = Qflags.define (function
  | `DefaultType -> 0x0001L
  | `ButtonBox -> 0x0002L
  | `CheckBox -> 0x0004L
  | `ComboBox -> 0x0008L
  | `Frame -> 0x0010L
  | `GroupBox -> 0x0020L
  | `Label -> 0x0040L
  | `Line -> 0x0080L
  | `LineEdit -> 0x0100L
  | `PushButton -> 0x0200L
  | `RadioButton -> 0x0400L
  | `Slider -> 0x0800L
  | `SpinBox -> 0x1000L
  | `TabWidget -> 0x2000L
  | `ToolButton -> 0x4000L
  | `Invalid_value x -> Int64.of_int x)
type qGraphicsScene'SceneLayers = qGraphicsScene'SceneLayer Qflags.t
let qGraphicsScene'SceneLayers : qGraphicsScene'SceneLayer Qflags.set = Qflags.define (function
  | `ItemLayer -> 0x0001L
  | `BackgroundLayer -> 0x0002L
  | `ForegroundLayer -> 0x0004L
  | `AllLayers -> 0xffffL
  | `Invalid_value x -> Int64.of_int x)
type qStyle'State = qStyle'StateFlag Qflags.t
let qStyle'State : qStyle'StateFlag Qflags.set = Qflags.define (function
  | `State_None -> 0x0000L
  | `State_Enabled -> 0x0001L
  | `State_Raised -> 0x0002L
  | `State_Sunken -> 0x0004L
  | `State_Off -> 0x0008L
  | `State_NoChange -> 0x0010L
  | `State_On -> 0x0020L
  | `State_DownArrow -> 0x0040L
  | `State_Horizontal -> 0x0080L
  | `State_HasFocus -> 0x0100L
  | `State_Top -> 0x0200L
  | `State_Bottom -> 0x0400L
  | `State_FocusAtBorder -> 0x0800L
  | `State_AutoRaise -> 0x1000L
  | `State_MouseOver -> 0x2000L
  | `State_UpArrow -> 0x4000L
  | `State_Selected -> 0x8000L
  | `State_Active -> 0x10000L
  | `State_Window -> 0x20000L
  | `State_Open -> 0x40000L
  | `State_Children -> 0x80000L
  | `State_Item -> 0x100000L
  | `State_Sibling -> 0x200000L
  | `State_Editing -> 0x400000L
  | `State_KeyboardFocusChange -> 0x800000L
  | `State_ReadOnly -> 0x2000000L
  | `State_Small -> 0x4000000L
  | `State_Mini -> 0x8000000L
  | `Invalid_value x -> Int64.of_int x)
type qGraphicsBlurEffect'BlurHints = qGraphicsBlurEffect'BlurHint Qflags.t
let qGraphicsBlurEffect'BlurHints : qGraphicsBlurEffect'BlurHint Qflags.set = Qflags.define (function
  | `PerformanceHint -> 0x0000L
  | `QualityHint -> 0x0001L
  | `AnimationHint -> 0x0002L
  | `Invalid_value x -> Int64.of_int x)
type qDialogButtonBox'StandardButtons = qDialogButtonBox'StandardButton Qflags.t
let qDialogButtonBox'StandardButtons : qDialogButtonBox'StandardButton Qflags.set = Qflags.define (function
  | `NoButton -> 0x0000L
  | `Ok -> 0x0400L
  | `Save -> 0x0800L
  | `SaveAll -> 0x1000L
  | `Open -> 0x2000L
  | `Yes -> 0x4000L
  | `YesToAll -> 0x8000L
  | `No -> 0x10000L
  | `NoToAll -> 0x20000L
  | `Abort -> 0x40000L
  | `Retry -> 0x80000L
  | `Ignore -> 0x100000L
  | `Close -> 0x200000L
  | `Cancel -> 0x400000L
  | `Discard -> 0x800000L
  | `Help -> 0x1000000L
  | `Apply -> 0x2000000L
  | `Reset -> 0x4000000L
  | `RestoreDefaults -> 0x8000000L
  | `Invalid_value x -> Int64.of_int x)
type qDockWidget'DockWidgetFeatures = qDockWidget'DockWidgetFeature Qflags.t
let qDockWidget'DockWidgetFeatures : qDockWidget'DockWidgetFeature Qflags.set = Qflags.define (function
  | `DockWidgetClosable -> 0x0001L
  | `DockWidgetMovable -> 0x0002L
  | `DockWidgetFloatable -> 0x0004L
  | `DockWidgetVerticalTitleBar -> 0x0008L
  | `DockWidgetFeatureMask -> 0x000fL
  | `AllDockWidgetFeatures -> 0x0007L
  | `NoDockWidgetFeatures -> 0x0000L
  | `Reserved -> 0x00ffL
  | `Invalid_value x -> Int64.of_int x)
type qMainWindow'DockOptions = qMainWindow'DockOption Qflags.t
let qMainWindow'DockOptions : qMainWindow'DockOption Qflags.set = Qflags.define (function
  | `AnimatedDocks -> 0x0001L
  | `AllowNestedDocks -> 0x0002L
  | `AllowTabbedDocks -> 0x0004L
  | `ForceTabbedDocks -> 0x0008L
  | `VerticalTabs -> 0x0010L
  | `GroupedDragging -> 0x0020L
  | `Invalid_value x -> Int64.of_int x)
type qFontComboBox'FontFilters = qFontComboBox'FontFilter Qflags.t
let qFontComboBox'FontFilters : qFontComboBox'FontFilter Qflags.set = Qflags.define (function
  | `AllFonts -> 0x0000L
  | `ScalableFonts -> 0x0001L
  | `NonScalableFonts -> 0x0002L
  | `MonospacedFonts -> 0x0004L
  | `ProportionalFonts -> 0x0008L
  | `Invalid_value x -> Int64.of_int x)
type qDateTimeEdit'Sections = qDateTimeEdit'Section Qflags.t
let qDateTimeEdit'Sections : qDateTimeEdit'Section Qflags.set = Qflags.define (function
  | `NoSection -> 0x0000L
  | `AmPmSection -> 0x0001L
  | `MSecSection -> 0x0002L
  | `SecondSection -> 0x0004L
  | `MinuteSection -> 0x0008L
  | `HourSection -> 0x0010L
  | `DaySection -> 0x0100L
  | `MonthSection -> 0x0200L
  | `YearSection -> 0x0400L
  | `TimeSections_Mask -> 0x001fL
  | `DateSections_Mask -> 0x0700L
  | `Invalid_value x -> Int64.of_int x)
type qColorDialog'ColorDialogOptions = qColorDialog'ColorDialogOption Qflags.t
let qColorDialog'ColorDialogOptions : qColorDialog'ColorDialogOption Qflags.set = Qflags.define (function
  | `ShowAlphaChannel -> 0x0001L
  | `NoButtons -> 0x0002L
  | `DontUseNativeDialog -> 0x0004L
  | `Invalid_value x -> Int64.of_int x)
type qFileDialog'Options = qFileDialog'Option Qflags.t
let qFileDialog'Options : qFileDialog'Option Qflags.set = Qflags.define (function
  | `ShowDirsOnly -> 0x0001L
  | `DontResolveSymlinks -> 0x0002L
  | `DontConfirmOverwrite -> 0x0004L
  | `DontUseSheet -> 0x0008L
  | `DontUseNativeDialog -> 0x0010L
  | `ReadOnly -> 0x0020L
  | `HideNameFilterDetails -> 0x0040L
  | `DontUseCustomDirectoryIcons -> 0x0080L
  | `Invalid_value x -> Int64.of_int x)
type qFontDialog'FontDialogOptions = qFontDialog'FontDialogOption Qflags.t
let qFontDialog'FontDialogOptions : qFontDialog'FontDialogOption Qflags.set = Qflags.define (function
  | `NoButtons -> 0x0001L
  | `DontUseNativeDialog -> 0x0002L
  | `ScalableFonts -> 0x0004L
  | `NonScalableFonts -> 0x0008L
  | `MonospacedFonts -> 0x0010L
  | `ProportionalFonts -> 0x0020L
  | `Invalid_value x -> Int64.of_int x)
type qInputDialog'InputDialogOptions = qInputDialog'InputDialogOption Qflags.t
let qInputDialog'InputDialogOptions : qInputDialog'InputDialogOption Qflags.set = Qflags.define (function
  | `NoButtons -> 0x0001L
  | `UseListViewForComboBoxItems -> 0x0002L
  | `UsePlainTextEditForTextInput -> 0x0004L
  | `Invalid_value x -> Int64.of_int x)
type qMessageBox'StandardButtons = qMessageBox'StandardButton Qflags.t
let qMessageBox'StandardButtons : qMessageBox'StandardButton Qflags.set = Qflags.define (function
  | `NoButton -> 0x0000L
  | `Ok -> 0x0400L
  | `Save -> 0x0800L
  | `SaveAll -> 0x1000L
  | `Open -> 0x2000L
  | `Yes -> 0x4000L
  | `YesToAll -> 0x8000L
  | `No -> 0x10000L
  | `NoToAll -> 0x20000L
  | `Abort -> 0x40000L
  | `Retry -> 0x80000L
  | `Ignore -> 0x100000L
  | `Close -> 0x200000L
  | `Cancel -> 0x400000L
  | `Discard -> 0x800000L
  | `Help -> 0x1000000L
  | `Apply -> 0x2000000L
  | `Reset -> 0x4000000L
  | `RestoreDefaults -> 0x8000000L
  | `Default -> 0x0100L
  | `Escape -> 0x0200L
  | `FlagMask -> 0x0300L
  | `ButtonMask -> 0xfffffffffffffcffL
  | `Invalid_value x -> Int64.of_int x)
type qWizard'WizardOptions = qWizard'WizardOption Qflags.t
let qWizard'WizardOptions : qWizard'WizardOption Qflags.set = Qflags.define (function
  | `IndependentPages -> 0x0001L
  | `IgnoreSubTitles -> 0x0002L
  | `ExtendedWatermarkPixmap -> 0x0004L
  | `NoDefaultButton -> 0x0008L
  | `NoBackButtonOnStartPage -> 0x0010L
  | `NoBackButtonOnLastPage -> 0x0020L
  | `DisabledBackButtonOnLastPage -> 0x0040L
  | `HaveNextButtonOnLastPage -> 0x0080L
  | `HaveFinishButtonOnEarlyPages -> 0x0100L
  | `NoCancelButton -> 0x0200L
  | `CancelButtonOnLeft -> 0x0400L
  | `HaveHelpButton -> 0x0800L
  | `HelpButtonOnRight -> 0x1000L
  | `HaveCustomButton1 -> 0x2000L
  | `HaveCustomButton2 -> 0x4000L
  | `HaveCustomButton3 -> 0x8000L
  | `NoCancelButtonOnLastPage -> 0x10000L
  | `Invalid_value x -> Int64.of_int x)
type qGraphicsView'CacheMode = qGraphicsView'CacheModeFlag Qflags.t
let qGraphicsView'CacheMode : qGraphicsView'CacheModeFlag Qflags.set = Qflags.define (function
  | `CacheNone -> 0x0000L
  | `CacheBackground -> 0x0001L
  | `Invalid_value x -> Int64.of_int x)
type qGraphicsView'OptimizationFlags = qGraphicsView'OptimizationFlag Qflags.t
let qGraphicsView'OptimizationFlags : qGraphicsView'OptimizationFlag Qflags.set = Qflags.define (function
  | `DontClipPainter -> 0x0001L
  | `DontSavePainterState -> 0x0002L
  | `DontAdjustForAntialiasing -> 0x0004L
  | `IndirectPainting -> 0x0008L
  | `Invalid_value x -> Int64.of_int x)
type qAbstractItemView'EditTriggers = qAbstractItemView'EditTrigger Qflags.t
let qAbstractItemView'EditTriggers : qAbstractItemView'EditTrigger Qflags.set = Qflags.define (function
  | `NoEditTriggers -> 0x0000L
  | `CurrentChanged -> 0x0001L
  | `DoubleClicked -> 0x0002L
  | `SelectedClicked -> 0x0004L
  | `EditKeyPressed -> 0x0008L
  | `AnyKeyPressed -> 0x0010L
  | `AllEditTriggers -> 0x001fL
  | `Invalid_value x -> Int64.of_int x)
type qTextEdit'AutoFormatting = qTextEdit'AutoFormattingFlag Qflags.t
let qTextEdit'AutoFormatting : qTextEdit'AutoFormattingFlag Qflags.set = Qflags.define (function
  | `AutoNone -> 0x0000L
  | `AutoBulletList -> 0x0001L
  | `AutoAll -> 0xffffffffL
  | `Invalid_value x -> Int64.of_int x)
type qObject = [`QObject]
type qEvent = [`QEvent]
type qCoreApplication = [`QCoreApplication | qObject]
type qModelIndex = [`QModelIndex]
type qModelIndexList = [`QModelIndexList]
type qMessageLogContext = [`QMessageLogContext]
type qAbstractEventDispatcher'TimerInfo = [`QAbstractEventDispatcher'TimerInfo]
type qVectorIterator = [`QVectorIterator]
type qUrlQuery = [`QUrlQuery]
type qMap'const_iterator = [`QMap'const_iterator]
type qFileInfo = [`QFileInfo]
type qSet'const_iterator = [`QSet'const_iterator]
type qJsonObject'iterator = [`QJsonObject'iterator]
type qXmlStreamNotationDeclaration = [`QXmlStreamNotationDeclaration]
type qJsonParseError = [`QJsonParseError]
type qMetaObject = [`QMetaObject]
type qTextDecoder = [`QTextDecoder]
type qEasingCurve = [`QEasingCurve]
type qMap'key_iterator = [`QMap'key_iterator]
type qTimeZone = [`QTimeZone]
type qWeakPointer = [`QWeakPointer]
type qLineF = [`QLineF]
type qPair = [`QPair]
type qMimeDatabase = [`QMimeDatabase]
type qSet'iterator = [`QSet'iterator]
type qXmlStreamEntityDeclaration = [`QXmlStreamEntityDeclaration]
type qSignalBlocker = [`QSignalBlocker]
type qMutexLocker = [`QMutexLocker]
type qCollator = [`QCollator]
type qMapIterator = [`QMapIterator]
type qByteArrayMatcher = [`QByteArrayMatcher]
type qJsonDocument = [`QJsonDocument]
type qSequentialIterable'const_iterator = [`QSequentialIterable'const_iterator]
type qMap'iterator = [`QMap'iterator]
type qVersionNumber = [`QVersionNumber]
type qXmlStreamEntityResolver = [`QXmlStreamEntityResolver]
type qByteArray = [`QByteArray]
type qPointer = [`QPointer]
type qLatin1Char = [`QLatin1Char]
type qScopedPointer = [`QScopedPointer]
type qDebug = [`QDebug]
type qResource = [`QResource]
type qMutableSetIterator = [`QMutableSetIterator]
type qEnableSharedFromThis = [`QEnableSharedFromThis]
type qHash = [`QHash]
type qLocale = [`QLocale]
type qXmlStreamWriter = [`QXmlStreamWriter]
type qJsonObject'const_iterator = [`QJsonObject'const_iterator]
type qBitArray = [`QBitArray]
type qMessageAuthenticationCode = [`QMessageAuthenticationCode]
type qLatin1String = [`QLatin1String]
type qReadWriteLock = [`QReadWriteLock]
type qWriteLocker = [`QWriteLocker]
type qStringMatcher = [`QStringMatcher]
type qXmlStreamReader = [`QXmlStreamReader]
type qMetaMethod = [`QMetaMethod]
type qLinkedList'const_iterator = [`QLinkedList'const_iterator]
type qMarginsF = [`QMarginsF]
type qStaticPlugin = [`QStaticPlugin]
type qAssociativeIterable = [`QAssociativeIterable]
type qDateTime = [`QDateTime]
type qOperatingSystemVersion = [`QOperatingSystemVersion]
type qMetaType = [`QMetaType]
type qJsonArray = [`QJsonArray]
type qMutableMapIterator = [`QMutableMapIterator]
type qDebugStateSaver = [`QDebugStateSaver]
type qLoggingCategory = [`QLoggingCategory]
type qGenericArgument = [`QGenericArgument]
type qFuture'const_iterator = [`QFuture'const_iterator]
type qAbstractNativeEventFilter = [`QAbstractNativeEventFilter]
type qChar = [`QChar]
type qGlobalStatic = [`QGlobalStatic]
type qElapsedTimer = [`QElapsedTimer]
type qHash'iterator = [`QHash'iterator]
type qVector = [`QVector]
type qTextCodec'ConverterState = [`QTextCodec'ConverterState]
type qStandardPaths = [`QStandardPaths]
type qDirIterator = [`QDirIterator]
type qItemSelectionRange = [`QItemSelectionRange]
type qStorageInfo = [`QStorageInfo]
type qLinkedList'iterator = [`QLinkedList'iterator]
type qRegularExpressionMatch = [`QRegularExpressionMatch]
type qRegExp = [`QRegExp]
type qMutableListIterator = [`QMutableListIterator]
type qMutableHashIterator = [`QMutableHashIterator]
type qStaticByteArrayMatcher = [`QStaticByteArrayMatcher]
type qFutureSynchronizer = [`QFutureSynchronizer]
type qListIterator = [`QListIterator]
type qStringRef = [`QStringRef]
type qTextCodec = [`QTextCodec]
type qJsonArray'const_iterator = [`QJsonArray'const_iterator]
type qSystemSemaphore = [`QSystemSemaphore]
type qUrl = [`QUrl]
type qReadLocker = [`QReadLocker]
type qHash'key_iterator = [`QHash'key_iterator]
type qFuture = [`QFuture]
type qRegularExpressionMatchIterator = [`QRegularExpressionMatchIterator]
type qFutureIterator = [`QFutureIterator]
type qTextEncoder = [`QTextEncoder]
type qUuid = [`QUuid]
type qMessageLogger = [`QMessageLogger]
type qSequentialIterable = [`QSequentialIterable]
type qContiguousCache = [`QContiguousCache]
type qMetaEnum = [`QMetaEnum]
type qCryptographicHash = [`QCryptographicHash]
type qLibraryInfo = [`QLibraryInfo]
type qProcess'CreateProcessArguments = [`QProcess'CreateProcessArguments]
type qCommandLineOption = [`QCommandLineOption]
type qMutableVectorIterator = [`QMutableVectorIterator]
type qRegularExpression = [`QRegularExpression]
type qMetaProperty = [`QMetaProperty]
type qLine = [`QLine]
type qSharedData = [`QSharedData]
type qExplicitlySharedDataPointer = [`QExplicitlySharedDataPointer]
type qWaitCondition = [`QWaitCondition]
type qMargins = [`QMargins]
type qTimeZone'OffsetData = [`QTimeZone'OffsetData]
type qXmlStreamNamespaceDeclaration = [`QXmlStreamNamespaceDeclaration]
type qMimeType = [`QMimeType]
type qCollatorSortKey = [`QCollatorSortKey]
type qDataStream = [`QDataStream]
type qTemporaryDir = [`QTemporaryDir]
type qRunnable = [`QRunnable]
type qThreadStorage = [`QThreadStorage]
type qJsonValue = [`QJsonValue]
type qVarLengthArray = [`QVarLengthArray]
type qBasicTimer = [`QBasicTimer]
type qEventLoopLocker = [`QEventLoopLocker]
type qJsonArray'iterator = [`QJsonArray'iterator]
type qCommandLineParser = [`QCommandLineParser]
type qTextStream = [`QTextStream]
type qSet = [`QSet]
type qSemaphore = [`QSemaphore]
type qXmlStreamAttribute = [`QXmlStreamAttribute]
type qDeadlineTimer = [`QDeadlineTimer]
type qDate = [`QDate]
type qMutableLinkedListIterator = [`QMutableLinkedListIterator]
type qHash'const_iterator = [`QHash'const_iterator]
type qFlags = [`QFlags]
type qLockFile = [`QLockFile]
type qMetaObject'Connection = [`QMetaObject'Connection]
type qSharedDataPointer = [`QSharedDataPointer]
type qSysInfo = [`QSysInfo]
type qJsonObject = [`QJsonObject]
type qException = [`QException]
type qMap = [`QMap]
type qAssociativeIterable'const_iterator = [`QAssociativeIterable'const_iterator]
type qTime = [`QTime]
type qTextBoundaryFinder = [`QTextBoundaryFinder]
type qMetaClassInfo = [`QMetaClassInfo]
type qSetIterator = [`QSetIterator]
type qSharedPointer = [`QSharedPointer]
type qProcessEnvironment = [`QProcessEnvironment]
type qHashIterator = [`QHashIterator]
type qLinkedListIterator = [`QLinkedListIterator]
type qPersistentModelIndex = [`QPersistentModelIndex]
type qCache = [`QCache]
type qLinkedList = [`QLinkedList]
type qScopedValueRollback = [`QScopedValueRollback]
type qDir = [`QDir]
type qMultiMap = [`QMultiMap | qMap]
type qUnhandledException = [`QUnhandledException | qException]
type qItemSelection = [`QItemSelection]
type qByteArrayList = [`QByteArrayList]
type qStringList = [`QStringList]
type qXmlStreamAttributes = [`QXmlStreamAttributes | qVector]
type qGenericReturnArgument = [`QGenericReturnArgument | qGenericArgument]
type qMultiHash = [`QMultiHash | qHash]
type qScopedArrayPointer = [`QScopedArrayPointer | qScopedPointer]
type qTimerEvent = [`QTimerEvent | qEvent]
type qChildEvent = [`QChildEvent | qEvent]
type qDynamicPropertyChangeEvent = [`QDynamicPropertyChangeEvent | qEvent]
type qStateMachine'SignalEvent = [`QStateMachine'SignalEvent | qEvent]
type qStateMachine'WrappedEvent = [`QStateMachine'WrappedEvent | qEvent]
type qAbstractAnimation = [`QAbstractAnimation | qObject]
type qFileSelector = [`QFileSelector | qObject]
type qFileSystemWatcher = [`QFileSystemWatcher | qObject]
type qIODevice = [`QIODevice | qObject]
type qSettings = [`QSettings | qObject]
type qAbstractItemModel = [`QAbstractItemModel | qObject]
type qItemSelectionModel = [`QItemSelectionModel | qObject]
type qAbstractEventDispatcher = [`QAbstractEventDispatcher | qObject]
type qEventLoop = [`QEventLoop | qObject]
type qMimeData = [`QMimeData | qObject]
type qObjectCleanupHandler = [`QObjectCleanupHandler | qObject]
type qSharedMemory = [`QSharedMemory | qObject]
type qSignalMapper = [`QSignalMapper | qObject]
type qSocketNotifier = [`QSocketNotifier | qObject]
type qTimer = [`QTimer | qObject]
type qTranslator = [`QTranslator | qObject]
type qLibrary = [`QLibrary | qObject]
type qPluginLoader = [`QPluginLoader | qObject]
type qAbstractState = [`QAbstractState | qObject]
type qAbstractTransition = [`QAbstractTransition | qObject]
type qThread = [`QThread | qObject]
type qThreadPool = [`QThreadPool | qObject]
type qTimeLine = [`QTimeLine | qObject]
type qEventTransition = [`QEventTransition | qAbstractTransition]
type qSignalTransition = [`QSignalTransition | qAbstractTransition]
type qFinalState = [`QFinalState | qAbstractState]
type qHistoryState = [`QHistoryState | qAbstractState]
type qState = [`QState | qAbstractState]
type qAbstractTableModel = [`QAbstractTableModel | qAbstractItemModel]
type qAbstractListModel = [`QAbstractListModel | qAbstractItemModel]
type qAbstractProxyModel = [`QAbstractProxyModel | qAbstractItemModel]
type qBuffer = [`QBuffer | qIODevice]
type qFileDevice = [`QFileDevice | qIODevice]
type qProcess = [`QProcess | qIODevice]
type qAnimationGroup = [`QAnimationGroup | qAbstractAnimation]
type qPauseAnimation = [`QPauseAnimation | qAbstractAnimation]
type qVariantAnimation = [`QVariantAnimation | qAbstractAnimation]
type qPropertyAnimation = [`QPropertyAnimation | qVariantAnimation]
type qParallelAnimationGroup = [`QParallelAnimationGroup | qAnimationGroup]
type qSequentialAnimationGroup = [`QSequentialAnimationGroup | qAnimationGroup]
type qFile = [`QFile | qFileDevice]
type qSaveFile = [`QSaveFile | qFileDevice]
type qIdentityProxyModel = [`QIdentityProxyModel | qAbstractProxyModel]
type qSortFilterProxyModel = [`QSortFilterProxyModel | qAbstractProxyModel]
type qStringListModel = [`QStringListModel | qAbstractListModel]
type qStateMachine = [`QStateMachine | qState]
type qTemporaryFile = [`QTemporaryFile | qFile]
type qAccessibleEditableTextInterface = [`QAccessibleEditableTextInterface]
type qAccessibleInterface = [`QAccessibleInterface]
type qTextLength = [`QTextLength]
type qPaintEngine = [`QPaintEngine]
type qTextBlock = [`QTextBlock]
type qTextOption = [`QTextOption]
type qRgba64 = [`QRgba64]
type qQuaternion = [`QQuaternion]
type qMatrix = [`QMatrix]
type qAccessibleValueInterface = [`QAccessibleValueInterface]
type qTextItem = [`QTextItem]
type qTextLine = [`QTextLine]
type qTextInlineObject = [`QTextInlineObject]
type qTextBlockUserData = [`QTextBlockUserData]
type qGenericPluginFactory = [`QGenericPluginFactory]
type qSurfaceFormat = [`QSurfaceFormat]
type qOpenGLPixelTransferOptions = [`QOpenGLPixelTransferOptions]
type qOpenGLFramebufferObjectFormat = [`QOpenGLFramebufferObjectFormat]
type qGradient = [`QGradient]
type qImageReader = [`QImageReader]
type qPainter'PixmapFragment = [`QPainter'PixmapFragment]
type qTextLayout = [`QTextLayout]
type qPixelFormat = [`QPixelFormat]
type qOpenGLTextureBlitter = [`QOpenGLTextureBlitter]
type qCursor = [`QCursor]
type qDesktopServices = [`QDesktopServices]
type qTextCursor = [`QTextCursor]
type qVector4D = [`QVector4D]
type qTextDocumentFragment = [`QTextDocumentFragment]
type qAccessibleEvent = [`QAccessibleEvent]
type qOpenGLTexture = [`QOpenGLTexture]
type qPageSize = [`QPageSize]
type qTouchEvent'TouchPoint = [`QTouchEvent'TouchPoint]
type qTouchDevice = [`QTouchDevice]
type qPictureIO = [`QPictureIO]
type qInputMethodEvent'Attribute = [`QInputMethodEvent'Attribute]
type qFontInfo = [`QFontInfo]
type qStaticText = [`QStaticText]
type qPainterPath = [`QPainterPath]
type qPaintEngineState = [`QPaintEngineState]
type qOpenGLFramebufferObject = [`QOpenGLFramebufferObject]
type qIcon = [`QIcon]
type qTextOption'Tab = [`QTextOption'Tab]
type qAbstractOpenGLFunctions = [`QAbstractOpenGLFunctions]
type qAccessibleTextInterface = [`QAccessibleTextInterface]
type qTextBlock'iterator = [`QTextBlock'iterator]
type qPalette = [`QPalette]
type qFontMetricsF = [`QFontMetricsF]
type qRawFont = [`QRawFont]
type qFontMetrics = [`QFontMetrics]
type qAccessibleTableInterface = [`QAccessibleTableInterface]
type qOpenGLDebugMessage = [`QOpenGLDebugMessage]
type qPainter = [`QPainter]
type qOpenGLFunctions = [`QOpenGLFunctions]
type qBackingStore = [`QBackingStore]
type qTextFormat = [`QTextFormat]
type qColor = [`QColor]
type qMatrix4x4 = [`QMatrix4x4]
type qAccessible = [`QAccessible]
type qPixmapCache = [`QPixmapCache]
type qVector2D = [`QVector2D]
type qAccessible'State = [`QAccessible'State]
type qPainterPathStroker = [`QPainterPathStroker]
type qOpenGLVertexArrayObject'Binder = [`QOpenGLVertexArrayObject'Binder]
type qImageIOHandler = [`QImageIOHandler]
type qRegion = [`QRegion]
type qTextFrame'iterator = [`QTextFrame'iterator]
type qAccessibleActionInterface = [`QAccessibleActionInterface]
type qFontDatabase = [`QFontDatabase]
type qIconEngine = [`QIconEngine]
type qTextObjectInterface = [`QTextObjectInterface]
type qTextTableCell = [`QTextTableCell]
type qPixmapCache'Key = [`QPixmapCache'Key]
type qSupportedWritingSystems = [`QSupportedWritingSystems]
type qImageWriter = [`QImageWriter]
type qBrush = [`QBrush]
type qPageLayout = [`QPageLayout]
type qPainterPath'Element = [`QPainterPath'Element]
type qTextFragment = [`QTextFragment]
type qAccessibleTableCellInterface = [`QAccessibleTableCellInterface]
type qStandardItem = [`QStandardItem]
type qOpenGLBuffer = [`QOpenGLBuffer]
type qGlyphRun = [`QGlyphRun]
type qGenericMatrix = [`QGenericMatrix]
type qTransform = [`QTransform]
type qFont = [`QFont]
type qPointingDeviceUniqueId = [`QPointingDeviceUniqueId]
type qOpenGLVersionProfile = [`QOpenGLVersionProfile]
type qPen = [`QPen]
type qVector3D = [`QVector3D]
type qKeySequence = [`QKeySequence]
type qTextLayout'FormatRange = [`QTextLayout'FormatRange]
type qSurface = [`QSurface]
type qTextDocumentWriter = [`QTextDocumentWriter]
type qOffscreenSurface = [`QOffscreenSurface | qObject]
type qRasterPaintEngine = [`QRasterPaintEngine | qPaintEngine]
type qStandardItemModel = [`QStandardItemModel | qAbstractItemModel]
type qTextCharFormat = [`QTextCharFormat | qTextFormat]
type qTextBlockFormat = [`QTextBlockFormat | qTextFormat]
type qTextListFormat = [`QTextListFormat | qTextFormat]
type qTextFrameFormat = [`QTextFrameFormat | qTextFormat]
type qPolygon = [`QPolygon | qVector]
type qPolygonF = [`QPolygonF | qVector]
type qOpenGLExtraFunctions = [`QOpenGLExtraFunctions | qOpenGLFunctions]
type qImage = [`QImage]
type qPicture = [`QPicture]
type qPixmap = [`QPixmap]
type qOpenGLPaintDevice = [`QOpenGLPaintDevice]
type qPagedPaintDevice = [`QPagedPaintDevice]
type qOpenGLFunctions_1_0 = [`QOpenGLFunctions_1_0 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_1_1 = [`QOpenGLFunctions_1_1 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_1_2 = [`QOpenGLFunctions_1_2 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_1_3 = [`QOpenGLFunctions_1_3 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_1_4 = [`QOpenGLFunctions_1_4 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_1_5 = [`QOpenGLFunctions_1_5 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_2_0 = [`QOpenGLFunctions_2_0 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_2_1 = [`QOpenGLFunctions_2_1 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_0 = [`QOpenGLFunctions_3_0 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_1 = [`QOpenGLFunctions_3_1 | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_2_Compatibility = [`QOpenGLFunctions_3_2_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_2_Core = [`QOpenGLFunctions_3_2_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_3_Compatibility = [`QOpenGLFunctions_3_3_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_3_3_Core = [`QOpenGLFunctions_3_3_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_0_Compatibility = [`QOpenGLFunctions_4_0_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_0_Core = [`QOpenGLFunctions_4_0_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_1_Compatibility = [`QOpenGLFunctions_4_1_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_1_Core = [`QOpenGLFunctions_4_1_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_2_Compatibility = [`QOpenGLFunctions_4_2_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_2_Core = [`QOpenGLFunctions_4_2_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_3_Compatibility = [`QOpenGLFunctions_4_3_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_3_Core = [`QOpenGLFunctions_4_3_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_4_Compatibility = [`QOpenGLFunctions_4_4_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_4_Core = [`QOpenGLFunctions_4_4_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_5_Compatibility = [`QOpenGLFunctions_4_5_Compatibility | qAbstractOpenGLFunctions]
type qOpenGLFunctions_4_5_Core = [`QOpenGLFunctions_4_5_Core | qAbstractOpenGLFunctions]
type qOpenGLFunctions_ES2 = [`QOpenGLFunctions_ES2 | qAbstractOpenGLFunctions]
type qAccessibleStateChangeEvent = [`QAccessibleStateChangeEvent | qAccessibleEvent]
type qAccessibleTextCursorEvent = [`QAccessibleTextCursorEvent | qAccessibleEvent]
type qAccessibleValueChangeEvent = [`QAccessibleValueChangeEvent | qAccessibleEvent]
type qAccessibleTableModelChangeEvent = [`QAccessibleTableModelChangeEvent | qAccessibleEvent]
type qLinearGradient = [`QLinearGradient | qGradient]
type qRadialGradient = [`QRadialGradient | qGradient]
type qConicalGradient = [`QConicalGradient | qGradient]
type qInputEvent = [`QInputEvent | qEvent]
type qEnterEvent = [`QEnterEvent | qEvent]
type qFocusEvent = [`QFocusEvent | qEvent]
type qPaintEvent = [`QPaintEvent | qEvent]
type qMoveEvent = [`QMoveEvent | qEvent]
type qExposeEvent = [`QExposeEvent | qEvent]
type qPlatformSurfaceEvent = [`QPlatformSurfaceEvent | qEvent]
type qResizeEvent = [`QResizeEvent | qEvent]
type qCloseEvent = [`QCloseEvent | qEvent]
type qIconDragEvent = [`QIconDragEvent | qEvent]
type qShowEvent = [`QShowEvent | qEvent]
type qHideEvent = [`QHideEvent | qEvent]
type qInputMethodEvent = [`QInputMethodEvent | qEvent]
type qInputMethodQueryEvent = [`QInputMethodQueryEvent | qEvent]
type qDropEvent = [`QDropEvent | qEvent]
type qDragLeaveEvent = [`QDragLeaveEvent | qEvent]
type qHelpEvent = [`QHelpEvent | qEvent]
type qStatusTipEvent = [`QStatusTipEvent | qEvent]
type qWhatsThisClickedEvent = [`QWhatsThisClickedEvent | qEvent]
type qActionEvent = [`QActionEvent | qEvent]
type qFileOpenEvent = [`QFileOpenEvent | qEvent]
type qShortcutEvent = [`QShortcutEvent | qEvent]
type qWindowStateChangeEvent = [`QWindowStateChangeEvent | qEvent]
type qScrollPrepareEvent = [`QScrollPrepareEvent | qEvent]
type qScrollEvent = [`QScrollEvent | qEvent]
type qAccessibleObject = [`QAccessibleObject | qAccessibleInterface]
type qAccessiblePlugin = [`QAccessiblePlugin | qObject]
type qIconEnginePlugin = [`QIconEnginePlugin | qObject]
type qImageIOPlugin = [`QImageIOPlugin | qObject]
type qMovie = [`QMovie | qObject]
type qPictureFormatPlugin = [`QPictureFormatPlugin | qObject]
type qClipboard = [`QClipboard | qObject]
type qDrag = [`QDrag | qObject]
type qGenericPlugin = [`QGenericPlugin | qObject]
type qInputMethod = [`QInputMethod | qObject]
type qOpenGLContextGroup = [`QOpenGLContextGroup | qObject]
type qOpenGLContext = [`QOpenGLContext | qObject]
type qScreen = [`QScreen | qObject]
type qSessionManager = [`QSessionManager | qObject]
type qStyleHints = [`QStyleHints | qObject]
type qOpenGLDebugLogger = [`QOpenGLDebugLogger | qObject]
type qOpenGLShader = [`QOpenGLShader | qObject]
type qOpenGLShaderProgram = [`QOpenGLShaderProgram | qObject]
type qOpenGLTimerQuery = [`QOpenGLTimerQuery | qObject]
type qOpenGLTimeMonitor = [`QOpenGLTimeMonitor | qObject]
type qOpenGLVertexArrayObject = [`QOpenGLVertexArrayObject | qObject]
type qAbstractTextDocumentLayout = [`QAbstractTextDocumentLayout | qObject]
type qSyntaxHighlighter = [`QSyntaxHighlighter | qObject]
type qTextDocument = [`QTextDocument | qObject]
type qTextObject = [`QTextObject | qObject]
type qValidator = [`QValidator | qObject]
type qIntValidator = [`QIntValidator | qValidator]
type qDoubleValidator = [`QDoubleValidator | qValidator]
type qRegExpValidator = [`QRegExpValidator | qValidator]
type qRegularExpressionValidator = [`QRegularExpressionValidator | qValidator]
type qTextBlockGroup = [`QTextBlockGroup | qTextObject]
type qTextFrame = [`QTextFrame | qTextObject]
type qDragMoveEvent = [`QDragMoveEvent | qDropEvent]
type qMouseEvent = [`QMouseEvent | qInputEvent]
type qHoverEvent = [`QHoverEvent | qInputEvent]
type qWheelEvent = [`QWheelEvent | qInputEvent]
type qTabletEvent = [`QTabletEvent | qInputEvent]
type qNativeGestureEvent = [`QNativeGestureEvent | qInputEvent]
type qKeyEvent = [`QKeyEvent | qInputEvent]
type qContextMenuEvent = [`QContextMenuEvent | qInputEvent]
type qTouchEvent = [`QTouchEvent | qInputEvent]
type qAccessibleTextSelectionEvent = [`QAccessibleTextSelectionEvent | qAccessibleTextCursorEvent]
type qAccessibleTextInsertEvent = [`QAccessibleTextInsertEvent | qAccessibleTextCursorEvent]
type qAccessibleTextRemoveEvent = [`QAccessibleTextRemoveEvent | qAccessibleTextCursorEvent]
type qAccessibleTextUpdateEvent = [`QAccessibleTextUpdateEvent | qAccessibleTextCursorEvent]
type qPdfWriter = [`QPdfWriter | qObject]
type qBitmap = [`QBitmap | qPixmap]
type qTextTableFormat = [`QTextTableFormat | qTextFrameFormat]
type qTextImageFormat = [`QTextImageFormat | qTextCharFormat]
type qTextTableCellFormat = [`QTextTableCellFormat | qTextCharFormat]
type qWindow = [`QWindow | qObject]
type qPaintDeviceWindow = [`QPaintDeviceWindow | qWindow]
type qOpenGLWindow = [`QOpenGLWindow | qPaintDeviceWindow]
type qRasterWindow = [`QRasterWindow | qPaintDeviceWindow]
type qDragEnterEvent = [`QDragEnterEvent | qDragMoveEvent]
type qTextTable = [`QTextTable | qTextFrame]
type qTextList = [`QTextList | qTextBlockGroup]
type qGuiApplication = [`QGuiApplication | qCoreApplication]
type qWidget = [`QWidget | qObject]
type qAbstractButton = [`QAbstractButton | qWidget]
type qPushButton = [`QPushButton | qAbstractButton]
type qTreeWidgetItem = [`QTreeWidgetItem]
type qFileIconProvider = [`QFileIconProvider]
type qTileRules = [`QTileRules]
type qItemEditorCreatorBase = [`QItemEditorCreatorBase]
type qGestureRecognizer = [`QGestureRecognizer]
type qTreeWidgetItemIterator = [`QTreeWidgetItemIterator]
type qStyleFactory = [`QStyleFactory]
type qGraphicsLayoutItem = [`QGraphicsLayoutItem]
type qItemEditorFactory = [`QItemEditorFactory]
type qWhatsThis = [`QWhatsThis]
type qTableWidgetSelectionRange = [`QTableWidgetSelectionRange]
type qScrollerProperties = [`QScrollerProperties]
type qTableWidgetItem = [`QTableWidgetItem]
type qGraphicsItem = [`QGraphicsItem]
type qToolTip = [`QToolTip]
type qListWidgetItem = [`QListWidgetItem]
type qColormap = [`QColormap]
type qUndoCommand = [`QUndoCommand]
type qTextEdit'ExtraSelection = [`QTextEdit'ExtraSelection]
type qFormLayout'TakeRowResult = [`QFormLayout'TakeRowResult]
type qStyleHintReturn = [`QStyleHintReturn]
type qLayoutItem = [`QLayoutItem]
type qStyleOption = [`QStyleOption]
type qSizePolicy = [`QSizePolicy]
type qApplication = [`QApplication | qGuiApplication]
type qKeyEventTransition = [`QKeyEventTransition | qEventTransition]
type qMouseEventTransition = [`QMouseEventTransition | qEventTransition]
type qFileSystemModel = [`QFileSystemModel | qAbstractItemModel]
type qDirModel = [`QDirModel | qAbstractItemModel]
type qAccessibleWidget = [`QAccessibleWidget | qAccessibleObject]
type qStyleOptionFocusRect = [`QStyleOptionFocusRect | qStyleOption]
type qStyleOptionFrame = [`QStyleOptionFrame | qStyleOption]
type qStyleOptionTabWidgetFrame = [`QStyleOptionTabWidgetFrame | qStyleOption]
type qStyleOptionTabBarBase = [`QStyleOptionTabBarBase | qStyleOption]
type qStyleOptionHeader = [`QStyleOptionHeader | qStyleOption]
type qStyleOptionButton = [`QStyleOptionButton | qStyleOption]
type qStyleOptionTab = [`QStyleOptionTab | qStyleOption]
type qStyleOptionToolBar = [`QStyleOptionToolBar | qStyleOption]
type qStyleOptionProgressBar = [`QStyleOptionProgressBar | qStyleOption]
type qStyleOptionMenuItem = [`QStyleOptionMenuItem | qStyleOption]
type qStyleOptionDockWidget = [`QStyleOptionDockWidget | qStyleOption]
type qStyleOptionViewItem = [`QStyleOptionViewItem | qStyleOption]
type qStyleOptionToolBox = [`QStyleOptionToolBox | qStyleOption]
type qStyleOptionRubberBand = [`QStyleOptionRubberBand | qStyleOption]
type qStyleOptionComplex = [`QStyleOptionComplex | qStyleOption]
type qStyleOptionGraphicsItem = [`QStyleOptionGraphicsItem | qStyleOption]
type qLayout = [`QLayout | qObject]
type qSpacerItem = [`QSpacerItem | qLayoutItem]
type qWidgetItem = [`QWidgetItem | qLayoutItem]
type qStyleHintReturnMask = [`QStyleHintReturnMask | qStyleHintReturn]
type qStyleHintReturnVariant = [`QStyleHintReturnVariant | qStyleHintReturn]
type qStylePainter = [`QStylePainter | qPainter]
type qGraphicsObject = [`QGraphicsObject | qObject]
type qAbstractGraphicsShapeItem = [`QAbstractGraphicsShapeItem | qGraphicsItem]
type qGraphicsLineItem = [`QGraphicsLineItem | qGraphicsItem]
type qGraphicsPixmapItem = [`QGraphicsPixmapItem | qGraphicsItem]
type qGraphicsItemGroup = [`QGraphicsItemGroup | qGraphicsItem]
type qPlainTextDocumentLayout = [`QPlainTextDocumentLayout | qAbstractTextDocumentLayout]
type qGraphicsLayout = [`QGraphicsLayout | qGraphicsLayoutItem]
type qItemEditorCreator = [`QItemEditorCreator | qItemEditorCreatorBase]
type qStandardItemEditorCreator = [`QStandardItemEditorCreator | qItemEditorCreatorBase]
type qGraphicsSceneEvent = [`QGraphicsSceneEvent | qEvent]
type qGestureEvent = [`QGestureEvent | qEvent]
type qGraphicsEffect = [`QGraphicsEffect | qObject]
type qGraphicsAnchor = [`QGraphicsAnchor | qObject]
type qGraphicsItemAnimation = [`QGraphicsItemAnimation | qObject]
type qGraphicsScene = [`QGraphicsScene | qObject]
type qGraphicsTransform = [`QGraphicsTransform | qObject]
type qAbstractItemDelegate = [`QAbstractItemDelegate | qObject]
type qDataWidgetMapper = [`QDataWidgetMapper | qObject]
type qAction = [`QAction | qObject]
type qActionGroup = [`QActionGroup | qObject]
type qGesture = [`QGesture | qObject]
type qShortcut = [`QShortcut | qObject]
type qStyle = [`QStyle | qObject]
type qStylePlugin = [`QStylePlugin | qObject]
type qCompleter = [`QCompleter | qObject]
type qScroller = [`QScroller | qObject]
type qSystemTrayIcon = [`QSystemTrayIcon | qObject]
type qUndoGroup = [`QUndoGroup | qObject]
type qUndoStack = [`QUndoStack | qObject]
type qButtonGroup = [`QButtonGroup | qObject]
type qCommonStyle = [`QCommonStyle | qStyle]
type qPanGesture = [`QPanGesture | qGesture]
type qPinchGesture = [`QPinchGesture | qGesture]
type qSwipeGesture = [`QSwipeGesture | qGesture]
type qTapGesture = [`QTapGesture | qGesture]
type qTapAndHoldGesture = [`QTapAndHoldGesture | qGesture]
type qWidgetAction = [`QWidgetAction | qAction]
type qItemDelegate = [`QItemDelegate | qAbstractItemDelegate]
type qStyledItemDelegate = [`QStyledItemDelegate | qAbstractItemDelegate]
type qGraphicsScale = [`QGraphicsScale | qGraphicsTransform]
type qGraphicsRotation = [`QGraphicsRotation | qGraphicsTransform]
type qGraphicsColorizeEffect = [`QGraphicsColorizeEffect | qGraphicsEffect]
type qGraphicsBlurEffect = [`QGraphicsBlurEffect | qGraphicsEffect]
type qGraphicsDropShadowEffect = [`QGraphicsDropShadowEffect | qGraphicsEffect]
type qGraphicsOpacityEffect = [`QGraphicsOpacityEffect | qGraphicsEffect]
type qGraphicsSceneMouseEvent = [`QGraphicsSceneMouseEvent | qGraphicsSceneEvent]
type qGraphicsSceneWheelEvent = [`QGraphicsSceneWheelEvent | qGraphicsSceneEvent]
type qGraphicsSceneContextMenuEvent = [`QGraphicsSceneContextMenuEvent | qGraphicsSceneEvent]
type qGraphicsSceneHoverEvent = [`QGraphicsSceneHoverEvent | qGraphicsSceneEvent]
type qGraphicsSceneHelpEvent = [`QGraphicsSceneHelpEvent | qGraphicsSceneEvent]
type qGraphicsSceneDragDropEvent = [`QGraphicsSceneDragDropEvent | qGraphicsSceneEvent]
type qGraphicsSceneResizeEvent = [`QGraphicsSceneResizeEvent | qGraphicsSceneEvent]
type qGraphicsSceneMoveEvent = [`QGraphicsSceneMoveEvent | qGraphicsSceneEvent]
type qGraphicsAnchorLayout = [`QGraphicsAnchorLayout | qGraphicsLayout]
type qGraphicsGridLayout = [`QGraphicsGridLayout | qGraphicsLayout]
type qGraphicsLinearLayout = [`QGraphicsLinearLayout | qGraphicsLayout]
type qGraphicsPathItem = [`QGraphicsPathItem | qAbstractGraphicsShapeItem]
type qGraphicsRectItem = [`QGraphicsRectItem | qAbstractGraphicsShapeItem]
type qGraphicsEllipseItem = [`QGraphicsEllipseItem | qAbstractGraphicsShapeItem]
type qGraphicsPolygonItem = [`QGraphicsPolygonItem | qAbstractGraphicsShapeItem]
type qGraphicsSimpleTextItem = [`QGraphicsSimpleTextItem | qAbstractGraphicsShapeItem]
type qGraphicsTextItem = [`QGraphicsTextItem | qGraphicsObject]
type qGraphicsWidget = [`QGraphicsWidget | qGraphicsObject]
type qDialog = [`QDialog | qWidget]
type qWizardPage = [`QWizardPage | qWidget]
type qDesktopWidget = [`QDesktopWidget | qWidget]
type qOpenGLWidget = [`QOpenGLWidget | qWidget]
type qAbstractSlider = [`QAbstractSlider | qWidget]
type qAbstractSpinBox = [`QAbstractSpinBox | qWidget]
type qCalendarWidget = [`QCalendarWidget | qWidget]
type qComboBox = [`QComboBox | qWidget]
type qDialogButtonBox = [`QDialogButtonBox | qWidget]
type qDockWidget = [`QDockWidget | qWidget]
type qFocusFrame = [`QFocusFrame | qWidget]
type qFrame = [`QFrame | qWidget]
type qGroupBox = [`QGroupBox | qWidget]
type qKeySequenceEdit = [`QKeySequenceEdit | qWidget]
type qLineEdit = [`QLineEdit | qWidget]
type qMainWindow = [`QMainWindow | qWidget]
type qMdiSubWindow = [`QMdiSubWindow | qWidget]
type qMenu = [`QMenu | qWidget]
type qMenuBar = [`QMenuBar | qWidget]
type qProgressBar = [`QProgressBar | qWidget]
type qRubberBand = [`QRubberBand | qWidget]
type qSizeGrip = [`QSizeGrip | qWidget]
type qSplashScreen = [`QSplashScreen | qWidget]
type qSplitterHandle = [`QSplitterHandle | qWidget]
type qStatusBar = [`QStatusBar | qWidget]
type qTabBar = [`QTabBar | qWidget]
type qTabWidget = [`QTabWidget | qWidget]
type qToolBar = [`QToolBar | qWidget]
type qBoxLayout = [`QBoxLayout | qLayout]
type qFormLayout = [`QFormLayout | qLayout]
type qGridLayout = [`QGridLayout | qLayout]
type qStackedLayout = [`QStackedLayout | qLayout]
type qStyleOptionSlider = [`QStyleOptionSlider | qStyleOptionComplex]
type qStyleOptionSpinBox = [`QStyleOptionSpinBox | qStyleOptionComplex]
type qStyleOptionToolButton = [`QStyleOptionToolButton | qStyleOptionComplex]
type qStyleOptionComboBox = [`QStyleOptionComboBox | qStyleOptionComplex]
type qStyleOptionTitleBar = [`QStyleOptionTitleBar | qStyleOptionComplex]
type qStyleOptionGroupBox = [`QStyleOptionGroupBox | qStyleOptionComplex]
type qStyleOptionSizeGrip = [`QStyleOptionSizeGrip | qStyleOptionComplex]
type qHBoxLayout = [`QHBoxLayout | qBoxLayout]
type qVBoxLayout = [`QVBoxLayout | qBoxLayout]
type qAbstractScrollArea = [`QAbstractScrollArea | qFrame]
type qLabel = [`QLabel | qFrame]
type qLCDNumber = [`QLCDNumber | qFrame]
type qSplitter = [`QSplitter | qFrame]
type qStackedWidget = [`QStackedWidget | qFrame]
type qToolBox = [`QToolBox | qFrame]
type qFontComboBox = [`QFontComboBox | qComboBox]
type qDateTimeEdit = [`QDateTimeEdit | qAbstractSpinBox]
type qSpinBox = [`QSpinBox | qAbstractSpinBox]
type qDoubleSpinBox = [`QDoubleSpinBox | qAbstractSpinBox]
type qDial = [`QDial | qAbstractSlider]
type qScrollBar = [`QScrollBar | qAbstractSlider]
type qSlider = [`QSlider | qAbstractSlider]
type qCheckBox = [`QCheckBox | qAbstractButton]
type qRadioButton = [`QRadioButton | qAbstractButton]
type qToolButton = [`QToolButton | qAbstractButton]
type qColorDialog = [`QColorDialog | qDialog]
type qErrorMessage = [`QErrorMessage | qDialog]
type qFileDialog = [`QFileDialog | qDialog]
type qFontDialog = [`QFontDialog | qDialog]
type qInputDialog = [`QInputDialog | qDialog]
type qMessageBox = [`QMessageBox | qDialog]
type qProgressDialog = [`QProgressDialog | qDialog]
type qWizard = [`QWizard | qDialog]
type qGraphicsProxyWidget = [`QGraphicsProxyWidget | qGraphicsWidget]
type qProxyStyle = [`QProxyStyle | qCommonStyle]
type qCommandLinkButton = [`QCommandLinkButton | qPushButton]
type qTimeEdit = [`QTimeEdit | qDateTimeEdit]
type qDateEdit = [`QDateEdit | qDateTimeEdit]
type qGraphicsView = [`QGraphicsView | qAbstractScrollArea]
type qAbstractItemView = [`QAbstractItemView | qAbstractScrollArea]
type qMdiArea = [`QMdiArea | qAbstractScrollArea]
type qPlainTextEdit = [`QPlainTextEdit | qAbstractScrollArea]
type qScrollArea = [`QScrollArea | qAbstractScrollArea]
type qTextEdit = [`QTextEdit | qAbstractScrollArea]
type qTextBrowser = [`QTextBrowser | qTextEdit]
type qColumnView = [`QColumnView | qAbstractItemView]
type qHeaderView = [`QHeaderView | qAbstractItemView]
type qListView = [`QListView | qAbstractItemView]
type qTableView = [`QTableView | qAbstractItemView]
type qTreeView = [`QTreeView | qAbstractItemView]
type qTreeWidget = [`QTreeWidget | qTreeView]
type qTableWidget = [`QTableWidget | qTableView]
type qListWidget = [`QListWidget | qListView]
type qUndoView = [`QUndoView | qListView]
