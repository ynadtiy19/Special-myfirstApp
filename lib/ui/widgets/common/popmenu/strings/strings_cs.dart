import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class StringsCs extends Strings {
  StringsCs([String locale = 'cs']) : super(locale);

  @override
  String get about => 'O';

  @override
  String get aboutDescription => 'Informace o aplikaci';

  @override
  String get aboutOSInfo =>
      'Zdrojový kód: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nÚložiště F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Vyřazení změn?';

  @override
  String get aboutToCancelChangesDescription =>
      'Chystáte se zahodit všechny změny provedené v této práci Todo.';

  @override
  String get aboutToCancelFeedback => 'Vyřazení zpětné vazby?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Svou zpětnou vazbu se chystáte zahodit. To nelze vzít zpět.';

  @override
  String get aboutToDeleteCompleted =>
      'Chystáte se odstranit všechny dokončené úkoly Todos. Tato akce je trvalá a nelze ji vrátit zpět.';

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
    return 'Chystáte se odstranit $_temp0. Tato akce je trvalá a nelze ji vrátit zpět.';
  }

  @override
  String get additionalFeatures => 'Rozšíření';

  @override
  String get additionalFeaturesDescription =>
      'Funkce, díky nimž je Doable výkonnější';

  @override
  String get alignTodoCheck => 'Zaškrtávací značka vpravo';

  @override
  String get alignTodoCheckDescription =>
      'Zobrazit značku Todo na pravé straně';

  @override
  String get appLanguage => 'Jazyk aplikace';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Upozornění';

  @override
  String get back => 'Zpět';

  @override
  String get syncAndBackup => 'Zálohování a synchronizace';

  @override
  String get syncAndBackupDescription =>
      'Zálohování a synchronizace aplikací Todos';

  @override
  String get cancel => 'Zrušit';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Doporučil jsem uvést všechny následující údaje, protože mi pomohou při řešení vašeho problému. Nepatří sem žádné osobní údaje.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Jaké další informace byste chtěli uvést?';

  @override
  String get chooseFeedbackWay => 'Kde chcete poskytnout zpětnou vazbu?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Ukončená Todo.';

  @override
  String get copiedToClipboard => 'Zkopírovaný text do schránky.';

  @override
  String get customAccentPicker => 'Barva akcentu';

  @override
  String get customAccentPickerDescription =>
      'Výběr vlastní barvy akcentu pro téma aplikace';

  @override
  String get darkMode => 'Tmavý režim';

  @override
  String get deleteCompletedAfter => 'Automatické mazání dokončeno';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Smazat po $duration';
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
    return 'Odstraněno $_temp0.';
  }

  @override
  String get description => 'Popis';

  @override
  String get design => 'Konstrukce';

  @override
  String get designDescription => 'Změna tmavého režimu a barev';

  @override
  String get disable => 'Zakázat';

  @override
  String get discard => 'Vyřazení';

  @override
  String get doContinue => 'Pokračovat';

  @override
  String get done => 'Hotovo';

  @override
  String get dynamicColors => 'Dynamické barvy';

  @override
  String get dynamicColorsDescription =>
      'Použití systémových barev (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Povolit';

  @override
  String get enabled => 'Povoleno';

  @override
  String get export => 'Exportovat';

  @override
  String get exportAllTodos => 'Export všech položek Todos';

  @override
  String exportEvery(String duration) {
    return 'Export every $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Podrobnější vysvětlení toho, co se pokazilo / jak se to stalo.';

  @override
  String get feedbackHeader =>
      'Vyplňte prosím níže uvedený formulář, abyste mi pomohli pochopit, co se stalo špatně.';

  @override
  String get feedbackTitleHelp => 'Krátké shrnutí události.';

  @override
  String get general => 'Obecný';

  @override
  String get generalDescription => 'Změna obecného chování aplikace';

  @override
  String get giveFeedback => 'Zpětná vazba';

  @override
  String get highlightOverdue => 'Zvýraznit zpoždění';

  @override
  String get highlightOverdueDescription =>
      'Zvýraznění úkolů, které jsou po splatnosti, stejným způsobem jako úkoly označené hvězdičkou';

  @override
  String get highlightToday => 'Highlight delays';

  @override
  String get highlightTodayDescription =>
      'Zvýrazněte úkoly, které mají být splněny dnes, stejně jako úkoly označené hvězdičkou';

  @override
  String get importLocalBackupError => 'Tento soubor neobsahuje soubor Todos.';

  @override
  String get importTodosFromFile => 'Importní soubor';

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
    return 'Dovážené $_temp0.';
  }

  @override
  String get installedFrom => 'Instalováno z';

  @override
  String get introDoubleTap => 'Dvojité klepnutí';

  @override
  String get introDoubleTapDescription =>
      'Na položky Todos s popisem můžete dvakrát klepnout a rozbalit je. Po rozbalení se zobrazí úplný popis a vy pak můžete pracovat s odkazy atd.\n\nVyzkoušet si to můžete na příkladu přímo zde!';

  @override
  String get introDoubleTapTodoDescription =>
      'Dort je lež!\n\nVíce informací najdete zde:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Koupit nový dort';

  @override
  String get introLinks => 'Odkazy, telefonní čísla, e-maily';

  @override
  String get introLinksDescription =>
      'Když do popisu přidáte odkazy, telefonní čísla nebo e-mailové adresy, automaticky se zvýrazní a můžete s nimi komunikovat.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Aplikaci Todos můžete také synchronizovat s instancí služby Nextcloud. Pokud chcete, můžete se přihlásit přímo zde!';

  @override
  String get introStar => 'Hvězdy';

  @override
  String get introStarDescription =>
      'Přidáním hvězdičky k úkolu Todo jej můžete\nvyniknout v davu.\n\nKlepněte na hvězdičku níže a vyzkoušejte ji!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription =>
      'Při vytváření nového úkolu můžete přidat různé věci. Můžete například přidat datum, kdy se úkol stane aktuálním, nebo jej můžete označit hvězdičkou, aby vynikl mezi ostatními úkoly! Můžete také přidat popis s odkazy nebo dalšími informacemi souvisejícími s Todo.';

  @override
  String get introWelcome => 'Vítejte v Doable!';

  @override
  String get introWelcomeDescription =>
      'Jednoduchá aplikace Todo s moderním designem\na integrací se službou Nextcloud.';

  @override
  String get keepEditing => 'Pokračujte v úpravách';

  @override
  String get left => 'Vlevo';

  @override
  String get licenses => 'Licence';

  @override
  String get licensesDescription => 'Otevřený zdrojový kód a licence Flutter';

  @override
  String get localStorage => 'Místní úložiště';

  @override
  String get logIn => 'Přihlásit se';

  @override
  String get logOut => 'Odhlásit se';

  @override
  String get logOutputs => 'Logy';

  @override
  String get markCompleted => 'Značka dokončena';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Označit nedokončené';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Podpora Markdown';

  @override
  String get mayNotBeEmpty => 'Nesmí být prázdný';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Přidává podporu základní syntaxe markdown v popisu a názvu dokumentu Todos.\n\nÚplný seznam možností syntaxe najdete na stránce\nhttps://www.markdownguide.org/cheat-sheet/.\n\nTato aplikace však **nepodporuje** celou specifikaci markdown. Podporovány jsou tyto prvky:\n\n- Tučné písmo\n- Kurzíva\n- Blokové uvozovky\n- Uspořádané/neuspořádané seznamy\n- Seznamy úkolů\n- Řádkový kód a ohraničené bloky kódu\n- Odkazy\n- Zvýraznění\n- Přeškrtnutí\n\n\nZa zmínku stojí také to, že formátování **není aplikováno rekurzivně**.';

  @override
  String get moveImportantToTop => 'Přesunout důležité na začátek';

  @override
  String get moveImportantToTopDescription =>
      'Chcete-li změnit pořadí řazení, jednoduše přetáhněte položky v pořadí, v jakém je chcete zobrazit';

  @override
  String get moveUpWhenUpdated => 'Odraz změn v seznamu';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Po změně se položky Todos přesunou na začátek seznamu';

  @override
  String get ncBaseUrl => 'Servery';

  @override
  String get ncBaseUrlHint => 'URL webové rozhraní Nextcloud';

  @override
  String get ncDirectory => 'Adresář';

  @override
  String get ncFileIn => 'Soubor uložený v';

  @override
  String get ncLogOut => 'Odhlášení ze služby Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Při odhlášení budou vaše uložené přihlašovací údaje vymazány. Uložený soubor v instanci Nextcloudu však zůstane zachován.';

  @override
  String get ncLoggedInAs => 'Přihlášen jako';

  @override
  String get ncPassword => 'Heslo';

  @override
  String get ncUser => 'Uživatel';

  @override
  String get never => 'Nikdy';

  @override
  String get newSubTodo => 'Dílčí Todo';

  @override
  String get newTodo => 'Nové Todo';

  @override
  String get next => 'Další';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Nezbyl žádný Todos, skvělá práce!';

  @override
  String get notAValidUrl => 'Není platná url adresa';

  @override
  String get off => 'Vypnuto';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Na';

  @override
  String get optional => 'Volitelný';

  @override
  String get pickAColor => 'Vyberte si barvu';

  @override
  String get pickerPrimary => 'Standardní';

  @override
  String get pickerWheel => 'Vlastní';

  @override
  String get popupMenuDeleteCompleted => 'Odstranit dokončené';

  @override
  String get popupMenuHideCompleted => 'Skrýt dokončeno';

  @override
  String get popupMenuShowCompleted => 'Zobrazit dokončeno';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Relevantní datum';

  @override
  String get required => '*vyžadováno';

  @override
  String get reset => 'Reset';

  @override
  String get right => 'Vpravo';

  @override
  String get save => 'Uložit';

  @override
  String get settings => 'Nastavení';

  @override
  String get showCompletedTodos => 'Zobrazit dokončeno';

  @override
  String get showCompletedTodosDescription =>
      'Zobrazení dokončených úloh Todos v seznamu';

  @override
  String get showIntroScreen => 'Znovu zobrazit úvodní obrazovku';

  @override
  String get sortNewestFirst => 'Nejnovější první';

  @override
  String get sortNewestFirstDescription => 'Novější data jsou uvedena nahoře';

  @override
  String get sortNoRelevantDate => 'Bez data';

  @override
  String get sortOverdue => 'Opožděné';

  @override
  String get sortRelevantDate => 'S datem';

  @override
  String get sortStarred => 'Hvězdička';

  @override
  String get sortToday => 'Splatnost dnes';

  @override
  String get sorting => 'Pořadí řazení';

  @override
  String get sortingDescription =>
      'Pořadí, v jakém budou seřazeny položky Todos';

  @override
  String get submitFeedback => 'Odeslat';

  @override
  String get syncCorruptedFile => 'Zdá se, že záložní soubor je poškozený.';

  @override
  String get syncDirectoryDoesNotExist => 'Zadaný adresář neexistuje.';

  @override
  String get syncNcMaintenance => 'Nextcloud je v režimu údržby.';

  @override
  String get syncNoInternetConnection => 'Žádné připojení k internetu.';

  @override
  String get syncNotNcServer =>
      'Na této adrese se nepodařilo najít server Nextcloud.';

  @override
  String get syncServiceUnavailable => 'Nextcloud není k dispozici.';

  @override
  String get syncSuccessful => 'Úspěšně synchronizováno.';

  @override
  String get syncUnknownError => 'Došlo k neznámé chybě.';

  @override
  String get syncWrongUrl => 'Vámi uvedená url adresa se zdá být nesprávná.';

  @override
  String get syncWrongUserOrPassword =>
      'Zadané uživatelské jméno nebo heslo je nesprávné.';

  @override
  String get system => 'Systém';

  @override
  String get systemInfo => 'Systém';

  @override
  String get thankYouForFeedback => 'Děkujeme za zaslání zpětné vazby!';

  @override
  String get title => 'Titul';

  @override
  String get titleMayNotBeEmpty => 'Název nesmí být prázdný';

  @override
  String get today => 'Dnes';

  @override
  String get todoSearch => 'Hledání Todo';

  @override
  String get todoSearchDescription =>
      'Přidání tlačítka pro vyhledávání do seznamu úkolů, které umožňuje prohledávat úkoly.';

  @override
  String get tomorrow => 'Zítra';

  @override
  String get treatTodayAsIsImportant => 'Považujte dnešní den za důležitý';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Pokud je tato možnost povolena, s úkoly, které mají být splněny dnes, se bude zacházet, jako by byly označeny hvězdičkou';

  @override
  String get trimTodoTexts => 'Trim Todo texty';

  @override
  String get trimTodoTextsDescription =>
      'Pokud je povoleno, ořízne z názvu a popisu Todosu všechny okolní bílé znaky';

  @override
  String get trueBlackMode => 'Režim True Black';

  @override
  String get trueBlackModeDescription =>
      'Vytvoří černé pozadí, což je užitečné zejména pro zařízení s oled displejem';

  @override
  String get turnOff => 'Vypnout';

  @override
  String get turnOn => 'Zapnout';

  @override
  String get undo => 'Zrušit';

  @override
  String get update => 'Aktualizace';

  @override
  String get updateCredentials => 'Aktualizace pověření';

  @override
  String get useCustomTabs => 'Použití prohlížeče v aplikacích';

  @override
  String get useCustomTabsDescription =>
      'Používání prohlížeče v aplikaci pro otevírání odkazů';

  @override
  String get whatsNew => 'Co je nového?';

  @override
  String get yesterday => 'Včera';

  @override
  String get error => 'Chyba';

  @override
  String get routingError =>
      'Ups! Zdá se, že se něco pokazilo a vy jste se ocitli na stránce, která neexistuje. Moc se za to omlouvám!';

  @override
  String get goToHome => 'Jdi domů';

  @override
  String get pageNotFound => 'Stránka nebyla nalezena';

  @override
  String get updateDoable => 'Aktualizace Doable';

  @override
  String get download => 'Stáhnout';

  @override
  String get install => 'Instalace';

  @override
  String get installed => 'Instalováno';

  @override
  String get updateNotInstalled => 'Aktualizace nebyla nainstalována.';

  @override
  String get skipVersion => 'Přeskočit tuto verzi';

  @override
  String get couldNotDownloadUpdate => 'Nepodařilo se stáhnout aktualizaci.';

  @override
  String versionWithNumber(String version) {
    return 'Verze $version';
  }

  @override
  String get autoUpdates => 'Auto aktualizace';

  @override
  String get autoUpdatesDescription => 'Automatická kontrola aktualizací';

  @override
  String get introExtensions => 'Rozšíření? Rozšíření!';

  @override
  String get introExtensionsDescription =>
      'Rozšíření umožňují rozšířit a rozšířit sadu funkcí aplikace Doable. Dávají vám možnost zvolit si, jak přesně chcete Doable používat. Pokud si chcete prohlédnout všechna dostupná rozšíření, stačí kliknout na tlačítko níže!';

  @override
  String get introExtensionsButton => 'Rozšiřte se!';

  @override
  String get useBottomSheetMenu => 'Použití nabídky spodního listu';

  @override
  String get useBottomSheetMenuDescription =>
      'Použití spodního listu místo rozbalovacího seznamu jako nabídky';

  @override
  String get contributors => 'Přispěvatelé';

  @override
  String get contributorDescription =>
      'Lidé, kteří pomohli společnosti Doable stát se tím, čím je';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV url';

  @override
  String get webdavLogOutMessage =>
      'Při odhlášení budou vaše uložené přihlašovací údaje vymazány. Uložený soubor však zůstane zachován.';

  @override
  String get importExport => 'Import & export';

  @override
  String get chooseDirectory => 'Zvolte adresář';

  @override
  String get forgetDirectory => 'Zapomeň na adresář';

  @override
  String get newStarredTodo => 'Nové hvězdičky Todo';

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
  String get listsDescription =>
      'Create lists and sort your Todos with them. You can create an unlimited amount of lists, accessible through a drawer on the home screen.';

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
  String get popUpAnimationOverSlideAnimationDescription =>
      'Use the old pop up style page transition';

  @override
  String get restart => 'Restart';

  @override
  String get later => 'Later';

  @override
  String get restartRequired => 'Restart required';

  @override
  String get restartRequiredForSetting =>
      'An app restart is required for this setting to take affect.';

  @override
  String get image => 'Image';

  @override
  String get expandTodos => 'Expand Todos';

  @override
  String get showTodoListNames => 'Show list names';

  @override
  String get includeBranding => 'Include branding';

  @override
  String get doableBrandingText =>
      'Shared from Doable, the simple, modern and easy to use Todo app.\nYou can get Doable here: https://codeberg.org/florian-obernberger/flutter-doable';

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
  String get contributeWantYourNameHereDescription =>
      'Contribute to Doable directly or help translating it!';

  @override
  String get onlySymbolInDetailViewFab => 'Icon instead of text';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Use an icon instead of text in the Todo detail view';

  @override
  String get allSelected => 'All selected';

  @override
  String get sharedTextAsTitle => 'Shared text as title';

  @override
  String get sharedTextAsTitleDescription =>
      'Use text shared to Doable as the title of the new Todo instead of its description';

  @override
  String get noTodoLists =>
      'You currently don\'t have any lists.\nCreate a new one to get started!';

  @override
  String forExample(String example) {
    return 'ex. $example';
  }

  @override
  String get clearSelection => 'Clear selection';

  @override
  String get syncConnectionTimedOut => 'Connection timed out.';

  @override
  String get syncTooManyTimeOuts =>
      'The server timed out too many times. Sync is disabled until app restart.';

  @override
  String get todoToCalendar => 'Add Todo to calendar';

  @override
  String get logs => 'Logs';

  @override
  String get logsDescription => 'Show all the logs Doable prints';

  @override
  String get aboutToClearAllLogs =>
      'You\'re about to delete all logs making them inaccessible for feedback and trouble shooting. This action is permanent and cannot be undone.';

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
  String get fixCorruptBackupFile =>
      'The backup file of Doable could not be read and appears to be corrupt. Doable can try to fix this by deleting the current backup file and creating a new one. This will delete all changes made in other Doable instances using the same backup file.';

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
  String get languageNameInEnglish => 'Czech';

  @override
  String get languageNameInNativeLanguage => 'Čeština';

  @override
  String get createSummaryForBugReport => 'Create summary';

  @override
  String get createSummaryForBugReportDetails =>
      'Creates a report containing system info, Doable\'s settings, and all logs. This can be useful for bug reports and helps troubleshoot a problem.';

  @override
  String get bugReport => 'Bug report';

  @override
  String get bugReportSupportingText =>
      'Please choose what you would like to include in the bug report. The more information you provide, the easier it is to find out exactly what went wrong. **No personal information will be shared.**';

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
  String get closeDetailsOnCompelteDescription =>
      'Saves the Todo and closes its detail view when pressing the complete button.';

  @override
  String get customColorTheme => 'Custom color theme';

  @override
  String get discardCustomColorTheme =>
      'You\'re about to discard all changes made to the color theme.';

  @override
  String get lightMode => 'Light mode';

  @override
  String get deletedCustomColorTheme => 'Deleted custom color theme.';

  @override
  String get customThemeInfo =>
      'Here you can change each and every color token to your heart’s content. You can also import / export the colors into a `json` file and edit them there!\n\nIf you want to understand, what each token does, please visit the following website: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Import';

  @override
  String get customThemeFuckedFile =>
      'This file does not contain a valid color theme. Please make sure your file follows the same style and structure as the file you exported.';

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
  String get fediDoablePost =>
      'Just managed to finish all my Todos thanks to @Doable@floss.social!\n\nSounds interesting? You can find out more about #Doable by visiting https://repo.doable.at!';

  @override
  String get doable => 'Doable – moderní a jednoduchá aplikace pro úkoly';

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
  String get recurringTodosDescription =>
      'Add recurrence to your Todos and let Doable automatically reschedule them for you once you complete them. The Todos will be rescheduled based on the relevant date and the schedule you set. If you didn’t add a due date to your Todo, its creation date will be used instead.\n\n**One thing to keep in mind: While you can now set tasks to repeat in Doable, please note that currently this feature is limited to English.**';

  @override
  String get post => 'Post';

  @override
  String get rrRepeats => 'Repeats';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription =>
      'This extension is still in beta and you might come across a few hiccups while using it. Please be aware of the risks and let me know if you come across any issues!';

  @override
  String get extensionBetaWarning => 'Enable beta extension?';

  @override
  String get showFediButton => 'Show post button';

  @override
  String get showFediButtonDescription =>
      'Show a button that lets you post about your empty list to the Fediverse';

  @override
  String get notifications => 'Notifications';

  @override
  String get enableNotifications => 'Enable notifications';

  @override
  String get notifyAll => 'All Todos';

  @override
  String get notifyAllDescription =>
      'Get notified for every Todo that has a due date';

  @override
  String get notifyTimeOnly => 'Only Todos with time';

  @override
  String get notifyTimeOnlyDescription =>
      'Only get notified for Todos that have both a due date and time';

  @override
  String get notifyTodosChannelName => 'Todos';

  @override
  String get notificationsDescription =>
      'Let Doable notify you when your Todos are due. You can also change for which Todos you will receive notifications.';

  @override
  String get notificationsDescriptionShort =>
      'Change for which Todos you get notified';

  @override
  String get notifyNeverDescription => 'Don\'t get notified for any Todos';

  @override
  String get defaultNotificationTime => 'Default notification time';

  @override
  String get defaultNotificationTimeDescription =>
      'The time you will get notified for Todos that don\'t have a relevant time';

  @override
  String get addImage => 'Add image';

  @override
  String get todoImages => 'Images';

  @override
  String get todoImagesDescription =>
      'Add images to your Todos so you can add more context to what you\'re writing.\n\n**Unfortunately images will not be synchronized yet.**';

  @override
  String get clearInputField => 'Clear input field';

  @override
  String get removeImage => 'Remove image';

  @override
  String get apkSignatureInvalid => 'Invalid signature';

  @override
  String get apkSignatureInvalidDescription =>
      'The signature of the downloaded apk file could not be verified. Please notify the developer about this issue. While you can proceed to install the apk at your own risk, we recommend caution due to potential security concerns.';

  @override
  String get searchTodos => 'Search Todos';

  @override
  String get editTodo => 'Edit Todo';

  @override
  String get previewTodo => 'Preview Todo';

  @override
  String get readerMode => 'Reader mode';

  @override
  String get readerModeDescription =>
      'Allows you to preview your Todos inside the edit screen.';

  @override
  String get noList => 'No list';

  @override
  String get chooseAList => 'Choose a list';

  @override
  String get readerModeDescriptionShort =>
      'Change the initial mode when opening a Todo';

  @override
  String get lastUsed => 'Last used';

  @override
  String get syncFileLocked =>
      'The server locked a backup file, please try again in about 15 minutes.';

  @override
  String get syncInternalError =>
      'There was an internal error, apologies for the inconvenience.';

  @override
  String get syncConnectionError =>
      'An error occurred while connecting to the server.';

  @override
  String get restore => 'Restore';

  @override
  String get loggingNextcloudIn => 'Logging in to Nextcloud…';

  @override
  String get initializingWebdav => 'Initializing Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Migrating Nextcloud to new synchronization implementation…';

  @override
  String get migratingWebdavToRemote =>
      'Migrating Webdav to new synchronization implementation…';

  @override
  String get migrateToRemotes => 'Migration';

  @override
  String get migrateToRemotesDescription =>
      'Doable recently changed how it synchronizes with remotes like Nextcloud or Webdav. Unfortunately the new implementation is not backwards compatible and therefore a migration needs to take place. Doable should need a minute to migrate everything it needs to.\n\nIf you choose to do it later you might encounter some error messages since the new implementation has not yet been set up.';

  @override
  String get fixBrokenRemoteFile =>
      'A backup file of Doable appears to be corrupt. Doable can fix it by overriding it with the current, local value. This will override any changes made by other devices after that error occurred.';

  @override
  String get fixedBrokenRemoteFile => 'Successfully restored broken file.';

  @override
  String get unfixableRemoteFile => 'The file could not be restored.';

  @override
  String get syncFileDoesNotExist => 'A backup file of Doable does not exist.';

  @override
  String get todos => 'Todos';

  @override
  String get selectWhatToExport =>
      'Please select what you would like to export.';

  @override
  String get exportFile => 'Export file';

  @override
  String get listColor => 'List color';

  @override
  String get listColorAsAccent => 'List color as accent';

  @override
  String get listColorAsAccentDescription =>
      'Use the color of the current list as the accent color for Doable';

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
  String get aboutOpenSource =>
      'All of Doable\'s source code is accessible on Codeberg under a FOSS license. You can also submit issues and pull requests there. You can also find Doable\'s F-Droid repository over on Codeberg!';

  @override
  String get aboutPrivacy =>
      'Doable does not collect any personal information about you. The only thing Doable stores about your usage are logs. However those logs **are not uploaded automatically.** The only way those logs leave your device is if you choose to share them for example to help me fix a bug.';

  @override
  String get httpWarning => 'Unencrypted connection';

  @override
  String get cancelling => 'Cancelling…';

  @override
  String get httpWarningDescription =>
      'You are trying to connect to an HTTP server instead of a more secure HTTPS server. HTTP sends the data unencrypted to the server, posing potential security risks so this is not recommended. There are however certain use cases like a locally hosted server. Are you sure you want to continue with HTTP?';

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
  String get enableNotificationSoundDescription =>
      'Play a custom sound when showing a notification';

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
  String get hideListDescription =>
      'Don\'t show Todos of this list in the overview.';

  @override
  String get gotIt => 'Got it';

  @override
  String get updateRelease =>
      'Open Doable\'s release page and download the latest version';

  @override
  String get updateDownload =>
      'Let Doable download the latest version for you; you will find the file in the notification area and can install it by clicking on it';

  @override
  String get updateFdroid =>
      'If you installed Doable from F-Droid you should get the update in the next couple hours either from IzzyOnDroid\'s repository or Doable\'s own repository';

  @override
  String get updateDisable =>
      'You can also disable automatic update checks all together in the settings';

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
  String get autoExportDescription =>
      'You can let Doable automatically make exports of your Todos, Lists, and Settings. Please know, that Doable will create a new file for every export! Choose the duration between exports accordingly.';

  @override
  String get seconds => 'Seconds';

  @override
  String get apkVerifyingSignature => 'Verifying apk signature…';

  @override
  String get swipeActions => 'Swipe actions';

  @override
  String get swipeActionsDescription =>
      'Adds the ability to swipe left on Todos to either star them or complete them.\n\n**Note, that this might sometimes conflicht with the Lists extension\'s drawer.**';

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
  String get forceHighestRefreshRateDescription =>
      '(Try to) force the system to use the highest possible refresh rate inside the app';

  @override
  String get overview => 'Overview';

  @override
  String whatsNewIn(String version) {
    return 'What\'s new in $version?';
  }

  @override
  String get expandTodosByDefault => 'Expand Todos by default';

  @override
  String get expandTodosByDefaultDescription =>
      'Show Todos as expanded by default';

  @override
  String get progress => 'Progress';

  @override
  String get progressBar => 'Progress bar';

  @override
  String get progressBarDescription =>
      'Adds a progress bar to your Todos giving you finer control over its completion state.';

  @override
  String get syncMultipleErrors =>
      'The remote encountered multiple errors. For details see the logs.';

  @override
  String get deletedCompleted => 'Deleted completed Todos.';

  @override
  String get dateRange => 'Range';

  @override
  String get next3Days => 'Next 3 days';

  @override
  String get dateFilters => 'Date filters';

  @override
  String get dateFiltersDescription =>
      'Add the option to filter your Todos by a specific date range.';

  @override
  String get exportedFile => 'Exported file.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Please enable the $extensionName extension in order to use this feature.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Shows Pride flags behind the title bar in certain months';

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
  String get defaultNotificationsDescriptionIfLists =>
      'You can also select different Notifications for each List.';

  @override
  String get halfHourAfter => 'Half hour after';

  @override
  String get customNotificationTime => 'Custom notification time';

  @override
  String get defaultNotificationsDescription =>
      'Select default Notifications that get added to every Todo with a relevant date.';

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
  String get snoozeDurationDescription =>
      'Duration that a notification gets delayed for when pressing the snooze button';

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
  String get aboutToCancelChangesToList =>
      'You\'re about to discard all changes made to this List.';

  @override
  String get notificationsAlwaysPreview => 'Always preview Notifications';

  @override
  String get notificationsAlwaysPreviewDescription =>
      'Always open Notifications in preview mode regardless (this does not affect what mode was last used)';

  @override
  String get nextcloudWipeDescription =>
      'Doable received a request to wipe all data associated with the Nextcloud account you logged in with. Therefore you will be logged out of your account. You can also choose to wipe all data (Todos and Lists) from the app. This action is permanent and cannot be undone.';

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
  String get useSystemFontDescription =>
      'Use the system font as the primary font for Doable';

  @override
  String get batteryOptimization => 'Battery optimization';

  @override
  String get batteryOptimizationDescription =>
      'Doable is being battery optimized. While this usually isn\'t a problem it might lead to some issues when logging in to Nextcloud. If you want to ensure a smooth experience, please disable these optimizations.';

  @override
  String get couldNotAddTodoToCalendar => 'Could not add Todo to calendar.';

  @override
  String get sortCompleted => 'Sort completed';

  @override
  String get sortCompletedDescription =>
      'Apply sorting to completed Todos as well';
}
