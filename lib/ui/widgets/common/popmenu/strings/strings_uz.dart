import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class StringsUz extends Strings {
  StringsUz([String locale = 'uz']) : super(locale);

  @override
  String get about => 'Haqida';

  @override
  String get aboutDescription => 'Ilova haqida ma\'lumot';

  @override
  String get aboutOSInfo =>
      'Manba kodi: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-double)\nF-Droid jihozi: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'O\'zgarishlar bekor qilinsinmi?';

  @override
  String get aboutToCancelChangesDescription =>
      'Siz bunga kiritilgan barcha o\'zgarishlarni bekor qilmoqchisiz.';

  @override
  String get aboutToCancelFeedback => 'Teskari aloqa tashlamoq?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Siz fikringizni bekor qilish haqida odamsiz. Buni bekor qilib bo\'lmaydi.';

  @override
  String get aboutToDeleteCompleted =>
      'Siz barcha tugallangan Todoslarni o\'chirmoqchisiz. Bu harakat doimiy va uni bekor qilib bo\'lmaydi.';

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
    return 'Siz yo\'q qilish haqida odamsiz $_temp0. Bu harakat doimiy va uni bekor qilib bo\'lmaydi.';
  }

  @override
  String get additionalFeatures => 'Kengaytmalar';

  @override
  String get additionalFeaturesDescription =>
      'Qilish xususiyatlari Double yanada kuchli';

  @override
  String get alignTodoCheck => 'Tekshirish belgisi o\'ng';

  @override
  String get alignTodoCheckDescription =>
      'O\'ng tomonda todo tasdiq belgisini ko\'rsatish';

  @override
  String get appLanguage => 'Ilova tili';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Diqqat';

  @override
  String get back => 'Orqaga';

  @override
  String get syncAndBackup => 'Zaxiralash Va Sinxronlash';

  @override
  String get syncAndBackupDescription =>
      'Todos-ni zaxiralang va sinxronlashtiring';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Bu sizning muammoni bartaraf qilish bilan menga yordam beradi, chunki men quyidagi barcha jumladan tavsiya. Bu hech qanday shaxsiy ma\'lumotlarni o\'z ichiga oladi.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Qaysi qo\'shimcha ma\'lumotlarni kiritmoqchisiz?';

  @override
  String get chooseFeedbackWay => 'Siz qayerda fikr bildirmoqchisiz?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Todo Yakunlandi.';

  @override
  String get copiedToClipboard => 'Nusxa olingan matn clipboardga.';

  @override
  String get customAccentPicker => 'Urg\'u rangi';

  @override
  String get customAccentPickerDescription =>
      'Ilova mavzusi uchun maxsus aksent rangini tanlang';

  @override
  String get darkMode => 'Qorong\'i rejim';

  @override
  String get deleteCompletedAfter => 'Avtomatik o\'chirish tugallandi';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Keyin o\'chirish $duration';
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
    return 'O\'chirilgan$_temp0.';
  }

  @override
  String get description => 'Ta\'rifi';

  @override
  String get design => 'Dizayn';

  @override
  String get designDescription =>
      'Doable ko\'rinishini va hissiyotini o\'zgartiring';

  @override
  String get disable => 'O\'chirish';

  @override
  String get discard => 'Bekor qilish';

  @override
  String get doContinue => 'Davom etish';

  @override
  String get done => 'Bajarildi';

  @override
  String get dynamicColors => 'Dinamik ranglar';

  @override
  String get dynamicColorsDescription =>
      'Tizim ranglaridan foydalaning (Android 12+)';

  @override
  String get email => 'Elektron pochta';

  @override
  String get enable => 'Yoqish';

  @override
  String get enabled => 'Yoqilgan';

  @override
  String get export => 'Eksport qilish';

  @override
  String get exportAllTodos => 'Barcha fayllarni eksport qilish';

  @override
  String exportEvery(String duration) {
    return 'Export every $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Nima noto\'g\'ri ketganligi / bu qanday sodir bo\'lganligi haqida batafsilroq tushuntirish.';

  @override
  String get feedbackHeader =>
      'Iltimos, nima noto\'g\'ri bo\'lganini tushunishga yordam berish uchun quyidagi shaklni to\'ldiring.';

  @override
  String get feedbackTitleHelp => 'Tadbir qisqa xulosa.';

  @override
  String get general => 'Umumiy';

  @override
  String get generalDescription =>
      'Ilovaning umumiy xatti-harakatlarini o\'zgartiring';

  @override
  String get giveFeedback => 'Aloqa';

  @override
  String get highlightOverdue => 'Muddati kechikkan';

  @override
  String get highlightOverdueDescription =>
      'Yulduzli Todos bilan bir xil tarzda kechiktirilgan Todoslarni ta\'kidlang';

  @override
  String get highlightToday => 'Bugungi kunda ta\'kidlash';

  @override
  String get highlightTodayDescription =>
      'Bugun tufayli todos filmidagi Todos bir xil yo\'l ta\'kidlash';

  @override
  String get importLocalBackupError => 'Ushbu faylda Todos mavjud emas.';

  @override
  String get importTodosFromFile => 'Faylni Import qilish';

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
    return 'Import $_temp0.';
  }

  @override
  String get installedFrom => 'O\'rnatilgan';

  @override
  String get introDoubleTap => 'Ikki marta teging';

  @override
  String get introDoubleTapDescription =>
      'Siz ularni kengaytirish uchun tavsifga ega Todos-ga ikki marta bosishingiz mumkin. Kengaytirilganda, to\'liq tavsif ko\'rsatiladi va keyin siz havolalar bilan ishlashingiz mumkin va hokazo.\n\nSiz buni bu erda misol bilan sinab ko\'rishingiz mumkin!';

  @override
  String get introDoubleTapTodoDescription =>
      'Kek yolg\'on!\n\nBu erda ko\'proq bilib oling:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Yangi tort sotib oling';

  @override
  String get introLinks => 'Havolalar, telefon raqamlari, elektron pochta';

  @override
  String get introLinksDescription =>
      'Tavsifga havolalar, telefon raqamlari yoki elektron pochta manzilini qo\'shsangiz, ular avtomatik ravishda ta\'kidlanadi va siz ular bilan o\'zaro aloqada bo\'lishingiz mumkin.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Bundan tashqari, Todos-ni keyingi bulutli misol bilan sinxronlashtirishingiz mumkin. Agar xohlasangiz, bu erda tizimga kirishingiz mumkin!';

  @override
  String get introStar => 'Yulduzlar';

  @override
  String get introStarDescription =>
      'Buni qilish uchun a ga yulduz qo\'shing\nolomon orasida ajralib turing.\n\nSinab ko\'rish uchun yulduzga teging!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription =>
      'Yangi Todo yaratishda siz turli xil narsalarni qo\'shishingiz mumkin. Misol uchun, siz do tegishli bo\'lib, bir sanani kiritish mumkin, yoki siz uni qolgan orasida tayoq qilish uchun nima boshlashingiz mumkin! Bundan tashqari, havolalar yoki ga tegishli boshqa ma\'lumotlar bilan tavsif qo\'shishingiz mumkin qilmoq.';

  @override
  String get introWelcome => 'Xush kelibsiz Doable!';

  @override
  String get introWelcomeDescription =>
      'Zamonaviy dizaynga ega oddiy Todo ilovasi\nva Nextcloud integratsiyasi.';

  @override
  String get keepEditing => 'Tahrirlashni davom eting';

  @override
  String get left => 'Chap';

  @override
  String get licenses => 'Litsenziyalar';

  @override
  String get licensesDescription => 'Ochiq manbali va Flutter litsenziyalari';

  @override
  String get localStorage => 'Mahalliy saqlash';

  @override
  String get logIn => 'Kirish';

  @override
  String get logOut => 'Chiqish';

  @override
  String get logOutputs => 'Jurnallar';

  @override
  String get markCompleted => 'Mark yakunlandi';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Tugallanmagan belgilash';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown qo\'llab-quvvatlash';

  @override
  String get mayNotBeEmpty => 'Bo\'sh bo\'lmasligi mumkin';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Todos tavsifi va sarlavhasi ichida asosiy belgilash sintaksisini qo\'llab-quvvatlaydi.\n\nSintaksis variantlarining to\'liq ro\'yxati uchun siz tekshirishingiz mumkin\nhttps://www.markdownguide.org/cheat-sheet/.\n\nBiroq, ushbu dastur butun belgilash xususiyatlarini** qo\'llab-quvvatlamaydi**. Qo\'llab-quvvatlanadigan elementlar:\n\n- Qalin\n- Kursiv\n- - Blockquote\n- Buyurtma qilingan / tartibsiz ro\'yxatlar\n- Vazifalar ro\'yxati\n- Inline kodi va o\'ralgan kod bloklari\n- Havolalar\n- Ta\'kidlash\n- Chizish\n\n\nShuni ham ta\'kidlash joizki, formatlash * * rekursiv qo\'llanilmaydi**.';

  @override
  String get moveImportantToTop => 'Yuqoriga muhim ko\'chirish';

  @override
  String get moveImportantToTopDescription =>
      'Agar yoqilgan bo\'lsa, yulduzli Todos har doim ro\'yxatning yuqori qismida ko\'rsatiladi';

  @override
  String get moveUpWhenUpdated => 'Ro\'yxatdagi o\'zgarishlarni aks ettiring';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Todos o\'zgartirilgandan keyin ro\'yxatning yuqori qismiga o\'tadi';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'Nextcloud veb interfeysi url';

  @override
  String get ncDirectory => 'Direktoriya';

  @override
  String get ncFileIn => 'Fayl saqlangan';

  @override
  String get ncLogOut => 'Chiqish Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Saqlangan hisobga olish ma\'lumotlari o\'chirilganda. Biroq, keyingi bulut nusxangizda saqlangan fayl davom etadi.';

  @override
  String get ncLoggedInAs => 'Sifatida tizimga kirgan';

  @override
  String get ncPassword => 'Maxfiy so\'z';

  @override
  String get ncUser => 'Foydalanuvchi';

  @override
  String get never => 'Hech qachon';

  @override
  String get newSubTodo => 'Pastki Todo';

  @override
  String get newTodo => 'Yangi Todo';

  @override
  String get next => 'Keyingi';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Todos qolmadi, ajoyib ish!';

  @override
  String get notAValidUrl => 'Haqiqiy url emas';

  @override
  String get off => 'Yopiq';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Haqida';

  @override
  String get optional => 'Ixtiyoriy';

  @override
  String get pickAColor => 'Rangni tanlang';

  @override
  String get pickerPrimary => 'Standart';

  @override
  String get pickerWheel => 'Boshqa';

  @override
  String get popupMenuDeleteCompleted => 'O\'chirish tugallandi';

  @override
  String get popupMenuHideCompleted => 'Bekitish tugallandi';

  @override
  String get popupMenuShowCompleted => 'Ko\'rsatish tugallandi';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Tegishli sana';

  @override
  String get required => '* talab qilinadi';

  @override
  String get reset => 'Tiklash';

  @override
  String get right => 'O\'ng';

  @override
  String get save => 'Saqlash';

  @override
  String get settings => 'Moslamalar';

  @override
  String get showCompletedTodos => 'Ko\'rsatish tugallandi';

  @override
  String get showCompletedTodosDescription =>
      'Ro\'yxatda tugallangan Todoslarni ko\'rsatish';

  @override
  String get showIntroScreen => 'Kirish ekranini yana ko\'rsatish';

  @override
  String get sortNewestFirst => 'Eng yangi birinchi';

  @override
  String get sortNewestFirstDescription =>
      'Yuqorida yangi sanalar ko\'rsatilgan';

  @override
  String get sortNoRelevantDate => 'Sana holda';

  @override
  String get sortOverdue => 'Muddati o\'tgan';

  @override
  String get sortRelevantDate => 'Sana bilan';

  @override
  String get sortStarred => 'Yulduzli';

  @override
  String get sortToday => 'Bugungi kun';

  @override
  String get sorting => 'Saralash tartibi';

  @override
  String get sortingDescription => 'Todoslarni saralash tartibi';

  @override
  String get submitFeedback => 'Yuborish';

  @override
  String get syncCorruptedFile => 'Zaxira fayli buzilganga o\'xshaydi.';

  @override
  String get syncDirectoryDoesNotExist => 'Belgilangan katalog mavjud emas.';

  @override
  String get syncNcMaintenance => 'Nextcloud parvarishlash rejimida.';

  @override
  String get syncNoInternetConnection => 'Internetga ulanish yo\'q.';

  @override
  String get syncNotNcServer =>
      'Ushbu manzilda Nextcloud serverini topib bo\'lmadi.';

  @override
  String get syncServiceUnavailable => 'Nextcloud mavjud emas.';

  @override
  String get syncSuccessful => 'Muvaffaqiyatli sinxronlashtirildi.';

  @override
  String get syncUnknownError => 'Noma\'lum xato yuz berdi.';

  @override
  String get syncWrongUrl => 'Siz taqdim etgan url noto\'g\'ri ko\'rinadi.';

  @override
  String get syncWrongUserOrPassword =>
      'Berilgan foydalanuvchi nomi yoki parol noto\'g\'ri.';

  @override
  String get system => 'Tizim';

  @override
  String get systemInfo => 'Tizim';

  @override
  String get thankYouForFeedback => 'Hisobot yuborish uchun rahmat!';

  @override
  String get title => 'Sarlavha';

  @override
  String get titleMayNotBeEmpty => 'Sarlavha bo\'sh bo\'lmasligi mumkin';

  @override
  String get today => 'Bugun';

  @override
  String get todoSearch => 'Todo qidiruv';

  @override
  String get todoSearchDescription =>
      'Todo ro\'yxatiga Todos orqali qidirish imkonini beruvchi qidiruv tugmasini qo\'shing.';

  @override
  String get tomorrow => 'Ertaga';

  @override
  String get treatTodayAsIsImportant => 'Bugungi kunda muhim deb hisoblang';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Yoqilgan bo\'lsa, ular filmidagi go\'yo tufayli bugun Todos muomala qilinadi';

  @override
  String get trimTodoTexts => 'Todo matnlarini kesish';

  @override
  String get trimTodoTextsDescription =>
      'Agar yoqilgan bo\'lsa, Todos sarlavhasi va tavsifidan atrofdagi bo\'sh joyni kesib oling';

  @override
  String get trueBlackMode => 'Haqiqiy qora rejim';

  @override
  String get trueBlackModeDescription =>
      'Fonni qora qiladi, ayniqsa oled qurilmalari uchun foydalidir';

  @override
  String get turnOff => 'O\'chirish';

  @override
  String get turnOn => 'Yoqish';

  @override
  String get undo => 'Bekor qilish';

  @override
  String get update => 'Yangilash';

  @override
  String get updateCredentials => 'Hisob ma\'lumotlarini yangilash';

  @override
  String get useCustomTabs => 'Ilova ichidagi brauzerdan foydalaning';

  @override
  String get useCustomTabsDescription =>
      'Havolalarni ochish uchun ilova ichidagi brauzerdan foydalaning';

  @override
  String get whatsNew => ' Nima yangiliklar?';

  @override
  String get yesterday => 'Kecha';

  @override
  String get error => 'Xato';

  @override
  String get routingError =>
      'Voy! Ko\'rinib turibdiki, biror narsa noto\'g\'ri ketdi va siz mavjud bo\'lmagan sahifaga tushdingiz. Buning uchun juda afsusdaman!';

  @override
  String get goToHome => 'Uyga boring';

  @override
  String get pageNotFound => 'Sahifa topilmadi';

  @override
  String get updateDoable => 'Yangilash Doable';

  @override
  String get download => 'Yuklab olish';

  @override
  String get install => 'O\'rnatish';

  @override
  String get installed => 'O\'rnatilgan';

  @override
  String get updateNotInstalled => 'Yangilanish o\'rnatilmagan.';

  @override
  String get skipVersion => 'Ushbu versiyani o\'tkazib yuboring';

  @override
  String get couldNotDownloadUpdate => 'Yangilanishni yuklab bo\'lmadi.';

  @override
  String versionWithNumber(String version) {
    return 'Versiya $version';
  }

  @override
  String get autoUpdates => 'Avtomatik yangilanishlar';

  @override
  String get autoUpdatesDescription => 'Yangilanishlarni avtomatik tekshirish';

  @override
  String get introExtensions => 'Kengaytmalar? Kengaytmalar!';

  @override
  String get introExtensionsDescription =>
      'Kengaytmalar siz kengaytirish va er-xotin xususiyati majmuini kattalashtirish imkonini beradi. Ular sizga Double-dan qanday foydalanishni aniq tanlash imkoniyatini beradi. Agar siz barcha mavjud kengaytmalarni tekshirishni istasangiz, quyidagi tugmani bosing!';

  @override
  String get introExtensionsButton => 'Uzaytir!';

  @override
  String get useBottomSheetMenu => 'Pastki varaq menyusidan foydalanish';

  @override
  String get useBottomSheetMenuDescription =>
      'Menyu sifatida pastga bir tomchi o\'rniga pastki varaq foydalaning';

  @override
  String get contributors => 'Hissadorlar';

  @override
  String get contributorDescription =>
      'Doable-ga yordam bergan odamlar nima bo\'lishiga yordam berishdi';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV url';

  @override
  String get webdavLogOutMessage =>
      'Saqlangan hisobga olish ma\'lumotlari o\'chirilganda. Biroq, saqlangan fayl davom etadi.';

  @override
  String get importExport => 'Import va eksport';

  @override
  String get chooseDirectory => 'Direktoriyani tanlash';

  @override
  String get forgetDirectory => 'Direktoriyani unutish';

  @override
  String get newStarredTodo => 'Yangi boshlangan Todo';

  @override
  String get allTodos => 'All Todos';

  @override
  String get newTodoList => 'Yangi ro\'yxat';

  @override
  String get deleteTodoList => 'Ro\'yxatni o\'chirish';

  @override
  String get editTodoList => 'Ro\'yxatni tahrirlash';

  @override
  String get lists => 'Ro\'yxatlar';

  @override
  String get listsDescription =>
      'Ro\'yxatlar yarating va ular bilan Todoslaringizni tartiblang. Siz bosh ekrandagi tortma orqali kirish mumkin bo\'lgan cheksiz miqdordagi ro\'yxatlarni yaratishingiz mumkin.';

  @override
  String aboutToDeleteList(String listName) {
    return 'You\'re about to delete the list $listName and all Todos inside of it. This action is permanent and cannot be undone.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Ro\'yxat';

  @override
  String get share => 'Hissa';

  @override
  String get font => 'Shrift';

  @override
  String get fontDescription => 'Long press to show font names';

  @override
  String get popUpAnimationOverSlideAnimation => 'Eski sahifaga o\'tish';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Eski pop up uslubi sahifa o\'tish foydalaning';

  @override
  String get restart => 'Qayta boshlash';

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
      'Doable-ning zaxira faylini o\'qib bo\'lmadi va buzilgan ko\'rinadi. Doable joriy zaxira faylini o\'chirish va yangisini yaratish orqali buni tuzatishga harakat qilishi mumkin. Bu bir xil zaxira fayli yordamida boshqa bajariladigan holatlarda kiritilgan barcha o\'zgarishlarni o\'chirib tashlaydi.';

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
  String get languageNameInEnglish => 'Uzbek';

  @override
  String get languageNameInNativeLanguage => 'O\'zbek';

  @override
  String get createSummaryForBugReport => 'Create summary';

  @override
  String get createSummaryForBugReportDetails =>
      'Tizim ma\'lumotlarini o\'z ichiga olgan hisobot yaratadi, Double ri, va barcha qaydlar. Bu xato hisobotlari uchun foydali bo\'lishi mumkin va muammoni bartaraf etishga yordam beradi.';

  @override
  String get bugReport => 'Bug report';

  @override
  String get bugReportSupportingText =>
      'Iltimos, xato hisobotiga nimani kiritishni xohlayotganingizni tanlang. Siz qanchalik ko\'p ma\'lumot bersangiz, nima noto\'g\'ri bo\'lganini aniq bilish osonroq bo\'ladi. ** Yo\'q, shaxsiy ma\'lumot birgalikda qilinadi.**';

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
      'Bu erda siz har bir rang belgisini yuragingizning mazmuniga o\'zgartirishingiz mumkin. Shuningdek, siz ranglarni `json` fayliga import / eksport qilishingiz va u erda tahrirlashingiz mumkin!\n\nAgar tushunish bo\'lsangiz, nima, har bir belgi qilsa, quyidagi veb-sayt tashrif buyuring: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Import';

  @override
  String get customThemeFuckedFile =>
      'Ushbu faylda haqiqiy rang mavzusi mavjud emas. Iltimos, faylingiz siz eksport qilgan fayl bilan bir xil uslub va tuzilishga mos kelishiga ishonch hosil qiling.';

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
