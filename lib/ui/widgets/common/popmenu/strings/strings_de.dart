import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class StringsDe extends Strings {
  StringsDe([String locale = 'de']) : super(locale);

  @override
  String get about => 'Über die App';

  @override
  String get aboutDescription => 'Infos über die App';

  @override
  String get aboutOSInfo => 'Quellcode: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nDatenschutzerklärung: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid Repository: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Änderungen verwerfen?';

  @override
  String get aboutToCancelChangesDescription => 'Du bist dabei alle vorgenommenen Änderungen an dieser Aufgabe zu verwerfen.';

  @override
  String get aboutToCancelFeedback => 'Feedback verwerfen?';

  @override
  String get aboutToCancelFeedbackDescription => 'Du bist dabei dein Feedback zu verwerfen. Das kann nicht rückgängig gemacht werden.';

  @override
  String get aboutToDeleteCompleted => 'Du bist dabei alle erledigten Aufgaben permanent zu löschen. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Aufgaben',
      one: 'eine Aufgabe',
    );
    return 'Du bist dabei $_temp0 permanent zu löschen. Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String get additionalFeatures => 'Erweiterungen';

  @override
  String get additionalFeaturesDescription => 'Erweiterungen zur Funktionsweise von Doable';

  @override
  String get alignTodoCheck => 'Häkchen rechts';

  @override
  String get alignTodoCheckDescription => 'Häkchen der Aufgaben rechts positionieren';

  @override
  String get appLanguage => 'App Sprache';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Achtung';

  @override
  String get back => 'Zurück';

  @override
  String get syncAndBackup => 'Synchronisierung und Sicherung';

  @override
  String get syncAndBackupDescription => 'Sichere deine Aufgaben';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get chooseFeedbackExtrasDescription => 'Ich empfehle alles anzugeben, da es mir beim analysieren deines Problems hilft. Es werden keinerlei persönliche Daten gesammelt.';

  @override
  String get chooseFeedbackExtrasTitle => 'Welche extra Infos möchtest du hinzufügen?';

  @override
  String get chooseFeedbackWay => 'Wo möchtest du Feedback geben?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Aufgabe erledigt.';

  @override
  String get copiedToClipboard => 'Text in die Zwischenablage kopiert.';

  @override
  String get customAccentPicker => 'Akzentfarbe';

  @override
  String get customAccentPickerDescription => 'Eine benutzerdefinierte Akzentfarbe für die App';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get deleteCompletedAfter => 'Erledigte automatisch löschen';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Nach $duration';
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
      other: '$countString Aufgaben',
      one: 'Eine Aufgabe',
    );
    return '$_temp0 gelöscht.';
  }

  @override
  String get description => 'Beschreibung';

  @override
  String get design => 'Design';

  @override
  String get designDescription => 'Verändere das Aussehen von Doable';

  @override
  String get disable => 'Deaktivieren';

  @override
  String get discard => 'Verwerfen';

  @override
  String get doContinue => 'Fortfahren';

  @override
  String get done => 'Fertig';

  @override
  String get dynamicColors => 'Dynamische Farben';

  @override
  String get dynamicColorsDescription => 'System Farben verwenden (Android 12+)';

  @override
  String get email => 'E-Mail';

  @override
  String get enable => 'Aktivieren';

  @override
  String get enabled => 'Aktiviert';

  @override
  String get export => 'Exportieren';

  @override
  String get exportAllTodos => 'Alle exportieren';

  @override
  String exportEvery(String duration) {
    return 'Alle $duration sichern';
  }

  @override
  String get feedbackDescriptionHelp => 'Eine detailliertere Erklärung, was schief gelaufen ist / wie es passiert ist.';

  @override
  String get feedbackHeader => 'Bitte fülle das folgende Formular aus, damit ich verstehen kann, was passiert ist.';

  @override
  String get feedbackTitleHelp => 'Eine kurze Zusammenfassung des Ereignisses.';

  @override
  String get general => 'Allgemein';

  @override
  String get generalDescription => 'Ändern des allgemeinen Verhaltens der App';

  @override
  String get giveFeedback => 'Feedback';

  @override
  String get highlightOverdue => 'Überfällige markieren';

  @override
  String get highlightOverdueDescription => 'Überfällige Aufgaben wie Aufgaben mit Stern markieren';

  @override
  String get highlightToday => 'Heute markieren';

  @override
  String get highlightTodayDescription => 'Heute fällige Aufgaben wie Aufgaben mit Stern markieren';

  @override
  String get importLocalBackupError => 'Die Datei konnte nicht importiert werden. Bist du dir sicher, dass sie von Doable erzeugt wurde?';

  @override
  String get importTodosFromFile => 'Datei importieren';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Aufgaben',
      one: 'Eine Aufgabe',
      zero: 'Keine Aufgaben',
    );
    return '$_temp0 importiert.';
  }

  @override
  String get installedFrom => 'Installiert über';

  @override
  String get introDoubleTap => 'Doppel Klick';

  @override
  String get introDoubleTapDescription => 'Du kannst Aufgaben, die eine Beschreibung haben, aufklappen, indem du einen Doppel Klick auf die Aufgabe machst. Ist sie aufgeklappt, wird die vollständige Beschreibung angezeigt und du kannst mit Links, etc. interagieren.\n\nProbier es doch gleich an dieser Beispiel Aufgabe aus!';

  @override
  String get introDoubleTapTodoDescription => 'Kuchen ist eine Lüge!\n\nMehr dazu hier:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Neuen Kuchen kaufen';

  @override
  String get introLinks => 'Links, Telefonnummern, E-Mails';

  @override
  String get introLinksDescription => 'Wenn du Links, Telefonnummern, oder E-Mail Adressen in eine Beschreibung gibst, werden diese automatisch hervorgehoben und du kannst mit ihnen interagieren.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Du kannst deine Aufgaben auch mit einer Nextcloud Instanz synchronisieren. Wenn du möchtest, kannst du dich gleich hier anmelden!';

  @override
  String get introStar => 'Sterne';

  @override
  String get introStarDescription => 'Gib einer Aufgabe einen Stern um sie\naus der Masse herausstechen zu lassen.\n\nTipp auf den Stern unten und probier es aus!';

  @override
  String get introTodos => 'Aufgaben';

  @override
  String get introTodosDescription => 'Wenn du eine neue Aufgabe erstellst kannst du verschiedene Dinge hinzufügen. Zum Beispiel könntest du ein Datum angeben, an dem die Aufgabe relevant wird. Oder du gibst ihr einen Stern um sie von den anderen hervorzuheben. Du kannst auch eine Beschreibung mit Links oder anderen Infos zur Aufgabe hinzufügen.';

  @override
  String get introWelcome => 'Willkommen zu Doable!';

  @override
  String get introWelcomeDescription => 'Die simple App für deine Aufgaben mit\nmodernem Design und Nextcloud Integration.';

  @override
  String get keepEditing => 'Weiter bearbeiten';

  @override
  String get left => 'Links';

  @override
  String get licenses => 'Lizenzen';

  @override
  String get licensesDescription => 'Open Source und Flutter Lizenzen';

  @override
  String get localStorage => 'Lokaler Speicher';

  @override
  String get logIn => 'Anmelden';

  @override
  String get logOut => 'Abmelden';

  @override
  String get logOutputs => 'Protokolle';

  @override
  String get markCompleted => 'Als erledigt markieren';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Als unerledigt markieren';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown Unterstützung';

  @override
  String get mayNotBeEmpty => 'Darf nicht leer sein';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Fügt Unterstützung für grundlegenden Markdown Syntax in der Beschreibung und dem Titel von Aufgaben.\n\nDen kompletten Syntax kannst du hier einsehen:\nhttps://www.markdownguide.org/cheat-sheet/ (Englisch).\n\nEs ist aber anzumerken, dass diese App **nicht** die ganze Markdown Spezifikation unterstützt. Folgende Elemente sind unterstützt:\n\n- **Text Stiele:**\n  - **Fett**\n  - *Kursiv*\n  - ~~Durchgestrichen~~\n  - __Unterstrichen__ (`__unterstrichen__`)\n  - ==Hervorgehoben==\n  - [Links](https://www.markdownguide.org/cheat-sheet/)\n  - `Code`\n- **Listen:**\n  1. Nummerierte Listen\n  2. Ungeordnete Listen\n  3. Aufgaben Listen\n- **Blöcke:**\n  - Eingezäunte Code Blöcke\n  - Blockzitate';

  @override
  String get moveImportantToTop => 'Wichtige oben fixieren';

  @override
  String get moveImportantToTopDescription => 'Schiebt Aufgaben, die mit einem Stern markiert sind, an den Anfang der Liste';

  @override
  String get moveUpWhenUpdated => 'Änderungen in der Liste reflektieren';

  @override
  String get moveUpWhenUpdatedDescription => 'Aufgaben wandern an den Anfang der Liste, wenn sie verändert wurden';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'URL des Web Interfaces';

  @override
  String get ncDirectory => 'Ordner';

  @override
  String get ncFileIn => 'Datei gespeichert in';

  @override
  String get ncLogOut => 'Von Nextcloud abmelden';

  @override
  String get ncLogOutMessage => 'Beim Ausloggen werden deine gespeicherten Anmeldedaten gelöscht. Die gespeicherte Datei in deiner Nextcloud Instanz bleibt allerdings bestehen.';

  @override
  String get ncLoggedInAs => 'Eingeloggt als';

  @override
  String get ncPassword => 'Passwort';

  @override
  String get ncUser => 'Benutzer';

  @override
  String get never => 'Niemals';

  @override
  String get newSubTodo => 'Unteraufgabe';

  @override
  String get newTodo => 'Neue Aufgabe';

  @override
  String get next => 'Weiter';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Es sind keine Aufgaben mehr übrig, großartig!';

  @override
  String get notAValidUrl => 'Keine korrekte URL';

  @override
  String get off => 'Aus';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Ein';

  @override
  String get optional => 'Freiwillig';

  @override
  String get pickAColor => 'Wähle eine Farbe';

  @override
  String get pickerPrimary => 'Standard';

  @override
  String get pickerWheel => 'Individuell';

  @override
  String get popupMenuDeleteCompleted => 'Erledigte löschen';

  @override
  String get popupMenuHideCompleted => 'Erledigte verbergen';

  @override
  String get popupMenuShowCompleted => 'Erledigte anzeigen';

  @override
  String get quoteDoubleLeft => '„';

  @override
  String get quoteDoubleRight => '“';

  @override
  String get quoteSingleLeft => '‚';

  @override
  String get quoteSingleRight => '‘';

  @override
  String get relevantDate => 'Datum';

  @override
  String get required => '*Pflichtfeld';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get right => 'Rechts';

  @override
  String get save => 'Speichern';

  @override
  String get settings => 'Einstellungen';

  @override
  String get showCompletedTodos => 'Erledigte anzeigen';

  @override
  String get showCompletedTodosDescription => 'Erledigte Aufgaben in der Liste anzeigen';

  @override
  String get showIntroScreen => 'Einführung noch einmal anzeigen';

  @override
  String get sortNewestFirst => 'Neuste zuerst';

  @override
  String get sortNewestFirstDescription => 'Neuere Daten werden weiter oben angezeigt';

  @override
  String get sortNoRelevantDate => 'Ohne Datum';

  @override
  String get sortOverdue => 'Überfällig';

  @override
  String get sortRelevantDate => 'Mit Datum';

  @override
  String get sortStarred => 'Mit Stern';

  @override
  String get sortToday => 'Heute fällig';

  @override
  String get sorting => 'Sortier Reihenfolge';

  @override
  String get sortingDescription => 'Reihenfolge, nach der Aufgaben sortiert werden';

  @override
  String get submitFeedback => 'Absenden';

  @override
  String get syncCorruptedFile => 'Die Backup Datei scheint korrupt zu sein.';

  @override
  String get syncDirectoryDoesNotExist => 'Der angegebene Ordner existiert nicht.';

  @override
  String get syncNcMaintenance => 'Nextcloud ist im Wartungsmodus.';

  @override
  String get syncNoInternetConnection => 'Keine Internetverbindung.';

  @override
  String get syncNotNcServer => 'An dieser Adresse konnte kein Nextcloud Server gefunden werden.';

  @override
  String get syncServiceUnavailable => 'Nextcloud ist nicht verfügbar.';

  @override
  String get syncSuccessful => 'Erfolgreich synchronisiert.';

  @override
  String get syncUnknownError => 'Ein unbekannter Fehler ist aufgetreten.';

  @override
  String get syncWrongUrl => 'Die angegebene URL scheint inkorrekt zu sein.';

  @override
  String get syncWrongUserOrPassword => 'Der Benutzername oder das Passwort sind falsch.';

  @override
  String get system => 'System';

  @override
  String get systemInfo => 'System';

  @override
  String get thankYouForFeedback => 'Danke fürs Feedback geben!';

  @override
  String get title => 'Titel';

  @override
  String get titleMayNotBeEmpty => 'Der Titel darf nicht leer sein';

  @override
  String get today => 'Heute';

  @override
  String get todoSearch => 'Aufgaben Suche';

  @override
  String get todoSearchDescription => 'Fügt einen Suchknopf hinzu, der dir erlaubt, deine Aufgaben zu durchsuchen.';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get treatTodayAsIsImportant => 'Heute als wichtig behandeln';

  @override
  String get treatTodayAsIsImportantDescription => 'Behandelt Aufgaben die Heute relevant sind wie Aufgaben, die mit einem Stern markiert sind';

  @override
  String get trimTodoTexts => 'Aufgaben Texte kürzen';

  @override
  String get trimTodoTextsDescription => 'Entfernt Leerzeichen und Absätze am Anfang und Ende beim Titel und der Beschreibung einer Aufgabe';

  @override
  String get trueBlackMode => 'Schwarzer Hintergrund';

  @override
  String get trueBlackModeDescription => 'Ersetzt den Hintergrund mit schwarz, besonders nützlich für Oled Geräte';

  @override
  String get turnOff => 'Ausschalten';

  @override
  String get turnOn => 'Einschalten';

  @override
  String get undo => 'Rückgängig';

  @override
  String get update => 'Aktualisieren';

  @override
  String get updateCredentials => 'Daten aktualisieren';

  @override
  String get useCustomTabs => 'In-App-Browser';

  @override
  String get useCustomTabsDescription => 'In-App-Browser für Links verwenden';

  @override
  String get whatsNew => 'Was ist neu?';

  @override
  String get yesterday => 'Gestern';

  @override
  String get error => 'Fehler';

  @override
  String get routingError => 'Ups! Irgendetwas ist falsch gelaufen und du bist auf einer Seite gelandet, die es nicht gibt. Ich entschuldige mich für die Unannehmlichkeiten!';

  @override
  String get goToHome => 'Zur Startseite';

  @override
  String get pageNotFound => 'Seite nicht gefunden';

  @override
  String get updateDoable => 'Doable aktualisieren';

  @override
  String get download => 'Herunterladen';

  @override
  String get install => 'Installieren';

  @override
  String get installed => 'Installiert';

  @override
  String get updateNotInstalled => 'Das Update wurde nicht installiert.';

  @override
  String get skipVersion => 'Version überspringen';

  @override
  String get couldNotDownloadUpdate => 'Das Update konnte nicht heruntergeladen werden.';

  @override
  String versionWithNumber(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdates => 'Automatische Updates';

  @override
  String get autoUpdatesDescription => 'Automatisch nach Updates suchen';

  @override
  String get introExtensions => 'Erweiterungen? Erweiterungen!';

  @override
  String get introExtensionsDescription => 'Erweiterungen erlauben es die Fähigkeiten von Doable zu erweitern. Mit Erweiterungen kannst du ganz genau bestimmen, welche Funktionen du haben möchtest, und welche nicht. Wenn du dir alle verfügbaren Erweiterungen ansehen möchtest, klick einfach den Knopf hier!';

  @override
  String get introExtensionsButton => 'Zu den Erweiterungen!';

  @override
  String get useBottomSheetMenu => 'Menü unten';

  @override
  String get useBottomSheetMenuDescription => 'Das Menü am unteren Displayrand anstatt oben anzeigen';

  @override
  String get contributors => 'Mitwirkende';

  @override
  String get contributorDescription => 'Menschen, die Doable zu dem gemacht haben, was es ist';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'Webdav-Server-URL';

  @override
  String get webdavLogOutMessage => 'Beim Ausloggen werden deine gespeicherten Anmeldedaten gelöscht. Die gespeicherte Datei bleibt allerdings bestehen.';

  @override
  String get importExport => 'Import und Export';

  @override
  String get chooseDirectory => 'Ordner wählen';

  @override
  String get forgetDirectory => 'Ordner vergessen';

  @override
  String get newStarredTodo => 'Neue Aufgabe mit Stern';

  @override
  String get allTodos => 'Alle Aufgaben';

  @override
  String get newTodoList => 'Neue Liste';

  @override
  String get deleteTodoList => 'Liste löschen';

  @override
  String get editTodoList => 'Liste bearbeiten';

  @override
  String get lists => 'Listen';

  @override
  String get listsDescription => 'Erstelle Listen um deine Aufgaben besser sortieren zu können. Du kannst endlos viele Listen erstellen in dem neuen Menü in der Startseite.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Du bist dabei die Liste $listName und alle Aufgaben in ihr permanent zu löschen. Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Liste';

  @override
  String get share => 'Teilen';

  @override
  String get font => 'Schriftart';

  @override
  String get fontDescription => 'Gedrückt halten, um die Schriftarten anzuzeigen';

  @override
  String get popUpAnimationOverSlideAnimation => 'Alte Seitenanimation verwenden';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Verwende die alte Pop-Up artige Übergangsanimation';

  @override
  String get restart => 'Neustarten';

  @override
  String get later => 'Später';

  @override
  String get restartRequired => 'Neustart erforderlich';

  @override
  String get restartRequiredForSetting => 'Die App muss neu gestartet werden, damit diese Einstellung Wirkung hat.';

  @override
  String get image => 'Bild';

  @override
  String get expandTodos => 'Aufgaben aufklappen';

  @override
  String get showTodoListNames => 'Listennamen zeigen';

  @override
  String get includeBranding => 'Branding anzeigen';

  @override
  String get doableBrandingText => 'Geteilt von Doable, die simple App für deine Aufgaben.\nHol dir Doable hier: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Wähle, wie du deine Aufgaben teilen möchtest';

  @override
  String get options => 'Optionen';

  @override
  String get reduceMotion => 'Bewegung reduzieren';

  @override
  String get reduceMotionDescription => 'Bewegung in Animationen reduzieren';

  @override
  String get contribute => 'Mitwirken';

  @override
  String get contributeWantYourNameHere => 'Möchtest du auch hier stehen?';

  @override
  String get contributeWantYourNameHereDescription => 'Hilf bei Doable mit – entweder direkt oder in dem du Doable in deine Sprache übersetzt!';

  @override
  String get onlySymbolInDetailViewFab => 'Symbol statt Text';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Ein Symbol statt dem Text in der Detailansicht von Aufgaben verwenden';

  @override
  String get allSelected => 'Alle ausgewählt';

  @override
  String get sharedTextAsTitle => 'Geteilter Text als Titel';

  @override
  String get sharedTextAsTitleDescription => 'Mit Doable geteilten Text als Titel statt Beschreibung der Aufgabe verwenden';

  @override
  String get noTodoLists => 'Es gibt noch keine Listen.\nErstelle eine um loszulegen!';

  @override
  String forExample(String example) {
    return 'z.B. $example';
  }

  @override
  String get clearSelection => 'Auswahl aufheben';

  @override
  String get syncConnectionTimedOut => 'Netzwerk Zeitüberschreitung.';

  @override
  String get syncTooManyTimeOuts => 'Zu viele Zeitüberschreitungen. Die Synchronisation ist bis zum Neustart der App deaktiviert.';

  @override
  String get todoToCalendar => 'Aufgabe zum Kalender hinzufügen';

  @override
  String get logs => 'Logs';

  @override
  String get logsDescription => 'Zeige alle Logs an, die Doable ausgibt';

  @override
  String get aboutToClearAllLogs => 'Du bist dabei alle Logs zu löschen. Du kannst diese Logs dann nicht mehr zur Problembehandlung verwenden. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get clearAllLogs => 'Alle Logs löschen';

  @override
  String get noLogsYet => 'Momentan gibt es keine Logs, die du dir anschauen könntest.';

  @override
  String get dateFormat => 'Datumsformat';

  @override
  String get timeFormat => 'Zeitformat';

  @override
  String get shareAllLogs => 'Alle Logs teilen';

  @override
  String get copyAllLogs => 'Alle Logs kopieren';

  @override
  String get whatWentWrong => 'Was ist passiert?';

  @override
  String get fixCorruptBackupFile => 'Die Backupdatei von Doable konnte nicht geparst werden und scheint fehlerhaft zu sein. Doable kann versuchen das Problem zu beheben, in dem die aktuelle Datei gelöscht und eine neue erstellt wird. Allerdings wird das alle ungesicherten Änderungen anderer Doable Instanzen, die dieselbe Datei verwenden, löschen.';

  @override
  String get initializingNextcloud => 'Mit Nextcloud verbinden…';

  @override
  String get changeNextcloudDirectory => 'Ordner ändern';

  @override
  String get dueDate => 'Fälligkeitsdatum';

  @override
  String get dragToReorder => 'Ziehen um die Reihenfolge zu ändern';

  @override
  String get copySettings => 'Einstellungen kopieren';

  @override
  String get copySystemInfo => 'Systeminformationen kopieren';

  @override
  String get languageNameInEnglish => 'German';

  @override
  String get languageNameInNativeLanguage => 'Deutsch';

  @override
  String get createSummaryForBugReport => 'Übersicht erstellen';

  @override
  String get createSummaryForBugReportDetails => 'Erstellt einen Bericht in dem die System Informationen, Doables Einstellungen und alle Logs zusammengefasst werden. Dieser Bericht hilft um Probleme besser beheben zu können.';

  @override
  String get bugReport => 'Fehlerbericht';

  @override
  String get bugReportSupportingText => 'Bitte wähle aus, was du im Fehlerbericht inkludieren möchtest. Je mehr Informationen du bereitstellst, umso leichter ist es, das Problem zu finden und zu beheben. **Es werden keine persönlichen Daten geteilt.**';

  @override
  String get shareBugReport => 'Fehlerbericht teilen';

  @override
  String get fontSize => 'Schriftgröße';

  @override
  String get fontSizeDescription => 'System Schriftgröße überschreiben';

  @override
  String get decrease => 'Verringern';

  @override
  String get increase => 'Erhöhen';

  @override
  String get customSecondaryAccentPicker => 'Sekundärfarbe';

  @override
  String get customTertiaryAccentPicker => 'Tertiärfarbe';

  @override
  String get advancedColorOptions => 'Erweiterte Farboptionen';

  @override
  String get uploadCustomColorScheme => 'Benutzerdefiniertes Farbschema hochladen';

  @override
  String get downloadCurrentColorScheme => 'Aktuelles Farbschema herunterladen';

  @override
  String get markAsStarred => 'Aufgabe mit Stern markieren';

  @override
  String get setTime => 'Zeit festlegen';

  @override
  String get thereAreNoLists => 'Es gibt noch keine Listen';

  @override
  String get closeDetailsOnCompelte => 'Detailansicht schließen beim Erledigen';

  @override
  String get closeDetailsOnCompelteDescription => 'Speichert alle Änderungen und schließt die Detailansicht wenn man die Aufgabe erledigt.';

  @override
  String get customColorTheme => 'Eigenes Farbschema';

  @override
  String get discardCustomColorTheme => 'Du bist dabei alle vorgenommenen Änderungen am Farbschema zu verwerfen.';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get deletedCustomColorTheme => 'Das eigene Farbschema wurde gelöscht.';

  @override
  String get customThemeInfo => 'Hier kannst du die einzelnen Farbtoken ändern. Du kannst sie auch als eine `json` Datei importieren / exportieren.\n\nMehr Information wie die einzelnen Token verwendet werden findest du hier: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importieren';

  @override
  String get customThemeFuckedFile => 'Diese Datei beinhalted kein valides Farbschema. Bitte stell sicher, dass die Datei dieselbe Struktur hat, wie die Datei, die du exportiert hast.';

  @override
  String get markdownBold => 'Fett';

  @override
  String get markdownItalic => 'Kursiv';

  @override
  String get markdownMonospace => 'Monospace';

  @override
  String get markdownHighlight => 'Hervorheben';

  @override
  String get fediChooseInstance => 'Wähle deine Instanz';

  @override
  String get fediInstanceUrl => 'Instanz Url';

  @override
  String get fediRememberInstance => 'Meine Instanz speichern';

  @override
  String get fediDoablePost => 'Ich hab\' gerade alle meine Aufgaben erledigt dank @Doable@floss.social!\n\nKlingt spannend? Unter https://repo.doable.at kannst du mehr über #Doable herausfinden!';

  @override
  String get doable => 'Doable – Die moderne und simple Aufgaben App';

  @override
  String get rrRepeatsEvery => 'Wiederholung alle';

  @override
  String get rrRepeatsOn => 'Wiederholt sich am';

  @override
  String get rrEnds => 'Endet';

  @override
  String get week => 'Woche';

  @override
  String get weeks => 'Wochen';

  @override
  String get day => 'Tag';

  @override
  String get days => 'Tage';

  @override
  String get month => 'Monat';

  @override
  String get months => 'Monate';

  @override
  String get year => 'Jahr';

  @override
  String get years => 'Jahre';

  @override
  String get onFollowedByDate => 'Am';

  @override
  String get rrAfterOccurrences => 'Nach';

  @override
  String get occurrence => 'Termin';

  @override
  String get occurrences => 'Terminen';

  @override
  String get rrCustomRecurrence => 'Benutzerdefinierte Wiederholung';

  @override
  String get daily => 'Täglich';

  @override
  String get weekly => 'Wöchentlich';

  @override
  String get monthly => 'Monatlich';

  @override
  String get yearly => 'Jährlich';

  @override
  String get doesNotRepeat => 'Einmalig';

  @override
  String get rrRecurrence => 'Wiederholung';

  @override
  String get recurringTodos => 'Wiederkehrende Aufgaben';

  @override
  String get recurringTodosDescription => 'Füge Wiederholungen zu deinen Aufgaben hinzu und lass Doable sie automatisch neu planen, sobald du sie erledigt hast. Die Aufgaben werden entsprechend dem relevanten Datum und deinem festgelegten Zeitplan neu geplant. Wenn du kein Fälligkeitsdatum zu deiner Aufgabe hinzugefügt hast, wird stattdessen das Erstellungsdatum verwendet.\n\n**Eine Sache, die du beachten solltest: Du kannst zwar Aufgaben jetzt in Doable wiederholen lassen, aber momentan ist diese Funktion nur auf Englisch verfügbar.**';

  @override
  String get post => 'Posten';

  @override
  String get rrRepeats => 'Wiederholt sich';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription => 'Diese Erweiterung ist noch in der Beta-Phase, und es könnte sein, dass du beim Benutzen gelegentlich auf ein paar kleine Probleme stößt. Bitte sei dir der Risiken bewusst und lass es mich wissen, wenn du auf irgendwelche Probleme triffst!';

  @override
  String get extensionBetaWarning => 'Beta Erweiterung aktivieren?';

  @override
  String get showFediButton => 'Posten Button anzeigen';

  @override
  String get showFediButtonDescription => 'Zeige einen Button an, mit dem du über deine leere Liste im Fediverse posten kannst';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get enableNotifications => 'Benachrichtigungen einschalten';

  @override
  String get notifyAll => 'Alle Aufgaben';

  @override
  String get notifyAllDescription => 'Werde für jede Aufgabe mit Fälligkeitsdatum benachrichtigt';

  @override
  String get notifyTimeOnly => 'Nur Aufgaben mit Uhrzeit';

  @override
  String get notifyTimeOnlyDescription => 'Werde nur für Aufgaben benachrichtigt, die sowohl ein Fälligkeitsdatum als auch eine Uhrzeit haben';

  @override
  String get notifyTodosChannelName => 'Aufgaben';

  @override
  String get notificationsDescription => 'Lass Doable dich benachrichtigen, wenn deine Aufgaben fällig sind. Du kannst festlegen, für welche Aufgaben du Benachrichtigungen erhalten möchtest.';

  @override
  String get notificationsDescriptionShort => 'Ändere, für welche Aufgaben du Benachrichtigungen erhältst';

  @override
  String get notifyNeverDescription => 'Werde für keine Aufgaben benachrichtigt';

  @override
  String get defaultNotificationTime => 'Standard Benachrichtigungszeit';

  @override
  String get defaultNotificationTimeDescription => 'Die Zeit, zu der du für Aufgaben benachrichtigt wirst, die keine Uhrzeit haben';

  @override
  String get addImage => 'Bild hinzufügen';

  @override
  String get todoImages => 'Bilder';

  @override
  String get todoImagesDescription => 'Füge Bilder zu deinen Aufgabe hinzu um ihnen mehr Kontext zu verleihen.\n\n**Leider werden Bilder aktuell noch nicht synchronisiert.**';

  @override
  String get clearInputField => 'Eingabefeld leeren';

  @override
  String get removeImage => 'Bild entfernen';

  @override
  String get apkSignatureInvalid => 'Ungültige Signatur';

  @override
  String get apkSignatureInvalidDescription => 'Die Signatur der heruntergeladenen APK konnte nicht validiert werden. Bitte benachrichtige den Entwickler über dieses Problem. Du kannst die APK trotzdem installieren, bitte sei dir aber der Sicherheitsrisiken bewusst.';

  @override
  String get searchTodos => 'Aufgaben durchsuchen';

  @override
  String get editTodo => 'Aufgabe bearbeiten';

  @override
  String get previewTodo => 'Vorschau';

  @override
  String get readerMode => 'Leseansicht';

  @override
  String get readerModeDescription => 'Ermöglicht es dir, deine Aufgaben in der Bearbeitungsansicht vorab anzusehen.';

  @override
  String get noList => 'Keine Liste';

  @override
  String get chooseAList => 'Wähle eine Liste';

  @override
  String get readerModeDescriptionShort => 'In welchem Modus Aufgaben geöffnet werden sollen';

  @override
  String get lastUsed => 'Zuletzt verwendet';

  @override
  String get syncFileLocked => 'Der Server hat eine Sicherungsdatei gesperrt. Bitte versuche es in etwa 15 Minuten erneut.';

  @override
  String get syncInternalError => 'Es ist ein interner Fehler aufgetreten. Bitte entschuldige die Unannehmlichkeiten.';

  @override
  String get syncConnectionError => 'Beim Verbindungsaufbau zum Server trat ein Fehler auf.';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get loggingNextcloudIn => 'Bei Nextcloud anmelden…';

  @override
  String get initializingWebdav => 'Bei Webdav anmelden…';

  @override
  String get migratingNextcloudToRemote => 'Nextcloud wird auf die neue Synchronisierung umgestellt…';

  @override
  String get migratingWebdavToRemote => 'Webdav wird auf die neue Synchronisierung umgestellt…';

  @override
  String get migrateToRemotes => 'Migration';

  @override
  String get migrateToRemotesDescription => 'Doable hat kürzlich geändert, wie es mit Servern wie Nextcloud oder Webdav synchronisiert. Leider ist die neue Implementierung nicht abwärtskompatibel, daher muss eine Migration stattfinden. Die Migration sollte nicht länger als eine Minute dauern.\n\nEntscheidest du dich, diese Migration erst später durchzuführen, kann es zu Fehlermeldungen in der App kommen, da nicht korrekt mit den Servern kommuniziert werden kann.';

  @override
  String get fixBrokenRemoteFile => 'Eine Sicherungsdatei von Doable scheint beschädigt zu sein. Doable kann das Problem beheben, indem es sie mit dem aktuellen lokalen Wert überschreibt. Dadurch werden alle Änderungen, die von anderen Geräten nach diesem Fehler gemacht wurden, überschrieben.';

  @override
  String get fixedBrokenRemoteFile => 'Die beschädigte Datei wurde erfolgreich wiederhergestellt.';

  @override
  String get unfixableRemoteFile => 'Die Datei konnte nicht wiederhergestellt werden.';

  @override
  String get syncFileDoesNotExist => 'Eine Backup Datei existiert nicht.';

  @override
  String get todos => 'Aufgaben';

  @override
  String get selectWhatToExport => 'Bitte wähle aus, was du exportieren möchtest.';

  @override
  String get exportFile => 'Datei exportieren';

  @override
  String get listColor => 'Listenfarbe';

  @override
  String get listColorAsAccent => 'Listenfarbe als Akzent';

  @override
  String get listColorAsAccentDescription => 'Die Farbe der aktuellen Liste wird als die Akzentfarbe für Doable verwendet';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinien';

  @override
  String get openSource => 'Open Source';

  @override
  String get sourceCode => 'Quellcode';

  @override
  String get contact => 'Kontakt';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'Doables Quellcode ist auf Codeberg unter einer FOSS-Lizenz verfügbar. Du kannst dort auch Probleme melden und Pull Requests einreichen. Auch das F-Droid Repository von Doable findest du auf Codeberg!';

  @override
  String get aboutPrivacy => 'Doable sammelt keine persönlichen Informationen über dich. Das Einzige, das Doable über deine Nutzung speichert, sind Logs. Allerdings werden diese Logs **nicht automatisch hochgeladen.** Die einzige Möglichkeit, wie diese Logs dein Gerät verlassen, ist, wenn du dich dazu entscheidest, sie zum zu teilen. Zum Beispiel um mir bei der Behebung eines Fehlers zu helfen.';

  @override
  String get httpWarning => 'Unverschlüsselte Verbindung';

  @override
  String get cancelling => 'Abbrechen…';

  @override
  String get httpWarningDescription => 'Du versuchst, dich mit einem HTTP-Server statt einem sichereren HTTPS-Server zu verbinden. HTTP sendet die Daten unverschlüsselt an den Server, was potenzielle Sicherheitsrisiken birgt. Dies wird nicht empfohlen. Es gibt jedoch bestimmte Anwendungsfälle, wie zum Beispiel einen lokal gehosteten Server. Bist du sicher, dass du mit HTTP fortfahren möchtest?';

  @override
  String get enableNotificationReminder => 'Erinnerungsbenachrichtigung';

  @override
  String get pickNotificationReminderDuration => 'Erinnere mich nach';

  @override
  String get hours => 'Stunden';

  @override
  String get minutes => 'Minuten';

  @override
  String get enableNotificationSound => 'Ton abspielen';

  @override
  String get enableNotificationSoundDescription => 'Spiele einen Ton, wenn eine Nachricht angezeigt wird';

  @override
  String get interval => 'Intervall';

  @override
  String get secondly => 'Sekündlich';

  @override
  String get minutely => 'Minütlich';

  @override
  String get hourly => 'Stündlich';

  @override
  String get second => 'Sekunde';

  @override
  String get startOfTheWeek => 'Anfang der Woche';

  @override
  String get hideList => 'Liste verstecken';

  @override
  String get showList => 'Liste anzeigen';

  @override
  String get showListDescription => 'Zeige Aufgaben dieser Liste in der Übersicht an.';

  @override
  String get hideListDescription => 'Zeige Aufgaben dieser Liste nicht in der Übersicht an.';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get updateRelease => 'Öffne Doable\'s Release Seite und downloade die neuste Version';

  @override
  String get updateDownload => 'Lass Doable die neuste Version für dich herunterladen; du findest die Datei in deinen Benachrichtigungen und kannst sie installieren, in dem du auf sie klickst';

  @override
  String get updateFdroid => 'Wenn du Doable via F-Droid installiert hast solltest du das Update innerhalb der nächsten Stunden bekommen, entweder von IzzyOnDroids Repository oder von Doables';

  @override
  String get updateDisable => 'Du kannst die automatischen Update Checks auch gänzlich in den Einstellungen ausschalten';

  @override
  String get updateChecker => 'Update Checker';

  @override
  String get whatCanYouDo => 'Was kannst du tun?';

  @override
  String get synchronization => 'Synchronisation';

  @override
  String get backup => 'Sicherung';

  @override
  String get autoExport => 'Automatische Sicherung';

  @override
  String get changeDuration => 'Dauer ändern';

  @override
  String get autoExportDescription => 'Du kannst Doable automatisch Exporte deiner Aufgaben erstellen lassen, Listen und Einstellungen machen lassen. Bitte beachte, dass Doable für jeden Export eine neue Datei erstellt! Wähle die Dauer zwischen den Exporten entsprechend.';

  @override
  String get seconds => 'Sekunden';

  @override
  String get apkVerifyingSignature => 'APK Signatur wird verifiziert…';

  @override
  String get swipeActions => 'Wischgesten';

  @override
  String get swipeActionsDescription => 'Fügt die Möglichkeit hinzu, Aufgaben nach links zu wischen, um sie entweder zu markieren oder abzuschließen.\n\n**Beachte, dass dies manchmal mit dem Drawer der Listen Erweiterung in Konflikt geraten kann.**';

  @override
  String get selectedSwipeActions => 'Ausgewählte Gesten';

  @override
  String get unselectedSwipeActions => 'Unausgewählte Gesten';

  @override
  String get swipeActionComplete => 'Aufgabe als erledigt / unerledigt markieren';

  @override
  String get swipeActionExpand => 'Aufgabe ausklappen';

  @override
  String get swipeActionStar => 'Stern zu Aufgabe hinzufügen / entfernen';

  @override
  String get swipeActionDelete => 'Aufgabe löschen';

  @override
  String get swipeActionsHideCheck => 'Häkchen verstecken';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Häkchen verstecken wenn $action ausgewählt ist';
  }

  @override
  String get forceHighestRefreshRate => 'Höchste Wiederholungsrate erzwingen';

  @override
  String get forceHighestRefreshRateDescription => 'Erzwinge die höchste Wiederholungsrate, die das System unterstützt';

  @override
  String get overview => 'Übersicht';

  @override
  String whatsNewIn(String version) {
    return 'Was gibt\'s neues in $version?';
  }

  @override
  String get expandTodosByDefault => 'Aufgaben standardmäßig aufklappen';

  @override
  String get expandTodosByDefaultDescription => 'Aufgaben standardmäßig aufgeklappt anzeigen';

  @override
  String get progress => 'Fortschritt';

  @override
  String get progressBar => 'Fortschrittsbalken';

  @override
  String get progressBarDescription => 'Fügt einen Fortschrittsbalken an deine Aufgaben an, um den Status genauer kontrollieren zu können.';

  @override
  String get syncMultipleErrors => 'Die Gegenstelle ist auf verschiedene Fehler gestoßen. Siehe Logs für Details.';

  @override
  String get deletedCompleted => 'Abgeschlossene Aufgaben gelöscht.';

  @override
  String get dateRange => 'Bereich';

  @override
  String get next3Days => 'Nächste 3 Tage';

  @override
  String get dateFilters => 'Datumsfilter';

  @override
  String get dateFiltersDescription => 'Option zum Filtern von Aufgaben nach einem bestimmten Datumsbereich hinzugefügt.';

  @override
  String get exportedFile => 'Datei exportiert.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Bitte aktiviere die $extensionName Erweiterung um diese Funktion nutzen zu können.';
  }

  @override
  String get enablePrideFlagsDescription => 'Pride Flaggen erscheinen in manchen Monaten in der Titelzeile';

  @override
  String get enablePrideFlags => 'Pride Flaggen anzeigen';

  @override
  String get prideFlagRestOfYear => 'Pride Flagge im restlichen Jahr';

  @override
  String get addNotification => 'Benachrichtigung hinzufügen';

  @override
  String get unselected => 'Abgewählt';

  @override
  String get selected => 'Ausgewählt';

  @override
  String get nothingSelected => 'Nichts ausgewählt';

  @override
  String get halfHourBefore => 'Eine Stunde danach';

  @override
  String get defaultNotifications => 'Standard Benachrichtigungen';

  @override
  String get aDayAfter => 'Einen Tag danach';

  @override
  String get atTimeOfTodo => 'Zum Zeitpunkt der Aufgabe';

  @override
  String get aWeekBefore => 'EIne Woche davor';

  @override
  String get aDayBefore => 'Einen Tag davor';

  @override
  String get anHourBefore => 'Eine Stunde davor';

  @override
  String get defaultNotificationsDescriptionIfLists => 'Du kannst verschiedene Benachrichtigungen für unterschiedliche Listen auswählen.';

  @override
  String get halfHourAfter => 'Eine halbe Stunde danach';

  @override
  String get customNotificationTime => 'Benutzerdefinierter Zeitpunkt';

  @override
  String get defaultNotificationsDescription => 'Wähle die Benachrichtigungen aus, die zu jeder Aufgabe mit Datum hinzugefügt werden.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Benachrichtigungen',
      one: 'Eine Benachrichtigung',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Benachrichtigungen für';

  @override
  String get deleteListSettings => 'Listeneinstellungen löschen';

  @override
  String get snooze => 'Schlummern';

  @override
  String get snoozeDurationDescription => 'Dauer, um die eine Benachrichtigung beim Drücken der Schlummertaste verzögert wird';

  @override
  String get snoozeDuration => 'Schlummertasten Dauer';

  @override
  String get sortStarredToday => 'Mit Stern und heute fällig';

  @override
  String get sortStarredOverdue => 'Mit Stern und überfällig';

  @override
  String get sortByTitle => 'Nach dem Titel';

  @override
  String get sortByCreationDate => 'Nach dem Erstelldatum';

  @override
  String get sortStarredRelevantDate => 'Mit Stern und Datum';

  @override
  String get sortDescending => 'Absteigend';

  @override
  String get sortAscending => 'Aufsteigend';

  @override
  String get sortByRelevantDate => 'Nach dem Fälligkeitsdatum';

  @override
  String get sortByLastEdited => 'Zuletzt bearbeitet';

  @override
  String get sortingLabel => 'Sortierung';

  @override
  String get groupsLabel => 'Gruppen';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable sortiert deine Aufgaben, indem es sie zuerst gruppiert und dann jede Gruppe einzeln sortiert, bevor sie wieder zusammengefügt werden. Im Tab $groups kannst du auswählen, welche Gruppen Doable erstellt und deren Reihenfolge. Im Tab $sorting kannst du auswählen, wie Doable die einzelnen Gruppe sortiert und die Wichtigkeit jeder einzelnen Metrik.';
  }

  @override
  String get hideForever => 'Nicht mehr anzeigen';

  @override
  String get sortingHelp => 'Gruppen und Sortierung';

  @override
  String get info => 'Info';

  @override
  String get aboutToCancelChangesToList => 'Du bist dabei, alle Änderungen an dieser Liste zu verwerfen.';

  @override
  String get notificationsAlwaysPreview => 'Benachrichtigungen immer in der Vorschau anzeigen';

  @override
  String get notificationsAlwaysPreviewDescription => 'Benachrichtigungen immer im Vorschaumodus anzeigen (dies beeinflusst nicht den zuletzt genutzten Modus)';

  @override
  String get nextcloudWipeDescription => 'Doable hat eine Anfrage erhalten, alle Daten zu löschen, die zum Nextcloud-Account gehören, mit dem du eingeloggt bist. Du wirst daher nun aus deinem Account ausgeloggt. Falls gewünscht, kann Doable auch alle in der App gespeicherten Daten (Aufgaben und Listen) löschen. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get nextcloudWipe => 'Nextcoud-Remote-Entfernung';

  @override
  String get wipeData => 'Daten löschen';

  @override
  String get keepData => 'Daten behalten';

  @override
  String get imageInserted => 'Bild eingefügt';

  @override
  String get useSystemFont => 'System Schriftart verwenden';

  @override
  String get useSystemFontDescription => 'System Schriftart als die Hauptschriftart in Doable verwenden';

  @override
  String get batteryOptimization => 'Batterieoptimierung';

  @override
  String get batteryOptimizationDescription => 'Doable ist batterieoptimiert. Obwohl dies üblicher Weise kein Problem ist, könnte es zu ein paar Problemen beim loggen nach Nextcloud geben. Wenn du eine reibungslose Erfahrung willst, solltest du die Optimierung abschalten.';

  @override
  String get couldNotAddTodoToCalendar => 'Die Aufgabe konnte dem Kalendar nicht hinzugefügt werden.';

  @override
  String get sortCompleted => 'Erledigte sortieren';

  @override
  String get sortCompletedDescription => 'Die Sortierung auch auf erledigte Aufgaben anwenden';
}
