import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class StringsRo extends Strings {
  StringsRo([String locale = 'ro']) : super(locale);

  @override
  String get about => 'Despre';

  @override
  String get aboutDescription => 'Informații despre aplicație';

  @override
  String get aboutOSInfo =>
      'Codul sursă: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPolitica de confidențialitate: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nDepozitul F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Anulați modificările?';

  @override
  String get aboutToCancelChangesDescription =>
      'Sunteți pe cale să renunțați la toate modificările făcute la această sarcină.';

  @override
  String get aboutToCancelFeedback => 'Să respingem feedbackul?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Sunteți pe cale să renunțați la feedback-ul dumneavoastră. Acest lucru nu poate fi anulat.';

  @override
  String get aboutToDeleteCompleted =>
      'Sunteți pe cale să ștergeți toate sarcinile finalizate. Această acțiune este permanentă și nu poate fi anulată.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString sarcini',
      one: 'o sarcină',
    );
    return 'Sunteți pe cale să ștergeți $_temp0. Această acțiune este permanentă și nu poate fi anulată.';
  }

  @override
  String get additionalFeatures => 'Extensii';

  @override
  String get additionalFeaturesDescription =>
      'Caracteristici care fac Doable mai puternic';

  @override
  String get alignTodoCheck => 'Bifă dreapta';

  @override
  String get alignTodoCheckDescription =>
      'Afișați bifa sarcinii în partea dreaptă';

  @override
  String get appLanguage => 'Limba aplicației';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Atenție';

  @override
  String get back => 'Înapoi';

  @override
  String get syncAndBackup => 'Sincronizare & Backup';

  @override
  String get syncAndBackupDescription =>
      'Efectuați o copie de rezervă și sincronizați-vă sarcinile';

  @override
  String get cancel => 'Anulează';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Am recomandat să includeți toate informațiile de mai jos, deoarece mă ajută la depistarea problemei dvs. Aceasta nu include informații personale.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Ce informații suplimentare ați dori să includeți?';

  @override
  String get chooseFeedbackWay => 'Unde doriți să oferiți feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Sarcină completată.';

  @override
  String get copiedToClipboard => 'Textul copiat în clipboard.';

  @override
  String get customAccentPicker => 'Culoare accentuală';

  @override
  String get customAccentPickerDescription =>
      'Alegeți o culoare de accent personalizată pentru tema aplicației';

  @override
  String get darkMode => 'Mod închis';

  @override
  String get deleteCompletedAfter => 'Autodelete finalizat';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Ștergeți după $duration';
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
      other: '$countString sarcini',
      one: 'o sarcină',
    );
    return 'Eliminat $_temp0.';
  }

  @override
  String get description => 'Descriere';

  @override
  String get design => 'Design';

  @override
  String get designDescription => 'Modificați aspectul lui Doable';

  @override
  String get disable => 'Dezactivați';

  @override
  String get discard => 'Aruncare';

  @override
  String get doContinue => 'Continuați';

  @override
  String get done => 'Realizată';

  @override
  String get dynamicColors => 'Culori dinamice';

  @override
  String get dynamicColorsDescription =>
      'Utilizați culorile sistemului (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Activați';

  @override
  String get enabled => 'Activat';

  @override
  String get export => 'Exportul';

  @override
  String get exportAllTodos => 'Exportați toate sarcinile';

  @override
  String exportEvery(String duration) {
    return 'Exportați la fiecare $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'O explicație mai detaliată a ceea ce nu a mers bine / cum s-a întâmplat.';

  @override
  String get feedbackHeader =>
      'Vă rugăm să completați formularul de mai jos pentru a mă ajuta să înțeleg ce nu a mers bine.';

  @override
  String get feedbackTitleHelp => 'O scurtă sinteză a evenimentului.';

  @override
  String get general => 'Generală';

  @override
  String get generalDescription =>
      'Modificați comportamentul general al aplicației';

  @override
  String get giveFeedback => 'Comentarii';

  @override
  String get highlightOverdue => 'Evidențiați întârzieri';

  @override
  String get highlightOverdueDescription =>
      'Evidențiați sarcinile care sunt depășite în același mod ca și sarcinile favorite';

  @override
  String get highlightToday => 'Evidențiați astăzi';

  @override
  String get highlightTodayDescription =>
      'Evidențiați sarcinile care trebuie predate astăzi în același mod ca și sarcinile favorite';

  @override
  String get importLocalBackupError =>
      'Fișierul nu a putut fi importat. Sunteți sigur că a fost generat de Doable?';

  @override
  String get importTodosFromFile => 'Importați fișier';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString sarcini',
      one: 'o sarcină',
      zero: 'zero sarcini',
    );
    return 'Importat $_temp0.';
  }

  @override
  String get installedFrom => 'Instalate din';

  @override
  String get introDoubleTap => 'Dublă atingere';

  @override
  String get introDoubleTapDescription =>
      'Puteți apăsa de două ori pe sarcini care au o descriere pentru a le extinde. Atunci când este extinsă, este afișată descrierea completă și puteți interacționa cu linkuri etc.\n\nPuteți încerca acest lucru cu un exemplu chiar aici!';

  @override
  String get introDoubleTapTodoDescription =>
      'Tortul este o minciună!\n\nAflați mai multe aici:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Cumpărați tort nou';

  @override
  String get introLinks => 'Linkuri, numere de telefon, e-mailuri';

  @override
  String get introLinksDescription =>
      'Atunci când adăugați linkuri, numere de telefon sau adrese de e-mail la o descriere, acestea vor fi evidențiate automat și veți putea interacționa cu ele.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'De asemenea, vă puteți sincroniza sarcinile cu o instanță Nextcloud. Dacă doriți, puteți să vă conectați chiar aici!';

  @override
  String get introStar => 'Stele';

  @override
  String get introStarDescription =>
      'Adăugați o stea la o sarcină pentru a face-o\nsă iasă în evidență printre celelalte.\n\nApasă pe steaua de mai jos pentru a o încerca!';

  @override
  String get introTodos => 'Sarcini';

  @override
  String get introTodosDescription =>
      'Când creați o sarcină nouă, puteți adăuga diverse lucruri. De exemplu, puteți adăuga o dată la care sarcina devine relevantă, sau puteți să o însemnați cu o stea pentru a face-o să iasă în evidență printre celelalte! De asemenea, puteți adăuga o descriere cu linkuri sau alte informații legate de sarcină.';

  @override
  String get introWelcome => 'Bun venit la Doable!';

  @override
  String get introWelcomeDescription =>
      'Aplicația simplă de sarcini cu design modern\nși integrare Nextcloud.';

  @override
  String get keepEditing => 'Continuă editarea';

  @override
  String get left => 'Stânga';

  @override
  String get licenses => 'Licențele';

  @override
  String get licensesDescription => 'Sursă deschisă și licențe Flutter';

  @override
  String get localStorage => 'Stocare locală';

  @override
  String get logIn => 'Conectați vă';

  @override
  String get logOut => 'Deconectați vă';

  @override
  String get logOutputs => 'Jurnale';

  @override
  String get markCompleted => 'Marcă completată';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Marcați nefinalizat';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown Suportul';

  @override
  String get mayNotBeEmpty => 'Poate să nu fie gol';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Adăugă suport pentru sintaxa markdown de bază în descrierea și titlul tuturor sarcinilor.\n\nPentru o listă completă a opțiunilor de sintaxă, puteți verifica\nhttps://www.markdownguide.org/cheat-sheet/.\n\nCu toate acestea, această aplicație **nu** acceptă toate specificațiile markdown. Elementele suportate sunt::\n\n- Bold\n- Italic\n- Subliniere (\\_\\_text\\_\\_\\_)\n- Blocuri de ghilimele\n- Liste ordonate / neordonate\n- Liste de sarcini\n- Cod în linie și blocuri de cod îngrădit\n- Legături\n- Evidențiere\n- Tragere în evidență';

  @override
  String get moveImportantToTop => 'Mutați important în partea de sus';

  @override
  String get moveImportantToTopDescription =>
      'Dacă este activat, sarcinile care au fost marcate cu stele vor fi afișate întotdeauna în partea de sus a listei';

  @override
  String get moveUpWhenUpdated => 'Reflectarea modificărilor în listă';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Sarcinile se mută în partea de sus a listei după ce au fost modificate';

  @override
  String get ncBaseUrl => 'Serverul';

  @override
  String get ncBaseUrlHint => 'Urla de interfață web Nextcloud';

  @override
  String get ncDirectory => 'Directorul';

  @override
  String get ncFileIn => 'Fișier stocat în';

  @override
  String get ncLogOut => 'Deconectarea din Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Când vă deconectați, acreditările stocate vor fi șterse. Cu toate acestea, fișierul salvat pe instanța Nextcloud va persista.';

  @override
  String get ncLoggedInAs => 'Logat ca';

  @override
  String get ncPassword => 'Parola';

  @override
  String get ncUser => 'Utilizator';

  @override
  String get never => 'Niciodată';

  @override
  String get newSubTodo => 'Sub-sarcină';

  @override
  String get newTodo => 'Sarcină nouă';

  @override
  String get next => 'Următorul';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Nu au mai rămas sarcini de făcut, bravo!';

  @override
  String get notAValidUrl => 'Nu este o adresă validă';

  @override
  String get off => 'Oferă';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Pe';

  @override
  String get optional => 'Opțional';

  @override
  String get pickAColor => 'Alege o culoare';

  @override
  String get pickerPrimary => 'Standarde';

  @override
  String get pickerWheel => 'Personalizat';

  @override
  String get popupMenuDeleteCompleted => 'Ștergere completată';

  @override
  String get popupMenuHideCompleted => 'Ascundere finalizată';

  @override
  String get popupMenuShowCompleted => 'Spectacol finalizat';

  @override
  String get quoteDoubleLeft => '’';

  @override
  String get quoteDoubleRight => '’';

  @override
  String get quoteSingleLeft => '’';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Data limită';

  @override
  String get required => '*recomandat';

  @override
  String get reset => 'Resetare';

  @override
  String get right => 'Corect';

  @override
  String get save => 'Salvați';

  @override
  String get settings => 'Setări';

  @override
  String get showCompletedTodos => 'Afișați completate';

  @override
  String get showCompletedTodosDescription =>
      'Afișați sarcinile completate în listă';

  @override
  String get showIntroScreen => 'Afișați din nou ecranul de introducere';

  @override
  String get sortNewestFirst => 'Cel mai nou întâi';

  @override
  String get sortNewestFirstDescription =>
      'Datele mai noi sunt afișate în partea de sus';

  @override
  String get sortNoRelevantDate => 'Fără dată';

  @override
  String get sortOverdue => 'Întârziere';

  @override
  String get sortRelevantDate => 'Cu data';

  @override
  String get sortStarred => 'Cu rol principal';

  @override
  String get sortToday => 'De astăzi';

  @override
  String get sorting => 'Sortare';

  @override
  String get sortingDescription => 'Ordinea în care vor fi sortate sarcinile';

  @override
  String get submitFeedback => 'Trimiteți';

  @override
  String get syncCorruptedFile => 'Fișierul de rezervă pare să fie corupt.';

  @override
  String get syncDirectoryDoesNotExist => 'Directorul specificat nu există.';

  @override
  String get syncNcMaintenance => 'Nextcloud este în modul de întreținere.';

  @override
  String get syncNoInternetConnection => 'Nu aveți conexiune la internet.';

  @override
  String get syncNotNcServer =>
      'Nu am putut găsi un server Nextcloud la această adresă.';

  @override
  String get syncServiceUnavailable => 'Nextcloud indisponibil.';

  @override
  String get syncSuccessful => 'Sincronizare reușită.';

  @override
  String get syncUnknownError => 'A apărut o eroare necunoscută.';

  @override
  String get syncWrongUrl =>
      'URL-ul pe care l-ați furnizat pare să fie incorect.';

  @override
  String get syncWrongUserOrPassword =>
      'Numele de utilizator sau parola furnizate sunt incorecte.';

  @override
  String get system => 'Sistem';

  @override
  String get systemInfo => 'Sistem';

  @override
  String get thankYouForFeedback => 'Vă mulțumim că ați trimis feedback!';

  @override
  String get title => 'Titlu';

  @override
  String get titleMayNotBeEmpty => 'Titlul nu poate fi gol';

  @override
  String get today => 'Astăzi';

  @override
  String get todoSearch => 'Căutați sarcini';

  @override
  String get todoSearchDescription =>
      'Adăugați un buton de căutare în lista de sarcini, care vă permite să căutați printre sarcinile dumneavoastră.';

  @override
  String get tomorrow => 'Mâine';

  @override
  String get treatTodayAsIsImportant =>
      'Tratați ziua de azi ca fiind importantă';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Dacă această opțiune este activată, sarcinile care sunt scadente astăzi vor fi tratate ca și cum ar fi fost marcate cu stea';

  @override
  String get trimTodoTexts => 'Tăiați textul sarcinilor';

  @override
  String get trimTodoTextsDescription =>
      'Dacă activat, taie orice spațiu alb din jurul titlului și descrierii sarcinii';

  @override
  String get trueBlackMode => 'Modul negru adevărat';

  @override
  String get trueBlackModeDescription =>
      'Face ca fundalul să fie negru, util în special pentru dispozitivele oled';

  @override
  String get turnOff => 'Opriți';

  @override
  String get turnOn => 'Porniți';

  @override
  String get undo => 'Anulați';

  @override
  String get update => 'Actualizare';

  @override
  String get updateCredentials => 'Actualizarea acreditărilor';

  @override
  String get useCustomTabs => 'Utilizați browserul în aplicație';

  @override
  String get useCustomTabsDescription =>
      'Utilizați un browser în aplicație pentru a deschide linkuri';

  @override
  String get whatsNew => 'Ce e nou?';

  @override
  String get yesterday => 'Ieri';

  @override
  String get error => 'Eroare';

  @override
  String get routingError =>
      'Oops! Se pare că ceva nu a mers bine și ați ajuns pe o pagină care, ei bine, nu există. Îmi pare nespus de rău pentru asta!';

  @override
  String get goToHome => 'Mergeți acasă';

  @override
  String get pageNotFound => 'Pagina nu este găsită';

  @override
  String get updateDoable => 'Actualizare Doable';

  @override
  String get download => 'Descărcați';

  @override
  String get install => 'Instalare';

  @override
  String get installed => 'Instalată';

  @override
  String get updateNotInstalled => 'Actualizarea nu a fost instalată.';

  @override
  String get skipVersion => 'Sari peste această versiune';

  @override
  String get couldNotDownloadUpdate => 'Nu a putut descărca actualizarea.';

  @override
  String versionWithNumber(String version) {
    return 'Versiune $version';
  }

  @override
  String get autoUpdates => 'Actualizări automate';

  @override
  String get autoUpdatesDescription => 'Verificați automat actualizările';

  @override
  String get introExtensions => 'Extensii? Extensii!';

  @override
  String get introExtensionsDescription =>
      'Extensiile vă permit să extindeți și să măriți setul de caracteristici al Doable. Acestea vă oferă puterea de a alege exact cum doriți să utilizați Doable. Dacă doriți să verificați toate extensiile disponibile, faceți clic pe butonul de mai jos!';

  @override
  String get introExtensionsButton => 'Extinde te!';

  @override
  String get useBottomSheetMenu => 'Utilizați meniul foii de jos';

  @override
  String get useBottomSheetMenuDescription =>
      'Utilizați o foaie de jos în loc de o listă derulantă ca meniu';

  @override
  String get contributors => 'Contribuitori';

  @override
  String get contributorDescription =>
      'Oameni care au ajutat Doable să devină ceea ce este';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV url';

  @override
  String get webdavLogOutMessage =>
      'Când vă deconectați, acreditările stocate vor fi șterse. Cu toate acestea, fișierul salvat va persista.';

  @override
  String get importExport => 'Import și export';

  @override
  String get chooseDirectory => 'Alegeți directorul';

  @override
  String get forgetDirectory => 'Uitați directorul';

  @override
  String get newStarredTodo => 'Sarcină nouă marcată cu stea';

  @override
  String get allTodos => 'Toate sarcinile';

  @override
  String get newTodoList => 'Listă nouă';

  @override
  String get deleteTodoList => 'Ștergeți lista';

  @override
  String get editTodoList => 'Editați lista';

  @override
  String get lists => 'Liste';

  @override
  String get listsDescription =>
      'Creați liste și sortați sarcini cu ele. Puteți crea un număr nelimitat de liste, accesibile printr-un sertar pe ecranul acasă.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Sunteți pe cale să ștergeți lista $listName și toate sarcinile din ea. Această acțiune este permanentă și nu poate fi anulată.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Listă';

  @override
  String get share => 'Partajați';

  @override
  String get font => 'Font';

  @override
  String get fontDescription => 'Apăsați lung pentru a arăta numele fonturilor';

  @override
  String get popUpAnimationOverSlideAnimation => 'Tranziția de pagină veche';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Folosiți stilul vechi de pop-up pentru tranziția de pagină';

  @override
  String get restart => 'Reporniți';

  @override
  String get later => 'Mai târziu';

  @override
  String get restartRequired => 'Repornire necesară';

  @override
  String get restartRequiredForSetting =>
      'O repornire a aplicației este necesară pentru ca această setare să aibă efect.';

  @override
  String get image => 'Imagine';

  @override
  String get expandTodos => 'Extindeți sarcinile';

  @override
  String get showTodoListNames => 'Afișați lista numelor';

  @override
  String get includeBranding => 'Includeți branding';

  @override
  String get doableBrandingText =>
      'Partajat din Doable, aplicația de sarcini simplă, modernă și ușor de folosit.\nPuteți descărca Doable de aici: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'Selectați cum doriți să partajați sarcinile dumneavoastră';

  @override
  String get options => 'Opțiuni';

  @override
  String get reduceMotion => 'Reduceți mișcarea';

  @override
  String get reduceMotionDescription => 'Reduceți mișcarea animațiilor';

  @override
  String get contribute => 'Contribuiți';

  @override
  String get contributeWantYourNameHere => 'Doriți numele dumneavoastră aici?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Contribuiți direct la Doable sau ajutați traducerea!';

  @override
  String get onlySymbolInDetailViewFab => 'Iconiță în loc de text';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Folosiți o iconiță în loc de text în vizualizarea detaliată a sarcinii';

  @override
  String get allSelected => 'Toată selecția';

  @override
  String get sharedTextAsTitle => 'Text partajat ca titlu';

  @override
  String get sharedTextAsTitleDescription =>
      'Folosiți textul partajat la Doable ca titlul unei noi sarcini în loc de descrierea ei';

  @override
  String get noTodoLists =>
      'În prezent nu aveți liste.\nCreați una pentru a începe!';

  @override
  String forExample(String example) {
    return 'ex. $example';
  }

  @override
  String get clearSelection => 'Ștergeți selecția';

  @override
  String get syncConnectionTimedOut => 'Conexiunea a expirat.';

  @override
  String get syncTooManyTimeOuts =>
      'Conexiunea la server a expirat de prea multe ori. Sincronizarea este dezactivată până la repornirea aplicației.';

  @override
  String get todoToCalendar => 'Adăugați sarcina în calendar';

  @override
  String get logs => 'Registre';

  @override
  String get logsDescription => 'Afișați toate registrele generate de Doable';

  @override
  String get aboutToClearAllLogs =>
      'Sunteți pe cale să ștergeți toate registrele făcându-le inaccesibile pentru feedback și suport. Această acțiune este permanentă și nu poate fi anulată.';

  @override
  String get clearAllLogs => 'Ștergeți toate registrele';

  @override
  String get noLogsYet =>
      'În prezent nu există registre pe care le puteți vedea.';

  @override
  String get dateFormat => 'Formatul datei';

  @override
  String get timeFormat => 'Formatul timpului';

  @override
  String get shareAllLogs => 'Partajați toate registrele';

  @override
  String get copyAllLogs => 'Copiați toate registrele';

  @override
  String get whatWentWrong => 'Ce s-a întâmplat?';

  @override
  String get fixCorruptBackupFile =>
      'Fișierul de rezervă Doable nu a putut fi citit și este posibil să fie corupt. Doable poate încerca să rezolve asta prin ștergerea fișierului curent de rezervă și crearea unui fișier nou. Acest lucru va șterge toate schimbările făcute în celelalte instanțe Doable folosind același fișier de rezervă.';

  @override
  String get initializingNextcloud => 'Inițializare Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Schimbați folderul';

  @override
  String get dueDate => 'Data scadenței';

  @override
  String get dragToReorder => 'Trageți pentru a reordona';

  @override
  String get copySettings => 'Copiați setările';

  @override
  String get copySystemInfo => 'Copiați informațiile sistemului';

  @override
  String get languageNameInEnglish => 'Romanian';

  @override
  String get languageNameInNativeLanguage => 'Română';

  @override
  String get createSummaryForBugReport => 'Creați rezumat';

  @override
  String get createSummaryForBugReportDetails =>
      'Crează un raport conținând informații de sistem, setările Doable și toate registrele. Acesta poate fi folositor pentru rapoarte de erori și ajută la depanarea unei probleme.';

  @override
  String get bugReport => 'Raport erori';

  @override
  String get bugReportSupportingText =>
      'Vă rugam să alegeți ce doriți să includeți în raportul de erori. Cu cât mai multe informații includeți, cu atât va fi mai ușor de găsit exact ce s-a întâmplat greșit. **Informațiile personale nu vor fi partajate.**';

  @override
  String get shareBugReport => 'Împărtășiți raportul de eroare';

  @override
  String get fontSize => 'Mărime font';

  @override
  String get fontSizeDescription =>
      'Înlocuiți mărimea de font setată de sistem';

  @override
  String get decrease => 'Micșorați';

  @override
  String get increase => 'Măriți';

  @override
  String get customSecondaryAccentPicker => 'Culoare secundară';

  @override
  String get customTertiaryAccentPicker => 'Culoare terțiară';

  @override
  String get advancedColorOptions => 'Opțiuni de culori avansate';

  @override
  String get uploadCustomColorScheme =>
      'Încărcați o schemă de culori personalizată';

  @override
  String get downloadCurrentColorScheme =>
      'Descărcați schema de culori curentă';

  @override
  String get markAsStarred => 'Marcați sarcina ca favorită';

  @override
  String get setTime => 'Setați timpul';

  @override
  String get thereAreNoLists => 'Nu există liste încă';

  @override
  String get closeDetailsOnCompelte => 'Închideți detaliile când terminați';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Salvați sarcina și închideți vizualizarea detaliată când apăsați butonul de completare.';

  @override
  String get customColorTheme => 'Temă de culori personalizată';

  @override
  String get discardCustomColorTheme =>
      'Sunteți pe cale să renunțați la toate modificările făcute la tema de culoare.';

  @override
  String get lightMode => 'Mod lumină';

  @override
  String get deletedCustomColorTheme =>
      'Tema de culori personalizată a fost ștearsă.';

  @override
  String get customThemeInfo =>
      'Aici puteți schimba fiecare simbol de culoare pentru a vă mulțumi inima. De asemenea, puteți importa / exporta culorile într-un fișier `json`și să le editați acolo!\n\nDacă doriți să înțelegeți, ce face fiecare simbol, vă rugăm să vizitați pagina de pe următorul site: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importați';

  @override
  String get customThemeFuckedFile =>
      'Acest fișier nu conține o temă de culoare validă. Vă rugăm să vă asigurați că fișierul dvs. urmează același stil și structură ca și fișierul pe care l-ați exportat.';

  @override
  String get markdownBold => 'Îndrăzneț';

  @override
  String get markdownItalic => 'italică';

  @override
  String get markdownMonospace => 'Monospațiu';

  @override
  String get markdownHighlight => 'Evidențiați';

  @override
  String get fediChooseInstance => 'Alegeți instanța dvs';

  @override
  String get fediInstanceUrl => 'Instanța url';

  @override
  String get fediRememberInstance => 'Amintește-ți instanța mea';

  @override
  String get fediDoablePost =>
      'Tocmai am reușit să-mi termin toate sarcinile datorită @Doable@floss.social!\n\nSună interesant? Puteți afla mai multe despre #Doable vizitând https://repo.doable.at!';

  @override
  String get doable => 'Doable - Aplicația modernă și simplă de sarcini';

  @override
  String get rrRepeatsEvery => 'Se repetă la fiecare';

  @override
  String get rrRepeatsOn => 'Se repetă la';

  @override
  String get rrEnds => 'Se termină';

  @override
  String get week => 'Săptămână';

  @override
  String get weeks => 'Săptămâni';

  @override
  String get day => 'Zi';

  @override
  String get days => 'Zile';

  @override
  String get month => 'Lună';

  @override
  String get months => 'Luni';

  @override
  String get year => 'An';

  @override
  String get years => 'Ani';

  @override
  String get onFollowedByDate => 'La';

  @override
  String get rrAfterOccurrences => 'După';

  @override
  String get occurrence => 'Ocurență';

  @override
  String get occurrences => 'Ocurențe';

  @override
  String get rrCustomRecurrence => 'Recurență personalizată';

  @override
  String get daily => 'Zilnic';

  @override
  String get weekly => 'Săptămânal';

  @override
  String get monthly => 'Lunar';

  @override
  String get yearly => 'Anual';

  @override
  String get doesNotRepeat => 'Nu se repetă';

  @override
  String get rrRecurrence => 'Recurență';

  @override
  String get recurringTodos => 'Sarcini recurente';

  @override
  String get recurringTodosDescription =>
      'Adăugați recurență la sarcini și lăsați Doable să le reprogrameze automat pentru dvs. după ce le finalizați. Toate vor fi reprogramate în funcție de data relevantă și de programul pe care l-ați stabilit. Dacă nu ați adăugat o dată de scadență la sarcină, data creației acesteia va fi utilizată în schimb.\n\n**Un lucru de reținut: În timp ce acum puteți seta sarcinile să se repete în Doable, vă rugăm să rețineți că, în prezent, această caracteristică este limitată la limba engleză.**';

  @override
  String get post => 'Postare';

  @override
  String get rrRepeats => 'Se repetă';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription =>
      'Această extensie este încă în versiune beta și s-ar putea să dați peste câteva sughițuri în timp ce o utilizați. Vă rugăm să fiți conștienți de riscuri și să mă anunțați dacă întâmpinați probleme!';

  @override
  String get extensionBetaWarning => 'Activați extensia beta?';

  @override
  String get showFediButton => 'Arătați butonul postare';

  @override
  String get showFediButtonDescription =>
      'Afișați un buton care vă permite să postați pe Fediverse despre lista dvs. goală';

  @override
  String get notifications => 'Notificări';

  @override
  String get enableNotifications => 'Activați notificările';

  @override
  String get notifyAll => 'Toate sarcinile';

  @override
  String get notifyAllDescription =>
      'Primiți o notificare pentru fiecare sarcină care are o dată scadentă';

  @override
  String get notifyTimeOnly => 'Numai sarcinile cu timp';

  @override
  String get notifyTimeOnlyDescription =>
      'Primiți notificări doar pentru sarcinile care au o dată și o oră de predare';

  @override
  String get notifyTodosChannelName => 'Sarcini';

  @override
  String get notificationsDescription =>
      'Lăsați Doable să vă anunțe când trebuie să vă faceți toate sarcinile. De asemenea, puteți schimba pentru ce sarcini veți primi notificări.';

  @override
  String get notificationsDescriptionShort =>
      'Modificați pentru care sarcini sunteți notificat';

  @override
  String get notifyNeverDescription =>
      'Nu primiți nicio notificare pentru sarcini';

  @override
  String get defaultNotificationTime => 'Timpul de notificare implicit';

  @override
  String get defaultNotificationTimeDescription =>
      'Ora la care veți fi notificat pentru sarcini care nu au o oră relevantă';

  @override
  String get addImage => 'Adaugă imagine';

  @override
  String get todoImages => 'Imagini';

  @override
  String get todoImagesDescription =>
      'Adăugați imagini la sarcini, astfel încât să puteți adăuga mai mult context la ceea ce scrieți.\n\n**Din păcate, imaginile nu vor fi încă sincronizate.**';

  @override
  String get clearInputField => 'Ștergeți câmpul de intrare';

  @override
  String get removeImage => 'Eliminați imaginea';

  @override
  String get apkSignatureInvalid => 'Semnătură invalidă';

  @override
  String get apkSignatureInvalidDescription =>
      'Semnătura fișierului apk descărcat nu a putut fi verificată. Vă rugăm să notificați dezvoltatorul cu privire la această problemă. Deși puteți continua să instalați apk-ul pe propriul risc, vă recomandăm prudență din cauza unor potențiale probleme de securitate.';

  @override
  String get searchTodos => 'Căutați sarcini';

  @override
  String get editTodo => 'Editare sarcină';

  @override
  String get previewTodo => 'Previzualizare sarcină';

  @override
  String get readerMode => 'Modul cititor';

  @override
  String get readerModeDescription =>
      'Vă permite să vă previzualizați sarcini în interiorul ecranului de editare.';

  @override
  String get noList => 'Nicio listă';

  @override
  String get chooseAList => 'Alegeți o listă';

  @override
  String get readerModeDescriptionShort =>
      'Schimbați modul inițial la deschiderea unei sarcini';

  @override
  String get lastUsed => 'Ultima utilizare';

  @override
  String get syncFileLocked =>
      'Serverul a blocat un fișier de backup, vă rugăm să încercați din nou în aproximativ 15 minute.';

  @override
  String get syncInternalError =>
      'A avut loc o eroare internă, ne cerem scuze pentru neplăcerile create.';

  @override
  String get syncConnectionError =>
      'A apărut o eroare în timpul conectării la server.';

  @override
  String get restore => 'Restaurați';

  @override
  String get loggingNextcloudIn => 'Conectarea la Nextcloud…';

  @override
  String get initializingWebdav => 'Inițializarea Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Migrăm Nextcloud la noua implementare de sincronizare…';

  @override
  String get migratingWebdavToRemote =>
      'Migrarea Webdav la noua implementare de sincronizare…';

  @override
  String get migrateToRemotes => 'Migrație';

  @override
  String get migrateToRemotesDescription =>
      'Doable a schimbat recent modul în care se sincronizează cu telecomenzi precum Nextcloud sau Webdav. Din păcate, noua implementare nu este compatibilă cu versiunile anterioare și, prin urmare, trebuie să aibă loc o migrare. Doable ar trebui să aibă nevoie de un minut pentru a migra tot ceea ce este necesar.\n\nDacă alegeți să o faceți mai târziu, s-ar putea să întâmpinați unele mesaje de eroare, deoarece noua implementare nu a fost încă configurată.';

  @override
  String get fixBrokenRemoteFile =>
      'Un fișier de backup al Doable pare să fie corupt. Doable îl poate repara înlocuindu-l cu valoarea curentă, locală. Acest lucru va anula orice modificări efectuate de alte dispozitive după apariția erorii respective.';

  @override
  String get fixedBrokenRemoteFile => 'A restaurat cu succes fișierul stricat.';

  @override
  String get unfixableRemoteFile => 'Fișierul nu a putut fi restaurat.';

  @override
  String get syncFileDoesNotExist => 'Nu există un fișier de backup al Doable.';

  @override
  String get todos => 'Sarcini';

  @override
  String get selectWhatToExport =>
      'Vă rugăm să selectați ceea ce doriți să exportați.';

  @override
  String get exportFile => 'Exportați fișierul';

  @override
  String get listColor => 'Culoare listă';

  @override
  String get listColorAsAccent => 'Lista de culori ca accent';

  @override
  String get listColorAsAccentDescription =>
      'Utilizați culoarea listei curente ca și culoare de accent pentru Doable';

  @override
  String get privacy => 'Confidențialitate';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get openSource => 'Sursă deschisă';

  @override
  String get sourceCode => 'Cod sursă';

  @override
  String get contact => 'Contactați';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'Tot codul sursă al Doable este accesibil pe Codeberg sub licență FOSS. Puteți, de asemenea, să trimiteți probleme și solicitări de tip pull acolo. Puteți găsi, de asemenea, depozitul F-Droid al Doable pe Codeberg!';

  @override
  String get aboutPrivacy =>
      'Doable nu colectează nicio informație personală despre dumneavoastră. Singurul lucru pe care Doable îl stochează despre utilizarea dvs. sunt jurnalele. Cu toate acestea, aceste jurnale **nu sunt încărcate automat.** Singurul mod în care aceste jurnale părăsesc dispozitivul dvs. este dacă alegeți să le partajați, de exemplu, pentru a mă ajuta să rezolv o eroare.';

  @override
  String get httpWarning => 'Conexiune necriptată';

  @override
  String get cancelling => 'Anulare…';

  @override
  String get httpWarningDescription =>
      'Încercați să vă conectați la un server HTTP în loc de un server HTTPS mai sigur. HTTP trimite datele necriptate către server, ceea ce prezintă potențiale riscuri de securitate, așa că acest lucru nu este recomandat. Există totuși anumite cazuri de utilizare, cum ar fi un server găzduit local. Sunteți sigur că doriți să continuați cu HTTP?';

  @override
  String get enableNotificationReminder => 'Notificare de atenționare';

  @override
  String get pickNotificationReminderDuration => 'Amintește-mi după';

  @override
  String get hours => 'Ore';

  @override
  String get minutes => 'Proces-verbal';

  @override
  String get enableNotificationSound => 'Redarea sunetului';

  @override
  String get enableNotificationSoundDescription =>
      'Redați un sunet personalizat atunci când afișați o notificare';

  @override
  String get interval => 'Interval';

  @override
  String get secondly => 'La fiecare secundă';

  @override
  String get minutely => 'La fiecare minut';

  @override
  String get hourly => 'La fiecare oră';

  @override
  String get second => 'Secundă';

  @override
  String get startOfTheWeek => 'Începutul săptămânii';

  @override
  String get hideList => 'Ascundeți lista';

  @override
  String get showList => 'Afișați lista';

  @override
  String get showListDescription =>
      'Afișați sarcinile acestei liste în prezentarea generală.';

  @override
  String get hideListDescription =>
      'Nu afișați sarcinile acestei liste în prezentarea generală.';

  @override
  String get gotIt => 'Am înțeles';

  @override
  String get updateRelease =>
      'Deschideți pagina de lansări a Doable și descărcați cea mai recentă versiune';

  @override
  String get updateDownload =>
      'Lăsați Doable să descarce cea mai recentă versiune pentru dvs.; veți găsi fișierul în zona de notificare și îl puteți instala făcând clic pe el';

  @override
  String get updateFdroid =>
      'Dacă ați instalat Doable de la F-Droid, ar trebui să primiți actualizarea în următoarele câteva ore, fie din depozitul lui IzzyOnDroid, fie din depozitul propriu Doable';

  @override
  String get updateDisable =>
      'Puteți să dezactivați verificările automate ale actualizărilor toate împreună în setări';

  @override
  String get updateChecker => 'Verificator de actualizări';

  @override
  String get whatCanYouDo => 'Ce puteți face?';

  @override
  String get synchronization => 'Sincronizare';

  @override
  String get backup => 'Copie de rezervă';

  @override
  String get autoExport => 'Export automat';

  @override
  String get changeDuration => 'Schimbați durația';

  @override
  String get autoExportDescription =>
      'Puteți permite ca Doable să facă automat exporturi ale sarcinilor, listelor și setărilor. Vă rugăm să știți că Doable va crea un fișier nou pentru fiecare export! Alegeți corespunzător durata dintre exporturi.';

  @override
  String get seconds => 'Secunde';

  @override
  String get apkVerifyingSignature =>
      'Verificarea semnăturii pachetului de aplicație…';

  @override
  String get swipeActions => 'Acțiuni de glisare';

  @override
  String get swipeActionsDescription =>
      'Adaugă posibilitatea de a glisa spre stânga pe sarcini pentru a le selecta sau a le finaliza.\n\n**Atenție, acest lucru poate intra uneori în conflict cu sertarul extensiei Liste.**';

  @override
  String get selectedSwipeActions => 'Acțiuni selectate';

  @override
  String get unselectedSwipeActions => 'Acțiuni neselectate';

  @override
  String get swipeActionComplete => 'Completați / Necompletați sarcină';

  @override
  String get swipeActionExpand => 'Lărgiți sarcina';

  @override
  String get swipeActionStar => 'Favorați / Nu mai favorați sarcina';

  @override
  String get swipeActionDelete => 'Ștergeți sarcina';

  @override
  String get swipeActionsHideCheck => 'Ascundeți bifa';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Ascundeți bifa când $action este selectată';
  }

  @override
  String get forceHighestRefreshRate =>
      'Forțați rata de reîmprospătare maximă a ecranului';

  @override
  String get forceHighestRefreshRateDescription =>
      '(Încercați să) forțați sistemul să folosească cea mai mare rată de reîmprospătare posibilă în aplicație';

  @override
  String get overview => 'Prezentare generală';

  @override
  String whatsNewIn(String version) {
    return 'Ce este nou în $version?';
  }

  @override
  String get expandTodosByDefault => 'Lărgiți sarcinile implicit';

  @override
  String get expandTodosByDefaultDescription =>
      'Afișați sarcinile ca fiind lărgite implicit';

  @override
  String get progress => 'Progres';

  @override
  String get progressBar => 'Bară progres';

  @override
  String get progressBarDescription =>
      'Adaugă o bară de progres la sarcinile dvs, oferind control mai fin asupra stării sale de completare.';

  @override
  String get syncMultipleErrors =>
      'Sincronizarea a întâmpinat mai multe erori. Pentru detalii vedeți jurnalele.';

  @override
  String get deletedCompleted => 'Sarcinile completate au fost șterse.';

  @override
  String get dateRange => 'Interval';

  @override
  String get next3Days => 'Următoarele 3 zile';

  @override
  String get dateFilters => 'Filtre dată';

  @override
  String get dateFiltersDescription =>
      'Adaugă opțiunea de a filtra sarcinile dvs după un anumit interval.';

  @override
  String get exportedFile => 'Fisher exportat.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Vă rugăm activați extensia $extensionName pentru a folosi această funcție.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Afișați steaguri Pride în spatele barei de titlu în anumite luni';

  @override
  String get enablePrideFlags => 'Activați steaguri Pride';

  @override
  String get prideFlagRestOfYear => 'Steag Pride afișat tot anul';

  @override
  String get addNotification => 'Adăugați o notificare';

  @override
  String get unselected => 'Neselectat';

  @override
  String get selected => 'Selectat';

  @override
  String get nothingSelected => 'Nimic selectat';

  @override
  String get halfHourBefore => 'O jumătate de oră înainte';

  @override
  String get defaultNotifications => 'Notificări implicite';

  @override
  String get aDayAfter => 'O zi înainte';

  @override
  String get atTimeOfTodo => 'La timpul sarcinii';

  @override
  String get aWeekBefore => 'O săptămână înainte';

  @override
  String get aDayBefore => 'O zi înainte';

  @override
  String get anHourBefore => 'O oră înainte';

  @override
  String get defaultNotificationsDescriptionIfLists =>
      'Puteți selecta notificări diferite pentru fiecare listă.';

  @override
  String get halfHourAfter => 'O jumătate de oră după';

  @override
  String get customNotificationTime => 'Timp de notificare personalizat';

  @override
  String get defaultNotificationsDescription =>
      'Selectați notificările implicite care sunt adăugate la fiecare sarcină cu o dată relevantă.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count notificări',
      one: 'O notificare',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Notificări pentru';

  @override
  String get deleteListSettings => 'Ștergeți setările listei';

  @override
  String get snooze => 'Amânați';

  @override
  String get snoozeDurationDescription =>
      'Durația unei notificări care este amânată când apăsați pe butonul de amanare';

  @override
  String get snoozeDuration => 'Durația amânării';

  @override
  String get sortStarredToday => 'Favorite astăzi';

  @override
  String get sortStarredOverdue => 'Favorite întârziate';

  @override
  String get sortByTitle => 'După titlu';

  @override
  String get sortByCreationDate => 'După data creației';

  @override
  String get sortStarredRelevantDate => 'Favorite cu dată';

  @override
  String get sortDescending => 'Descendent';

  @override
  String get sortAscending => 'Ascendent';

  @override
  String get sortByRelevantDate => 'După data scadenței';

  @override
  String get sortByLastEdited => 'După ultima editare';

  @override
  String get sortingLabel => 'Sortare';

  @override
  String get groupsLabel => 'Grupuri';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable vă sortează sarcinile, mai întâi grupându-le și apoi sortând fiecare grup individual, înainte de a le pune la loc. În fila $groups puteți alege ce grupuri creează Doable și ordinea acestora. În fila $sorting puteți alege modul în care Doable sortează fiecare grup și ordinea lor de importanță.';
  }

  @override
  String get hideForever => 'Nu mai afișați din nou';

  @override
  String get sortingHelp => 'Grupuri și sortare';

  @override
  String get info => 'Informații';

  @override
  String get aboutToCancelChangesToList =>
      'Sunteți pe cale să renunțați la toate modificările făcute acestei liste.';

  @override
  String get notificationsAlwaysPreview => 'Mereu previzualizați notificările';

  @override
  String get notificationsAlwaysPreviewDescription =>
      'Mereu deschideți notificările în modul previzualizare (acest lucru nu afectează modul care a fost utilizat ultima dată)';

  @override
  String get nextcloudWipeDescription =>
      'Doable a primit o solicitare de ștergere a tuturor datelor asociate contului Nextcloud cu care v-ați autentificat. Prin urmare, veți fi deconectat de la contul dvs. Dacă doriți, Doable va șterge și toate sarcinile pe care le-ați stocat în aplicație.';

  @override
  String get nextcloudWipe => 'Ștergere la distanță a Nextcloud';

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
