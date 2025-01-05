import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class StringsEu extends Strings {
  StringsEu([String locale = 'eu']) : super(locale);

  @override
  String get about => 'Honi buruz';

  @override
  String get aboutDescription => 'Aplikazioari buruzko informazioa';

  @override
  String get aboutOSInfo => 'Iturburu-kodea: [kodeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-double)\nF-Droid biltegia: [kodeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@haria.soziala](https://floss.soziala/@doable)';

  @override
  String get aboutToCancelChanges => 'Baztertu aldaketak?';

  @override
  String get aboutToCancelChangesDescription => 'Egin beharreko aldaketa guztiak baztertzera zoaz.';

  @override
  String get aboutToCancelFeedback => 'Baztertu iritzia?';

  @override
  String get aboutToCancelFeedbackDescription => 'Zure iritzia baztertzeko zorian zaude. Hau ezin da desegin.';

  @override
  String get aboutToDeleteCompleted => 'Burututako Todos guztiak ezabatzeko zorian zaude. Ekintza hau iraunkorra da eta ezin da desegin.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Todos',
      one: 'one Todo',
    );
    return 'Ezabatzeko zorian zaude $_temp0. Ekintza hau iraunkorra da eta ezin da desegin.';
  }

  @override
  String get additionalFeatures => 'Luzapenak';

  @override
  String get additionalFeaturesDescription => 'Doable ahaltsuagoa egiten duten ezaugarriak';

  @override
  String get alignTodoCheck => 'Markatu eskuinean';

  @override
  String get alignTodoCheckDescription => 'Erakutsi egitekoaren kontrol-marka eskuineko aldean';

  @override
  String get appLanguage => 'App language hizkuntza';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Arreta';

  @override
  String get back => 'Atzera';

  @override
  String get syncAndBackup => 'Babeskopia Eta Sinkronizazioa';

  @override
  String get syncAndBackupDescription => 'Egin babeskopia eta sinkronizatu Zure Todos';

  @override
  String get cancel => 'Utzi';

  @override
  String get chooseFeedbackExtrasDescription => 'Honako hauek guztiak barne gomendatzen dut me laguntzen du zure arazoa konpontzeko batera geroztik. Ez dago informazio pertsonalik.';

  @override
  String get chooseFeedbackExtrasTitle => 'Zein informazio gehigarri nahi duzu?';

  @override
  String get chooseFeedbackWay => 'Non jaso nahi dituzu iradokizunak?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Egitekoa Burututa.';

  @override
  String get copiedToClipboard => 'Testua arbelean kopiatzen du.';

  @override
  String get customAccentPicker => 'Azentu-kolorea';

  @override
  String get customAccentPickerDescription => 'Aukeratu aplikazioaren gaiaren azentu-kolore pertsonalizatua';

  @override
  String get darkMode => 'Modu iluna';

  @override
  String get deleteCompletedAfter => 'Ezabatu automatikoki osatuta';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Ezabatu $duration';
  }

  @override
  String deletedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Todos',
      one: 'one Todo',
    );
    return 'Ezabatuta$_temp0.';
  }

  @override
  String get description => 'Azalpena';

  @override
  String get design => 'Diseinua';

  @override
  String get designDescription => 'Alda ezazu Doable-ren itxura eta sentsazioa';

  @override
  String get disable => 'Desgaitu';

  @override
  String get discard => 'Baztertu';

  @override
  String get doContinue => 'Jarraitu';

  @override
  String get done => 'Eginda';

  @override
  String get dynamicColors => 'Kolore dinamikoak';

  @override
  String get dynamicColorsDescription => 'Erabili sistemaren koloreak (Android 12+)';

  @override
  String get email => 'Posta elektronikoa';

  @override
  String get enable => 'Gaitu';

  @override
  String get enabled => 'Gaituta';

  @override
  String get export => 'Esportatu';

  @override
  String get exportAllTodos => 'Esportatu Todos guztiak';

  @override
  String exportEvery(String duration) {
    return 'Export every $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Azalpen zehatzagoa zer gaizki joan / nola gertatu zen.';

  @override
  String get feedbackHeader => 'Mesedez, bete beheko formularioa zer oker joan zen ulertzen laguntzeko.';

  @override
  String get feedbackTitleHelp => 'Ekitaldiaren laburpen txiki bat.';

  @override
  String get general => 'Orokorra';

  @override
  String get generalDescription => 'Aldatu aplikazioaren portaera orokorra';

  @override
  String get giveFeedback => 'Iritzia';

  @override
  String get highlightOverdue => 'Nabarmendu atzeratua';

  @override
  String get highlightOverdueDescription => 'Nabarmendu atzeratutako todoak todos izarratu bezala';

  @override
  String get highlightToday => 'Nabarmendu gaur';

  @override
  String get highlightTodayDescription => 'Nabarmendu gaur egun behar diren Todoak todos izarratu bezala';

  @override
  String get importLocalBackupError => 'Fitxategi honek Ez dauka Todos.';

  @override
  String get importTodosFromFile => 'Inportatu fitxategia';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Todos',
      one: 'one Todo',
      zero: 'zero Todos',
    );
    return 'Inportatuta $_temp0.';
  }

  @override
  String get installedFrom => 'Hemendik instalatuta';

  @override
  String get introDoubleTap => 'Kolpatu bikoitza';

  @override
  String get introDoubleTapDescription => 'Deskribapen bat egin duten todos sakatu bikoitza dezakezu horiek zabaltzeko. Zabaldutakoan, deskribapen osoa erakusten da eta ondoren estekekin elkarreragin dezakezu, etab.\n\nAdibide batekin probatu dezakezu hemen!';

  @override
  String get introDoubleTapTodoDescription => 'Pastela gezurra da!\n\nGehiago jakiteko hemen:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Erosi pastel berria';

  @override
  String get introLinks => 'Loturak, telefono zenbakiak, posta elektronikoak';

  @override
  String get introLinksDescription => 'Deskribapen bati estekak, telefono zenbakiak edo helbide elektronikoa gehitzen dizkiozunean, automatikoki nabarmenduko dira eta haiekin elkarreragin dezakezu.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Zure Todos Nextcloud instantzia batekin ere sinkroniza ditzakezu. Nahi baduzu, hemen sartu zaitezke!';

  @override
  String get introStar => 'Izarrak';

  @override
  String get introStarDescription => 'Gehitu izar bat egin ahal izateko\njendetzaren artean zutik.\n\nEman beheko izarra txorrota bat probatzeko!';

  @override
  String get introTodos => 'Todosek';

  @override
  String get introTodosDescription => 'Todo berri bat sortzean hainbat gauza gehi ditzakezu. Esate baterako, data bat gehitu ahal izango duzu denean zeregin garrantzitsua bihurtzen da, edo makila da gainerako artean egiteko zeregin hasteko dezakezu! Ere egin lotutako loturak edo beste informazio deskribapen bat gehitu dezakezu.';

  @override
  String get introWelcome => 'Ongi Etorri Doable!';

  @override
  String get introWelcomeDescription => 'Todo aplikazio sinplea diseinu modernoarekin\neta nextcloud integrazioa.';

  @override
  String get keepEditing => 'Jarraitu editatzen';

  @override
  String get left => 'Ezkerrean';

  @override
  String get licenses => 'Lizentziak';

  @override
  String get licensesDescription => 'Kode irekiko eta Flutter lizentziak';

  @override
  String get localStorage => 'Biltegi lokala';

  @override
  String get logIn => 'Hasi saioa';

  @override
  String get logOut => 'Amaitu saioa';

  @override
  String get logOutputs => 'Egunkariak';

  @override
  String get markCompleted => 'Marka osatu da';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Markatu osatu gabea';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown euskarria';

  @override
  String get mayNotBeEmpty => 'Baliteke hutsik ez egotea';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Oinarrizko markdown sintaxiaren euskarria gehitzen du zure Todos-en deskribapenaren eta izenburuaren barruan.\n\nSintaxi aukeren zerrenda osoa kontsultatu dezakezu\nhttps://www.markdownguide.org/cheat-sheet/.\n\nHala ere, aplikazio honek * * ez du * * onartzen markdown zehaztapen guztiak. Onartutako elementuak:\n\n- Lodia\n- Etzana\n- - Aipu blokea\n Ordenatu gabeko / ordenatu gabeko zerrendak\n- Zereginen zerrendak\n- Barneko kodea eta hesitutako kode blokeak\n- Estekak\n- Nabarmentzea\n- Marratua\n\n\nEra berean, nabarmentzekoa da, formatua **ez da errekurtsiboki aplikatzen**.';

  @override
  String get moveImportantToTop => 'Eraman garrantzitsua goira';

  @override
  String get moveImportantToTopDescription => 'Gaituta badago, izarretako Todoak beti bistaratuko dira zerrendaren goialdean';

  @override
  String get moveUpWhenUpdated => 'Islatu zerrendako aldaketak';

  @override
  String get moveUpWhenUpdatedDescription => 'Todos zerrendaren goialdera joaten da aldatu ondoren';

  @override
  String get ncBaseUrl => 'Zerbitzaria';

  @override
  String get ncBaseUrlHint => 'Nextcloud web interfazearen ura';

  @override
  String get ncDirectory => 'Direktorioa';

  @override
  String get ncFileIn => 'Hemen gordetako fitxategia';

  @override
  String get ncLogOut => 'Nextcloud en saioa amaitzen';

  @override
  String get ncLogOutMessage => 'Saioa amaitzean gordetako kredentzialak ezabatu egingo dira. Hala ere, gordetako fitxategia Zure Hurrengo Hodeiko instantzian mantenduko da.';

  @override
  String get ncLoggedInAs => 'Saioa hasi honela';

  @override
  String get ncPassword => 'Pasahitza';

  @override
  String get ncUser => 'Erabiltzailea';

  @override
  String get never => 'Inoiz ere ez';

  @override
  String get newSubTodo => 'Azpi Egitekoa';

  @override
  String get newTodo => 'Berria Egitekoa';

  @override
  String get next => 'Hurrengoa';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Ez dago todos geratzen, lan handia!';

  @override
  String get notAValidUrl => 'Ez da baliozko ura';

  @override
  String get off => 'Itzali';

  @override
  String get ok => 'Ados';

  @override
  String get on => 'Aktibatuta';

  @override
  String get optional => 'Aukerakoa';

  @override
  String get pickAColor => 'Hautatu kolorea';

  @override
  String get pickerPrimary => 'Estandarra';

  @override
  String get pickerWheel => 'Pertsonalizatua';

  @override
  String get popupMenuDeleteCompleted => 'Ezabatu osatuta';

  @override
  String get popupMenuHideCompleted => 'Ezkutatu osatuta';

  @override
  String get popupMenuShowCompleted => 'Erakutsi osatuta';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Data garrantzitsua';

  @override
  String get required => '* beharrezkoa';

  @override
  String get reset => 'Berrezarri';

  @override
  String get right => 'Eskuinean';

  @override
  String get save => 'Gorde';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get showCompletedTodos => 'Erakutsi osatuta';

  @override
  String get showCompletedTodosDescription => 'Erakutsi osatutako Todoak zerrendan';

  @override
  String get showIntroScreen => 'Erakutsi sarrerako pantaila berriro';

  @override
  String get sortNewestFirst => 'Berriena lehen';

  @override
  String get sortNewestFirstDescription => 'Data berriagoak agertzen dira goian';

  @override
  String get sortNoRelevantDate => 'Datarik gabe';

  @override
  String get sortOverdue => 'Atzeratua';

  @override
  String get sortRelevantDate => 'Datarekin';

  @override
  String get sortStarred => 'Izarra';

  @override
  String get sortToday => 'Falta da gaur';

  @override
  String get sorting => 'Ordenatu ordena';

  @override
  String get sortingDescription => 'Ordena Horretan Todos ordenatuko dira';

  @override
  String get submitFeedback => 'Bidali';

  @override
  String get syncCorruptedFile => 'Badirudi babeskopiaren fitxategia hondatuta dagoela.';

  @override
  String get syncDirectoryDoesNotExist => 'Zehaztutako direktorioa ez da existitzen.';

  @override
  String get syncNcMaintenance => 'Nextcloud Mantentze Moduan dago.';

  @override
  String get syncNoInternetConnection => 'Ez dago interneteko konexiorik.';

  @override
  String get syncNotNcServer => 'Ezin Izan Da Nextcloud zerbitzaria aurkitu helbide honetan.';

  @override
  String get syncServiceUnavailable => 'Nextcloud ez dago erabilgarri.';

  @override
  String get syncSuccessful => 'Sinkronizatuta dago.';

  @override
  String get syncUnknownError => 'Errore ezezaguna gertatu da.';

  @override
  String get syncWrongUrl => 'Emandakola ez da zuzena.';

  @override
  String get syncWrongUserOrPassword => 'Emandako erabiltzaile-izena edo pasahitza ez dira zuzenak.';

  @override
  String get system => 'Sistema';

  @override
  String get systemInfo => 'Sistema';

  @override
  String get thankYouForFeedback => 'Eskerrik asko iruzkinak bidaltzeagatik!';

  @override
  String get title => 'Titulua';

  @override
  String get titleMayNotBeEmpty => 'Titulua ezin da hutsik egon';

  @override
  String get today => 'Gaur';

  @override
  String get todoSearch => 'Egitekoen bilaketa';

  @override
  String get todoSearchDescription => 'Gehitu bilaketa-botoia Todoen zerrendan, Zure Todoak bilatzeko aukera emanez.';

  @override
  String get tomorrow => 'Bihar';

  @override
  String get treatTodayAsIsImportant => 'Gaurkoa bezain garrantzitsua';

  @override
  String get treatTodayAsIsImportantDescription => 'Gaituta badago, gaur egun behar diren Todoak izartuta egongo balira bezala tratatuko dira';

  @override
  String get trimTodoTexts => 'Moztu Egitekoen testuak';

  @override
  String get trimTodoTextsDescription => 'Gaituta badago, inguruko zuriuneak txikitzen ditu todos-etik izenburua eta azalpena';

  @override
  String get trueBlackMode => 'Benetako modu beltza';

  @override
  String get trueBlackModeDescription => 'Makes planoa beltza bihurtzen du, oled gailuetarako bereziki erabilgarria';

  @override
  String get turnOff => 'Itzali';

  @override
  String get turnOn => 'Piztu';

  @override
  String get undo => 'Desegin';

  @override
  String get update => 'Eguneratu';

  @override
  String get updateCredentials => 'Eguneratu kredentzialak';

  @override
  String get useCustomTabs => 'Erabili aplikazioen arakatzailean';

  @override
  String get useCustomTabsDescription => 'Erabili in-app nabigatzaile bat estekak irekitzeko';

  @override
  String get whatsNew => 'Zer berri?';

  @override
  String get yesterday => 'Atzo';

  @override
  String get error => 'Errorea';

  @override
  String get routingError => 'Uau! Badirudi zerbait gaizki joan dela eta orrialde batean amaitu duzula, beno, ez da existitzen. Izugarri sentitzen dut!';

  @override
  String get goToHome => 'Zoaz etxera';

  @override
  String get pageNotFound => 'Ez da orrialdea aurkitu';

  @override
  String get updateDoable => 'Eguneratu Doable';

  @override
  String get download => 'Deskargatu';

  @override
  String get install => 'Instalatu';

  @override
  String get installed => 'Instalatuta';

  @override
  String get updateNotInstalled => 'Eguneraketa ez dago instalatuta.';

  @override
  String get skipVersion => 'Saltatu bertsio hau';

  @override
  String get couldNotDownloadUpdate => 'Ezin izan da eguneraketa deskargatu.';

  @override
  String versionWithNumber(String version) {
    return 'Bertsioa $version';
  }

  @override
  String get autoUpdates => 'Eguneraketa automatikoak';

  @override
  String get autoUpdatesDescription => 'Egiaztatu automatikoki eguneraketak';

  @override
  String get introExtensions => 'Luzapenak? Luzapenak!';

  @override
  String get introExtensionsDescription => 'Luzapenak luzatzeko eta Handitzeko Ezaugarri Doable multzo aukera ematen dizu. Duzu boterea zehazki Nola Doable erabili nahi duzun aukeratzeko ematen dute. Eskuragarri dauden luzapen guztiak ikusi nahi badituzu, egin klik beheko botoian!';

  @override
  String get introExtensionsButton => 'Luzatu!';

  @override
  String get useBottomSheetMenu => 'Erabili beheko orriaren menua';

  @override
  String get useBottomSheetMenuDescription => 'Erabili beheko orria menu gisa jaitsi beharrean';

  @override
  String get contributors => 'Laguntzaileak';

  @override
  String get contributorDescription => 'Laguntzen Duten Pertsonak Doable bihurtu zer da';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV url';

  @override
  String get webdavLogOutMessage => 'Saioa amaitzean gordetako kredentzialak ezabatu egingo dira. Hala ere, gordetako fitxategiak iraungo du.';

  @override
  String get importExport => 'Inportatu eta esportatu';

  @override
  String get chooseDirectory => 'Aukeratu direktorioa';

  @override
  String get forgetDirectory => 'Ahaztu direktorioa';

  @override
  String get newStarredTodo => 'Egitekoaren Hasiera berria';

  @override
  String get allTodos => 'All Todos';

  @override
  String get newTodoList => 'New list';

  @override
  String get deleteTodoList => 'Delete list';

  @override
  String get editTodoList => 'Edit list';

  @override
  String get lists => 'Lists';

  @override
  String get listsDescription => 'Create lists and sort your Todos with them. You can create an unlimited amount of lists, accessible through a drawer on the home screen.';

  @override
  String aboutToDeleteList(String listName) {
    return 'You\'re about to delete the list $listName and all Todos inside of it. This action is permanent and cannot be undone.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'List';

  @override
  String get share => 'Share';

  @override
  String get font => 'Font';

  @override
  String get fontDescription => 'Long press to show font names';

  @override
  String get popUpAnimationOverSlideAnimation => 'Old page transition';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Use the old pop up style page transition';

  @override
  String get restart => 'Restart';

  @override
  String get later => 'Later';

  @override
  String get restartRequired => 'Restart required';

  @override
  String get restartRequiredForSetting => 'An app restart is required for this setting to take affect.';

  @override
  String get image => 'Image';

  @override
  String get expandTodos => 'Expand Todos';

  @override
  String get showTodoListNames => 'Show list names';

  @override
  String get includeBranding => 'Include branding';

  @override
  String get doableBrandingText => 'Shared from Doable, the simple, modern and easy to use Todo app.\nYou can get Doable here: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Select how you want to share your Todos';

  @override
  String get options => 'Options';

  @override
  String get reduceMotion => 'Reduce motion';

  @override
  String get reduceMotionDescription => 'Reduce motion of animations';

  @override
  String get contribute => 'Contribute';

  @override
  String get contributeWantYourNameHere => 'Want your name here?';

  @override
  String get contributeWantYourNameHereDescription => 'Contribute to Doable directly or help translating it!';

  @override
  String get onlySymbolInDetailViewFab => 'Icon instead of text';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Use an icon instead of text in the Todo detail view';

  @override
  String get allSelected => 'All selected';

  @override
  String get sharedTextAsTitle => 'Shared text as title';

  @override
  String get sharedTextAsTitleDescription => 'Use text shared to Doable as the title of the new Todo instead of its description';

  @override
  String get noTodoLists => 'You currently don\'t have any lists.\nCreate a new one to get started!';

  @override
  String forExample(String example) {
    return 'ex. $example';
  }

  @override
  String get clearSelection => 'Clear selection';

  @override
  String get syncConnectionTimedOut => 'Connection timed out.';

  @override
  String get syncTooManyTimeOuts => 'The server timed out too many times. Sync is disabled until app restart.';

  @override
  String get todoToCalendar => 'Add Todo to calendar';

  @override
  String get logs => 'Logs';

  @override
  String get logsDescription => 'Show all the logs Doable prints';

  @override
  String get aboutToClearAllLogs => 'You\'re about to delete all logs making them inaccessible for feedback and trouble shooting. This action is permanent and cannot be undone.';

  @override
  String get clearAllLogs => 'Clear all logs';

  @override
  String get noLogsYet => 'There are currently no logs that you could look at.';

  @override
  String get dateFormat => 'Date format';

  @override
  String get timeFormat => 'Time format';

  @override
  String get shareAllLogs => 'Share all logs';

  @override
  String get copyAllLogs => 'Copy all logs';

  @override
  String get whatWentWrong => 'What went wrong?';

  @override
  String get fixCorruptBackupFile => 'The backup file of Doable could not be read and appears to be corrupt. Doable can try to fix this by deleting the current backup file and creating a new one. This will delete all changes made in other Doable instances using the same backup file.';

  @override
  String get initializingNextcloud => 'Initializing Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Change directory';

  @override
  String get dueDate => 'Due date';

  @override
  String get dragToReorder => 'Drag to reorder';

  @override
  String get copySettings => 'Copy settings';

  @override
  String get copySystemInfo => 'Copy system info';

  @override
  String get languageNameInEnglish => 'Basque';

  @override
  String get languageNameInNativeLanguage => 'Euskara';

  @override
  String get createSummaryForBugReport => 'Create summary';

  @override
  String get createSummaryForBugReportDetails => 'Creates a report containing system info, Doable\'s settings, and all logs. This can be useful for bug reports and helps troubleshoot a problem.';

  @override
  String get bugReport => 'Bug report';

  @override
  String get bugReportSupportingText => 'Please choose what you would like to include in the bug report. The more information you provide, the easier it is to find out exactly what went wrong. **No personal information will be shared.**';

  @override
  String get shareBugReport => 'Share bug report';

  @override
  String get fontSize => 'Font size';

  @override
  String get fontSizeDescription => 'Override system font size';

  @override
  String get decrease => 'Decrease';

  @override
  String get increase => 'Increase';

  @override
  String get customSecondaryAccentPicker => 'Secondary color';

  @override
  String get customTertiaryAccentPicker => 'Tertiary color';

  @override
  String get advancedColorOptions => 'Advanced color options';

  @override
  String get uploadCustomColorScheme => 'Upload custom color scheme';

  @override
  String get downloadCurrentColorScheme => 'Download current color scheme';

  @override
  String get markAsStarred => 'Mark Todo as starred';

  @override
  String get setTime => 'Set time';

  @override
  String get thereAreNoLists => 'There aren\'t any lists yet';

  @override
  String get closeDetailsOnCompelte => 'Close details on complete';

  @override
  String get closeDetailsOnCompelteDescription => 'Saves the Todo and closes its detail view when pressing the complete button.';

  @override
  String get customColorTheme => 'Custom color theme';

  @override
  String get discardCustomColorTheme => 'You\'re about to discard all changes made to the color theme.';

  @override
  String get lightMode => 'Light mode';

  @override
  String get deletedCustomColorTheme => 'Deleted custom color theme.';

  @override
  String get customThemeInfo => 'Here you can change each and every color token to your heart’s content. You can also import / export the colors into a `json` file and edit them there!\n\nIf you want to understand, what each token does, please visit the following website: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Import';

  @override
  String get customThemeFuckedFile => 'This file does not contain a valid color theme. Please make sure your file follows the same style and structure as the file you exported.';

  @override
  String get markdownBold => 'Bold';

  @override
  String get markdownItalic => 'Italic';

  @override
  String get markdownMonospace => 'Monospace';

  @override
  String get markdownHighlight => 'Highlight';

  @override
  String get fediChooseInstance => 'Choose your instance';

  @override
  String get fediInstanceUrl => 'Instance url';

  @override
  String get fediRememberInstance => 'Remember my instance';

  @override
  String get fediDoablePost => 'Just managed to finish all my Todos thanks to @Doable@floss.social!\n\nSounds interesting? You can find out more about #Doable by visiting https://repo.doable.at!';

  @override
  String get doable => 'Doable – The modern and simple Todo app';

  @override
  String get rrRepeatsEvery => 'Repeats every';

  @override
  String get rrRepeatsOn => 'Repeats on';

  @override
  String get rrEnds => 'Ends';

  @override
  String get week => 'Week';

  @override
  String get weeks => 'Weeks';

  @override
  String get day => 'Day';

  @override
  String get days => 'Days';

  @override
  String get month => 'Month';

  @override
  String get months => 'Months';

  @override
  String get year => 'Year';

  @override
  String get years => 'Years';

  @override
  String get onFollowedByDate => 'On';

  @override
  String get rrAfterOccurrences => 'After';

  @override
  String get occurrence => 'Occurrence';

  @override
  String get occurrences => 'Occurrences';

  @override
  String get rrCustomRecurrence => 'Custom recurrence';

  @override
  String get daily => 'Daily';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get yearly => 'Yearly';

  @override
  String get doesNotRepeat => 'Does not repeat';

  @override
  String get rrRecurrence => 'Recurrence';

  @override
  String get recurringTodos => 'Recurring Todos';

  @override
  String get recurringTodosDescription => 'Add recurrence to your Todos and let Doable automatically reschedule them for you once you complete them. The Todos will be rescheduled based on the relevant date and the schedule you set. If you didn’t add a due date to your Todo, its creation date will be used instead.\n\n**One thing to keep in mind: While you can now set tasks to repeat in Doable, please note that currently this feature is limited to English.**';

  @override
  String get post => 'Post';

  @override
  String get rrRepeats => 'Repeats';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription => 'This extension is still in beta and you might come across a few hiccups while using it. Please be aware of the risks and let me know if you come across any issues!';

  @override
  String get extensionBetaWarning => 'Enable beta extension?';

  @override
  String get showFediButton => 'Show post button';

  @override
  String get showFediButtonDescription => 'Show a button that lets you post about your empty list to the Fediverse';

  @override
  String get notifications => 'Notifications';

  @override
  String get enableNotifications => 'Enable notifications';

  @override
  String get notifyAll => 'All Todos';

  @override
  String get notifyAllDescription => 'Get notified for every Todo that has a due date';

  @override
  String get notifyTimeOnly => 'Only Todos with time';

  @override
  String get notifyTimeOnlyDescription => 'Only get notified for Todos that have both a due date and time';

  @override
  String get notifyTodosChannelName => 'Todos';

  @override
  String get notificationsDescription => 'Let Doable notify you when your Todos are due. You can also change for which Todos you will receive notifications.';

  @override
  String get notificationsDescriptionShort => 'Change for which Todos you get notified';

  @override
  String get notifyNeverDescription => 'Don\'t get notified for any Todos';

  @override
  String get defaultNotificationTime => 'Default notification time';

  @override
  String get defaultNotificationTimeDescription => 'The time you will get notified for Todos that don\'t have a relevant time';

  @override
  String get addImage => 'Add image';

  @override
  String get todoImages => 'Images';

  @override
  String get todoImagesDescription => 'Add images to your Todos so you can add more context to what you\'re writing.\n\n**Unfortunately images will not be synchronized yet.**';

  @override
  String get clearInputField => 'Clear input field';

  @override
  String get removeImage => 'Remove image';

  @override
  String get apkSignatureInvalid => 'Invalid signature';

  @override
  String get apkSignatureInvalidDescription => 'The signature of the downloaded apk file could not be verified. Please notify the developer about this issue. While you can proceed to install the apk at your own risk, we recommend caution due to potential security concerns.';

  @override
  String get searchTodos => 'Search Todos';

  @override
  String get editTodo => 'Edit Todo';

  @override
  String get previewTodo => 'Preview Todo';

  @override
  String get readerMode => 'Reader mode';

  @override
  String get readerModeDescription => 'Allows you to preview your Todos inside the edit screen.';

  @override
  String get noList => 'No list';

  @override
  String get chooseAList => 'Choose a list';

  @override
  String get readerModeDescriptionShort => 'Change the initial mode when opening a Todo';

  @override
  String get lastUsed => 'Last used';

  @override
  String get syncFileLocked => 'The server locked a backup file, please try again in about 15 minutes.';

  @override
  String get syncInternalError => 'There was an internal error, apologies for the inconvenience.';

  @override
  String get syncConnectionError => 'An error occurred while connecting to the server.';

  @override
  String get restore => 'Restore';

  @override
  String get loggingNextcloudIn => 'Logging in to Nextcloud…';

  @override
  String get initializingWebdav => 'Initializing Webdav…';

  @override
  String get migratingNextcloudToRemote => 'Migrating Nextcloud to new synchronization implementation…';

  @override
  String get migratingWebdavToRemote => 'Migrating Webdav to new synchronization implementation…';

  @override
  String get migrateToRemotes => 'Migration';

  @override
  String get migrateToRemotesDescription => 'Doable recently changed how it synchronizes with remotes like Nextcloud or Webdav. Unfortunately the new implementation is not backwards compatible and therefore a migration needs to take place. Doable should need a minute to migrate everything it needs to.\n\nIf you choose to do it later you might encounter some error messages since the new implementation has not yet been set up.';

  @override
  String get fixBrokenRemoteFile => 'A backup file of Doable appears to be corrupt. Doable can fix it by overriding it with the current, local value. This will override any changes made by other devices after that error occurred.';

  @override
  String get fixedBrokenRemoteFile => 'Successfully restored broken file.';

  @override
  String get unfixableRemoteFile => 'The file could not be restored.';

  @override
  String get syncFileDoesNotExist => 'A backup file of Doable does not exist.';

  @override
  String get todos => 'Todos';

  @override
  String get selectWhatToExport => 'Please select what you would like to export.';

  @override
  String get exportFile => 'Export file';

  @override
  String get listColor => 'List color';

  @override
  String get listColorAsAccent => 'List color as accent';

  @override
  String get listColorAsAccentDescription => 'Use the color of the current list as the accent color for Doable';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get openSource => 'Open source';

  @override
  String get sourceCode => 'Source code';

  @override
  String get contact => 'Contact';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'All of Doable\'s source code is accessible on Codeberg under a FOSS license. You can also submit issues and pull requests there. You can also find Doable\'s F-Droid repository over on Codeberg!';

  @override
  String get aboutPrivacy => 'Doable does not collect any personal information about you. The only thing Doable stores about your usage are logs. However those logs **are not uploaded automatically.** The only way those logs leave your device is if you choose to share them for example to help me fix a bug.';

  @override
  String get httpWarning => 'Unencrypted connection';

  @override
  String get cancelling => 'Cancelling…';

  @override
  String get httpWarningDescription => 'You are trying to connect to an HTTP server instead of a more secure HTTPS server. HTTP sends the data unencrypted to the server, posing potential security risks so this is not recommended. There are however certain use cases like a locally hosted server. Are you sure you want to continue with HTTP?';

  @override
  String get enableNotificationReminder => 'Reminder notification';

  @override
  String get pickNotificationReminderDuration => 'Remind me after';

  @override
  String get hours => 'Hours';

  @override
  String get minutes => 'Minutes';

  @override
  String get enableNotificationSound => 'Play sound';

  @override
  String get enableNotificationSoundDescription => 'Play a custom sound when showing a notification';

  @override
  String get interval => 'Interval';

  @override
  String get secondly => 'Secondly';

  @override
  String get minutely => 'Minutely';

  @override
  String get hourly => 'Hourly';

  @override
  String get second => 'Second';

  @override
  String get startOfTheWeek => 'Start of the week';

  @override
  String get hideList => 'Hide list';

  @override
  String get showList => 'Show list';

  @override
  String get showListDescription => 'Show Todos of this list in the overview.';

  @override
  String get hideListDescription => 'Don\'t show Todos of this list in the overview.';

  @override
  String get gotIt => 'Got it';

  @override
  String get updateRelease => 'Open Doable\'s release page and download the latest version';

  @override
  String get updateDownload => 'Let Doable download the latest version for you; you will find the file in the notification area and can install it by clicking on it';

  @override
  String get updateFdroid => 'If you installed Doable from F-Droid you should get the update in the next couple hours either from IzzyOnDroid\'s repository or Doable\'s own repository';

  @override
  String get updateDisable => 'You can also disable automatic update checks all together in the settings';

  @override
  String get updateChecker => 'Update checker';

  @override
  String get whatCanYouDo => 'What can you do?';

  @override
  String get synchronization => 'Synchronization';

  @override
  String get backup => 'Backup';

  @override
  String get autoExport => 'Auto export';

  @override
  String get changeDuration => 'Change duration';

  @override
  String get autoExportDescription => 'You can let Doable automatically make exports of your Todos, Lists, and Settings. Please know, that Doable will create a new file for every export! Choose the duration between exports accordingly.';

  @override
  String get seconds => 'Seconds';

  @override
  String get apkVerifyingSignature => 'Verifying apk signature…';

  @override
  String get swipeActions => 'Swipe actions';

  @override
  String get swipeActionsDescription => 'Adds the ability to swipe left on Todos to either star them or complete them.\n\n**Note, that this might sometimes conflicht with the Lists extension\'s drawer.**';

  @override
  String get selectedSwipeActions => 'Selected actions';

  @override
  String get unselectedSwipeActions => 'Unselected actions';

  @override
  String get swipeActionComplete => 'Complete / uncomplete Todo';

  @override
  String get swipeActionExpand => 'Expand Todo';

  @override
  String get swipeActionStar => 'Star / unstar Todo';

  @override
  String get swipeActionDelete => 'Delete Todo';

  @override
  String get swipeActionsHideCheck => 'Hide check mark';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Hide check mark when $action is selected';
  }

  @override
  String get forceHighestRefreshRate => 'Force highest refresh rate';

  @override
  String get forceHighestRefreshRateDescription => '(Try to) force the system to use the highest possible refresh rate inside the app';

  @override
  String get overview => 'Overview';

  @override
  String whatsNewIn(String version) {
    return 'What\'s new in $version?';
  }

  @override
  String get expandTodosByDefault => 'Expand Todos by default';

  @override
  String get expandTodosByDefaultDescription => 'Show Todos as expanded by default';

  @override
  String get progress => 'Progress';

  @override
  String get progressBar => 'Progress bar';

  @override
  String get progressBarDescription => 'Adds a progress bar to your Todos giving you finer control over its completion state.';

  @override
  String get syncMultipleErrors => 'The remote encountered multiple errors. For details see the logs.';

  @override
  String get deletedCompleted => 'Deleted completed Todos.';

  @override
  String get dateRange => 'Range';

  @override
  String get next3Days => 'Next 3 days';

  @override
  String get dateFilters => 'Date filters';

  @override
  String get dateFiltersDescription => 'Add the option to filter your Todos by a specific date range.';

  @override
  String get exportedFile => 'Exported file.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Please enable the $extensionName extension in order to use this feature.';
  }

  @override
  String get enablePrideFlagsDescription => 'Shows Pride flags behind the title bar in certain months';

  @override
  String get enablePrideFlags => 'Enable Pride flags';

  @override
  String get prideFlagRestOfYear => 'Pride flag shown year round';

  @override
  String get addNotification => 'Add notification';

  @override
  String get unselected => 'Unselected';

  @override
  String get selected => 'Selected';

  @override
  String get nothingSelected => 'Nothing selected';

  @override
  String get halfHourBefore => 'Half an hour before';

  @override
  String get defaultNotifications => 'Default Notifications';

  @override
  String get aDayAfter => 'A day after';

  @override
  String get atTimeOfTodo => 'At time of Todo';

  @override
  String get aWeekBefore => 'A week before';

  @override
  String get aDayBefore => 'A day before';

  @override
  String get anHourBefore => 'An hour before';

  @override
  String get defaultNotificationsDescriptionIfLists => 'You can also select different Notifications for each List.';

  @override
  String get halfHourAfter => 'Half hour after';

  @override
  String get customNotificationTime => 'Custom notification time';

  @override
  String get defaultNotificationsDescription => 'Select default Notifications that get added to every Todo with a relevant date.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count notifications',
      one: 'One notification',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Notifications for';

  @override
  String get deleteListSettings => 'Delete list settings';

  @override
  String get snooze => 'Snooze';

  @override
  String get snoozeDurationDescription => 'Duration that a notification gets delayed for when pressing the snooze button';

  @override
  String get snoozeDuration => 'Snooze duration';

  @override
  String get sortStarredToday => 'Starred today';

  @override
  String get sortStarredOverdue => 'Starred overdue';

  @override
  String get sortByTitle => 'By title';

  @override
  String get sortByCreationDate => 'By creation date';

  @override
  String get sortStarredRelevantDate => 'Starred with date';

  @override
  String get sortDescending => 'Descending';

  @override
  String get sortAscending => 'Ascending';

  @override
  String get sortByRelevantDate => 'By due date';

  @override
  String get sortByLastEdited => 'By last edited';

  @override
  String get sortingLabel => 'Sorting';

  @override
  String get groupsLabel => 'Groups';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable sorts your Todos by first grouping them and then sorting each group individually, before putting them back together. In the $groups tab you can choose what groups Doable creates and their order. In the $sorting tab you can choose how Doable sorts each group and their order of importance.';
  }

  @override
  String get hideForever => 'Don\'t show again';

  @override
  String get sortingHelp => 'Groups and sorting';

  @override
  String get info => 'Info';

  @override
  String get aboutToCancelChangesToList => 'You\'re about to discard all changes made to this List.';

  @override
  String get notificationsAlwaysPreview => 'Always preview Notifications';

  @override
  String get notificationsAlwaysPreviewDescription => 'Always open Notifications in preview mode regardless (this does not affect what mode was last used)';

  @override
  String get nextcloudWipeDescription => 'Doable received a request to wipe all data associated with the Nextcloud account you logged in with. Therefore you will be logged out of your account. You can also choose to wipe all data (Todos and Lists) from the app. This action is permanent and cannot be undone.';

  @override
  String get nextcloudWipe => 'Nextcloud remote wipe';

  @override
  String get wipeData => 'Wipe data';

  @override
  String get keepData => 'Keep data';

  @override
  String get imageInserted => 'Image inserted';

  @override
  String get useSystemFont => 'Use system font';

  @override
  String get useSystemFontDescription => 'Use the system font as the primary font for Doable';

  @override
  String get batteryOptimization => 'Battery optimization';

  @override
  String get batteryOptimizationDescription => 'Doable is being battery optimized. While this usually isn\'t a problem it might lead to some issues when logging in to Nextcloud. If you want to ensure a smooth experience, please disable these optimizations.';

  @override
  String get couldNotAddTodoToCalendar => 'Could not add Todo to calendar.';

  @override
  String get sortCompleted => 'Sort completed';

  @override
  String get sortCompletedDescription => 'Apply sorting to completed Todos as well';
}
