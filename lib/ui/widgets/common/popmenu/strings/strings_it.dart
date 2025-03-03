import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class StringsIt extends Strings {
  StringsIt([String locale = 'it']) : super(locale);

  @override
  String get about => 'Circa';

  @override
  String get aboutDescription => 'Informazioni sull\'app';

  @override
  String get aboutOSInfo =>
      'Codice sorgente: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPrivacy policy: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nRepository F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Annullare modifiche?';

  @override
  String get aboutToCancelChangesDescription =>
      'Stai per annullare tutte le modifiche fatte a questo Todo.';

  @override
  String get aboutToCancelFeedback => 'Annullare feedback?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Stai per cancellare il tuo feedback. Questa azione non può essere annullata.';

  @override
  String get aboutToDeleteCompleted =>
      'Stai per eliminare tutti i Todos completati. Questa azione è permanente e non può essere annullata.';

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
      one: 'Un Todo',
    );
    return 'Stai per eliminare $_temp0. Questa azione è permanente è non può essere annullata.';
  }

  @override
  String get additionalFeatures => 'Estensioni';

  @override
  String get additionalFeaturesDescription =>
      'Opzioni che rendono Doable più potente';

  @override
  String get alignTodoCheck => 'Spunta di conferma a destra';

  @override
  String get alignTodoCheckDescription =>
      'Mostra la spunta di conferma del Todo a destra';

  @override
  String get appLanguage => 'Lingua dell\'App';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Attenzione';

  @override
  String get back => 'Indietro';

  @override
  String get syncAndBackup => 'Backup e sincronizzazione';

  @override
  String get syncAndBackupDescription =>
      'Effettua il back up e sincronizza i tuoi Todos';

  @override
  String get cancel => 'Annulla';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Consiglio di includere tutto ciò che segue per aiutarmi a risolvere il tuo problema. Questo non include informazioni personali.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Quali informazioni extra vuoi includere?';

  @override
  String get chooseFeedbackWay => 'Dove vuoi darci il tuo feedback?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Todo completato.';

  @override
  String get copiedToClipboard => 'Testo copiato nella clipboard.';

  @override
  String get customAccentPicker => 'Colore d\'accento';

  @override
  String get customAccentPickerDescription =>
      'Scegli un colore d\'accento preferito per il tema dell\'app';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get deleteCompletedAfter => 'Auto-eliminazione completata';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Elimina dopo $duration';
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
      other: 'Eliminati $countString Todos',
      one: 'Eliminato un Todo',
    );
    return '$_temp0.';
  }

  @override
  String get description => 'Descrizione';

  @override
  String get design => 'Design';

  @override
  String get designDescription => 'Cambia lo stile di Doable';

  @override
  String get disable => 'Disattiva';

  @override
  String get discard => 'Cancella';

  @override
  String get doContinue => 'Continua';

  @override
  String get done => 'Fatto';

  @override
  String get dynamicColors => 'Colori dinamici';

  @override
  String get dynamicColorsDescription =>
      'Usa i colori di sistema (Android 12+)';

  @override
  String get email => 'Email';

  @override
  String get enable => 'Attiva';

  @override
  String get enabled => 'Attivato';

  @override
  String get export => 'Esporta';

  @override
  String get exportAllTodos => 'Esporta tutti i Todos';

  @override
  String exportEvery(String duration) {
    return 'Esporta ogni $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Una spiegazione più dettagliata di cosa è andato storto / come è successo.';

  @override
  String get feedbackHeader =>
      'Per favore compila il modulo qua sotto per aiutarmi a capire cosa è andato storto.';

  @override
  String get feedbackTitleHelp => 'Una descrizione breve dell\'evento.';

  @override
  String get general => 'Generali';

  @override
  String get generalDescription => 'Cambia le impostazioni generali dell\'app';

  @override
  String get giveFeedback => 'Commenti';

  @override
  String get highlightOverdue => 'Evidenzia scaduti';

  @override
  String get highlightOverdueDescription =>
      'Evidenzia i Todos che sono scaduti come i Todos preferiti';

  @override
  String get highlightToday => 'Evidenzia oggi';

  @override
  String get highlightTodayDescription =>
      'Evidenzia i Todos che scadono oggi come quelli preferiti';

  @override
  String get importLocalBackupError =>
      'Questo file non può essere importato. Sicuro sia stato generato da Doable?';

  @override
  String get importTodosFromFile => 'Importa file';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importati $countString Todos',
      one: 'Importato un Todo',
      zero: 'Importati zero Todos',
    );
    return '$_temp0.';
  }

  @override
  String get installedFrom => 'Installato da';

  @override
  String get introDoubleTap => 'Doppio tap';

  @override
  String get introDoubleTapDescription =>
      'Puoi fare un doppio tap su un Todos che ha una descrizione per espanderlo. Quando espanso, viene mostrata la descrizione completa e puoi interagire con i link, ecc.\n\nPuoi provare con questo esempio qui!';

  @override
  String get introDoubleTapTodoDescription =>
      'La torta è una bugia!\n\nScopri di più qui:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Comprare una nuova torta';

  @override
  String get introLinks => 'Links, numeri di telefono, indirizzi email';

  @override
  String get introLinksDescription =>
      'Quando aggiungi dei link, numeri di telefono, o indirizzi email a una descrizione, saranno evidenziati automaticamente e puoi interagirci.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Puoi sincronizzare i tuoi Todos con un\'istanza Nextcloud. Se vuoi puoi fare già il login qui!';

  @override
  String get introStar => 'Preferiti';

  @override
  String get introStarDescription =>
      'Aggiungi un Todo ai preferiti\nper farlo salire in cima.\n\nTocca la stella qua sotto per provare!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription =>
      'Quando crei un nuovo Todo puoi aggiungere diverse cose. Per esempio puoi aggiungere una data di scadenza, oppure puoi metterlo tra i preferiti per tenerlo sempre in alto! Puoi anche aggiungere una descrizione con link e altre informazioni relative al tuo Todo.';

  @override
  String get introWelcome => 'Benvenuto su Doable!';

  @override
  String get introWelcomeDescription =>
      'L\'app per Todo semplice, con design moderno\ne integrazione Nextcloud.';

  @override
  String get keepEditing => 'Continua a modificare';

  @override
  String get left => 'Sinistra';

  @override
  String get licenses => 'Licenze';

  @override
  String get licensesDescription => 'Open source e licenze di Flutter';

  @override
  String get localStorage => 'Archiviazione locale';

  @override
  String get logIn => 'Log in';

  @override
  String get logOut => 'Disconnettersi';

  @override
  String get logOutputs => 'Registri';

  @override
  String get markCompleted => 'Segna come completato';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Segna come non completato';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Supporto Markdown';

  @override
  String get mayNotBeEmpty => 'Non può essere vuoto';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Aggiungi supporto per una sintassi markdown basica nelle descrizioni dei Todos.\n\nPer una lista completa delle opzioni di sintassi puoi guardare qua\nhttps://www.markdownguide.org/cheat-sheet/.\n\nPurtroppo, quest\'app **non** supporta l\'intera sintassi markdown. Gli elementi supportati sono:\n\n- Grassetto\n- Corsivo\n- Sottolineare(\\_\\_text\\_\\_)\n- Citazioni\n- Liste ordinate/non ordinate\n- Liste\n- Codice in riga e blocco di codice\n- Links\n- Evidenzazione\n- Sbarratura';

  @override
  String get moveImportantToTop => 'Sposta gli importanti alla cima';

  @override
  String get moveImportantToTopDescription =>
      'Se attivato, i Todos che sono salvati come preferiti saranno sempre mostrati all\'inizio della lista';

  @override
  String get moveUpWhenUpdated => 'Mostra i cambiamenti nella lista';

  @override
  String get moveUpWhenUpdatedDescription =>
      'I Todos vengono spostati alla cima della lista dopo essere modificati';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'Indirizzo dell\'interfaccia web Nextcloud';

  @override
  String get ncDirectory => 'Cartella';

  @override
  String get ncFileIn => 'File salvato in';

  @override
  String get ncLogOut => 'Loggin out da Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Quando fai il logout le credenziali salvate verranno cancellate. Comunque, il file salvato su Nextcloud non verrà cancellato.';

  @override
  String get ncLoggedInAs => 'Entrato come';

  @override
  String get ncPassword => 'Password';

  @override
  String get ncUser => 'Utente';

  @override
  String get never => 'Mai';

  @override
  String get newSubTodo => 'Sotto - Todo';

  @override
  String get newTodo => 'Nuovo Todo';

  @override
  String get next => 'Prossimo';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Non ci sono più Todos, ottimo lavoro!';

  @override
  String get notAValidUrl => 'Indirizzo url non valido';

  @override
  String get off => 'Spento';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'On';

  @override
  String get optional => 'Facoltativo';

  @override
  String get pickAColor => 'Scegli un colore';

  @override
  String get pickerPrimary => 'Standard';

  @override
  String get pickerWheel => 'Personalizzato';

  @override
  String get popupMenuDeleteCompleted => 'Elimina completati';

  @override
  String get popupMenuHideCompleted => 'Nascondi completati';

  @override
  String get popupMenuShowCompleted => 'Mostra completati';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Scadenza';

  @override
  String get required => '*richiesto';

  @override
  String get reset => 'Ripristina';

  @override
  String get right => 'Destra';

  @override
  String get save => 'Salva';

  @override
  String get settings => 'Impostazioni';

  @override
  String get showCompletedTodos => 'Mostra completati';

  @override
  String get showCompletedTodosDescription =>
      'Mostra i Todos completati nella lista';

  @override
  String get showIntroScreen => 'Mostra di nuovo le schermate introduttive';

  @override
  String get sortNewestFirst => 'I più recenti per primi';

  @override
  String get sortNewestFirstDescription =>
      'Le scadenze più vicine vengono mostrate all\'inizio';

  @override
  String get sortNoRelevantDate => 'Senza data';

  @override
  String get sortOverdue => 'Scaduti';

  @override
  String get sortRelevantDate => 'Con scadenza';

  @override
  String get sortStarred => 'Preferiti';

  @override
  String get sortToday => 'In scadenza oggi';

  @override
  String get sorting => 'Ordina per';

  @override
  String get sortingDescription => 'modo in cui i Todos vengono ordinati';

  @override
  String get submitFeedback => 'Invia';

  @override
  String get syncCorruptedFile => 'Il file di backup sembra corrotto.';

  @override
  String get syncDirectoryDoesNotExist => 'La cartella specificata non esiste.';

  @override
  String get syncNcMaintenance => 'Nextcloud è in modalità manutenzione.';

  @override
  String get syncNoInternetConnection => 'Nessuna connessione internet.';

  @override
  String get syncNotNcServer =>
      'Impossibile trovare un server Nextcloud a questo indirizzo.';

  @override
  String get syncServiceUnavailable => 'Nextcloud non disponibile.';

  @override
  String get syncSuccessful => 'Sincronizzazione avvenuta con successo.';

  @override
  String get syncUnknownError => 'Errore sconosciuto.';

  @override
  String get syncWrongUrl => 'L\'indirizzo fornito non è corretto.';

  @override
  String get syncWrongUserOrPassword =>
      'Il nome utente o password fornite non sono corretti.';

  @override
  String get system => 'Sistema';

  @override
  String get systemInfo => 'Sistema';

  @override
  String get thankYouForFeedback => 'Grazie per il tuo feedback!';

  @override
  String get title => 'Titolo';

  @override
  String get titleMayNotBeEmpty => 'Il titolo non può essere vuoto';

  @override
  String get today => 'Oggi';

  @override
  String get todoSearch => 'Cerca Todo';

  @override
  String get todoSearchDescription =>
      'Aggiungi un pulsante di ricerca nella lista Todo per cercare tra i tuoi Todos.';

  @override
  String get tomorrow => 'Domani';

  @override
  String get treatTodayAsIsImportant => 'Tratta oggi come importanti';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Se attivato, i Todos che scadono oggi saranno mostrati come i preferiti';

  @override
  String get trimTodoTexts => 'Trim testo del Todo';

  @override
  String get trimTodoTextsDescription =>
      'Se attivato, toglie gli spazi all\'inizio e alla fine del titolo e della descrizione dei Todos';

  @override
  String get trueBlackMode => 'Modalità nera';

  @override
  String get trueBlackModeDescription =>
      'Rende lo sfondo nero, comodo per display oled';

  @override
  String get turnOff => 'Spegni';

  @override
  String get turnOn => 'Accendi';

  @override
  String get undo => 'Annulla';

  @override
  String get update => 'Aggiorna';

  @override
  String get updateCredentials => 'Aggiorna credenziali';

  @override
  String get useCustomTabs => 'Usa il browser in-app';

  @override
  String get useCustomTabsDescription =>
      'Usa il browser in-app per aprire link';

  @override
  String get whatsNew => 'Cosa c\'è di nuovo?';

  @override
  String get yesterday => 'Ieri';

  @override
  String get error => 'Errore';

  @override
  String get routingError =>
      'Oops! Qualcosa è andato storto e sei su una pagina che non esiste. Mi spiace!';

  @override
  String get goToHome => 'Vai alla Home';

  @override
  String get pageNotFound => 'Pagina non trovata';

  @override
  String get updateDoable => 'Aggiorna Doable';

  @override
  String get download => 'Download';

  @override
  String get install => 'Installa';

  @override
  String get installed => 'Installato';

  @override
  String get updateNotInstalled => 'L\'aggiornamento non è stato installato.';

  @override
  String get skipVersion => 'Ignora questa versione';

  @override
  String get couldNotDownloadUpdate =>
      'Impossibile scaricare l\'aggiornamento.';

  @override
  String versionWithNumber(String version) {
    return 'Versione $version';
  }

  @override
  String get autoUpdates => 'Aggiorna automaticamente';

  @override
  String get autoUpdatesDescription =>
      'Controlla automaticamente aggiornamenti';

  @override
  String get introExtensions => 'Estensioni? Estensioni!';

  @override
  String get introExtensionsDescription =>
      'Le estensioni ti permettono di aumentare le opzioni di Doable. Ti danno la possibilità di scegliere esattamente come vuoi usare Doable. Se vuoi controllare tutte le estensioni disponibili, premi il pulsante qua sotto!';

  @override
  String get introExtensionsButton => 'Espandi!';

  @override
  String get useBottomSheetMenu => 'Usa il menù sotto';

  @override
  String get useBottomSheetMenuDescription =>
      'Usa il menù in basso invece che il menù a scomparsa';

  @override
  String get contributors => 'Contribuenti';

  @override
  String get contributorDescription =>
      'Persone che hanno aiutato a creare Doable';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'Indirizzo WebDAV';

  @override
  String get webdavLogOutMessage =>
      'Quando effetti il logout le credenziali salvate verranno cancellate. Comunque, il file non verrà cancellato.';

  @override
  String get importExport => 'Importa e esporta';

  @override
  String get chooseDirectory => 'Scegli cartella';

  @override
  String get forgetDirectory => 'Dimentica cartella';

  @override
  String get newStarredTodo => 'Nuovo Todo preferito';

  @override
  String get allTodos => 'Tutti i Todos';

  @override
  String get newTodoList => 'Nuova lista';

  @override
  String get deleteTodoList => 'Elimina lista';

  @override
  String get editTodoList => 'Modifica lista';

  @override
  String get lists => 'Liste';

  @override
  String get listsDescription =>
      'Crea liste e ordina i tuoi Todos. Puoi creare quante liste vuoi, sono accessibili dal cassetto nella schermata home.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Stai per eliminare la lista $listName e tutti i Todos al suo interno. Questa azione è permanente e non può essere annullata.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Lista';

  @override
  String get share => 'Condividi';

  @override
  String get font => 'Font';

  @override
  String get fontDescription => 'Premi a lungo per mostrare i nomi dei font';

  @override
  String get popUpAnimationOverSlideAnimation =>
      'Vecchia transizione per la pagina';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Usa il vecchio stile pop up per le transizioni';

  @override
  String get restart => 'Riavvia';

  @override
  String get later => 'Dopo';

  @override
  String get restartRequired => 'Riavvio richiesto';

  @override
  String get restartRequiredForSetting =>
      'è richiesto il riavvio dell\'app perché questa impostazione abbia effetto.';

  @override
  String get image => 'Immagine';

  @override
  String get expandTodos => 'Espandi Todos';

  @override
  String get showTodoListNames => 'Mostra i nomi delle liste';

  @override
  String get includeBranding => 'Includi il branding';

  @override
  String get doableBrandingText =>
      'Condiviso da Doable, l\'app semplice e moderna per gestire Todo.\nPuoi scaricare Doable qui: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Scegli come vuoi condividere i tuoi Todos';

  @override
  String get options => 'Opzioni';

  @override
  String get reduceMotion => 'Riduci movimento';

  @override
  String get reduceMotionDescription => 'Riduci il movimento delle animazioni';

  @override
  String get contribute => 'Contribuisci';

  @override
  String get contributeWantYourNameHere => 'Vuoi il tuo nome qui?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Contribuisci a Doable direttamente o aiutaci a tradurlo!';

  @override
  String get onlySymbolInDetailViewFab => 'Icone al posto del testo';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Usa un\'icona al posto del testo nella vista dettagliata del Todo';

  @override
  String get allSelected => 'Tutti';

  @override
  String get sharedTextAsTitle => 'testo condiviso come titolo';

  @override
  String get sharedTextAsTitleDescription =>
      'Usa il testo condiviso a Doable come titolo di un nuovo Todo invece che della descrizione';

  @override
  String get noTodoLists =>
      'Al momento non hai nessuna lista.\nCreane una nuova per iniziare!';

  @override
  String forExample(String example) {
    return 'Es. $example';
  }

  @override
  String get clearSelection => 'Pulisci selezione';

  @override
  String get syncConnectionTimedOut => 'Timeout per la connessione.';

  @override
  String get syncTooManyTimeOuts =>
      'Il server non ha risposto in tempo. La sincronizzazione è disattivata fino al riavvio dell\'app.';

  @override
  String get todoToCalendar => 'Aggiungi Todo al calendario';

  @override
  String get logs => 'Registri';

  @override
  String get logsDescription => 'Mostra tutti i logs di Doable';

  @override
  String get aboutToClearAllLogs =>
      'Stai per eliminare tutti i log rendendoli inaccessibili per feedback e risoluzione di problemi. Questa azione è permanente e non può essere annullata.';

  @override
  String get clearAllLogs => 'Cancella tutti i log';

  @override
  String get noLogsYet => 'Non ci sono log che puoi controllare per ora.';

  @override
  String get dateFormat => 'Formato data';

  @override
  String get timeFormat => 'Formato ora';

  @override
  String get shareAllLogs => 'Condividi tutti i log';

  @override
  String get copyAllLogs => 'Copia tutti i log';

  @override
  String get whatWentWrong => 'Cosa è andato storto?';

  @override
  String get fixCorruptBackupFile =>
      'Il file di backup di Doable non può essere letto e sembra corrotto. Doable può provare a risolvere eliminando il file di backup corrente e creandone uno nuovo. Questo eliminerà tutte le modifiche fatte da altre istanze Doable che usano lo stesso file di backup.';

  @override
  String get initializingNextcloud => 'Inizializzazione di Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Cambia cartella';

  @override
  String get dueDate => 'Data di scadenza';

  @override
  String get dragToReorder => 'Trascina per riordinare';

  @override
  String get copySettings => 'Copia impostazioni';

  @override
  String get copySystemInfo => 'Copia informazioni di sistema';

  @override
  String get languageNameInEnglish => 'Italian';

  @override
  String get languageNameInNativeLanguage => 'Italiano';

  @override
  String get createSummaryForBugReport => 'Crea riassunto';

  @override
  String get createSummaryForBugReportDetails =>
      'Crea un report contenente informazioni di sistema, le impostazioni di Doable e tutti i log. Questo può essere utile per segnalare bug e risolvere problemi.';

  @override
  String get bugReport => 'Riporta un problema';

  @override
  String get bugReportSupportingText =>
      'Scegli cosa includere nel tuo report. Più informazioni includi, più facile sarà capire cosa è andato storto. **Non vengono condivise informazioni personali**';

  @override
  String get shareBugReport => 'Condividi bug report';

  @override
  String get fontSize => 'Dimensione del carattere';

  @override
  String get fontSizeDescription =>
      'Sovrascrivere la dimensione dei caratteri del sistema';

  @override
  String get decrease => 'Diminuzione';

  @override
  String get increase => 'Aumento';

  @override
  String get customSecondaryAccentPicker => 'Colore secondario';

  @override
  String get customTertiaryAccentPicker => 'Colore terziario';

  @override
  String get advancedColorOptions => 'Opzioni di colore avanzate';

  @override
  String get uploadCustomColorScheme =>
      'Caricare lo schema di colori personalizzato';

  @override
  String get downloadCurrentColorScheme =>
      'Scarica la combinazione di colori attuale';

  @override
  String get markAsStarred => 'Mark Todo come protagonista';

  @override
  String get setTime => 'Tempo di impostazione';

  @override
  String get thereAreNoLists => 'Non ci sono ancora liste';

  @override
  String get closeDetailsOnCompelte => 'Chiudere i dettagli su completo';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Salva il Todo e chiude la sua visualizzazione dei dettagli quando si preme il pulsante Completa.';

  @override
  String get customColorTheme => 'Tema colore personalizzato';

  @override
  String get discardCustomColorTheme =>
      'Si stanno per eliminare tutte le modifiche apportate al tema del colore.';

  @override
  String get lightMode => 'Modalità luce';

  @override
  String get deletedCustomColorTheme => 'Tema colore personalizzato eliminato.';

  @override
  String get customThemeInfo =>
      'Qui è possibile modificare ogni singolo token di colore a proprio piacimento. È anche possibile importare/esportare i colori in un file `json` e modificarli lì!\n\nSe volete capire cosa fa ciascun token, visitate il seguente sito web: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importazione';

  @override
  String get customThemeFuckedFile =>
      'Questo file non contiene un tema di colore valido. Assicurarsi che il file segua lo stesso stile e la stessa struttura del file esportato.';

  @override
  String get markdownBold => 'Grassetto';

  @override
  String get markdownItalic => 'Corsivo';

  @override
  String get markdownMonospace => 'Monospaziale';

  @override
  String get markdownHighlight => 'Evidenziare';

  @override
  String get fediChooseInstance => 'Scegliete la vostra istanza';

  @override
  String get fediInstanceUrl => 'URL istanza';

  @override
  String get fediRememberInstance => 'Ricorda la mia istanza';

  @override
  String get fediDoablePost =>
      'Sono appena riuscito a finire tutti i miei Todos grazie a @Doable@floss.social!\n\nVi sembra interessante? Potete scoprire di più su #Doable visitando https://repo.doable.at!';

  @override
  String get doable => 'Doable - L\'app Todo moderna e semplice';

  @override
  String get rrRepeatsEvery => 'Si ripete ogni';

  @override
  String get rrRepeatsOn => 'Si ripete';

  @override
  String get rrEnds => 'Finisce';

  @override
  String get week => 'Settimana';

  @override
  String get weeks => 'Settimane';

  @override
  String get day => 'Giorno';

  @override
  String get days => 'Giorni';

  @override
  String get month => 'Mese';

  @override
  String get months => 'Mesi';

  @override
  String get year => 'Anno';

  @override
  String get years => 'Anni';

  @override
  String get onFollowedByDate => 'Acceso';

  @override
  String get rrAfterOccurrences => 'Dopo';

  @override
  String get occurrence => 'Evento';

  @override
  String get occurrences => 'Eventi';

  @override
  String get rrCustomRecurrence => 'Ricorrenza personalizzata';

  @override
  String get daily => 'Giornaliero';

  @override
  String get weekly => 'Settimanale';

  @override
  String get monthly => 'Mensile';

  @override
  String get yearly => 'Annuale';

  @override
  String get doesNotRepeat => 'Non si ripete';

  @override
  String get rrRecurrence => 'Ricorrenza';

  @override
  String get recurringTodos => 'Todos ricorrenti';

  @override
  String get recurringTodosDescription =>
      'Aggiungi la ricorrenza ai tuoi Todos e lascia che Doable le riprogrammi automaticamente per te una volta completate. I Todos verranno riprogrammati in base alla data pertinente e alla pianificazione impostata. Se non hai aggiunto una data di scadenza al Todo, verrà utilizzata invece la sua data di creazione.\n\n**Una cosa da tenere a mente: anche se ora puoi impostare le attività da ripetere in Doable, per favore considera che attualmente questa funzionalità è limitata all\'inglese.**';

  @override
  String get post => 'Posta';

  @override
  String get rrRepeats => 'Si ripete';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription =>
      'Questa estensione è ancora in versione beta e potresti riscontrare qualche problema durante l\'utilizzo. Per favore sii consapevole dei rischi e fammi sapere se riscontri problemi!';

  @override
  String get extensionBetaWarning => 'Abilitare l\'estensione in beta?';

  @override
  String get showFediButton => 'Mostra il pulsante di pubblicazione';

  @override
  String get showFediButtonDescription =>
      'Mostra un pulsante che ti consente di pubblicare la tua lista vuota sul Fediverso';

  @override
  String get notifications => 'Notifiche';

  @override
  String get enableNotifications => 'Abilita le notifiche';

  @override
  String get notifyAll => 'Tutti i Todos';

  @override
  String get notifyAllDescription =>
      'Ricevi una notifica per ogni Todo che ha una data di scadenza';

  @override
  String get notifyTimeOnly => 'Solo Todos con l\'orario';

  @override
  String get notifyTimeOnlyDescription =>
      'Ricevi notifiche solo per i Todos che hanno sia una data di scadenza che un orario';

  @override
  String get notifyTodosChannelName => 'Notifiche Todo';

  @override
  String get notificationsDescription =>
      'Lascia che Doable ti avvisi quando scadono i tuoi Todos. Puoi anche cambiare i Todos per i quali riceverai le notifiche.';

  @override
  String get notificationsDescriptionShort =>
      'Cambia per quali Todos ricevi le notifiche';

  @override
  String get notifyNeverDescription => 'Non ricevere notifiche per nessun Todo';

  @override
  String get defaultNotificationTime => 'Orario di notifica predefinito';

  @override
  String get defaultNotificationTimeDescription =>
      'L\'orario in cui riceverai una notifica per i Todos che non hanno un orario rilevante';

  @override
  String get addImage => 'Aggiungi immagine';

  @override
  String get todoImages => 'Immagini';

  @override
  String get todoImagesDescription =>
      'Aggiungi immagini ai tuoi Todos in modo da poter aggiungere più contesto a ciò che stai scrivendo.\n\n**Purtroppo le immagini non saranno ancora sincronizzate.**';

  @override
  String get clearInputField => 'Cancella il campo di immissione';

  @override
  String get removeImage => 'Rimuovi immagine';

  @override
  String get apkSignatureInvalid => 'Firma non valida';

  @override
  String get apkSignatureInvalidDescription =>
      'Non è stato possibile verificare la firma del file apk scaricato. Si prega di avvisare lo sviluppatore di questo problema. Anche se puoi procedere con l\'installazione dell\'apk a tuo rischio e pericolo, ti consigliamo di prestare attenzione a causa di potenziali problemi di sicurezza.';

  @override
  String get searchTodos => 'Cerca Todos';

  @override
  String get editTodo => 'Modifica Todo';

  @override
  String get previewTodo => 'Anteprima Todo';

  @override
  String get readerMode => 'Modalità lettura';

  @override
  String get readerModeDescription =>
      'Ti consente di visualizzare in anteprima i tuoi Todos nella schermata di modifica.';

  @override
  String get noList => 'Nessun elenco';

  @override
  String get chooseAList => 'Scegli un elenco';

  @override
  String get readerModeDescriptionShort =>
      'Cambia la modalità iniziale quando apri un Todo';

  @override
  String get lastUsed => 'Ultimo usato';

  @override
  String get syncFileLocked =>
      'Il server ha bloccato il file di backup, per favore riprova tra 15 minuti.';

  @override
  String get syncInternalError =>
      'C\'è stato un errore interno, ci scusiamo per l\'inconveniente.';

  @override
  String get syncConnectionError =>
      'C\'è stato un errore con la connessione del server.';

  @override
  String get restore => 'Ripristina';

  @override
  String get loggingNextcloudIn => 'Accedo a NextCloud…';

  @override
  String get initializingWebdav => 'Inizializzando Webdav…';

  @override
  String get migratingNextcloudToRemote =>
      'Migro NextCloud verso una nuova implementazione di sincronizzazione…';

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
