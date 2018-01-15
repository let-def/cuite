open Cuite

let version = "0.0"

let about this =
  QMessageBox.about this "About OQamlDebug"
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
    let file = new'QFile'from'QString ":/readme.html" in
    if QFile.open_ file (QFlags.singleton qIODevice'OpenMode `ReadOnly) then
      QTextBrowser.setHtml help_p (QByteArray.data (QFile.readAll file));
    Qt.delete file;
    help_p
  ) in
  fun () -> QTextBrowser.show (Lazy.force help_p)

let update_menu _ = ()

let option_iter o f =
  match o with
  | None -> ()
  | Some v -> f v

let qignore : _ qt -> unit = ignore

let make_menu menubar items =
  List.iter (function
      | `Separator ->
        qignore (QMenuBar.addSeparator menubar)
      | `Sub (title, items) ->
        let top = QMenuBar.addMenu'from'QString menubar title in
        List.iter (function
            | `Action action ->
              QWidget.addAction top action
            | `Separator ->
              qignore (QMenu.addSeparator top)
          ) items
      | `Dynamic (title, fn) ->
        let top = QMenuBar.addMenu'from'QString menubar title in
        fn top;
        Qt.connect top (QMenu.signal'aboutToShow)
          (fun () -> fn top)
    ) items

let make_toolbar this title items =
  let toolbar = QMainWindow.addToolBar'from'QString this title in
  List.iter (function
      | `Action act -> QWidget.addAction toolbar act
    ) items;
  toolbar


let create_actions_and_menus app this mdiArea
    ~setWorkingDirectory
    ~setOCamlDebugArgs
    ~setOCamlDebugInitScript
    ~createWatchWindow
    ~updateWindowMenu
    ~copy
    ~about
    ~help
    ~debuggerStart
    ~debugRun
    ~debugNext
    ~debugPrevious
    ~debugFinish
    ~debugBackStep
    ~debugReverse
    ~debugStep
    ~debugInterrupt
    ~debugDown
    ~debugUp
  =
  let action
      ?icon ?tip ?slot ?fn
      ?shortcut ?key
      ?checkable
      ?menu
      title =
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
  in
  let setOCamlDebugArgsAct =
    action "&Command Line Arguments..."
      ~tip:"Set OCamlDebug command line arguments"
      ~fn:setOCamlDebugArgs
  in
  let setWorkingDirectoryAct =
    action "&Working directory..."
      ~tip:"Set current working directory"
      ~fn:setWorkingDirectory
  in
  let setOCamlDebugInitScriptAct =
    action "&OCamlDebug Initialization Script..."
      ~tip:"Set an initialization script executed just after ocamldebug is initialized."
      ~fn:setOCamlDebugInitScript
  in
  let createWatchWindowAct =
    action "&Create Watch Window..." ~icon:":/images/watch.png"
      ~key:"Ctrl+W"
      ~tip:"Create a variable watch window"
      ~fn:createWatchWindow
  in
  let exitAct =
    action "E&xit"
      ~tip:"Exit the application"
      ~shortcut:`Quit
      ~slot:(app,QApplication.slot'closeAllWindows)
  in
  let copyAct =
    action "&Copy" ~icon:":/images/copy.png"
      ~tip:"Copy the current selection's contents to the clipboard"
      ~shortcut:`Copy
      ~fn:copy
  in
  let closeAct =
    action "Cl&ose"
      ~tip:"Close the active window"
      ~slot:(mdiArea,QMdiArea.slot'closeActiveSubWindow)
  in
  let closeAllAct =
    action "Close &All"
      ~tip:"Close all the windows"
      ~slot:(mdiArea,QMdiArea.slot'closeAllSubWindows)
  in
  let tileAct =
    action "&Tile"
      ~tip:"Tile the windows"
      ~slot:(mdiArea,QMdiArea.slot'tileSubWindows)
  in
  let cascadeAct =
    action "&Cascade"
      ~tip:"Cascade the windows"
      ~slot:(mdiArea,QMdiArea.slot'cascadeSubWindows)
  in
  let nextAct =
    action "Ne&xt"
      ~tip:"Move the focus to the next window"
      ~shortcut:`NextChild
      ~slot:(mdiArea,QMdiArea.slot'activateNextSubWindow)
  in
  let previousAct =
    action "Pre&vious"
      ~tip:"Move the focus to the previous window"
      ~shortcut:`PreviousChild
      ~slot:(mdiArea,QMdiArea.slot'activatePreviousSubWindow)
  in
  let separatorAct = new'QAction this in
  QAction.setSeparator separatorAct true;
  let helpAct =
    action "&Help"
      ~fn:help
  in
  let aboutAct =
    action "&About"
      ~tip:"Show the application's About box"
      ~fn:about
  in
  let aboutQtAct =
    action "About &Qt"
      ~tip:"Show the Qt library's About box"
      ~slot:(app,QApplication.slot'aboutQt)
  in
  let debuggerStartAct =
    action "&Start" ~icon:":/images/debugger.png"
      ~key:"Ctrl+Shift+S"
      ~checkable:true
      ~tip:"Start/Stop the ocamldebug process"
      ~fn:debuggerStart
  in
  let debugReverseAct =
    action "&Reverse" ~icon:":/images/debug-reverse.png"
      ~tip:"Reverse execution of the application"
      ~key:"Ctrl+E"
      ~fn:debugReverse
  in
  let debugRunAct =
    action "&Run" ~icon:":/images/debug-run.png"
    ~key:"Ctrl+R"
    ~tip:"Execution of the application"
    ~fn:debugRun
  in
  let debugNextAct =
    action "&Next" ~icon:":/images/debug-next.png"
      ~key:"Ctrl+N"
      ~tip:"Step over (Mouse Wheel with Ctrl)"
      ~fn:debugNext
  in
  let debugPreviousAct =
    action "&Previous" ~icon:":/images/debug-previous.png"
    ~key:"Ctrl+P"
    ~tip:"Back step over (Mouse Wheel with Ctrl)"
    ~fn:debugPrevious
  in
  let debugFinishAct =
    action "&Finish" ~icon:":/images/debug-finish.png"
    ~tip:"Run until function exit"
      ~key:"Ctrl+F"
    ~fn:debugFinish
  in
  let debugBackStepAct =
    action "&Back Step" ~icon:":/images/debug-backstep.png"
    ~tip:"Step into (Mouse Wheel with Shift)"
    ~key:"Ctrl+B"
    ~fn:debugBackStep
  in
  let debugStepAct =
    action "&Step" ~icon:":/images/debug-step.png"
    ~key:"Ctrl+S"
    ~tip:"Back step into (Mouse Wheel with Shift)"
    ~fn:debugStep
  in
  let debugInterruptAct =
    action "&Interrupt" ~icon:":/images/debug-interrupt.png"
    ~key:"Ctrl+C"
    ~tip:"Interrupt the execution of the application"
    ~fn:debugInterrupt
  in
  let debugDownAct =
    action "&Down" ~icon:":/images/debug-down.png"
    ~key:"Ctrl+D"
    ~tip:"Call stack down (Mouse Wheel with Shift+Ctrl)"
    ~fn:debugDown
  in
  let debugUpAct =
    action "&Up" ~icon:":/images/debug-up.png"
      ~key:"Ctrl+U"
      ~tip:"Call stack up (Mouse Wheel with Shift+Ctrl)"
    ~fn:debugUp
  in
  make_menu (QMainWindow.menuBar this) [
    `Sub ("&Main", [
        `Action setOCamlDebugArgsAct;
        `Action setOCamlDebugInitScriptAct;
        `Action setWorkingDirectoryAct;
        `Separator;
        `Action exitAct;
      ]);
    `Sub ("&Debug", [
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
      ]);
    `Sub ("&Edit", [
        `Action copyAct;
      ]);
    `Dynamic ("&Window", updateWindowMenu);
    `Separator;
    `Sub ("&Hello", [
        `Action helpAct;
        `Action aboutAct;
        `Action aboutQtAct;
      ])
  ];
  let _mainToolBar = make_toolbar this "Main" [] in
  let _editToolBar = make_toolbar this "Edit" [
      `Action copyAct
    ]
  in
  let _debugToolBar = make_toolbar this "Debug" [
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
  in
  let _debugWindowToolBar = make_toolbar this "Debug Windows" [
      `Action createWatchWindowAct;
    ]
  in
  QStatusBar.showMessage'from'QString (QMainWindow.statusBar this) "Ready"

let read_settings () = () (* TODO *)
let write_settings () = () (* TODO *)

let mainwindow app =
  let window = new'QMainWindow None QFlags.empty in
  QMainWindow.setWindowIcon window
    (new'QIcon'from'QString ":/images/oqamldebug.png");
  QMainWindow.setDockNestingEnabled window true;
  let mdiarea = new'QMdiArea None in
  QMdiArea.setHorizontalScrollBarPolicy mdiarea `ScrollBarAsNeeded;
  QMdiArea.setVerticalScrollBarPolicy mdiarea `ScrollBarAsNeeded;
  QMainWindow.setCentralWidget window mdiarea;
  Qt.connect mdiarea QMdiArea.signal'subWindowActivated update_menu;
  let mapper = new'QSignalMapper (Some window) in
  Qt.connect mapper QSignalMapper.signal'mapped'from'QWidget
    (fun widget -> match Qt.cast widget (QMdiSubWindow.class'()) with
       | None -> ()
       | Some mapped -> QMdiArea.setActiveSubWindow mdiarea mapped);
  create_actions_and_menus app window mdiarea
    ~setWorkingDirectory:ignore
    ~setOCamlDebugArgs:ignore
    ~setOCamlDebugInitScript:ignore
    ~createWatchWindow:ignore
    ~updateWindowMenu:ignore
    ~copy:ignore
    ~about:ignore
    ~help:ignore
    ~debuggerStart:ignore
    ~debugRun:ignore
    ~debugNext:ignore
    ~debugPrevious:ignore
    ~debugFinish:ignore
    ~debugBackStep:ignore
    ~debugReverse:ignore
    ~debugStep:ignore
    ~debugInterrupt:ignore
    ~debugDown:ignore
    ~debugUp:ignore;
  window
;;

let () =
  let app = new'QApplication Sys.argv in
  QMainWindow.show (mainwindow app);
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
    createActions();
    createMenus();
    createToolBars();
    createStatusBar();
    updateMenus();
    createDockWindows();
    readSettings();

    setWindowTitle( "OQamlDebug" );
    setUnifiedTitleAndToolBarOnMac( true );
    ocamlDebugFocus();
}

MainWindow::~MainWindow()
{
    if ( filebrowser )
        Options::set_opt( "FILEBROWSER_STATE", filebrowser->header()->saveState() );
}

void MainWindow::createDockWindows()
{
    Arguments args( _arguments );
    filebrowser_dock = new QDockWidget( "Source File Browser", this );
    filebrowser_dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    filebrowser = new QTreeView( );
    filebrowser_model_p = new QFileSystemModel;
    filebrowser_model_p->setNameFilters( QStringList() << "*.ml" );
    filebrowser_model_p->setReadOnly( true );
#if QT_VERSION >= 0x040700
    filebrowser_model_p->setFilter( QDir::AllDirs | QDir::AllEntries | QDir::NoDot );
#else
    filebrowser_model_p->setFilter( QDir::AllDirs | QDir::AllEntries );
#endif
    filebrowser_model_p->setNameFilterDisables( false  );
    filebrowser->setModel( filebrowser_model_p );
    filebrowser_dock->setObjectName("FileBrowser");
    filebrowser_dock->setWidget( filebrowser );
    filebrowser_dock->setTitleBarWidget( new QLabel(filebrowser_dock) );
    connect( filebrowser_model_p, SIGNAL( rootPathChanged ( const QString & ) ), this, SLOT( fileBrowserPathChanged( const QString & ) ) );
    QString dir = Options::get_opt_str( "SOURCE_DIRECTORY", QDir::current().path() );
    filebrowser_model_p->setRootPath( dir );
    filebrowser->setItemsExpandable( false );
    filebrowser->setRootIndex( filebrowser_model_p->index( dir ) );
    filebrowser->setSortingEnabled( true );
    filebrowser->setRootIsDecorated( false );
    filebrowser->header()->restoreState( Options::get_opt_array( "FILEBROWSER_STATE" ) );
    addDockWidget( Qt::BottomDockWidgetArea, filebrowser_dock );
    filebrowser_dock->toggleViewAction()->setIcon( QIcon( ":/images/open.png" ) );
    mainMenu->addAction( filebrowser_dock->toggleViewAction() );
    mainToolBar->addAction( filebrowser_dock->toggleViewAction() );
    connect( filebrowser, SIGNAL( activated ( const QModelIndex & ) ), this, SLOT( fileBrowserItemActivated( const QModelIndex & ) ) );

    ocamlrun_dock = new QDockWidget( "Application Output", this );
    ocamlrun_dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    ocamlrun = new OCamlRun( ocamlrun_dock, args );
    ocamlrun_dock->setObjectName("OCamlRun");
    ocamlrun_dock->setWidget( ocamlrun );
    addDockWidget( Qt::BottomDockWidgetArea, ocamlrun_dock );
    ocamlrun_dock->toggleViewAction()->setIcon( QIcon( ":/images/terminal.png" ) );
    windowMenu->addAction( ocamlrun_dock->toggleViewAction() );
    debugWindowToolBar->addAction( ocamlrun_dock->toggleViewAction() );

    ocamldebug_dock = new QDockWidget( "OCamlDebug", this );
    ocamldebug_dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    ocamldebug = new OCamlDebug( ocamldebug_dock , ocamlrun, _ocamldebug, args, _ocamldebug_init_script );
    ocamldebug_dock->setObjectName("OCamlDebugDock");
    connect ( ocamldebug , SIGNAL( stopDebugging( const QString &, int , int , bool) ) , this ,SLOT( stopDebugging( const QString &, int , int , bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , this ,SLOT( debuggerStarted( bool) ) );
    connect ( ocamldebug , SIGNAL( breakPointList( const BreakPoints &) ) , this ,SLOT( breakPointList( const BreakPoints &) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , ocamlrun ,SLOT( debuggerStarted( bool) ) );
    ocamldebug_dock->setWidget( ocamldebug );
    ocamldebug_dock->toggleViewAction()->setIcon( QIcon( ":/images/oqamldebug.png" ) );
    addDockWidget( Qt::BottomDockWidgetArea, ocamldebug_dock );
    windowMenu->addAction( ocamldebug_dock->toggleViewAction() );
    debugWindowToolBar->addAction( ocamldebug_dock->toggleViewAction() );

    ocamldebug->startDebug();

    QList<int> watch_ids = Options::get_opt_intlst( "WATCH_IDS" );
    for (QList<int>::const_iterator itId = watch_ids.begin(); itId != watch_ids.end(); ++itId)
        createWatchWindow( *itId );

    ocamlbreakpoints_dock = new QDockWidget( "Breakpoints", this );
    ocamlbreakpoints_dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    ocamlbreakpoints = new OCamlBreakpoint( ocamlbreakpoints_dock );
    ocamlbreakpoints_dock->setObjectName("Breakpoints");
    connect( ocamlbreakpoints, SIGNAL( debugger( const DebuggerCommand & ) ), ocamldebug, SLOT( debugger( const DebuggerCommand & ) ) );
    connect ( ocamldebug , SIGNAL( stopDebugging( const QString &, int , int , bool) ) , ocamlbreakpoints  ,SLOT( stopDebugging( const QString &, int , int , bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , ocamlbreakpoints  ,SLOT( debuggerStarted( bool) ) );
    connect ( ocamldebug , SIGNAL( breakPointList( const BreakPoints &) ) , ocamlbreakpoints ,SLOT( breakPointList( const BreakPoints &) ) );
    connect ( ocamldebug , SIGNAL( breakPointHit( const QList<int> &) ) , ocamlbreakpoints ,SLOT( breakPointHit( const QList<int> &) ) );
    ocamlbreakpoints_dock->setWidget( ocamlbreakpoints );
    addDockWidget( Qt::BottomDockWidgetArea, ocamlbreakpoints_dock );
    ocamlbreakpoints_dock->toggleViewAction()->setIcon( QIcon( ":/images/breakpoints.png" ) );
    windowMenu->addAction( ocamlbreakpoints_dock->toggleViewAction() );
    debugWindowToolBar->addAction( ocamlbreakpoints_dock->toggleViewAction() );


    ocamlstack_dock = new QDockWidget( "Stack", this );
    ocamlstack_dock->setAllowedAreas( Qt::TopDockWidgetArea | Qt::BottomDockWidgetArea | Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea );
    ocamlstack = new OCamlStack( ocamlstack_dock );
    ocamlstack_dock->setObjectName("Stack");
    connect( ocamlstack, SIGNAL( debugger( const DebuggerCommand & ) ), ocamldebug, SLOT( debugger( const DebuggerCommand & ) ) );
    connect ( ocamldebug , SIGNAL( stopDebugging( const QString &, int , int , bool) ) , ocamlstack  ,SLOT( stopDebugging( const QString &, int , int , bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerStarted( bool) ) , ocamlstack ,SLOT( debuggerStarted( bool) ) );
    connect ( ocamldebug , SIGNAL( debuggerCommand( const QString &, const QString &) ) , ocamlstack ,SLOT( debuggerCommand( const QString &, const QString &) ) );
    ocamlstack_dock->setWidget( ocamlstack );
    addDockWidget( Qt::BottomDockWidgetArea, ocamlstack_dock );
    ocamlstack_dock->toggleViewAction()->setIcon( QIcon( ":/images/callstack.png" ) );
    windowMenu->addAction( ocamlstack_dock->toggleViewAction() );
    debugWindowToolBar->addAction( ocamlstack_dock->toggleViewAction() );
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
    mdiArea->closeAllSubWindows();
    if ( mdiArea->currentSubWindow() )
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
            mdiArea->setActiveSubWindow( existing );
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
                mdiArea->setActiveSubWindow( existing );
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

void MainWindow::help()
{
    if ( help_p == NULL )
    {
        QFile h ( ":/readme.html" );
        if ( h.open(QFile::ReadOnly) )
        {
            help_p = new QTextBrowser();
            help_p->setReadOnly(true);
            help_p->setWindowTitle("Help");
            help_p->setHtml( h.readAll() );
        }
    }
    help_p->show();
}

void MainWindow::updateMenus()
{
    bool hasMdiChild = ( activeMdiChild() != 0 );
    closeAct->setEnabled( hasMdiChild );
    closeAllAct->setEnabled( hasMdiChild );
    tileAct->setEnabled( hasMdiChild );
    cascadeAct->setEnabled( hasMdiChild );
    nextAct->setEnabled( hasMdiChild );
    previousAct->setEnabled( hasMdiChild );
    separatorAct->setVisible( hasMdiChild );

    bool hasSelection = ( activeMdiChild() &&
                          activeMdiChild()->textCursor().hasSelection() );
    copyAct->setEnabled( hasSelection );
}

void MainWindow::updateWindowMenu()
{
    windowMenu->clear();
    windowMenu->addAction( closeAct );
    windowMenu->addAction( closeAllAct );
    windowMenu->addSeparator();
    windowMenu->addAction( tileAct );
    windowMenu->addAction( cascadeAct );
    windowMenu->addSeparator();
    windowMenu->addAction( nextAct );
    windowMenu->addAction( previousAct );

    if ( ocamldebug_dock )
    {
        windowMenu->addSeparator();
        windowMenu->addAction( ocamldebug_dock->toggleViewAction() );
    }
    if ( ocamlbreakpoints_dock )
        windowMenu->addAction( ocamlbreakpoints_dock->toggleViewAction() );
    if ( ocamlstack_dock )
        windowMenu->addAction( ocamlstack_dock->toggleViewAction() );
    if ( ocamlrun_dock )
        windowMenu->addAction( ocamlrun_dock->toggleViewAction() );

    windowMenu->addAction( separatorAct );
    QList<QMdiSubWindow *> windows = mdiArea->subWindowList();
    separatorAct->setVisible( !windows.isEmpty() );

    for ( int i = 0; i < windows.size(); ++i )
    {
        QWidget *widget_p = windows.at( i )->widget();
        OCamlSource *child = qobject_cast<OCamlSource *>( widget_p );

        QString text;
        if (child )
        {
            if ( i < 9 )
            {
                text = "&%1 %2".arg( i + 1 )
                    .arg( child->userFriendlyCurrentFile() );
            }
            else
            {
                text = "%1 %2".arg( i + 1 )
                    .arg( child->userFriendlyCurrentFile() );
            }

            QAction *action  = windowMenu->addAction( text );
            action->setCheckable( true );
            action ->setChecked( widget_p == activeMdiChild() );
            connect( action, SIGNAL( triggered() ), windowMapper, SLOT( map() ) );
            windowMapper->setMapping( action, windows.at( i ) );
        }
    }
}

OCamlSource *MainWindow::createMdiChild()
{
    OCamlSource *child = new OCamlSource;
    mdiArea->addSubWindow( child );

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
    if ( QMdiSubWindow *activeSubWindow = mdiArea->activeSubWindow() )
        return qobject_cast<OCamlSource *>( activeSubWindow->widget() );
    return 0;
}

QMdiSubWindow *MainWindow::findMdiChildNotLoadedFromUser()
{
    foreach ( QMdiSubWindow * window, mdiArea->subWindowList() )
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

    foreach ( QMdiSubWindow * window, mdiArea->subWindowList() )
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
    mdiArea->setActiveSubWindow( qobject_cast<QMdiSubWindow *>( window ) );
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

        foreach ( QMdiSubWindow * window, mdiArea->subWindowList() )
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
    foreach ( QMdiSubWindow * window, mdiArea->subWindowList() )
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

void MainWindow::fileBrowserPathChanged( const QString &path )
{
    QLabel *label_p = qobject_cast<QLabel*>(filebrowser_dock->titleBarWidget());
    if (label_p)
    {
        label_p->setText( path );
        Options::set_opt( "SOURCE_DIRECTORY", path );
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
