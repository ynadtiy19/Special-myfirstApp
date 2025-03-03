import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class StringsUk extends Strings {
  StringsUk([String locale = 'uk']) : super(locale);

  @override
  String get about => 'Про додаток';

  @override
  String get aboutDescription => 'Інформація про додаток';

  @override
  String get aboutOSInfo =>
      'Вихідний код: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nПолітика конфіденційності: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nРепозиторій F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Відкинути зміни?';

  @override
  String get aboutToCancelChangesDescription =>
      'Ви збираєтеся відкинути всі зміни, внесені в це завдання.';

  @override
  String get aboutToCancelFeedback => 'Відкинути відгук?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Ви збираєтеся видалити свій відгук. Це не можна скасувати.';

  @override
  String get aboutToDeleteCompleted =>
      'Ви збираєтеся видалити всі завершені завдання. Ця дія є остаточною і не може бути скасована.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString завдань',
      one: 'одне завдання',
    );
    return 'Ви збираєтеся видалити $_temp0. Ця дія є остаточною і не може бути скасована.';
  }

  @override
  String get additionalFeatures => 'Розширення';

  @override
  String get additionalFeaturesDescription =>
      'Функції, які роблять Doable потужнішим';

  @override
  String get alignTodoCheck => 'Галочка праворуч';

  @override
  String get alignTodoCheckDescription =>
      'Показувати галочку праворуч від завдань';

  @override
  String get appLanguage => 'Мова програми';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Увага';

  @override
  String get back => 'Назад';

  @override
  String get syncAndBackup => 'Синхронізація та резервування';

  @override
  String get syncAndBackupDescription =>
      'Резервне копіювання та синхронізація завдань';

  @override
  String get cancel => 'Скасувати';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Рекомендую включити все наступне, оскільки це допомагає мені вирішити Вашу проблему. Це не включає жодної особистої інформації.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Яку додаткову інформацію Ви хотіли б включити?';

  @override
  String get chooseFeedbackWay => 'Куди Ви хочете залишити відгук?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Завдання завершено.';

  @override
  String get copiedToClipboard => 'Текст скопійовано в буфер обміну.';

  @override
  String get customAccentPicker => 'Акцентний колір';

  @override
  String get customAccentPickerDescription =>
      'Оберіть власний колір акценту для теми додатка';

  @override
  String get darkMode => 'Темнa';

  @override
  String get deleteCompletedAfter => 'Автовидалення завершених';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Видаляти після $duration';
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
      other: '$countString завдань',
      one: 'одне завдання',
    );
    return 'Видалено $_temp0.';
  }

  @override
  String get description => 'Опис';

  @override
  String get design => 'Дизайн';

  @override
  String get designDescription => 'Змінити зовнішній вигляд Doable';

  @override
  String get disable => 'Вимкнути';

  @override
  String get discard => 'Відкинути';

  @override
  String get doContinue => 'Продовжити';

  @override
  String get done => 'Зроблено';

  @override
  String get dynamicColors => 'Динамічні кольори';

  @override
  String get dynamicColorsDescription =>
      'Використовувати системні кольори (Android 12+)';

  @override
  String get email => 'Електронна адреса';

  @override
  String get enable => 'Увімкнути';

  @override
  String get enabled => 'Увімкнено';

  @override
  String get export => 'Експорт';

  @override
  String get exportAllTodos => 'Експортувати всі завдання';

  @override
  String exportEvery(String duration) {
    return 'Експортувати кожні $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Докладне пояснення, що пішло не так / як це сталося.';

  @override
  String get feedbackHeader =>
      'Будь ласка, заповніть форму нижче, щоб допомогти мені зрозуміти, що пішло не так.';

  @override
  String get feedbackTitleHelp => 'Короткий підсумок події.';

  @override
  String get general => 'Загальне';

  @override
  String get generalDescription => 'Змінити загальну поведінку додатка';

  @override
  String get giveFeedback => 'Зворотний зв\'язок';

  @override
  String get highlightOverdue => 'Виділяти прострочені';

  @override
  String get highlightOverdueDescription =>
      'Прострочені завдання виділяти так само, як завдання із зірочкою';

  @override
  String get highlightToday => 'Виділяти сьогоднішні';

  @override
  String get highlightTodayDescription =>
      'Завдання, які потрібно виконати сьогодні, виділяти так само, як завдання із зірочкою';

  @override
  String get importLocalBackupError =>
      'Файл не вдалося імпортувати. Ви впевнені, що його створено Doable?';

  @override
  String get importTodosFromFile => 'Імпортувати файл';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString завдань',
      one: 'одне завдання',
      zero: '0 завдань',
    );
    return 'Імпортовано $_temp0.';
  }

  @override
  String get installedFrom => 'Встановлено з';

  @override
  String get introDoubleTap => 'Подвійне натискання';

  @override
  String get introDoubleTapDescription =>
      'Ви можете двічі натиснути на завдання, які мають опис, щоб розгорнути їх. При розгортанні відображається повний опис, і Ви можете взаємодіяти з посиланнями тощо.\n\nМожете спробувати це на прикладі прямо тут!';

  @override
  String get introDoubleTapTodoDescription =>
      'Торт — це брехня!\n\nДізнайтеся більше тут:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Купити новий торт';

  @override
  String get introLinks => 'Посилання, телефони, електронні адреси';

  @override
  String get introLinksDescription =>
      'При додаванні в опис посилань, номерів телефонів або адрес електронної пошти, вони будуть автоматично підсвічуватися і з ними можна буде взаємодіяти.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Ви також можете синхронізувати свої завдання з екземпляром Nextcloud. Якщо хочете, можете увійти прямо тут!';

  @override
  String get introStar => 'Зірки';

  @override
  String get introStarDescription =>
      'Позначте завдання зірочкою,\nщоб виділити його серед інших.\n\nДоторкніться до зірки нижче, щоб випробувати її!';

  @override
  String get introTodos => 'Завдання';

  @override
  String get introTodosDescription =>
      'При створенні нового завдання можна додавати різні речі. Наприклад, Ви можете додати дату, коли завдання стає актуальним, або можете позначити його зірочкою, щоб виділити його серед інших! Можна також додати опис із посиланнями або іншою інформацією, пов\'язаною із завданням.';

  @override
  String get introWelcome => 'Вітаємо в Doable!';

  @override
  String get introWelcomeDescription =>
      'Простий додаток для завдань із сучасним дизайном\nта інтеграцією з Nextcloud.';

  @override
  String get keepEditing => 'Продовжити редагування';

  @override
  String get left => 'Ліворуч';

  @override
  String get licenses => 'Ліцензії';

  @override
  String get licensesDescription => 'Відкритий код та ліцензії Flutter';

  @override
  String get localStorage => 'Локальне сховище';

  @override
  String get logIn => 'Увійти';

  @override
  String get logOut => 'Вийти';

  @override
  String get logOutputs => 'Логи';

  @override
  String get markCompleted => 'Позначити як виконане';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Позначити як незавершене';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Підтримка розмітки Markdown';

  @override
  String get mayNotBeEmpty => 'Не може бути порожнім';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Додає підтримку базового синтаксису розмітки Markdown в описі та заголовку Ваших завдань.\n\nПовний список опцій синтаксису можна знайти тут\nhttps://www.markdownguide.org/cheat-sheet/.\n\nОднак, цей додаток підтримує **не всі** специфікації Markdown. Підтримуються такі елементи:\n\n- **Розмітка тексту:**\n  - **Жирний**\n  - *Курсив*\n  - ~~Закреслений~~\n  - __Підкреслений__ (`__підкреслений__`)\n  - ==Виділений==\n  - [Посилання](https://www.markdownguide.org/cheat-sheet/)\n  - `Вбудований код`\n- **Списки:**\n  1. Нумерований список\n  2. Маркований список\n  3. Список завдань\n- **Блоки:**\n  - Блоки коду\n  - Цитати';

  @override
  String get moveImportantToTop => 'Перемістити важливе в початок';

  @override
  String get moveImportantToTopDescription =>
      'Якщо увімкнено, то завдання, позначені зірочкою, завжди відображатимуться вгорі списку';

  @override
  String get moveUpWhenUpdated => 'Відображати зміни у списку';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Завдання переміщаються на перше місце в списку після зміни';

  @override
  String get ncBaseUrl => 'Сервер';

  @override
  String get ncBaseUrlHint => 'URL веб-інтерфейсу Nextcloud';

  @override
  String get ncDirectory => 'Каталог';

  @override
  String get ncFileIn => 'Файл зберігається в';

  @override
  String get ncLogOut => 'Вихід з Nextcloud';

  @override
  String get ncLogOutMessage =>
      'При виході з системи Ваші збережені облікові дані будуть видалені. Однак файл, збережений на Вашому сервері Nextcloud, збережеться.';

  @override
  String get ncLoggedInAs => 'Увійшли як';

  @override
  String get ncPassword => 'Пароль';

  @override
  String get ncUser => 'Користувач';

  @override
  String get never => 'Ніколи';

  @override
  String get newSubTodo => 'Субзавдання';

  @override
  String get newTodo => 'Нове завдання';

  @override
  String get next => 'Далі';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Завдань не залишилося, молодець!';

  @override
  String get notAValidUrl => 'Неправильна URL-адреса';

  @override
  String get off => 'Вимкнено';

  @override
  String get ok => 'Так';

  @override
  String get on => 'Увімкнено';

  @override
  String get optional => 'Необов\'язково';

  @override
  String get pickAColor => 'Оберіть колір';

  @override
  String get pickerPrimary => 'Стандарт';

  @override
  String get pickerWheel => 'Нестандартний';

  @override
  String get popupMenuDeleteCompleted => 'Видалити завершені';

  @override
  String get popupMenuHideCompleted => 'Приховати завершені';

  @override
  String get popupMenuShowCompleted => 'Показати завершені';

  @override
  String get quoteDoubleLeft => '«';

  @override
  String get quoteDoubleRight => '»';

  @override
  String get quoteSingleLeft => '„';

  @override
  String get quoteSingleRight => '“';

  @override
  String get relevantDate => 'Термін виконання';

  @override
  String get required => '*необхідно';

  @override
  String get reset => 'Скинути';

  @override
  String get right => 'Праворуч';

  @override
  String get save => 'Зберегти';

  @override
  String get settings => 'Налаштування';

  @override
  String get showCompletedTodos => 'Показати завершені';

  @override
  String get showCompletedTodosDescription =>
      'Показати завершені завдання у списку';

  @override
  String get showIntroScreen => 'Знову показати вступний екран';

  @override
  String get sortNewestFirst => 'Найновіше перше';

  @override
  String get sortNewestFirstDescription => 'Більш свіжі дати показані вгорі';

  @override
  String get sortNoRelevantDate => 'Без дати';

  @override
  String get sortOverdue => 'Прострочені';

  @override
  String get sortRelevantDate => 'З датою';

  @override
  String get sortStarred => 'Із зірочкою';

  @override
  String get sortToday => 'Спливають сьогодні';

  @override
  String get sorting => 'Сортування';

  @override
  String get sortingDescription =>
      'Порядок, в якому будуть сортуватися завдання';

  @override
  String get submitFeedback => 'Надіслати';

  @override
  String get syncCorruptedFile => 'Файл резервної копії, схоже, пошкоджений.';

  @override
  String get syncDirectoryDoesNotExist => 'Вказаного каталогу не існує.';

  @override
  String get syncNcMaintenance =>
      'Nextcloud знаходиться в режимі технічного обслуговування.';

  @override
  String get syncNoInternetConnection => 'Немає підключення до Інтернету.';

  @override
  String get syncNotNcServer =>
      'Не вдалося знайти сервер Nextcloud за цією адресою.';

  @override
  String get syncServiceUnavailable => 'Nextcloud недоступний.';

  @override
  String get syncSuccessful => 'Успішно синхронізовано.';

  @override
  String get syncUnknownError => 'Виникла невідома помилка.';

  @override
  String get syncWrongUrl => 'Вказана Вами адреса, схоже, є неправильною.';

  @override
  String get syncWrongUserOrPassword =>
      'Вказано неправильне ім\'я користувача або пароль.';

  @override
  String get system => 'Система';

  @override
  String get systemInfo => 'Система';

  @override
  String get thankYouForFeedback => 'Дякуємо за Ваш відгук!';

  @override
  String get title => 'Назва';

  @override
  String get titleMayNotBeEmpty => 'Заголовок не може бути порожнім';

  @override
  String get today => 'Сьогодні';

  @override
  String get todoSearch => 'Шукати завдання';

  @override
  String get todoSearchDescription =>
      'Додайте кнопку пошуку до списку завдань, щоб Ви могли шукати по своїх завданнях.';

  @override
  String get tomorrow => 'Завтра';

  @override
  String get treatTodayAsIsImportant => 'Обробляти сьогоднішні як важливі';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Якщо увімкнено, то сьогоднішні завдання будуть оброблятися так само, як і позначені зірочкою';

  @override
  String get trimTodoTexts => 'Обрізати текст завдань';

  @override
  String get trimTodoTextsDescription =>
      'Якщо увімкнено, обрізає пробіли в заголовку та описі завдань';

  @override
  String get trueBlackMode => 'Режим істинного чорного';

  @override
  String get trueBlackModeDescription =>
      'Робить фон чорним, особливо корисно для оледних пристроїв';

  @override
  String get turnOff => 'Вимкнути';

  @override
  String get turnOn => 'Увімкнути';

  @override
  String get undo => 'Скасувати';

  @override
  String get update => 'Оновити';

  @override
  String get updateCredentials => 'Оновити облікові дані';

  @override
  String get useCustomTabs => 'Використовуйте браузер у додатку';

  @override
  String get useCustomTabsDescription =>
      'Використовуйте вбудований браузер для відкриття посилань';

  @override
  String get whatsNew => 'Що нового?';

  @override
  String get yesterday => 'Вчора';

  @override
  String get error => 'Помилка';

  @override
  String get routingError =>
      'Упс! Схоже, щось пішло не так, і Ви потрапили на сторінку, якої, ну, не існує. Я дуже перепрошую за це!';

  @override
  String get goToHome => 'На головну';

  @override
  String get pageNotFound => 'Сторінку не знайдено';

  @override
  String get updateDoable => 'Оновлення Doable';

  @override
  String get download => 'Завантажити';

  @override
  String get install => 'Встановити';

  @override
  String get installed => 'Встановлено';

  @override
  String get updateNotInstalled => 'Оновлення не було встановлено.';

  @override
  String get skipVersion => 'Пропустити цю версію';

  @override
  String get couldNotDownloadUpdate => 'Не вдалося завантажити оновлення.';

  @override
  String versionWithNumber(String version) {
    return 'Версія $version';
  }

  @override
  String get autoUpdates => 'Автооновлення';

  @override
  String get autoUpdatesDescription => 'Автоматична перевірка оновлень';

  @override
  String get introExtensions => 'Розширення? Розширення!';

  @override
  String get introExtensionsDescription =>
      'Розширення дозволяють розширити та збільшити набір функцій Doable. Вони дають Вам можливість вибрати, як саме Ви хочете використовувати Doable. Якщо хочете переглянути всі доступні розширення, просто натисніть кнопку нижче!';

  @override
  String get introExtensionsButton => 'Розширяйтеся!';

  @override
  String get useBottomSheetMenu => 'Використовуйте меню внизу аркуша';

  @override
  String get useBottomSheetMenuDescription =>
      'Використовувати нижній аркуш замість випадаючого меню';

  @override
  String get contributors => 'Співавтори';

  @override
  String get contributorDescription =>
      'Люди, які допомогли Doable стати тим, чим він є';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'URL-адреса сервера WebDAV';

  @override
  String get webdavLogOutMessage =>
      'При виході з системи Ваші збережені облікові дані будуть стерті. Однак збережений файл залишиться.';

  @override
  String get importExport => 'Імпорт і експорт';

  @override
  String get chooseDirectory => 'Виберіть каталог';

  @override
  String get forgetDirectory => 'Забудьте каталог';

  @override
  String get newStarredTodo => 'Нове завдання із зірочкою';

  @override
  String get allTodos => 'Усі завдання';

  @override
  String get newTodoList => 'Новий список';

  @override
  String get deleteTodoList => 'Видалити список';

  @override
  String get editTodoList => 'Редагувати список';

  @override
  String get lists => 'Списки';

  @override
  String get listsDescription =>
      'Створюйте списки і сортуйте за ними свої завдання. Можна створити необмежену кількість списків з доступом через шухляду на головному екрані.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Ви збираєтеся видалити список $listName з усіма завданнями в ньому. Ця дія є остаточною і не може бути скасована.';
  }

  @override
  String markBeta(String element) {
    return '$element (бета)';
  }

  @override
  String get list => 'Список';

  @override
  String get share => 'Поділитися';

  @override
  String get font => 'Шрифт';

  @override
  String get fontDescription =>
      'Натисніть і утримуйте, щоб побачити назви шрифтів';

  @override
  String get popUpAnimationOverSlideAnimation =>
      'Стара анімація переходу між сторінками';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Використовуйте старий спливаючий стиль переходу сторінок';

  @override
  String get restart => 'Перезавантажити';

  @override
  String get later => 'Згодом';

  @override
  String get restartRequired => 'Необхідне перезавантаження';

  @override
  String get restartRequiredForSetting =>
      'Необхідно перезавантажити додаток, щоб це налаштування запрацювало.';

  @override
  String get image => 'Зображення';

  @override
  String get expandTodos => 'Розгорнути завдання';

  @override
  String get showTodoListNames => 'Показати імена списків';

  @override
  String get includeBranding => 'Включити брендинг';

  @override
  String get doableBrandingText =>
      'Поширено з Doable, простого, сучасного та зручного додатка для завдань.\nЗавантажити Doable можна тут: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'Виберіть, як Ви хочете ділитися своїми завданнями';

  @override
  String get options => 'Параметри';

  @override
  String get reduceMotion => 'Зменшити рух';

  @override
  String get reduceMotionDescription => 'Зменшити рух анімації';

  @override
  String get contribute => 'Зробити внесок';

  @override
  String get contributeWantYourNameHere => 'Хочете, щоб Ваше ім\'я було тут?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Зробіть свій внесок у Doable безпосередньо або допоможіть з перекладом!';

  @override
  String get onlySymbolInDetailViewFab => 'Іконка замість тексту';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Використовуйте піктограму замість тексту в детальному перегляді завдань';

  @override
  String get allSelected => 'Вибрано все';

  @override
  String get sharedTextAsTitle => 'Спільний текст як заголовок';

  @override
  String get sharedTextAsTitleDescription =>
      'Використовуйте текст, доступний на Doable, як назву нового завдання замість його опису';

  @override
  String get noTodoLists =>
      'Наразі у Вас немає жодного списку.\nСтворіть новий, щоб почати!';

  @override
  String forExample(String example) {
    return 'приклад: $example';
  }

  @override
  String get clearSelection => 'Очистити вибір';

  @override
  String get syncConnectionTimedOut => 'Час з\'єднання закінчився.';

  @override
  String get syncTooManyTimeOuts =>
      'Сервер завершив роботу занадто багато разів. Синхронізацію вимкнено до перезапуску програми.';

  @override
  String get todoToCalendar => 'Додати завдання в календар';

  @override
  String get logs => 'Журнали';

  @override
  String get logsDescription => 'Показати увесь журнал, який Doable заповнює';

  @override
  String get aboutToClearAllLogs =>
      'Ви збираєтеся видалити всі журнали, що зробить їх недоступними для зворотного зв\'язку та вирішення проблем. Ця дія є остаточною і не може бути скасована.';

  @override
  String get clearAllLogs => 'Очистити журнал';

  @override
  String get noLogsYet =>
      'Наразі немає журналів, які можна було б переглянути.';

  @override
  String get dateFormat => 'Формат дати';

  @override
  String get timeFormat => 'Формат часу';

  @override
  String get shareAllLogs => 'Поділитися журналом';

  @override
  String get copyAllLogs => 'Скопіювати всі журнали';

  @override
  String get whatWentWrong => 'Що ж пішло не так?';

  @override
  String get fixCorruptBackupFile =>
      'Файл резервної копії Doable неможливо прочитати, ймовірно, він пошкоджений. Doable може спробувати виправити це, видаливши поточний файл резервної копії і створивши новий. Це призведе до видалення всіх змін, зроблених на інших серверах Doable з використанням того ж файлу резервної копії.';

  @override
  String get initializingNextcloud => 'Ініціалізація Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Змінити каталог';

  @override
  String get dueDate => 'Термін виконання';

  @override
  String get dragToReorder => 'Перетягніть, щоб змінити порядок';

  @override
  String get copySettings => 'Скопіювати налаштування';

  @override
  String get copySystemInfo => 'Скопіювати інформацію про систему';

  @override
  String get languageNameInEnglish => 'Ukrainian';

  @override
  String get languageNameInNativeLanguage => 'Українська';

  @override
  String get createSummaryForBugReport => 'Створити резюме';

  @override
  String get createSummaryForBugReportDetails =>
      'Створить звіт, що міститиме інформацію про систему, налаштування Doable і журнал. Це може бути корисним для звітування про помилки/збої та допомогти з вирішенням проблем.';

  @override
  String get bugReport => 'Звіт про помилку';

  @override
  String get bugReportSupportingText =>
      'Будь ласка, виберіть, що саме Ви хочете включити в повідомлення про помилку. Чим більше інформації Ви надасте, тим легше буде з\'ясувати, що саме пішло не так. **Особиста інформація не передається.**';

  @override
  String get shareBugReport => 'Надіслати звіт про ваду';

  @override
  String get fontSize => 'Розмір шрифту';

  @override
  String get fontSizeDescription => 'Перевизначити розмір системного шрифту';

  @override
  String get decrease => 'Зменшити';

  @override
  String get increase => 'Збільшити';

  @override
  String get customSecondaryAccentPicker => 'Вторинний колір';

  @override
  String get customTertiaryAccentPicker => 'Третинний колір';

  @override
  String get advancedColorOptions => 'Додаткові параметри кольору';

  @override
  String get uploadCustomColorScheme => 'Завантажте власну колірну схему';

  @override
  String get downloadCurrentColorScheme => 'Завантажити поточну колірну схему';

  @override
  String get markAsStarred => 'Позначити завдання зірочкою';

  @override
  String get setTime => 'Задати час';

  @override
  String get thereAreNoLists => 'Поки що немає жодних списків';

  @override
  String get closeDetailsOnCompelte =>
      'Закрити детальну інформацію після завершення';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Зберігає завдання і закриває його детальний перегляд при натисканні кнопки «Завершити».';

  @override
  String get customColorTheme => 'Спеціальна кольорова тема';

  @override
  String get discardCustomColorTheme =>
      'Ви збираєтеся відкинути всі зміни, внесені до колірної теми.';

  @override
  String get lightMode => 'Світла';

  @override
  String get deletedCustomColorTheme => 'Власну кольорову тему видалено.';

  @override
  String get customThemeInfo =>
      'Тут Ви можете змінювати токен будь-якого кольору на свій розсуд. Ви також можете імпортувати/експортувати кольори у файл `json` і редагувати їх там!\n\nЯкщо хочете зрозуміти, що робить кожен токен, будь ласка, відвідайте цей веб-сайт: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Імпорт';

  @override
  String get customThemeFuckedFile =>
      'Цей файл не містить правильної колірної теми. Будь ласка, переконайтеся, що Ваш файл має той самий стиль і структуру, що й експортований.';

  @override
  String get markdownBold => 'Жирний';

  @override
  String get markdownItalic => 'Курсив';

  @override
  String get markdownMonospace => 'Моноширинний';

  @override
  String get markdownHighlight => 'Виділений';

  @override
  String get fediChooseInstance => 'Виберіть свій сервер';

  @override
  String get fediInstanceUrl => 'URL сервера';

  @override
  String get fediRememberInstance => 'Запам\'ятати мій сервер';

  @override
  String get fediDoablePost =>
      'Щойно вдалося закінчити всі свої завдання завдяки @Doable@floss.social!\n\nЗвучить цікаво? Ви можете дізнатися більше про #Doable, відвідавши https://repo.doable.at!';

  @override
  String get doable => 'Doable — сучасний і простий додаток для завдань';

  @override
  String get rrRepeatsEvery => 'Повторюється кожні';

  @override
  String get rrRepeatsOn => 'Повторюється';

  @override
  String get rrEnds => 'Закінчується';

  @override
  String get week => 'тиждень';

  @override
  String get weeks => 'тижнів';

  @override
  String get day => 'день';

  @override
  String get days => 'днів';

  @override
  String get month => 'місяць';

  @override
  String get months => 'місяців';

  @override
  String get year => 'рік';

  @override
  String get years => 'років';

  @override
  String get onFollowedByDate => 'На';

  @override
  String get rrAfterOccurrences => 'Після';

  @override
  String get occurrence => 'повтор';

  @override
  String get occurrences => 'повторів';

  @override
  String get rrCustomRecurrence => 'Вказати повторюваність';

  @override
  String get daily => 'Щодня';

  @override
  String get weekly => 'Щотижня';

  @override
  String get monthly => 'Щомісяця';

  @override
  String get yearly => 'Щороку';

  @override
  String get doesNotRepeat => 'Не повторюється';

  @override
  String get rrRecurrence => 'Повторюваність';

  @override
  String get recurringTodos => 'Повторювані завдання';

  @override
  String get recurringTodosDescription =>
      'Додайте до своїх завдань повторюваність — дозвольте Doable автоматично переплановувати їх, коли Ви їх завершите. Завдання буде перенесено на відповідну дату та встановлений Вами розклад. Якщо Ви не вказали термін виконання свого завдання, замість нього буде використано дату створення завдання.\n\n**Будь ласка, майте на увазі, що можливість встановлення повторюваності для завдань в Doable зараз обмежена англійською мовою.**';

  @override
  String get post => 'Опублікувати';

  @override
  String get rrRepeats => 'Повтор';

  @override
  String get beta => 'Бета';

  @override
  String get extensionBetaWarningDescription =>
      'Це розширення все ще на стадії розробки, під час його використання Ви можете зіткнутися з деякими проблемами. Пам\'ятайте про ризики та повідомте мене, якщо у Вас виникнуть проблеми!';

  @override
  String get extensionBetaWarning => 'Увімкнути бета-розширення?';

  @override
  String get showFediButton => 'Показувати кнопку «Опублікувати»';

  @override
  String get showFediButtonDescription =>
      'Показувати кнопку для публікування у Федісвіті допису про Ваш порожній список';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get enableNotifications => 'Увімкнути сповіщення';

  @override
  String get notifyAll => 'Усі завдання';

  @override
  String get notifyAllDescription =>
      'Сповіщати про всі завдання з терміном виконання';

  @override
  String get notifyTimeOnly => 'Тільки завдання з часом';

  @override
  String get notifyTimeOnlyDescription =>
      'Сповіщати тільки про завдання, для яких вказано і термін виконання, і час';

  @override
  String get notifyTodosChannelName => 'Завдання';

  @override
  String get notificationsDescription =>
      'Дозволити Doable сповіщати Вас, коли Ваші завдання потрібно виконати. Ви можете також змінити, для яких завдань отримуватимете сповіщення.';

  @override
  String get notificationsDescriptionShort =>
      'Виберіть, про які завдання Ви отримуватимете сповіщення';

  @override
  String get notifyNeverDescription =>
      'Не отримувати жодних сповіщень про завдання';

  @override
  String get defaultNotificationTime => 'Час сповіщення за замовчуванням';

  @override
  String get defaultNotificationTimeDescription =>
      'Час, коли Ви отримаєте сповіщення про завдання, для яких не вказано часу';

  @override
  String get addImage => 'Додати зображення';

  @override
  String get todoImages => 'Зображення';

  @override
  String get todoImagesDescription =>
      'Додайте зображення до своїх завдань, щоб додати більше контексту до того, що Ви пишете.\n\n**На жаль, зображення поки що не синхронізуються.**';

  @override
  String get clearInputField => 'Очистити поле введення';

  @override
  String get removeImage => 'Видалити зображення';

  @override
  String get apkSignatureInvalid => 'Недійсний підпис';

  @override
  String get apkSignatureInvalidDescription =>
      'Не вдалося перевірити підпис завантаженого файлу APK. Будь ласка, повідомте розробника про цю проблему. Можете продовжити встановлення APK на свій ризик, ми рекомендуємо бути обережними через потенційні проблеми безпеки.';

  @override
  String get searchTodos => 'Пошук у завданнях';

  @override
  String get editTodo => 'Редагувати завдання';

  @override
  String get previewTodo => 'Попередній перегляд';

  @override
  String get readerMode => 'Режим читання';

  @override
  String get readerModeDescription =>
      'Можливість попереднього перегляду завдань на екрані редагування.';

  @override
  String get noList => 'Немає списку';

  @override
  String get chooseAList => 'Виберіть список';

  @override
  String get readerModeDescriptionShort =>
      'Змініть режим, в якому мають відкриватися завдання';

  @override
  String get lastUsed => 'Останній використаний';

  @override
  String get syncFileLocked =>
      'Сервер заблокував файл резервної копії. Спробуйте ще раз приблизно через 15 хвилин.';

  @override
  String get syncInternalError =>
      'Виникла внутрішня помилка. Вибачте за незручності.';

  @override
  String get syncConnectionError =>
      'Під час з\'єднання з сервером сталася помилка.';

  @override
  String get restore => 'Відновити';

  @override
  String get loggingNextcloudIn => 'Вхід у Nextcloud…';

  @override
  String get initializingWebdav => 'Ініціалізація WebDAV…';

  @override
  String get migratingNextcloudToRemote =>
      'Перенесення Nextcloud на нову реалізацію синхронізації…';

  @override
  String get migratingWebdavToRemote =>
      'Перенесення WebDAV на нову реалізацію синхронізації…';

  @override
  String get migrateToRemotes => 'Міграція';

  @override
  String get migrateToRemotesDescription =>
      'Doable нещодавно змінив спосіб синхронізації з Nextcloud і WebDAV. На жаль, нова реалізація несумісна з попередніми версіями, тому необхідно здійснити міграцію. Doable знадобиться хвилина, щоб перенести все, що йому потрібно.\n\nЯкщо відкласти це на потім, Ви можете зіткнутися з повідомленнями про помилки, оскільки нову реалізацію ще не налаштовано.';

  @override
  String get fixBrokenRemoteFile =>
      'Імовірно, файл резервної копії Doable пошкоджений. Doable може це виправити, замінивши поточним локальним значенням. Це перевизначить будь-які зміни, внесені іншими пристроями після того, як сталася ця помилка.';

  @override
  String get fixedBrokenRemoteFile => 'Пошкоджений файл успішно відновлено.';

  @override
  String get unfixableRemoteFile => 'Файл не вдалося відновити.';

  @override
  String get syncFileDoesNotExist => 'Файл резервної копії Doable не існує.';

  @override
  String get todos => 'Завдання';

  @override
  String get selectWhatToExport => 'Виберіть, що Ви хочете експортувати.';

  @override
  String get exportFile => 'Експортувати файл';

  @override
  String get listColor => 'Колір списку';

  @override
  String get listColorAsAccent => 'Колір списку як акцентний';

  @override
  String get listColorAsAccentDescription =>
      'Використовувати колір поточного списку як акцентний колір для Doable';

  @override
  String get privacy => 'Конфіденційність';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get openSource => 'Відкритий код';

  @override
  String get sourceCode => 'Вихідний код';

  @override
  String get contact => 'Контакт';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'Увесь вихідний код Doable доступний на Codeberg за ліцензією FOSS. Там Ви також можете повідомляти про проблеми та надсилати запити на злиття (pull requests). На Codeberg також можна знайти репозиторій F-Droid для Doable!';

  @override
  String get aboutPrivacy =>
      'Doable не збирає про Вас жодної особистої інформації. Все, що зберігає Doable про Ваше користування, це журнали. Однак ці журнали **не завантажуються автоматично.** Єдиний спосіб, яким журнали залишають Ваш пристрій, це якщо Ви вирішите поділитися ними, наприклад, щоб допомогти мені виправити помилку.';

  @override
  String get httpWarning => 'Незашифроване з\'єднання';

  @override
  String get cancelling => 'Скасування…';

  @override
  String get httpWarningDescription =>
      'Ви намагаєтеся підключитися до HTTP-сервера замість безпечнішого HTTPS-сервера. Використання HTTP не рекомендується, оскільки дані надсилаються на сервер у незашифрованому вигляді, що створює потенційні ризики безпеці. Однак існують певні випадки використання, як-от локальний сервер. Ви впевнені, що хочете продовжити з HTTP?';

  @override
  String get enableNotificationReminder => 'Сповіщення про нагадування';

  @override
  String get pickNotificationReminderDuration => 'Нагадувати через';

  @override
  String get hours => 'годин';

  @override
  String get minutes => 'хвилин';

  @override
  String get enableNotificationSound => 'Сповіщати звуком';

  @override
  String get enableNotificationSoundDescription =>
      'Програвати вказаний звук, коли спрацьовує сповіщення';

  @override
  String get interval => 'Інтервал';

  @override
  String get secondly => 'Щосекунди';

  @override
  String get minutely => 'Щохвилини';

  @override
  String get hourly => 'Щогодини';

  @override
  String get second => 'Секунда';

  @override
  String get startOfTheWeek => 'Початок тижня';

  @override
  String get hideList => 'Сховати список';

  @override
  String get showList => 'Показати список';

  @override
  String get showListDescription =>
      'Показувати в огляді завдання з цього списку.';

  @override
  String get hideListDescription =>
      'Не показувати в огляді завдання з цього списку.';

  @override
  String get gotIt => 'Зрозуміло';

  @override
  String get updateRelease =>
      'Відкрийте сторінку випуску Doable та завантажте нову версію';

  @override
  String get updateDownload =>
      'Дозвольте Doable завантажувати для Вас нову версію; Ви знайдете файл в області сповіщень і зможете встановити його, натиснувши на нього';

  @override
  String get updateFdroid =>
      'Якщо Doable встановлено з F-Droid, Ви отримаєте оновлення протягом наступних кількох годин із репозиторію IzzyOnDroid або власного репозиторію Doable';

  @override
  String get updateDisable =>
      'Можна також повністю вимкнути автоматичну перевірку оновлень у налаштуваннях';

  @override
  String get updateChecker => 'Перевірка оновлень';

  @override
  String get whatCanYouDo => 'Що можна зробити?';

  @override
  String get synchronization => 'Синхронізація';

  @override
  String get backup => 'Резервна копія';

  @override
  String get autoExport => 'Автоматичний експорт';

  @override
  String get changeDuration => 'Змінити інтервал';

  @override
  String get autoExportDescription =>
      'Ви можете дозволити Doable автоматично експортувати Ваші завдання, списки та налаштування. Майте на увазі, що Doable створюватиме новий файл для кожного експорту! Виберіть відповідний інтервал між експортами.';

  @override
  String get seconds => 'секунд';

  @override
  String get apkVerifyingSignature => 'Перевірка підпису apk…';

  @override
  String get swipeActions => 'Дії гортанням';

  @override
  String get swipeActionsDescription =>
      'Додає можливість провести пальцем ліворуч по завданнях, щоб позначити їх зірочкою або завершити.\n\n**Зверніть увагу, що це іноді може конфліктувати з панеллю розширення «Списки».**';

  @override
  String get selectedSwipeActions => 'Вибрані дії';

  @override
  String get unselectedSwipeActions => 'Невибрані дії';

  @override
  String get swipeActionComplete => 'Позначити як завершене / незавершене';

  @override
  String get swipeActionExpand => 'Розгорнути завдання';

  @override
  String get swipeActionStar => 'Поставити / зняти зірочкy';

  @override
  String get swipeActionDelete => 'Видалити завдання';

  @override
  String get swipeActionsHideCheck => 'Сховати галочку';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Ховати галочку, коли вибрано $action';
  }

  @override
  String get forceHighestRefreshRate => 'Найвища частота оновлення';

  @override
  String get forceHighestRefreshRateDescription =>
      '(Спробувати) змусити систему використовувати в додатку максимально можливу частоту оновлення';

  @override
  String get overview => 'Огляд';

  @override
  String whatsNewIn(String version) {
    return 'Що нового в $version?';
  }

  @override
  String get expandTodosByDefault => 'Розгортати за замовчуванням';

  @override
  String get expandTodosByDefaultDescription =>
      'Показувати завдання розгорнутими за замовчуванням';

  @override
  String get progress => 'Прогрес';

  @override
  String get progressBar => 'Індикатор прогресу';

  @override
  String get progressBarDescription =>
      'Додає до завдань індикатор прогресу, дозволяючи Вам точніше контролювати стан їх виконання.';

  @override
  String get syncMultipleErrors =>
      'Сервер зіткнувся з численними помилками. Докладніше див. у журналах.';

  @override
  String get deletedCompleted => 'Завершені завдання видалено.';

  @override
  String get dateRange => 'Діапазон';

  @override
  String get next3Days => 'Наступні 3 дні';

  @override
  String get dateFilters => 'Фільтр за датою';

  @override
  String get dateFiltersDescription =>
      'Додайте можливість фільтрувати свої завдання за визначеним діапазоном дат.';

  @override
  String get exportedFile => 'Файл експортовано.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Увімкніть розширення $extensionName, щоб користуватися цією функцією.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Показує прапори гордості за рядком заголовка в певні місяці';

  @override
  String get enablePrideFlags => 'Увімкнути прапори гордості';

  @override
  String get prideFlagRestOfYear => 'Прапор гордості відображається цілий рік';

  @override
  String get addNotification => 'Додати сповіщення';

  @override
  String get unselected => 'Не вибрано';

  @override
  String get selected => 'Вибрано';

  @override
  String get nothingSelected => 'Не вибрано нічого';

  @override
  String get halfHourBefore => 'За пів години до';

  @override
  String get defaultNotifications => 'Сповіщення за замовчуванням';

  @override
  String get aDayAfter => 'Через день після';

  @override
  String get atTimeOfTodo => 'У час завдання';

  @override
  String get aWeekBefore => 'За тиждень до';

  @override
  String get aDayBefore => 'За день до';

  @override
  String get anHourBefore => 'За годину до';

  @override
  String get defaultNotificationsDescriptionIfLists =>
      'Можна вибрати різні сповіщення для кожного списку.';

  @override
  String get halfHourAfter => 'Через пів години після';

  @override
  String get customNotificationTime => 'Вказати час сповіщень';

  @override
  String get defaultNotificationsDescription =>
      'Виберіть сповіщення за замовчуванням, які будуть додаватися до кожного завдання з відповідною датою.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сповіщень',
      one: 'Одне сповіщення',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Сповіщення для';

  @override
  String get deleteListSettings => 'Видалити налаштування списку';

  @override
  String get snooze => 'Відкласти';

  @override
  String get snoozeDurationDescription =>
      'Час, на який затримується сповіщення при натисканні кнопки «Відкласти»';

  @override
  String get snoozeDuration => 'Тривалість';

  @override
  String get sortStarredToday => 'Із зірочкою сьогоднішні';

  @override
  String get sortStarredOverdue => 'Із зірочкою прострочені';

  @override
  String get sortByTitle => 'За назвою';

  @override
  String get sortByCreationDate => 'За датою створення';

  @override
  String get sortStarredRelevantDate => 'Із зірочкою з датою';

  @override
  String get sortDescending => 'За спаданням';

  @override
  String get sortAscending => 'За зростанням';

  @override
  String get sortByRelevantDate => 'За терміном виконання';

  @override
  String get sortByLastEdited => 'За датою редагування';

  @override
  String get sortingLabel => 'Сортування';

  @override
  String get groupsLabel => 'Групи';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable сортує Ваші завдання, спочатку групуючи їх, а потім сортуючи кожну групу окремо, перед тим, як зібрати їх разом. На вкладці $groups можна вибрати, які групи створюватиме Doable і в якому порядку. На вкладці $sorting можна вибрати, як Doable сортуватиме кожну групу та порядок їхньої важливості.';
  }

  @override
  String get hideForever => 'Не показувати знову';

  @override
  String get sortingHelp => 'Групи і сортування';

  @override
  String get info => 'Інформація';

  @override
  String get aboutToCancelChangesToList =>
      'Ви збираєтеся відкинути всі зміни, зроблені в цьому списку.';

  @override
  String get notificationsAlwaysPreview =>
      'Сповіщення завжди в попередньому перегляді';

  @override
  String get notificationsAlwaysPreviewDescription =>
      'Завжди відкривати сповіщення в режимі попереднього перегляду (Це не впливає на режим, який використовувався востаннє)';

  @override
  String get nextcloudWipeDescription =>
      'Doable отримав запит на видалення всіх даних, пов\'язаних з обліковим записом Nextcloud, за допомогою якого Ви увійшли. Тому зараз Ви вийдете з облікового запису. Якщо бажаєте, можете також видалити всі дані додатка (завдання і списки). Ця дія є остаточною і не може бути скасована.';

  @override
  String get nextcloudWipe => 'Віддалене очищення Nextcloud';

  @override
  String get wipeData => 'Стерти дані';

  @override
  String get keepData => 'Залишити дані';

  @override
  String get imageInserted => 'Зображення додано';

  @override
  String get useSystemFont => 'Системний шрифт';

  @override
  String get useSystemFontDescription =>
      'Використовувати системний шрифт як основний шрифт для Doable';

  @override
  String get batteryOptimization => 'Оптимізація заряду акумулятора';

  @override
  String get batteryOptimizationDescription =>
      'Doable налаштовано на оптимізацію для економії заряду акумулятора. Зазвичай це не є проблемою, але може призвести до помилок під час входу в Nextcloud. Для забезпечення безперебійної роботи, будь ласка, вимкніть оптимізацію заряду.';

  @override
  String get couldNotAddTodoToCalendar =>
      'Не вдалося додати завдання в календар.';

  @override
  String get sortCompleted => 'Сортувати завершені';

  @override
  String get sortCompletedDescription =>
      'Застосовувати сортування і до завершених завдань';
}
