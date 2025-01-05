import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class StringsTl extends Strings {
  StringsTl([String locale = 'tl']) : super(locale);

  @override
  String get about => 'Tungkol sa';

  @override
  String get aboutDescription => 'Infos tungkol sa app';

  @override
  String get aboutOSInfo => 'Source code: [codeberg/flutter-maaaring gawin](https://www.codeberg.org/florian-obernberger/flutter-double)\nF-Droid repository: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.sosyal](https://floss.sosyal/@magagawa)';

  @override
  String get aboutToCancelChanges => 'Itapon ang mga pagbabago?';

  @override
  String get aboutToCancelChangesDescription => 'Ikaw ay tungkol sa upang itapon ang lahat ng mga pagbabago na ginawa sa ito upang gawin.';

  @override
  String get aboutToCancelFeedback => 'Itapon ang feedback?';

  @override
  String get aboutToCancelFeedbackDescription => 'Malapit mo nang itapon ang iyong puna. Hindi ito maaaring bawiin.';

  @override
  String get aboutToDeleteCompleted => 'Ikaw ay tungkol sa upang tanggalin ang lahat ng nakumpleto Todos. Ang pagkilos na ito ay permanente at hindi maaaring bawiin.';

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
    return 'Malapit mo nang tanggalin $_temp0. Ang pagkilos na ito ay permanente at hindi maaaring bawiin.';
  }

  @override
  String get additionalFeatures => 'Mga extension';

  @override
  String get additionalFeaturesDescription => 'Mga tampok na ginagawang mas malakas ang magagawa';

  @override
  String get alignTodoCheck => 'Suriin ang marka ng tama';

  @override
  String get alignTodoCheckDescription => 'Ipakita ang Todo check mark sa kanang bahagi';

  @override
  String get appLanguage => 'Wika ng App';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Pansin';

  @override
  String get back => 'Bumalik';

  @override
  String get syncAndBackup => 'Backup & I-Sync ang';

  @override
  String get syncAndBackupDescription => 'I-Backup at i-synchronize ang iyong Todos';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get chooseFeedbackExtrasDescription => 'Inirerekumenda kong isama ang lahat ng mga sumusunod dahil makakatulong ito sa akin sa pag-troubleshoot ng iyong problema. Kabilang dito ang walang personal na impormasyon.';

  @override
  String get chooseFeedbackExtrasTitle => 'Aling dagdag na impormasyon ang nais mong isama?';

  @override
  String get chooseFeedbackWay => 'Saan mo gustong magbigay ng feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Nakumpleto Ng Todo.';

  @override
  String get copiedToClipboard => 'Kinopyang teksto sa clipboard.';

  @override
  String get customAccentPicker => 'Kulay ng Accent';

  @override
  String get customAccentPickerDescription => 'Pumili ng isang pasadyang kulay ng accent para sa tema ng app';

  @override
  String get darkMode => 'Madilim na mode';

  @override
  String get deleteCompletedAfter => 'Nakumpleto ang Auto delete';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Tanggalin pagkatapos ng $duration';
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
    return 'Tinanggal$_temp0.';
  }

  @override
  String get description => 'Paglalarawan';

  @override
  String get design => 'Disenyo';

  @override
  String get designDescription => 'Baguhin ang madilim na mode at mga kulay';

  @override
  String get disable => 'Huwag paganahin';

  @override
  String get discard => 'Itapon';

  @override
  String get doContinue => 'Magpatuloy';

  @override
  String get done => 'Tapos na';

  @override
  String get dynamicColors => 'Mga Dynamic na kulay';

  @override
  String get dynamicColorsDescription => 'Gumamit ng mga kulay ng system (Android 12+)';

  @override
  String get email => 'Email';

  @override
  String get enable => 'Paganahin ang';

  @override
  String get enabled => 'Pinagana ang';

  @override
  String get export => 'I-Export';

  @override
  String get exportAllTodos => 'I-Export ang lahat ng Todos';

  @override
  String exportEvery(String duration) {
    return 'Export every $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Isang mas detalyadong paliwanag sa kung ano ang nagkamali / kung paano ito nangyari.';

  @override
  String get feedbackHeader => 'Mangyaring punan ang form sa ibaba upang matulungan akong maunawaan kung ano ang mali.';

  @override
  String get feedbackTitleHelp => 'Isang maikling buod ng kaganapan.';

  @override
  String get general => 'Pangkalahatan';

  @override
  String get generalDescription => 'Baguhin ang pangkalahatang pag-uugali ng app';

  @override
  String get giveFeedback => 'Puna';

  @override
  String get highlightOverdue => 'I-Highlight ang overdue';

  @override
  String get highlightOverdueDescription => 'I-Highlight ang mga Todos na overdue sa parehong paraan tulad ng naka-star na Todos';

  @override
  String get highlightToday => 'I-Highlight ngayon';

  @override
  String get highlightTodayDescription => 'I-Highlight ang mga Todos na nararapat ngayon sa parehong paraan tulad ng mga naka-star na Todos';

  @override
  String get importLocalBackupError => 'Ang file na ito ay hindi naglalaman ng Todos.';

  @override
  String get importTodosFromFile => 'Mag-Import ng file';

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
    return 'Na-import$_temp0.';
  }

  @override
  String get installedFrom => 'Naka-install mula sa';

  @override
  String get introDoubleTap => 'Dobleng tapikin';

  @override
  String get introDoubleTapDescription => 'Maaari mong i-double tap sa Todos na nagtatampok ng isang paglalarawan upang mapalawak ang mga ito. Kapag pinalawak, ang buong paglalarawan ay ipinapakita at maaari kang makipag-ugnay sa mga link, atbp.\n\nMaaari mong subukan ito sa isang halimbawa dito mismo!';

  @override
  String get introDoubleTapTodoDescription => 'Ang cake ay isang kasinungalingan!\n\nAlamin ang higit pa dito:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Bumili ng bagong cake';

  @override
  String get introLinks => 'Mga link, numero ng telepono, email';

  @override
  String get introLinksDescription => 'Kapag nagdagdag ka ng mga link, numero ng telepono, o email address sa isang paglalarawan, awtomatiko silang mai-highlight at maaari kang makipag-ugnay sa kanila.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Maaari mo ring i-synchronize ang iyong mga Todos sa isang halimbawa ng Nextcloud. Kung nais mong maaari kang mag-log in dito mismo!';

  @override
  String get introStar => 'Mga bituin';

  @override
  String get introStarDescription => 'Magdagdag ng isang bituin sa isang gagawin upang gawin ito\ntumayo sa gitna ng karamihan.\n\nBigyan ang bituin sa ibaba ng isang tap upang subukan ito!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription => 'Kapag lumilikha ng isang bagong Todo maaari kang magdagdag ng iba \' t ibang mga bagay. Halimbawa maaari kang magdagdag ng isang petsa kapag ang gagawin ay nagiging may kaugnayan, o maaari mong simulan ang gawin upang gawin itong manatili sa gitna ng iba! Maaari ka ring magdagdag ng isang paglalarawan na may mga link o iba pang impormasyon na may kaugnayan sa gagawin.';

  @override
  String get introWelcome => 'Maligayang pagdating sa Doable!';

  @override
  String get introWelcomeDescription => 'Ang simpleng Todo app na may modernong disenyo\nat pagsasama ng Nextcloud.';

  @override
  String get keepEditing => 'Panatilihin ang pag-edit';

  @override
  String get left => 'Kaliwa';

  @override
  String get licenses => 'Mga lisensya';

  @override
  String get licensesDescription => 'Buksan ang mga lisensya ng mapagkukunan at Flutter';

  @override
  String get localStorage => 'Lokal na imbakan';

  @override
  String get logIn => 'Mag-Log in';

  @override
  String get logOut => 'Mag-Log out';

  @override
  String get logOutputs => 'Mga log';

  @override
  String get markCompleted => 'Nakumpleto si Mark';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Mark hindi kumpleto';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Suporta sa Markdown';

  @override
  String get mayNotBeEmpty => 'Maaaring hindi walang laman';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Nagdadagdag ng suporta para sa mga pangunahing markdown syntax sa loob ng paglalarawan at pamagat ng iyong Todos.\n\nPara sa isang buong listahan ng mga pagpipilian sa syntax maaari mong suriin\nhttps://www.markdownguide.org/cheat-sheet/.\n\nGayunpaman, ang app na ito **ay hindi** sumusuporta sa buong markdown pagtutukoy. Ang mga sinusuportahang elemento ay:\n\n- Matapang\n- Italic\n- - Blockquote\n- Iniutos / Unordered listahan\n- Mga listahan ng gawain\n- Inline code at nabakuran bloke code\n- Mga link\n- Pag-highlight\n- Strikethrough\n\n\nKapansin-pansin din ay, na ang pag-format **ay hindi inilapat recursively**.';

  @override
  String get moveImportantToTop => 'Ilipat ang mahalaga sa tuktok';

  @override
  String get moveImportantToTopDescription => 'Kung pinagana, ang mga Todos na na-star ay palaging ipapakita sa tuktok ng listahan';

  @override
  String get moveUpWhenUpdated => 'Sumasalamin sa mga pagbabago sa listahan';

  @override
  String get moveUpWhenUpdatedDescription => 'Ang mga Todos ay lumipat sa tuktok ng listahan pagkatapos mabago';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'Nextcloud web interface URL';

  @override
  String get ncDirectory => 'Direktoryo';

  @override
  String get ncFileIn => 'File na nakaimbak sa';

  @override
  String get ncLogOut => 'Pag-log out sa Nextcloud';

  @override
  String get ncLogOutMessage => 'Kapag nag-log out ang iyong mga naka-imbak na mga kredensyal ay mabubura. Gayunpaman, ang naka-save na file sa Iyong Halimbawa ng Nextcloud ay magpapatuloy.';

  @override
  String get ncLoggedInAs => 'Naka-log in bilang';

  @override
  String get ncPassword => 'Password';

  @override
  String get ncUser => 'Gumagamit';

  @override
  String get never => 'Huwag kailanman';

  @override
  String get newSubTodo => 'Sub Todo';

  @override
  String get newTodo => 'Bagong Todo';

  @override
  String get next => 'Susunod';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Walang natitirang Todos, mahusay na trabaho!';

  @override
  String get notAValidUrl => 'Hindi isang wastong url';

  @override
  String get off => 'Off ang';

  @override
  String get ok => 'Ok lang';

  @override
  String get on => 'Sa';

  @override
  String get optional => 'Opsyonal';

  @override
  String get pickAColor => 'Pumili ng isang kulay';

  @override
  String get pickerPrimary => 'Pamantayan';

  @override
  String get pickerWheel => 'Pasadyang';

  @override
  String get popupMenuDeleteCompleted => 'Tanggalin ang nakumpleto';

  @override
  String get popupMenuHideCompleted => 'Itago ang nakumpleto';

  @override
  String get popupMenuShowCompleted => 'Nakumpleto ang palabas';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'May-katuturang Petsa';

  @override
  String get required => '* kinakailangan';

  @override
  String get reset => 'I-Reset ang';

  @override
  String get right => 'Tama';

  @override
  String get save => 'I-Save ang';

  @override
  String get settings => 'Mga setting';

  @override
  String get showCompletedTodos => 'Nakumpleto ang palabas';

  @override
  String get showCompletedTodosDescription => 'Ipakita ang nakumpletong Todos sa listahan';

  @override
  String get showIntroScreen => 'Ipakita muli ang screen ng pagpapakilala';

  @override
  String get sortNewestFirst => 'Pinakabago muna';

  @override
  String get sortNewestFirstDescription => 'Ang mga mas bagong petsa ay ipinapakita sa tuktok';

  @override
  String get sortNoRelevantDate => 'Walang petsa';

  @override
  String get sortOverdue => 'Overdue na';

  @override
  String get sortRelevantDate => 'Sa petsa';

  @override
  String get sortStarred => 'Naka-star';

  @override
  String get sortToday => 'Dahil ngayon';

  @override
  String get sorting => 'Pagsunud-sunurin ayon order';

  @override
  String get sortingDescription => 'Order kung saan ang mga Todos ay pinagsunod-sunod';

  @override
  String get submitFeedback => 'Isumite';

  @override
  String get syncCorruptedFile => 'Ang backup file ay tila nasira.';

  @override
  String get syncDirectoryDoesNotExist => 'Ang tinukoy na direktoryo ay hindi umiiral.';

  @override
  String get syncNcMaintenance => 'Ang Nextcloud ay nasa mode ng pagpapanatili.';

  @override
  String get syncNoInternetConnection => 'Walang koneksyon sa internet.';

  @override
  String get syncNotNcServer => 'Hindi makahanap ng isang Nextcloud server sa address na ito.';

  @override
  String get syncServiceUnavailable => 'Hindi magagamit ang Nextcloud.';

  @override
  String get syncSuccessful => 'Matagumpay na naka-synchronize.';

  @override
  String get syncUnknownError => 'Isang hindi kilalang error ang naganap.';

  @override
  String get syncWrongUrl => 'Ang url na iyong ibinigay ay tila hindi tama.';

  @override
  String get syncWrongUserOrPassword => 'Ang ibinigay na username o password ay hindi tama.';

  @override
  String get system => 'Sistema';

  @override
  String get systemInfo => 'Sistema';

  @override
  String get thankYouForFeedback => 'Salamat sa pagpapadala ng feedback!';

  @override
  String get title => 'Pamagat';

  @override
  String get titleMayNotBeEmpty => 'Ang pamagat ay maaaring hindi walang laman';

  @override
  String get today => 'Ngayon';

  @override
  String get todoSearch => 'Todo paghahanap';

  @override
  String get todoSearchDescription => 'Magdagdag ng isang pindutan ng paghahanap sa listahan ng Todo na nagbibigay-daan sa iyo upang maghanap sa pamamagitan ng iyong mga Todos.';

  @override
  String get tomorrow => 'Bukas';

  @override
  String get treatTodayAsIsImportant => 'Tratuhin ngayon bilang mahalaga';

  @override
  String get treatTodayAsIsImportantDescription => 'Kung pinagana, ang mga Todos na nararapat ngayon ay ituturing na parang sila ay naka-star';

  @override
  String get trimTodoTexts => 'Trim Todo text';

  @override
  String get trimTodoTextsDescription => 'Kung pinagana, trims anumang nakapalibot na whitespace mula sa Todos pamagat at paglalarawan';

  @override
  String get trueBlackMode => 'Tunay na itim na mode';

  @override
  String get trueBlackModeDescription => 'Ginagawang itim ang background, lalo na kapaki-pakinabang para sa mga aparatong oled';

  @override
  String get turnOff => 'Patayin';

  @override
  String get turnOn => 'I-on ang';

  @override
  String get undo => 'I-Undo ang';

  @override
  String get update => 'I-Update ang';

  @override
  String get updateCredentials => 'I-Update ang mga kredensyal';

  @override
  String get useCustomTabs => 'Gumamit ng in-app browser';

  @override
  String get useCustomTabsDescription => 'Gumamit ng isang in-app browser para sa pagbubukas ng mga link';

  @override
  String get whatsNew => ' Ano ang bago?';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get error => 'Error';

  @override
  String get routingError => 'Oops! Lumilitaw na may isang bagay na nagkamali at napunta ka sa isang pahina na, mabuti, ay hindi umiiral. Ako ay labis na ikinalulungkot para sa na!';

  @override
  String get goToHome => 'Umuwi ka na';

  @override
  String get pageNotFound => 'Hindi natagpuan ang pahina';

  @override
  String get updateDoable => 'I-Update ang Doable';

  @override
  String get download => 'I-Download ang';

  @override
  String get install => 'I-Install ang';

  @override
  String get installed => 'Naka-install';

  @override
  String get updateNotInstalled => 'Ang pag-update ay hindi na-install.';

  @override
  String get skipVersion => 'Laktawan ang bersyon na ito';

  @override
  String get couldNotDownloadUpdate => 'Hindi ma-download ang pag-update.';

  @override
  String versionWithNumber(String version) {
    return 'Bersyon $version';
  }

  @override
  String get autoUpdates => 'Mga update sa Auto';

  @override
  String get autoUpdatesDescription => 'Awtomatikong suriin para sa mga update';

  @override
  String get introExtensions => 'Mga extension? Mga extension!';

  @override
  String get introExtensionsDescription => 'Pinapayagan ka ng mga extension na palawakin at palakihin ang tampok na hanay ng magagawa. Binibigyan ka nila ng kapangyarihang pumili nang eksakto kung paano mo nais gamitin ang magagawa. Kung nais mong suriin ang lahat ng magagamit na mga extension, i-click lamang ang pindutan sa ibaba!';

  @override
  String get introExtensionsButton => 'Palawakin ang layo!';

  @override
  String get useBottomSheetMenu => 'Gamitin ibaba sheet menu';

  @override
  String get useBottomSheetMenuDescription => 'Gumamit ng isang ilalim na sheet sa halip na isang drop down bilang menu';

  @override
  String get contributors => 'Mga nag-ambag';

  @override
  String get contributorDescription => 'Ang mga taong tumulong sa maaaring gawin ay maging kung ano ito';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV url';

  @override
  String get webdavLogOutMessage => 'Kapag nag-log out ang iyong mga naka-imbak na mga kredensyal ay mabubura. Gayunpaman, magpapatuloy ang nai-save na file.';

  @override
  String get importExport => 'Pag-Import & i-export';

  @override
  String get chooseDirectory => 'Pumili ng direktoryo';

  @override
  String get forgetDirectory => 'Kalimutan ang direktoryo';

  @override
  String get newStarredTodo => 'Bagong nagsimula Todo';

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
  String get languageNameInEnglish => 'English';

  @override
  String get languageNameInNativeLanguage => 'English';

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
