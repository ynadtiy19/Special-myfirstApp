import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class StringsPl extends Strings {
  StringsPl([String locale = 'pl']) : super(locale);

  @override
  String get about => 'O aplikacji';

  @override
  String get aboutDescription => 'Informacje o aplikacji';

  @override
  String get aboutOSInfo => 'Kod źródłowy: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPolityka prywatności: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nRepozytorium F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Porzucić zmiany?';

  @override
  String get aboutToCancelChangesDescription => 'Właśnie porzucasz wszystkie zmiany wprowadzone do tego zadania.';

  @override
  String get aboutToCancelFeedback => 'Porzucić opinię?';

  @override
  String get aboutToCancelFeedbackDescription => 'Właśnie porzucasz swoją opinię. Tego nie da się cofnąć.';

  @override
  String get aboutToDeleteCompleted => 'Właśnie usuwasz wszystkie ukończone zadania. To działanie jest trwałe i nie można go cofnąć.';

  @override
  String aboutToDeleteNSelected(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString zadań',
      few: '$countString zadania',
      two: 'dwa zadania',
      one: 'jedno zadanie',
    );
    return 'Właśnie usuwasz $_temp0. To działanie jest trwałe i nie można go cofnąć.';
  }

  @override
  String get additionalFeatures => 'Rozszerzenia';

  @override
  String get additionalFeaturesDescription => 'Funkcje, które zwiększają możliwości Doable';

  @override
  String get alignTodoCheck => 'Ptaszek po prawej';

  @override
  String get alignTodoCheckDescription => 'Pokazuj znak wyboru zadań po prawej stronie';

  @override
  String get appLanguage => 'Język aplikacji';

  @override
  String get appTitle => 'Doable';

  @override
  String get attention => 'Uwaga';

  @override
  String get back => 'Z powrotem';

  @override
  String get syncAndBackup => 'Synchronizacja i kopia zapasowa';

  @override
  String get syncAndBackupDescription => 'Twórz kopie zapasowe i synchronizuj swoje zadania';

  @override
  String get cancel => 'Anuluj';

  @override
  String get chooseFeedbackExtrasDescription => 'Zalecam dołączenie wszystkich poniższych informacji, ponieważ pomagają mi one w rozwiązywaniu problemów. Nie obejmuje to żadnych informacji osobistych.';

  @override
  String get chooseFeedbackExtrasTitle => 'Jakie dodatkowe informacje chcesz zamieścić?';

  @override
  String get chooseFeedbackWay => 'Gdzie chcesz przekazać opinię?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Ukończono zadanie.';

  @override
  String get copiedToClipboard => 'Skopiowano tekst do schowka.';

  @override
  String get customAccentPicker => 'Kolor akcentu';

  @override
  String get customAccentPickerDescription => 'Wybierz niestandardowy kolor akcentu dla motywu aplikacji';

  @override
  String get darkMode => 'Tryb ciemny';

  @override
  String get deleteCompletedAfter => 'Automatyczne usuwanie ukończonych zadań';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Usuń po $duration';
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
      other: '$countString zadań',
      few: '$countString zadania',
      two: 'dwa zadania',
      one: 'jedno zadanie',
    );
    return 'Usunięto $_temp0.';
  }

  @override
  String get description => 'Opis';

  @override
  String get design => 'Motyw';

  @override
  String get designDescription => 'Zmień wygląd i działanie Doable';

  @override
  String get disable => 'Wyłącz';

  @override
  String get discard => 'Porzuć';

  @override
  String get doContinue => 'Kontynuuj';

  @override
  String get done => 'Zapisz';

  @override
  String get dynamicColors => 'Dynamiczne kolory';

  @override
  String get dynamicColorsDescription => 'Używaj koloru systemu (Android 12+)';

  @override
  String get email => 'E-mail';

  @override
  String get enable => 'Włącz';

  @override
  String get enabled => 'Włączone';

  @override
  String get export => 'Eksportuj';

  @override
  String get exportAllTodos => 'Eksportuj wszystkie zadania';

  @override
  String exportEvery(String duration) {
    return 'Eksportuj co $duration';
  }

  @override
  String get feedbackDescriptionHelp => 'Bardziej szczegółowe wyjaśnienie, co poszło nie tak / jak to się stało.';

  @override
  String get feedbackHeader => 'Proszę wypełnić poniższy formularz, aby pomóc mi zrozumieć, co poszło nie tak.';

  @override
  String get feedbackTitleHelp => 'Krótkie podsumowanie wydarzenia.';

  @override
  String get general => 'Ogólne';

  @override
  String get generalDescription => 'Zmień ogólne ustawienia aplikacji';

  @override
  String get giveFeedback => 'Wyślij opinię';

  @override
  String get highlightOverdue => 'Wyróżnij zaległe';

  @override
  String get highlightOverdueDescription => 'Oznacz zaległe zadania w ten sam sposób jak zadania oznaczone gwiazdką';

  @override
  String get highlightToday => 'Wyróżnij dziesiejsze';

  @override
  String get highlightTodayDescription => 'Oznacz zadania, które mają być wykonane dzisiaj, w taki sam sposób jak zadania oznaczone gwiazdką';

  @override
  String get importLocalBackupError => 'Nie udało się zaimportować pliku. Czy na pewno został wygenerowany przez Doable?';

  @override
  String get importTodosFromFile => 'Importuj plik';

  @override
  String importedNTodos(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString zadań',
      few: '$countString zadania',
      two: 'dwa zadania',
      one: 'jedno zadanie',
    );
    return 'Zaimportowano $_temp0.';
  }

  @override
  String get installedFrom => 'Zainstalowano z';

  @override
  String get introDoubleTap => 'Stuknij dwa razy';

  @override
  String get introDoubleTapDescription => 'Możesz dwukrotnie przycisnąć zadania, które posiadają opis, aby je rozwinąć. Po rozwinięciu, pokaże się pełny opis i pozwoli to na interakcję z linkami, itp.\n\nMożesz wypróbować to na przykładzie tutaj!';

  @override
  String get introDoubleTapTodoDescription => 'Ciasto jest kłamstwem!\n\nDowiedz się więcej tutaj:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Kup nowe ciasto';

  @override
  String get introLinks => 'Linki, numery telefonów, maile';

  @override
  String get introLinksDescription => 'Gdy dodasz do opisu linki, numery telefonów lub adresy e-mail, zostaną one automatycznie wyróżnione i umożliwi to interakcję z nimi.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription => 'Możesz również synchronizować swoje zadania z instancją Nextcloud. Jeśli chcesz, możesz zalogować się tutaj!';

  @override
  String get introStar => 'Gwiazdki';

  @override
  String get introStarDescription => 'Dodaj gwiazdkę do zadania,\naby wyróżnić je z tłumu.\n\nNaciśnij poniższą gwiazdę, aby to wypróbować!';

  @override
  String get introTodos => 'Zadania';

  @override
  String get introTodosDescription => 'Podczas tworzenia nowego zadania możesz dodać różne rzeczy. Na przykład możesz dodać datę, kiedy zadanie stanie się ważne, lub dodać gwiazdkę, aby wyróżnić je spośród innych! Możesz również dodać opis z linkami lub innymi informacjami związanymi z zadaniem.';

  @override
  String get introWelcome => 'Witamy w Doable!';

  @override
  String get introWelcomeDescription => 'Prosta aplikacja listy zadań z nowoczesnym\ndesignem i integracją z Nextcloud.';

  @override
  String get keepEditing => 'Kontynuuj edycję';

  @override
  String get left => 'Lewo';

  @override
  String get licenses => 'Licencje';

  @override
  String get licensesDescription => 'Otwarte źródło i licencje Flutter';

  @override
  String get localStorage => 'Pamięć lokalna';

  @override
  String get logIn => 'Zaloguj się';

  @override
  String get logOut => 'Wyloguj się';

  @override
  String get logOutputs => 'Logi';

  @override
  String get markCompleted => 'Oznacz jako ukończone';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Oznacz jako nieukończone';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Wsparcie Markdown';

  @override
  String get mayNotBeEmpty => 'Nie może być puste';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage => 'Dodaje wsparcie dla podstawowej składni markdown w opisie i tytule zadań.\n\nPełną składnię można znaleźć na stronie\nhttps://www.markdownguide.org/cheat-sheet/.\n\nJednak ta aplikacja **nie** obsługuje całej specyfikacji markdown. Obsługiwane elementy to:\n\n- Pogrubienie\n- Kursywa\n- Podkreślenie (\\_\\_tekst\\_\\_)\n- Cytaty blokowe\n- Listy uporządkowane / nieuporządkowane\n- Listy zadań\n- Kod i bloki kodu\n- Linki\n- Podświetlanie kodu\n- Przekreślanie';

  @override
  String get moveImportantToTop => 'Przenieś ważne zadania na górę';

  @override
  String get moveImportantToTopDescription => 'Jeśli włączone, zadania oznaczone gwiazdką będą zawsze wyświetlane na górze listy';

  @override
  String get moveUpWhenUpdated => 'Odzwierciedlanie zmian na liście';

  @override
  String get moveUpWhenUpdatedDescription => 'Zadania po zmianie przesuwają się na górę listy';

  @override
  String get ncBaseUrl => 'Serwer';

  @override
  String get ncBaseUrlHint => 'Adres URL interfejsu Nextcloud';

  @override
  String get ncDirectory => 'Katalog';

  @override
  String get ncFileIn => 'Plik zapisany w';

  @override
  String get ncLogOut => 'Wylogowywanie z Nextcloud';

  @override
  String get ncLogOutMessage => 'Podczas wylogowania zapisane dane uwierzytelniające zostaną usunięte, ale zapisany plik na twojej instancji Nextcloud pozostanie zachowany.';

  @override
  String get ncLoggedInAs => 'Zalogowano jako';

  @override
  String get ncPassword => 'Hasło';

  @override
  String get ncUser => 'Użytkownik';

  @override
  String get never => 'Nigdy';

  @override
  String get newSubTodo => 'Podzadanie';

  @override
  String get newTodo => 'Nowe zadanie';

  @override
  String get next => 'Następne';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Nie ma już zadań, świetna robota!';

  @override
  String get notAValidUrl => 'Nieprawidłowe URL';

  @override
  String get off => 'Wyłącz';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Włącz';

  @override
  String get optional => 'Opcjonalne';

  @override
  String get pickAColor => 'Wybierz kolor';

  @override
  String get pickerPrimary => 'Standardowe';

  @override
  String get pickerWheel => 'Niestandardowe';

  @override
  String get popupMenuDeleteCompleted => 'Usuń ukończone';

  @override
  String get popupMenuHideCompleted => 'Ukryj ukończone';

  @override
  String get popupMenuShowCompleted => 'Pokaż ukończone';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Do dnia';

  @override
  String get required => '*wymagane';

  @override
  String get reset => 'Resetuj';

  @override
  String get right => 'Prawo';

  @override
  String get save => 'Zapisz';

  @override
  String get settings => 'Ustawienia';

  @override
  String get showCompletedTodos => 'Pokaż ukończone';

  @override
  String get showCompletedTodosDescription => 'Wyświetlaj ukończone zadania na liście';

  @override
  String get showIntroScreen => 'Pokaż ponownie ekran wprowadzający';

  @override
  String get sortNewestFirst => 'Najpierw najnowsze';

  @override
  String get sortNewestFirstDescription => 'Nowsze zadania są wyświetlane na górze';

  @override
  String get sortNoRelevantDate => 'Bez daty';

  @override
  String get sortOverdue => 'Zaległe';

  @override
  String get sortRelevantDate => 'Z datą';

  @override
  String get sortStarred => 'Oznaczone';

  @override
  String get sortToday => 'Do wykonania dzisiaj';

  @override
  String get sorting => 'Kolejność sortowania';

  @override
  String get sortingDescription => 'Kolejność, w jakiej będą sortowane zadania';

  @override
  String get submitFeedback => 'Prześlij';

  @override
  String get syncCorruptedFile => 'Plik kopii zapasowej wydaje się być uszkodzony.';

  @override
  String get syncDirectoryDoesNotExist => 'Podany folder nie istnieje.';

  @override
  String get syncNcMaintenance => 'Nextcloud jest w trybie konserwacji.';

  @override
  String get syncNoInternetConnection => 'Brak połączenia internetowego.';

  @override
  String get syncNotNcServer => 'Nie udało się znaleźć serwera Nextcloud pod tym adresem.';

  @override
  String get syncServiceUnavailable => 'Nextcloud jest niedostępny.';

  @override
  String get syncSuccessful => 'Zsynchronizowano pomyślnie.';

  @override
  String get syncUnknownError => 'Wystąpił nieznany błąd.';

  @override
  String get syncWrongUrl => 'Podane URL wydaje się być nieprawidłowe.';

  @override
  String get syncWrongUserOrPassword => 'Podana nazwa użytkownika lub hasło są nieprawidłowe.';

  @override
  String get system => 'System';

  @override
  String get systemInfo => 'System';

  @override
  String get thankYouForFeedback => 'Dziękuję za przesłanie opinii!';

  @override
  String get title => 'Tytuł';

  @override
  String get titleMayNotBeEmpty => 'Tytuł nie może być pusty';

  @override
  String get today => 'Dzisiaj';

  @override
  String get todoSearch => 'Wyszukiwanie zadań';

  @override
  String get todoSearchDescription => 'Dodaje przycisk wyszukiwania do listy zadań umożliwiający przeszukiwanie zadań.';

  @override
  String get tomorrow => 'Jutro';

  @override
  String get treatTodayAsIsImportant => 'Traktuj dzisiejszy dzień jako ważny';

  @override
  String get treatTodayAsIsImportantDescription => 'Jeśli włączone, zadania, które mają być wykonane dzisiaj, będą traktowane tak, jakby były oznaczone gwiazdką';

  @override
  String get trimTodoTexts => 'Przytnij teksty zadań';

  @override
  String get trimTodoTextsDescription => 'Jeśli jest włączone, usuwa wszelkie otaczające znaki niedrukowalne z tytułu i opisu zadania';

  @override
  String get trueBlackMode => 'Tryb głębokiej czerni';

  @override
  String get trueBlackModeDescription => 'Sprawia, że tło jest czarne, szczególnie przydatne dla urządzeń z wyświetlaczem OLED';

  @override
  String get turnOff => 'Wyłącz';

  @override
  String get turnOn => 'Włącz';

  @override
  String get undo => 'Cofnij';

  @override
  String get update => 'Aktualizuj';

  @override
  String get updateCredentials => 'Zaktualizuj dane uwierzytelniające';

  @override
  String get useCustomTabs => 'Używaj przeglądarki w aplikacji';

  @override
  String get useCustomTabsDescription => 'Używaj przeglądarki w aplikacji do otwierania linków';

  @override
  String get whatsNew => 'Co nowego?';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get error => 'Błąd';

  @override
  String get routingError => 'Ups! Wygląda na to, że coś poszło nie tak i trafiłeś(aś) na stronę, która, no cóż, nie istnieje. Bardzo mi przykro z tego powodu!';

  @override
  String get goToHome => 'Przejdź na ekran główny';

  @override
  String get pageNotFound => 'Nie znaleziono strony';

  @override
  String get updateDoable => 'Zaktualizuj Doable';

  @override
  String get download => 'Pobierz';

  @override
  String get install => 'Instaluj';

  @override
  String get installed => 'Zainstalowano';

  @override
  String get updateNotInstalled => 'Aktualizacja nie została zainstalowana.';

  @override
  String get skipVersion => 'Pomiń tę wersję';

  @override
  String get couldNotDownloadUpdate => 'Nie udało się pobrać aktualizacji.';

  @override
  String versionWithNumber(String version) {
    return 'Wersja $version';
  }

  @override
  String get autoUpdates => 'Aktualizacje automatyczne';

  @override
  String get autoUpdatesDescription => 'Automatyczne sprawdzanie aktualizacji';

  @override
  String get introExtensions => 'Rozszerzenia? Rozszerzenia!';

  @override
  String get introExtensionsDescription => 'Rozszerzenia pozwalają na rozszerzenie i powiększenie funkcjonalności Doable. Dają możliwość wyboru, w jaki sposób chcesz używać Doable. Jeśli chcesz sprawdzić wszystkie dostępne rozszerzenia, po prostu kliknij przycisk poniżej!';

  @override
  String get introExtensionsButton => 'Rozszerzajmy!';

  @override
  String get useBottomSheetMenu => 'Używaj menu dolnego arkusza';

  @override
  String get useBottomSheetMenuDescription => 'Używaj menu dolnego zamiast menu rozwijalnego';

  @override
  String get contributors => 'Współtwórcy';

  @override
  String get contributorDescription => 'Osoby, które pomogły Doable stać się tym, czym jest';

  @override
  String get webdav => 'WebDAV';

  @override
  String get webdavUrlHint => 'Adres URL WebDAV';

  @override
  String get webdavLogOutMessage => 'Podczas wylogowania zapisane dane uwierzytelniające zostaną usunięte, ale zapisany plik zostanie zachowany.';

  @override
  String get importExport => 'Importowanie i eksportowanie';

  @override
  String get chooseDirectory => 'Wybierz folder';

  @override
  String get forgetDirectory => 'Zapomnij folder';

  @override
  String get newStarredTodo => 'Nowe zadanie z gwiazdką';

  @override
  String get allTodos => 'Wszystkie zadania';

  @override
  String get newTodoList => 'Nowa lista';

  @override
  String get deleteTodoList => 'Usuń listę';

  @override
  String get editTodoList => 'Edytuj listę';

  @override
  String get lists => 'Listy';

  @override
  String get listsDescription => 'Twórz listy i sortuj za ich pomocą swoje zadania. Możesz stworzyć nieograniczoną ilość list, dostępnych poprzez szufladę na ekranie głównym.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Próbujesz usunąć listę $listName i wszystkie zadania znajdujące się w niej. Ta akcja jest trwała i nie może być cofnięta.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Lista';

  @override
  String get share => 'Udostępnij';

  @override
  String get font => 'Czcionka';

  @override
  String get fontDescription => 'Przytrzymaj, by wyświetlić nazwy czcionek';

  @override
  String get popUpAnimationOverSlideAnimation => 'Stare przejście między stronami';

  @override
  String get popUpAnimationOverSlideAnimationDescription => 'Używaj starego skocznego przejścia między stronami';

  @override
  String get restart => 'Uruchom ponownie';

  @override
  String get later => 'Później';

  @override
  String get restartRequired => 'Wymagane ponowne uruchomienie';

  @override
  String get restartRequiredForSetting => 'Aby to ustawienie zaczęło obowiązywać, konieczne jest ponowne uruchomienie aplikacji.';

  @override
  String get image => 'Zdjęcie';

  @override
  String get expandTodos => 'Rozszerz zadania';

  @override
  String get showTodoListNames => 'Pokaż nazwy list';

  @override
  String get includeBranding => 'Załącz branding';

  @override
  String get doableBrandingText => 'Udostępnione z Doable, prostej, nowoczesnej i łatwej w użyciu aplikacji listy zadań.\nMożesz pobrać Doable tutaj: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType => 'Wybierz, w jaki sposób chcesz udostępnić swoje zadania';

  @override
  String get options => 'Opcje';

  @override
  String get reduceMotion => 'Ograniczenie ruchu';

  @override
  String get reduceMotionDescription => 'Redukuje ruch animacji';

  @override
  String get contribute => 'Przyczyń się';

  @override
  String get contributeWantYourNameHere => 'Chcesz mieć tu swoje imię?';

  @override
  String get contributeWantYourNameHereDescription => 'Przyczyń się bezpośrednio do Doable lub pomóż w jego tłumaczeniu!';

  @override
  String get onlySymbolInDetailViewFab => 'Ikona zamiast tekstu';

  @override
  String get onlySymbolInDetailViewFabDescription => 'Używaj ikony zamiast tekstu w widoku szczegółów zadania';

  @override
  String get allSelected => 'Wszystkie';

  @override
  String get sharedTextAsTitle => 'Udostępniony tekst to tytuł';

  @override
  String get sharedTextAsTitleDescription => 'Używaj tekst udostępniony do Doable jako tytuł nowego zadania zamiast jego opisu';

  @override
  String get noTodoLists => 'Obecnie nie masz żadnych list.\nUtwórz nową aby zacząć!';

  @override
  String forExample(String example) {
    return 'np. $example';
  }

  @override
  String get clearSelection => 'Wyczyść wybrane';

  @override
  String get syncConnectionTimedOut => 'Przekroczono limit czasu połączenia.';

  @override
  String get syncTooManyTimeOuts => 'Serwer przekroczył limit czasu zbyt wiele razy. Synchronizacja jest wyłączona do momentu ponownego uruchomienia aplikacji.';

  @override
  String get todoToCalendar => 'Dodaj zadania do kalendarza';

  @override
  String get logs => 'Logi';

  @override
  String get logsDescription => 'Pokaż wszystkie zdarzenia, które wypisuje Doable';

  @override
  String get aboutToClearAllLogs => 'Zamierzasz usunąć wszystkie zdarzenia, czyniąc je niedostępnymi dla opinii i rozwiązywania problemów. To działanie jest trwałe i nie może być cofnięte.';

  @override
  String get clearAllLogs => 'Wyczyść wszystkie zdarzenia';

  @override
  String get noLogsYet => 'Obecnie nie ma żadnych zdarzeń.';

  @override
  String get dateFormat => 'Format daty';

  @override
  String get timeFormat => 'Format czasu';

  @override
  String get shareAllLogs => 'Udostępnij wszystkie logi';

  @override
  String get copyAllLogs => 'Kopiuj wszystkie logi';

  @override
  String get whatWentWrong => 'Co poszło nie tak?';

  @override
  String get fixCorruptBackupFile => 'Nie można odczytać pliku kopii zapasowej Doable i wygląda na to, że jest on uszkodzony. Doable może spróbować go naprawić, usuwając bieżący plik kopii zapasowej i tworząc nowy. Spowoduje to usunięcie wszystkich zmian w innych wykonalnych wystąpieniach przy użyciu tego samego pliku kopii zapasowej.';

  @override
  String get initializingNextcloud => 'Inicjowanie Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Zmień katalog';

  @override
  String get dueDate => 'Termin';

  @override
  String get dragToReorder => 'Przeciągnij, aby zmienić kolejność';

  @override
  String get copySettings => 'Kopiuj ustawienia';

  @override
  String get copySystemInfo => 'Kopiuj informacje o systemie';

  @override
  String get languageNameInEnglish => 'Polish';

  @override
  String get languageNameInNativeLanguage => 'Polski';

  @override
  String get createSummaryForBugReport => 'Stwórz podsumowanie';

  @override
  String get createSummaryForBugReportDetails => 'Tworzy raport zawierający informacje o systemie, ustawienia Doable i wszystkie dzienniki. Może to być przydatne w przypadku zgłaszania błędów i pomaga w rozwiązywaniu problemów.';

  @override
  String get bugReport => 'Zgłoszenie błędu';

  @override
  String get bugReportSupportingText => 'Wybierz, co chcesz uwzględnić w zgłoszeniu błędu. Im więcej informacji podasz, tym łatwiej będzie dowiedzieć się, co dokładnie poszło nie tak. **Żadne dane osobowe nie zostaną udostępniane.**';

  @override
  String get shareBugReport => 'Udostępnij raport o błędzie';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String get fontSizeDescription => 'Zastąpi rozmiar czcionki systemowej';

  @override
  String get decrease => 'Zmniejsz';

  @override
  String get increase => 'Powiększ';

  @override
  String get customSecondaryAccentPicker => 'Kolor drugorzędny';

  @override
  String get customTertiaryAccentPicker => 'Kolor trzeciorzędny';

  @override
  String get advancedColorOptions => 'Zaawansowane opcje kolorystyczne';

  @override
  String get uploadCustomColorScheme => 'Prześlij niestandardową paletę kolorów';

  @override
  String get downloadCurrentColorScheme => 'Pobierz obecną paletę kolorów';

  @override
  String get markAsStarred => 'Oznacz zadanie gwiazdką';

  @override
  String get setTime => 'Ustaw czas';

  @override
  String get thereAreNoLists => 'Nie ma jeszcze żadnej listy';

  @override
  String get closeDetailsOnCompelte => 'Zamknij szczegóły po zakończeniu';

  @override
  String get closeDetailsOnCompelteDescription => 'Zapisuje zadanie i zamyka jego widok szczegółowy po naciśnięciu przycisku zakończenia.';

  @override
  String get customColorTheme => 'Niestandardowy motyw';

  @override
  String get discardCustomColorTheme => 'Wszystkie zmiany wprowadzone w motywie zostaną odrzucone.';

  @override
  String get lightMode => 'Tryb oświetlenia';

  @override
  String get deletedCustomColorTheme => 'Usunięto niestandardowy motyw kolorystyczny.';

  @override
  String get customThemeInfo => 'Tutaj możesz zmienić każdy token koloru do woli. Możesz także importować / eksportować kolory do pliku `json` i tam je edytować!\n\nJeśli chcesz zrozumieć, co robi każdy token, odwiedź następującą stronę internetową: https://m3.material.io/foundations/design-tokens';

  @override
  String get import => 'Importuj';

  @override
  String get customThemeFuckedFile => 'Ten plik nie zawiera prawidłowego motywu kolorów. Upewnij się, że Twój plik ma taki sam styl i strukturę jak plik, który wyeksportowałeś.';

  @override
  String get markdownBold => 'Pogrubienie';

  @override
  String get markdownItalic => 'Kursywa';

  @override
  String get markdownMonospace => 'Krój stały';

  @override
  String get markdownHighlight => 'Podświetlenie';

  @override
  String get fediChooseInstance => 'Wybierz swoją instancję';

  @override
  String get fediInstanceUrl => 'Adres url instancji';

  @override
  String get fediRememberInstance => 'Zapamiętaj moją instancję';

  @override
  String get fediDoablePost => 'Właśnie udało mi się ukończyć wszystkie moje zadania dzięki @Doable@floss.social!\n\nBrzmi interesująco? Możesz dowiedzieć się więcej o #Doable odwiedzając https://repo.doable.at!';

  @override
  String get doable => 'Doable - Nowoczesna i prosta aplikacja do zapisywania zadań';

  @override
  String get rrRepeatsEvery => 'Powtarza się co';

  @override
  String get rrRepeatsOn => 'Powtarza się';

  @override
  String get rrEnds => 'Kończy się';

  @override
  String get week => 'Tydzień';

  @override
  String get weeks => 'Tygodnie';

  @override
  String get day => 'Dzień';

  @override
  String get days => 'Dni';

  @override
  String get month => 'Miesiąc';

  @override
  String get months => 'Miesiące';

  @override
  String get year => 'Rok';

  @override
  String get years => 'Lata';

  @override
  String get onFollowedByDate => 'Dnia';

  @override
  String get rrAfterOccurrences => 'Po';

  @override
  String get occurrence => 'Zdarzenie';

  @override
  String get occurrences => 'Zdarzenia';

  @override
  String get rrCustomRecurrence => 'Niestandardowa powtarzalność';

  @override
  String get daily => 'Codziennie';

  @override
  String get weekly => 'Co tydzień';

  @override
  String get monthly => 'Co miesiąc';

  @override
  String get yearly => 'Co rok';

  @override
  String get doesNotRepeat => 'Nie powtarza się';

  @override
  String get rrRecurrence => 'Powtarzalność';

  @override
  String get recurringTodos => 'Powtarzające się zadania';

  @override
  String get recurringTodosDescription => 'Dodaj powtarzalność do swoich zadań by Doable automatycznie przekładało termin po ich ukończeniu. Termin zadań zostanie zmieniony na podstawie ustawionej daty i harmonogramu. Jeśli nie ustawiono wcześniej terminu zadania, zostanie użyta data jego utworzenia.\n\n**Należy pamiętać, że mimo tego, że można teraz ustawić powtarzalność zadań w Doable, obecnie ta funkcja jest ograniczona do języka angielskiego.**';

  @override
  String get post => 'Opublikuj';

  @override
  String get rrRepeats => 'Powtórzenia';

  @override
  String get beta => 'Beta';

  @override
  String get extensionBetaWarningDescription => 'Rozszerzenie to jest wciąż w fazie beta i podczas korzystania z niego mogą wystąpić pewne problemy. Pamiętaj o ryzyku i daj mi znać, jeśli napotkasz jakiekolwiek problemy!';

  @override
  String get extensionBetaWarning => 'Włączyć rozszerzenie beta?';

  @override
  String get showFediButton => 'Pokazuj przycisk publikacji';

  @override
  String get showFediButtonDescription => 'Pokaż przycisk umożliwiający publikowanie informacji o twojej pustej liście na Fediwersum';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get enableNotifications => 'Włącz powiadomienia';

  @override
  String get notifyAll => 'Wszystkie zadania';

  @override
  String get notifyAllDescription => 'Wysyłaj powiadomienia o każdym zadaniu z datą wykonania';

  @override
  String get notifyTimeOnly => 'Jedynie zadania z godziną wykonania';

  @override
  String get notifyTimeOnlyDescription => 'Jedynie wysyłaj powiadomienia o zadaniach z datą i czasem wykonania';

  @override
  String get notifyTodosChannelName => 'Zadania';

  @override
  String get notificationsDescription => 'Pozwól Doable powiadamiać Cię, gdy nadejdzie termin Twoich zadań. Możesz także zmienić, dla których zadań będziesz otrzymywać powiadomienia.';

  @override
  String get notificationsDescriptionShort => 'Zmień dla których zadań będziesz otrzymywać powiadomienia';

  @override
  String get notifyNeverDescription => 'Nie wysyłaj powiadomień o żadnym z zadań';

  @override
  String get defaultNotificationTime => 'Domyślny czas powiadomienia';

  @override
  String get defaultNotificationTimeDescription => 'Czas, o którym otrzymasz powiadomienie w przypadku zadań, które nie mają oznaczonego czasu';

  @override
  String get addImage => 'Dodaj zdjęcie';

  @override
  String get todoImages => 'Zdjęcia';

  @override
  String get todoImagesDescription => 'Dodaj zdjęcia do swoich zadań, by ukontekstualizować to, co piszesz.\n\n**Niestety obrazy aktualnie nie są synchronizowane.**';

  @override
  String get clearInputField => 'Wyczyść pole wprowadzania';

  @override
  String get removeImage => 'Usuń zdjęcie';

  @override
  String get apkSignatureInvalid => 'Nieprawidłowa sygnatura';

  @override
  String get apkSignatureInvalidDescription => 'Nie udało się zweryfikować sygnatury pobranego pliku apk. Prosimy o powiadomienie dewelopera o tym problemie. Chociaż możesz kontynuować instalację pliku apk na własne ryzyko, zalecamy ostrożność ze względu na obawy dotyczące bezpieczeństwa.';

  @override
  String get searchTodos => 'Szukaj zadania';

  @override
  String get editTodo => 'Edytuj zadanie';

  @override
  String get previewTodo => 'Podgląd zadania';

  @override
  String get readerMode => 'Tryb czytania';

  @override
  String get readerModeDescription => 'Umożliwia podgląd zadań na ekranie edycji.';

  @override
  String get noList => 'Bez listy';

  @override
  String get chooseAList => 'Wybierz listę';

  @override
  String get readerModeDescriptionShort => 'Zmień tryb początkowy przy otwieraniu zadań';

  @override
  String get lastUsed => 'Ostatnio używany';

  @override
  String get syncFileLocked => 'Serwer zablokował plik kopii zapasowej, spróbuj ponownie za około 15 minut.';

  @override
  String get syncInternalError => 'Wystąpił błąd wewnętrzny, przepraszamy za niedogodności.';

  @override
  String get syncConnectionError => 'Wystąpił błąd podczas łączenia się z serwerem.';

  @override
  String get restore => 'Przywróć';

  @override
  String get loggingNextcloudIn => 'Logowanie do Nextcloud…';

  @override
  String get initializingWebdav => 'Inicjalizowanie WebDAV…';

  @override
  String get migratingNextcloudToRemote => 'Migrowanie Nextcloud do nowej implementacji synchronizacji…';

  @override
  String get migratingWebdavToRemote => 'Migrowanie WebDAV do nowej implementacji synchronizacji…';

  @override
  String get migrateToRemotes => 'Migracja';

  @override
  String get migrateToRemotesDescription => 'Doable niedawno zmieniło sposób synchronizacji z zewnętrznymi serwisami jak Nextcloud lub WebDAV. Niestety nowa implementacja nie jest zgodna z wcześniejszą i musi nastąpić migracja. Migracja wszystkiego, co potrzebne zajmie około minutę.\n\nJeśli zdecydujesz się zrobić to później, możesz napotkać komunikaty o błędach, ponieważ nowa implementacja nie została jeszcze skonfigurowana.';

  @override
  String get fixBrokenRemoteFile => 'Plik kopii zapasowej Doable wydaje się być uszkodzony. Doable może to naprawić, zastępując go bieżącą, lokalną wartością. Zastąpi to wszelkie zmiany wprowadzone przez inne urządzenia po wystąpieniu tego błędu.';

  @override
  String get fixedBrokenRemoteFile => 'Pomyślnie przywrócono uszkodzony plik.';

  @override
  String get unfixableRemoteFile => 'Plik nie mógł zostać przywrócony.';

  @override
  String get syncFileDoesNotExist => 'Plik kopii zapasowej Doable nie istnieje.';

  @override
  String get todos => 'Zadania';

  @override
  String get selectWhatToExport => 'Wybierz, co chcesz wyeksportować.';

  @override
  String get exportFile => 'Eksportuj plik';

  @override
  String get listColor => 'Kolor listy';

  @override
  String get listColorAsAccent => 'Kolor listy jako akcentowy';

  @override
  String get listColorAsAccentDescription => 'Używaj koloru bieżącej listy jako koloru akcentu aplikacji';

  @override
  String get privacy => 'Prywatność';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get openSource => 'Otwarte źródło';

  @override
  String get sourceCode => 'Kod źródłowy';

  @override
  String get contact => 'Kontakt';

  @override
  String get mastodon => 'Mastodon';

  @override
  String get fdroid => 'F-Droid';

  @override
  String get aboutOpenSource => 'Cały kod źródłowy Doable jest dostępny na Codeberg na wolnej i otwartej licencji. Można tam również przesyłać zgłoszenia i wnieść własny kod. Na Codeberg można również znaleźć repozytorium F-Droid Doable!';

  @override
  String get aboutPrivacy => 'Doable nie gromadzi żadnych danych osobowych użytkownika. Jedyną rzeczą związaną z użytkowaniem aplikacji, którą Doable przechowuje, są logi. Te logi jednak **nie są przesyłane automatycznie**. Jedynym sposobem, w którym mogą opuścić urządzenie użytkownika, to udostępnienie ich, na przykład w celu naprawienia błędu.';

  @override
  String get httpWarning => 'Nieszyfrowane połączenie';

  @override
  String get cancelling => 'Anulowanie…';

  @override
  String get httpWarningDescription => 'Próbujesz połączyć się z serwerem HTTP zamiast z bezpieczniejszym serwerem HTTPS. Protokół HTTP wysyła niezaszyfrowane dane do serwera, stwarzając potencjalne zagrożenie bezpieczeństwa, więc korzystanie z niego nie jest zalecane. Istnieją jednak pewne przypadki, w których użycie jego jest akceptowalne, takie jak prowadzenie lokalnego serwera. Czy na pewno chcesz kontynuować korzystać z protokołu HTTP?';

  @override
  String get enableNotificationReminder => 'Powiadomienie przypominające';

  @override
  String get pickNotificationReminderDuration => 'Przypomnij mi po';

  @override
  String get hours => 'Godziny';

  @override
  String get minutes => 'Minuty';

  @override
  String get enableNotificationSound => 'Odtwórz dźwięk';

  @override
  String get enableNotificationSoundDescription => 'Odtwórz niestandardowy dźwięk podczas wyświetlania powiadomienia';

  @override
  String get interval => 'Interwał';

  @override
  String get secondly => 'Co sekundę';

  @override
  String get minutely => 'Co minutę';

  @override
  String get hourly => 'Co godzinę';

  @override
  String get second => 'Sekunda';

  @override
  String get startOfTheWeek => 'Początek tygodnia';

  @override
  String get hideList => 'Schowaj listę';

  @override
  String get showList => 'Pokaż listę';

  @override
  String get showListDescription => 'Pokaż zadania tej listy w przeglądzie.';

  @override
  String get hideListDescription => 'Nie pokazuj zadania z tej listy w przeglądzie.';

  @override
  String get gotIt => 'Rozumiem';

  @override
  String get updateRelease => 'Otwórz stronę wydań Doable i pobierz najnowszą wersję';

  @override
  String get updateDownload => 'Pozwól Doable pobrać najnowszą wersję; plik znajdziesz w powiadomieniach i po kliknięciu będzie zainstalowany';

  @override
  String get updateFdroid => 'Jeśli Doable zostało pobrane z F-Droid, powinno być zaktualizowane w ciągu najbliższych kilku godzin z repozytorium IzzyOnDroid lub repozytorium Doable';

  @override
  String get updateDisable => 'Możesz również wyłączyć automatyczne sprawdzanie aktualizacji w ustawieniach';

  @override
  String get updateChecker => 'Sprawdzanie aktualizacji';

  @override
  String get whatCanYouDo => 'Co możesz zrobić?';

  @override
  String get synchronization => 'Synchronizacja';

  @override
  String get backup => 'Kopia zapasowa';

  @override
  String get autoExport => 'Automatyczny eksport';

  @override
  String get changeDuration => 'Zmień czas trwania';

  @override
  String get autoExportDescription => 'Możesz pozwolić Doable na automatyczne eksportowanie Twoich zadań, list i ustawień. Pamiętaj, że Doable utworzy nowy plik dla każdego eksportu! Wybierz odpowiednio czas trwania między eksportami.';

  @override
  String get seconds => 'Sekundy';

  @override
  String get apkVerifyingSignature => 'Weryfikowanie podpisu apk…';

  @override
  String get swipeActions => 'Akcje po przeciągnięciu';

  @override
  String get swipeActionsDescription => 'Dodaje możliwość przesunięcia palcem w lewo na zadaniu, aby je oznaczyć gwiazdką lub ukończyć.\n\n**Uwaga: może to czasami kolidować z szufladą rozszerzenia Listy..**';

  @override
  String get selectedSwipeActions => 'Wybrane akcje';

  @override
  String get unselectedSwipeActions => 'Niewybrane akcje';

  @override
  String get swipeActionComplete => 'Oznacz zadanie jako wykonane / niewykonane';

  @override
  String get swipeActionExpand => 'Rozwiń zadanie';

  @override
  String get swipeActionStar => 'Oznacz / odznacz gwiazdką zadanie';

  @override
  String get swipeActionDelete => 'Usuń zadanie';

  @override
  String get swipeActionsHideCheck => 'Ukryj znacznik wyboru';

  @override
  String swipeActionsHideCheckDescription(String action) {
    return 'Ukryj znacznik wyboru po wybraniu $action';
  }

  @override
  String get forceHighestRefreshRate => 'Wymuś najwyższą częstotliwość odświeżania';

  @override
  String get forceHighestRefreshRateDescription => '(Spróbuj) zmusić system do korzystania z najwyższej możliwej częstotliwości odświeżania w aplikacji';

  @override
  String get overview => 'Podgląd';

  @override
  String whatsNewIn(String version) {
    return 'Co nowego w wersji $version?';
  }

  @override
  String get expandTodosByDefault => 'Rozwiń zadania domyślnie';

  @override
  String get expandTodosByDefaultDescription => 'Domyślnie wyświetlaj zadania jako rozwinięte';

  @override
  String get progress => 'Postęp';

  @override
  String get progressBar => 'Pasek postępu';

  @override
  String get progressBarDescription => 'Dodaje pasek postępu do zadań, zapewniając lepszą kontrolę nad stanem ich ukończenia.';

  @override
  String get syncMultipleErrors => 'Pilot napotkał wiele błędów. Szczegółowe informacje można znaleźć w dziennikach.';

  @override
  String get deletedCompleted => 'Usuń wykonane zadania.';

  @override
  String get dateRange => 'Zasięg';

  @override
  String get next3Days => 'Następne 3 dni';

  @override
  String get dateFilters => 'Filtry daty';

  @override
  String get dateFiltersDescription => 'Dodanie opcji filtrowania zadań według określonego zakresu dat.';

  @override
  String get exportedFile => 'Wyeksportowany plik.';

  @override
  String mustEnableExtensionForImageSharing(String extensionName) {
    return 'Aby korzystać z tej funkcji, należy włączyć rozszerzenie $extensionName.';
  }

  @override
  String get enablePrideFlagsDescription => 'Pokazuje flagi Pride za paskiem tytułu w niektórych miesiącach';

  @override
  String get enablePrideFlags => 'Włącz flagi Pride';

  @override
  String get prideFlagRestOfYear => 'Flaga dumy wyświetlana przez cały rok';

  @override
  String get addNotification => 'Dodaj powiadomienie';

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
