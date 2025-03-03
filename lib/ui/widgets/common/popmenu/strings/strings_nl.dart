import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class StringsNl extends Strings {
  StringsNl([String locale = 'nl']) : super(locale);

  @override
  String get about => 'Over';

  @override
  String get aboutDescription => 'Informatie over de app';

  @override
  String get aboutOSInfo =>
      'Broncode: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPrivacybeleid: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid-repo: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Wijzigingen wissen?';

  @override
  String get aboutToCancelChangesDescription =>
      'Je staat op het punt om alle wijzigingen aan deze taak te wissen.';

  @override
  String get aboutToCancelFeedback => 'Feedback wissen?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Je staat op het punt om je feedback te wissen. Deze actie is onomkeerbaar.';

  @override
  String get aboutToDeleteCompleted =>
      'Je staat op het punt om alle afgeronde taken te verwijderen. Deze actie is permanent en onomkeerbaar.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString taken',
      one: 'één taak',
    );
    return 'Je staat op het punt om $_temp0 te verwijderen. Deze actie is permanent en onomkeerbaar.';
  }

  @override
  String get additionalFeatures => 'Uitbreidingen';

  @override
  String get additionalFeaturesDescription =>
      'Functies die Doable krachtiger maken';

  @override
  String get alignTodoCheck => 'Selectievakjes aan rechterkant';

  @override
  String get alignTodoCheckDescription =>
      'Toon selectievakjes van taken aan de rechterkant';

  @override
  String get appLanguage => 'Apptaal';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Let op';

  @override
  String get back => 'Terug';

  @override
  String get syncAndBackup => 'Synchronisatie en reservekopieën';

  @override
  String get syncAndBackupDescription =>
      'Synchroniseer en maak reservekopieën van je taken';

  @override
  String get cancel => 'Annuleren';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Het is aanbevolen om alle volgende informatie op te nemen, zodat ik een beter beeld van het probleem krijg. Hierin staat géén persoonlijke informatie.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Welke aanvullende informatie wil je opnemen?';

  @override
  String get chooseFeedbackWay => 'Waar wil je feedback achterlaten?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'De taak is afgerond.';

  @override
  String get copiedToClipboard => 'De tekst is gekopieerd naar het klembord.';

  @override
  String get customAccentPicker => 'Accentkleur';

  @override
  String get customAccentPickerDescription =>
      'Kies een eigen accentkleur voor het appthema';

  @override
  String get darkMode => 'Donker thema';

  @override
  String get deleteCompletedAfter => 'Automatisch afgeronde verwijderd';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Verwijderen na $duration';
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
      other: '$countString taken',
      one: 'Eén taak',
    );
    return '$_temp0 verwijderd.';
  }

  @override
  String get description => 'Beschrijving';

  @override
  String get design => 'Ontwerp';

  @override
  String get designDescription => 'Pas de vormgeving van Doable aan';

  @override
  String get disable => 'Uitschakelen';

  @override
  String get discard => 'Negeren';

  @override
  String get doContinue => 'Doorgaan';

  @override
  String get done => 'Afgerond';

  @override
  String get dynamicColors => 'Dynamische kleuren';

  @override
  String get dynamicColorsDescription =>
      'Systeemkleuren gebruiken (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Inschakelen';

  @override
  String get enabled => 'Ingeschakeld';

  @override
  String get export => 'Exporteren';

  @override
  String get exportAllTodos => 'Alle taken exporteren';

  @override
  String exportEvery(String duration) {
    return 'Exporteren, elke $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Een uitgebreidere uitleg van wat er misging/hoe dit veroorzaakt werd.';

  @override
  String get feedbackHeader =>
      'Vul het onderstaande formulier in zodat ik een beter beeld krijg van wat er misging.';

  @override
  String get feedbackTitleHelp => 'Een korte samenvatting van het gebeuren.';

  @override
  String get general => 'Algemeen';

  @override
  String get generalDescription => 'Wijzig het algemene gedrag van de app';

  @override
  String get giveFeedback => 'Feedback';

  @override
  String get highlightOverdue => 'Verstreken taken markeren';

  @override
  String get highlightOverdueDescription =>
      'Markeer taken die te laat zijn op dezelfde manier als taken met een ster';

  @override
  String get highlightToday => 'Taken van vandaag markeren';

  @override
  String get highlightTodayDescription =>
      'Markeer taken die vandaag dienen te worden afgerond op dezelfde manier als taken met een ster';

  @override
  String get importLocalBackupError =>
      'Dit bestand kan niet worden geïmporteerd. Weet je zeker dat het een Doable-bestand is?';

  @override
  String get importTodosFromFile => 'Bestand importeren';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString taken',
      one: 'Eén taak',
      zero: 'Geen taken',
    );
    return '$_temp0 geïmporteerd.';
  }

  @override
  String get installedFrom => 'Geïnstalleerd via';

  @override
  String get introDoubleTap => 'Dubbeltikken';

  @override
  String get introDoubleTapDescription =>
      'Dubbeltik op taken met een beschrijving om de volledige beschrijving te tonen. Ook kun je drukken op interactieve items, zoals links.\n\nProbeer dit voorbeeld uit!';

  @override
  String get introDoubleTapTodoDescription =>
      'Taarten bestaan niet!\n\nMeer informatie:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Nieuwe taart kopen';

  @override
  String get introLinks => 'Links, telefoonnummers, e-mailadressen';

  @override
  String get introLinksDescription =>
      'Als je links, telefoonnummers of e-mailadressen aan een beschrijving toevoegt, worden deze automatisch gemarkeerd en aanklikbaar gemaakt.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Je kunt je taken ook synchroniseren met een Nextcloud-instantie. Log hier in!';

  @override
  String get introStar => 'Sterren';

  @override
  String get introStarDescription =>
      'Voeg een ster toe aan een taak om deze\nop te laten vallen tussen de menigte.\n\nDruk op de ster hieronder om uit te proberen!';

  @override
  String get introTodos => 'Taken';

  @override
  String get introTodosDescription =>
      'Je kunt verschillende dingen toevoegen aan taken, zoals de datum waarop de taak dient te worden afgerond of een ster om hem op te laten vallen tussen de rest! Ook kun je een beschrijving toevoegen met links of andere informatie omtrent de taak.';

  @override
  String get introWelcome => 'Welkom in Doable!';

  @override
  String get introWelcomeDescription =>
      'De eenvoudige takenapp met een modern ontwerp\nen Nextcloud-integratie.';

  @override
  String get keepEditing => 'Verder bewerken';

  @override
  String get left => 'Links';

  @override
  String get licenses => 'Licenties';

  @override
  String get licensesDescription => 'Opensource- en Flutter-licenties';

  @override
  String get localStorage => 'Lokale opslag';

  @override
  String get logIn => 'Inloggen';

  @override
  String get logOut => 'Uitloggen';

  @override
  String get logOutputs => 'Logboeken';

  @override
  String get markCompleted => 'Markeren als afgerond';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Markeren als niet-afgerond';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdownondersteuning';

  @override
  String get mayNotBeEmpty => 'Mag niet leeg zijn';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Voegt ondersteuning toe voor basis-markdownsyntaxis in de beschrijving en titel van je taken.\n\nBekijk de volledige lijst met syntaxisopties:\n\n\nDeze app ondersteunt echter **niet** alle markdownspecificaties. Ondersteunde elementen zijn:\n\n- **Tekststijlen:**\n  - **Vetgedrukt**;\n  - *Cursief*;\n  - __Onderstrepen__ (`__tekst__`);\n  - ~~Doorhalen~~;\n  ==Markeren==\n  - [Links](https://www.markdownguide.org/cheat-sheet/);\n  - `Inlinecode`.\n- **Lijsten:**\n  1. Geordende lijsten;\n  2. Ongeordende lijsten;\n  3. Takenlijsten.\n- **Blokken:**\n- Blokcitaten;\n- Afgesloten codeblokken.';

  @override
  String get moveImportantToTop => 'Belangrijke taken bovenaan';

  @override
  String get moveImportantToTopDescription =>
      'Schakel in om taken met een ster altijd bovenaan de lijst te tonen';

  @override
  String get moveUpWhenUpdated => 'Wijzigingen op lijst tonen';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Verplaats taken na wijzigen naar de bovenkant van de lijst';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'Nextcloud-webinterface-url';

  @override
  String get ncDirectory => 'Map';

  @override
  String get ncFileIn => 'Bestand opgeslagen in';

  @override
  String get ncLogOut => 'Uitloggen op Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Na het uitloggen worden je opgeslagen inloggegevens gewist. Het opgeslagen bestand op je Nextcloud-instantie blijft echter bewaard.';

  @override
  String get ncLoggedInAs => 'Ingelogd als';

  @override
  String get ncPassword => 'Wachtwoord';

  @override
  String get ncUser => 'Gebruikersnaam';

  @override
  String get never => 'Nooit';

  @override
  String get newSubTodo => 'Bijkomende taak';

  @override
  String get newTodo => 'Nieuwe taak';

  @override
  String get next => 'Volgende';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Er zijn geen taken meer. Je bent goed bezig!';

  @override
  String get notAValidUrl => 'Ongeldige url';

  @override
  String get off => 'Uit';

  @override
  String get ok => 'Oké';

  @override
  String get on => 'Aan';

  @override
  String get optional => 'Optioneel';

  @override
  String get pickAColor => 'Kies een kleur';

  @override
  String get pickerPrimary => 'Standaard';

  @override
  String get pickerWheel => 'Aangepast';

  @override
  String get popupMenuDeleteCompleted => 'Afgeronde taken wissen';

  @override
  String get popupMenuHideCompleted => 'Afgeronde taken verbergen';

  @override
  String get popupMenuShowCompleted => 'Afgeronde taken tonen';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Einddatum';

  @override
  String get required => '*verplicht';

  @override
  String get reset => 'Herstellen';

  @override
  String get right => 'Rechts';

  @override
  String get save => 'Opslaan';

  @override
  String get settings => 'Instellingen';

  @override
  String get showCompletedTodos => 'Afgeronde taken tonen';

  @override
  String get showCompletedTodosDescription =>
      'Toon afgeronde taken op de lijst';

  @override
  String get showIntroScreen => 'Uitleg tonen';

  @override
  String get sortNewestFirst => 'Nieuwste bovenaan';

  @override
  String get sortNewestFirstDescription =>
      'Toon taken met een nieuwere datum bovenaan';

  @override
  String get sortNoRelevantDate => 'Zonder datum';

  @override
  String get sortOverdue => 'Verstreken';

  @override
  String get sortRelevantDate => 'Met datum';

  @override
  String get sortStarred => 'Met ster';

  @override
  String get sortToday => 'Verstrijkt vandaag';

  @override
  String get sorting => 'Sorteervolgorde';

  @override
  String get sortingDescription =>
      'De volgorde waarin taken dienen te worden gesorteerd';

  @override
  String get submitFeedback => 'Versturen';

  @override
  String get syncCorruptedFile =>
      'Het reservekopiebestand lijkt beschadigd te zijn.';

  @override
  String get syncDirectoryDoesNotExist => 'De opgegeven map bestaat niet.';

  @override
  String get syncNcMaintenance => 'Nextcloud is in onderhoudsmodus.';

  @override
  String get syncNoInternetConnection => 'Geen internetverbinding.';

  @override
  String get syncNotNcServer =>
      'Er is geen Nextcloud-server aangetroffen op dit adres.';

  @override
  String get syncServiceUnavailable => 'Nextcloud is niet bereikbaar.';

  @override
  String get syncSuccessful => 'Het synchroniseren is voltooid.';

  @override
  String get syncUnknownError => 'Er is een onbekende fout opgetreden.';

  @override
  String get syncWrongUrl => 'De opgegeven url lijkt niet te kloppen.';

  @override
  String get syncWrongUserOrPassword =>
      'De opgegeven gebruikersnaam of het opgegeven wachtwoord is onjuist.';

  @override
  String get system => 'Systeem';

  @override
  String get systemInfo => 'Systeem';

  @override
  String get thankYouForFeedback => 'Bedankt voor de feedback!';

  @override
  String get title => 'Titel';

  @override
  String get titleMayNotBeEmpty => 'Voer een titel in';

  @override
  String get today => 'Vandaag';

  @override
  String get todoSearch => 'Taken doorzoekbaar maken';

  @override
  String get todoSearchDescription =>
      'Toon een zoekknop op de takenlijst waarmee je taken kunt doorzoeken.';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get treatTodayAsIsImportant => 'Vandaag behandelen als belangrijk';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Schakel in om taken die vandaag verstrijken te behandelen alsof ze voorzien zijn van een ster';

  @override
  String get trimTodoTexts => 'Taakteksten inkorten';

  @override
  String get trimTodoTextsDescription =>
      'Schakel in om witregels uit taaktitels en -beschrijvingen te knippen';

  @override
  String get trueBlackMode => 'Puur zwart gebruiken';

  @override
  String get trueBlackModeDescription =>
      'Maakt de achtergrond zwart (vooral nuttig op oled-apparaten)';

  @override
  String get turnOff => 'Uitschakelen';

  @override
  String get turnOn => 'Inschakelen';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get update => 'Bijwerken';

  @override
  String get updateCredentials => 'Inloggegevens bijwerken';

  @override
  String get useCustomTabs => 'Ingebouwde webbrowser gebruiken';

  @override
  String get useCustomTabsDescription =>
      'Gebruik de ingebouwde webbrowser om links te openen';

  @override
  String get whatsNew => 'Wijzigingslog';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get error => 'Foutmelding';

  @override
  String get routingError =>
      'Oeps! Het lijkt er op dat er iets mis is gegaan en dat je op een pagina terecht bent gekomen die - nou ja - niet bestaat. Onze welgemeende excuses!';

  @override
  String get goToHome => 'Ga naar overzicht';

  @override
  String get pageNotFound => 'Pagina niet gevonden';

  @override
  String get updateDoable => 'Doable updaten';

  @override
  String get download => 'Downloaden';

  @override
  String get install => 'Installeren';

  @override
  String get installed => 'Geïnstalleerd';

  @override
  String get updateNotInstalled => 'De update is niet geïnstalleerd.';

  @override
  String get skipVersion => 'Deze versie overslaan';

  @override
  String get couldNotDownloadUpdate => 'De update kan niet worden gedownload.';

  @override
  String versionWithNumber(String version) {
    return 'Versie $version';
  }

  @override
  String get autoUpdates => 'Automatisch updaten';

  @override
  String get autoUpdatesDescription => 'Automatisch controleren op updates';

  @override
  String get introExtensions => 'Uitbreidingen? Uitbreidingen!';

  @override
  String get introExtensionsDescription =>
      'Met uitbreidingen kun je de mogelijkheden van Doable uitbreiden en vergroten. Ze stellen je in staat om precies aan te geven hoe je Doable wilt gebruiken. Druk op onderstaande knop om alle uitbreidinget te bekijken!';

  @override
  String get introExtensionsButton => 'Breid lekker uit!';

  @override
  String get useBottomSheetMenu => 'Menu onderaan tonen';

  @override
  String get useBottomSheetMenuDescription =>
      'Toon het menu onderaan in plaats van het uitklapmenu bovenaan';

  @override
  String get contributors => 'Bijdragers';

  @override
  String get contributorDescription =>
      'Mensen die Doable hielpen vorm te geven';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'Webdav-server-url';

  @override
  String get webdavLogOutMessage =>
      'Na het uitloggen worden de opgeslagen inloggegevens gewist. Het opgeslagen bestand blijft echter bewaard.';

  @override
  String get importExport => 'Im- en export';

  @override
  String get chooseDirectory => 'Kies een map';

  @override
  String get forgetDirectory => 'Map vergeten';

  @override
  String get newStarredTodo => 'Nieuwe taak met ster';

  @override
  String get allTodos => 'Alle taken';

  @override
  String get newTodoList => 'Nieuwe lijst';

  @override
  String get deleteTodoList => 'Lijst verwijderen';

  @override
  String get editTodoList => 'Lijst bewerken';

  @override
  String get lists => 'Lijsten';

  @override
  String get listsDescription =>
      'Stel lijsten samen om al je taken te sorteren. Je kunt oneindig veel lijsten samenstellen, die allemaal vanaf het overzicht te openen zijn.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Je staat op het punt om “$listName” en alle bijbehorende taken te verwijderen. Deze actie is permanent en onomkeerbaar.';
  }

  @override
  String markBeta(String element) {
    return '$element (bèta)';
  }

  @override
  String get list => 'Lijst';

  @override
  String get share => 'Delen';

  @override
  String get font => 'Lettertype';

  @override
  String get fontDescription =>
      'Houd lang ingedrukt om lettertypenamen te tonen';

  @override
  String get popUpAnimationOverSlideAnimation => 'Oude paginawisseling';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Gebruik het oude paginawisselingseffect';

  @override
  String get restart => 'Herstarten';

  @override
  String get later => 'Later';

  @override
  String get restartRequired => 'Herstart vereist';

  @override
  String get restartRequiredForSetting =>
      'Herstart de app om deze instelling toe te passen.';

  @override
  String get image => 'Afbeelding';

  @override
  String get expandTodos => 'Taken uitklappen';

  @override
  String get showTodoListNames => 'Lijstnamen tonen';

  @override
  String get includeBranding => 'Doable vermelden';

  @override
  String get doableBrandingText =>
      'Gedeeld vanuit Doable, de eenvoudige en moderne takenapp.\nInstalleer Doable via https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Geef aan hoe je je taken wilt delen';

  @override
  String get options => 'Opties';

  @override
  String get reduceMotion => 'Effecten verminderen';

  @override
  String get reduceMotionDescription => 'Verminder het aantal effecten';

  @override
  String get contribute => 'Bijdragen';

  @override
  String get contributeWantYourNameHere => 'Wil je je naam hier terugzien?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Draag dan bij aan de code van Doable of help met vertalen!';

  @override
  String get onlySymbolInDetailViewFab => 'Pictogrammen in plaats van tekst';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Toon pictogrammen in plaats van tekst in de detailweergave';

  @override
  String get allSelected => 'Alle geselecteerde';

  @override
  String get sharedTextAsTitle => 'Gedeelde tekst als titel gebruiken';

  @override
  String get sharedTextAsTitleDescription =>
      'Gebruik de met Doable gedeelde tekst als titel in plaats van de taakbeschrijving';

  @override
  String get noTodoLists =>
      'Je hebt nog geen lijsten samengesteld.\nMaak een nieuwe lijst om aan de slag te gaan!';

  @override
  String forExample(String example) {
    return 'bijv. ‘$example’';
  }

  @override
  String get clearSelection => 'Niets selecteren';

  @override
  String get syncConnectionTimedOut => 'De verbinding is verlopen.';

  @override
  String get syncTooManyTimeOuts =>
      'De server verbrak de verbinding te vaak. Synchronisatie is uitgeschakeld totdat de app wordt herstart.';

  @override
  String get todoToCalendar => 'Taak toevoegen aan agenda';

  @override
  String get logs => 'Logboeken';

  @override
  String get logsDescription =>
      'Bekijk alle logboeken die Doable heeft aangelegd';

  @override
  String get aboutToClearAllLogs =>
      'Je staat op het punt om alle logboeken onbruikbaar te maken voor feedback en probleemoplossing. Deze actie is permanent en onomkeerbaar.';

  @override
  String get clearAllLogs => 'Alle logboeken wissen';

  @override
  String get noLogsYet => 'Er zijn momenteel geen logboeken beschikbaar.';

  @override
  String get dateFormat => 'Datumopmaak';

  @override
  String get timeFormat => 'Tijdopmaak';

  @override
  String get shareAllLogs => 'Alle logboeken delen';

  @override
  String get copyAllLogs => 'Alle logboeken kopiëren';

  @override
  String get whatWentWrong => 'Wat is er misgegaan?';

  @override
  String get fixCorruptBackupFile =>
      'Het reservekopiebestand van Doable is niet leesbaar en lijkt beschadigd te zijn. Doable kan trachten dit op te lossen door het huidige reservekopiebestand te verwijderen en een nieuw bestand aan te maken. Hierdoor worden alle wijzigingen in Doable-instanties die dit bestand gebruiken gewist.';

  @override
  String get initializingNextcloud => 'Bezig met voorbereiden van Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Map wijzigen';

  @override
  String get dueDate => 'Einddatum';

  @override
  String get dragToReorder => 'Sleep om te herordenen';

  @override
  String get copySettings => 'Instellingen kopiëren';

  @override
  String get copySystemInfo => 'Systeeminformatie kopiëren';

  @override
  String get languageNameInEnglish => 'Dutch';

  @override
  String get languageNameInNativeLanguage => 'Nederlands';

  @override
  String get createSummaryForBugReport => 'Samenvatting maken';

  @override
  String get createSummaryForBugReportDetails =>
      'Maak een verslag bestaande uit systeeminformatie, Doable\'s instellingen en alle logboeken. Dit kan nuttig zijn voor bugmeldingen en het oplossen van problemen.';

  @override
  String get bugReport => 'Bugmelding';

  @override
  String get bugReportSupportingText =>
      'Geef aan wat je wilt toevoegen aan de bugmelding. Hoe meer informatie je deelt, des te makkelijker het is om het probleem op te sporen. **Er wordt géén persoonlijke informatie gedeeld.**';

  @override
  String get shareBugReport => 'Bugmelding delen';

  @override
  String get fontSize => 'Tekstgrootte';

  @override
  String get fontSizeDescription => 'Tekstgrootte van systeem negeren';

  @override
  String get decrease => 'Verkleinen';

  @override
  String get increase => 'Vergroten';

  @override
  String get customSecondaryAccentPicker => 'Tweede kleur';

  @override
  String get customTertiaryAccentPicker => 'Derde kleur';

  @override
  String get advancedColorOptions => 'Geavanceerde kleuropties';

  @override
  String get uploadCustomColorScheme => 'Aangepast thema uploaden';

  @override
  String get downloadCurrentColorScheme => 'Huidig thema downloaden';

  @override
  String get markAsStarred => 'Taak markeren als favoriet';

  @override
  String get setTime => 'Tijdstip instellen';

  @override
  String get thereAreNoLists => 'Er zijn nog geen lijsten';

  @override
  String get closeDetailsOnCompelte => 'Details verbergen na afronden';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Bewaart de taak en verbergt de details na het drukken op de afrondknop.';

  @override
  String get customColorTheme => 'Eigen thema';

  @override
  String get discardCustomColorTheme =>
      'Je staat op het punt om alle themawijzingen ongedaan te maken.';

  @override
  String get lightMode => 'Licht thema';

  @override
  String get deletedCustomColorTheme => 'Het eigen thema is verwijderd.';

  @override
  String get customThemeInfo =>
      'Hier kun je iedere kleur naar eigen hand zetten. Ook kun je kleuren im- en exporteren (json-bestand) en op die manier bewerken!\n\nAls je wilt weten waar iedere kleurcode voor staat, bekĳk dan de volgende website: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importeren';

  @override
  String get customThemeFuckedFile =>
      'Dit bestand bevat geen geldig thema. Zorg er voor dat bestand dezelfde stĳl en structuur als het geëxporteerde bestand volgt.';

  @override
  String get markdownBold => 'Vetgedrukt';

  @override
  String get markdownItalic => 'Cursief';

  @override
  String get markdownMonospace => 'Vaste breedte';

  @override
  String get markdownHighlight => 'Markeren';

  @override
  String get fediChooseInstance => 'Kies een instantie';

  @override
  String get fediInstanceUrl => 'Instantie-url';

  @override
  String get fediRememberInstance => 'Instantie onthouden';

  @override
  String get fediDoablePost =>
      'Ik heb zojuist al mĳn taken afgerond, met dank aan @Doable@floss.social!\n\nBen je benieuwd naar deze app? Lees meer over #Doable op https://repo.doable.at!';

  @override
  String get doable => 'Doable - dé moderne doch eenvoudige takenapp';

  @override
  String get rrRepeatsEvery => 'Herhalen, iedere';

  @override
  String get rrRepeatsOn => 'Wordt herhaald op';

  @override
  String get rrEnds => 'Eindigt op';

  @override
  String get week => 'week';

  @override
  String get weeks => 'weken';

  @override
  String get day => 'dag';

  @override
  String get days => 'dagen';

  @override
  String get month => 'maand';

  @override
  String get months => 'maanden';

  @override
  String get year => 'jaar';

  @override
  String get years => 'jaar';

  @override
  String get onFollowedByDate => 'Op';

  @override
  String get rrAfterOccurrences => 'Na';

  @override
  String get occurrence => 'Gebeurtenis';

  @override
  String get occurrences => 'Gebeurtenissen';

  @override
  String get rrCustomRecurrence => 'Eigen schema';

  @override
  String get daily => 'Iedere dag';

  @override
  String get weekly => 'Iedere week';

  @override
  String get monthly => 'Iedere maand';

  @override
  String get yearly => 'Ieder jaar';

  @override
  String get doesNotRepeat => 'Niet herhalen';

  @override
  String get rrRecurrence => 'Herhalen';

  @override
  String get recurringTodos => 'Terugkerende taken';

  @override
  String get recurringTodosDescription =>
      'Herhaal je taken en laat Doable ze automatisch opnieuw voor je inplannen zodra je ze afrondt. Taken worden ingepland op de relevante datum op basis van het door jou ingestelde schema. Als je geen einddatum aan een taak hebt toegekend, dan wordt de aanmaakdatum gebruikt.\n\n**Let op: deze functie werkt momenteel alléén in het Engels.**';

  @override
  String get post => 'Plaatsen';

  @override
  String get rrRepeats => 'Herhalingen';

  @override
  String get beta => 'Bèta';

  @override
  String get extensionBetaWarningDescription =>
      'Let op: deze uitbreiding is nog in de bètafase en kan daardoor fouten en/of ongemakken bevatten. Wees je hiervan bewust en neem contact met me op als je tegen problemen aanloopt!';

  @override
  String get extensionBetaWarning => 'Bèta-uitbreiding inschakelen?';

  @override
  String get showFediButton => 'Plaatsknop tonen';

  @override
  String get showFediButtonDescription =>
      'Toon een knop waarmee je je blanco lijst op het fediverse kan plaatsen';

  @override
  String get notifications => 'Meldingen';

  @override
  String get enableNotifications => 'Meldingen tonen';

  @override
  String get notifyAll => 'Alle taken';

  @override
  String get notifyAllDescription =>
      'Toon een melding van elke taak met een einddatum';

  @override
  String get notifyTimeOnly => 'Alleen taken met een tijdstip';

  @override
  String get notifyTimeOnlyDescription =>
      'Toon alleen meldingen van taken met zowel een datum als tijdstip';

  @override
  String get notifyTodosChannelName => 'Taken';

  @override
  String get notificationsDescription =>
      'Krijg een melding als je taken dreigen te verlopen. Je kunt aangeven van welke taken je meldingen wilt ontvangen.';

  @override
  String get notificationsDescriptionShort =>
      'Geef aan van welke taken je meldingen wilt ontvangen';

  @override
  String get notifyNeverDescription => 'Geen meldingen ontvangen';

  @override
  String get defaultNotificationTime => 'Standaard meldingstijdstip';

  @override
  String get defaultNotificationTimeDescription =>
      'Het tijdstip waarop je een melding krijgt van taken die geen specifiek tijdstip hebben';

  @override
  String get addImage => 'Afbeelding toevoegen';

  @override
  String get todoImages => 'Afbeeldingen';

  @override
  String get todoImagesDescription =>
      'Voorzie je taken van afbeeldingen om ze te verduidelijken.\n\n**Let op: afbeeldingen worden helaas nog niet gesynchroniseerd.**';

  @override
  String get clearInputField => 'Invoerveld wissen';

  @override
  String get removeImage => 'Afbeelding verwijderen';

  @override
  String get apkSignatureInvalid => 'Ongeldige ondertekening';

  @override
  String get apkSignatureInvalidDescription =>
      'De ondertekening van het gedownloade apk-bestand kan niet worden gecontroleerd. Meld dit voorval aan de ontwikkelaars. Je kunt ervoor kiezen om het pakket alsnog te installeren, maar wij raden dit af.';

  @override
  String get searchTodos => 'Taken doorzoeken';

  @override
  String get editTodo => 'Taak bewerken';

  @override
  String get previewTodo => 'Taak voorvertonen';

  @override
  String get readerMode => 'Leesmodus';

  @override
  String get readerModeDescription =>
      'Maak een voorvertoning van taken op het bewerkscherm.';

  @override
  String get noList => 'Geen lijst';

  @override
  String get chooseAList => 'Kies een lijst';

  @override
  String get readerModeDescriptionShort =>
      'Pas de modus aan die gebruikt wordt na het openen van een taak';

  @override
  String get lastUsed => 'Laatstgebruikt';

  @override
  String get syncFileLocked =>
      'De server heeft het reservekopiebestand vergrendeld. Probeer het over 15 minuten opnieuw.';

  @override
  String get syncInternalError =>
      'Er is een interne fout opgetreden - excuses voor het ongemak.';

  @override
  String get syncConnectionError =>
      'Er is een fout opgetreden tijdens het verbinden met de server.';

  @override
  String get restore => 'Herstellen';

  @override
  String get loggingNextcloudIn => 'Bezig met inloggen op Nextcloud…';

  @override
  String get initializingWebdav => 'Bezig met opzetten van Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Bezig met migreren naar nieuwe synchronisatiemethode…';

  @override
  String get migratingWebdavToRemote =>
      'Bezig met migreren naar nieuwe synchronisatiemethode…';

  @override
  String get migrateToRemotes => 'Migratie';

  @override
  String get migrateToRemotesDescription =>
      'Doable heeft onlangs de synchronisatiemethode met Nextcloud en Webdav gewijzigd. Helaas werkt de nieuwe methode niet met terugwerkende kracht en zal er migratie moeten plaatsvinden. Dit zou niet meer dan een minuut moeten kosten.\n\nLet op: als je ervoor kiest om dit later te doen, dan kunnen er foutmeldingen optreden.';

  @override
  String get fixBrokenRemoteFile =>
      'Eén Doable-reservekopiebestand lijkt beschadigd te zijn. Dit kan worden opgelost door het bestand te overschrijven met de huidige items. Let op: hierdoor worden wijzigingen door andere apparaten mogelijk gewist.';

  @override
  String get fixedBrokenRemoteFile => 'Het beschadigde bestand is hersteld.';

  @override
  String get unfixableRemoteFile => 'Het bestand kan niet worden hersteld.';

  @override
  String get syncFileDoesNotExist =>
      'Er is geen reservekopiebestand beschikbaar.';

  @override
  String get todos => 'Taken';

  @override
  String get selectWhatToExport => 'Selecteer de te exporteren items.';

  @override
  String get exportFile => 'Bestand exporteren';

  @override
  String get listColor => 'Lijstkleur';

  @override
  String get listColorAsAccent => 'Lijstkleur als accent gebruiken';

  @override
  String get listColorAsAccentDescription =>
      'Gebruik de kleur van de huidige lijst als accentkleur';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get openSource => 'Open source';

  @override
  String get sourceCode => 'Broncode';

  @override
  String get contact => 'Contact';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'Alle broncode is beschikbaar op Codeberg onder een FOSS-licentie. Ook kun je op Codeberg problemen melden en pull-aanvragen openen. Doable\'s F-Droid-pakketbron is tevens te vinden op Codeberg!';

  @override
  String get aboutPrivacy =>
      'Doable verzamelt geen privé-informatie van je. Het enige dat Doable bewaart is logboeken met gebruiksstatistieken. Deze logboeken worden echter **niet automatisch gedeeld**. Ze worden alléén gedeeld als je ervoor kiest om ze te delen, bijvoorbeeld als je wilt dat ik een bug oplos.';

  @override
  String get httpWarning => 'Onbeveiligde verbinding';

  @override
  String get cancelling => 'Bezig met afbreken…';

  @override
  String get httpWarningDescription =>
      'Je probeert verbinding te maken met een http-server in plaats van een veiliger https-server. Http verstuurt alle gegevens onversleuteld naar de server, waardoor je mogelijk een beveiligingsrisico loopt. Deze methode is niet aanbevolen, behalve voor hele specifieke doeleinden, zoals een lokaal gehoste server. Weet je zeker dat je wilt doorgaan?';

  @override
  String get enableNotificationReminder => 'Herinneringsmelding';

  @override
  String get pickNotificationReminderDuration => 'Herinneren over';

  @override
  String get hours => 'uur';

  @override
  String get minutes => 'minuten';

  @override
  String get enableNotificationSound => 'Geluid afspelen';

  @override
  String get enableNotificationSoundDescription =>
      'Speel een geluid af bij het tonen van een melding';

  @override
  String get interval => 'Tussenpoos';

  @override
  String get secondly => 'Iedere seconde';

  @override
  String get minutely => 'Iedere minuut';

  @override
  String get hourly => 'Ieder uur';

  @override
  String get second => 'Seconde';

  @override
  String get startOfTheWeek => 'Begin van de week';

  @override
  String get hideList => 'Lijst verbergen';

  @override
  String get showList => 'Lijst tonen';

  @override
  String get showListDescription =>
      'Toon taken van deze lijst op het overzicht.';

  @override
  String get hideListDescription =>
      'Toon geen taken van deze lijst op het overzicht.';

  @override
  String get gotIt => 'Ik begrijp het';

  @override
  String get updateRelease =>
      'Open Doable\'s uitgavepagina en download de nieuwste versie';

  @override
  String get updateDownload =>
      'Download de nieuwste versie automatisch en open het installatiebestand via het meldingsgebied';

  @override
  String get updateFdroid =>
      'Als je Doable vanuit F-Droid geïnstalleerd hebt, zou je de update in de komende uren moeten ontvangen vanuit IzzyOnDroid\'s of Doable\'s pakketbron';

  @override
  String get updateDisable =>
      'Je kunt automatisch updaten uitschakelen in de instellingen';

  @override
  String get updateChecker => 'Updatecontrole';

  @override
  String get whatCanYouDo => 'Wat kan ik doen?';

  @override
  String get synchronization => 'Synchronisatie';

  @override
  String get backup => 'Reservekopie';

  @override
  String get autoExport => 'Automatisch exporteren';

  @override
  String get changeDuration => 'Tussenpoos wĳzigen';

  @override
  String get autoExportDescription =>
      'Je kunt Doable automatisch al je taken, lijsten en instellingen laten exporteren. Maar let op: Doable maakt een nieuw bestand voor elke export aan! Kies de tussenpoos tussen exporteringen.';

  @override
  String get seconds => 'seconden';

  @override
  String get apkVerifyingSignature =>
      'Bezig met verifiëren van apk-ondertekening…';

  @override
  String get swipeActions => 'Veegacties';

  @override
  String get swipeActionsDescription =>
      'Voegt de mogelijkheid toe om naar links te vegen op taken om ze toe te voegen aan je favorieten of af te ronden.\n\n**Let op: in sommige gevallen kan dit botsen met het lijstmenu.**';

  @override
  String get selectedSwipeActions => 'Gekozen acties';

  @override
  String get unselectedSwipeActions => 'Niet-gekozen acties';

  @override
  String get swipeActionComplete => 'Markeren als (on)afgerond';

  @override
  String get swipeActionExpand => 'Uitklappen';

  @override
  String get swipeActionStar => 'Toev. aan/Verw. uit favorieten';

  @override
  String get swipeActionDelete => 'Verwijderen';

  @override
  String get swipeActionsHideCheck => 'Vinkje verbergen';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Verberg het vinkje als $action gekozen is';
  }

  @override
  String get forceHighestRefreshRate => 'Hoogste ververssnelheid gebruiken';

  @override
  String get forceHighestRefreshRateDescription =>
      'Probeer om de hoogste ververssnelheid van het scherm te gebruiken binnen de app';

  @override
  String get overview => 'Overzicht';

  @override
  String whatsNewIn(String version) {
    return 'Wat is er nieuw in versie $version?';
  }

  @override
  String get expandTodosByDefault => 'Taken automatisch uitklappen';

  @override
  String get expandTodosByDefaultDescription => 'Klap taken automatisch uit';

  @override
  String get progress => 'Voortgang';

  @override
  String get progressBar => 'Voortgangsbalk';

  @override
  String get progressBarDescription =>
      'Toon een voortgangsbalk op taken, zodat je in één oogopslag kunt zien hoe ver je ze al hebt afgerond.';

  @override
  String get syncMultipleErrors =>
      'Er zijn meerdere foutmeldingen opgetreden. Bekijk voor meer informatie het logboek.';

  @override
  String get deletedCompleted => 'De afgeronde taken zijn gewist.';

  @override
  String get dateRange => 'Bereik';

  @override
  String get next3Days => 'Komende 3 dagen';

  @override
  String get dateFilters => 'Datumfilters';

  @override
  String get dateFiltersDescription =>
      'Voeg een optie toe om alleen taken uit een bepaalde periode te tonen.';

  @override
  String get exportedFile => 'Het bestand is geëxporteerd.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Schakel ‘$extensionName’ in om gebruik te kunnen maken van deze functie.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Toon regenboogvlaggen op de titelbalk in bepaalde maanden van het jaar';

  @override
  String get enablePrideFlags => 'Regenboogvlaggen tonen';

  @override
  String get prideFlagRestOfYear => 'Altijd regenboogvlaggen tonen';

  @override
  String get addNotification => 'Melding toevoegen';

  @override
  String get unselected => 'Niet geselecteerd';

  @override
  String get selected => 'Geselecteerd';

  @override
  String get nothingSelected => 'Niets geselecteerd';

  @override
  String get halfHourBefore => '30 minuten voor aanvang';

  @override
  String get defaultNotifications => 'Standaardmeldingen';

  @override
  String get aDayAfter => 'Eén dag na verstrijken';

  @override
  String get atTimeOfTodo => 'Op ingesteld tijdstip';

  @override
  String get aWeekBefore => 'Eén week voor aanvang';

  @override
  String get aDayBefore => 'Eén dag voor aanvang';

  @override
  String get anHourBefore => 'Eén uur voor aanvang';

  @override
  String get defaultNotificationsDescriptionIfLists =>
      'Je kunt ook per lijst meldingen instellen.';

  @override
  String get halfHourAfter => '30 minuten na verstrijken';

  @override
  String get customNotificationTime => 'Zelfgekozen tijdstip';

  @override
  String get defaultNotificationsDescription =>
      'Geef aan welke meldingen moeten worden toegevoegd aan elke taak met een overeenkomende datum.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meldingen',
      one: 'Eén melding',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Meldingen van';

  @override
  String get deleteListSettings => 'Lijstinstellingen wissen';

  @override
  String get snooze => 'Uitstellen';

  @override
  String get snoozeDurationDescription =>
      'Hoelang een melding uitgesteld moet worden na het drukken op de uitstelknop';

  @override
  String get snoozeDuration => 'Uitstellen gedurende';

  @override
  String get sortStarredToday => 'Favorieten van vandaag';

  @override
  String get sortStarredOverdue => 'Verstreken favorieten';

  @override
  String get sortByTitle => 'Op titel';

  @override
  String get sortByCreationDate => 'Op aanmaakdatum';

  @override
  String get sortStarredRelevantDate => 'Favorieten met datum';

  @override
  String get sortDescending => 'Aflopend';

  @override
  String get sortAscending => 'Oplopend';

  @override
  String get sortByRelevantDate => 'Op einddatum';

  @override
  String get sortByLastEdited => 'Op laatst bewerkt';

  @override
  String get sortingLabel => 'Sorteren';

  @override
  String get groupsLabel => 'Groepen';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable sorteert taken door ze te groeperen en vervolgens de groepen onder te verdelen, voordat ze weer tegelijk worden getoond. Op het tabblad ‘$groups’ kun je aangeven welke groepen Doable moet samenstellen en zo ja, in welke volgorde. Op het tabblad ‘$sorting’ kun je aangeven hoe Doable iedere groep dient te sorteren en prioriteiten stellen.';
  }

  @override
  String get hideForever => 'Niet meer tonen';

  @override
  String get sortingHelp => 'Groeperen en sorteren';

  @override
  String get info => 'Informatie';

  @override
  String get aboutToCancelChangesToList =>
      'Je staat op het punt om alle aangebrachte wijzigingen te wissen.';

  @override
  String get notificationsAlwaysPreview => 'Meldingen altijd voorvertonen';

  @override
  String get notificationsAlwaysPreviewDescription =>
      'Vertoon meldingen altijd voor, ongeacht de systeeminstellingen (niet van toepassing op de laatstgebruikte modus)';

  @override
  String get nextcloudWipeDescription =>
      'Doable heeft een verzoek ontvangen om alle gegevens gekoppeld aan je Nextcloudaccount te wissen. Hierdoor wordt tevens de accountkoppeling verbroken. Verder kun je ervoor kiezen om al deze gegevens (taken en lijsten) uit de app te wissen. Let op: deze actie is permanent en onomkeerbaar.';

  @override
  String get nextcloudWipe => 'Nextcloud-opruiming';

  @override
  String get wipeData => 'Gegevens wissen';

  @override
  String get keepData => 'Gegevens bewaren';

  @override
  String get imageInserted => 'Afbeelding ingevoegd';

  @override
  String get useSystemFont => 'Systeemlettertype gebruiken';

  @override
  String get useSystemFontDescription =>
      'Gebruik het systeemlettertype in Doable';

  @override
  String get batteryOptimization => 'Accuoptimalisatie';

  @override
  String get batteryOptimizationDescription =>
      'Het accuverbruik van Doable wordt geoptimaliseerd. Doorgaans werkt dit probleemloos, maar het kan voorkomen dat je hierdoor niet kunt inloggen op Nextcloud. Als je problemen ervaart, schakel deze optimalisaties dan uit.';

  @override
  String get couldNotAddTodoToCalendar => 'De taak kan niet worden toegevoegd.';

  @override
  String get sortCompleted => 'Afgeronde taken sorteren';

  @override
  String get sortCompletedDescription =>
      'Pas de sortering ook toe op afgeronde taken';
}
