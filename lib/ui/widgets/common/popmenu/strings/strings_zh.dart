import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class StringsZh extends Strings {
  StringsZh([String locale = 'zh']) : super(locale);

  @override
  String get about => '关于';

  @override
  String get aboutDescription => '关于本应用的信息';

  @override
  String get aboutOSInfo => '源代码：[codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\n隐私政策：[codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid 存储库：[codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => '放弃更改？';

  @override
  String get aboutToCancelChangesDescription => '您将放弃对此待办事项所做的所有更改。';

  @override
  String get aboutToCancelFeedback => '放弃反馈？';

  @override
  String get aboutToCancelFeedbackDescription => '您将放弃您的反馈，此操作无法撤销。';

  @override
  String get aboutToDeleteCompleted => '您将要删除所有已完成的待办事项。此操作是永久性的，无法撤销。';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString 个待办事项',
      one: '1 个待办事项',
    );
    return '您将要删除 $_temp0。此操作是永久性的，无法撤销。';
  }

  @override
  String get additionalFeatures => '扩展';

  @override
  String get additionalFeaturesDescription => '让 Doable 更加强大的功能';

  @override
  String get alignTodoCheck => '右侧复选标记';

  @override
  String get alignTodoCheckDescription => '在右侧显示待办事项复选标记';

  @override
  String get appLanguage => '应用语言';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => '注意';

  @override
  String get back => '返回';

  @override
  String get syncAndBackup => '同步和备份';

  @override
  String get syncAndBackupDescription => '备份并同步您的待办事项';

  @override
  String get cancel => '取消';

  @override
  String get chooseFeedbackExtrasDescription => '我建议包括以下所有内容，可以帮助我解决您的问题，其中不包括个人信息。';

  @override
  String get chooseFeedbackExtrasTitle => '您想包括哪些额外信息？';

  @override
  String get chooseFeedbackWay => '您想在哪里提供反馈？';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => '已完成待办事项。';

  @override
  String get copiedToClipboard => '已将文本复制到剪贴板。';

  @override
  String get customAccentPicker => '强调色';

  @override
  String get customAccentPickerDescription => '为应用的主题选择自定义强调色';

  @override
  String get darkMode => '深色模式';

  @override
  String get deleteCompletedAfter => '自动删除已完成';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return '$duration 后删除';
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
      other: '$countString 个待办事项',
      one: '1 个待办事项',
    );
    return '已删除 $_temp0。';
  }

  @override
  String get description => '描述';

  @override
  String get design => '设计';

  @override
  String get designDescription => '更改 Doable 的外观';

  @override
  String get disable => '禁用';

  @override
  String get discard => '放弃';

  @override
  String get doContinue => '继续';

  @override
  String get done => '完成';

  @override
  String get dynamicColors => '动态色彩';

  @override
  String get dynamicColorsDescription => '使用系统颜色（Android 12+）';

  @override
  String get email => '电子邮件';

  @override
  String get enable => '启用';

  @override
  String get enabled => '已启用';

  @override
  String get export => '导出';

  @override
  String get exportAllTodos => '导出所有待办事项';

  @override
  String exportEvery(String duration) {
    return '每 $duration 导出一次';
  }

  @override
  String get feedbackDescriptionHelp => '对问题所在/发生方式的更详细解释。';

  @override
  String get feedbackHeader => '请填写下面的表格，以帮助我了解出了什么问题。';

  @override
  String get feedbackTitleHelp => '事件的简短摘要。';

  @override
  String get general => '常规';

  @override
  String get generalDescription => '更改应用的常规行为';

  @override
  String get giveFeedback => '反馈';

  @override
  String get highlightOverdue => '突出显示逾期';

  @override
  String get highlightOverdueDescription => '使用与星标的待办事项相同的方式突出显示逾期的待办事项';

  @override
  String get highlightToday => '突出显示今天';

  @override
  String get highlightTodayDescription => '使用与星标的待办事项相同的方式突出显示今天到期的待办事项';

  @override
  String get importLocalBackupError => '无法导入文件。是否确定是由 Doable 生成的？';

  @override
  String get importTodosFromFile => '导入文件';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString 个待办事项',
      one: '1 个待办事项',
      zero: '0 个待办事项',
    );
    return '已导入 $_temp0。';
  }

  @override
  String get installedFrom => '安装来自';

  @override
  String get introDoubleTap => '双击';

  @override
  String get introDoubleTapDescription => '您可以双击带有描述的待办事项来展开它们。展开后，将显示完整描述，然后您可以与链接进行交互等。\n\n您可以在此处通过示例进行尝试！';

  @override
  String get introDoubleTapTodoDescription => 'The cake is a lie!\n\n在此处了解更多信息：\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Buy new cake';

  @override
  String get introLinks => '链接、电话号码、电子邮件';

  @override
  String get introLinksDescription => '当您在描述中添加链接、电话号码或电子邮件地址时，它们将自动突出显示，并且您可以与它们进行交互。';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => '您还可以将待办事项与 Nextcloud 实例同步。如果您愿意，您可以在此处登录！';

  @override
  String get introStar => '星号';

  @override
  String get introStarDescription => '为待办事项添加一颗星号，\n让它在众多待办事项中脱颖而出。\n\n点击下面的星号即可尝试！';

  @override
  String get introTodos => '待办事项';

  @override
  String get introTodosDescription => '创建新的待办事项时，您可以添加各种内容。例如，您可以添加与待办事项相关的日期，或者为待办事项添加星号，使其在其他待办事项中脱颖而出！您还可以添加带有链接的描述或其他与待办事项相关的信息。';

  @override
  String get introWelcome => '欢迎使用 Doable！';

  @override
  String get introWelcomeDescription => '设计现代的简单待办事项应用\nNextcloud 集成。';

  @override
  String get keepEditing => '继续编辑';

  @override
  String get left => '左边';

  @override
  String get licenses => '许可证';

  @override
  String get licensesDescription => '开源和 Flutter 许可证';

  @override
  String get localStorage => '本地存储';

  @override
  String get logIn => '登录';

  @override
  String get logOut => '登出';

  @override
  String get logOutputs => '日志';

  @override
  String get markCompleted => '标记已完成';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => '标记未完成';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Markdown 支持';

  @override
  String get mayNotBeEmpty => '不能为空';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => '在待办事项的描述和标题中添加对基本 Markdown 语法的支持。\n\n有关语法选项的完整列表，您可以查看\nhttps://www.markdownguide.org/cheat-sheet/ 。\n\n然而，此应用 **不** 支持整个 Markdown 规范。支持的元素有：\n\n- **文本样式：**\n  - **加粗**\n  - *倾斜*\n  - ~~删除线~~\n  - __下划线__ (`__下划线__`)\n  - ==高亮==\n  - [链接](https://www.markdownguide.org/cheat-sheet/)\n  - `内联代码`\n- **列表：**\n  1. 有序列表\n  2. 无序列表\n  3. 任务列表\n- **块：**\n  - 围栏代码块\n  - 块引用';

  @override
  String get moveImportantToTop => '将重要事项移至顶部';

  @override
  String get moveImportantToTopDescription => '启用后，星标的待办事项将始终显示在列表顶部';

  @override
  String get moveUpWhenUpdated => '反映列表中的更改';

  @override
  String get moveUpWhenUpdatedDescription => '待办事项在更改后移动到列表顶部';

  @override
  String get ncBaseUrl => '服务器';

  @override
  String get ncBaseUrlHint => 'Nextcloud Web 界面 URL';

  @override
  String get ncDirectory => '目录';

  @override
  String get ncFileIn => '文件存储在';

  @override
  String get ncLogOut => '退出 Nextcloud';

  @override
  String get ncLogOutMessage => '退出后，将会擦除您存储的凭据。但是，Nextcloud 实例上保存的文件将保持不变。';

  @override
  String get ncLoggedInAs => '登录身份';

  @override
  String get ncPassword => '密码';

  @override
  String get ncUser => '用户';

  @override
  String get never => '从不';

  @override
  String get newSubTodo => '子待办事项';

  @override
  String get newTodo => '新待办事项';

  @override
  String get next => '下一页';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => '没有任何待办事项，干得好！';

  @override
  String get notAValidUrl => '不是有效的 URL';

  @override
  String get off => '关';

  @override
  String get ok => '确定';

  @override
  String get on => '开';

  @override
  String get optional => '可选';

  @override
  String get pickAColor => '选择颜色';

  @override
  String get pickerPrimary => '标准';

  @override
  String get pickerWheel => '自定义';

  @override
  String get popupMenuDeleteCompleted => '删除已完成';

  @override
  String get popupMenuHideCompleted => '隐藏已完成';

  @override
  String get popupMenuShowCompleted => '显示已完成';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => '截止日期';

  @override
  String get required => '*必需';

  @override
  String get reset => '重置';

  @override
  String get right => '右边';

  @override
  String get save => '保存';

  @override
  String get settings => '设置';

  @override
  String get showCompletedTodos => '显示已完成';

  @override
  String get showCompletedTodosDescription => '在列表中显示已完成的待办事项';

  @override
  String get showIntroScreen => '再次显示介绍屏幕';

  @override
  String get sortNewestFirst => '最新的优先';

  @override
  String get sortNewestFirstDescription => '较新的日期显示在顶部';

  @override
  String get sortNoRelevantDate => '没有日期';

  @override
  String get sortOverdue => '逾期';

  @override
  String get sortRelevantDate => '带有日期';

  @override
  String get sortStarred => '星标';

  @override
  String get sortToday => '今天到期';

  @override
  String get sorting => '排序顺序';

  @override
  String get sortingDescription => '待办事项的排序顺序';

  @override
  String get submitFeedback => '提交';

  @override
  String get syncCorruptedFile => '备份文件似乎已损坏。';

  @override
  String get syncDirectoryDoesNotExist => '指定的目录不存在。';

  @override
  String get syncNcMaintenance => 'Nextcloud 处于维护模式。';

  @override
  String get syncNoInternetConnection => '没有互联网连接。';

  @override
  String get syncNotNcServer => '无法在此地址找到 Nextcloud 服务器。';

  @override
  String get syncServiceUnavailable => 'Nextcloud 不可用。';

  @override
  String get syncSuccessful => '已成功同步。';

  @override
  String get syncUnknownError => '发生未知错误。';

  @override
  String get syncWrongUrl => '您提供的 URL 似乎不正确。';

  @override
  String get syncWrongUserOrPassword => '给定的用户名或密码不正确。';

  @override
  String get system => '系统';

  @override
  String get systemInfo => '系统';

  @override
  String get thankYouForFeedback => '感谢您发送反馈！';

  @override
  String get title => '标题';

  @override
  String get titleMayNotBeEmpty => '标题不能为空';

  @override
  String get today => '今天';

  @override
  String get todoSearch => '待办事项搜索';

  @override
  String get todoSearchDescription => '在待办事项列表中添加搜索按钮，允许您搜索待办事项。';

  @override
  String get tomorrow => '明天';

  @override
  String get treatTodayAsIsImportant => '把今天视为重要';

  @override
  String get treatTodayAsIsImportantDescription => '启用后，今天到期的待办事项将会视为星标';

  @override
  String get trimTodoTexts => '调整待办事项文本';

  @override
  String get trimTodoTextsDescription => '启用后，会从待办事项标题和描述中删除周围的空白字符';

  @override
  String get trueBlackMode => '纯黑模式';

  @override
  String get trueBlackModeDescription => '让背景变黑，特别适用于 OLED 设备';

  @override
  String get turnOff => '关闭';

  @override
  String get turnOn => '打开';

  @override
  String get undo => '撤销';

  @override
  String get update => '更新';

  @override
  String get updateCredentials => '更新凭据';

  @override
  String get useCustomTabs => '使用应用内浏览器';

  @override
  String get useCustomTabsDescription => '使用应用内浏览器打开链接';

  @override
  String get whatsNew => '更新日志';

  @override
  String get yesterday => '昨天';

  @override
  String get error => '错误';

  @override
  String get routingError => '糟糕！似乎出了点问题，您最终进入了一个不存在的页面。对此我深感抱歉！';

  @override
  String get goToHome => '转到主页';

  @override
  String get pageNotFound => '未找到页面';

  @override
  String get updateDoable => '更新 Doable';

  @override
  String get download => '下载';

  @override
  String get install => '安装';

  @override
  String get installed => '已安装';

  @override
  String get updateNotInstalled => '未安装更新。';

  @override
  String get skipVersion => '跳过此版本';

  @override
  String get couldNotDownloadUpdate => '无法下载更新。';

  @override
  String versionWithNumber(String version) {
    return '版本 $version';
  }

  @override
  String get autoUpdates => '自动更新';

  @override
  String get autoUpdatesDescription => '自动检查更新';

  @override
  String get introExtensions => '扩展？扩展！';

  @override
  String get introExtensionsDescription => '扩展允许您扩展和扩大 Doable 的功能集。让您能够准确选择如何使用 Doable。如果您想查看所有可用的扩展，只需单击下方按钮！';

  @override
  String get introExtensionsButton => '查看扩展！';

  @override
  String get useBottomSheetMenu => '使用底部表格菜单';

  @override
  String get useBottomSheetMenuDescription => '使用底部表格菜单而不是下拉菜单';

  @override
  String get contributors => '贡献者';

  @override
  String get contributorDescription => '帮助 Doable 成为现在这样的人';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'WebDAV 服务器 URL';

  @override
  String get webdavLogOutMessage => '退出后，将会擦除您存储的凭据。但是，保存的文件将保持不变。';

  @override
  String get importExport => '导入和导出';

  @override
  String get chooseDirectory => '选择目录';

  @override
  String get forgetDirectory => '忘记目录';

  @override
  String get newStarredTodo => '新加星标的待办事项';

  @override
  String get allTodos => '所有待办事项';

  @override
  String get newTodoList => '新列表';

  @override
  String get deleteTodoList => '删除列表';

  @override
  String get editTodoList => '编辑列表';

  @override
  String get lists => '列表';

  @override
  String get listsDescription => '创建列表并用它们对待办事项进行排序。您可以创建无限数量的列表，可以通过主屏幕上的抽屉访问。';

  @override
  String aboutToDeleteList(String listName) {
    return '您将要删除列表 $listName 和其中的所有待办事项。此操作是永久性的，无法撤销。';
  }

  @override
  String markBeta(String element) {
    return '$element（测试）';
  }

  @override
  String get list => '列表';

  @override
  String get share => '分享';

  @override
  String get font => '字体';

  @override
  String get fontDescription => '长按可显示字体名称';

  @override
  String get popUpAnimationOverSlideAnimation => '旧版页面过渡';

  @override
  String get popUpAnimationOverSlideAnimationDescription => '使用旧版弹出式页面过渡';

  @override
  String get restart => '重启';

  @override
  String get later => '稍后';

  @override
  String get restartRequired => '需要重启';

  @override
  String get restartRequiredForSetting => '需要重启应用才能使此设置生效。';

  @override
  String get image => '图片';

  @override
  String get expandTodos => '展开待办事项';

  @override
  String get showTodoListNames => '显示列表名称';

  @override
  String get includeBranding => '包括软件推广';

  @override
  String get doableBrandingText => '分享自简单、现代、易于使用的待办事项应用 Doable。\n您可以在此处获得 Doable：https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => '选择您如何分享您的待办事项';

  @override
  String get options => '选项';

  @override
  String get reduceMotion => '减少动画';

  @override
  String get reduceMotionDescription => '减少动画的运动';

  @override
  String get contribute => '贡献';

  @override
  String get contributeWantYourNameHere => '想要在此处找到您的名字吗？';

  @override
  String get contributeWantYourNameHereDescription => '直接向 Doable 做出贡献或者帮助翻译！';

  @override
  String get onlySymbolInDetailViewFab => '图标而不是文本';

  @override
  String get onlySymbolInDetailViewFabDescription => '在待办事项详细信息视图中使用图标而不是文本';

  @override
  String get allSelected => '全部已选';

  @override
  String get sharedTextAsTitle => '分享文本作为标题';

  @override
  String get sharedTextAsTitleDescription => '使用分享到 Doable 的文本作为新待办事项的标题，而不是其描述';

  @override
  String get noTodoLists => '您当前没有任何列表。\n创建一个新的开始吧！';

  @override
  String forExample(String example) {
    return '例如 $example';
  }

  @override
  String get clearSelection => '清除选择';

  @override
  String get syncConnectionTimedOut => '连接超时。';

  @override
  String get syncTooManyTimeOuts => '服务器超时次数太多。在应用重启之前，会禁用同步功能。';

  @override
  String get todoToCalendar => '将待办事项添加到日历';

  @override
  String get logs => '日志';

  @override
  String get logsDescription => '显示 Doable 生成的所有日志';

  @override
  String get aboutToClearAllLogs => '您将要删除所有日志，使其无法用于反馈和故障排除。此操作是永久性的，无法撤销。';

  @override
  String get clearAllLogs => '清除所有日志';

  @override
  String get noLogsYet => '目前没有可以查看的日志。';

  @override
  String get dateFormat => '日期格式';

  @override
  String get timeFormat => '时间格式';

  @override
  String get shareAllLogs => '分享所有日志';

  @override
  String get copyAllLogs => '复制所有日志';

  @override
  String get whatWentWrong => '出了什么问题？';

  @override
  String get fixCorruptBackupFile => '无法读取 Doable 的备份文件，并且似乎已损坏。Doable 可以尝试通过删除当前备份文件并创建新文件来解决此问题。这将删除使用同一备份文件在其他 Doable 实例中所做的所有更改。';

  @override
  String get initializingNextcloud => '正在初始化 Nextcloud…';

  @override
  String get changeNextcloudDirectory => '更改目录';

  @override
  String get dueDate => '截止日期';

  @override
  String get dragToReorder => '拖动以重新排序';

  @override
  String get copySettings => '复制设置';

  @override
  String get copySystemInfo => '复制系统信息';

  @override
  String get languageNameInEnglish => 'Chinese (Simplified)';

  @override
  String get languageNameInNativeLanguage => '中文（简体）';

  @override
  String get createSummaryForBugReport => '创建摘要';

  @override
  String get createSummaryForBugReportDetails => '创建包含系统信息、Doable 设置和所有日志的报告。这对于错误报告很有用，并有助于排除故障。';

  @override
  String get bugReport => '错误报告';

  @override
  String get bugReportSupportingText => '请选择您想要在错误报告中包括的内容。您提供的信息越多，就越容易找出问题所在。**不会分享任何个人信息。**';

  @override
  String get shareBugReport => '分享错误报告';

  @override
  String get fontSize => '字体大小';

  @override
  String get fontSizeDescription => '覆盖系统字体大小';

  @override
  String get decrease => '减小';

  @override
  String get increase => '增大';

  @override
  String get customSecondaryAccentPicker => '二次色';

  @override
  String get customTertiaryAccentPicker => '三次色';

  @override
  String get advancedColorOptions => '高级颜色选项';

  @override
  String get uploadCustomColorScheme => '上传自定义配色方案';

  @override
  String get downloadCurrentColorScheme => '下载当前配色方案';

  @override
  String get markAsStarred => '标记待办事项为星标';

  @override
  String get setTime => '设置时间';

  @override
  String get thereAreNoLists => '还没有任何列表';

  @override
  String get closeDetailsOnCompelte => '完成后关闭详细信息';

  @override
  String get closeDetailsOnCompelteDescription => '保存待办事项，并在按下完成按钮后关闭其详细信息视图。';

  @override
  String get customColorTheme => '自定义颜色主题';

  @override
  String get discardCustomColorTheme => '您将放弃对颜色主题所做的所有更改。';

  @override
  String get lightMode => '浅色模式';

  @override
  String get deletedCustomColorTheme => '已删除自定义颜色主题。';

  @override
  String get customThemeInfo => '在此处，您可以随心所欲地更改每个颜色标记。您还可以将颜色导入/导出到 `json` 文件，并在其中进行编辑！\n\n如果您想了解每个标记的作用，请访问以下网站：https://m3.material.io/foundations/design-tokens';

  @override
  String get import => '导入';

  @override
  String get customThemeFuckedFile => '此文件不包含有效的颜色主题。请确保您的文件采用与导出文件相同的样式和结构。';

  @override
  String get markdownBold => '粗体';

  @override
  String get markdownItalic => '斜体';

  @override
  String get markdownMonospace => '等宽字体';

  @override
  String get markdownHighlight => '突出显示';

  @override
  String get fediChooseInstance => '选择您的实例';

  @override
  String get fediInstanceUrl => '实例 URL';

  @override
  String get fediRememberInstance => '记住我的实例';

  @override
  String get fediDoablePost => '多亏了 @Doable@floss.social，我才完成了所有待办事项！\n\n听起来很有趣？您可以通过访问 https://repo.doable.at 了解有关 #Doable 的更多信息！';

  @override
  String get doable => 'Doable — 现代而简单的待办事项应用';

  @override
  String get rrRepeatsEvery => '重复间隔';

  @override
  String get rrRepeatsOn => '重复时间';

  @override
  String get rrEnds => '结束';

  @override
  String get week => '周';

  @override
  String get weeks => '周';

  @override
  String get day => '天';

  @override
  String get days => '天';

  @override
  String get month => '月';

  @override
  String get months => '月';

  @override
  String get year => '年';

  @override
  String get years => '年';

  @override
  String get onFollowedByDate => '于';

  @override
  String get rrAfterOccurrences => '之后';

  @override
  String get occurrence => '发生';

  @override
  String get occurrences => '发生';

  @override
  String get rrCustomRecurrence => '自定义重复周期';

  @override
  String get daily => '每日';

  @override
  String get weekly => '每周';

  @override
  String get monthly => '每月';

  @override
  String get yearly => '每年';

  @override
  String get doesNotRepeat => '不重复';

  @override
  String get rrRecurrence => '重复周期';

  @override
  String get recurringTodos => '重复待办事项';

  @override
  String get recurringTodosDescription => '为您的待办事项添加重复周期，让 Doable 在您完成后自动为您重新安排。待办事项将根据相关日期和您设置的日程重新安排。如果您没有在待办事项中添加截止日期，则将使用其创建日期。\n\n**有一点需要注意：虽然您现在可以在 Doable 中设置重复任务，但请注意，目前此功能仅限于英语。**';

  @override
  String get post => '发布';

  @override
  String get rrRepeats => '重复';

  @override
  String get beta => '测试';

  @override
  String get extensionBetaWarningDescription => '此扩展仍处于测试阶段，您在使用时可能会遇到一些问题。请注意风险，如果您遇到任何问题，请告诉我！';

  @override
  String get extensionBetaWarning => '启用测试扩展？';

  @override
  String get showFediButton => '显示发布按钮';

  @override
  String get showFediButtonDescription => '显示让您将空列表发布到联邦宇宙的按钮';

  @override
  String get notifications => '通知';

  @override
  String get enableNotifications => '启用通知';

  @override
  String get notifyAll => '所有待办事项';

  @override
  String get notifyAllDescription => '接收具有截止日期的每个待办事项通知';

  @override
  String get notifyTimeOnly => '仅有时间的待办事项';

  @override
  String get notifyTimeOnlyDescription => '仅接收具有截止日期和时间的待办事项通知';

  @override
  String get notifyTodosChannelName => '待办事项';

  @override
  String get notificationsDescription => '让 Doable 在您的待办事项到期时通知您。您还可以更改您将接收通知的待办事项。';

  @override
  String get notificationsDescriptionShort => '更改您接收通知的待办事项';

  @override
  String get notifyNeverDescription => '不要接收任何待办事项的通知';

  @override
  String get defaultNotificationTime => '默认通知时间';

  @override
  String get defaultNotificationTimeDescription => '对于没有相关时间的待办事项，您将接收通知的时间';

  @override
  String get addImage => '添加图片';

  @override
  String get todoImages => '图片';

  @override
  String get todoImagesDescription => '将图片添加到您的待办事项中，以便您可以为正在写的内容添加更多更多上下文。\n\n**很遗憾，图片尚未同步。**';

  @override
  String get clearInputField => '清除输入框';

  @override
  String get removeImage => '移除图片';

  @override
  String get apkSignatureInvalid => '签名无效';

  @override
  String get apkSignatureInvalidDescription => '无法验证下载的 apk 文件的签名。请将此问题告知开发人员。尽管您可以自行承担风险继续安装 apk，但出于潜在的安全考虑，我们建议您谨慎操作。';

  @override
  String get searchTodos => '搜索待办事项';

  @override
  String get editTodo => '编辑待办事项';

  @override
  String get previewTodo => '预览待办事项';

  @override
  String get readerMode => '阅读器模式';

  @override
  String get readerModeDescription => '允许您在编辑屏幕内预览您的待办事项。';

  @override
  String get noList => '没有列表';

  @override
  String get chooseAList => '选择列表';

  @override
  String get readerModeDescriptionShort => '打开待办事项时更改初始模式';

  @override
  String get lastUsed => '最后使用';

  @override
  String get syncFileLocked => '服务器锁定了备份文件，请在大约 15 分钟后重试。';

  @override
  String get syncInternalError => '出现内部错误，不便之处，敬请谅解。';

  @override
  String get syncConnectionError => '连接到服务器时出错。';

  @override
  String get restore => '还原';

  @override
  String get loggingNextcloudIn => '正在登录 Nextcloud…';

  @override
  String get initializingWebdav => '正在初始化 WebDAV…';

  @override
  String get migratingNextcloudToRemote => '正在将 Nextcloud 迁移到新的同步实现…';

  @override
  String get migratingWebdavToRemote => '正在将 WebDAV 迁移到新的同步实现…';

  @override
  String get migrateToRemotes => '迁移';

  @override
  String get migrateToRemotesDescription => 'Doable 最近更改了与 Nextcloud 或 WebDAV 等远程同步的方式。不幸的是，新的实现不是向后兼容的，因此需要进行迁移。Doable 需要一分钟来迁移所需的一切。\n\n如果您选择稍后执行此操作，则可能会遇到一些错误消息，因为尚未设置新的实现。';

  @override
  String get fixBrokenRemoteFile => 'Doable 的备份文件似乎已损坏。Doable 可以通过用当前本地值覆盖它来修复它。这将覆盖发生错误后其他设备所做的任何更改。';

  @override
  String get fixedBrokenRemoteFile => '已成功还原损坏的文件。';

  @override
  String get unfixableRemoteFile => '无法还原文件。';

  @override
  String get syncFileDoesNotExist => 'Doable 的备份文件不存在。';

  @override
  String get todos => '待办事项';

  @override
  String get selectWhatToExport => '请选择要导出的内容。';

  @override
  String get exportFile => '导出文件';

  @override
  String get listColor => '列表颜色';

  @override
  String get listColorAsAccent => '列表颜色作为强调色';

  @override
  String get listColorAsAccentDescription => '使用当前列表的颜色作为 Doable 的强调色';

  @override
  String get privacy => '隐私';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get openSource => '开源';

  @override
  String get sourceCode => '源代码';

  @override
  String get contact => '联系';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'Doable 的所有源代码都可在 FOSS 许可下在 Codeberg 上访问。您还可以在那里提交问题和拉取请求。您还可以在 Codeberg 上找到 Doable 的 F-Droid 存储库！';

  @override
  String get aboutPrivacy => 'Doable 不会收集您的任何个人信息。Doable 存储的关于您使用情况的唯一信息是日志。但是这些日志 **不会自动上传**。这些日志离开您设备的唯一方式是您选择分享它们，例如帮助我修复错误。';

  @override
  String get httpWarning => '未加密的连接';

  @override
  String get cancelling => '正在取消…';

  @override
  String get httpWarningDescription => '您正尝试连接到 HTTP 服务器，而不是更安全的 HTTPS 服务器。HTTP 会将未加密的数据发送到服务器，这会带来潜在的安全风险，因此不建议这样做。然而，有某些用例，如本地托管的服务器。是否确定要继续使用 HTTP？';

  @override
  String get enableNotificationReminder => '提醒通知';

  @override
  String get pickNotificationReminderDuration => '之后提醒我';

  @override
  String get hours => '小时';

  @override
  String get minutes => '分钟';

  @override
  String get enableNotificationSound => '播放声音';

  @override
  String get enableNotificationSoundDescription => '显示通知时播放自定义声音';

  @override
  String get interval => '时间间隔';

  @override
  String get secondly => '每秒钟';

  @override
  String get minutely => '每分钟';

  @override
  String get hourly => '每小时';

  @override
  String get second => '秒';

  @override
  String get startOfTheWeek => '一周开始日';

  @override
  String get hideList => '隐藏列表';

  @override
  String get showList => '显示列表';

  @override
  String get showListDescription => '在概览中显示此列表的待办事项。';

  @override
  String get hideListDescription => '不要在概览中显示此列表的待办事项。';

  @override
  String get gotIt => '明白';

  @override
  String get updateRelease => '打开 Doable 的发布页面并下载最新版本';

  @override
  String get updateDownload => '让 Doable 为您下载最新版本；您将在通知区域中找到该文件，并可以通过单击来安装它';

  @override
  String get updateFdroid => '如果您从 F-Droid 安装了 Doable，则应该在接下来的几个小时内从 IzzyOnDroid 的存储库或 Doable 自己的存储库中获取更新';

  @override
  String get updateDisable => '您还可以在设置中同时禁用自动更新检查';

  @override
  String get updateChecker => '更新检查';

  @override
  String get whatCanYouDo => '您能做些什么？';

  @override
  String get synchronization => '同步';

  @override
  String get backup => '备份';

  @override
  String get autoExport => '自动导出';

  @override
  String get changeDuration => '更改持续时间';

  @override
  String get autoExportDescription => '您可以让 Doable 自动导出您的待办事项、列表和设置。请注意，Doable 将为每次导出创建一个新文件！相应地选择导出之间的持续时间。';

  @override
  String get seconds => '秒';

  @override
  String get apkVerifyingSignature => '正在验证 apk 签名…';

  @override
  String get swipeActions => '滑动操作';

  @override
  String get swipeActionsDescription => '添加了在待办事项上向左滑动以为其加星标或完成的功能。\n\n**请注意，这有时可能会与列表扩展的抽屉发生冲突。**';

  @override
  String get selectedSwipeActions => '选定的操作';

  @override
  String get unselectedSwipeActions => '未选定的操作';

  @override
  String get swipeActionComplete => '完成/取消完成待办事项';

  @override
  String get swipeActionExpand => '展开待办事项';

  @override
  String get swipeActionStar => '星标/取消星标待办事项';

  @override
  String get swipeActionDelete => '删除待办事项';

  @override
  String get swipeActionsHideCheck => '隐藏复选标记';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return '选择 $action 时隐藏复选标记';
  }

  @override
  String get forceHighestRefreshRate => '强制最高刷新率';

  @override
  String get forceHighestRefreshRateDescription => '（尝试）强制系统在应用内使用尽可能高的刷新率';

  @override
  String get overview => '概览';

  @override
  String whatsNewIn(String version) {
    return '$version 更新日志';
  }

  @override
  String get expandTodosByDefault => '默认展开待办事项';

  @override
  String get expandTodosByDefaultDescription => '默认显示已展开的待办事项';

  @override
  String get progress => '进度';

  @override
  String get progressBar => '进度条';

  @override
  String get progressBarDescription => '在您的待办事项中添加进度条，让您更好地控制其完成状态。';

  @override
  String get syncMultipleErrors => '远程遇到多个错误。有关详细信息，请参阅日志。';

  @override
  String get deletedCompleted => '删除了已完成的待办事项。';

  @override
  String get dateRange => '范围';

  @override
  String get next3Days => '接下来的 3 天';

  @override
  String get dateFilters => '日期筛选器';

  @override
  String get dateFiltersDescription => '添加按特定日期范围筛选待办事项的选项。';

  @override
  String get exportedFile => '已导出文件。';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return '请启用 $extensionName 扩展才能使用此功能。';
  }

  @override
  String get enablePrideFlagsDescription => '在某些月份的标题栏后面显示骄傲旗帜';

  @override
  String get enablePrideFlags => '启用骄傲旗帜';

  @override
  String get prideFlagRestOfYear => '全年显示骄傲旗帜';

  @override
  String get addNotification => '添加通知';

  @override
  String get unselected => '未选择';

  @override
  String get selected => '已选择';

  @override
  String get nothingSelected => '未选择任何内容';

  @override
  String get halfHourBefore => '半小时前';

  @override
  String get defaultNotifications => '默认通知';

  @override
  String get aDayAfter => '一天后';

  @override
  String get atTimeOfTodo => '在待办事项时';

  @override
  String get aWeekBefore => '一周前';

  @override
  String get aDayBefore => '一天前';

  @override
  String get anHourBefore => '一小时前';

  @override
  String get defaultNotificationsDescriptionIfLists => '您还可以为每个列表选择不同的通知。';

  @override
  String get halfHourAfter => '半小时后';

  @override
  String get customNotificationTime => '自定义通知时间';

  @override
  String get defaultNotificationsDescription => '选择默认通知，这些通知将添加到每个待办事项中，并带有相关日期。';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个通知',
      one: '1 个通知',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => '通知';

  @override
  String get deleteListSettings => '删除列表设置';

  @override
  String get snooze => '暂停';

  @override
  String get snoozeDurationDescription => '按下暂停按钮后通知延迟的持续时间';

  @override
  String get snoozeDuration => '暂停持续时间';

  @override
  String get sortStarredToday => '今天星标';

  @override
  String get sortStarredOverdue => '逾期星标';

  @override
  String get sortByTitle => '按标题';

  @override
  String get sortByCreationDate => '按创建日期';

  @override
  String get sortStarredRelevantDate => '带有日期的星标';

  @override
  String get sortDescending => '降序';

  @override
  String get sortAscending => '升序';

  @override
  String get sortByRelevantDate => '按截止日期';

  @override
  String get sortByLastEdited => '按最后编辑时间';

  @override
  String get sortingLabel => '排序';

  @override
  String get groupsLabel => '分组';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable 首先对待办事项进行分组，然后分别对每组进行排序，最后再将它们重新组合在一起。在 $groups 标签页中，您可以选择 Doable 创建的组及其顺序。在 $sorting 标签页中，您可以选择 Doable 对每个组进行排序的方式及其重要性顺序。';
  }

  @override
  String get hideForever => '不再显示';

  @override
  String get sortingHelp => '分组和排序';

  @override
  String get info => '信息';

  @override
  String get aboutToCancelChangesToList => '您将放弃对此列表所做的所有更改。';

  @override
  String get notificationsAlwaysPreview => '始终预览通知';

  @override
  String get notificationsAlwaysPreviewDescription => '始终以预览模式打开通知（这不会影响上次使用的模式）';

  @override
  String get nextcloudWipeDescription => 'Doable 收到请求，要求擦除与您登录的 Nextcloud 账号相关的所有数据。因此，您将退出账号。您还可以选择从应用中擦除所有数据（待办事项和列表）。此操作是永久性的，无法撤销。';

  @override
  String get nextcloudWipe => 'Nextcloud 远程擦除';

  @override
  String get wipeData => '擦除数据';

  @override
  String get keepData => '保留数据';

  @override
  String get imageInserted => '图片已插入';

  @override
  String get useSystemFont => '使用系统字体';

  @override
  String get useSystemFontDescription => '使用系统字体作为 Doable 的主要字体';

  @override
  String get batteryOptimization => '电池优化';

  @override
  String get batteryOptimizationDescription => 'Doable 正在进行电池优化。虽然这通常不是问题，但在登录 Nextcloud 时可能会导致一些问题。如果您想确保流畅的体验，请禁用这些优化。';

  @override
  String get couldNotAddTodoToCalendar => '无法将待办事项添加到日历。';

  @override
  String get sortCompleted => '排序已完成';

  @override
  String get sortCompletedDescription => '对已完成的待办事项也进行排序';
}
