open Cuite

let resource name = ("./" ^ name)

let option_iter o f =
  match o with
  | None -> ()
  | Some v -> f v

let qignore : _ qt -> unit = ignore

let make_action this title
    ?icon ?tip ?slot ?fn
    ?shortcut ?key
    ?checkable
    ?menu
    () =
  let action =
    match icon with
    | None -> new'QAction'from'QString'QObject title this
    | Some icon -> new'QAction'from'QIcon'QString'QObject (new'QIcon'from'QString icon) title this
  in
  option_iter tip (QAction.setStatusTip action);
  option_iter slot (fun (target, slot) ->
      Qt.connect_slot action QAction.signal'triggered target slot);
  option_iter fn (Qt.connect action QAction.signal'triggered);
  option_iter shortcut (QAction.setShortcuts action);
  option_iter key (fun key -> QAction.setShortcut action
                      (new'QKeySequence'from'QString'SequenceFormat key `PortableText));
  option_iter checkable (QAction.setCheckable action);
  action

let make_menu menubar title items =
  let item = QMenuBar.addMenu'from'QString menubar title in
  List.iter (function
      | `Action action ->
        QWidget.addAction item action
      | `Separator ->
        qignore (QMenu.addSeparator item)
    ) items;
  item

let make_dynamic_menu menubar title fn =
  let item = QMenuBar.addMenu'from'QString menubar title in
  fn item;
  Qt.connect item (QMenu.signal'aboutToShow)
    (fun () -> fn item);
  item

let make_toolbar this title items =
  let toolbar = QMainWindow.addToolBar'from'QString this title in
  List.iter (function
      | `Action act -> QWidget.addAction toolbar act
    ) items;
  toolbar

module OQamlDebug(P : sig val app : qApplication qt end) =
struct
  let version = "0.0"

  let window = new'QMainWindow None QFlags.empty

  let () =
    QMainWindow.setWindowTitle window "OQamlDebug";
    QMainWindow.setUnifiedTitleAndToolBarOnMac window true;
    QMainWindow.setWindowIcon window
      (new'QIcon'from'QString (resource "images/oqamldebug.png"));
    QMainWindow.setDockNestingEnabled window true

  let mdiarea = new'QMdiArea None

  let () =
    QMdiArea.setHorizontalScrollBarPolicy mdiarea `ScrollBarAsNeeded;
    QMdiArea.setVerticalScrollBarPolicy mdiarea `ScrollBarAsNeeded;
    QMainWindow.setCentralWidget window mdiarea;
    let mapper = new'QSignalMapper (Some window) in
    Qt.connect mapper QSignalMapper.signal'mapped'from'QWidget
      (fun widget -> match Qt.cast widget (QMdiSubWindow.class'()) with
         | None -> ()
         | Some mapped -> QMdiArea.setActiveSubWindow mdiarea mapped)

  let about () =
    QMessageBox.about window "About OQamlDebug"
      (Printf.sprintf
         "<center><b>OQamlDebug</b> graphical frontend for OCamlDebug</center><BR>\
          <TABLE border=\"0\"><TR>\
          <TH>Homepage:</TH>\
          <TD><a href=\"https://forge.ocamlcore.org/projects/oqamldebug/\">https://forge.ocamlcore.org/projects/oqamldebug/</a></TD>\
          </TR><TR>\
          <TH>Version:</TH>\
          <TD>%s</TD>\
          </TR><TR>\
          <TH>License:</TH>\
          <TD><a href=\"http://www.gnu.org/licenses/gpl-3.0.en.html\">GPLv3</a> &copy;&nbsp;<a href=\"mailto:sebastien.fricker@gmail.com\">S&eacute;bastien Fricker</a></TD>\
          </TR></TABLE>"
         version
      )

  let help =
    let help_p = lazy (
      let help_p = new'QTextBrowser None in
      QTextBrowser.setReadOnly help_p true;
      QTextBrowser.setWindowTitle help_p "Help";
      let file = new'QFile'from'QString (resource "readme.html") in
      if QFile.open_'from'OpenMode file (QFlags.singleton qIODevice'OpenMode `ReadOnly) then
        QTextBrowser.setHtml help_p (QByteArray.data (QFile.readAll file));
      Qt.delete file;
      help_p
    ) in
    fun () -> QTextBrowser.show (Lazy.force help_p)

  let make_action title = make_action window title

  let active_ocaml_source () =
    match QMdiArea.activeSubWindow mdiarea with
    | None -> None
    | Some _ -> Some ()

  let setWorkingDirectory = ignore
  let setOCamlDebugArgs = ignore
  let setOCamlDebugInitScript = ignore
  let createWatchWindow = ignore
  let updateWindowMenu = ignore
  let copy = ignore
  let debuggerStart = ignore
  let debugRun = ignore
  let debugNext = ignore
  let debugPrevious = ignore
  let debugFinish = ignore
  let debugBackStep = ignore
  let debugReverse = ignore
  let debugStep = ignore
  let debugInterrupt = ignore
  let debugDown = ignore
  let debugUp = ignore

  let setOCamlDebugArgsAct =
    make_action "&Command Line Arguments..."
      ~tip:"Set OCamlDebug command line arguments"
      ~fn:setOCamlDebugArgs
      ()

  let setWorkingDirectoryAct =
    make_action "&Working directory..."
      ~tip:"Set current working directory"
      ~fn:setWorkingDirectory
      ()

  let setOCamlDebugInitScriptAct =
    make_action "&OCamlDebug Initialization Script..."
      ~tip:"Set an initialization script executed just after ocamldebug is initialized."
      ~fn:setOCamlDebugInitScript
      ()

  let createWatchWindowAct =
    make_action "&Create Watch Window..." ~icon:(resource "images/watch.png")
      ~key:"Ctrl+W"
      ~tip:"Create a variable watch window"
      ()
      ~fn:createWatchWindow

  let exitAct =
    make_action "E&xit"
      ~tip:"Exit the application"
      ~shortcut:`Quit
      ~slot:(P.app,QApplication.slot'closeAllWindows)
      ()

  let copyAct =
    make_action "&Copy" ~icon:(resource "images/copy.png")
      ~tip:"Copy the current selection's contents to the clipboard"
      ~shortcut:`Copy
      ~fn:copy
      ()

  let closeAct =
    make_action "Cl&ose"
      ~tip:"Close the active window"
      ~slot:(mdiarea,QMdiArea.slot'closeActiveSubWindow)
      ()

  let closeAllAct =
    make_action "Close &All"
      ~tip:"Close all the windows"
      ~slot:(mdiarea,QMdiArea.slot'closeAllSubWindows)
      ()

  let tileAct =
    make_action "&Tile"
      ~tip:"Tile the windows"
      ~slot:(mdiarea,QMdiArea.slot'tileSubWindows)
      ()

  let cascadeAct =
    make_action "&Cascade"
      ~tip:"Cascade the windows"
      ~slot:(mdiarea,QMdiArea.slot'cascadeSubWindows)
      ()

  let nextAct =
    make_action "Ne&xt"
      ~tip:"Move the focus to the next window"
      ~shortcut:`NextChild
      ~slot:(mdiarea,QMdiArea.slot'activateNextSubWindow)
      ()

  let previousAct =
    make_action "Pre&vious"
      ~tip:"Move the focus to the previous window"
      ~shortcut:`PreviousChild
      ~slot:(mdiarea,QMdiArea.slot'activatePreviousSubWindow)
      ()

  let separatorAct =
    let sep = new'QAction (Some window) in
    QAction.setSeparator sep true;
    sep

  let helpAct =
    make_action "&Help"
      ~fn:(fun _ -> help ())
      ()

  let aboutAct =
    make_action "&About"
      ~tip:"Show the application's About box"
      ~fn:(fun _ -> about ())
      ()

  let aboutQtAct =
    make_action "About &Qt"
      ~tip:"Show the Qt library's About box"
      ~slot:(P.app,QApplication.slot'aboutQt)
      ()

  let debuggerStartAct =
    make_action "&Start" ~icon:(resource "images/debugger.png")
      ~key:"Ctrl+Shift+S"
      ~checkable:true
      ~tip:"Start/Stop the ocamldebug process"
      ~fn:debuggerStart
      ()

  let debugReverseAct =
    make_action "&Reverse" ~icon:(resource "images/debug-reverse.png")
      ~tip:"Reverse execution of the application"
      ~key:"Ctrl+E"
      ~fn:debugReverse
      ()

  let debugRunAct =
    make_action "&Run" ~icon:(resource "images/debug-run.png")
      ~key:"Ctrl+R"
      ~tip:"Execution of the application"
      ~fn:debugRun
      ()

  let debugNextAct =
    make_action "&Next" ~icon:(resource "images/debug-next.png")
      ~key:"Ctrl+N"
      ~tip:"Step over (Mouse Wheel with Ctrl)"
      ~fn:debugNext
      ()

  let debugPreviousAct =
    make_action "&Previous" ~icon:(resource "images/debug-previous.png")
      ~key:"Ctrl+P"
      ~tip:"Back step over (Mouse Wheel with Ctrl)"
      ~fn:debugPrevious
      ()

  let debugFinishAct =
    make_action "&Finish" ~icon:(resource "images/debug-finish.png")
      ~tip:"Run until function exit"
      ~key:"Ctrl+F"
      ~fn:debugFinish
      ()

  let debugBackStepAct =
    make_action "&Back Step" ~icon:(resource "images/debug-backstep.png")
      ~tip:"Step into (Mouse Wheel with Shift)"
      ~key:"Ctrl+B"
      ~fn:debugBackStep
      ()

  let debugStepAct =
    make_action "&Step" ~icon:(resource "images/debug-step.png")
      ~key:"Ctrl+S"
      ~tip:"Back step into (Mouse Wheel with Shift)"
      ~fn:debugStep
      ()

  let debugInterruptAct =
    make_action "&Interrupt" ~icon:(resource "images/debug-interrupt.png")
      ~key:"Ctrl+C"
      ~tip:"Interrupt the execution of the application"
      ~fn:debugInterrupt
      ()

  let debugDownAct =
    make_action "&Down" ~icon:(resource "images/debug-down.png")
      ~key:"Ctrl+D"
      ~tip:"Call stack down (Mouse Wheel with Shift+Ctrl)"
      ~fn:debugDown
      ()

  let debugUpAct =
    make_action "&Up" ~icon:(resource "images/debug-up.png")
      ~key:"Ctrl+U"
      ~tip:"Call stack up (Mouse Wheel with Shift+Ctrl)"
      ~fn:debugUp
      ()

  let menu_bar = QMainWindow.menuBar window

  let _ : _ qt = make_menu menu_bar "&Main" [
      `Action setOCamlDebugArgsAct;
      `Action setOCamlDebugInitScriptAct;
      `Action setWorkingDirectoryAct;
      `Separator;
      `Action exitAct;
    ]

  let _ : _ qt = make_menu menu_bar "&Debug" [
      `Action debuggerStartAct;
      `Action debugReverseAct;
      `Action debugPreviousAct;
      `Action debugBackStepAct;
      `Action debugStepAct;
      `Action debugNextAct;
      `Action debugFinishAct;
      `Action debugRunAct;
      `Action debugInterruptAct;
      `Separator;
      `Action debugDownAct;
      `Action debugUpAct;
      `Separator;
      `Action createWatchWindowAct;
    ]

  let _ : _ qt = make_menu menu_bar "&Edit" [
      `Action copyAct;
    ]

  let windowMenu =
    make_dynamic_menu menu_bar "&Window" updateWindowMenu

  let _ : _ qt = QMenuBar.addSeparator menu_bar

  let _ : _ qt = make_menu menu_bar "&Help" [
      `Action helpAct;
      `Action aboutAct;
      `Action aboutQtAct;
    ]

  let mainToolBar = make_toolbar window "Main" []

  let _editToolBar = make_toolbar window "Edit" [
      `Action copyAct
    ]

  let _debugToolBar = make_toolbar window "Debug" [
      `Action debuggerStartAct;
      `Action debugReverseAct;
      `Action debugPreviousAct;
      `Action debugBackStepAct;
      `Action debugStepAct;
      `Action debugNextAct;
      `Action debugFinishAct;
      `Action debugRunAct;
      `Action debugInterruptAct;
      `Action debugDownAct;
      `Action debugUpAct;
    ]

  let debugWindowToolBar = make_toolbar window "Debug Windows" [
      `Action createWatchWindowAct;
    ]

  let () =
    QStatusBar.showMessage'from'QString (QMainWindow.statusBar window) "Ready"

  let () =
    let update_menu _ =
      let hasChild, hasSelection =
        match active_ocaml_source () with
        | None -> false, false
        | Some _ -> true, true
        (*activeMdiChild()->textCursor().hasSelection()*)
      in
      List.iter (fun act -> QAction.setEnabled act hasChild)
        [closeAct; closeAllAct; tileAct; cascadeAct; nextAct; previousAct];
      QAction.setVisible separatorAct hasChild;
      QAction.setEnabled copyAct hasSelection;
    in
    Qt.connect mdiarea QMdiArea.signal'subWindowActivated update_menu

  let fileBrowserPathChanged = ignore
  let fileBrowserItemActivated = ignore

  let create_dock ?widget this ~title ~name ~icon =
    let dock = new'QDockWidget title (Some this) QFlags.empty in
    QDockWidget.setAllowedAreas dock
      (QFlags.of_list qt'DockWidgetAreas
        [ `TopDockWidgetArea ; `BottomDockWidgetArea
        ; `LeftDockWidgetArea ; `RightDockWidgetArea ]);
    QDockWidget.setObjectName dock name;
    let action = QDockWidget.toggleViewAction dock in
    QMenu.addAction'from'QAction windowMenu action;
    QToolBar.addAction'from'QAction mainToolBar action;
    QMainWindow.addDockWidget'from'DockWidgetArea'QDockWidget
      this `BottomDockWidgetArea dock;
    QAction.setIcon action (new'QIcon'from'QString icon);
    option_iter widget (QDockWidget.setWidget dock);
    dock

  let filebrowser_dock =
    let filebrowser = new'QTreeView None in
    let filebrowser_model_p = new'QFileSystemModel None in
    QFileSystemModel.setNameFilters filebrowser_model_p
      (let lst = new'QStringList () in
       QStringList.append lst "*.ml";
       lst);
    QFileSystemModel.setReadOnly filebrowser_model_p true;
    QFileSystemModel.setFilter filebrowser_model_p
      (QFlags.of_list qDir'Filters [`AllDirs;`AllEntries;`NoDot]);
    QFileSystemModel.setNameFilterDisables filebrowser_model_p false;
    QTreeView.setModel filebrowser filebrowser_model_p;
    QTreeView.setItemsExpandable filebrowser false;
    QTreeView.setSortingEnabled filebrowser true;
    QTreeView.setRootIsDecorated filebrowser false;
    ignore (QHeaderView.restoreState (QTreeView.header filebrowser)
              (new'QByteArray()) : bool)
    (*TODO Options::get_opt_array( "FILEBROWSER_STATE" )*);
    Qt.connect filebrowser QTreeView.signal'activated
      (fun item ->
         let file = QFileSystemModel.filePath filebrowser_model_p item in
         let fileinfo = new'QFileInfo'from'QString file in
         if QFileInfo.isDir fileinfo then
           QTreeView.setRootIndex filebrowser
             (QFileSystemModel.setRootPath filebrowser_model_p file)
         else
           ()
           (* TODO
              openOCamlSource( file, true );
              ocamlDebugFocus(); *)
      );
    let dock = create_dock window
      ~title:"Source File Browser"
      ~name:"FileBrowser"
      ~icon:(resource "images/open.png")
      ~widget:filebrowser
    in
    Qt.connect filebrowser_model_p QFileSystemModel.signal'rootPathChanged
      (fun path ->
         QDockWidget.setWindowTitle dock path;
        (*TODO Options::set_opt( "SOURCE_DIRECTORY", path );*)
      );
    (*QDockWidget.setTitleBarWidget filebrowser_dock (new'QLabel None QFlags.empty);*)
    (*QString dir = Options::get_opt_str( "SOURCE_DIRECTORY", QDir::current().path() );*)
    let source_directory = "TODO" in
    QTreeView.setRootIndex filebrowser
      (QFileSystemModel.setRootPath filebrowser_model_p source_directory);
    dock

  let ocamlrun_dock =
    create_dock window
      ~title:"Application Output"
      ~name:"OCamlRun"
      ~icon:(resource "images/terminal.png")
      ?widget:None (* TODO new OCamlRun( ocamlrun_dock, args ); *)

  let ocamldebug_dock =
    create_dock window
      ~title:"OCamlDebug"
      ~name:"OCamlDebugDock"
      ~icon:(resource "images/oqamldebug.png")
      ?widget:None (*TODO OCamlDebug( ocamldebug_dock , ocamlrun, _ocamldebug, args, _ocamldebug_init_script );*)
    (* TODO
       connect(ocamldebug, SIGNAL(stopDebugging(const QString &, int, int, bool)), this, SLOT(stopDebugging(const QString &, int, int, bool)));
       connect(ocamldebug, SIGNAL(debuggerStarted(bool)) , this ,SLOT(debuggerStarted(bool)));
       connect(ocamldebug, SIGNAL(breakPointList(const BreakPoints &)), this, SLOT(breakPointList(const BreakPoints &)));
       connect(ocamldebug, SIGNAL(debuggerStarted(bool)), ocamlrun, SLOT(debuggerStarted(bool)));
       ocamldebug->startDebug();
       QList<int> watch_ids = Options::get_opt_intlst( "WATCH_IDS" );
       for (QList<int>::const_iterator itId = watch_ids.begin(); itId != watch_ids.end(); ++itId)
            createWatchWindow( *itId );
    *)
  let ocamlbreakpoints_dock =
    create_dock window
      ~title:"Breakpoints"
      ~name:"Breakpoints"
      ~icon:(resource "images/breakpoints.png")
      ?widget:None (*new OCamlBreakpoint(ocamlbreakpoints_dock)*)
  (* connect( ocamlbreakpoints, SIGNAL( debugger( const DebuggerCommand & ) ), ocamldebug, SLOT( debugger( const DebuggerCommand & ) ) );
    connect ( ocamldebug , SIGNAL( stopDebugging( const QString &, int , int , bool) ) , ocamlbreakpoints  ,SLOT( stopDebugging( const QString &, int , int , bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , ocamlbreakpoints  ,SLOT( debuggerStarted( bool) ) );
    connect ( ocamldebug , SIGNAL( breakPointList( const BreakPoints &) ) , ocamlbreakpoints ,SLOT( breakPointList( const BreakPoints &) ) );
    connect ( ocamldebug , SIGNAL( breakPointHit( const QList<int> &) ) , ocamlbreakpoints ,SLOT( breakPointHit( const QList<int> &) ) );
  *)
  let ocamlstack_dock =
    create_dock window
      ~title:"Stack"
      ~name:"stack"
      ~icon:(resource "images/callstack.png")
      ?widget:None (*TODO new OCamlStack(ocamlstack_dock*)
  (*
    connect(ocamlstack, SIGNAL(debugger(const DebuggerCommand &)), ocamldebug, SLOT(debugger(const DebuggerCommand &)));
    connect(ocamldebug,SIGNAL(stopDebugging(const QString &, int,int,bool)),ocamlstack,SLOT(stopDebugging(const QString &,int,int,bool)));
    connect(ocamldebug,SIGNAL(debuggerStarted(bool)),ocamlstack ,SLOT(debuggerStarted(bool)));
    connect(ocamldebug,SIGNAL(debuggerCommand(const QString &, const QString &)),ocamlstack ,SLOT(debuggerCommand(const QString &,const QString &)));
  *)

  let read_settings () = () (* TODO *)
  let write_settings () = () (* TODO *)

  let () = ()
    (*ocamlDebugFocus();*)
end

let () =
  let app = new'QApplication Sys.argv in
  let module OQamlDebug = OQamlDebug(struct
      let app = app
    end)
  in
  QMainWindow.show OQamlDebug.window;
  exit (QApplication.exec ())

(* _ocamldebug = findOCamlDebug();
   if ( _ocamldebug.isEmpty() )
   {
      QMessageBox::critical( this, "OCamlDebug",
              "OCamlDebug executable could not be found into the executable path!" );
      exit( -1 );
   }
   _ocamldebug_init_script = Options::get_opt_str("OCAMLDEBUG_INIT_SCRIPT" , QString() );
*)

  (*
    readSettings();
    ocamlDebugFocus();
}

MainWindow::~MainWindow()
{
    if ( filebrowser )
        Options::set_opt( "FILEBROWSER_STATE", filebrowser->header()->saveState() );
}


void MainWindow::createWatchWindow()
{
    int watch_id ;
    for ( watch_id=1 ; watch_id < 10; watch_id++ )
    {
        if ( !_watch_ids.contains( watch_id ) )
        {
            createWatchWindow( watch_id );
            return;
        }
    }
}

void MainWindow::createWatchWindow( int watch_id )
{
    _watch_ids << watch_id ;

    QDockWidget *dock = new QDockWidget( "Watch %1".arg( QString::number(watch_id) ), this );
    dock->setAttribute( Qt::WA_DeleteOnClose );
    dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    OCamlWatch *ocamlwatch = new OCamlWatch( dock, watch_id );
    connect ( ocamldebug , SIGNAL( stopDebugging( const QString &, int , int , bool) ) , ocamlwatch ,SLOT( stopDebugging( const QString &, int , int , bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerCommand( const QString &, const QString &) ) , ocamlwatch ,SLOT( debuggerCommand( const QString &, const QString &) ) );
    connect( ocamlwatch, SIGNAL( debugger( const DebuggerCommand & ) ), ocamldebug, SLOT( debugger( const DebuggerCommand & ) ) );
    connect( ocamlwatch, SIGNAL( destroyed( QObject* ) ), this, SLOT( watchWindowDestroyed( QObject* ) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , ocamlwatch ,SLOT( debuggerStarted( bool) ) );
    dock->setObjectName(QString("OCamlWatchDock%1").arg( QString::number(watch_id) ));
    dock->setWidget( ocamlwatch );
    addDockWidget( Qt::BottomDockWidgetArea, dock );

    _watch_windows.append( ocamlwatch );
    Options::set_opt( "WATCH_IDS", _watch_ids );
}

void MainWindow::watchWindowDestroyed( QObject *o )
{
    OCamlWatch *watch = static_cast<OCamlWatch*>( o );
    if ( watch )
    {
        if ( _watch_windows.contains( watch ) )
        {
            Options::set_opt( QString("OCamlWatch%0_VARIABLES").arg(watch->id), QStringList() );
            _watch_ids.removeAll( watch->id );
            _watch_windows.removeAll( watch );
            Options::set_opt( "WATCH_IDS", _watch_ids );
        }
    }
}

void MainWindow::closeEvent( QCloseEvent *event )
{
    writeSettings();
    mdiarea->closeAllSubWindows();
    if ( mdiarea->currentSubWindow() )
    {
        event->ignore();
    }
    else
    {
        event->accept();
    }
}

QMdiSubWindow* MainWindow::openOCamlSource(const QString &fileName, bool from_user_loaded)
{
    if ( !fileName.isEmpty() )
    {
        QMdiSubWindow *existing = findMdiChild( fileName );
        if ( existing )
        {
            mdiarea->setActiveSubWindow( existing );
            OCamlSource *child = qobject_cast<OCamlSource *>( existing );
            if (child)
                child->setFromUserLoaded( child->fromUserLoaded() || from_user_loaded );
            return NULL;
        }

        if ( ! from_user_loaded )
        {
            existing = findMdiChildNotLoadedFromUser( );
            if ( existing )
            {
                mdiarea->setActiveSubWindow( existing );
                OCamlSource *child = qobject_cast<OCamlSource *>( existing );
                if (child)
                {
                    child->setFromUserLoaded( false );
                    if ( child->loadFile( fileName ) )
                    {
                        statusBar()->showMessage( "File loaded", 2000 );
                        child->show();
                    }
                    else
                    {
                        child->close();
                    }
                }
                return NULL;
            }
        }

        OCamlSource *child = createMdiChild();
        child->setFromUserLoaded( from_user_loaded );
        if ( child->loadFile( fileName ) )
        {
            statusBar()->showMessage( "File loaded", 2000 );
            if ( ocamldebug )
                child->breakPointList( ocamldebug->breakpoints() );
            child->show();
        }
        else
        {
            child->close();
        }
        return findMdiChild( fileName );
    }
    return NULL;
}

void MainWindow::setOCamlDebugArgs()
{
    bool ok;
    Arguments arguments = _arguments;
    if (arguments.isEmpty())
        arguments = Arguments( Options::get_opt_strlst("ARGUMENTS") );
    QString text = QInputDialog::getText(this, "OCamlDebug Command Line Arguments",
            "Arguments:", QLineEdit::Normal,
            arguments.toString(), &ok);
    if (ok && !text.isEmpty())
    {
        _arguments = Arguments( text );
        Options::set_opt("ARGUMENTS",_arguments.all());
        if (ocamldebug)
        {
            Arguments args( _arguments );
            ocamldebug->setArguments( args );
            ocamldebug->setOCamlDebug( _ocamldebug );
            ocamldebug->setInitializationScript( _ocamldebug_init_script );
        }
    }
}

void MainWindow::setWorkingDirectory()
{
    QString working_directory = QFileDialog::getExistingDirectory(this,
            "Working Directory",
            Options::get_opt_s"WORKING_DIRECTORY"
            );
    if (!working_directory.isEmpty())
    {
        Options::set_opt("WORKING_DIRECTORY", working_directory);
        QDir::setCurrent( Options::get_opt_s"WORKING_DIRECTORY" );
    }
}

void MainWindow::setOCamlDebugInitScript()
{
    QFileInfo ocamldebug_exx_info ( Options::get_opt_s"OCAMLDEBUG_INIT_SCRIPT" );
    _ocamldebug_init_script = QFileDialog::getOpenFileName(this,
            "OCamlDebug Executable",
            ocamldebug_exx_info.absolutePath(),
#if defined(Q_OS_UNIX)
            "OCamlDebug Initialization Script (*)"
#else
            "OCamlDebug Initialization Script (*.*)"
#endif
#if defined(Q_OS_MAC)
            ,NULL,
            QFileDialog::DontUseNativeDialog
#endif
            );
    Options::set_opt("OCAMLDEBUG_INIT_SCRIPT", _ocamldebug_init_script);
    if (ocamldebug)
        ocamldebug->setInitializationScript( _ocamldebug_init_script );
}

void MainWindow::copy()
{
    if ( activeMdiChild() )
        activeMdiChild()->copy();
}

OCamlSource *MainWindow::createMdiChild()
{
    OCamlSource *child = new OCamlSource;
    mdiarea->addSubWindow( child );

    connect( child, SIGNAL( copyAvailable( bool ) ),
             copyAct, SLOT( setEnabled( bool ) ) );

    connect( child, SIGNAL( debugger( const DebuggerCommand & ) ),
             ocamldebug, SLOT( debugger( const DebuggerCommand & ) ) );

    connect( child, SIGNAL( releaseFocus() ),
             this, SLOT( ocamlDebugFocus() ) );

    connect( child, SIGNAL( printVariable( const QString & ) ),
             this, SLOT( printVariable( const QString & ) ) );

    connect( child, SIGNAL( watchVariable( const QString & ) ),
             this, SLOT( watchVariable( const QString & ) ) );

    connect( child, SIGNAL( displayVariable( const QString & ) ),
             this, SLOT( displayVariable( const QString & ) ) );

    return child;
}

OCamlSource *MainWindow::activeMdiChild()
{
    if ( QMdiSubWindow *activeSubWindow = mdiarea->activeSubWindow() )
        return qobject_cast<OCamlSource *>( activeSubWindow->widget() );
    return 0;
}

QMdiSubWindow *MainWindow::findMdiChildNotLoadedFromUser()
{
    foreach ( QMdiSubWindow * window, mdiarea->subWindowList() )
    {
        OCamlSource *mdiChild = qobject_cast<OCamlSource *>( window->widget() );
        if (mdiChild)
        {
            if ( ! mdiChild->fromUserLoaded() )
                return window;
        }
    }
    return 0;
}

QMdiSubWindow *MainWindow::findMdiChild( const QString &fileName )
{
    QString canonicalFilePath = QFileInfo( fileName ).canonicalFilePath();

    foreach ( QMdiSubWindow * window, mdiarea->subWindowList() )
    {
        OCamlSource *mdiChild = qobject_cast<OCamlSource *>( window->widget() );
        if (mdiChild)
        {
            if ( mdiChild->currentFile() == canonicalFilePath )
                return window;
        }
    }
    return 0;
}

void MainWindow::setActiveSubWindow( QWidget *window )
{
    if ( !window )
        return;
    mdiarea->setActiveSubWindow( qobject_cast<QMdiSubWindow *>( window ) );
}

void MainWindow::stopDebugging( const QString &file, int start_char, int end_char, bool after)
{
    statusBar()->showMessage( QString() );
    if ( ! file.isEmpty() )
    {
        openOCamlSource( file , false );
        OCamlSource *current_source_p = activeMdiChild();
        QString text = current_source_p->stopDebugging( file, start_char, end_char, after) ;
        if ( ! text.isEmpty() )
        {
            if (after)
                statusBar()->showMessage( "Stopped after '%1'".arg(text) );
            else
                statusBar()->showMessage( "Stopped before '%1'".arg(text) );
        }

        foreach ( QMdiSubWindow * window, mdiarea->subWindowList() )
        {
            OCamlSource *mdiChild = qobject_cast<OCamlSource *>( window->widget() );
            if (mdiChild)
            {
                if (mdiChild != current_source_p)
                    mdiChild->stopDebugging( QString(), 0, 0, after) ;
            }
        }
        ocamlDebugFocus();
    }
}

void MainWindow::ocamlDebugFocus()
{
    if (ocamldebug)
        ocamldebug->setFocus();
}

void MainWindow::debugUp()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "up", DebuggerCommand::HIDE_DEBUGGER_OUTPUT ) );
}

void MainWindow::debugDown()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "down",DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugInterrupt()
{
    if (ocamldebug)
        ocamldebug->debuggerInterrupt();
}

void MainWindow::debugRun()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "run",DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugFinish()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "finish",DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugReverse()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "reverse", DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugStep()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "step", DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugBackStep()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "backstep", DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugNext()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "next", DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::debugPrevious()
{
    if (ocamldebug)
        ocamldebug->debugger( DebuggerCommand( "previous", DebuggerCommand::HIDE_DEBUGGER_OUTPUT) );
}

void MainWindow::breakPointList(const BreakPoints &b)
{
    foreach ( QMdiSubWindow * window, mdiarea->subWindowList() )
    {
        OCamlSource *mdiChild = qobject_cast<OCamlSource *>( window->widget() );
        if (mdiChild)
            mdiChild->breakPointList( b );
    }
}

void MainWindow::debuggerStarted(bool b)
{
    debuggerStartAct->setChecked(b) ;
}

void MainWindow::debuggerStart(bool b)
{
    if (ocamldebug)
    {
        if (b)
            ocamldebug->startDebug();
        else
            ocamldebug->stopDebug();
    }
}

void MainWindow::displayVariable( const QString &val )
{
    if ( ocamldebug )
    {
        QString command = QString("display %1").arg(val);
        ocamldebug->debugger( DebuggerCommand( command , DebuggerCommand::SHOW_ALL_OUTPUT) );
    }
}

void MainWindow::printVariable( const QString &val )
{
    if ( ocamldebug )
    {
        QString command = QString("print %1").arg(val);
        ocamldebug->debugger( DebuggerCommand( command , DebuggerCommand::SHOW_ALL_OUTPUT) );
    }
}

void MainWindow::watchVariable( const QString &val )
{
    if ( ocamldebug )
    {
        if ( _watch_windows.isEmpty() )
            createWatchWindow();
        if ( !_watch_windows.isEmpty() )
            _watch_windows.last()->watch( val, true );
    }
}

void MainWindow::fileBrowserItemActivated( const QModelIndex &item )
{
    QString file = filebrowser_model_p->filePath( item ) ;
    QFileInfo fileInfo( file );
    if (  fileInfo.isDir() )
    {
        filebrowser_model_p->setRootPath( file );
        filebrowser->setRootIndex( filebrowser_model_p->index( file ) );
    }
    else
    {
        openOCamlSource( file, true );
        ocamlDebugFocus();
    }
}

QString MainWindow::findOCamlDebug() const
{
    const QString path = ::getenv( "PATH" );
#if Q_OS_WIN32
    const QString path_separator = ";";
    const QString extension = ".exe";
#else
    const QString path_separator = ":";
    const QString extension = "";
#endif

    QStringList paths = path.split( path_separator );
#if Q_OS_WIN32
    paths.prepend( QCoreApplication::applicationDirPath() );
#endif

    for( QStringList::const_iterator itPath = paths.begin(); itPath != paths.end(); ++itPath )
    {
        QString executable = *itPath + "/ocamldebug" + extension;
        QFileInfo executable_info( executable );
        if ( executable_info.isExecutable() )
            return QDir::toNativeSeparators( executable_info.absoluteFilePath() );
    }

    return QString();
}

   *)
