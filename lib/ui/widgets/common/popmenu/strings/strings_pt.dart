import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class StringsPt extends Strings {
  StringsPt([String locale = 'pt']) : super(locale);

  @override
  String get about => 'Sobre';

  @override
  String get aboutDescription => 'Infos sobre a app';

  @override
  String get aboutOSInfo => 'Código fonte: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPolítica de privacidade: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nRepositório F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Descartar alterações?';

  @override
  String get aboutToCancelChangesDescription => 'You\'re about to discard all changes made to this Todo.';

  @override
  String get aboutToCancelFeedback => 'Descartar feedback?';

  @override
  String get aboutToCancelFeedbackDescription => 'Estás prestes a descartar o teu feeback. Esta ação não pode ser revertida.';

  @override
  String get aboutToDeleteCompleted => 'You\'re about to delete all completed Todos. This action is permanent and cannot be undone.';

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
    return 'You\'re about to delete $_temp0. This action is permanent and cannot be undone.';
  }

  @override
  String get additionalFeatures => 'Extensões';

  @override
  String get additionalFeaturesDescription => 'Funcionalidades que tornam o Doable mais poderoso';

  @override
  String get alignTodoCheck => 'Check mark right';

  @override
  String get alignTodoCheckDescription => 'Show Todo check mark on the right side';

  @override
  String get appLanguage => 'Idioma da aplicação';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Attention';

  @override
  String get back => 'Back';

  @override
  String get syncAndBackup => 'Sync & Backup';

  @override
  String get syncAndBackupDescription => 'Back up and synchronize your Todos';

  @override
  String get cancel => 'Cancel';

  @override
  String get chooseFeedbackExtrasDescription => 'I recommended including all of the following since it helps me with troubleshooting your problem. This includes no personal information.';

  @override
  String get chooseFeedbackExtrasTitle => 'Que informação extra gostarias de incluir?';

  @override
  String get chooseFeedbackWay => 'Where do you want to give feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Completed Todo.';

  @override
  String get copiedToClipboard => 'Texto copiado para a área de transferência.';

  @override
  String get customAccentPicker => 'Accent color';

  @override
  String get customAccentPickerDescription => 'Choose a custom accent color for the theme of the app';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get deleteCompletedAfter => 'Autodelete completed';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Apagar após $duration';
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
    return 'Deleted $_temp0.';
  }

  @override
  String get description => 'Descrição';

  @override
  String get design => 'Design';

  @override
  String get designDescription => 'Change the look and feel of Doable';

  @override
  String get disable => 'Desativar';

  @override
  String get discard => 'Descartar';

  @override
  String get doContinue => 'Continuar';

  @override
  String get done => 'Feito';

  @override
  String get dynamicColors => 'Cores dinâmicas';

  @override
  String get dynamicColorsDescription => 'Usar cores do sistema (Android 12+)';

  @override
  String get email => 'Email';

  @override
  String get enable => 'Ativar';

  @override
  String get enabled => 'Ativado';

  @override
  String get export => 'Exportar';

  @override
  String get exportAllTodos => 'Export all Todos';

  @override
  String exportEvery(String duration) {
    return 'Export every $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Uma explicação mais detalhada do que correu mal / como aconteceu.';

  @override
  String get feedbackHeader => 'Por favor preenche o formulário abaixo para me ajudar a perceber o que correu mal.';

  @override
  String get feedbackTitleHelp => 'Uma descrição breve do evento.';

  @override
  String get general => 'Geral';

  @override
  String get generalDescription => 'Muda o comportamento geral da app';

  @override
  String get giveFeedback => 'Feedback';

  @override
  String get highlightOverdue => 'Highlight overdue';

  @override
  String get highlightOverdueDescription => 'Highlight Todos that are overdue the same way as starred Todos';

  @override
  String get highlightToday => 'Destacar hoje';

  @override
  String get highlightTodayDescription => 'Highlight Todos that are due today the same way as starred Todos';

  @override
  String get importLocalBackupError => 'File could not be imported. Are you sure it was generated by Doable?';

  @override
  String get importTodosFromFile => 'Importar ficheiro';

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
    return 'Imported $_temp0.';
  }

  @override
  String get installedFrom => 'Installed from';

  @override
  String get introDoubleTap => 'Duplo clique';

  @override
  String get introDoubleTapDescription => 'You can double tap on Todos that feature a description to expand them. When expanded, the full description is shown and you can then interact with links, etc.\n\nYou can try it out with an example right here!';

  @override
  String get introDoubleTapTodoDescription => 'The cake is a lie!\n\nDescobre mais aqui:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Comprar novo bolo';

  @override
  String get introLinks => 'Links, números de telemóvel, emails';

  @override
  String get introLinksDescription => 'Os links, números de telemóvel ou endereços de email que adicionares a uma descrição serão automaticamente destacados e podes interagir com eles.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'You can also synchronize your Todos with a Nextcloud instance. If you\'d like you can log in right here!';

  @override
  String get introStar => 'Estrelas';

  @override
  String get introStarDescription => 'Add a star to a Todo to make it\nstand out amongst the crowd.\n\nGive the star below a tap to try it out!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription => 'When creating a new Todo you can add various things. For example you could add a date when the Todo becomes relevant, or you can star the Todo to make it stick out amongst the rest! You can also add a description with links or other information related to the Todo.';

  @override
  String get introWelcome => 'Bem-vind@ ao Doable!';

  @override
  String get introWelcomeDescription => 'The simple Todo app with modern design\nand Nextcloud integration.';

  @override
  String get keepEditing => 'Continuar a editar';

  @override
  String get left => 'Esquerda';

  @override
  String get licenses => 'Licenças';

  @override
  String get licensesDescription => 'Licenças de código aberto e do Flutter';

  @override
  String get localStorage => 'Armazenamento local';

  @override
  String get logIn => 'Iniciar sessão';

  @override
  String get logOut => 'Terminar sessão';

  @override
  String get logOutputs => 'Logs';

  @override
  String get markCompleted => 'Marcar como concluído';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Marcar como em curso';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Suporte para Markdown';

  @override
  String get mayNotBeEmpty => 'Não deve estar vazio';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Adds support for basic markdown syntax inside the description and title of your Todos.\n\nFor a full list of syntax options you can check out\nhttps://www.markdownguide.org/cheat-sheet/.\n\nHowever, this app **does not** support the entire markdown specifications. Supported elements are:\n\n- **Text styles:**\n  - **Bold**\n  - *Italic*\n  - ~~Strikethrough~~\n  - __Underline__ (`__underline__`)\n  - ==Highlight==\n  - [Links](https://www.markdownguide.org/cheat-sheet/)\n  - `Inline code`\n- **Lists:**\n  1. Ordered lists\n  2. Unordered lists\n  3. Task lists\n- **Blocks:**\n  - Fenced code blocks\n  - Block quotes';

  @override
  String get moveImportantToTop => 'Mover importantes para o topo';

  @override
  String get moveImportantToTopDescription => 'If enabled, Todos that have been starred will always be displayed at the top of the list';

  @override
  String get moveUpWhenUpdated => 'Refletir alterações na lista';

  @override
  String get moveUpWhenUpdatedDescription => 'Todos move to the top of the list after being changed';

  @override
  String get ncBaseUrl => 'Servidor';

  @override
  String get ncBaseUrlHint => 'Nextcloud web interface url';

  @override
  String get ncDirectory => 'Diretório';

  @override
  String get ncFileIn => 'File stored in';

  @override
  String get ncLogOut => 'Terminar sessão no Nextcloud';

  @override
  String get ncLogOutMessage => 'When logging out your stored credentials will be erased. However, the saved file on your Nextcloud instance will persist.';

  @override
  String get ncLoggedInAs => 'Sessão iniciada como';

  @override
  String get ncPassword => 'Palavra passe';

  @override
  String get ncUser => 'Utilizador';

  @override
  String get never => 'Nunca';

  @override
  String get newSubTodo => 'Sub Todo';

  @override
  String get newTodo => 'New Todo';

  @override
  String get next => 'Next';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'There are no Todos left, great job!';

  @override
  String get notAValidUrl => 'Not a valid url';

  @override
  String get off => 'Desligado';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Ligado';

  @override
  String get optional => 'Opcional';

  @override
  String get pickAColor => 'Escolhe uma cor';

  @override
  String get pickerPrimary => 'Standard';

  @override
  String get pickerWheel => 'Personalizado';

  @override
  String get popupMenuDeleteCompleted => 'Apagar concluídas';

  @override
  String get popupMenuHideCompleted => 'Esconder concluídas';

  @override
  String get popupMenuShowCompleted => 'Mostrar concluídas';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Data relevante';

  @override
  String get required => '*obrigatório';

  @override
  String get reset => 'Reset';

  @override
  String get right => 'Direita';

  @override
  String get save => 'Guardar';

  @override
  String get settings => 'Definições';

  @override
  String get showCompletedTodos => 'Mostrar concluídas';

  @override
  String get showCompletedTodosDescription => 'Show completed Todos in the list';

  @override
  String get showIntroScreen => 'Show introduction screen again';

  @override
  String get sortNewestFirst => 'Mais recentes primeiro';

  @override
  String get sortNewestFirstDescription => 'Datas mais recentes são mostradas no topo';

  @override
  String get sortNoRelevantDate => 'Sem data';

  @override
  String get sortOverdue => 'Overdue';

  @override
  String get sortRelevantDate => 'Com data';

  @override
  String get sortStarred => 'Com estrela';

  @override
  String get sortToday => 'Due today';

  @override
  String get sorting => 'Sort order';

  @override
  String get sortingDescription => 'Order in which Todos will be sorted';

  @override
  String get submitFeedback => 'Submeter';

  @override
  String get syncCorruptedFile => 'The backup file seems to be corrupted.';

  @override
  String get syncDirectoryDoesNotExist => 'O diretório especificado não existe.';

  @override
  String get syncNcMaintenance => 'Nextcloud está em Modo de Manutenção.';

  @override
  String get syncNoInternetConnection => 'Sem ligação à internet.';

  @override
  String get syncNotNcServer => 'Não foi possível encontrar um servidor Nextcloud neste endereço.';

  @override
  String get syncServiceUnavailable => 'Nextcloud indisponível.';

  @override
  String get syncSuccessful => 'Synchronized successfully.';

  @override
  String get syncUnknownError => 'Ocorreu um erro desconhecido.';

  @override
  String get syncWrongUrl => 'The url you\'ve provided seems to be incorrect.';

  @override
  String get syncWrongUserOrPassword => 'The given username or password are incorrect.';

  @override
  String get system => 'Sistema';

  @override
  String get systemInfo => 'Sistema';

  @override
  String get thankYouForFeedback => 'Thank you for sending feedback!';

  @override
  String get title => 'Título';

  @override
  String get titleMayNotBeEmpty => 'O Título não pode estar vazio';

  @override
  String get today => 'Today';

  @override
  String get todoSearch => 'Todo search';

  @override
  String get todoSearchDescription => 'Add a search button to the Todo list allowing you to search through your Todos.';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get treatTodayAsIsImportant => 'Treat today as important';

  @override
  String get treatTodayAsIsImportantDescription => 'If enabled, Todos that are due today will be treated as if they were starred';

  @override
  String get trimTodoTexts => 'Trim Todo texts';

  @override
  String get trimTodoTextsDescription => 'If enabled, trims any surrounding whitespace from the Todos title and description';

  @override
  String get trueBlackMode => 'True black mode';

  @override
  String get trueBlackModeDescription => 'Makes the background black, especially useful for oled devices';

  @override
  String get turnOff => 'Turn off';

  @override
  String get turnOn => 'Turn on';

  @override
  String get undo => 'Undo';

  @override
  String get update => 'Update';

  @override
  String get updateCredentials => 'Update credentials';

  @override
  String get useCustomTabs => 'Use in-app browser';

  @override
  String get useCustomTabsDescription => 'Use an in-app browser for opening links';

  @override
  String get whatsNew => 'What\'s new?';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get error => 'Error';

  @override
  String get routingError => 'Oops! It appears that something went wrong and you ended up on a page that, well, does not exist. I am terribly sorry for that!';

  @override
  String get goToHome => 'Go home';

  @override
  String get pageNotFound => 'Page not found';

  @override
  String get updateDoable => 'Update Doable';

  @override
  String get download => 'Download';

  @override
  String get install => 'Install';

  @override
  String get installed => 'Installed';

  @override
  String get updateNotInstalled => 'The update was not installed.';

  @override
  String get skipVersion => 'Skip this version';

  @override
  String get couldNotDownloadUpdate => 'Could not download update.';

  @override
  String versionWithNumber(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdates => 'Auto updates';

  @override
  String get autoUpdatesDescription => 'Automatically check for updates';

  @override
  String get introExtensions => 'Extensões? Extensões!';

  @override
  String get introExtensionsDescription => 'Extensões permitem-te expandir e alargar as funcionalidades do Doable. Estas dão-te o poder de escolher exatamente como queres usar o Doable. Se quiseres ver todas as extensões disponíveis já basta clicar no botão abaixo!';

  @override
  String get introExtensionsButton => 'Expandir já!';

  @override
  String get useBottomSheetMenu => 'Use bottom sheet menu';

  @override
  String get useBottomSheetMenuDescription => 'Use a bottom sheet instead of a drop down as the menu';

  @override
  String get contributors => 'Colaboradores';

  @override
  String get contributorDescription => 'Pessoas que ajudaram o Doable a tornar-se no que é';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'Webdav server url';

  @override
  String get webdavLogOutMessage => 'When logging out your stored credentials will be erased. However, the saved file will persist.';

  @override
  String get importExport => 'Importar & exportar';

  @override
  String get chooseDirectory => 'Escolher diretório';

  @override
  String get forgetDirectory => 'Esquecer diretório';

  @override
  String get newStarredTodo => 'New starred Todo';

  @override
  String get allTodos => 'All Todos';

  @override
  String get newTodoList => 'Nova lista';

  @override
  String get deleteTodoList => 'Apagar lista';

  @override
  String get editTodoList => 'Editar lista';

  @override
  String get lists => 'Listas';

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
  String get list => 'Lista';

  @override
  String get share => 'Partilhar';

  @override
  String get font => 'Tipo de letra';

  @override
  String get fontDescription => 'Mudar o tipo de letra do Doable';

  @override
  String get popUpAnimationOverSlideAnimation => 'Old page transition';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Use the old pop up style page transition';

  @override
  String get restart => 'Reiniciar';

  @override
  String get later => 'Mais tarde';

  @override
  String get restartRequired => 'Reinício necessário';

  @override
  String get restartRequiredForSetting => 'É necessário reiniciar a aplicação para esta definição ter efeito.';

  @override
  String get image => 'Imagem';

  @override
  String get expandTodos => 'Expand Todos';

  @override
  String get showTodoListNames => 'Mostrar nomes das listas';

  @override
  String get includeBranding => 'Include branding';

  @override
  String get doableBrandingText => 'Shared from Doable, the simple, modern and easy to use Todo app.\nYou can get Doable here: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Select how you want to share your Todos';

  @override
  String get options => 'Opções';

  @override
  String get reduceMotion => 'Reduzir movimento';

  @override
  String get reduceMotionDescription => 'Reduzir movimento das animações';

  @override
  String get contribute => 'Contribuir';

  @override
  String get contributeWantYourNameHere => 'Queres o teu nome aqui?';

  @override
  String get contributeWantYourNameHereDescription => 'Contribui diretamente para o Doable ou ajuda a traduzi-lo!';

  @override
  String get onlySymbolInDetailViewFab => 'Ícone em vez de texto';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Use an icon instead of text in the Todo detail view';

  @override
  String get allSelected => 'Todos';

  @override
  String get sharedTextAsTitle => 'Texto partilhado como título';

  @override
  String get sharedTextAsTitleDescription => 'Use text shared to Doable as the title of the new Todo instead of its description';

  @override
  String get noTodoLists => 'Atualmente não tens listas.\nCria uma para começares!';

  @override
  String forExample(String example) {
    return 'ex. $example';
  }

  @override
  String get clearSelection => 'Limpar seleção';

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
  String get dateFormat => 'Formato da data';

  @override
  String get timeFormat => 'Formato da hora';

  @override
  String get shareAllLogs => 'Share all logs';

  @override
  String get copyAllLogs => 'Copy all logs';

  @override
  String get whatWentWrong => 'O que correu mal?';

  @override
  String get fixCorruptBackupFile => 'The backup file of Doable could not be read and appears to be corrupt. Doable can try to fix this by deleting the current backup file and creating a new one. This will delete all changes made in other Doable instances using the same backup file.';

  @override
  String get initializingNextcloud => 'A inicializar Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Mudar diretório';

  @override
  String get dueDate => 'Due date';

  @override
  String get dragToReorder => 'Arrasta para reordenar';

  @override
  String get copySettings => 'Copiar definições';

  @override
  String get copySystemInfo => 'Copiar informações do sistema';

  @override
  String get languageNameInEnglish => 'Portuguese';

  @override
  String get languageNameInNativeLanguage => 'Português';

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
  String get fontSize => 'Tamanho da letra';

  @override
  String get fontSizeDescription => 'Override system font size';

  @override
  String get decrease => 'Diminuir';

  @override
  String get increase => 'Aumentar';

  @override
  String get customSecondaryAccentPicker => 'Cor secundária';

  @override
  String get customTertiaryAccentPicker => 'Cor terciária';

  @override
  String get advancedColorOptions => 'Advanced color options';

  @override
  String get uploadCustomColorScheme => 'Upload custom color scheme';

  @override
  String get downloadCurrentColorScheme => 'Descarregar esquema de cores atual';

  @override
  String get markAsStarred => 'Mark Todo as starred';

  @override
  String get setTime => 'Set time';

  @override
  String get thereAreNoLists => 'Ainda não existem listas';

  @override
  String get closeDetailsOnCompelte => 'Close details on complete';

  @override
  String get closeDetailsOnCompelteDescription => 'Saves the Todo and closes its detail view when pressing the complete button.';

  @override
  String get customColorTheme => 'Esquema de cores personalizado';

  @override
  String get discardCustomColorTheme => 'Estás prestes a descartar todas as alterações feitas ao esquema de cores.';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get deletedCustomColorTheme => 'Esquema de cores personalizado apagado.';

  @override
  String get customThemeInfo => 'Here you can change each and every color token to your heart’s content. You can also import / export the colors into a `json` file and edit them there!\n\nIf you want to understand, what each token does, please visit the following website: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importar';

  @override
  String get customThemeFuckedFile => 'Este ficheiro não tem um esquema de cores válido. Por favor certifica-te que o teu ficheiro segue o mesmo estilo e estrutura do ficheiro que exportaste.';

  @override
  String get markdownBold => 'Negrito';

  @override
  String get markdownItalic => 'Itálico';

  @override
  String get markdownMonospace => 'Monospace';

  @override
  String get markdownHighlight => 'Destacar';

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

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class StringsPtBr extends StringsPt {
  StringsPtBr(): super('pt_BR');

  @override
  String get about => 'Sobre';

  @override
  String get aboutDescription => 'Informações sobre o aplicativo';

  @override
  String get aboutOSInfo => 'Código-fonte: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPolítica de Privacidade: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nRepositório F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Descartar alterações?';

  @override
  String get aboutToCancelChangesDescription => 'Você está prestes a descartar todas as alterações feitas neste Todo.';

  @override
  String get aboutToCancelFeedback => 'Descartar comentários?';

  @override
  String get aboutToCancelFeedbackDescription => 'Você está prestes a descartar seu feedback. Isto não pode ser desfeito.';

  @override
  String get aboutToDeleteCompleted => 'Você está prestes a apagar todos os Todos concluídos. Essa ação é permanente e não pode ser desfeita.';

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
      one: 'um Todo',
    );
    return 'Você está prestes a apagar $_temp0. Está ação é permanente e não pode ser desfeita.';
  }

  @override
  String get additionalFeatures => 'Extensões';

  @override
  String get additionalFeaturesDescription => 'Funcionalidades que fazem o Doable mais poderoso';

  @override
  String get alignTodoCheck => 'Caixa de seleção direita';

  @override
  String get alignTodoCheckDescription => 'Mostrar a caixa de seleção TODO no lado direito';

  @override
  String get appLanguage => 'Idioma do aplicativo';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Atenção';

  @override
  String get back => 'Voltar';

  @override
  String get syncAndBackup => 'Backup & Sincronização';

  @override
  String get syncAndBackupDescription => 'Fazer backup e sincronizar seus TODOs';

  @override
  String get cancel => 'Cancelar';

  @override
  String get chooseFeedbackExtrasDescription => 'Recomendei incluir todos os itens a seguir, pois isso me ajuda a solucionar seu problema. Isto não inclui informações pessoais.';

  @override
  String get chooseFeedbackExtrasTitle => 'Você gostaria de incluir mais alguma informação?';

  @override
  String get chooseFeedbackWay => 'Onde você deseja dar feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Todo concluído.';

  @override
  String get copiedToClipboard => 'Texto copiado para a área de transferência.';

  @override
  String get customAccentPicker => 'Cor de destaque';

  @override
  String get customAccentPickerDescription => 'Escolha uma cor de destaque personalizada para o tema do aplicativo';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get deleteCompletedAfter => 'Autodelete concluido';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Apagar após $duration';
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
      other: '$countString TODOs',
      one: 'one TODO',
    );
    return 'Deletado $_temp0.';
  }

  @override
  String get description => 'Descrição';

  @override
  String get design => 'Aparência';

  @override
  String get designDescription => 'Alterar a aparência do Doable';

  @override
  String get disable => 'Desabilitar';

  @override
  String get discard => 'Descartar';

  @override
  String get doContinue => 'Continuar';

  @override
  String get done => 'Conckuido';

  @override
  String get dynamicColors => 'Cores dinâmicas';

  @override
  String get dynamicColorsDescription => 'Usar cor padrão do sistema (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Ativar';

  @override
  String get enabled => 'Ativado';

  @override
  String get export => 'Exportar';

  @override
  String get exportAllTodos => 'Exportar todos os Todos';

  @override
  String exportEvery(String duration) {
    return 'Exportar a cada $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Uma explicação mais detalhada sobre o que aconteceu de errado e como aconteceu.';

  @override
  String get feedbackHeader => 'Preencha o formulário abaixo para me ajudar a entender o que deu errado.';

  @override
  String get feedbackTitleHelp => 'Um breve resumo do evento.';

  @override
  String get general => 'Geral';

  @override
  String get generalDescription => 'Alterar o comportamento geral do aplicativo';

  @override
  String get giveFeedback => 'Feedback';

  @override
  String get highlightOverdue => 'Destacar atrasado';

  @override
  String get highlightOverdueDescription => 'Destaque TODOs que estão atrasados da mesma forma que os TODOs com estrela';

  @override
  String get highlightToday => 'Destacar hoje';

  @override
  String get highlightTodayDescription => 'Destaque os TODOs que vencem hoje da mesma forma que os TODOs com estrela';

  @override
  String get importLocalBackupError => 'O arquivo não pôde ser importado. Você tem certeza de que este arquivo foi gerado pelo Doable?';

  @override
  String get importTodosFromFile => 'Importar arquivo';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString TODOs',
      one: 'um TODO',
      zero: 'zero TODOs',
    );
    return 'Importado $_temp0.';
  }

  @override
  String get installedFrom => 'Instalado de';

  @override
  String get introDoubleTap => 'Toque duplo';

  @override
  String get introDoubleTapDescription => 'Você pode tocar duas vezes nos TODOs que apresentam uma descrição para expandi-los. Quando expandida, a descrição completa é exibida e você pode interagir com links, etc.\n\nVocê pode experimentar com um exemplo aqui mesmo!';

  @override
  String get introDoubleTapTodoDescription => 'O bolo é uma mentira!\n\nSaiba mais aqui:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Comprar novo bolo';

  @override
  String get introLinks => 'Links, telefones, e-mails';

  @override
  String get introLinksDescription => 'Quando você adicionar links, números de telefone ou endereços de e-mail a uma descrição, eles serão automaticamente destacados e você poderá interagir com eles.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Você pode também sincronizar seus afazeres com uma instância da Nextcloud. Se você quiser pode se logar logo aqui!';

  @override
  String get introStar => 'Estrelas';

  @override
  String get introStarDescription => 'Adicionar uma estrela a afazeres para fazê-lo \nse destacar entre a multidão.\nClique na estrela abaixo para experimentar!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription => 'Quando criando um novo afazer você pode adicionar várias coisas. Por exemplo você poderia adicionar uma data para quando o afazer se tornar relevante, ou você pode colocar uma estrela no afazer para fazer ele se destacar dos outros! Você também pode adicionar uma descrição com links ou outras informações relacionadas ao afazer.';

  @override
  String get introWelcome => 'Bem-vindo ao Doable!';

  @override
  String get introWelcomeDescription => 'O aplicativo simples de afazeres com design moderno\ne integração com o Nextcloud.';

  @override
  String get keepEditing => 'Manter-se editando';

  @override
  String get left => 'Esquerda';

  @override
  String get licenses => 'Licenças';

  @override
  String get licensesDescription => 'Licenças de código aberto e flutter';

  @override
  String get localStorage => 'Armazenamento local';

  @override
  String get logIn => 'Logar';

  @override
  String get logOut => 'Deslogar';

  @override
  String get logOutputs => 'Logs';

  @override
  String get markCompleted => 'Marcar como completado';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Marcar como incompleto';

  @override
  String get markdown => 'Remarcar';

  @override
  String get markdownDescription => 'Suporte de remarcação';

  @override
  String get mayNotBeEmpty => 'Talvez não esteja vazio';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get newSubTodo => 'sub afazer';

  @override
  String get newTodo => 'Novo afazer';

  @override
  String get next => 'Próximo';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Nenhum afazer restante, bom trabalho!';

  @override
  String get notAValidUrl => 'Url inválido';

  @override
  String get off => 'Desligado';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Ligado';

  @override
  String get optional => 'Opcional';

  @override
  String get pickAColor => 'Escolha uma cor';

  @override
  String get pickerPrimary => 'Padrão';

  @override
  String get pickerWheel => 'Personalizado';

  @override
  String get popupMenuDeleteCompleted => 'Exclusão concluída';

  @override
  String get popupMenuHideCompleted => 'Ocultar concluído';

  @override
  String get popupMenuShowCompleted => 'Mostrar concluído';

  @override
  String get quoteDoubleLeft => '\"';

  @override
  String get quoteDoubleRight => '';

  @override
  String get quoteSingleLeft => '\'';

  @override
  String get quoteSingleRight => '';

  @override
  String get relevantDate => 'Data de vencimento';

  @override
  String get required => '*obrigatória';

  @override
  String get reset => 'Redefinida';

  @override
  String get right => 'Correta';

  @override
  String get save => 'Salvar';

  @override
  String get settings => 'Configurações';

  @override
  String get showCompletedTodos => 'Mostrar concluídos';

  @override
  String get showCompletedTodosDescription => 'Mostrar afazeres concluídos na lista';

  @override
  String get showIntroScreen => 'Mostrar tela de início denovo';

  @override
  String get sortNewestFirst => 'Novos primeiro';

  @override
  String get sortNewestFirstDescription => 'Novas datas são mostradas no topo';

  @override
  String get sortNoRelevantDate => 'Sem data';

  @override
  String get sortOverdue => 'Atrasado';

  @override
  String get sortRelevantDate => 'Com data';

  @override
  String get sortStarred => 'Marcado com estrela';

  @override
  String get sortToday => 'Vencimento hoje';

  @override
  String get sorting => 'Ordem de classificação';

  @override
  String get sortingDescription => 'Ordem em que afazeres serão classificados';
}
