import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class StringsRu extends Strings {
  StringsRu([String locale = 'ru']) : super(locale);

  @override
  String get about => 'О приложении';

  @override
  String get aboutDescription => 'Информация о приложении';

  @override
  String get aboutOSInfo => 'Исходный код: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nПолитика конфиденциальности: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid репозиторий: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Отменить изменения?';

  @override
  String get aboutToCancelChangesDescription => 'Вы собираетесь отменить все изменения, сделанные в этом Todo.';

  @override
  String get aboutToCancelFeedback => 'Отменить отзыв?';

  @override
  String get aboutToCancelFeedbackDescription => 'Вы собираетесь отменить ваш отзыв. Это действие необратимо.';

  @override
  String get aboutToDeleteCompleted => 'Вы собираетесь удалить все выполненные задачи. Это действие необратимо.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString задач',
      one: 'одну задачу',
    );
    return 'Вы собираетесь удалить $_temp0. Это действие необратимо.';
  }

  @override
  String get additionalFeatures => 'Расширения';

  @override
  String get additionalFeaturesDescription => 'Функции, которые делают Doable более мощным';

  @override
  String get alignTodoCheck => 'Галочка справа';

  @override
  String get alignTodoCheckDescription => 'Показывать отметку задачи с правой стороны';

  @override
  String get appLanguage => 'Язык приложения';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Внимание';

  @override
  String get back => 'Назад';

  @override
  String get syncAndBackup => 'Синхронизация & Резервное копирование';

  @override
  String get syncAndBackupDescription => 'Создавайте резервные копии и синхронизируйте ваши задачи';

  @override
  String get cancel => 'Отмена';

  @override
  String get chooseFeedbackExtrasDescription => 'Я рекомендую указать все нижеперечисленное, поскольку это поможет мне в решении вашей проблемы. Это не включает никакой личной информации.';

  @override
  String get chooseFeedbackExtrasTitle => 'Какую дополнительную информацию вы хотели бы включить?';

  @override
  String get chooseFeedbackWay => 'Где вы хотите оставить отзыв?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Задача выполнена.';

  @override
  String get copiedToClipboard => 'Текст скопирован в буфер обмена.';

  @override
  String get customAccentPicker => 'Цвет акцента';

  @override
  String get customAccentPickerDescription => 'Выберите цвет акцента для темы приложения';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get deleteCompletedAfter => 'Авто удаление завершённых';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Удалить после $duration';
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
      other: '$countString задач',
      one: 'одну задачу',
    );
    return 'Удалить $_temp0.';
  }

  @override
  String get description => 'Описание';

  @override
  String get design => 'Дизайн';

  @override
  String get designDescription => 'Измените внешний вид Doable';

  @override
  String get disable => 'Отключить';

  @override
  String get discard => 'Отменить';

  @override
  String get doContinue => 'Продолжить';

  @override
  String get done => 'Готово';

  @override
  String get dynamicColors => 'Динамические цвета';

  @override
  String get dynamicColorsDescription => 'Использовать системные цвета (Android 12+)';

  @override
  String get email => 'Эл. почта';

  @override
  String get enable => 'Включить';

  @override
  String get enabled => 'Включён';

  @override
  String get export => 'Экспортировать';

  @override
  String get exportAllTodos => 'Экспортировать все задачи';

  @override
  String exportEvery(String duration) {
    return 'Экспортировать каждые $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Более подробное объяснение того, что пошло не так / как это произошло.';

  @override
  String get feedbackHeader => 'Пожалуйста, заполните форму ниже, чтобы помочь мне понять, что пошло не так.';

  @override
  String get feedbackTitleHelp => 'Краткая информация о событии.';

  @override
  String get general => 'Общие';

  @override
  String get generalDescription => 'Измените общее поведение приложения';

  @override
  String get giveFeedback => 'Обратная связь';

  @override
  String get highlightOverdue => 'Подсвечивать просроченные';

  @override
  String get highlightOverdueDescription => 'Подсвечивать просроченные задачи так же, как и задачи отмеченные звездочками';

  @override
  String get highlightToday => 'Подсвечивать сегодняшние';

  @override
  String get highlightTodayDescription => 'Подсвечивать задачи, которые должны быть выполнены сегодня, так же, как и задачи, отмеченные звездочками';

  @override
  String get importLocalBackupError => 'Не удалось импортировать файл. Он точно сгенерирован Doable?';

  @override
  String get importTodosFromFile => 'Импортировать файл';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString задач',
      one: 'одна задача',
      zero: 'ноль задач',
    );
    return 'Импортировано $_temp0.';
  }

  @override
  String get installedFrom => 'Установлено из';

  @override
  String get introDoubleTap => 'Двойное нажатие';

  @override
  String get introDoubleTapDescription => 'Вы можете дважды нажать на задачи с описанием, чтобы развернуть его. При развертывании отображается полное описание, и вы можете взаимодействовать со ссылками и т. д.\n\nВы можете попробовать это на примере прямо здесь!';

  @override
  String get introDoubleTapTodoDescription => 'Торт - это ложь!\n\nУзнайте больше здесь:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Купить новый торт';

  @override
  String get introLinks => 'Ссылки, номера телефонов, эл. почта';

  @override
  String get introLinksDescription => 'Когда вы добавляете в описание ссылки, номера телефонов или адреса электронной почты, они автоматически выделяются, и вы можете взаимодействовать с ними.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Вы также можете синхронизировать свои задачи с инстансом Nextcloud. При желании вы можете войти в систему прямо здесь!';

  @override
  String get introStar => 'Важные';

  @override
  String get introStarDescription => 'Добавьте звезду к задаче чтобы\nвыделить её среди других.\n\nНажмите на звезду ниже, чтобы попробовать!';

  @override
  String get introTodos => 'Задачи';

  @override
  String get introTodosDescription => 'При создании новой задачи можно добавить различные параметры. Например, дату, когда задача станет актуальной, или звёздочку, чтобы пометить её как важную! Также можно добавить описание со ссылками или другой информацией, связанной с Todo.';

  @override
  String get introWelcome => 'Добро пожаловать в Doable!';

  @override
  String get introWelcomeDescription => 'Простое приложение для списка задач с современным\nдизайном и интеграцией с Nextcloud.';

  @override
  String get keepEditing => 'Продолжить редактирование';

  @override
  String get left => 'Слева';

  @override
  String get licenses => 'Лицензии';

  @override
  String get licensesDescription => 'Лицензии открытого ПО и Flutter';

  @override
  String get localStorage => 'Локальное хранилище';

  @override
  String get logIn => 'Войти';

  @override
  String get logOut => 'Выйти';

  @override
  String get logOutputs => 'Логи';

  @override
  String get markCompleted => 'Пометить как выполненную';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Пометить как незавершённая';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Поддержка Markdown';

  @override
  String get mayNotBeEmpty => 'Не может быть пустым';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Добавляет поддержку базового синтаксиса markdown в описании и заголовке ваших задач.\n\nПолный список вариантов синтаксиса вы можете найти на сайте\nhttps://www.markdownguide.org/cheat-sheet/.\n\nОднако это приложение **не** поддерживает все спецификации markdown. Поддерживаются следующие элементы:\n\n- Жирный\n- Курсив\n- Подчеркивание (\\_\\_текст\\_\\_)\n- Кавычки\n- Упорядоченные / неупорядоченные списки\n- Списки задач\n- Инлайн код и блоки кода\n- Ссылки\n- Выделение\n- Зачеркивание';

  @override
  String get moveImportantToTop => 'Переместить важное на первое место';

  @override
  String get moveImportantToTopDescription => 'Если эта опция включена, то задачи отмеченные звездочками, всегда будут отображаться в верхней части списка';

  @override
  String get moveUpWhenUpdated => 'Отразить изменения в списке';

  @override
  String get moveUpWhenUpdatedDescription => 'Задачи перемещаются в начало списка после изменения';

  @override
  String get ncBaseUrl => 'Сервер';

  @override
  String get ncBaseUrlHint => 'URL веб интерфейса Nextcloud';

  @override
  String get ncDirectory => 'Директория';

  @override
  String get ncFileIn => 'Файл хранится в';

  @override
  String get ncLogOut => 'Выход из Nextecloud';

  @override
  String get ncLogOutMessage => 'При выходе ваши сохраненные учетные данные будут удалены. Однако сохраненный файл в вашкм облачном инстансе сохранится.';

  @override
  String get ncLoggedInAs => 'Вход выполнен как';

  @override
  String get ncPassword => 'Пароль';

  @override
  String get ncUser => 'Пользователь';

  @override
  String get never => 'Никогда';

  @override
  String get newSubTodo => 'Вложенная задача';

  @override
  String get newTodo => 'Новая задача';

  @override
  String get next => 'Далее';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Задач не осталось, отличная работа!';

  @override
  String get notAValidUrl => 'Неверный URL-адрес';

  @override
  String get off => 'Выключить';

  @override
  String get ok => 'Ладно';

  @override
  String get on => 'На';

  @override
  String get optional => 'Необязательный';

  @override
  String get pickAColor => 'Выбрать цвет';

  @override
  String get pickerPrimary => 'Стандарт';

  @override
  String get pickerWheel => 'Пользовательский';

  @override
  String get popupMenuDeleteCompleted => 'Удалить завершённые';

  @override
  String get popupMenuHideCompleted => 'Скрыть завершённые';

  @override
  String get popupMenuShowCompleted => 'Показать завершённые';

  @override
  String get quoteDoubleLeft => '\"';

  @override
  String get quoteDoubleRight => '\"';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Срок выполнения';

  @override
  String get required => '*обязательное';

  @override
  String get reset => 'Сбросить';

  @override
  String get right => 'Вправо';

  @override
  String get save => 'Сохранить';

  @override
  String get settings => 'Настройки';

  @override
  String get showCompletedTodos => 'Показать завершённые';

  @override
  String get showCompletedTodosDescription => 'Показать завершённые задачи в списке';

  @override
  String get showIntroScreen => 'Снова показать начальный экран';

  @override
  String get sortNewestFirst => 'Новые первее';

  @override
  String get sortNewestFirstDescription => 'Более новые указаны вверху';

  @override
  String get sortNoRelevantDate => 'Без даты';

  @override
  String get sortOverdue => 'Просрочено';

  @override
  String get sortRelevantDate => 'С датой';

  @override
  String get sortStarred => 'Важное';

  @override
  String get sortToday => 'Сегодняшние';

  @override
  String get sorting => 'Порядок сортировки';

  @override
  String get sortingDescription => 'Порядок, в котором будут отсортированы задачи';

  @override
  String get submitFeedback => 'Отправить';

  @override
  String get syncCorruptedFile => 'Похоже, файл резервной копии поврежден.';

  @override
  String get syncDirectoryDoesNotExist => 'Указанного каталога не существует.';

  @override
  String get syncNcMaintenance => 'Nextcloud находится в режиме обслуживания.';

  @override
  String get syncNoInternetConnection => 'Нет подключения к Интернету.';

  @override
  String get syncNotNcServer => 'Не удалось найти сервер Nextcloud по этому адресу.';

  @override
  String get syncServiceUnavailable => 'Nextcloud недоступен.';

  @override
  String get syncSuccessful => 'Синхронизировано успешно.';

  @override
  String get syncUnknownError => 'Произошла неизвестная ошибка.';

  @override
  String get syncWrongUrl => 'Указанный вами URL-адрес кажется невереным.';

  @override
  String get syncWrongUserOrPassword => 'Указанные имя пользователя или пароль неверны.';

  @override
  String get system => 'Система';

  @override
  String get systemInfo => 'Система';

  @override
  String get thankYouForFeedback => 'Спасибо вам за отправленный отзыв!';

  @override
  String get title => 'Заголовок';

  @override
  String get titleMayNotBeEmpty => 'Заголовок не может быть пустым';

  @override
  String get today => 'Сегодня';

  @override
  String get todoSearch => 'Поиск задач';

  @override
  String get todoSearchDescription => 'Добавляет кнопку поиска, позволяющую искать по вашим задачам.';

  @override
  String get tomorrow => 'Завтра';

  @override
  String get treatTodayAsIsImportant => 'Пометить сегодняшние как важные';

  @override
  String get treatTodayAsIsImportantDescription => 'Если включено, задачи которые должны быть выполнены сегодня, будут помечены звёздочкой';

  @override
  String get trimTodoTexts => 'Обрезать текст задач';

  @override
  String get trimTodoTextsDescription => 'Если включено, обрезает все окружающие символы пробела из заголовка и описания задач';

  @override
  String get trueBlackMode => 'По-настоящему чёрный';

  @override
  String get trueBlackModeDescription => 'Чёрный фон приложения. Особенно полезен на устройствах с oled';

  @override
  String get turnOff => 'Выключение';

  @override
  String get turnOn => 'Включение';

  @override
  String get undo => 'Вернуть';

  @override
  String get update => 'Обновить';

  @override
  String get updateCredentials => 'Обновить учётные данные';

  @override
  String get useCustomTabs => 'Использовать встроенный в приложение браузер';

  @override
  String get useCustomTabsDescription => 'Использовать встроенный в приложение браузер для открытия ссылок';

  @override
  String get whatsNew => 'Что нового?';

  @override
  String get yesterday => 'Вчера';

  @override
  String get error => 'Ошибка';

  @override
  String get routingError => 'Упс! Похоже, что-то пошло не так, и вы попали на страницу, которой... ну, не существует. Я очень сожалею об этом!';

  @override
  String get goToHome => 'На главную';

  @override
  String get pageNotFound => 'Страница не найдена';

  @override
  String get updateDoable => 'Обновить Doable';

  @override
  String get download => 'Скачать';

  @override
  String get install => 'Установить';

  @override
  String get installed => 'Установлено';

  @override
  String get updateNotInstalled => 'Обновление не было установлено.';

  @override
  String get skipVersion => 'Пропустить эту версию';

  @override
  String get couldNotDownloadUpdate => 'Не удалось загрузить обновление.';

  @override
  String versionWithNumber(String version) {
    return 'Версия $version';
  }

  @override
  String get autoUpdates => 'Авто обновления';

  @override
  String get autoUpdatesDescription => 'Автоматическая проверка на наличие обновлений';

  @override
  String get introExtensions => 'Расширения? Расширения!';

  @override
  String get introExtensionsDescription => 'Расширения позволяют расширять набор функций Double. Они дают вам возможность выбирать, как именно вы хотите использовать Double. Если вы хотите ознакомиться со всеми доступными расширениями, просто нажмите кнопку ниже!';

  @override
  String get introExtensionsButton => 'Расширяться!';

  @override
  String get useBottomSheetMenu => 'Используйте меню снизу';

  @override
  String get useBottomSheetMenuDescription => 'Использовать меню снизу вместо выпадающего меню';

  @override
  String get contributors => 'Контрибьютеры';

  @override
  String get contributorDescription => 'Люди, которые помогли Doable стать тем, чем он является';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'URL-адрес сервера Webdav';

  @override
  String get webdavLogOutMessage => 'При выходе из системы ваши сохраненные учетные данные будут стерты. Однако сохраненный файл сохранится.';

  @override
  String get importExport => 'Импортировать & экспортировать';

  @override
  String get chooseDirectory => 'Выбрать папку';

  @override
  String get forgetDirectory => 'Забыть папку';

  @override
  String get newStarredTodo => 'Новое звёздная задача';

  @override
  String get allTodos => 'Все задачи';

  @override
  String get newTodoList => 'Новый список';

  @override
  String get deleteTodoList => 'Удалить список';

  @override
  String get editTodoList => 'Изменить список';

  @override
  String get lists => 'Списки';

  @override
  String get listsDescription => 'Создавайте списки и сортируйте с их помощью свои задачи. Вы можете создавать неограниченное количество списков, доступных в боковом меню на главном экране.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Вы собираетесь удалить список $listName и все задачи внутри. Это действие необратимо.';
  }

  @override
  String markBeta(String element) {
    return '$element (Бета)';
  }

  @override
  String get list => 'Список';

  @override
  String get share => 'Поделиться';

  @override
  String get font => 'Шрифт';

  @override
  String get fontDescription => 'Зажмите, чтобы увидеть название шрифта';

  @override
  String get popUpAnimationOverSlideAnimation => 'Переход на старую страницу';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Использовать старый переход между страницами в стиле всплывающих окон';

  @override
  String get restart => 'Перезагрузить';

  @override
  String get later => 'Позже';

  @override
  String get restartRequired => 'Требуется перезагрузка';

  @override
  String get restartRequiredForSetting => 'Чтобы эта настройка вступила в силу, необходимо перезапустить приложение.';

  @override
  String get image => 'Изображение';

  @override
  String get expandTodos => 'Раскрыть задачи';

  @override
  String get showTodoListNames => 'Показать имена списков';

  @override
  String get includeBranding => 'Включить брендинг';

  @override
  String get doableBrandingText => 'Поделился из Doable, простым, современным и удобным приложением для списка задач.\nВы можете получить Doable здесь: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Выберите, как вы хотите поделиться своими задачами';

  @override
  String get options => 'Параметры';

  @override
  String get reduceMotion => 'Уменьшить движение';

  @override
  String get reduceMotionDescription => 'Уменьшите движение анимации';

  @override
  String get contribute => 'Внести вклад';

  @override
  String get contributeWantYourNameHere => 'Хотите, чтобы ваше имя было здесь?';

  @override
  String get contributeWantYourNameHereDescription => 'Внесите свой вклад в Doable напрямую или помогите его перевести!';

  @override
  String get onlySymbolInDetailViewFab => 'Значок вместо текста';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Использовать значок вместо текста в подробном представлении задач';

  @override
  String get allSelected => 'Все выбраны';

  @override
  String get sharedTextAsTitle => 'Общий текст в качестве заголовка';

  @override
  String get sharedTextAsTitleDescription => 'Использовать текст, переданный в Doable, в качестве заголовка новой задачи вместо её описания';

  @override
  String get noTodoLists => 'В настоящее время у вас нет списков.\nСоздайте новый, чтобы начать!';

  @override
  String forExample(String example) {
    return 'пример: $example';
  }

  @override
  String get clearSelection => 'Очистить выбор';

  @override
  String get syncConnectionTimedOut => 'Время соединения истекло.';

  @override
  String get syncTooManyTimeOuts => 'Сервер отключался слишком часто. Синхронизация отключена до перезапуска приложения.';

  @override
  String get todoToCalendar => 'Добавить задачу в календарь';

  @override
  String get logs => 'Логи';

  @override
  String get logsDescription => 'Показать все логи, которые выводит Double';

  @override
  String get aboutToClearAllLogs => 'Вы собираетесь удалить все логи, сделав их недоступными для обратной связи и устранения неполадок. Это действие необратимо.';

  @override
  String get clearAllLogs => 'Очистить все логи';

  @override
  String get noLogsYet => 'В настоящее время нет логов, которые вы могли бы просмотреть.';

  @override
  String get dateFormat => 'Формат даты';

  @override
  String get timeFormat => 'Формат времени';

  @override
  String get shareAllLogs => 'Поделиться всему логами';

  @override
  String get copyAllLogs => 'Скопировать все логи';

  @override
  String get whatWentWrong => 'Что пошло не так?';

  @override
  String get fixCorruptBackupFile => 'Файл резервной копии Doable не удалось прочитать, похоже он повреждён. Doable может попытаться исправить ситуацию, удалив текущий файл резервной копии и создав новый. Это приведет к удалению всех изменений, сделанных в других экземплярах Doable, использующих тот же файл резервной копии.';

  @override
  String get initializingNextcloud => 'Инициализация Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Изменить папку';

  @override
  String get dueDate => 'Срок выполнения';

  @override
  String get dragToReorder => 'Перетащите, чтобы изменить порядок';

  @override
  String get copySettings => 'Скопировать настройки';

  @override
  String get copySystemInfo => 'Скопировать информацию о системе';

  @override
  String get languageNameInEnglish => 'Russian';

  @override
  String get languageNameInNativeLanguage => 'Русский';

  @override
  String get createSummaryForBugReport => 'Создать резюме';

  @override
  String get createSummaryForBugReportDetails => 'Создает отчет, содержащий информацию о системе, настройках Doable и все логи. Это может быть полезно для отчетов об ошибках и помогает устранить неполадки.';

  @override
  String get bugReport => 'Отчёт об ошибке';

  @override
  String get bugReportSupportingText => 'Пожалуйста, выберите, что вы хотите включить в отчёт об ошибке. Чем больше информации вы предоставите, тем легче будет выяснить, что именно пошло не так. **Никакая личная информация не будет передана.**';

  @override
  String get shareBugReport => 'Сообщить об ошибке';

  @override
  String get fontSize => 'Размер шрифта';

  @override
  String get fontSizeDescription => 'Переопределить размер системного шрифта';

  @override
  String get decrease => 'Уменьшить';

  @override
  String get increase => 'Увеличить';

  @override
  String get customSecondaryAccentPicker => 'Дополнительный цвет';

  @override
  String get customTertiaryAccentPicker => 'Третий цвет';

  @override
  String get advancedColorOptions => 'Дополнительные параметры цвета';

  @override
  String get uploadCustomColorScheme => 'Загрузка пользовательской цветовой схемы';

  @override
  String get downloadCurrentColorScheme => 'Загрузить текущую цветовую схему';

  @override
  String get markAsStarred => 'Отметить задачу как важную';

  @override
  String get setTime => 'Установить время';

  @override
  String get thereAreNoLists => 'Пока нет ни одного списка';

  @override
  String get closeDetailsOnCompelte => 'Закрыть подробную информацию после завершения';

  @override
  String get closeDetailsOnCompelteDescription => 'Сохраняет задачу и закрывает его детальное представление при нажатии кнопки завершения.';

  @override
  String get customColorTheme => 'Пользовательская цветовая тема';

  @override
  String get discardCustomColorTheme => 'Вы собираетесь отменить все изменения, внесенные в цветовую тему.';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get deletedCustomColorTheme => 'Удалена пользовательская цветовая тема.';

  @override
  String get customThemeInfo => 'Здесь вы можете изменить каждый цвет по своему усмотрению. Вы также можете импортировать/экспортировать цвета в файл `json` и редактировать их там!\n\nЕсли вы хотите понять, что делает каждый маркер, пожалуйста, посетите следующий сайт: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Импортировать';

  @override
  String get customThemeFuckedFile => 'Этот файл не содержит правильной цветовой темы. Убедитесь, что ваш файл соответствует тому же стилю и структуре, что и экспортированный файл.';

  @override
  String get markdownBold => 'Жирный';

  @override
  String get markdownItalic => 'Курсив';

  @override
  String get markdownMonospace => 'Моноширинный';

  @override
  String get markdownHighlight => 'Выделить';

  @override
  String get fediChooseInstance => 'Выберите свой сервер';

  @override
  String get fediInstanceUrl => 'URL сервера';

  @override
  String get fediRememberInstance => 'Запомнить выбор сервера';

  @override
  String get fediDoablePost => 'Только что удалось закончить все мои задачи благодаря @Doable@floss.social!\n\nЗвучит интересно? Вы можете узнать больше о #Doable, посетив сайт https://repo.doable.at!';

  @override
  String get doable => 'Doable — простое и современное приложение для задач';

  @override
  String get rrRepeatsEvery => 'Повторяется каждые';

  @override
  String get rrRepeatsOn => 'Повторяется на';

  @override
  String get rrEnds => 'Заканчивается';

  @override
  String get week => 'Неделя';

  @override
  String get weeks => 'Недели';

  @override
  String get day => 'День';

  @override
  String get days => 'Дни';

  @override
  String get month => 'Месяц';

  @override
  String get months => 'Месяцы';

  @override
  String get year => 'Год';

  @override
  String get years => 'Годы';

  @override
  String get onFollowedByDate => 'На';

  @override
  String get rrAfterOccurrences => 'После';

  @override
  String get occurrence => 'Происшествие';

  @override
  String get occurrences => 'Происшествия';

  @override
  String get rrCustomRecurrence => 'Пользовательское повторение';

  @override
  String get daily => 'Ежедневно';

  @override
  String get weekly => 'Еженедельно';

  @override
  String get monthly => 'Ежемесячно';

  @override
  String get yearly => 'Ежегодно';

  @override
  String get doesNotRepeat => 'Не повторять';

  @override
  String get rrRecurrence => 'Повторение';

  @override
  String get recurringTodos => 'Повторяющиеся задачи';

  @override
  String get recurringTodosDescription => 'Добавьте повтор в ваши задачи и позвольте Doable автоматически перепланировать их для вас, как только вы их выполните. Задачи будут перенесены на соответствующую дату и в установленное вами расписание. Если вы не добавили дату выполнения в задачу, вместо нее будет использоваться дата её создания.\n\n**Один момент, о котором следует помнить: Хотя теперь в Doable можно устанавливать задачи на повтор, обратите внимание, что в настоящее время эта функция ограничена Английским языком.**';

  @override
  String get post => 'Опубликовать';

  @override
  String get rrRepeats => 'Повторы';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription => 'Это расширение все еще находится в бета-версии, и вы можете столкнуться с некоторыми трудностями при его использовании. Пожалуйста, помните о рисках и дайте мне знать, если вы столкнетесь с какими-либо проблемами!';

  @override
  String get extensionBetaWarning => 'Включить бета-версию расширения?';

  @override
  String get showFediButton => 'Показать кнопку публикации';

  @override
  String get showFediButtonDescription => 'Показать кнопку, позволяющую опубликовать сообщение о пустом списке в Fediverse';

  @override
  String get notifications => 'Уведомления';

  @override
  String get enableNotifications => 'Включить уведомления';

  @override
  String get notifyAll => 'Все задачи';

  @override
  String get notifyAllDescription => 'Получайте уведомления о каждой задаче, у которой наступил срок исполнения';

  @override
  String get notifyTimeOnly => 'Только задачи со временем';

  @override
  String get notifyTimeOnlyDescription => 'Получайте уведомления только о тех задачах, у которых указаны дата и время выполнения';

  @override
  String get notifyTodosChannelName => 'Задачи';

  @override
  String get notificationsDescription => 'Пусть Doable уведомляет вас о том, что ваши задачи должны быть выполнены. Вы также можете изменить, для каких задач вы будете получать уведомления.';

  @override
  String get notificationsDescriptionShort => 'Измените, для каких задач вы будете получать уведомления';

  @override
  String get notifyNeverDescription => 'Не получайте уведомлений о новых задачах';

  @override
  String get defaultNotificationTime => 'Время уведомления по умолчанию';

  @override
  String get defaultNotificationTimeDescription => 'Время, в течение которого вы будете получать уведомления о задачах, не имеющих соответствующего времени';

  @override
  String get addImage => 'Добавить изображение';

  @override
  String get todoImages => 'Изображения';

  @override
  String get todoImagesDescription => 'Добавляйте изображения к своим задачам, чтобы добавить больше контекста к написанному.\n\n**К сожалению, изображения пока не будут синхронизированы.**';

  @override
  String get clearInputField => 'Очистить поле ввода';

  @override
  String get removeImage => 'Удалить изображение';

  @override
  String get apkSignatureInvalid => 'Недействительная подпись';

  @override
  String get apkSignatureInvalidDescription => 'Не удалось проверить подпись загруженного apk-файла. Пожалуйста, сообщите разработчику об этой проблеме. Хотя вы можете продолжить установку apk на свой страх и риск, мы рекомендуем соблюдать осторожность из-за потенциальных проблем с безопасностью.';

  @override
  String get searchTodos => 'Поиск Todos';

  @override
  String get editTodo => 'Изменить задачу';

  @override
  String get previewTodo => 'Предварительный просмотр задачи';

  @override
  String get readerMode => 'Режим чтения';

  @override
  String get readerModeDescription => 'Позволяет просматривать задачи внутри экрана редактирования.';

  @override
  String get noList => 'Нет списка';

  @override
  String get chooseAList => 'Выберите список';

  @override
  String get readerModeDescriptionShort => 'Изменение начального режима при открытии задачи';

  @override
  String get lastUsed => 'Последний раз использовался';

  @override
  String get syncFileLocked => 'Сервер заблокировал файл резервной копии, пожалуйста, повторите попытку примерно через 15 минут.';

  @override
  String get syncInternalError => 'Произошла внутренняя ошибка, приносим извинения за причиненные неудобства.';

  @override
  String get syncConnectionError => 'При подключении к серверу произошла ошибка.';

  @override
  String get restore => 'Восстановить';

  @override
  String get loggingNextcloudIn => 'Вход в Nextcloud…';

  @override
  String get initializingWebdav => 'Инициализация Webdav…';

  @override
  String get migratingNextcloudToRemote => 'Перенос Nextcloud на новую реализацию синхронизации…';

  @override
  String get migratingWebdavToRemote => 'Перенос Webdav на новую реализацию синхронизации…';

  @override
  String get migrateToRemotes => 'Миграция';

  @override
  String get migrateToRemotesDescription => 'Недавно Doable изменил способ синхронизации с Nextcloud или Webdav. К сожалению, новая реализация не имеет обратной совместимости, поэтому необходимо выполнить миграцию. Doable понадобится минута, чтобы перенести все необходимое.\n\nЕсли вы решите сделать это позже, вы можете столкнуться с некоторыми сообщениями об ошибках, поскольку новая реализация еще не установлена.';

  @override
  String get fixBrokenRemoteFile => 'Похоже, что файл резервной копии Doable поврежден. Doable может исправить это, переопределив его текущее локальное значение. Это отменит все изменения, сделанные другими устройствами после возникновения ошибки.';

  @override
  String get fixedBrokenRemoteFile => 'Успешное восстановление поврежденного файла.';

  @override
  String get unfixableRemoteFile => 'Файл не удалось восстановить.';

  @override
  String get syncFileDoesNotExist => 'Файл резервной копии Doable не существует.';

  @override
  String get todos => 'Задачи';

  @override
  String get selectWhatToExport => 'Пожалуйста, выберите, что вы хотите экспортировать.';

  @override
  String get exportFile => 'Экспортировать файл';

  @override
  String get listColor => 'Список цветов';

  @override
  String get listColorAsAccent => 'Список цветов в качестве акцента';

  @override
  String get listColorAsAccentDescription => 'Используйте цвет текущего списка в качестве акцентного цвета для Doable';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get openSource => 'Открытый исходный код';

  @override
  String get sourceCode => 'Исходный код';

  @override
  String get contact => 'Контакты';

  @override
  String get mastodon => 'Мастодон';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'Весь исходный код Doable доступен на Codeberg под лицензией FOSS. Там же вы можете отправлять проблемы и запросы на исправление. Вы также можете найти F-Droid репозиторий Doable на Codeberg!';

  @override
  String get aboutPrivacy => 'Doable не собирает никакой личной информации о вас. Единственное, что Doable хранит о вашем использовании, - это логи. Однако эти журналы **не загружаются автоматически**. Единственный способ, которым эти логи покидают ваше устройство, - это если вы решите поделиться ими, например, чтобы помочь мне исправить ошибку.';

  @override
  String get httpWarning => 'Незашифрованное соединение';

  @override
  String get cancelling => 'Отмена…';

  @override
  String get httpWarningDescription => 'Вы пытаетесь подключиться к HTTP-серверу, а не к более безопасному HTTPS-серверу. HTTP отправляет данные на сервер в незашифрованном виде, что создает потенциальные риски для безопасности, поэтому использовать его не рекомендуется. Однако есть определенные случаи использования, например, локально размещенный сервер. Вы уверены, что хотите продолжить работу с HTTP?';

  @override
  String get enableNotificationReminder => 'Уведомление о напоминании';

  @override
  String get pickNotificationReminderDuration => 'Напомните мне после';

  @override
  String get hours => 'Часов';

  @override
  String get minutes => 'Минут';

  @override
  String get enableNotificationSound => 'Воспроизвести звук';

  @override
  String get enableNotificationSoundDescription => 'Воспроизведение пользовательского звука при показе уведомления';

  @override
  String get interval => 'Интервал';

  @override
  String get secondly => 'Во-вторых';

  @override
  String get minutely => 'Поминутно';

  @override
  String get hourly => 'Почасовой';

  @override
  String get second => 'Секунда';

  @override
  String get startOfTheWeek => 'Начало недели';

  @override
  String get hideList => 'Скрыть список';

  @override
  String get showList => 'Показать список';

  @override
  String get showListDescription => 'Показывать задачи из этого списка в общем списке.';

  @override
  String get hideListDescription => 'Не показывать задачи из этого списка в общем списке.';

  @override
  String get gotIt => 'Получить';

  @override
  String get updateRelease => 'Открыть страницу релиза Doable и загрузить последнюю версию';

  @override
  String get updateDownload => 'Позвольте Doable загрузить для вас последнюю версию; вы найдете файл в области уведомлений и сможете установить его, нажав на него';

  @override
  String get updateFdroid => 'Если вы установили Doable с F-Droid, вы должны получить обновление в ближайшие пару часов либо из репозитория IzzyOnDroid, либо из собственного репозитория Doable';

  @override
  String get updateDisable => 'Вы также можете полностью отключить автоматическую проверку обновлений в настройках';

  @override
  String get updateChecker => 'Проверка обновлений';

  @override
  String get whatCanYouDo => 'Что вы можете сделать?';

  @override
  String get synchronization => 'Синхронизация';

  @override
  String get backup => 'Резервное копирование';

  @override
  String get autoExport => 'Автоматический экспорт';

  @override
  String get changeDuration => 'Продолжительность изменений';

  @override
  String get autoExportDescription => 'Вы можете позволить Doable автоматически экспортировать ваши задачи, списки и настройки. Пожалуйста, имейте в виду, что Doable будет создавать новый файл для каждого экспорта! Выбирайте задержку между экспортом соответственно.';

  @override
  String get seconds => 'Секунд';

  @override
  String get apkVerifyingSignature => 'Проверка подписи apk…';

  @override
  String get swipeActions => 'Действия при свайпе';

  @override
  String get swipeActionsDescription => 'Добавляет возможность провести пальцем влево по Todos, чтобы отметить их звездой или завершить.\n\n** Обратите внимание, что иногда это может конфликтовать с боковым списком задач.**';

  @override
  String get selectedSwipeActions => 'Избранные действия';

  @override
  String get unselectedSwipeActions => 'Не выбранные действия';

  @override
  String get swipeActionComplete => 'Завершенная / незавершенная задача';

  @override
  String get swipeActionExpand => 'Развернуть задачу';

  @override
  String get swipeActionStar => 'Важная / не важная задача';

  @override
  String get swipeActionDelete => 'Удалить задачу';

  @override
  String get swipeActionsHideCheck => 'Скрыть галочку выполнения';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Скрыть галочку, если выбрано $action';
  }

  @override
  String get forceHighestRefreshRate => 'Установить максимальную частоту обновления';

  @override
  String get forceHighestRefreshRateDescription => '(Попробовать) заставить систему использовать максимально возможную частоту обновления внутри приложения';

  @override
  String get overview => 'Обзор';

  @override
  String whatsNewIn(String version) {
    return 'Что нового в $version?';
  }

  @override
  String get expandTodosByDefault => 'Разворачивать Todos по умолчанию';

  @override
  String get expandTodosByDefaultDescription => 'Отображать Todos в развернутом виде по умолчанию';

  @override
  String get progress => 'Выполнение';

  @override
  String get progressBar => 'Уровень выполнения';

  @override
  String get progressBarDescription => 'Показывать уровень выполнения ваших ToDos.';

  @override
  String get syncMultipleErrors => 'Имеются ошибки при работе с удалённым сервером. Смотрите подробности в логе.';

  @override
  String get deletedCompleted => 'Завершённые задачи удалены.';

  @override
  String get dateRange => 'Промежуток';

  @override
  String get next3Days => 'Следующие 3 дня';

  @override
  String get dateFilters => 'Фильтры дат';

  @override
  String get dateFiltersDescription => 'Добавлена возможность отбора задач по заданному промежутку дат.';

  @override
  String get exportedFile => 'Экспортированный файл.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Чтобы воспользоваться этой функцией, включите расширение $extensionName.';
  }

  @override
  String get enablePrideFlagsDescription => 'Показывает флаги гордости за строку заголовка в определенные месяцы';

  @override
  String get enablePrideFlags => 'Включить флаги гордости';

  @override
  String get prideFlagRestOfYear => 'Флаг гордости отображается круглый год';

  @override
  String get addNotification => 'Добавить уведомление';

  @override
  String get unselected => 'Невыбранные';

  @override
  String get selected => 'Выбранные';

  @override
  String get nothingSelected => 'Нет выбранных';

  @override
  String get halfHourBefore => 'За полчаса до';

  @override
  String get defaultNotifications => 'Уведомления по умолчанию';

  @override
  String get aDayAfter => 'На следующий день';

  @override
  String get atTimeOfTodo => 'At time of Todo';

  @override
  String get aWeekBefore => 'За неделю до';

  @override
  String get aDayBefore => 'За день до';

  @override
  String get anHourBefore => 'За час до';

  @override
  String get defaultNotificationsDescriptionIfLists => 'You can also select different Notifications for each List.';

  @override
  String get halfHourAfter => 'Через полчаса';

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
  String get notificationsFor => 'Уведомления для';

  @override
  String get deleteListSettings => 'Delete list settings';

  @override
  String get snooze => 'Отложить';

  @override
  String get snoozeDurationDescription => 'Время, на которое откладываются уведомления';

  @override
  String get snoozeDuration => 'Snooze duration';

  @override
  String get sortStarredToday => 'Starred today';

  @override
  String get sortStarredOverdue => 'Starred overdue';

  @override
  String get sortByTitle => 'По названию';

  @override
  String get sortByCreationDate => 'По дате добавления';

  @override
  String get sortStarredRelevantDate => 'Starred with date';

  @override
  String get sortDescending => 'По убыванию';

  @override
  String get sortAscending => 'По возрастанию';

  @override
  String get sortByRelevantDate => 'По дате выполнения';

  @override
  String get sortByLastEdited => 'По дате изменения';

  @override
  String get sortingLabel => 'Упорядочивание';

  @override
  String get groupsLabel => 'Группы';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable sorts your Todos by first grouping them and then sorting each group individually, before putting them back together. In the $groups tab you can choose what groups Doable creates and their order. In the $sorting tab you can choose how Doable sorts each group and their order of importance.';
  }

  @override
  String get hideForever => 'Больше не показывать';

  @override
  String get sortingHelp => 'Группы и упорядочивание';

  @override
  String get info => 'Сведения';

  @override
  String get aboutToCancelChangesToList => 'Вы попытались отменить все изменения, внесённые в этот список.';

  @override
  String get notificationsAlwaysPreview => 'Always preview Notifications';

  @override
  String get notificationsAlwaysPreviewDescription => 'Always open Notifications in preview mode regardless (this does not affect what mode was last used)';

  @override
  String get nextcloudWipeDescription => 'Doable received a request to wipe all data associated with the Nextcloud account you logged in with. Therefore you will be logged out of your account. You can also choose to wipe all data (Todos and Lists) from the app. This action is permanent and cannot be undone.';

  @override
  String get nextcloudWipe => 'Удалённое стирание Nextcloud';

  @override
  String get wipeData => 'Стереть данные';

  @override
  String get keepData => 'Сохранить данные';

  @override
  String get imageInserted => 'Вставлено изображение';

  @override
  String get useSystemFont => 'Использовать шрифт системы';

  @override
  String get useSystemFontDescription => 'Использовать шрифт системы в качестве основного';

  @override
  String get batteryOptimization => 'Оптимизация расхода батареи';

  @override
  String get batteryOptimizationDescription => 'Работа Doable ограничена оптимизацией расхода. Обычно это не должно создавать проблем, но может привести к проблемам со входом в Nextcloud. Для более надёжной работы рекомендуется отключить оптимизацию расхода.';

  @override
  String get couldNotAddTodoToCalendar => 'Не удалось добавить задачу в календарь.';

  @override
  String get sortCompleted => 'Упорядочивание завершено';

  @override
  String get sortCompletedDescription => 'Применять к выполненным задачам';
}
