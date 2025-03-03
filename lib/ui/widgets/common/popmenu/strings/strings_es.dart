import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class StringsEs extends Strings {
  StringsEs([String locale = 'es']) : super(locale);

  @override
  String get about => 'Sobre Doable';

  @override
  String get aboutDescription => 'Información sobre la app';

  @override
  String get aboutOSInfo =>
      'Código fuente: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPolítica de privacidad: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nRepositorio F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => '¿Deshacer los cambios?';

  @override
  String get aboutToCancelChangesDescription =>
      'Vas a deshacer todos los cambios realizados en esta tarea.';

  @override
  String get aboutToCancelFeedback => '¿Cancelar comentario?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Vas a cancelar tu comentario. No habrá vuelta atrás.';

  @override
  String get aboutToDeleteCompleted =>
      'Estás a punto de borrar todas tus tareas completadas. Esta acción es permanente y no se puede deshacer.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString tareas',
      one: 'una tarea',
    );
    return 'Estás a punto de borrar $_temp0. Esta acción es permanente y no se puede deshacer.';
  }

  @override
  String get additionalFeatures => 'Extensiones';

  @override
  String get additionalFeaturesDescription =>
      'Características que hacen a Doable más completo';

  @override
  String get alignTodoCheck => 'Casilla a la derecha';

  @override
  String get alignTodoCheckDescription =>
      'Mostrar la casilla de la tarea a la derecha';

  @override
  String get appLanguage => 'Idioma de la app';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Atención';

  @override
  String get back => 'Atrás';

  @override
  String get syncAndBackup => 'Sincronización y copia de seguridad';

  @override
  String get syncAndBackupDescription => 'Guarda y sincroniza tus tareas';

  @override
  String get cancel => 'Cancelar';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Recomiendo incluir todos los apartados siguientes, dado que me ayudará a solucionar tu problema. No incluyen información personal.';

  @override
  String get chooseFeedbackExtrasTitle =>
      '¿Qué información adicional quieres incluir?';

  @override
  String get chooseFeedbackWay => '¿Dónde quieres hacer llegar tu comentario?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Tarea completada.';

  @override
  String get copiedToClipboard => 'Texto copiado al portapapeles.';

  @override
  String get customAccentPicker => 'Color de acento';

  @override
  String get customAccentPickerDescription =>
      'Escoge un color de acento personalizado para el tema de la app';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get deleteCompletedAfter =>
      'Eliminar automáticamente tareas completadas';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Borrar después de $duration';
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
      other: 'Se han borrado $countString tareas',
      one: 'Se ha borrado una tarea',
    );
    return '$_temp0.';
  }

  @override
  String get description => 'Descripción';

  @override
  String get design => 'Diseño';

  @override
  String get designDescription => 'Cambia la apariencia de Doable';

  @override
  String get disable => 'Deshabilitar';

  @override
  String get discard => 'Descartar';

  @override
  String get doContinue => 'Continuar';

  @override
  String get done => 'Listo';

  @override
  String get dynamicColors => 'Tema dinámico';

  @override
  String get dynamicColorsDescription =>
      'Usa los colores del sistema (Android 12 en adelante)';

  @override
  String get email => 'Correo';

  @override
  String get enable => 'Habilitar';

  @override
  String get enabled => 'Activado';

  @override
  String get export => 'Exportar';

  @override
  String get exportAllTodos => 'Exportar todas las tareas';

  @override
  String exportEvery(String duration) {
    return 'Exportar cada $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Una explicación más detallada de qué falló y cómo ocurrió.';

  @override
  String get feedbackHeader =>
      'Por favor, rellena los campos para ayudarme a entender qué ha fallado.';

  @override
  String get feedbackTitleHelp => 'Un resumen de lo ocurrido.';

  @override
  String get general => 'General';

  @override
  String get generalDescription =>
      'Cambiar el comportamiento general de la app';

  @override
  String get giveFeedback => 'Comentarios';

  @override
  String get highlightOverdue => 'Destacar atrasos';

  @override
  String get highlightOverdueDescription =>
      'Destacar tareas con retraso igual que las tareas con estrella';

  @override
  String get highlightToday => 'Destacar hoy';

  @override
  String get highlightTodayDescription =>
      'Destacar las tareas para hoy como las tareas con estrella';

  @override
  String get importLocalBackupError =>
      'No se ha podido importar el archivo. ¿Está seguro de que fue generado por Doable?';

  @override
  String get importTodosFromFile => 'Importar archivo';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Se han importado $countString tareas',
      one: 'Se ha importado una tarea',
      zero: 'zero Todos',
    );
    return '$_temp0.';
  }

  @override
  String get installedFrom => 'Instalado desde';

  @override
  String get introDoubleTap => 'Doble toque';

  @override
  String get introDoubleTapDescription =>
      'Puedes pulsar dos veces en tareas con una descripción para expandirlas. Cuando se expanden, se muestra la descripción completa y puedes pulsar enlaces, etc.\n\n¡Puedes probar con este ejemplo de aquí!';

  @override
  String get introDoubleTapTodoDescription =>
      '¡La tarta es una mentira!\n\nDescubre más aquí:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Comprar nueva tarta';

  @override
  String get introLinks => 'Enlaces, números de teléfono, correos';

  @override
  String get introLinksDescription =>
      'Cuando añades enlaces, números de teléfono o correos a una descripción, se destacan automáticamente y puedes interactuar con ellos.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'También puedes sincronizar tus tareas con una instancia de Nextcloud. Si quieres, ¡puedes iniciar sesión aquí mismo!';

  @override
  String get introStar => 'Estrellas';

  @override
  String get introStarDescription =>
      'Añade una estrella a una tarea para\nque destaque entre las demás.\n\n¡Toca la estrella de debajo y pruébalo!';

  @override
  String get introTodos => 'Tareas';

  @override
  String get introTodosDescription =>
      'Cuando creas una nueva tarea puedes añadir varias cosas. Por ejemplo, puedes añadir una fecha para la tarea o marcarla con una estrella para hacer que destaque. Además, puedes añadir una descripción con enlaces u otra información relacionada con la tarea.';

  @override
  String get introWelcome => '¡Te damos la bienvenida a Doable!';

  @override
  String get introWelcomeDescription =>
      'La aplicación de tareas sencilla con un diseño \nmoderno e integración con Nextcloud.';

  @override
  String get keepEditing => 'Continuar editando';

  @override
  String get left => 'Izquierda';

  @override
  String get licenses => 'Licencias';

  @override
  String get licensesDescription => 'Licencias de código abierto y de Flutter';

  @override
  String get localStorage => 'Almacenamiento local';

  @override
  String get logIn => 'Iniciar sesión';

  @override
  String get logOut => 'Cerrar sesión';

  @override
  String get logOutputs => 'Registros';

  @override
  String get markCompleted => 'Marcar como completada';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Marcar como no completada';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Soporte de Markdown';

  @override
  String get mayNotBeEmpty => 'No estará vacío';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Añade soporte para la sintaxis básica de markdown dentro de la descripción y el título de su Todos.\n\nPara una lista completa de opciones de sintaxis puede consultar\nhttps://www.markdownguide.org/cheat-sheet/.\n\nSin embargo, esta aplicación **no** admite todas las especificaciones de reducción. Los elementos compatibles son:\n\n- **Estilos de texto:**\n  - **Negrita**\n  - *Itálico*\n  - ~~Tachado~~\n  - __Subline__ (`__subline__)\n  - ==Destacado==\n  - [Enlaces](https://www.markdownguide.org/cheat-sheet/)\n  - Código en línea\n- **Listas:**\n  1. Listas ordenadas\n  2. Listas no ordenadas\n  3. Listas de tareas\n- **Bloques:**\n  - Bloques de código vallados\n  - Cotizaciones de bloque';

  @override
  String get moveImportantToTop => 'Mover importantes arriba';

  @override
  String get moveImportantToTopDescription =>
      'Si se activa, las tareas con estrella se mostrarán siempre en la parte superior de la lista';

  @override
  String get moveUpWhenUpdated => 'Reflejar cambios en la lista';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Las tareas se mueven arriba en la lista al editarse';

  @override
  String get ncBaseUrl => 'Servidor';

  @override
  String get ncBaseUrlHint => 'Enlace de interfaz web de Nextcloud';

  @override
  String get ncDirectory => 'Directorio';

  @override
  String get ncFileIn => 'Archivo guardado en';

  @override
  String get ncLogOut => 'Desconectando de Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Cuando te desconectas, tus credenciales se borran. Aún así, el archivo guardado en tu Nextcloud se mantendrá.';

  @override
  String get ncLoggedInAs => 'Sesión iniciada como';

  @override
  String get ncPassword => 'Contraseña';

  @override
  String get ncUser => 'Usuario';

  @override
  String get never => 'Nunca';

  @override
  String get newSubTodo => 'Subtarea';

  @override
  String get newTodo => 'Nueva tarea';

  @override
  String get next => 'Siguiente';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'No quedan más tareas, ¡bien hecho!';

  @override
  String get notAValidUrl => 'No es un enlace válido';

  @override
  String get off => 'Apagado';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Encendido';

  @override
  String get optional => 'Opcional';

  @override
  String get pickAColor => 'Escoger un color';

  @override
  String get pickerPrimary => 'Estándar';

  @override
  String get pickerWheel => 'Personalizado';

  @override
  String get popupMenuDeleteCompleted => 'Borrar completadas';

  @override
  String get popupMenuHideCompleted => 'Ocultar completadas';

  @override
  String get popupMenuShowCompleted => 'Mostrar completadas';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Fecha de vencimiento';

  @override
  String get required => '*obligatorio';

  @override
  String get reset => 'Borrar';

  @override
  String get right => 'Derecha';

  @override
  String get save => 'Guardar';

  @override
  String get settings => 'Ajustes';

  @override
  String get showCompletedTodos => 'Mostrar completadas';

  @override
  String get showCompletedTodosDescription =>
      'Muestra las tareas completadas en la lista';

  @override
  String get showIntroScreen => 'Mostrar pantalla de bienvenida de nuevo';

  @override
  String get sortNewestFirst => 'Nuevas primero';

  @override
  String get sortNewestFirstDescription =>
      'Las fechas recientes se muestran arriba';

  @override
  String get sortNoRelevantDate => 'Sin fecha';

  @override
  String get sortOverdue => 'Fuera de plazo';

  @override
  String get sortRelevantDate => 'Con fecha';

  @override
  String get sortStarred => 'Con estrella';

  @override
  String get sortToday => 'Para hoy';

  @override
  String get sorting => 'Orden de la lista';

  @override
  String get sortingDescription => 'Orden en el que se muestran las tareas';

  @override
  String get submitFeedback => 'Enviar';

  @override
  String get syncCorruptedFile => 'La copia de seguridad parece corrupta.';

  @override
  String get syncDirectoryDoesNotExist =>
      'El directorio especificado no existe.';

  @override
  String get syncNcMaintenance => 'Nextcloud está en Modo de Mantenimiento.';

  @override
  String get syncNoInternetConnection => 'Sin conexión a internet.';

  @override
  String get syncNotNcServer =>
      'No se pudo encontrar un servidor de Nextcloud en esta dirección.';

  @override
  String get syncServiceUnavailable => 'Nextcloud no está disponible.';

  @override
  String get syncSuccessful => 'Sincronizada con éxito.';

  @override
  String get syncUnknownError => 'Ha habido un error desconocido.';

  @override
  String get syncWrongUrl => 'El enlace que has indicado parece incorrecto.';

  @override
  String get syncWrongUserOrPassword =>
      'El usuario o contraseña son incorrectos.';

  @override
  String get system => 'Sistema';

  @override
  String get systemInfo => 'Sistema';

  @override
  String get thankYouForFeedback => '¡Gracias por enviar tus comentarios!';

  @override
  String get title => 'Título';

  @override
  String get titleMayNotBeEmpty => 'El título no puede estar vacío';

  @override
  String get today => 'Hoy';

  @override
  String get todoSearch => 'Búsqueda de tareas';

  @override
  String get todoSearchDescription =>
      'Añade un botón de búsqueda a tu lista de tareas, permitiendo buscar entre ellas.';

  @override
  String get tomorrow => 'Mañana';

  @override
  String get treatTodayAsIsImportant => 'Tratar hoy como importante';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Si está activado, las tareas para hoy serán tratadas como si tuviesen una estrella';

  @override
  String get trimTodoTexts => 'Cortar textos de las tareas';

  @override
  String get trimTodoTextsDescription =>
      'Si está activo, recorta los espacios en blanco de títulos y descripciones de las tareas';

  @override
  String get trueBlackMode => 'Modo oscuro real';

  @override
  String get trueBlackModeDescription =>
      'Vuelve el fondo negro, especialmente útil para pantallas oled';

  @override
  String get turnOff => 'Desactivar';

  @override
  String get turnOn => 'Encender';

  @override
  String get undo => 'Deshacer';

  @override
  String get update => 'Actualizar';

  @override
  String get updateCredentials => 'Actualizar credenciales';

  @override
  String get useCustomTabs => 'Usar navegador interno';

  @override
  String get useCustomTabsDescription =>
      'Usa un navegador interno de la app para abrir enlaces';

  @override
  String get whatsNew => '¿Qué ha cambiado?';

  @override
  String get yesterday => 'Ayer';

  @override
  String get error => 'Error';

  @override
  String get routingError =>
      '¡Uy! Parece que algo ha salido mal y has acabado en una página que, bueno, no existe. ¡Lo siento mucho!';

  @override
  String get goToHome => 'Ir a inicio';

  @override
  String get pageNotFound => 'Página no encontrada';

  @override
  String get updateDoable => 'Actualizar Doable';

  @override
  String get download => 'Descargar';

  @override
  String get install => 'Instalar';

  @override
  String get installed => 'Instalado';

  @override
  String get updateNotInstalled => 'La actualización no se instaló.';

  @override
  String get skipVersion => 'Saltar esta versión';

  @override
  String get couldNotDownloadUpdate => 'No se pudo descargar la actualización.';

  @override
  String versionWithNumber(String version) {
    return 'Versión $version';
  }

  @override
  String get autoUpdates => 'Actualizaciones automáticas';

  @override
  String get autoUpdatesDescription => 'Buscar actualizaciones automáticamente';

  @override
  String get introExtensions => '¿Extensiones? ¡Extensiones!';

  @override
  String get introExtensionsDescription =>
      'Las extensiones te permiten ampliar las características de Doable. Te dan el poder de escoger específicamente cómo quieres usar Doable. Si quieres mirar todas las extensiones disponibles, ¡toca en el botón de debajo!';

  @override
  String get introExtensionsButton => '¡Hasta el infinito y más allá!';

  @override
  String get useBottomSheetMenu => 'Menú en la parte inferior';

  @override
  String get useBottomSheetMenuDescription =>
      'Usar un menú en la parte inferior en vez de un desplegable';

  @override
  String get contributors => 'Colaboradores';

  @override
  String get contributorDescription =>
      'Personas que han ayudado a Doable a ser lo que es';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'Url del servidor webdav';

  @override
  String get webdavLogOutMessage =>
      'Cuando cierras sesión tus credenciales se borran. Aun así, el archivo guardado permanece.';

  @override
  String get importExport => 'Importar y exportar';

  @override
  String get chooseDirectory => 'Escoge una carpera';

  @override
  String get forgetDirectory => 'Olvidar carpeta';

  @override
  String get newStarredTodo => 'Nueva tarea destacada';

  @override
  String get allTodos => 'Todas las tareas';

  @override
  String get newTodoList => 'Nueva lista';

  @override
  String get deleteTodoList => 'Borrar lista';

  @override
  String get editTodoList => 'Editar lista';

  @override
  String get lists => 'Listas';

  @override
  String get listsDescription =>
      'Crea listas y ordena tus tareas con ellas. Puedes crear una cantidad ilimitada de listas, accesibles a través del menú lateral en la pantalla principal.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Estás a punto de borrar la lista $listName y todas las tareas dentro de ella. Esta acción es permanente y no se puede deshacer.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Lista';

  @override
  String get share => 'Compartir';

  @override
  String get font => 'Letra';

  @override
  String get fontDescription =>
      'Pulsación larga para mostrar los nombres de las fuentes';

  @override
  String get popUpAnimationOverSlideAnimation => 'Transición de página antigua';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Usa la el antiguo estilo de transición de página';

  @override
  String get restart => 'Reiniciar';

  @override
  String get later => 'Luego';

  @override
  String get restartRequired => 'Reinicio necesario';

  @override
  String get restartRequiredForSetting =>
      'Es necesario reiniciar la app para aplicar este ajuste.';

  @override
  String get image => 'Imagen';

  @override
  String get expandTodos => 'Expandir Todos';

  @override
  String get showTodoListNames => 'Mostrar nombres de listas';

  @override
  String get includeBranding => 'Incluir la marca';

  @override
  String get doableBrandingText =>
      'Compartido desde Doable, la app sencilla, moderna y fácil de usar.\nPuedes obtener Doable aquí: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'Selecciona cómo quieres compartir tus tareas';

  @override
  String get options => 'Opciones';

  @override
  String get reduceMotion => 'Reducir movimiento';

  @override
  String get reduceMotionDescription =>
      'Reduce el movimiento de las animaciones';

  @override
  String get contribute => 'Contribuir';

  @override
  String get contributeWantYourNameHere => '¿Quieres que aparezca tu nombre?';

  @override
  String get contributeWantYourNameHereDescription =>
      '¡Contribuye directamente con Doable o ayuda en la traducción!';

  @override
  String get onlySymbolInDetailViewFab => 'Icono en vez de texto';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Utilizar un icono en lugar de texto en la vista detallada de tarea';

  @override
  String get allSelected => 'Todos los seleccionados';

  @override
  String get sharedTextAsTitle => 'Texto compartido como título';

  @override
  String get sharedTextAsTitleDescription =>
      'Usar el texto compartido a Doable como el título de una nueva tarea en vez de como descripción';

  @override
  String get noTodoLists => 'No hay listas todavía.\n¡Crea una para empezar!';

  @override
  String forExample(String example) {
    return 'P. ej. $example';
  }

  @override
  String get clearSelection => 'Borrar la selección';

  @override
  String get syncConnectionTimedOut => 'Tiempo de conexión agotado.';

  @override
  String get syncTooManyTimeOuts =>
      'El servidor no ha respondido varias veces. La sincronización se desactivará hasta que se reinicie la app.';

  @override
  String get todoToCalendar => 'Añadir tarea al calendario';

  @override
  String get logs => 'Registros';

  @override
  String get logsDescription => 'Mostrar todos los registros que genera Doable';

  @override
  String get aboutToClearAllLogs =>
      'Estás a punto de borrar todos los registros, haciéndolos inaccesibles para comentarios y resolución de problemas. Esta acción es permanente y no se puede deshacer.';

  @override
  String get clearAllLogs => 'Borrar todos los registros';

  @override
  String get noLogsYet => 'Actualmente no hay registros que puedas consultar.';

  @override
  String get dateFormat => 'Formato de la fecha';

  @override
  String get timeFormat => 'Formato de la hora';

  @override
  String get shareAllLogs => 'Compartir todos los registros';

  @override
  String get copyAllLogs => 'Copiar todos los registros';

  @override
  String get whatWentWrong => '¿Qué ha fallado?';

  @override
  String get fixCorruptBackupFile =>
      'El archivo de la copia de seguridad de Doable no se ha podido leer y parece estar corrupto. Doable puede intentar arreglar esto borrando el archivo de respaldo actual y creando uno nuevo. Esto borrará todos los cambios realizados en otras instancias de Doable que utilicen el mismo archivo de la copia de seguridad.';

  @override
  String get initializingNextcloud => 'Inicializando Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Modificar directorio';

  @override
  String get dueDate => 'Vencimiento';

  @override
  String get dragToReorder => 'Arrastra para reordenar';

  @override
  String get copySettings => 'Configuración de la copia';

  @override
  String get copySystemInfo => 'Copiar la información del sistema';

  @override
  String get languageNameInEnglish => 'Spanish';

  @override
  String get languageNameInNativeLanguage => 'Español';

  @override
  String get createSummaryForBugReport => 'Crear un resumen';

  @override
  String get createSummaryForBugReportDetails =>
      'Crea un informe que contiene información del sistema, la configuración de Doable y todos los registros. Esto puede ser útil para los informes de errores y ayuda a solucionar un problema.';

  @override
  String get bugReport => 'Informe de errores';

  @override
  String get bugReportSupportingText =>
      'Por favor, elige lo que te gustaría incluir en el informe de errores. Cuanta más información proporciones, más fácil será averiguar exactamente qué salió mal. **No se compartirá ninguna información personal.**';

  @override
  String get shareBugReport => 'Compartir el informe de errores';

  @override
  String get fontSize => 'Tamaño de la fuente';

  @override
  String get fontSizeDescription => 'Anular el tamaño de la fuente del sistema';

  @override
  String get decrease => 'Reducir';

  @override
  String get increase => 'Ampliar';

  @override
  String get customSecondaryAccentPicker => 'Color secundario';

  @override
  String get customTertiaryAccentPicker => 'Color terciario';

  @override
  String get advancedColorOptions => 'Opciones avanzadas del color';

  @override
  String get uploadCustomColorScheme =>
      'Subir un esquema del color personalizado';

  @override
  String get downloadCurrentColorScheme =>
      'Descargar el esquema actual del color';

  @override
  String get markAsStarred => 'Marcar todo como destacado';

  @override
  String get setTime => 'Definir hora';

  @override
  String get thereAreNoLists => 'No hay ninguna lista todavía';

  @override
  String get closeDetailsOnCompelte => 'Cerrar los detalles al completarse';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Guarda todos los cambios y cierra la vista de los detalles al completar la tarea.';

  @override
  String get customColorTheme => 'Tema personalizado';

  @override
  String get discardCustomColorTheme =>
      'Eliminarás todos los cambios realizados al tema.';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get deletedCustomColorTheme => 'Tema personalizado borrado.';

  @override
  String get customThemeInfo =>
      'Aquí puedes cambiar cada uno de los colores de los diferentes elementos a tu gusto. También puedes importar / exportar los colores en un archivo `json` y editarlos en él.\n\nSi quieres saber qué significa cada elemento, puedes visitar la siguiente página: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importar';

  @override
  String get customThemeFuckedFile =>
      'Este archivo no contiene un tema de color válido. Por favor, comprueba que tu archivo sigue el mismo estilo y estructura que el archivo que exportaste.';

  @override
  String get markdownBold => 'Negrita';

  @override
  String get markdownItalic => 'Cursiva';

  @override
  String get markdownMonospace => 'Monoespaciadas';

  @override
  String get markdownHighlight => 'Destacar';

  @override
  String get fediChooseInstance => 'Elige tu instancia';

  @override
  String get fediInstanceUrl => 'Dirección URL de la instancia';

  @override
  String get fediRememberInstance => 'Recordar mi instancia';

  @override
  String get fediDoablePost =>
      '¡Acabo de terminar todas mis tareas gracias a @Doable@floss.social!\n\n¿Te parece interesante? ¡Puedes saber más sobre #Doable visitando https://repo.doable.at!';

  @override
  String get doable =>
      'Doable – La aplicación para las tareas moderna y sencilla';

  @override
  String get rrRepeatsEvery => 'Se repite cada';

  @override
  String get rrRepeatsOn => 'Se repite en';

  @override
  String get rrEnds => 'Finaliza';

  @override
  String get week => 'Semana';

  @override
  String get weeks => 'Semanas';

  @override
  String get day => 'Día';

  @override
  String get days => 'Días';

  @override
  String get month => 'Mes';

  @override
  String get months => 'Meses';

  @override
  String get year => 'Año';

  @override
  String get years => 'Años';

  @override
  String get onFollowedByDate => 'En';

  @override
  String get rrAfterOccurrences => 'Después de';

  @override
  String get occurrence => 'Incidencia';

  @override
  String get occurrences => 'Incidencias';

  @override
  String get rrCustomRecurrence => 'Repetición personalizada';

  @override
  String get daily => 'A diario';

  @override
  String get weekly => 'Cada semana';

  @override
  String get monthly => 'Cada Mes';

  @override
  String get yearly => 'Cada Año';

  @override
  String get doesNotRepeat => 'No se repite';

  @override
  String get rrRecurrence => 'Recurrencia';

  @override
  String get recurringTodos => 'Tareas Recurrentes';

  @override
  String get recurringTodosDescription =>
      'Añade recurrencia a tus tareas y deja que Doable las reprograme automáticamente para ti una vez las hayas completado. Las tareas serán reprogramadas en base a la fecha de vencimiento y el calendario que establezcas. Si no agregaste una fecha de vencimiento a tu tarea, en su lugar se utilizará la fecha en que la creaste.\n\n**Una cosa a tener en cuenta: Aunque ahora puedes configurar las tareas para que se repitan en Doable, ten en cuenta que actualmente esta función está limitada al inglés.**';

  @override
  String get post => 'Tema';

  @override
  String get rrRepeats => 'Repeticiones';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription =>
      'Esta extensión aún está en fase beta y es posible que encuentres algunos problemas al utilizarla. ¡Ten en cuenta los riesgos y avísame si encuentras algún problema!';

  @override
  String get extensionBetaWarning => '¿Habilitar las extensiones beta?';

  @override
  String get showFediButton => 'Mostrar el botón de publicar';

  @override
  String get showFediButtonDescription =>
      'Muestra un botón que te permite publicar en tu lista vacía en Fediverse';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get enableNotifications => 'Activar las notificaciones';

  @override
  String get notifyAll => 'Todas las tareas';

  @override
  String get notifyAllDescription =>
      'Mostrar una notificación de cada tarea con una fecha de vencimiento';

  @override
  String get notifyTimeOnly => 'Solo tareas con tiempo';

  @override
  String get notifyTimeOnlyDescription =>
      'Recibe notificaciones solo de las tareas que tengan fecha y hora de vencimiento';

  @override
  String get notifyTodosChannelName => 'Tareas';

  @override
  String get notificationsDescription =>
      'Permita que Doable le notifique cuando sus Todos vencen. También puedes cambiar para qué Todos recibirás notificaciones.';

  @override
  String get notificationsDescriptionShort =>
      'Cambia las tareas para que te notifiquen';

  @override
  String get notifyNeverDescription =>
      'No recibir notificaciones de ninguna tarea';

  @override
  String get defaultNotificationTime => 'Hora de notificación por defecto';

  @override
  String get defaultNotificationTimeDescription =>
      'La hora a la que se le notificará las tareas que no tienen una hora relevante';

  @override
  String get addImage => 'Añadir una imagen';

  @override
  String get todoImages => 'Imágenes';

  @override
  String get todoImagesDescription =>
      'Añade imágenes a tus tareas para dar más contexto a lo que escribes.\n\n**Desgraciadamente las imágenes no se sincronizarán todavía.**';

  @override
  String get clearInputField => 'Borrar el campo de entrada';

  @override
  String get removeImage => 'Eliminar la imagen';

  @override
  String get apkSignatureInvalid => 'Firma incorrecta';

  @override
  String get apkSignatureInvalidDescription =>
      'No se ha podido verificar la firma del archivo apk descargado. Por favor, notifique al desarrollador acerca de este problema. Aunque puedes instalar el apk por tu cuenta y riesgo, te recomendamos precaución por posibles problemas de seguridad.';

  @override
  String get searchTodos => 'Buscar las tareas';

  @override
  String get editTodo => 'Editar la tarea';

  @override
  String get previewTodo => 'Vista previa de la tarea';

  @override
  String get readerMode => 'Modo de lectura';

  @override
  String get readerModeDescription =>
      'Le permite obtener una vista previa de sus tareas en la vista de edición.';

  @override
  String get noList => 'Sin lista';

  @override
  String get chooseAList => 'Elegir una lista';

  @override
  String get readerModeDescriptionShort =>
      'Cambiar el modo inicial al abrir una tarea';

  @override
  String get lastUsed => 'Último uso';

  @override
  String get syncFileLocked =>
      'El servidor ha bloqueado un archivo de copia de seguridad, por favor inténtelo de nuevo en unos 15 minutos.';

  @override
  String get syncInternalError =>
      'Se ha producido un error interno, disculpen las molestias.';

  @override
  String get syncConnectionError =>
      'Se ha producido un error al conectar con el servidor.';

  @override
  String get restore => 'Restaurar';

  @override
  String get loggingNextcloudIn => 'Accediendo a Nextcloud…';

  @override
  String get initializingWebdav => 'Inicializando Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Migración de Nextcloud a una nueva implementación de sincronización…';

  @override
  String get migratingWebdavToRemote =>
      'Migración de Webdav a una nueva implementación de sincronización…';

  @override
  String get migrateToRemotes => 'Migración';

  @override
  String get migrateToRemotesDescription =>
      'Doable ha cambiado recientemente su forma de sincronizar con remotas como Nextcloud o Webdav. Desafortunadamente, la nueva implementación no es compatible con versiones anteriores y, por lo tanto, es necesario realizar una migración. Doable debería necesitar un minuto para migrar todo lo que necesita.\n\nSi eliges hacerlo más tarde puede que encuentres algunos mensajes de error ya que la nueva implementación aún no ha sido configurada.';

  @override
  String get fixBrokenRemoteFile =>
      'Un archivo de copia de seguridad de Doable parece estar corrupto. Doable puede arreglarlo anulándolo con el valor local actual. Esto anulará cualquier cambio realizado por otros dispositivos después de que se produjera ese error.';

  @override
  String get fixedBrokenRemoteFile => 'Archivo roto restaurado con éxito.';

  @override
  String get unfixableRemoteFile => 'No se ha podido restaurar el archivo.';

  @override
  String get syncFileDoesNotExist =>
      'No existe un archivo de copia de seguridad de Doable.';

  @override
  String get todos => 'Tareas';

  @override
  String get selectWhatToExport =>
      'Por favor, seleccione lo que desea exportar.';

  @override
  String get exportFile => 'Exportar el fichero';

  @override
  String get listColor => 'Color de la lista';

  @override
  String get listColorAsAccent => 'Listar el color como acento';

  @override
  String get listColorAsAccentDescription =>
      'Utilice el color de la lista actual como color de acento para Doable';

  @override
  String get privacy => 'Privacidad';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get openSource => 'Código abierto';

  @override
  String get sourceCode => 'Código fuente';

  @override
  String get contact => 'Contacto';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource =>
      'Se puede acceder a todo el código fuente de Doable en Codeberg bajo una licencia FOSS. También puede enviar problemas y solicitudes de extracción allí. ¡También puedes encontrar el repositorio F-Droid de Doable en Codeberg!';

  @override
  String get aboutPrivacy =>
      'Doable no recoge ninguna información personal. Lo único que Doable almacena sobre su uso son los registros. La única manera de que estos registros salgan de su dispositivo es si usted decide compartirlos, por ejemplo, para ayudarme a corregir un error.';

  @override
  String get httpWarning => 'Conexión no cifrada';

  @override
  String get cancelling => 'Cancelando…';

  @override
  String get httpWarningDescription =>
      'Está intentando conectarse a un servidor HTTP en lugar de a un servidor HTTPS más seguro. HTTP envía los datos sin cifrar al servidor, lo que plantea riesgos potenciales de seguridad, por lo que no se recomienda. Sin embargo, hay ciertos casos de uso como un servidor alojado localmente. ¿Estás seguro de que quieres continuar con HTTP?';

  @override
  String get enableNotificationReminder => 'Notificación de recordatorio';

  @override
  String get pickNotificationReminderDuration => 'Recuérdamelo después';

  @override
  String get hours => 'Horas';

  @override
  String get minutes => 'Minutos';

  @override
  String get enableNotificationSound => 'Reproducir sonido';

  @override
  String get enableNotificationSoundDescription =>
      'Reproduce un sonido personalizado al mostrar una notificación';

  @override
  String get interval => 'Intervalo';

  @override
  String get secondly => 'En segundo lugar';

  @override
  String get minutely => 'Minuciosamente';

  @override
  String get hourly => 'Cada hora';

  @override
  String get second => 'Segundo';

  @override
  String get startOfTheWeek => 'Inicio de semana';

  @override
  String get hideList => 'Ocultar lista';

  @override
  String get showList => 'Mostrar lista';

  @override
  String get showListDescription =>
      'Muestre las tareas de esta lista en la descripción general.';

  @override
  String get hideListDescription =>
      'No mostrar las tareas de esta lista en la descripción general.';

  @override
  String get gotIt => 'Entendido';

  @override
  String get updateRelease =>
      'Abre la página de Doable y descarga la última versión';

  @override
  String get updateDownload =>
      'Deje que Doable descargue la última versión por usted; encontrará el archivo en el área de notificación y podrá instalarlo haciendo clic en él';

  @override
  String get updateFdroid =>
      'Si instalaste Doable desde F-Droid deberías recibir la actualización en las próximas horas, ya sea desde el repositorio de IzzyOnDroid o desde el propio repositorio de Doable';

  @override
  String get updateDisable =>
      'También puede desactivar la comprobación automática de actualizaciones en los ajustes';

  @override
  String get updateChecker => 'Comprobador de actualizaciones';

  @override
  String get whatCanYouDo => '¿Qué puede hacer?';

  @override
  String get synchronization => 'Sincronización';

  @override
  String get backup => 'Copia de seguridad';

  @override
  String get autoExport => 'Exportación automática';

  @override
  String get changeDuration => 'Cambiar la duración';

  @override
  String get autoExportDescription =>
      'Puede dejar que Doable exporte automáticamente sus tareas, listas y ajustes. Tenga en cuenta que Doable creará un nuevo archivo para cada exportación. Elija la duración entre las exportaciones.';

  @override
  String get seconds => 'Segundos';

  @override
  String get apkVerifyingSignature => 'Verificando la firma del apk…';

  @override
  String get swipeActions => 'Gestos de deslizar';

  @override
  String get swipeActionsDescription =>
      'Añade la posibilidad de deslizar el dedo hacia la izquierda sobre las tareas para marcarlos como favoritos o completarlos.\n\n**Tenga en cuenta que esto a veces puede confundirse con el cajón de la extensión de las listas.**';

  @override
  String get selectedSwipeActions => 'Acciones seleccionadas';

  @override
  String get unselectedSwipeActions => 'Acciones no seleccionadas';

  @override
  String get swipeActionComplete => 'Marcar tarea como completada/inconclusa';

  @override
  String get swipeActionExpand => 'Ampliar la tarea';

  @override
  String get swipeActionStar => 'Agregar/eliminar estrella de la tarea';

  @override
  String get swipeActionDelete => 'Borrar la tarea';

  @override
  String get swipeActionsHideCheck => 'Ocultar marca de verificación';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Ocultar la marca de verificación cuando $action está seleccionada';
  }

  @override
  String get forceHighestRefreshRate =>
      'Forzar la frecuencia de actualización más alta';

  @override
  String get forceHighestRefreshRateDescription =>
      '(Intentar) forzar al sistema a utilizar la mayor frecuencia de actualización posible dentro de la aplicación';

  @override
  String get overview => 'Descripción general';

  @override
  String whatsNewIn(String version) {
    return '¿Cuales son las novedades en la versión $version ?';
  }

  @override
  String get expandTodosByDefault => 'Expandir Todos por defecto';

  @override
  String get expandTodosByDefaultDescription =>
      'Mostrar Todos como expandidos por defecto';

  @override
  String get progress => 'Progreso';

  @override
  String get progressBar => 'Barra de progreso';

  @override
  String get progressBarDescription =>
      'Agrega una barra de progreso a las tareas, lo que le brinda un control más preciso sobre su estado de finalización.';

  @override
  String get syncMultipleErrors =>
      'Se han producido varios mensajes de error. Vea el libro de registro para obtener más información.';

  @override
  String get deletedCompleted => 'Las tareas completadas han sido borradas.';

  @override
  String get dateRange => 'Rango';

  @override
  String get next3Days => 'Los próximos 3 días';

  @override
  String get dateFilters => 'Filtros de fechas';

  @override
  String get dateFiltersDescription =>
      'Agregue la opción de filtrar sus tareas por un rango de fechas específico.';

  @override
  String get exportedFile => 'Archivo exportado.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Para utilizar esta función, active la extensión $extensionName.';
  }

  @override
  String get enablePrideFlagsDescription =>
      'Muestra banderas del Orgullo detrás de la barra de título en ciertos meses';

  @override
  String get enablePrideFlags => 'Habilitar banderas del Orgullo';

  @override
  String get prideFlagRestOfYear =>
      'La bandera del Orgullo se muestra durante todo el año';

  @override
  String get addNotification => 'Añadir notificación';

  @override
  String get unselected => 'No seleccionado';

  @override
  String get selected => 'Seleccionado';

  @override
  String get nothingSelected => 'Nada seleccionado';

  @override
  String get halfHourBefore => 'Media hora antes';

  @override
  String get defaultNotifications => 'Notificaciones por defecto';

  @override
  String get aDayAfter => 'Un dia después';

  @override
  String get atTimeOfTodo => 'A la hora establecida';

  @override
  String get aWeekBefore => 'Una semana antes';

  @override
  String get aDayBefore => 'Un día antes';

  @override
  String get anHourBefore => 'Una hora antes';

  @override
  String get defaultNotificationsDescriptionIfLists =>
      'También puedes elegir diferentes notificaciones para diferentes listas.';

  @override
  String get halfHourAfter => 'Media hora después';

  @override
  String get customNotificationTime => 'Hora de notificación personalizada';

  @override
  String get defaultNotificationsDescription =>
      'Seleccione notificaciones predeterminadas que se agregarán a cada tarea pendiente con una fecha relevante.';

  @override
  String nrOfNotifications(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count notificaciones',
      one: 'una notificación',
    );
    return '$_temp0';
  }

  @override
  String get notificationsFor => 'Notificaciones para';

  @override
  String get deleteListSettings => 'Borrar los ajustes de la lista';

  @override
  String get snooze => 'Posponer';

  @override
  String get snoozeDurationDescription =>
      'Duración del retraso de una notificación al presionar el botón posponer';

  @override
  String get snoozeDuration => 'Duración de la repetición';

  @override
  String get sortStarredToday => 'Destacado hoy';

  @override
  String get sortStarredOverdue => 'Destacados vencidos';

  @override
  String get sortByTitle => 'Por titulo';

  @override
  String get sortByCreationDate => 'Por fecha de creación';

  @override
  String get sortStarredRelevantDate => 'Destacado con la fecha';

  @override
  String get sortDescending => 'Descendente';

  @override
  String get sortAscending => 'Creciente';

  @override
  String get sortByRelevantDate => 'Por fecha de vencimiento';

  @override
  String get sortByLastEdited => 'Última edición';

  @override
  String get sortingLabel => 'Clasificación';

  @override
  String get groupsLabel => 'Grupos';

  @override
  String sortingHelpDescription(String groups, String sorting) {
    return 'Doable ordena tus tareas agrupándolos primero y luego ordenando cada grupo individualmente, antes de volver a juntarlos. En la pestaña $groups puedes elegir qué grupos crea Doable y el orden. En la pestaña $sorting puedes elegir cómo Doable clasifica cada grupo y su orden de importancia.';
  }

  @override
  String get hideForever => 'No mostrar de nuevo';

  @override
  String get sortingHelp => 'Grupos y clasificación';

  @override
  String get info => 'Información';

  @override
  String get aboutToCancelChangesToList =>
      'Está a punto de descartar cualquier cambio en esta lista.';

  @override
  String get notificationsAlwaysPreview =>
      'Siempre previsualizar las notificaciones';

  @override
  String get notificationsAlwaysPreviewDescription =>
      'Mostrar siempre notificaciones en modo vista previa (esto no afecta el último modo utilizado)';

  @override
  String get nextcloudWipeDescription =>
      'Doable recibió una solicitud para borrar todos los datos asociados con la cuenta de Nextcloud con la que iniciaste sesión. Por lo tanto, se cerrará la sesión de tu cuenta. También puedes optar por borrar todos los datos (tareas pendientes y listas) de la aplicación. Esta acción es permanente y no se puede deshacer.';

  @override
  String get nextcloudWipe => 'Borrado remoto de Nextcloud';

  @override
  String get wipeData => 'Borrar información';

  @override
  String get keepData => 'Conservar los datos';

  @override
  String get imageInserted => 'Imagen insertada';

  @override
  String get useSystemFont => 'Usar fuente del sistema';

  @override
  String get useSystemFontDescription =>
      'Utilice la fuente del sistema como fuente principal para Doable';

  @override
  String get batteryOptimization => 'Optimización de la batería';

  @override
  String get batteryOptimizationDescription =>
      'Se puede optimizar la batería. Si bien esto no suele ser un problema, puede generar algunos problemas al iniciar sesión en Nextcloud . Si desea garantizar una experiencia fluida, desactive estas optimizaciones.';

  @override
  String get couldNotAddTodoToCalendar =>
      'No se pudo añadir la tarea al calendario.';

  @override
  String get sortCompleted => 'Clasificación completada';

  @override
  String get sortCompletedDescription =>
      'Aplicar la clasificación también a las tareas pendientes de completar';
}
