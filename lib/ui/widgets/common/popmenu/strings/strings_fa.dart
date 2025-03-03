import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class StringsFa extends Strings {
  StringsFa([String locale = 'fa']) : super(locale);

  @override
  String get about => 'درباره';

  @override
  String get aboutDescription => 'اطلاعات در مورد برنامه';

  @override
  String get aboutOSInfo =>
      'کد منبع: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nسیاست حفظ حریم خصوصی: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nمخزن F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'حذف تغییرات؟';

  @override
  String get aboutToCancelChangesDescription =>
      'شما در شرف حذف همه تغییرات ایجاد شده در این Todo هستید.';

  @override
  String get aboutToCancelFeedback => 'بازخورد حذف شود؟';

  @override
  String get aboutToCancelFeedbackDescription =>
      'شما در شرف صرف نظر کردن از بازخورد خود هستید. این قابل واگرد نیست.';

  @override
  String get aboutToDeleteCompleted =>
      'شما در شرف حذف همه کارهای تکمیل شده هستید. این عمل دائمی است و قابل بازگشت نیست.';

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
    return 'شما در شرف حذف $_temp0 هستید. این عمل دائمی است و قابل بازگشت نیست.';
  }

  @override
  String get additionalFeatures => 'برنامه های افزودنی';

  @override
  String get additionalFeaturesDescription =>
      'ویژگی هایی که Doable را قدرتمندتر می کند';

  @override
  String get alignTodoCheck => 'علامت سمت راست را علامت بزنید';

  @override
  String get alignTodoCheckDescription =>
      'علامت تیک Todo را در سمت راست نشان دهید';

  @override
  String get appLanguage => 'زبان برنامه';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'توجه';

  @override
  String get back => 'بازگشت';

  @override
  String get syncAndBackup => 'همگام سازی و پشتیبان گیری';

  @override
  String get syncAndBackupDescription =>
      'Todos خود را پشتیبان بگیرید و همگام کنید';

  @override
  String get cancel => 'لغو';

  @override
  String get chooseFeedbackExtrasDescription =>
      'من توصیه می کنم همه موارد زیر را اضافه کنم زیرا به من در عیب یابی مشکل شما کمک می کند. این شامل هیچ اطلاعات شخصی نمی شود.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'کدام اطلاعات اضافی را می خواهید درج کنید؟';

  @override
  String get chooseFeedbackWay => 'کجا می خواهید بازخورد بدهید؟';

  @override
  String get codeberg => 'کدبرگ';

  @override
  String get completedTodo => 'Todo تکمیل شد.';

  @override
  String get copiedToClipboard => 'متن در کلیپ بورد کپی شد.';

  @override
  String get customAccentPicker => 'رنگ تاکیدی';

  @override
  String get customAccentPickerDescription =>
      'یک رنگ تاکیدی سفارشی برای تم برنامه انتخاب کنید';

  @override
  String get darkMode => 'حالت تاریک';

  @override
  String get deleteCompletedAfter => 'حذف خودکار تکمیل شد';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'حذف بعد از $duration';
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
    return '$_temp0 حذف شد.';
  }

  @override
  String get description => 'توضیحات';

  @override
  String get design => 'طراحی';

  @override
  String get designDescription => 'ظاهر و احساس Doable را تغییر دهید';

  @override
  String get disable => 'خاموش کردن';

  @override
  String get discard => 'دور انداختن';

  @override
  String get doContinue => 'ادامه';

  @override
  String get done => 'انجام شد';

  @override
  String get dynamicColors => 'رنگ‌های پویا';

  @override
  String get dynamicColorsDescription =>
      'استفاده از رنگ های سیستم (اندروید 12+)';

  @override
  String get email => 'ایمیل';

  @override
  String get enable => 'فعال';

  @override
  String get enabled => 'فعال شده';

  @override
  String get export => 'صادر';

  @override
  String get exportAllTodos => 'صادر همه ی Todos';

  @override
  String exportEvery(String duration) {
    return 'صادر هر $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'توضیح دقیق تر از آنچه اشتباه شد / چگونه اتفاق افتاد.';

  @override
  String get feedbackHeader =>
      'لطفاً فرم زیر را پر کنید تا به من کمک کنید بفهمم چه اشتباهی رخ داده است.';

  @override
  String get feedbackTitleHelp => 'خلاصه ای کوتاه از این رویداد.';

  @override
  String get general => 'عمومی';

  @override
  String get generalDescription => 'رفتار کلی برنامه را تغییر دهید';

  @override
  String get giveFeedback => 'بازخورد';

  @override
  String get highlightOverdue => 'برجسته کردن عقب افتاده';

  @override
  String get highlightOverdueDescription =>
      'کارهایی را که به تاخیر افتاده اند، مانند Todos ستاره دار برجسته کنید';

  @override
  String get highlightToday => 'برجسته امروز';

  @override
  String get highlightTodayDescription =>
      'Todos را که امروز قرار است به همان روشی که Todos ستاره دار هستند برجسته کنید';

  @override
  String get importLocalBackupError =>
      'فایل وارد نشد. آیا مطمئن هستید که توسط Doable تولید شده است؟';

  @override
  String get importTodosFromFile => 'درون‌برد پرونده';

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
    return '$_temp0 وارد شد.';
  }

  @override
  String get installedFrom => 'نصب شده از';

  @override
  String get introDoubleTap => 'دو ضربه سریع بزنید';

  @override
  String get introDoubleTapDescription =>
      'می‌توانید روی Todoهایی که دارای توضیحات هستند دوبار ضربه بزنید تا آنها را گسترش دهید. وقتی بزرگ شد، توضیحات کامل نشان داده می شود و سپس می توانید با پیوندها و غیره تعامل داشته باشید.\n\nشما می توانید آن را با یک مثال در اینجا امتحان کنید!';

  @override
  String get introDoubleTapTodoDescription =>
      'کیک دروغه!\n\nدر اینجا بیشتر بدانید:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'خرید کیک جدید';

  @override
  String get introLinks => 'لینک، شماره تلفن، ایمیل';

  @override
  String get introLinksDescription =>
      'وقتی پیوندها، شماره تلفن یا آدرس ایمیل را به توضیحات اضافه می کنید، به طور خودکار برجسته می شوند و می توانید با آنها تعامل داشته باشید.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'شما همچنین می توانید Todos خود را با یک نمونه Nextcloud همگام کنید. اگر مایلید می توانید از اینجا وارد شوید!';

  @override
  String get introStar => 'ستاره ها';

  @override
  String get introStarDescription =>
      'برای ساختن آن یک ستاره به Todo اضافه کنید\nدر میان جمعیت برجسته شوید\n\nبه ستاره زیر ضربه بزنید تا آن را امتحان کنید!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription =>
      'هنگام ایجاد یک Todo جدید می توانید موارد مختلفی را اضافه کنید. برای مثال، می‌توانید تاریخی را اضافه کنید که Todo مربوط می‌شود، یا می‌توانید Todo را ستاره‌دار کنید تا در بین بقیه قرار بگیرد! همچنین می‌توانید توضیحاتی با پیوندها یا سایر اطلاعات مربوط به Todo اضافه کنید.';

  @override
  String get introWelcome => 'خوش امدید به Doable!';

  @override
  String get introWelcomeDescription =>
      'برنامه ساده Todo با طراحی مدرن\nو ادغام Nextcloud.';

  @override
  String get keepEditing => 'به ویرایش ادامه دهید';

  @override
  String get left => 'چپ';

  @override
  String get licenses => 'لیسانس ها';

  @override
  String get licensesDescription => 'مجوزهای منبع باز و فلاتر';

  @override
  String get localStorage => 'ذخیره سازی محلی';

  @override
  String get logIn => 'ورود';

  @override
  String get logOut => 'خروج';

  @override
  String get logOutputs => 'لوگ‌ها';

  @override
  String get markCompleted => 'علامت گذاری تکمیل شد';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'علامت گذاری به عنوان ناتمام';

  @override
  String get markdown => '';

  @override
  String get markdownDescription => 'پشتیبانی Markdown';

  @override
  String get mayNotBeEmpty => 'شاید خالی نباشد';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => '';

  @override
  String get moveImportantToTop => 'حرکت مهم به بالا';

  @override
  String get moveImportantToTopDescription =>
      'در صورت فعال بودن، کارهایی که ستاره دار شده اند همیشه در بالای لیست نمایش داده می شوند';

  @override
  String get moveUpWhenUpdated => 'تغییرات در لیست را منعکس کنید';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Todos پس از تغییر به بالای لیست حرکت می کند';

  @override
  String get ncBaseUrl => 'سرور';

  @override
  String get ncBaseUrlHint => 'آدرس اینترنتی رابط وب Nextcloud';

  @override
  String get ncDirectory => 'دایرکتوری';

  @override
  String get ncFileIn => 'فایل ذخیره شده در';

  @override
  String get ncLogOut => 'خروج از nextcloud';

  @override
  String get ncLogOutMessage =>
      'هنگام خروج از سیستم، اطلاعات کاربری ذخیره شده شما پاک می شود. با این حال، فایل ذخیره شده در نمونه Nextcloud شما باقی خواهد ماند.';

  @override
  String get ncLoggedInAs => 'به عنوان وارد شده';

  @override
  String get ncPassword => 'رمز عبور';

  @override
  String get ncUser => 'کاربر';

  @override
  String get never => 'هیچوقت';

  @override
  String get newSubTodo => 'زیر TODO';

  @override
  String get newTodo => 'todo جدید';

  @override
  String get next => 'بعدی';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'هیچ Todos باقی نمانده است، کار عالی!';

  @override
  String get notAValidUrl => 'آدرس اینترنتی معتبری نیست';

  @override
  String get off => 'خاموش';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'روشن';

  @override
  String get optional => 'اختیاری';

  @override
  String get pickAColor => 'یک رنگ انتخاب کنید';

  @override
  String get pickerPrimary => 'استاندارد';

  @override
  String get pickerWheel => 'سفارشی';

  @override
  String get popupMenuDeleteCompleted => 'حذف کامل شد';

  @override
  String get popupMenuHideCompleted => 'پنهان کردن کامل شده';

  @override
  String get popupMenuShowCompleted => 'نشان دادن کامل شده';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'سررسید';

  @override
  String get required => 'اجباری*';

  @override
  String get reset => 'تنظیم مجدد';

  @override
  String get right => 'راست';

  @override
  String get save => 'ذخیره';

  @override
  String get settings => 'تنظیمات';

  @override
  String get showCompletedTodos => 'نشان دادن تکمیل شده';

  @override
  String get showCompletedTodosDescription => 'نشان دادن تکمیل شده در لیست';

  @override
  String get showIntroScreen => 'نمایش صفحه معرفی دوباره';

  @override
  String get sortNewestFirst => 'جدیدترین اول';

  @override
  String get sortNewestFirstDescription =>
      'تاریخ های جدیدتر در بالا نشان داده شده است';

  @override
  String get sortNoRelevantDate => 'بدون تاریخ';

  @override
  String get sortOverdue => 'عقب افتاده';

  @override
  String get sortRelevantDate => 'با تاریخ';

  @override
  String get sortStarred => 'با ستارهه';

  @override
  String get sortToday => 'سررسید امروز';

  @override
  String get sorting => 'ترتیب مرتب سازی';

  @override
  String get sortingDescription => 'ترتیبی که Todos مرتب خواهد شد';

  @override
  String get submitFeedback => 'ارسال';

  @override
  String get syncCorruptedFile => 'به نظر می رسد فایل پشتیبان خراب شده است.';

  @override
  String get syncDirectoryDoesNotExist => 'دایرکتوری مشخص شده وجود ندارد.';

  @override
  String get syncNcMaintenance => 'Nextcloud در حالت Maintenance Mode است.';

  @override
  String get syncNoInternetConnection => 'بدون اتصالی به اینترنت.';

  @override
  String get syncNotNcServer => 'سرور Nextcloud در این آدرس یافت نشد.';

  @override
  String get syncServiceUnavailable => 'Nextcloud در دسترس نیست.';

  @override
  String get syncSuccessful => 'با موفقیت همگام سازی شد.';

  @override
  String get syncUnknownError => 'یک خطای ناشناخته رخ داد.';

  @override
  String get syncWrongUrl =>
      'به نظر می رسد آدرس اینترنتی که ارائه کرده اید نادرست است.';

  @override
  String get syncWrongUserOrPassword =>
      'نام کاربری یا رمز عبور داده شده نادرست است.';

  @override
  String get system => 'سیستم';

  @override
  String get systemInfo => 'سیستم';

  @override
  String get thankYouForFeedback => 'از شما برای ارسال بازخورد متشکریم!';

  @override
  String get title => 'عنوان';

  @override
  String get titleMayNotBeEmpty => 'عنوان ممکن است خالی نباشد';

  @override
  String get today => 'امروز';

  @override
  String get todoSearch => 'جستجو Todo';

  @override
  String get todoSearchDescription =>
      'یک دکمه جستجو به لیست Todo اضافه کنید که به شما امکان می دهد از طریق Todos خود جستجو کنید.';

  @override
  String get tomorrow => 'فردا';

  @override
  String get treatTodayAsIsImportant => 'امروز را مهم تلقی کنید';

  @override
  String get treatTodayAsIsImportantDescription =>
      'اگر فعال باشد، کارهایی که امروز سررسید می‌شوند به‌گونه‌ای تلقی می‌شوند که گویی ستاره‌دار شده‌اند';

  @override
  String get trimTodoTexts => 'کوتاه کردن متون Todo';

  @override
  String get trimTodoTextsDescription =>
      'در صورت فعال بودن، هر فضای خالی اطراف را از عنوان و توضیحات Todos حذف کنید';

  @override
  String get trueBlackMode => 'حالت سیاه واقعی';

  @override
  String get trueBlackModeDescription =>
      'پس زمینه را سیاه می کند، مخصوصا برای دستگاه های اولد مفید است';

  @override
  String get turnOff => 'خاموش';

  @override
  String get turnOn => 'روشن کن';

  @override
  String get undo => 'واگرد';

  @override
  String get update => 'بروزرسانی';

  @override
  String get updateCredentials => 'اعتبارنامه ها را به روز کنید';

  @override
  String get useCustomTabs => 'از مرورگر درون برنامه ای استفاده کنید';

  @override
  String get useCustomTabsDescription =>
      'برای باز کردن پیوندها از مرورگر درون برنامه ای استفاده کنید';

  @override
  String get whatsNew => 'چی جدید است؟';

  @override
  String get yesterday => 'دیروز';

  @override
  String get error => 'خطا';

  @override
  String get routingError =>
      'اوه! به نظر می رسد که مشکلی پیش آمده است و شما در صفحه ای قرار گرفته اید که، خوب، وجود ندارد. من به شدت متاسفم برای آن!';

  @override
  String get goToHome => 'برو خانه';

  @override
  String get pageNotFound => 'صفحه پیدا تشد';

  @override
  String get updateDoable => 'بروزرسانی Doable';

  @override
  String get download => 'دانلود';

  @override
  String get install => 'نصب';

  @override
  String get installed => 'نصب شده';

  @override
  String get updateNotInstalled => 'آپدیت نصب نشد.';

  @override
  String get skipVersion => 'از این نسخه بگذرید';

  @override
  String get couldNotDownloadUpdate => 'آپدیت دانلود نشد.';

  @override
  String versionWithNumber(String version) {
    return 'نسخه $version';
  }

  @override
  String get autoUpdates => 'بروزرسانی خودکار';

  @override
  String get autoUpdatesDescription =>
      'به‌روزرسانی‌ها را به‌طور خودکار بررسی کنید';

  @override
  String get introExtensions => 'پسوندها؟ پسوندها!';

  @override
  String get introExtensionsDescription =>
      'برنامه های افزودنی به شما امکان می دهند مجموعه ویژگی های Doable را گسترش داده و بزرگ کنید. آنها به شما این قدرت را می دهند که دقیقاً چگونه می خواهید از Doable استفاده کنید. اگر می خواهید همه افزونه های موجود را بررسی کنید، فقط روی دکمه زیر کلیک کنید!';

  @override
  String get introExtensionsButton => 'تمدید کنید!';

  @override
  String get useBottomSheetMenu => 'از منوی ورق پایین استفاده کنید';

  @override
  String get useBottomSheetMenuDescription =>
      'از یک صفحه پایین به جای کشویی به عنوان منو استفاده کنید';

  @override
  String get contributors => 'مشارکت کنندگان';

  @override
  String get contributorDescription =>
      'افرادی که به Doable کمک کردند تا به آنچه هست تبدیل شود';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'آدرس سرور Webdav';

  @override
  String get webdavLogOutMessage =>
      'هنگام خروج از سیستم، اطلاعات کاربری ذخیره شده شما پاک می شود. با این حال، فایل ذخیره شده باقی خواهد ماند.';

  @override
  String get importExport => 'واردات و صادرات';

  @override
  String get chooseDirectory => 'انتخاب دایرکتوری';

  @override
  String get forgetDirectory => 'فراموش دایرکتوری';

  @override
  String get newStarredTodo => 'Todo با ستاره جدید';

  @override
  String get allTodos => 'همه ی todo';

  @override
  String get newTodoList => 'لیست جدید';

  @override
  String get deleteTodoList => 'پاکسازی لیست';

  @override
  String get editTodoList => 'ویرایش لیسن';

  @override
  String get lists => 'لیست ها';

  @override
  String get listsDescription =>
      'لیست ها را ایجاد کنید و کارهای خود را با آنها مرتب کنید. شما می توانید تعداد نامحدودی از لیست ها را ایجاد کنید که از طریق کشو در صفحه اصلی قابل دسترسی هستند.';

  @override
  String aboutToDeleteList(String listName) {
    return 'شما در شرف حذف لیست $listName و همه کارهای داخل آن هستید. این عمل دائمی است و قابل بازگشت نیست.';
  }

  @override
  String markBeta(String element) {
    return '$element (بتا)';
  }

  @override
  String get list => 'gdsj';

  @override
  String get share => 'اشتراک';

  @override
  String get font => 'فونت';

  @override
  String get fontDescription => 'برای نمایش نام فونت ها را طولانی فشار دهید';

  @override
  String get popUpAnimationOverSlideAnimation => 'انتقال صفحه قدیمی';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'از تغییر صفحه سبک پاپ آپ قدیمی استفاده کنید';

  @override
  String get restart => 'راه اندازی مجدد';

  @override
  String get later => 'بعدا';

  @override
  String get restartRequired => 'راه‌اندازی مجدد لازم است';

  @override
  String get restartRequiredForSetting =>
      'برای تأثیرگذاری این تنظیم به راه‌اندازی مجدد برنامه نیاز است.';

  @override
  String get image => 'تصویر';

  @override
  String get expandTodos => 'Todos را گسترش دهید';

  @override
  String get showTodoListNames => 'نمایش نام های لیست';

  @override
  String get includeBranding => 'برندسازی را نیز لحاظ کنید';

  @override
  String get doableBrandingText =>
      'به اشتراک گذاشته شده از Doable، برنامه ساده، مدرن و آسان برای استفاده Todo.\nمی توانید Doable را از اینجا دریافت کنید: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'نحوه اشتراک گذاری Todos خود را انتخاب کنید';

  @override
  String get options => 'گزینه ها';

  @override
  String get reduceMotion => 'کاهش حرکت';

  @override
  String get reduceMotionDescription => 'کاهش حرکت انیمیشن ها';

  @override
  String get contribute => 'مشارکت کنید';

  @override
  String get contributeWantYourNameHere => 'نام خود را اینجا می خواهید؟';

  @override
  String get contributeWantYourNameHereDescription =>
      'مستقیماً به Doable کمک کنید یا به ترجمه آن کمک کنید!';

  @override
  String get onlySymbolInDetailViewFab => 'نماد به جای متن';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'از یک نماد به جای متن در نمای جزئیات Todo استفاده کنید';

  @override
  String get allSelected => 'همه انتخاب شدند';

  @override
  String get sharedTextAsTitle => 'متن به اشتراک گذاشته شده به عنوان';

  @override
  String get sharedTextAsTitleDescription =>
      'از متن به اشتراک گذاشته شده با Doable به عنوان Todo جدید به جای توضیحات آن استفاده کنید';

  @override
  String get noTodoLists =>
      'شما در حال حاضر هیچ لیستی ندارید.\nبرای شروع یک مورد جدید ایجاد کنید!';

  @override
  String forExample(String example) {
    return 'ex. $example';
  }

  @override
  String get clearSelection => 'پاک کردن انتخاب';

  @override
  String get syncConnectionTimedOut => 'زمان اتصال تمام شد.';

  @override
  String get syncTooManyTimeOuts =>
      'زمان سرور بارها تمام شد. همگام‌سازی تا راه‌اندازی مجدد برنامه غیرفعال است.';

  @override
  String get todoToCalendar => 'Todo را به تقویم اضافه کنید';

  @override
  String get logs => 'لوگ ها';

  @override
  String get logsDescription => 'ن';

  @override
  String get aboutToClearAllLogs =>
      'شما در شرف حذف همه گزارش‌ها هستید که به آنها برای بازخورد و عیب‌یابی غیرقابل دسترس می‌شود. این عمل دائمی است و قابل بازگشت نیست.';

  @override
  String get clearAllLogs => 'پاکسازی همه ی لوگ ها';

  @override
  String get noLogsYet =>
      'در اینجا هیچ گزارشی وجود ندارد که بتوانید به آن نگاه کنید.';

  @override
  String get dateFormat => 'فرمت تاریخ';

  @override
  String get timeFormat => 'فرمت ساعت';

  @override
  String get shareAllLogs => 'اشتراکگذاری همه ی لوگ ها';

  @override
  String get copyAllLogs => 'کپی همه ی لوگ ها';

  @override
  String get whatWentWrong => 'چه مشکلی پیش آمد؟';

  @override
  String get fixCorruptBackupFile =>
      'فایل پشتیبان Doable خوانده نشد و به نظر خراب است. Doable می‌تواند با حذف فایل پشتیبان فعلی و ایجاد یک فایل جدید، این مشکل را برطرف کند. با این کار تمام تغییرات ایجاد شده در سایر نمونه های Doable با استفاده از همان فایل پشتیبان حذف می شود.';

  @override
  String get initializingNextcloud => 'در حال راه‌اندازی Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'عوض کردن دایرکتوری';

  @override
  String get dueDate => 'سررسید';

  @override
  String get dragToReorder => 'برای سفارش مجدد بکشید';

  @override
  String get copySettings => 'کپی تنظیمات';

  @override
  String get copySystemInfo => 'کپی اطلاعات سیستم';

  @override
  String get languageNameInEnglish => '';

  @override
  String get languageNameInNativeLanguage => 'English';

  @override
  String get createSummaryForBugReport => 'ایجاد خلاصه';

  @override
  String get createSummaryForBugReportDetails =>
      'گزارشی حاوی اطلاعات سیستم، تنظیمات Doable و همه گزارش‌ها ایجاد می‌کند. این می تواند برای گزارش های اشکال مفید باشد و به عیب یابی مشکل کمک می کند.';

  @override
  String get bugReport => 'گزارش اشکال';

  @override
  String get bugReportSupportingText =>
      'لطفاً آنچه را که می‌خواهید در گزارش اشکال لحاظ شود، انتخاب کنید. هرچه اطلاعات بیشتری ارائه دهید، راحت تر می توانید متوجه شوید که دقیقا چه اشتباهی رخ داده است. **هیچ اطلاعات شخصی به اشتراک گذاشته نخواهد شد.**';

  @override
  String get shareBugReport => 'گزارش اشکال را به اشتراک بگذارید';

  @override
  String get fontSize => 'اندازه فونت';

  @override
  String get fontSizeDescription => 'نادیده گرفتن اندازه فونت سیستم';

  @override
  String get decrease => 'کاهش';

  @override
  String get increase => 'افزایش';

  @override
  String get customSecondaryAccentPicker => 'رنگ ثانویه';

  @override
  String get customTertiaryAccentPicker => 'رنگ سوم';

  @override
  String get advancedColorOptions => 'گزینه های رنگی پیشرفته';

  @override
  String get uploadCustomColorScheme => 'طرح رنگ سفارشی را آپلود کنید';

  @override
  String get downloadCurrentColorScheme => 'دانلود طرح رنگ فعلی';

  @override
  String get markAsStarred => 'تودو را به عنوان ستاره دار علامت گذاری کنید';

  @override
  String get setTime => 'زمان را تنظیم کنید';

  @override
  String get thereAreNoLists => 'هنوز هیچ لیستی وجود ندارد';

  @override
  String get closeDetailsOnCompelte => 'جزئیات را در کامل ببندید';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Todo را ذخیره می کند و نمای جزئیات آن را با فشار دادن دکمه کامل می بندد.';

  @override
  String get customColorTheme => 'تم رنگی سفارشی';

  @override
  String get discardCustomColorTheme =>
      'شما می خواهید همه تغییرات ایجاد شده در طرح زمینه رنگی را کنار بگذارید.';

  @override
  String get lightMode => 'حالت نور';

  @override
  String get deletedCustomColorTheme => 'تم رنگی سفارشی حذف شد.';

  @override
  String get customThemeInfo =>
      'در اینجا می‌توانید هر کد رنگ را به دلخواه تغییر دهید. همچنین می‌توانید رنگ‌ها را در یک فایل «json» وارد یا صادر کنید و آن‌ها را در آنجا ویرایش کنید!\n\nاگر می خواهید بفهمید که هر توکن چه کاری انجام می دهد، لطفاً از وب سایت زیر دیدن کنید: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'واردات';

  @override
  String get customThemeFuckedFile =>
      'این فایل دارای تم رنگی معتبری نیست. لطفاً مطمئن شوید که فایل شما از همان سبک و ساختار فایلی که صادر کرده اید پیروی می کند.';

  @override
  String get markdownBold => 'پررنگ';

  @override
  String get markdownItalic => 'مورب';

  @override
  String get markdownMonospace => 'مونواسپیس';

  @override
  String get markdownHighlight => 'برجسته کردن';

  @override
  String get fediChooseInstance => 'نمونه خود را انتخاب کنید';

  @override
  String get fediInstanceUrl => 'آدرس نمونه';

  @override
  String get fediRememberInstance => 'مثال من را به خاطر بسپار';

  @override
  String get fediDoablePost =>
      'فقط به لطف @Doable@floss.social توانستم تمام کارهایم را تمام کنم!\n\nجالب به نظر می رسد؟ می توانید با مراجعه به https://repo.doable.at درباره #Doable بیشتر بدانید!';

  @override
  String get doable => 'Doable - برنامه مدرن و ساده Todo';

  @override
  String get rrRepeatsEvery => 'تکرار هر';

  @override
  String get rrRepeatsOn => 'تکرار می شود';

  @override
  String get rrEnds => 'به پایان می رسد';

  @override
  String get week => 'هبته';

  @override
  String get weeks => 'هفته ها';

  @override
  String get day => 'روز';

  @override
  String get days => 'روز ها';

  @override
  String get month => 'ماه';

  @override
  String get months => 'ماه ها';

  @override
  String get year => 'سال';

  @override
  String get years => 'سال ها';

  @override
  String get onFollowedByDate => 'On';

  @override
  String get rrAfterOccurrences => 'بعد از';

  @override
  String get occurrence => 'وقوع';

  @override
  String get occurrences => 'رخدادها';

  @override
  String get rrCustomRecurrence => 'عود سفارشی';

  @override
  String get daily => 'روزانه';

  @override
  String get weekly => 'هفتگی';

  @override
  String get monthly => 'ماهانه';

  @override
  String get yearly => 'سالانه';

  @override
  String get doesNotRepeat => 'تکرار نمی شود';

  @override
  String get rrRecurrence => 'عود';

  @override
  String get recurringTodos => '';

  @override
  String get recurringTodosDescription =>
      'تکرار را به Todos خود اضافه کنید و به Doable اجازه دهید پس از تکمیل آنها به طور خودکار آنها را برای شما برنامه ریزی کند. Todos بر اساس تاریخ مربوطه و برنامه زمانی که شما تعیین کرده اید مجدداً برنامه ریزی می شود. اگر تاریخ سررسید به Todo خود اضافه نکرده‌اید، تاریخ ایجاد آن به جای آن استفاده می‌شود.\n\n**یک نکته را در نظر داشته باشید: در حالی که اکنون می توانید وظایف را برای تکرار در Doable تنظیم کنید، لطفاً توجه داشته باشید که در حال حاضر این ویژگی به انگلیسی محدود شده است.**';

  @override
  String get post => 'پست';

  @override
  String get rrRepeats => 'تکرار می شود';

  @override
  String get beta => 'بتا';

  @override
  String get extensionBetaWarningDescription =>
      'این برنامه افزودنی هنوز در نسخه بتا است و ممکن است در حین استفاده از آن با مشکلاتی روبرو شوید. لطفاً از خطرات آن آگاه باشید و اگر با مشکلی برخورد کردید به من اطلاع دهید!';

  @override
  String get extensionBetaWarning => 'برنامه افزودنی بتا فعال شود؟';

  @override
  String get showFediButton => 'نمایش دکمه پست';

  @override
  String get showFediButtonDescription =>
      'دکمه ای را نشان دهید که به شما امکان می دهد لیست خالی خود را به Fediverse پست کنید';

  @override
  String get notifications => 'اعلام ها';

  @override
  String get enableNotifications => 'فعال اعلام ها';

  @override
  String get notifyAll => 'همه ی Todos';

  @override
  String get notifyAllDescription =>
      'برای هر Todo که تاریخ سررسید دارد مطلع شوید';

  @override
  String get notifyTimeOnly => 'فقط Todos با زمان';

  @override
  String get notifyTimeOnlyDescription =>
      'فقط برای کارهایی که هم تاریخ و هم زمان دارند مطلع شوید';

  @override
  String get notifyTodosChannelName => 'Todos';

  @override
  String get notificationsDescription =>
      'اجازه دهید Doable شما را در زمان انجام کارهایتان مطلع کند. همچنین می توانید تغییر دهید که برای کدام Todo ها اعلان دریافت می کنید.';

  @override
  String get notificationsDescriptionShort =>
      'تغییر دهید که برای کدام Todo به شما اطلاع داده می شود';

  @override
  String get notifyNeverDescription => 'برای هیچ کاری مطلع نشوید';

  @override
  String get defaultNotificationTime => 'زمان اعلان پیش فرض';

  @override
  String get defaultNotificationTimeDescription =>
      'زمانی که برای Todoهایی که زمان مربوطه ندارند به شما اطلاع داده می شود';

  @override
  String get addImage => 'اضافه تصویر';

  @override
  String get todoImages => 'تصویر ها';

  @override
  String get todoImagesDescription =>
      'تصاویر را به Todos خود اضافه کنید تا بتوانید زمینه بیشتری را به آنچه می‌نویسید اضافه کنید.\n\n**متاسفانه تصاویر هنوز همگام سازی نمی شوند.**';

  @override
  String get clearInputField => 'پاک کردن فیلد ورودی';

  @override
  String get removeImage => 'حذف تصویر';

  @override
  String get apkSignatureInvalid => 'امضای نامعتبر';

  @override
  String get apkSignatureInvalidDescription =>
      'امضای فایل apk دانلود شده تأیید نشد. لطفاً توسعه دهنده را در مورد این مشکل مطلع کنید. در حالی که می توانید با مسئولیت خود اقدام به نصب apk کنید، به دلیل نگرانی های امنیتی احتمالی توصیه می کنیم احتیاط کنید.';

  @override
  String get searchTodos => 'جستجو Todos';

  @override
  String get editTodo => 'ویرایش Todos';

  @override
  String get previewTodo => 'پیش نمایش Todo';

  @override
  String get readerMode => 'حالت خواننده';

  @override
  String get readerModeDescription =>
      'به شما امکان می دهد پیش نمایش Todos خود را در داخل صفحه ویرایش مشاهده کنید.';

  @override
  String get noList => 'لیستی وجود ندارد';

  @override
  String get chooseAList => 'یک لیست انتخاب کنید';

  @override
  String get readerModeDescriptionShort =>
      'هنگام باز کردن Todo حالت اولیه را تغییر دهید';

  @override
  String get lastUsed => 'آخرین استفاده';

  @override
  String get syncFileLocked =>
      'سرور یک فایل پشتیبان را قفل کرده است، لطفاً حدود 15 دقیقه دیگر دوباره امتحان کنید.';

  @override
  String get syncInternalError =>
      'یک خطای داخلی وجود داشت، بابت ناراحتی عذرخواهی می کنیم.';

  @override
  String get syncConnectionError => 'هنگام اتصال به سرور خطایی روی داد.';

  @override
  String get restore => 'بازیابی';

  @override
  String get loggingNextcloudIn => 'ورود به Nextcloud…';

  @override
  String get initializingWebdav => 'در حال راه اندازی Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'انتقال Nextcloud به اجرای همگام‌سازی جدید…';

  @override
  String get migratingWebdavToRemote =>
      'انتقال Webdav به اجرای همگام‌سازی جدید…';

  @override
  String get migrateToRemotes => 'انتقال';

  @override
  String get migrateToRemotesDescription =>
      'Doable اخیراً نحوه همگام سازی آن با کنترل های از راه دور مانند Nextcloud یا Webdav را تغییر داده است. متأسفانه پیاده سازی جدید با عقب سازگار نیست و بنابراین باید یک مهاجرت انجام شود. Doable باید یک دقیقه زمان نیاز داشته باشد تا همه چیزهایی را که نیاز دارد منتقل کند.\n\nاگر بخواهید بعداً این کار را انجام دهید، ممکن است با برخی از پیام‌های خطا مواجه شوید زیرا پیاده‌سازی جدید هنوز راه‌اندازی نشده است.';

  @override
  String get fixBrokenRemoteFile =>
      'به نظر می رسد یک فایل پشتیبان از Doable خراب است. Doable می تواند آن را با نادیده گرفتن آن با مقدار فعلی و محلی برطرف کند. با این کار هرگونه تغییری که توسط دستگاه های دیگر پس از وقوع آن خطا ایجاد شده است لغو می شود.';

  @override
  String get fixedBrokenRemoteFile => 'فایل شکسته با موفقیت بازیابی شد.';

  @override
  String get unfixableRemoteFile => 'فایل نمی توانست بازیابی بشود.';

  @override
  String get syncFileDoesNotExist => 'یک فایل پشتیبان از Doable وجود ندارد.';

  @override
  String get todos => 'Todos';

  @override
  String get selectWhatToExport =>
      'لطفاً آنچه را که می خواهید صادر کنید انتخاب کنید.';

  @override
  String get exportFile => 'صادر فایل';

  @override
  String get listColor => 'رنگ فهرست کنید';

  @override
  String get listColorAsAccent => 'رنگ را به عنوان لهجه فهرست کنید';

  @override
  String get listColorAsAccentDescription =>
      'Use the color of the current list as the accent color for Doable';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get openSource => 'منبع باز';

  @override
  String get sourceCode => 'کد منبع';

  @override
  String get contact => 'تماس بگیرید';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'تمام کد منبع Doable در Codeberg تحت مجوز منبع باز رایگان قابل دسترسی است. شما همچنین می توانید مسائل را ارسال کنید و درخواست ها را در آنجا ارسال کنید. همچنین می توانید مخزن F-Droid Doable را در کدبرگ پیدا کنید!';

  @override
  String get aboutPrivacy =>
      'Doable هیچ اطلاعات شخصی در مورد شما جمع آوری نمی کند. تنها چیزی که Doable در مورد استفاده شما ذخیره می‌کند، گزارش‌ها هستند. با این حال، این گزارش‌ها **به‌طور خودکار آپلود نمی‌شوند.** تنها راهی که آن گزارش‌ها از دستگاه شما خارج می‌شوند این است که آنها را به اشتراک بگذارید، مثلاً برای کمک به رفع اشکال.';

  @override
  String get httpWarning => 'اتصال رمزگذاری نشده';

  @override
  String get cancelling => 'در حال لغو…';

  @override
  String get httpWarningDescription =>
      'شما سعی می کنید به جای سرور HTTPS ایمن تر به یک سرور HTTP متصل شوید. HTTP داده ها را بدون رمز به سرور ارسال می کند که خطرات امنیتی بالقوه ای را به همراه دارد، بنابراین توصیه نمی شود. با این حال موارد استفاده خاصی مانند سرور میزبان محلی وجود دارد. آیا مطمئن هستید که می خواهید با HTTP ادامه دهید؟';

  @override
  String get enableNotificationReminder => 'اطلاعیه یادآوری';

  @override
  String get pickNotificationReminderDuration => 'بعد به من یادآوری کن';

  @override
  String get hours => 'ساعت ها';

  @override
  String get minutes => 'دقیقه ها';

  @override
  String get enableNotificationSound => 'پخش صدا';

  @override
  String get enableNotificationSoundDescription =>
      'هنگام نمایش اعلان، یک صدای سفارشی پخش کنید';

  @override
  String get interval => 'فاصله';

  @override
  String get secondly => 'دوما';

  @override
  String get minutely => 'دقیقه';

  @override
  String get hourly => 'ساعت';

  @override
  String get second => 'ثانیه';

  @override
  String get startOfTheWeek => 'شروع هفته';

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
