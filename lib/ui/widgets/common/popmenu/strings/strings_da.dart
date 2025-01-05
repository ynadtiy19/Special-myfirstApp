import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class StringsDa extends Strings {
  StringsDa([String locale = 'da']) : super(locale);

  @override
  String get about => 'Om';

  @override
  String get aboutDescription => 'Info om appen';

  @override
  String get aboutOSInfo => 'Kildekode: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPrivatlivspolitik: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid repository: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Kassér ændringer?';

  @override
  String get aboutToCancelChangesDescription => 'Du er ved at kassere alle ændringer i denne opgave.';

  @override
  String get aboutToCancelFeedback => 'Kassér feedback?';

  @override
  String get aboutToCancelFeedbackDescription => 'Du er ved at kassere din feedback. Dette kan ikke fortrydes.';

  @override
  String get aboutToDeleteCompleted => 'Du er ved at slette alle fuldførte opgaver. Denne handling er permanent og kan ikke fortrydes.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString opgaver',
      one: 'én opgave',
    );
    return 'Du er ved at slette $_temp0. Denne handling er permanent og kan ikke fortrydes.';
  }

  @override
  String get additionalFeatures => 'Udvidelser';

  @override
  String get additionalFeaturesDescription => 'Funktioner, der gør Doable mere kraftfuld';

  @override
  String get alignTodoCheck => 'Afkrydsningsfelt til højre';

  @override
  String get alignTodoCheckDescription => 'Vis afkrydsningsfelt for opgaver på højre side';

  @override
  String get appLanguage => 'Appsprog';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Opmærksomhed';

  @override
  String get back => 'Tilbage';

  @override
  String get syncAndBackup => 'Synk. & Sikkerhedskopiering';

  @override
  String get syncAndBackupDescription => 'Sikkerhedskopiér og synkronisér dine opgaver';

  @override
  String get cancel => 'Annullér';

  @override
  String get chooseFeedbackExtrasDescription => 'Jeg anbefaler at inkludere alt det følgende, da det hjælper mig med at fejlfinde dit problem. Dette inkluderer ingen personlige oplysninger.';

  @override
  String get chooseFeedbackExtrasTitle => 'Hvilke ekstra oplysninger ønsker du at inkludere?';

  @override
  String get chooseFeedbackWay => 'Hvor ønsker du at give feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Fuldført opgave.';

  @override
  String get copiedToClipboard => 'Kopieret tekst til udklipsholder.';

  @override
  String get customAccentPicker => 'Accentfarve';

  @override
  String get customAccentPickerDescription => 'Vælg en tilpasset accentfarve til appens tema';

  @override
  String get darkMode => 'Mørk tilstand';

  @override
  String get deleteCompletedAfter => 'Auto-slet fuldført';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Slet efter $duration';
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
      other: '$countString opgaver',
      one: 'én opgave',
    );
    return 'Slettede $_temp0.';
  }

  @override
  String get description => 'Beskrivelse';

  @override
  String get design => 'Design';

  @override
  String get designDescription => 'Ændr udseendet og fornemmelsen af Doable';

  @override
  String get disable => 'Deaktivér';

  @override
  String get discard => 'Kassér';

  @override
  String get doContinue => 'Fortsæt';

  @override
  String get done => 'Færdig';

  @override
  String get dynamicColors => 'Dynamiske farver';

  @override
  String get dynamicColorsDescription => 'Brug systemfarver (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Aktivér';

  @override
  String get enabled => 'Aktiveret';

  @override
  String get export => 'Eksportér';

  @override
  String get exportAllTodos => 'Eksportér alle opgaver';

  @override
  String exportEvery(String duration) {
    return 'Eksportér hver $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'En mere detaljeret forklaring af hvad der gik galt / hvordan det skete.';

  @override
  String get feedbackHeader => 'Udfyld venligst formularen nedenfor for at hjælpe mig med at forstå, hvad der gik galt.';

  @override
  String get feedbackTitleHelp => 'Et kort resumé af hændelsen.';

  @override
  String get general => 'Generelt';

  @override
  String get generalDescription => 'Ændr appens generelle adfærd';

  @override
  String get giveFeedback => 'Feedback';

  @override
  String get highlightOverdue => 'Fremhæv forfaldne';

  @override
  String get highlightOverdueDescription => 'Fremhæv opgaver, der er forfaldne, på samme måde som stjernemarkerede opgaver';

  @override
  String get highlightToday => 'Fremhæv i dag';

  @override
  String get highlightTodayDescription => 'Fremhæv opgaver, der forfalder i dag, på samme måde som stjernemarkerede opgaver';

  @override
  String get importLocalBackupError => 'Filen kunne ikke importeres. Er du sikker på, at det var genereret af Doable?';

  @override
  String get importTodosFromFile => 'Importér fil';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '${countString}opgaver',
      one: 'én opgave',
      zero: 'nul opgaver',
    );
    return 'Importerede $_temp0.';
  }

  @override
  String get installedFrom => 'Installeret fra';

  @override
  String get introDoubleTap => 'Dobbelt tryk';

  @override
  String get introDoubleTapDescription => 'Du kan dobbelt trykke på opgaver, der har en beskrivelse, for at udvide dem. Når de er udvidet, vises den fulde beskrivelse, og du kan derefter interagere med links, osv.\n\nDu kan prøve det med et eksempel lige her!';

  @override
  String get introDoubleTapTodoDescription => 'Kagen er løgn!\n\nFind ud af mere her:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Køb en ny kage';

  @override
  String get introLinks => 'Links, telefonnumre, e-mails';

  @override
  String get introLinksDescription => 'Når du føjer links, telefonnumre eller e-mailadresser til en beskrivelse, fremhæves de automatisk, og du kan interagere med dem.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Du kan også synkronisere dine opgaver med en Nextcloud-instans. Hvis du vil, kan du logge ind lige her!';

  @override
  String get introStar => 'Stjerner';

  @override
  String get introStarDescription => 'Føj en stjerne til en opgave for\nat skille den ud fra mængden.\n\nTryk på stjernen nedenfor for at prøve det!';

  @override
  String get introTodos => 'Opgaver';

  @override
  String get introTodosDescription => 'Når du opretter en ny opgave, kan du tilføje adskillige ting. F.eks kan du tilføje en dato, hvor opgaven bliver relevant, eller du kan stjernemarkere opgaven for at skille den ud fra mængden! Du kan også tilføje en beskrivelse med links eller andre oplysninger relateret til opgaven.';

  @override
  String get introWelcome => 'Velkommen til Doable!';

  @override
  String get introWelcomeDescription => 'Den enkle opgave-app med moderne design\nog Nextcloud-integration.';

  @override
  String get keepEditing => 'Fortsæt redigering';

  @override
  String get left => 'Venstre';

  @override
  String get licenses => 'Licenser';

  @override
  String get licensesDescription => 'Open source- og Flutter-licenser';

  @override
  String get localStorage => 'Lokal lagring';

  @override
  String get logIn => 'Log ind';

  @override
  String get logOut => 'Log ud';

  @override
  String get logOutputs => 'Logfiler';

  @override
  String get markCompleted => 'Markér som fuldført';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Markér som ufuldført';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown-understøttelse';

  @override
  String get mayNotBeEmpty => 'Må ikke være tomt';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Føjer understøttelse til basal markdown-syntaks i beskrivelsen og titlen på dine opgaver.\n\nFor en fuld liste over syntaksmuligheder kan du tjekke\nhttps://www.markdownguide.org/cheat-sheet/.\n\nDenne app understøtter dog **ikke** alle markdown-specifikationer. Understøttede elementer inkluderer:\n\n- Fed\n- Kursiv\n- Understregning (\\_\\_text\\_\\_)\n- Blokcitater\n- Ordnede / Uordnede lister\n- Opgavelister\n- Inline-kode og afgrænsede kodeblokke\n- Links\n- Fremhævning\n- Gennemstreget tekst';

  @override
  String get moveImportantToTop => 'Flyt vigtige til toppen';

  @override
  String get moveImportantToTopDescription => 'Hvis aktiveret, vil stjernemarkerede opgaver altid blive vist øverst på listen';

  @override
  String get moveUpWhenUpdated => 'Vis ændringer i listen';

  @override
  String get moveUpWhenUpdatedDescription => 'Opgaver flyttes øverst på listen efter ændring';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'Nextcloud-webgrænsefladens URL';

  @override
  String get ncDirectory => 'Mappe';

  @override
  String get ncFileIn => 'Fil gemt i';

  @override
  String get ncLogOut => 'Logger ud af Nextcloud';

  @override
  String get ncLogOutMessage => 'Når du logger ud, slettes dine gemte adgangsoplysninger. Dog vil den gemte fil på din Nextcloud-instans forblive.';

  @override
  String get ncLoggedInAs => 'Logget ind som';

  @override
  String get ncPassword => 'Adgangskode';

  @override
  String get ncUser => 'Bruger';

  @override
  String get never => 'Aldrig';

  @override
  String get newSubTodo => 'Underopgave';

  @override
  String get newTodo => 'Ny opgave';

  @override
  String get next => 'Næste';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Godt gået, der er ikke flere opgaver!';

  @override
  String get notAValidUrl => 'Ikke en gyldig URL';

  @override
  String get off => 'Fra';

  @override
  String get ok => 'OK';

  @override
  String get on => 'Til';

  @override
  String get optional => 'Valgfri';

  @override
  String get pickAColor => 'Vælg en farve';

  @override
  String get pickerPrimary => 'Standard';

  @override
  String get pickerWheel => 'Tilpasset';

  @override
  String get popupMenuDeleteCompleted => 'Slet fuldførte';

  @override
  String get popupMenuHideCompleted => 'Skjul fuldførte';

  @override
  String get popupMenuShowCompleted => 'Vis fuldførte';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Frist';

  @override
  String get required => '*påkrævet';

  @override
  String get reset => 'Nulstil';

  @override
  String get right => 'Højre';

  @override
  String get save => 'Gem';

  @override
  String get settings => 'Indstillinger';

  @override
  String get showCompletedTodos => 'Vis fuldførte';

  @override
  String get showCompletedTodosDescription => 'Vis fuldførte opgaver på listen';

  @override
  String get showIntroScreen => 'Vis introduktionsskærmen igen';

  @override
  String get sortNewestFirst => 'Nyeste først';

  @override
  String get sortNewestFirstDescription => 'Nyere datoer vises øverst';

  @override
  String get sortNoRelevantDate => 'Uden dato';

  @override
  String get sortOverdue => 'Forfaldne';

  @override
  String get sortRelevantDate => 'Med dato';

  @override
  String get sortStarred => 'Stjernemarkeret';

  @override
  String get sortToday => 'Forfalder i dag';

  @override
  String get sorting => 'Sorteringsrækkefølge';

  @override
  String get sortingDescription => 'Rækkefølgen, hvori opgaver sorteres';

  @override
  String get submitFeedback => 'Indsend';

  @override
  String get syncCorruptedFile => 'Sikkerhedskopifilen virker beskadiget.';

  @override
  String get syncDirectoryDoesNotExist => 'Den angivne mappe eksisterer ikke.';

  @override
  String get syncNcMaintenance => 'Nextcloud er i Vedligeholdelsestilstand.';

  @override
  String get syncNoInternetConnection => 'Ingen internetforbindelse.';

  @override
  String get syncNotNcServer => 'Kunne ikke finde en Nextcloud-server på denne adresse.';

  @override
  String get syncServiceUnavailable => 'Nextcloud utilgængelig.';

  @override
  String get syncSuccessful => 'Synkronisering fuldført.';

  @override
  String get syncUnknownError => 'En ukendt fejl opstod.';

  @override
  String get syncWrongUrl => 'Det angivne URL ser ud til at være forkert.';

  @override
  String get syncWrongUserOrPassword => 'Det angivne brugernavn eller adgangskode er forkert.';

  @override
  String get system => 'System';

  @override
  String get systemInfo => 'System';

  @override
  String get thankYouForFeedback => 'Tak for din feedback!';

  @override
  String get title => 'Titel';

  @override
  String get titleMayNotBeEmpty => 'Titel må ikke være tom';

  @override
  String get today => 'I dag';

  @override
  String get todoSearch => 'Opgavesøgning';

  @override
  String get todoSearchDescription => 'Føj en søgeknap til opgavelisten, så du kan søge i dine opgaver.';

  @override
  String get tomorrow => 'I morgen';

  @override
  String get treatTodayAsIsImportant => 'Behandl i dag som vigtig';

  @override
  String get treatTodayAsIsImportantDescription => 'Hvis aktiveret, vil opgaver, der forfalder i dag, behandles som stjernemarkerede';

  @override
  String get trimTodoTexts => 'Beskær opgavetekster';

  @override
  String get trimTodoTextsDescription => 'Hvis aktiveret, fjernes omgivende mellemrum fra opgavens titel og beskrivelse';

  @override
  String get trueBlackMode => 'Ægte sort tilstand';

  @override
  String get trueBlackModeDescription => 'Gør baggrunden sort, især nyttigt til OLED-enheder';

  @override
  String get turnOff => 'Slå fra';

  @override
  String get turnOn => 'Slå til';

  @override
  String get undo => 'Fortryd';

  @override
  String get update => 'Opdatér';

  @override
  String get updateCredentials => 'Opdatér adgangsoplysninger';

  @override
  String get useCustomTabs => 'Brug in-app browser';

  @override
  String get useCustomTabsDescription => 'Brug en in-app browser til at åbne links';

  @override
  String get whatsNew => 'Hvad er nyt?';

  @override
  String get yesterday => 'I går';

  @override
  String get error => 'Fejl';

  @override
  String get routingError => 'Ups! Det ser ud til, at noget gik galt, og du er havnet på en side, der ikke eksisterer. Det er jeg frygtelig ked af!';

  @override
  String get goToHome => 'Gå hjem';

  @override
  String get pageNotFound => 'Side ikke fundet';

  @override
  String get updateDoable => 'Opdatér Doable';

  @override
  String get download => 'Hent';

  @override
  String get install => 'Installér';

  @override
  String get installed => 'Installeret';

  @override
  String get updateNotInstalled => 'Opdateringen blev ikke installeret.';

  @override
  String get skipVersion => 'Spring denne version over';

  @override
  String get couldNotDownloadUpdate => 'Kunne ikke hente opdatering.';

  @override
  String versionWithNumber(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdates => 'Auto-opdateringer';

  @override
  String get autoUpdatesDescription => 'Tjek automatisk efter opdateringer';

  @override
  String get introExtensions => 'Udvidelser? Udvidelser!';

  @override
  String get introExtensionsDescription => 'Udvidelser lader dig udvide og forstørre funktionssættet i Doable. De giver dig magten til at vælge præcis, hvordan du vil bruge Doable. Hvis du vil tjekke alle tilgængelige udvidelser, skal du bare klikke på knappen nedenfor!';

  @override
  String get introExtensionsButton => 'Forlæng væk!';

  @override
  String get useBottomSheetMenu => 'Brug menuen i bunden af arket';

  @override
  String get useBottomSheetMenuDescription => 'Brug et bundark i stedet for en rullemenu som menu';

  @override
  String get contributors => 'Bidragsydere';

  @override
  String get contributorDescription => 'Personer, der hjalp Doable med at blive, hvad det er';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'Webdav-serverens url';

  @override
  String get webdavLogOutMessage => 'Når du logger ud, vil dine gemte adgangsoplysninger slettes. Dog vil den gemte fil forblive.';

  @override
  String get importExport => 'Import & eksport';

  @override
  String get chooseDirectory => 'Vælg mappe';

  @override
  String get forgetDirectory => 'Glem mappe';

  @override
  String get newStarredTodo => 'Ny stjernemarkeret opgave';

  @override
  String get allTodos => 'Alle opgaver';

  @override
  String get newTodoList => 'Ny liste';

  @override
  String get deleteTodoList => 'Slet liste';

  @override
  String get editTodoList => 'Redigér liste';

  @override
  String get lists => 'Lister';

  @override
  String get listsDescription => 'Opret lister og sortér dine opgaver med dem. Du kan oprette et ubegrænset antal lister, som er tilgængelige gennem en skuffe på startskærmen.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Du er ved at slette listen $listName og alle opgaver i den. Denne handling er permanent og kan ikke fortrydes.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Liste';

  @override
  String get share => 'Del';

  @override
  String get font => 'Skrifttype';

  @override
  String get fontDescription => 'Langt tryk for at vise skrifttypenavne';

  @override
  String get popUpAnimationOverSlideAnimation => 'Gammel sideovergang';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Brug den gamle pop op-sideovergang';

  @override
  String get restart => 'Genstart';

  @override
  String get later => 'Senere';

  @override
  String get restartRequired => 'Genstart påkrævet';

  @override
  String get restartRequiredForSetting => 'En app-genstart er påkrævet for at denne indstilling træder i kraft.';

  @override
  String get image => 'Billede';

  @override
  String get expandTodos => 'Udvid opgaver';

  @override
  String get showTodoListNames => 'Vis navne på lister';

  @override
  String get includeBranding => 'Inkludér branding';

  @override
  String get doableBrandingText => 'Delt fra Doable; den enkle, moderne og nemme opgave-app.\nDu kan få Doable her: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Vælg, hvordan du vil dele dine opgaver';

  @override
  String get options => 'Valgmuligheder';

  @override
  String get reduceMotion => 'Reducér bevægelse';

  @override
  String get reduceMotionDescription => 'Reducér bevægelse af animationer';

  @override
  String get contribute => 'Bidrag';

  @override
  String get contributeWantYourNameHere => 'Vil du have dit navn her?';

  @override
  String get contributeWantYourNameHereDescription => 'Bidrag til Doable direkte eller hjælp med oversættelsen!';

  @override
  String get onlySymbolInDetailViewFab => 'Ikon i stedet for tekst';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Brug et ikon i stedet for tekst i opgavens detaljevisning';

  @override
  String get allSelected => 'Alle';

  @override
  String get sharedTextAsTitle => 'Delte tekst som titel';

  @override
  String get sharedTextAsTitleDescription => 'Brug tekst delt til Doable som titlen af den nye opgave i stedet for dens beskrivelse';

  @override
  String get noTodoLists => 'Du har i øjeblikket ingen lister.\nOpret en ny for at komme i gang!';

  @override
  String forExample(String example) {
    return 'fx $example';
  }

  @override
  String get clearSelection => 'Ryd valg';

  @override
  String get syncConnectionTimedOut => 'Forbindelsen udløb.';

  @override
  String get syncTooManyTimeOuts => 'Serveren udløb for mange gange. Synkronisering er deaktiveret, indtil appen genstartes.';

  @override
  String get todoToCalendar => 'Tilføj opgave til kalender';

  @override
  String get logs => 'Logfiler';

  @override
  String get logsDescription => 'Vis alle logfiler, som Doable udskriver';

  @override
  String get aboutToClearAllLogs => 'Du er ved at slette alle logfiler og gøre dem utilgængelige for feedback og fejlfinding. Denne handling er permanent og kan ikke fortrydes.';

  @override
  String get clearAllLogs => 'Ryd alle logfiler';

  @override
  String get noLogsYet => 'Der er i øjeblikket ingen logfiler, du kan kigge på.';

  @override
  String get dateFormat => 'Datoformat';

  @override
  String get timeFormat => 'Tidsformat';

  @override
  String get shareAllLogs => 'Del alle logfiler';

  @override
  String get copyAllLogs => 'Kopiér alle logfiler';

  @override
  String get whatWentWrong => 'Hvad gik galt?';

  @override
  String get fixCorruptBackupFile => 'Sikkerhedskopifilen for Doable kunne ikke læses og virker beskadiget. Doable kan prøve at rette det ved at slette den nuværende sikkerhedskopifil og oprette en ny. Dette sletter alle ændringer foretaget i andre Doable-instanser med den samme sikkerhedskopifil.';

  @override
  String get initializingNextcloud => 'Starter Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Skift mappe';

  @override
  String get dueDate => 'Frist';

  @override
  String get dragToReorder => 'Træk for at omarrangere';

  @override
  String get copySettings => 'Kopiér indstillinger';

  @override
  String get copySystemInfo => 'Kopiér systeminfo';

  @override
  String get languageNameInEnglish => 'Danish';

  @override
  String get languageNameInNativeLanguage => 'Dansk';

  @override
  String get createSummaryForBugReport => 'Opret resumé';

  @override
  String get createSummaryForBugReportDetails => 'Opret en rapport med systemoplysninger, Doable\'s indstillinger og alle logfiler. Dette kan være nyttigt til fejlrapporter og hjælper med at løse et problem.';

  @override
  String get bugReport => 'Fejlrapport';

  @override
  String get bugReportSupportingText => 'Vælg venligst, hvad du vil inkludere i fejlrapporten. Jo mere information du giver, jo lettere er det at finde ud af præcis, hvad der gik galt. **Ingen personlige oplysninger deles.**';

  @override
  String get shareBugReport => 'Del fejlrapport';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String get fontSizeDescription => 'Overstyr systemets skriftstørrelse';

  @override
  String get decrease => 'Formindsk';

  @override
  String get increase => 'Forøg';

  @override
  String get customSecondaryAccentPicker => 'Sekundær farve';

  @override
  String get customTertiaryAccentPicker => 'Tredje farve';

  @override
  String get advancedColorOptions => 'Avancerede farvemuligheder';

  @override
  String get uploadCustomColorScheme => 'Upload tilpasset farveskema';

  @override
  String get downloadCurrentColorScheme => 'Hent nuværende farveskema';

  @override
  String get markAsStarred => 'Stjernemarkér opgave';

  @override
  String get setTime => 'Indstil tid';

  @override
  String get thereAreNoLists => 'Ingen lister endnu';

  @override
  String get closeDetailsOnCompelte => 'Luk detaljer ved fuldførelse';

  @override
  String get closeDetailsOnCompelteDescription => 'Gemmer opgaven, og lukker dens detaljevisning ved tryk på \'Fuldfør\'-knappen.';

  @override
  String get customColorTheme => 'Tilpasset farvetema';

  @override
  String get discardCustomColorTheme => 'Du er ved at kassere alle ændringer foretaget i farvetemaet.';

  @override
  String get lightMode => 'Lys tilstand';

  @override
  String get deletedCustomColorTheme => 'Slettet tilpasset farvetema.';

  @override
  String get customThemeInfo => 'Her kan du ændre hver eneste farvetoken, præcis som du ønsker. Du kan også importere/eksportere farverne til en `json`-fil og redigere dem der!\n\nHvis du vil forstå, hvad hver token gør, kan du besøge følgende hjemmeside: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importér';

  @override
  String get customThemeFuckedFile => 'Denne fil indeholder ikke et gyldigt farvetema. Sørg for, at din fil følger samme stil og struktur som den fil, du eksporterede.';

  @override
  String get markdownBold => 'Fed';

  @override
  String get markdownItalic => 'Kursiv';

  @override
  String get markdownMonospace => 'Monospace';

  @override
  String get markdownHighlight => 'Fremhæv';

  @override
  String get fediChooseInstance => 'Vælg din instans';

  @override
  String get fediInstanceUrl => 'Instans URL';

  @override
  String get fediRememberInstance => 'Husk min instans';

  @override
  String get fediDoablePost => 'Jeg har lige formået at gennemføre alle mine opgaver takket være @Doable@floss.social!\n\nLyder det interessant? Du kan finde ud af mere om #Doable ved at besøge https://repo.doable.at!';

  @override
  String get doable => 'Doable – Den moderne og enkle opgave-app';

  @override
  String get rrRepeatsEvery => 'Gentager hver';

  @override
  String get rrRepeatsOn => 'Gentager på';

  @override
  String get rrEnds => 'Slutter';

  @override
  String get week => 'Uge';

  @override
  String get weeks => 'Uger';

  @override
  String get day => 'Dag';

  @override
  String get days => 'Dage';

  @override
  String get month => 'Måned';

  @override
  String get months => 'Måneder';

  @override
  String get year => 'År';

  @override
  String get years => 'År';

  @override
  String get onFollowedByDate => 'På';

  @override
  String get rrAfterOccurrences => 'Efter';

  @override
  String get occurrence => 'Forekomst';

  @override
  String get occurrences => 'Forekomster';

  @override
  String get rrCustomRecurrence => 'Brugerdefineret gentagelse';

  @override
  String get daily => 'Daglig';

  @override
  String get weekly => 'Ugentlig';

  @override
  String get monthly => 'Månedlig';

  @override
  String get yearly => 'Årlig';

  @override
  String get doesNotRepeat => 'Gentager ikke';

  @override
  String get rrRecurrence => 'Tilbagevenden';

  @override
  String get recurringTodos => 'Gentagende opgaver';

  @override
  String get recurringTodosDescription => 'Føj gentagelse til dine opgaver, og lad Doable automatisk omlægge dem for dig, når du har fuldført dem. Opgaverne omlægges baseret på den relevante dato og den tidsplan, du har indstillet. Hvis du ikke har føjet en forfaldsdato til din opgave, bruges dens oprettelsesdato i stedet.\n\n**Én ting at huske på: Selvom du nu kan indstille opgaver til gentagelse i Doable, bedes du bemærke, at denne funktion i øjeblikket er begrænset til engelsk.**';

  @override
  String get post => 'Skriv';

  @override
  String get rrRepeats => 'Gentagelser';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription => 'Denne udvidelse er stadig i beta, så du støder måske på nogle mindre udfordringer under brugen af den. Vær opmærksom på risiciene og lad mig vide, hvis du oplever problemer!';

  @override
  String get extensionBetaWarning => 'Aktivér beta-udvidelse?';

  @override
  String get showFediButton => 'Vis Skriv-knap';

  @override
  String get showFediButtonDescription => 'Vis en knap, der giver dig mulighed for at skrive om din tomme liste til Fediverse';

  @override
  String get notifications => 'Meddelelser';

  @override
  String get enableNotifications => 'Aktiver notifikationer';

  @override
  String get notifyAll => 'Alle opgaver';

  @override
  String get notifyAllDescription => 'Få besked for hver opgave, der har en forfaldsdato';

  @override
  String get notifyTimeOnly => 'Kun opgaver med tid';

  @override
  String get notifyTimeOnlyDescription => 'Få kun besked om opgaver, der både har en forfaldsdato og et tidspunkt';

  @override
  String get notifyTodosChannelName => 'Opgaver';

  @override
  String get notificationsDescription => 'Lad Doable give dig besked, når dine opgaver forfalder. Du kan også ændre for hvilke opgaver, du vil få notifikationer.';

  @override
  String get notificationsDescriptionShort => 'Ændre, hvilke opgaver du får besked om';

  @override
  String get notifyNeverDescription => 'Få ikke besked om nogen opgaver';

  @override
  String get defaultNotificationTime => 'Standard notifikationstid';

  @override
  String get defaultNotificationTimeDescription => 'Den tid, du vil få besked om for opgaver, der ikke har et relevant tidspunkt';

  @override
  String get addImage => 'Tilføj billede';

  @override
  String get todoImages => 'Billeder';

  @override
  String get todoImagesDescription => 'Føj billeder til dine opgaver, så du kan føje mere kontekst til det, du skriver.\n\n**Desværre synkroniseres billeder ikke endnu.**';

  @override
  String get clearInputField => 'Ryd input-feltet';

  @override
  String get removeImage => 'Fjern billede';

  @override
  String get apkSignatureInvalid => 'Ugyldig signatur';

  @override
  String get apkSignatureInvalidDescription => 'Signaturen på den hentede APK-fil kunne ikke verificeres. Underret venligst udvikleren om dette problem. Selvom du kan fortsætte med at installere APK\'en på eget ansvar, anbefaler vi forsigtighed på grund af mulige sikkerhedsmæssige bekymringer.';

  @override
  String get searchTodos => 'Søg i opgaver';

  @override
  String get editTodo => 'Redigér opgave';

  @override
  String get previewTodo => 'Forhåndsvis opgave';

  @override
  String get readerMode => 'Læsetilstand';

  @override
  String get readerModeDescription => 'Lader dig få en forhåndsvisning af dine opgaver indeni redigeringsskærmen.';

  @override
  String get noList => 'Ingen liste';

  @override
  String get chooseAList => 'Vælg en liste';

  @override
  String get readerModeDescriptionShort => 'Skift starttilstand, når du åbner en opgave';

  @override
  String get lastUsed => 'Sidst brugt';

  @override
  String get syncFileLocked => 'Serveren har låst en backup-fil, prøv venligst igen om ca. 15 minutter.';

  @override
  String get syncInternalError => 'Der opstod en intern fejl, vi beklager ulejligheden.';

  @override
  String get syncConnectionError => 'Der opstod en fejl under forbindelsen til serveren.';

  @override
  String get restore => 'Gendan';

  @override
  String get loggingNextcloudIn => 'Logger ind på Nextcloud…';

  @override
  String get initializingWebdav => 'Starter WebDAV…';

  @override
  String get migratingNextcloudToRemote => 'Migrerer Nextcloud til en ny synkroniseringsimplementering…';

  @override
  String get migratingWebdavToRemote => 'Migrerer WebDAV til en ny synkroniseringsimplementering…';

  @override
  String get migrateToRemotes => 'Migration';

  @override
  String get migrateToRemotesDescription => 'Doable har for nylig ændret, hvordan den synkroniserer med fjernbetjeninger som Nextcloud eller Webdav. Desværre er den nye implementering ikke bagudkompatibel, og derfor skal der ske en migrering. Doable har brug for et minut til at migrere alt, hvad den skal.\n\nHvis du vælger at gøre det senere, kan du støde på nogle fejlmeddelelser, da den nye implementering endnu ikke er sat op.';

  @override
  String get fixBrokenRemoteFile => 'En backup-fil af Doable ser ud til at være korrupt. Doable kan løse det ved at tilsidesætte den med den aktuelle, lokale værdi. Det vil tilsidesætte alle ændringer, der er foretaget af andre enheder, efter at fejlen opstod.';

  @override
  String get fixedBrokenRemoteFile => 'Vellykket gendannelse af ødelagt fil.';

  @override
  String get unfixableRemoteFile => 'Filen kunne ikke gendannes.';

  @override
  String get syncFileDoesNotExist => 'En sikkerhedskopifil af Doable findes ikke.';

  @override
  String get todos => 'Opgaver';

  @override
  String get selectWhatToExport => 'Vælg venligst, hvad du vil eksportere.';

  @override
  String get exportFile => 'Eksportér fil';

  @override
  String get listColor => 'Liste over farver';

  @override
  String get listColorAsAccent => 'Angiv farve som accent';

  @override
  String get listColorAsAccentDescription => 'Brug farven på den aktuelle liste som accentfarve for Doable';

  @override
  String get privacy => 'Privatliv';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get openSource => 'Åben kilde';

  @override
  String get sourceCode => 'Kildekode';

  @override
  String get contact => 'Kontakt';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'Al Doables kildekode er tilgængelig på Codeberg under en FOSS-licens. Du kan også indsende problemer og pull requests der. Du kan også finde Doables F-Droid repository på Codeberg!';

  @override
  String get aboutPrivacy => 'Doable indsamler ingen personlige oplysninger om dig. Det eneste, Doable gemmer om din brug, er logfiler. Men disse logfiler **uploades ikke automatisk.** Den eneste måde, hvorpå disse logfiler forlader din enhed, er, hvis du vælger at dele dem, for eksempel for at hjælpe mig med at rette en fejl.';

  @override
  String get httpWarning => 'Ukrypteret forbindelse';

  @override
  String get cancelling => 'Annullerer…';

  @override
  String get httpWarningDescription => 'Du forsøger at oprette forbindelse til en HTTP-server i stedet for en mere sikker HTTPS-server. HTTP sender data ukrypteret til serveren, hvilket udgør en potentiel sikkerhedsrisiko, så det anbefales ikke. Der er dog visse tilfælde af brug, f.eks. en lokalt hostet server. Er du sikker på, at du vil fortsætte med HTTP?';

  @override
  String get enableNotificationReminder => 'Påmindelsesmeddelelse';

  @override
  String get pickNotificationReminderDuration => 'Mind mig om det efter';

  @override
  String get hours => 'Timer';

  @override
  String get minutes => 'Minutter';

  @override
  String get enableNotificationSound => 'Afspil lyd';

  @override
  String get enableNotificationSoundDescription => 'Afspil en brugerdefineret lyd, når du viser en notifikation';

  @override
  String get interval => 'Intervalle';

  @override
  String get secondly => 'Dernæst';

  @override
  String get minutely => 'Minutvis';

  @override
  String get hourly => 'Timeløn';

  @override
  String get second => 'Anden';

  @override
  String get startOfTheWeek => 'Start på ugen';

  @override
  String get hideList => 'Skjul liste';

  @override
  String get showList => 'Vis liste';

  @override
  String get showListDescription => 'Vis opgaver på denne liste i oversigten.';

  @override
  String get hideListDescription => 'Vis ikke opgave på denne liste i oversigten.';

  @override
  String get gotIt => 'Jeg har det';

  @override
  String get updateRelease => 'Åbn Doables udgivelsesside, og download den nyeste version';

  @override
  String get updateDownload => 'Lad Doable downloade den nyeste version for dig; du finder filen i meddelelsesområdet og kan installere den ved at klikke på den';

  @override
  String get updateFdroid => 'Hvis du har installeret Doable fra F-Droid, bør du få opdateringen inden for de næste par timer enten fra IzzyOnDroid\'s repository eller Doable\'s eget repository';

  @override
  String get updateDisable => 'Du kan også slå automatisk opdateringskontrol helt fra i indstillingerne';

  @override
  String get updateChecker => 'Opdateringskontrol';

  @override
  String get whatCanYouDo => 'Hvad kan du gøre?';

  @override
  String get synchronization => 'Synkronisering';

  @override
  String get backup => 'Backup';

  @override
  String get autoExport => 'Automatisk eksport';

  @override
  String get changeDuration => 'Skift varighed';

  @override
  String get autoExportDescription => 'Du kan lade Doable automatisk eksportere dine opgaver, lister og indstillinger. Vær opmærksom på, at Doable opretter en ny fil for hver eksport! Vælg varigheden mellem eksporterne i overensstemmelse hermed.';

  @override
  String get seconds => 'Sekunder';

  @override
  String get apkVerifyingSignature => 'Verificerer apk-signatur…';

  @override
  String get swipeActions => 'Swipebevægelser';

  @override
  String get swipeActionsDescription => 'Tilføjer mulighed til at swipe til venstre på opgaver for enten at stjernemarkere eller færdigøre dem.\n\n**Bemærk, at dette nogle gange kan komme i konflikt med skuffen i listeudvidelsen.**';

  @override
  String get selectedSwipeActions => 'Valgte handlinger';

  @override
  String get unselectedSwipeActions => 'Ikke-valgte handlinger';

  @override
  String get swipeActionComplete => 'Marker opgave som fuldført / ikke fuldført';

  @override
  String get swipeActionExpand => 'Udvid opgave';

  @override
  String get swipeActionStar => 'Tilføj / fjern stjernemarkering fra opgave';

  @override
  String get swipeActionDelete => 'Slet opgave';

  @override
  String get swipeActionsHideCheck => 'Skjul afkrydsningsfelt';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Skjul afkrydsningsfelt når $action er valgt';
  }

  @override
  String get forceHighestRefreshRate => 'Tving højeste opdateringshastighed';

  @override
  String get forceHighestRefreshRateDescription => '(Prøv at) tvinge systemet til at bruge den højest mulige opdateringshastighed inde i appen';

  @override
  String get overview => 'Oversigt';

  @override
  String whatsNewIn(String version) {
    return 'Hvad er nyt i $version?';
  }

  @override
  String get expandTodosByDefault => 'Udvid opgaver som standard';

  @override
  String get expandTodosByDefaultDescription => 'Vis opgaver som udvidet som standard';

  @override
  String get progress => 'Fremgang';

  @override
  String get progressBar => 'Fremgangslinje';

  @override
  String get progressBarDescription => 'Tilføjer en fremgangslinje til dine opgaver, så du får bedre kontrol over, om de er færdige.';

  @override
  String get syncMultipleErrors => 'Fjernbetjeningen stødte på flere fejl. Se logfilerne for detaljer.';

  @override
  String get deletedCompleted => 'Slettede afsluttede opgaver.';

  @override
  String get dateRange => 'Rækkevidde';

  @override
  String get next3Days => 'Næste 3 dage';

  @override
  String get dateFilters => 'Dato filtre';

  @override
  String get dateFiltersDescription => 'Tilføj muligheden for at filtrere dine opgaver efter et bestemt datointerval.';

  @override
  String get exportedFile => 'Eksporteret fil.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Aktiver venligst $extensionName-udvidelsen for at bruge denne funktion.';
  }

  @override
  String get enablePrideFlagsDescription => 'Viser Pride-flag bag titellinjen i visse måneder';

  @override
  String get enablePrideFlags => 'Aktiver Pride-flag';

  @override
  String get prideFlagRestOfYear => 'Pride-flag vises året rundt';

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
