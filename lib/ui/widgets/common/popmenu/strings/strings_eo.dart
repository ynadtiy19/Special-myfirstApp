import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class StringsEo extends Strings {
  StringsEo([String locale = 'eo']) : super(locale);

  @override
  String get about => 'Pri';

  @override
  String get aboutDescription => 'Informoj pri la aplikaĵo';

  @override
  String get aboutOSInfo =>
      'Fontkodo: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPrivateca politiko: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid deponejo: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Forĵeti ŝanĝojn?';

  @override
  String get aboutToCancelChangesDescription =>
      'Vi estas forĵeti ĉiujn ŝanĝojn faritajn al ĉi tiu penigaĵo.';

  @override
  String get aboutToCancelFeedback => 'Forĵeti prikomentojn?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Vi estas forĵeti viajn prikomentojn. Ĉi tio ne povas esti malfarita.';

  @override
  String get aboutToDeleteCompleted =>
      'Vi estas forigi ĉiujn finitajn Penigaĵojn. Ĉi tiu ago estas konstanta kaj ne povas esti malfarita.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Penigaĵoj',
      one: 'unu Penigaĵo',
    );
    return 'Vi estas forigi $_temp0. Ĉi tiu ago estas konstanta kaj ne povas esti malfarita.';
  }

  @override
  String get additionalFeatures => 'Kromprogramoj';

  @override
  String get additionalFeaturesDescription =>
      'Funkcioj kiuj igas la Doable pli potenca';

  @override
  String get alignTodoCheck => 'Kontrolmarku la dekstran skatolon';

  @override
  String get alignTodoCheckDescription =>
      'Montri penigaĵo-kontrolmarko ĉe la dekstra flanko';

  @override
  String get appLanguage => 'Lingvo de la aplikaĵo';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Atentu';

  @override
  String get back => 'Reiri';

  @override
  String get syncAndBackup => 'Sinkronigi & Sekurkopion';

  @override
  String get syncAndBackupDescription =>
      'Rezervi kaj sinkronigi viajn Penigaĵoj';

  @override
  String get cancel => 'Nuligi';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Mi rekomendis inkluzivi ĉiujn jenajn, ĉar ĝi helpas min solvi vian problemon. Ĉi tio inkluzivas neniujn personajn informojn.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Kiun ekstran informon vi ŝatus inkluzivi?';

  @override
  String get chooseFeedbackWay => 'Kie vi volas prikomenti?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Kompletigita Penigaĵo.';

  @override
  String get copiedToClipboard => 'Kopiita teksto al tondujo.';

  @override
  String get customAccentPicker => 'Akcentkoloro';

  @override
  String get customAccentPickerDescription =>
      'Elekti propran akcentkoloron por la haŭto de la aplikaĵo';

  @override
  String get darkMode => 'Malhela reĝimo';

  @override
  String get deleteCompletedAfter => 'Aŭtomata-forigi finiĝis';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Forigi post $duration';
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
      other: '$countString Penigaĵoj',
      one: 'unu Penigaĵo',
    );
    return 'Forigita $_temp0.';
  }

  @override
  String get description => 'Priskribo';

  @override
  String get design => 'Dezajno';

  @override
  String get designDescription => 'Ŝanĝi la aspekton de Doable';

  @override
  String get disable => 'Malebligi';

  @override
  String get discard => 'Forĵeti';

  @override
  String get doContinue => 'Daŭrigi';

  @override
  String get done => 'Farita';

  @override
  String get dynamicColors => 'Dinamikaj koloroj';

  @override
  String get dynamicColorsDescription => 'Uzi sistemajn kolorojn (Android 12+)';

  @override
  String get email => 'Retpoŝto';

  @override
  String get enable => 'Ebligi';

  @override
  String get enabled => 'Ebligita';

  @override
  String get export => 'Eksporti';

  @override
  String get exportAllTodos => 'Eksporti ĉiujn Penigaĵoj';

  @override
  String exportEvery(String duration) {
    return 'Eksporti ĉiun $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Pli detala klarigo pri kio misfunkciis / kiel ĝi okazis.';

  @override
  String get feedbackHeader =>
      'Bonvolu plenigi la suban formularon por helpi min kompreni kio misfunkciis.';

  @override
  String get feedbackTitleHelp => 'Mallonga resumo de la evento.';

  @override
  String get general => 'Generalo';

  @override
  String get generalDescription => 'Ŝanĝi la ĝeneralan konduton de la aplikaĵo';

  @override
  String get giveFeedback => 'Prikomenti';

  @override
  String get highlightOverdue => 'Emfazi posttempa';

  @override
  String get highlightOverdueDescription =>
      'Emfazi Penigaĵoj kiuj estas posttempaj same kiel ĉefrolitaj Penigaĵoj';

  @override
  String get highlightToday => 'Emfazi hodiaŭ';

  @override
  String get highlightTodayDescription =>
      'Emfazi Penigaĵoj, kiuj estas pagendaj hodiaŭ same kiel ĉefrolita Penigaĵoj';

  @override
  String get importLocalBackupError =>
      'Dosiero ne povis esti importita. Ĉu vi certas, ke ĝi estis kreita far Doable?';

  @override
  String get importTodosFromFile => 'Importi dosiero';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Penigaĵoj',
      one: 'unu Penigaĵo',
      zero: 'nul Penigaĵoj',
    );
    return 'Importita $_temp0.';
  }

  @override
  String get installedFrom => 'Instalita de';

  @override
  String get introDoubleTap => 'Duobla premi';

  @override
  String get introDoubleTapDescription =>
      'Vi povas duoble premi sur Penigaĵoj, kiuj prezentas priskribon por etendi ĝin. Kiam etendita, la plena priskribo estas montrita kaj vi povas tiam interagi kun ligiloj ktp.\n\nVi povas provi ĝin kun ekzemplo ĉi tie!';

  @override
  String get introDoubleTapTodoDescription =>
      'La kuko estas mensogo!\n\nEksciu pli ĉi tie:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Aĉeti novan kukon';

  @override
  String get introLinks => 'Ligiloj, telefonnumeroj, retpoŝtoj';

  @override
  String get introLinksDescription =>
      'Kiam vi aldonas ligilojn, telefonnumerojn aŭ retadresojn al priskribo, ĝi aŭtomate estos emfazita kaj vi povas interagi kun ĝi.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Vi ankaŭ povas sinkronigi viajn Penigaĵojn kun instanco de Nextcloud. Se vi volas, vi povas ensaluti ĉi tie!';

  @override
  String get introStar => 'Steloj';

  @override
  String get introStarDescription =>
      'Aldonu stelon al Penigaĵo por fari ĝin\nelstaras inter la homamaso.\n\nDonu al la suba stelo premon por provi ĝin!';

  @override
  String get introTodos => 'Penigaĵoj';

  @override
  String get introTodosDescription =>
      'Kreante novan Penigaĵo, vi povas aldoni diversajn aferojn. Ekzemple, vi povus aldoni daton, kiam la Penigaĵo fariĝos grava, aŭ vi povas ĉefroligi la Penigaĵo por ke ĝi elstaras inter la ceteraj! Vi ankaŭ povas aldoni priskribon kun ligiloj aŭ aliaj informoj rilataj al la Penigaĵo.';

  @override
  String get introWelcome => 'Bonvenon al Doable!';

  @override
  String get introWelcomeDescription =>
      'La simpla Penigaĵo-aplikaĵo kun moderna dezajno\nkaj Nextcloud integriĝo.';

  @override
  String get keepEditing => 'Daŭre redakti';

  @override
  String get left => 'Maldekstra';

  @override
  String get licenses => 'Licencoj';

  @override
  String get licensesDescription => 'Malferma fonto kaj Flutter licencoj';

  @override
  String get localStorage => 'Loka stokado';

  @override
  String get logIn => 'Ensaluti';

  @override
  String get logOut => 'Elsaluti';

  @override
  String get logOutputs => 'Protokoloj';

  @override
  String get markCompleted => 'Marko kompletigita';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Marko nekompletigita';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown subteno';

  @override
  String get mayNotBeEmpty => 'Eble ne esti malplena';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Aldonas subtenon por baza markado sintakso ene de la priskribo kaj titolo de via Todos.\n\nPor plena listo de sintaksaj elektoj vi povas kontroli\nhttps://www.markdownguide.org/cheat-sheet-ĉu vi ne scias?\n\nTamen, ĉi tiu programo **ne** subtenas la tutajn markajn specifojn. Subtenataj elementoj estas:\n\n- Aŭdaca\n- Kursiva\n- Substreki (\\_\\_teksto\\_\\_)\n- - Blokkvoto\n- Ordigitaj / Neordigitaj listoj\n- Taskolistoj\n- Inline kodo kaj barita kodo blokoj\n- Ligiloj\n- Elstarigo\n- Striko';

  @override
  String get moveImportantToTop => 'Movi grave al la supro';

  @override
  String get moveImportantToTopDescription =>
      'Se ebligite, Penigaĵoj kiuj estis ĉefroligitaj ĉiam estos montrataj ĉe la supro de la listo';

  @override
  String get moveUpWhenUpdated => 'Speguli ŝanĝojn en la listo';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Penigaĵoj moviĝas al la supro de la listo post esti ŝanĝitaj';

  @override
  String get ncBaseUrl => 'Servilo';

  @override
  String get ncBaseUrlHint => 'Nextcloud retinterfaco url';

  @override
  String get ncDirectory => 'Dosierujo';

  @override
  String get ncFileIn => 'Dosiero konservita en';

  @override
  String get ncLogOut => 'Elsaluti el Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Kiam vi elsalutas, viaj konservitaj akreditaĵoj estos forigitaj. Tamen, la konservita dosiero sur via Nextcloud instanco daŭros.';

  @override
  String get ncLoggedInAs => 'Ensalutinta kiel';

  @override
  String get ncPassword => 'Pasvorto';

  @override
  String get ncUser => 'Uzanto';

  @override
  String get never => 'Neniam';

  @override
  String get newSubTodo => 'Sub Penigaĵo';

  @override
  String get newTodo => 'Nova Penigaĵo';

  @override
  String get next => 'Sekva';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Estas ne Penigaĵoj restante, bonega laboro!';

  @override
  String get notAValidUrl => 'Ne valida URL';

  @override
  String get off => 'Malŝaltita';

  @override
  String get ok => 'Okej';

  @override
  String get on => 'Ŝaltita';

  @override
  String get optional => 'Laŭvola';

  @override
  String get pickAColor => 'Elektu koloron';

  @override
  String get pickerPrimary => 'Defaŭlta';

  @override
  String get pickerWheel => 'Propra';

  @override
  String get popupMenuDeleteCompleted => 'Forigi finita';

  @override
  String get popupMenuHideCompleted => 'Kaŝi finita';

  @override
  String get popupMenuShowCompleted => 'Montro finita';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Pagenda dato';

  @override
  String get required => '*postulata';

  @override
  String get reset => 'Restarigi';

  @override
  String get right => 'Dekstra';

  @override
  String get save => 'Konservi';

  @override
  String get settings => 'Agordoj';

  @override
  String get showCompletedTodos => 'Montro finita';

  @override
  String get showCompletedTodosDescription =>
      'Montri finitajn Penigaĵojn en la listo';

  @override
  String get showIntroScreen => 'Montri enkondukan ekranon denove';

  @override
  String get sortNewestFirst => 'Plej nova unue';

  @override
  String get sortNewestFirstDescription =>
      'Pli novaj datoj estas montritaj supre';

  @override
  String get sortNoRelevantDate => 'Sen dato';

  @override
  String get sortOverdue => 'Posttempa';

  @override
  String get sortRelevantDate => 'Kun dato';

  @override
  String get sortStarred => 'Ĉefroligita';

  @override
  String get sortToday => 'Pagenda hodiaŭ';

  @override
  String get sorting => 'Ordo de ordigo';

  @override
  String get sortingDescription => 'Ordo en kiuj Penigaĵoj estos ordigitaj';

  @override
  String get submitFeedback => 'Sendi';

  @override
  String get syncCorruptedFile => 'La rezerva dosiero ŝajnas esti koruptita.';

  @override
  String get syncDirectoryDoesNotExist => 'La specifita dosierujo ne ekzistas.';

  @override
  String get syncNcMaintenance => 'Nextcloud estas en Prizorga Reĝimo.';

  @override
  String get syncNoInternetConnection => 'Neniu interreta konekto.';

  @override
  String get syncNotNcServer =>
      'Ne eblis trovi Nextcloud-servilon ĉe ĉi tiu adreso.';

  @override
  String get syncServiceUnavailable => 'Nextcloud nehavebla.';

  @override
  String get syncSuccessful => 'Sinkroniĝis sukcese.';

  @override
  String get syncUnknownError => 'Nekonata eraro okazis.';

  @override
  String get syncWrongUrl => 'La URL kiun vi provizis ŝajnas esti malĝusta.';

  @override
  String get syncWrongUserOrPassword =>
      'La donita uzantnomo aŭ pasvorto estas malĝusta.';

  @override
  String get system => 'Sistemo';

  @override
  String get systemInfo => 'Sistemo';

  @override
  String get thankYouForFeedback => 'Dankon pro la prikomentadoj!';

  @override
  String get title => 'Titolo';

  @override
  String get titleMayNotBeEmpty => 'Titolo eble ne estas malplena';

  @override
  String get today => 'Hodiaŭ';

  @override
  String get todoSearch => 'Penigaĵo-serĉi';

  @override
  String get todoSearchDescription =>
      'Aldoni serĉbutonon al la Penigaĵo listo ebligante vin serĉi tra viaj Penigaĵoj.';

  @override
  String get tomorrow => 'Morgaŭ';

  @override
  String get treatTodayAsIsImportant => 'Trakti hodiaŭ kiel gravan';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Se ĝi estas ebligita, Penigaĵoj kiuj estas pagendaj hodiaŭ estos traktataj kvazaŭ ĝi estus steligitaj';

  @override
  String get trimTodoTexts => 'Stuci Penigaĵo-tekstojn';

  @override
  String get trimTodoTextsDescription =>
      'Se ĝi estas ebligita, stucas ajnan ĉirkaŭan blankspacon de la Penigaĵo titolo kaj priskribo';

  @override
  String get trueBlackMode => 'Vera nigra reĝimo';

  @override
  String get trueBlackModeDescription =>
      'Nigrigas la fonon, precipe utila por oled-aparatoj';

  @override
  String get turnOff => 'Malŝalti';

  @override
  String get turnOn => 'Ŝalti';

  @override
  String get undo => 'Malfari';

  @override
  String get update => 'Ĝisdatigi';

  @override
  String get updateCredentials => 'Ĝisdatigi akreditaĵojn';

  @override
  String get useCustomTabs => 'Uzi en-aplikan TTT-legilon';

  @override
  String get useCustomTabsDescription =>
      'Uzi en-aplikan TTT-legilon por malfermi ligilojn';

  @override
  String get whatsNew => 'Kio novas?';

  @override
  String get yesterday => 'Hieraŭ';

  @override
  String get error => 'Eraro';

  @override
  String get routingError =>
      'Ups! Ŝajnas, ke io misfunkciis kaj vi alvenis en paĝo kiu, nu, ne ekzistas. Mi terure bedaŭras tion!';

  @override
  String get goToHome => 'Iri Hejmon';

  @override
  String get pageNotFound => 'Paĝo ne trovita';

  @override
  String get updateDoable => 'Ĝisdatigi Doable';

  @override
  String get download => 'Elŝuti';

  @override
  String get install => 'Instali';

  @override
  String get installed => 'Instalita';

  @override
  String get updateNotInstalled => 'La ĝisdatigo ne estis instalita.';

  @override
  String get skipVersion => 'Preterpasi ĉi tiun version';

  @override
  String get couldNotDownloadUpdate => 'Ne eblis elŝuti ĝisdatigon.';

  @override
  String versionWithNumber(String version) {
    return 'Versio $version';
  }

  @override
  String get autoUpdates => 'Aŭtomataj ĝisdatigoj';

  @override
  String get autoUpdatesDescription => 'Aŭtomate kontroli ĝisdatigojn';

  @override
  String get introExtensions => 'Etendaĵoj? Etendaĵoj!';

  @override
  String get introExtensionsDescription =>
      'Etendaĵoj permesas vin etendi kaj pligrandigi la funkciojn de Doable. Ĝi donas al vi la potencon elekti ĝuste kiel vi volas uzi Doable. Se vi volas kontroli ĉiujn haveblajn etendaĵojn, simple alklaku la suban butonon!';

  @override
  String get introExtensionsButton => 'Etendi for!';

  @override
  String get useBottomSheetMenu => 'Uzi malsupran folian menuon';

  @override
  String get useBottomSheetMenuDescription =>
      'Uzi malsupran folion anstataŭ falliston kiel la menuon';

  @override
  String get contributors => 'Kontribuantoj';

  @override
  String get contributorDescription =>
      'Homoj kiuj helpis al Doable iĝi kio ĝi estas';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'Webdav servila url';

  @override
  String get webdavLogOutMessage =>
      'Kiam vi elsalutas, viaj konservitaj akreditaĵoj estos forigitaj. Tamen, la konservita dosiero daŭros.';

  @override
  String get importExport => 'Importi ⳤ eksporti';

  @override
  String get chooseDirectory => 'Elekti dosierujon';

  @override
  String get forgetDirectory => 'Forgesi dosierujon';

  @override
  String get newStarredTodo => 'Nova ĉefrolis Penigaĵoj';

  @override
  String get allTodos => 'Ĉiuj Penigaĵoj';

  @override
  String get newTodoList => 'Nova listo';

  @override
  String get deleteTodoList => 'Forigi liston';

  @override
  String get editTodoList => 'Redakti liston';

  @override
  String get lists => 'Listoj';

  @override
  String get listsDescription =>
      'Kreu listojn kaj ordigu viajn Penigaĵojn kun ĝi. Vi povas krei senliman kvanton da listoj, alireblaj per tirkesto sur la hejmekrano.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Vi estas forigonta la liston $listName kaj ĉiujn Penigaĵojn ene de ĝi. Ĉi tiu ago estas konstanta kaj ne povas esti malfarita.';
  }

  @override
  String markBeta(String element) {
    return '$element (Betao)';
  }

  @override
  String get list => 'Listo';

  @override
  String get share => 'Kunhavigi';

  @override
  String get font => 'Tiparo';

  @override
  String get fontDescription => 'Longe premu por montri nomojn de tiparoj';

  @override
  String get popUpAnimationOverSlideAnimation => 'Malnova paĝo transpasa';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Uzi la malnovan ŝprucfenestran stilan paĝan transpason';

  @override
  String get restart => 'Rekomenci';

  @override
  String get later => 'Poste';

  @override
  String get restartRequired => 'Rekomenco necesas';

  @override
  String get restartRequiredForSetting =>
      'Rekomenco de aplikaĵo estas necesa por ke ĉi tiu agordo efiku.';

  @override
  String get image => 'Bildo';

  @override
  String get expandTodos => 'Etendi Penigaĵojn';

  @override
  String get showTodoListNames => 'Montri listnomojn';

  @override
  String get includeBranding => 'Inkluzivi markadon';

  @override
  String get doableBrandingText =>
      'Kunhavita de Doable, la simpla, moderna kaj facile uzebla Penigaĵo-aplikaĵo.\nVi povas akiri Doable ĉi tie: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'Elekti kiel vi volas kunhavigi viajn Penigaĵojn';

  @override
  String get options => 'Opcioj';

  @override
  String get reduceMotion => 'Redukti moviĝon';

  @override
  String get reduceMotionDescription => 'Redukti moviĝon de animacioj';

  @override
  String get contribute => 'Kontribui';

  @override
  String get contributeWantYourNameHere => 'Ĉu vi volas vian nomon ĉi tie?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Kontribuu al Doable rekte aŭ helpu traduki ĝin!';

  @override
  String get onlySymbolInDetailViewFab => 'Ikono anstataŭ teksto';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Uzi ikonon anstataŭ tekston en la detala vido de Penigaĵo';

  @override
  String get allSelected => 'Ĉiuj';

  @override
  String get sharedTextAsTitle => 'Kunhavita teksto kiel titolo';

  @override
  String get sharedTextAsTitleDescription =>
      'Uzi tekston kunhavitan al Doable kiel la titolon de la nova Penigaĵo anstataŭ ĝia priskribo';

  @override
  String get noTodoLists =>
      'Vi nuntempe ne havas listojn.\nKreu novan por komenci!';

  @override
  String forExample(String example) {
    return 'ekz. $example';
  }

  @override
  String get clearSelection => 'Forigi elekton';

  @override
  String get syncConnectionTimedOut => 'Konekto eksvalidiĝis.';

  @override
  String get syncTooManyTimeOuts =>
      'La servilo eksvalidiĝis tro multajn fojojn. Sinkronigo estas malebligita ĝis la rekomenco de la aplikaĵo.';

  @override
  String get todoToCalendar => 'Aldoni Penigaĵon al kalendaro';

  @override
  String get logs => 'Protokoloj';

  @override
  String get logsDescription => 'Montri ĉiujn protokolojn Doable printas';

  @override
  String get aboutToClearAllLogs =>
      'Vi estas forigi ĉiujn protokolojn igante ĝin nealireblaj por prikomenti kaj problemsolvi. Ĉi tiu ago estas konstanta kaj ne povas esti malfarita.';

  @override
  String get clearAllLogs => 'Forigi ĉiujn protokolojn';

  @override
  String get noLogsYet =>
      'Nuntempe ne ekzistas protokoloj, kiujn vi povus rigardi.';

  @override
  String get dateFormat => 'Datformato';

  @override
  String get timeFormat => 'Tempoformato';

  @override
  String get shareAllLogs => 'Kunhavigi ĉiujn protokolojn';

  @override
  String get copyAllLogs => 'Kopii ĉiujn protokolojn';

  @override
  String get whatWentWrong => 'Kio misfunkciis?';

  @override
  String get fixCorruptBackupFile =>
      'La rezerva dosiero De Doable ne povis esti legita kaj ŝajnas esti korupta. Doable povas provi ripari ĉi tion forigante la nunan rezervan dosieron kaj kreante novan. Ĉi tio forigos ĉiujn ŝanĝojn faritajn en aliaj Fareblaj kazoj uzante la saman rezervan dosieron.';

  @override
  String get initializingNextcloud => 'Komencanta Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Ŝanĝi dosierujon';

  @override
  String get dueDate => 'Limdato';

  @override
  String get dragToReorder => 'Trenu por reordigi';

  @override
  String get copySettings => 'Kopii agordojn';

  @override
  String get copySystemInfo => 'Kopii sisteman informon';

  @override
  String get languageNameInEnglish => 'Esperanto';

  @override
  String get languageNameInNativeLanguage => 'Esperanto';

  @override
  String get createSummaryForBugReport => 'Krei resumon';

  @override
  String get createSummaryForBugReportDetails =>
      'Kreas raporton enhavantan sistemajn informojn, la agordojn de Doable kaj ĉiujn protokolojn. Ĉi tio povas esti utila por cimraportoj kaj helpas solvi problemon.';

  @override
  String get bugReport => 'Cimraporto';

  @override
  String get bugReportSupportingText =>
      'Bonvolu elekti kion vi ŝatus inkluzivi en la cimraporto. Ju pli da informoj vi provizas, des pli facile estas ekscii, kio fuŝiĝis. **Neniu persona informo estos kunhavita.**';

  @override
  String get shareBugReport => 'Kunhavigi cimraporton';

  @override
  String get fontSize => 'Grandeco de tiparo';

  @override
  String get fontSizeDescription => 'Anstataŭigi sisteman tiparograndecon';

  @override
  String get decrease => 'Malpliigi';

  @override
  String get increase => 'Pliigi';

  @override
  String get customSecondaryAccentPicker => 'Sekundara koloro';

  @override
  String get customTertiaryAccentPicker => 'Terciara koloro';

  @override
  String get advancedColorOptions => 'Altnivelaj koloraj opcioj';

  @override
  String get uploadCustomColorScheme => 'Alŝuti propran kolorskemon';

  @override
  String get downloadCurrentColorScheme => 'Elŝuti nunan kolorskemon';

  @override
  String get markAsStarred => 'Marki Penigaĵon kiel ĉefrolita';

  @override
  String get setTime => 'Agordi tempon';

  @override
  String get thereAreNoLists => 'Ankoraŭ ne ekzistas listoj';

  @override
  String get closeDetailsOnCompelte => 'Fermi detalojn sur kompleta';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Konservas la Penigaĵon kaj fermas ĝian detalan vidon premante la kompletan butonon.';

  @override
  String get customColorTheme => 'Propra kolora haŭto';

  @override
  String get discardCustomColorTheme =>
      'Vi estas forĵeti ĉiujn ŝanĝojn faritajn al la kolora haŭto.';

  @override
  String get lightMode => 'Hela reĝimo';

  @override
  String get deletedCustomColorTheme => 'Forigita propra kolora haŭto.';

  @override
  String get customThemeInfo =>
      'Ĉi tie vi povas ŝanĝi ĉiun koloran signon laŭ via koro. Vi ankaŭ povas importi / eksporti la kolorojn en `json`-dosieron kaj redakti ĝin tie!\n\nSe vi volas kompreni, kion faras ĉiu ĵetono, bonvolu viziti la sekvan retejon: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importi';

  @override
  String get customThemeFuckedFile =>
      'Ĉi tiu dosiero ne enhavas validan kolorhaŭton. Bonvolu certigi, ke via dosiero sekvas la saman stilon kaj strukturon kiel la dosiero, kiun vi eksportis.';

  @override
  String get markdownBold => 'Grasa';

  @override
  String get markdownItalic => 'Kursiva';

  @override
  String get markdownMonospace => 'Unuspaco';

  @override
  String get markdownHighlight => 'Emfazi';

  @override
  String get fediChooseInstance => 'Elekti vian instancon';

  @override
  String get fediInstanceUrl => 'Instanco url';

  @override
  String get fediRememberInstance => 'Memori mian instancon';

  @override
  String get fediDoablePost =>
      'Ĵuse sukcesis fini ĉiujn miajn Penigaĵojn dankon al @Doable@floss.social!\n\nSonas interese? Vi povas ekscii pli pri #Doable vizitante https://repo.doable.at!';

  @override
  String get doable => 'Doable - La moderna kaj simpla Penigaĵo-aplikaĵo';

  @override
  String get rrRepeatsEvery => 'Ripetas ĉiun';

  @override
  String get rrRepeatsOn => 'Ripetas plu';

  @override
  String get rrEnds => 'Finiĝas';

  @override
  String get week => 'Semajno';

  @override
  String get weeks => 'Semajnoj';

  @override
  String get day => 'Tago';

  @override
  String get days => 'Tagoj';

  @override
  String get month => 'Monato';

  @override
  String get months => 'Monatoj';

  @override
  String get year => 'Jaro';

  @override
  String get years => 'Jaroj';

  @override
  String get onFollowedByDate => 'La';

  @override
  String get rrAfterOccurrences => 'Post';

  @override
  String get occurrence => 'Okazo';

  @override
  String get occurrences => 'Okazoj';

  @override
  String get rrCustomRecurrence => 'Propra reokazo';

  @override
  String get daily => 'Ĉiutaga';

  @override
  String get weekly => 'Ĉiusemajna';

  @override
  String get monthly => 'Ĉiumonata';

  @override
  String get yearly => 'Ĉiujara';

  @override
  String get doesNotRepeat => 'Ne ripetas';

  @override
  String get rrRecurrence => 'Reokazo';

  @override
  String get recurringTodos => 'Ripetiĝanta Penigaĵoj';

  @override
  String get recurringTodosDescription =>
      'Aldonu ripetiĝon al viaj Penigaĵoj kaj lasu Doable aŭtomate replani ĝin por vi post kiam vi kompletigas ĝin. La Penigaĵoj replanos laŭ la laŭtema dato kaj la horaro, kiun vi agordis. Se vi ne aldonis limdaton al via Penigaĵo, ĝia kredato estos uzata anstataŭe.\n\n**Unu afero por memori: Dum vi nun povas agordi taskojn por ripeti en Doable, bonvolu noti, ke nuntempe ĉi tiu funkcio estas limigita al la angla.**';

  @override
  String get post => 'Afiŝi';

  @override
  String get rrRepeats => 'Ripetas';

  @override
  String get beta => 'Betao';

  @override
  String get extensionBetaWarningDescription =>
      'Ĉi tiu etendaĵo ankoraŭ estas en beta kaj vi eble trovos kelkajn singultojn dum vi uzas ĝin. Bonvolu konscii pri la riskoj kaj sciigi min se vi renkontas problemojn!';

  @override
  String get extensionBetaWarning => 'Ĉu ebligi beta-etendaĵon?';

  @override
  String get showFediButton => 'Montri afiŝon butonon';

  @override
  String get showFediButtonDescription =>
      'Montri butonon, kiu ebligas vin afiŝi pri via malplena listo al la Fediverse';

  @override
  String get notifications => 'Sciigoj';

  @override
  String get enableNotifications => 'Ebligi sciigojn';

  @override
  String get notifyAll => 'Ĉiuj Penigaĵoj';

  @override
  String get notifyAllDescription =>
      'Ricevi sciigon pri ĉiu Penigaĵo, kiu havas limdaton';

  @override
  String get notifyTimeOnly => 'Nur Penigaĵoj kun tempo';

  @override
  String get notifyTimeOnlyDescription =>
      'Ricevi sciigon nur por Penigaĵoj, kiuj havas ambaŭ limdaton kaj limtempo';

  @override
  String get notifyTodosChannelName => 'Penigaĵoj';

  @override
  String get notificationsDescription =>
      'Lasu Doable sciigi vin kiam viaj Penigaĵoj pagendas. Vi ankaŭ povas ŝanĝi pri kiuj Penigaĵoj vi ricevos sciigojn.';

  @override
  String get notificationsDescriptionShort =>
      'Ŝanĝo pri kiuj Penigaĵoj vi estas sciigitaj';

  @override
  String get notifyNeverDescription => 'Ne ricevi sciigon pri iuj Penigaĵoj';

  @override
  String get defaultNotificationTime => 'Defaŭlta sciiga tempo';

  @override
  String get defaultNotificationTimeDescription =>
      'La tempo, kiam vi estos sciigita por Penigaĵoj, kiuj ne havas koncernan tempon';

  @override
  String get addImage => 'Aldoni bildon';

  @override
  String get todoImages => 'Bildoj';

  @override
  String get todoImagesDescription =>
      'Aldonu bildojn al viaj Todoj por ke vi povu aldoni pli da kunteksto al tio, kion vi skribas.\n\n** Bedaŭrinde bildoj ankoraŭ ne estos sinkronigitaj.**';

  @override
  String get clearInputField => 'Klarigi enigkampon';

  @override
  String get removeImage => 'Forigi bildon';

  @override
  String get apkSignatureInvalid => 'Nevalida subskribo';

  @override
  String get apkSignatureInvalidDescription =>
      'La subskribo de la elŝutita apk-dosiero ne povis esti konfirmita. Bonvolu sciigi la programiston pri ĉi tiu afero. Dum vi povas instali la apk je via propra risko, ni rekomendas singardemon pro eblaj sekurecaj zorgoj.';

  @override
  String get searchTodos => 'Serĉi Penigaĵojn';

  @override
  String get editTodo => 'Redakti Penigaĵon';

  @override
  String get previewTodo => 'Antaŭrigardi Penigaĵon';

  @override
  String get readerMode => 'Legila Reĝimo';

  @override
  String get readerModeDescription =>
      'Permesas al vi antaŭrigardi viajn Penigaĵojn ene de la redakta ekrano.';

  @override
  String get noList => 'Neniu listo';

  @override
  String get chooseAList => 'Elektu liston';

  @override
  String get readerModeDescriptionShort =>
      'Ŝanĝi la komencan reĝimon dum malfermado de Penigaĵo';

  @override
  String get lastUsed => 'Laste uzata';

  @override
  String get syncFileLocked =>
      'La servilo ŝlosis rezervan dosieron, bonvolu provi denove post almenaŭ 15 minutoj.';

  @override
  String get syncInternalError =>
      'Okazis interna eraro, pardonpetas pro la ĝeno.';

  @override
  String get syncConnectionError => 'Okazis eraro dum konektado al la servilo.';

  @override
  String get restore => 'Restarigi';

  @override
  String get loggingNextcloudIn => 'Ensalutante al Nextcloud…';

  @override
  String get initializingWebdav => 'Komencante Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Migrante Nextcloud al nova sinkroniga efektivigo…';

  @override
  String get migratingWebdavToRemote =>
      'Migrante Webdav al nova sinkroniga efektivigo…';

  @override
  String get migrateToRemotes => 'Migrado';

  @override
  String get migrateToRemotesDescription =>
      'Doable lastatempe ŝanĝis kiel ĝi sinkronigas kun foroj kiel Nextcloud aŭ Webdav. Bedaŭrinde la nova efektivigo ne estas retrokongrua kaj tial migrado devas okazi. Doable devus bezoni minuton por migri ĉion, kion ĝi bezonas.\n\nSe vi elektas fari ĝin poste, vi eble renkontos kelkajn erarmesaĝojn ĉar la nova efektivigo ankoraŭ ne estas agordita.';

  @override
  String get fixBrokenRemoteFile =>
      'Rezerva dosiero de Doable ŝajnas esti korupta. Doable povas ripari ĝin anstataŭigante ĝin per la nuna, loka valoro. Ĉi tio anstataŭigos ajnajn ŝanĝojn faritajn far aliaj aparatoj post kiam tiu eraro okazis.';

  @override
  String get fixedBrokenRemoteFile => 'Sukcese restarigita rompita dosiero.';

  @override
  String get unfixableRemoteFile => 'La dosiero ne povis esti restarigita.';

  @override
  String get syncFileDoesNotExist => 'Rezerva dosiero de Doable ne ekzistas.';

  @override
  String get todos => 'Penigaĵoj';

  @override
  String get selectWhatToExport => 'Bonvolu elekti kion vi ŝatus eksporti.';

  @override
  String get exportFile => 'Eksporti dosieron';

  @override
  String get listColor => 'Lista koloro';

  @override
  String get listColorAsAccent => 'Lista koloro kiel akcento';

  @override
  String get listColorAsAccentDescription =>
      'Uzi la koloron de la nuna listo kiel la akcentkoloron por Doable';

  @override
  String get privacy => 'Privateco';

  @override
  String get privacyPolicy => 'Privateco Politiko';

  @override
  String get openSource => 'Malfermitkoda';

  @override
  String get sourceCode => 'Fontkodo';

  @override
  String get contact => 'Kontakto';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'La tuta fontkodo de Doable estas alirebla sur Codeberg sub FOSS-licenco. Vi ankaŭ povas sendi problemojn kaj tirpetojn tie. Vi ankaŭ povas trovi la deponejon F-Droid de Doable ĉe Codeberg!';

  @override
  String get aboutPrivacy =>
      'Doable ne kolektas ajnajn personajn informojn pri vi. La nuran aferon ke Doable konservas pri via uzado estas protokoloj. Tamen tiuj protokoloj **ne estas alŝutitaj aŭtomate.** La nura maniero kiel tiuj protokoloj forlasas vian aparaton estas se vi elektas kunhavigi ilin ekzemple por helpi min ripari cimon.';

  @override
  String get httpWarning => 'Neĉifrita konekto';

  @override
  String get cancelling => 'Nuligante…';

  @override
  String get httpWarningDescription =>
      'Vi provas konektiĝi al HTTP-servilo anstataŭ pli sekura HTTPS-servilo. HTTP sendas la datumojn neĉifritajn al la servilo, prezentante eblajn sekurecajn riskojn, do ĉi tio ne estas rekomendita. Estas tamen certaj uzkazoj kiel loke gastigita servilo. Ĉu vi certas, ke vi volas daŭrigi kun HTTP?';

  @override
  String get enableNotificationReminder => 'Rememoriga sciigo';

  @override
  String get pickNotificationReminderDuration => 'Rememorigi min poste';

  @override
  String get hours => 'Horoj';

  @override
  String get minutes => 'Minutoj';

  @override
  String get enableNotificationSound => 'Ludi sonon';

  @override
  String get enableNotificationSoundDescription =>
      'Ludi propran sonon kiam sciigo estas montrata';

  @override
  String get interval => 'Intervalo';

  @override
  String get secondly => 'Sekunde';

  @override
  String get minutely => 'Minute';

  @override
  String get hourly => 'Hore';

  @override
  String get second => 'Sekundo';

  @override
  String get startOfTheWeek => 'Komenco de la semajno';

  @override
  String get hideList => 'Kaŝi liston';

  @override
  String get showList => 'Montri liston';

  @override
  String get showListDescription =>
      'Montru Todos de ĉi tiu listo en la superrigardo.';

  @override
  String get hideListDescription =>
      'Ne montru Todos de ĉi tiu listo en la superrigardo.';

  @override
  String get gotIt => 'Akiris ĝin';

  @override
  String get updateRelease =>
      'Malfermu la liberigan paĝon De Doable kaj elŝutu la plej novan version';

  @override
  String get updateDownload =>
      'Lasu Doable elŝuti la lastan version por vi; vi trovos la dosieron en la sciiga areo kaj povas instali ĝin alklakante ĝin';

  @override
  String get updateFdroid =>
      'Se vi instalis Doable De F-Droid vi devus akiri la ĝisdatigon en la sekvanta paro horoj aŭ De Izzjondroid deponejo aŭ Doable propra deponejo';

  @override
  String get updateDisable =>
      'Vi ankaŭ povas malŝalti aŭtomatajn ĝisdatigajn kontrolojn kune en la agordoj';

  @override
  String get updateChecker => 'Ĝisdatiga kontrolilo';

  @override
  String get whatCanYouDo => 'Kion vi povas fari?';

  @override
  String get synchronization => 'Sinkronigo';

  @override
  String get backup => 'Sekurkopio';

  @override
  String get autoExport => 'Aŭtomata eksportado';

  @override
  String get changeDuration => 'Ŝanĝi daŭron';

  @override
  String get autoExportDescription =>
      'Vi povas lasi Doable aŭtomate fari eksportoj de via Todo, Listoj, Kaj Agordoj. Bonvolu scii, Ke Doable kreos novan dosieron por ĉiu eksportado! Elektu la daŭron inter eksportoj laŭe.';

  @override
  String get seconds => 'Sekundoj';

  @override
  String get apkVerifyingSignature => 'Konfirmanta apk subskribo…';

  @override
  String get swipeActions => 'Svingi agojn';

  @override
  String get swipeActionsDescription =>
      'Aldonas la kapablon gliti maldekstren sur Todos por aŭ komenci ilin aŭ kompletigi ilin.\n\n** Notu, ke tio foje povas konflikti kun la tirkesto de La listo-etendaĵo.**';

  @override
  String get selectedSwipeActions => 'Elektitaj agoj';

  @override
  String get unselectedSwipeActions => 'Neelektitaj agoj';

  @override
  String get swipeActionComplete => 'Kompleta / nekompleta Todo';

  @override
  String get swipeActionExpand => 'Ekspandi Todo';

  @override
  String get swipeActionStar => 'Stelo / unstar Todo';

  @override
  String get swipeActionDelete => 'Forigi Todon';

  @override
  String get swipeActionsHideCheck => 'Kaŝi markon';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Kaŝi markon kiam $action estas elektita';
  }

  @override
  String get forceHighestRefreshRate => 'Forto plej alta refreŝiga indico';

  @override
  String get forceHighestRefreshRateDescription =>
      '(Provu) devigi la sistemon uzi la plej altan eblan refreŝigan indicon ene de la programo';

  @override
  String get overview => 'Superrigardo';

  @override
  String whatsNewIn(String version) {
    return 'Kio estas nova en $version?';
  }

  @override
  String get expandTodosByDefault => 'Pligrandigi Todos defaŭlte';

  @override
  String get expandTodosByDefaultDescription =>
      'Montri Todos kiel vastigita defaŭlte';

  @override
  String get progress => 'Progreso';

  @override
  String get progressBar => 'Progreso trinkejo';

  @override
  String get progressBarDescription =>
      'Aldonas progresan stangon al viaj Todoj donante al vi pli bonan kontrolon pri ĝia kompleta stato.';

  @override
  String get syncMultipleErrors =>
      'La teleregilo renkontis plurajn erarojn. Por detaloj vidu la protokolojn.';

  @override
  String get deletedCompleted => 'Forigita kompletigita todos.';

  @override
  String get dateRange => 'Gamo';

  @override
  String get next3Days => 'Venontaj 3 tagoj';

  @override
  String get dateFilters => 'Datfiltriloj';

  @override
  String get dateFiltersDescription =>
      'Aldoni la eblon filtri vian todos de specifa dato gamo.';

  @override
  String get exportedFile => 'Eksportita dosiero.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Bonvolu ebligi la etendon $extensionName por uzi ĉi tiun funkcion.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Montras Fierajn flagojn malantaŭ la titolbreto en certaj monatoj';

  @override
  String get enablePrideFlags => 'Ebligu Fierajn flagojn';

  @override
  String get prideFlagRestOfYear => 'Fiera flago montrita tutjare';

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
