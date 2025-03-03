import 'package:intl/intl.dart' as intl;

import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class StringsId extends Strings {
  StringsId([String locale = 'id']) : super(locale);

  @override
  String get about => 'Tentang';

  @override
  String get aboutDescription => 'Info tentang aplikasi';

  @override
  String get aboutOSInfo =>
      'Kode sumber: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nRepositori F-Droid: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)';

  @override
  String get aboutToCancelChanges => 'Buang perubahan?';

  @override
  String get aboutToCancelChangesDescription =>
      'Anda akan membuang semua perubahan yang dibuat pada Todo ini.';

  @override
  String get aboutToCancelFeedback => 'Buang umpan balik?';

  @override
  String get aboutToCancelFeedbackDescription =>
      'Anda akan membuang umpan balik Anda. Ini tidak bisa dibatalkan.';

  @override
  String get aboutToDeleteCompleted =>
      'Anda akan menghapus semua Todos yang sudah selesai. Tindakan ini bersifat permanen dan tidak dapat dibatalkan.';

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
    return 'Anda akan menghapus $_temp0. Tindakan ini bersifat permanen dan tidak dapat dibatalkan.';
  }

  @override
  String get additionalFeatures => 'Ekstensi';

  @override
  String get additionalFeaturesDescription =>
      'Fitur yang membuat Doable lebih dahsyat';

  @override
  String get alignTodoCheck => 'Tanda centang kanan';

  @override
  String get alignTodoCheckDescription =>
      'Tampilkan tanda centang Todo di sisi kanan';

  @override
  String get appLanguage => 'Bahasa aplikasi';

  @override
  String get appTitle => 'Dapat dilakukan';

  @override
  String get attention => 'Perhatian';

  @override
  String get back => 'Kembali';

  @override
  String get syncAndBackup => 'Sinkronisasi & Pencadangan';

  @override
  String get syncAndBackupDescription =>
      'Mencadangkan dan menyinkronkan Todos Anda';

  @override
  String get cancel => 'Batal';

  @override
  String get chooseFeedbackExtrasDescription =>
      'Saya merekomendasikan untuk menyertakan semua hal berikut ini karena membantu saya dalam memecahkan masalah Anda. Ini tidak termasuk informasi pribadi.';

  @override
  String get chooseFeedbackExtrasTitle =>
      'Informasi tambahan apa yang ingin Anda sertakan?';

  @override
  String get chooseFeedbackWay => 'Di mana Anda ingin memberi umpan balik?';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get completedTodo => 'Menyelesaikan Todo.';

  @override
  String get copiedToClipboard => 'Menyalin teks ke clipboard.';

  @override
  String get customAccentPicker => 'Warna aksen';

  @override
  String get customAccentPickerDescription =>
      'Pilih warna aksen khusus untuk tema aplikasi';

  @override
  String get darkMode => 'Mode gelap';

  @override
  String get deleteCompletedAfter => 'Autodelete selesai';

  @override
  String deleteCompletedAfterDescription(String duration) {
    return 'Hapus setelah $duration';
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
    return 'Dihapus $_temp0.';
  }

  @override
  String get description => 'Deskripsi';

  @override
  String get design => 'Desain';

  @override
  String get designDescription => 'Ubah tampilan dan nuansa Doable';

  @override
  String get disable => 'Nonaktifkan';

  @override
  String get discard => 'Buang';

  @override
  String get doContinue => 'Lanjutkan';

  @override
  String get done => 'Selesai';

  @override
  String get dynamicColors => 'Warna dinamis';

  @override
  String get dynamicColorsDescription => 'Gunakan warna sistem (Android 12+)';

  @override
  String get email => 'Email';

  @override
  String get enable => 'Aktifkan';

  @override
  String get enabled => 'Diaktifkan';

  @override
  String get export => 'Ekspor';

  @override
  String get exportAllTodos => 'Ekspor semua Todos';

  @override
  String exportEvery(String duration) {
    return 'Ekspor setiap $duration';
  }

  @override
  String get feedbackDescriptionHelp =>
      'Penjelasan yang lebih terperinci mengenai apa yang salah / bagaimana hal itu terjadi.';

  @override
  String get feedbackHeader =>
      'Silakan isi formulir di bawah ini untuk membantu saya memahami apa yang salah.';

  @override
  String get feedbackTitleHelp => 'Ringkasan singkat mengenai acara ini.';

  @override
  String get general => 'Umum';

  @override
  String get generalDescription => 'Mengubah perilaku umum aplikasi';

  @override
  String get giveFeedback => 'Umpan balik';

  @override
  String get highlightOverdue => 'Sorot terlambat';

  @override
  String get highlightOverdueDescription =>
      'Soroti Todos yang terlambat dengan cara yang sama seperti Todos berbintang';

  @override
  String get highlightToday => 'Sorotan hari ini';

  @override
  String get highlightTodayDescription =>
      'Soroti Todos yang jatuh tempo hari ini dengan cara yang sama seperti Todos berbintang';

  @override
  String get importLocalBackupError =>
      'File tidak dapat diimpor. Apakah Anda yakin itu dihasilkan oleh Doable?';

  @override
  String get importTodosFromFile => 'Impor berkas';

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
    return 'Diimpor $_temp0.';
  }

  @override
  String get installedFrom => 'Dipasang dari';

  @override
  String get introDoubleTap => 'Ketuk ganda';

  @override
  String get introDoubleTapDescription =>
      'Anda dapat mengetuk dua kali pada Todos yang menampilkan deskripsi untuk meluaskannya. Apabila diperluas, deskripsi lengkap akan ditampilkan dan Anda kemudian bisa berinteraksi dengan tautan, dll.\n\nAnda bisa mencobanya dengan contoh di sini!';

  @override
  String get introDoubleTapTodoDescription =>
      'Kue itu bohong!\n\nCari tahu lebih lanjut di sini:\nhttps://theportalwiki.com/wiki/Cake';

  @override
  String get introDoubleTapTodoTitle => 'Beli kue baru';

  @override
  String get introLinks => 'Tautan, nomor telepon, email';

  @override
  String get introLinksDescription =>
      'Apabila Anda menambahkan tautan, nomor telepon, atau alamat email ke dalam deskripsi, tautan, nomor telepon, atau alamat email tersebut akan secara otomatis disorot dan Anda dapat berinteraksi dengan tautan, nomor telepon, atau alamat email tersebut.';

  @override
  String get introNextcloud => 'Nextcloud';

  @override
  String get introNextcloudDescription =>
      'Anda juga dapat menyinkronkan Todos Anda dengan instance Nextcloud. Jika Anda ingin, Anda dapat masuk di sini!';

  @override
  String get introStar => 'Bintang';

  @override
  String get introStarDescription =>
      'Tambahkan bintang ke Todo untuk membuatnya\nmenonjol di antara kerumunan.\n\nKetuk bintang di bawah ini untuk mencobanya!';

  @override
  String get introTodos => 'Todos';

  @override
  String get introTodosDescription =>
      'Saat membuat Todo baru, Anda dapat menambahkan berbagai hal. Misalnya, Anda dapat menambahkan tanggal kapan Todo menjadi relevan, atau Anda dapat memberi bintang pada Todo untuk membuatnya menonjol di antara yang lain! Anda juga dapat menambahkan deskripsi dengan tautan atau informasi lain yang terkait dengan Todo.';

  @override
  String get introWelcome => 'Selamat datang di Doable!';

  @override
  String get introWelcomeDescription =>
      'Aplikasi Todo sederhana dengan desain modern\ndan integrasi Nextcloud.';

  @override
  String get keepEditing => 'Terus mengedit';

  @override
  String get left => 'Kiri';

  @override
  String get licenses => 'Lisensi';

  @override
  String get licensesDescription => 'Lisensi sumber terbuka dan Flutter';

  @override
  String get localStorage => 'Penyimpanan lokal';

  @override
  String get logIn => 'Masuk';

  @override
  String get logOut => 'Keluar';

  @override
  String get logOutputs => 'Log';

  @override
  String get markCompleted => 'Tandai selesai';

  @override
  String markRequired(String text) {
    return '$text*';
  }

  @override
  String get markUncompleted => 'Tandai belum selesai';

  @override
  String get markdown => 'Markdown';

  @override
  String get markdownDescription => 'Dukungan Markdown';

  @override
  String get mayNotBeEmpty => 'Tidak boleh kosong';

  @override
  String get mdCheatSheet => 'https://www.markdownguide.org/cheat-sheet/';

  @override
  String get mdHelpMessage =>
      'Menambahkan dukungan untuk sintaks di dalam deskripsi dan judul Tugas Anda.\n\nUntuk daftar lengkap opsi sintaksis, Anda dapat memeriksanya\nhttps://www.markdownguide.org/cheat-sheet/.\n\nNamun, aplikasi ini **tidak** mendukung keseluruhan sintaks. Elemen yang didukung adalah:\n\n- Tebal\n- Miring\n- Garis Bawah (\\_\\_text\\_\\_)\n- Kutipan blok\n- Daftar Terurut / Tidak Terurut\n- Daftar tugas\n- Kode sebaris dan blok kode berpagar\n- Tautan\n- Sorot\n- Coret';

  @override
  String get moveImportantToTop => 'Pindahkan yang penting ke atas';

  @override
  String get moveImportantToTopDescription =>
      'Jika diaktifkan, Todos yang telah diberi bintang akan selalu ditampilkan di bagian atas daftar';

  @override
  String get moveUpWhenUpdated => 'Mencerminkan perubahan dalam daftar';

  @override
  String get moveUpWhenUpdatedDescription =>
      'Todos pindah ke bagian atas daftar setelah diubah';

  @override
  String get ncBaseUrl => 'Server';

  @override
  String get ncBaseUrlHint => 'URL antarmuka web Nextcloud';

  @override
  String get ncDirectory => 'Direktori';

  @override
  String get ncFileIn => 'File disimpan di';

  @override
  String get ncLogOut => 'Keluar dari Nextcloud';

  @override
  String get ncLogOutMessage =>
      'Ketika logout, kredensial yang tersimpan akan terhapus. Namun, file yang tersimpan pada instance Nextcloud Anda akan tetap ada.';

  @override
  String get ncLoggedInAs => 'Masuk sebagai';

  @override
  String get ncPassword => 'Kata sandi';

  @override
  String get ncUser => 'Pengguna';

  @override
  String get never => 'Tidak pernah';

  @override
  String get newSubTodo => 'sub Todo';

  @override
  String get newTodo => 'Todo Baru';

  @override
  String get next => 'Berikutnya';

  @override
  String get nextcloud => 'Nextcloud';

  @override
  String get noTodosLeft => 'Tidak ada Todos yang tersisa, kerja bagus!';

  @override
  String get notAValidUrl => 'Bukan url yang valid';

  @override
  String get off => 'Mati';

  @override
  String get ok => 'Ok';

  @override
  String get on => 'Aktif';

  @override
  String get optional => 'Opsional';

  @override
  String get pickAColor => 'Pilih warna';

  @override
  String get pickerPrimary => 'Standar';

  @override
  String get pickerWheel => 'Adat';

  @override
  String get popupMenuDeleteCompleted => 'Hapus selesai';

  @override
  String get popupMenuHideCompleted => 'Sembunyikan selesai';

  @override
  String get popupMenuShowCompleted => 'Tunjukkan selesai';

  @override
  String get quoteDoubleLeft => '“';

  @override
  String get quoteDoubleRight => '”';

  @override
  String get quoteSingleLeft => '‘';

  @override
  String get quoteSingleRight => '’';

  @override
  String get relevantDate => 'Tanggal tenggat';

  @override
  String get required => '*diperlukan';

  @override
  String get reset => 'Reset';

  @override
  String get right => 'Benar';

  @override
  String get save => 'Simpan';

  @override
  String get settings => 'Pengaturan';

  @override
  String get showCompletedTodos => 'Tunjukkan selesai';

  @override
  String get showCompletedTodosDescription =>
      'Tampilkan Todos yang sudah selesai dalam daftar';

  @override
  String get showIntroScreen => 'Tampilkan kembali layar perkenalan';

  @override
  String get sortNewestFirst => 'Terbaru pertama';

  @override
  String get sortNewestFirstDescription =>
      'Tanggal yang lebih baru ditampilkan di atas';

  @override
  String get sortNoRelevantDate => 'Tanpa tanggal';

  @override
  String get sortOverdue => 'Terlambat';

  @override
  String get sortRelevantDate => 'Dengan tanggal';

  @override
  String get sortStarred => 'Dibintangi';

  @override
  String get sortToday => 'Jatuh tempo hari ini';

  @override
  String get sorting => 'Urutkan urutan';

  @override
  String get sortingDescription => 'Urutan di mana Todos akan disortir';

  @override
  String get submitFeedback => 'Kirim';

  @override
  String get syncCorruptedFile => 'File cadangan tampaknya rusak.';

  @override
  String get syncDirectoryDoesNotExist =>
      'Direktori yang ditentukan tidak ada.';

  @override
  String get syncNcMaintenance => 'Nextcloud sedang dalam Mode Pemeliharaan.';

  @override
  String get syncNoInternetConnection => 'Tidak ada koneksi internet.';

  @override
  String get syncNotNcServer =>
      'Tidak dapat menemukan server Nextcloud di alamat ini.';

  @override
  String get syncServiceUnavailable => 'Nextcloud tidak tersedia.';

  @override
  String get syncSuccessful => 'Berhasil disinkronkan.';

  @override
  String get syncUnknownError => 'Terjadi kesalahan yang tidak diketahui.';

  @override
  String get syncWrongUrl => 'URL yang Anda berikan tampaknya tidak benar.';

  @override
  String get syncWrongUserOrPassword =>
      'Nama pengguna atau kata sandi yang diberikan salah.';

  @override
  String get system => 'Sistem';

  @override
  String get systemInfo => 'Sistem';

  @override
  String get thankYouForFeedback => 'Terima kasih telah mengirim umpan balik!';

  @override
  String get title => 'Judul';

  @override
  String get titleMayNotBeEmpty => 'Judul tidak boleh kosong';

  @override
  String get today => 'Hari ini';

  @override
  String get todoSearch => 'Pencarian Todo';

  @override
  String get todoSearchDescription =>
      'Tambahkan tombol pencarian ke daftar Todo yang memungkinkan Anda untuk mencari melalui Todo Anda.';

  @override
  String get tomorrow => 'Besok';

  @override
  String get treatTodayAsIsImportant =>
      'Perlakukan hari ini sebagai hal yang penting';

  @override
  String get treatTodayAsIsImportantDescription =>
      'Jika diaktifkan, Todos yang jatuh tempo hari ini akan diperlakukan seolah-olah dibintangi';

  @override
  String get trimTodoTexts => 'Memangkas teks Todo';

  @override
  String get trimTodoTextsDescription =>
      'Jika diaktifkan, pangkas spasi di sekitarnya dari judul dan deskripsi Todos';

  @override
  String get trueBlackMode => 'Mode hitam sejati';

  @override
  String get trueBlackModeDescription =>
      'Membuat latar belakang menjadi hitam, terutama berguna untuk perangkat oled';

  @override
  String get turnOff => 'Matikan';

  @override
  String get turnOn => 'Nyalakan';

  @override
  String get undo => 'Urungkan';

  @override
  String get update => 'Perbarui';

  @override
  String get updateCredentials => 'Perbarui kredensial';

  @override
  String get useCustomTabs => 'Gunakan browser dalam aplikasi';

  @override
  String get useCustomTabsDescription =>
      'Gunakan browser dalam aplikasi untuk membuka tautan';

  @override
  String get whatsNew => 'Apa yang baru?';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get error => 'Kesalahan';

  @override
  String get routingError =>
      'Ups! Tampaknya ada sesuatu yang tidak beres dan Anda berakhir pada halaman yang, yah, tidak ada. Saya sangat menyesal untuk itu!';

  @override
  String get goToHome => 'Pulanglah';

  @override
  String get pageNotFound => 'Halaman tidak ditemukan';

  @override
  String get updateDoable => 'Perbarui Doable';

  @override
  String get download => 'Unduh';

  @override
  String get install => 'Pasang';

  @override
  String get installed => 'Dipasang';

  @override
  String get updateNotInstalled => 'Pembaruan tidak diinstal.';

  @override
  String get skipVersion => 'Lewati versi ini';

  @override
  String get couldNotDownloadUpdate => 'Tidak dapat mengunduh pembaruan.';

  @override
  String versionWithNumber(String version) {
    return 'Versi $version';
  }

  @override
  String get autoUpdates => 'Pembaruan otomatis';

  @override
  String get autoUpdatesDescription => 'Secara otomatis memeriksa pembaruan';

  @override
  String get introExtensions => 'Ekstensi? Ekstensi!';

  @override
  String get introExtensionsDescription =>
      'Ekstensi memungkinkan Anda untuk memperluas dan memperbesar set fitur Doable. Ekstensi ini memberi Anda kekuatan untuk memilih dengan tepat bagaimana Anda ingin menggunakan Doable. Jika Anda ingin melihat semua ekstensi yang tersedia, cukup klik tombol di bawah ini!';

  @override
  String get introExtensionsButton => 'Perpanjanglah!';

  @override
  String get useBottomSheetMenu => 'Gunakan menu lembar bawah';

  @override
  String get useBottomSheetMenuDescription =>
      'Gunakan lembar bawah alih-alih drop down sebagai menu';

  @override
  String get contributors => 'Kontributor';

  @override
  String get contributorDescription =>
      'Orang-orang yang membantu Doable menjadi seperti sekarang';

  @override
  String get webdav => 'Webdav';

  @override
  String get webdavUrlHint => 'Url server Webdav';

  @override
  String get webdavLogOutMessage =>
      'Saat keluar, kredensial yang tersimpan akan terhapus. Namun, file yang tersimpan akan tetap ada.';

  @override
  String get importExport => 'Impor & ekspor';

  @override
  String get chooseDirectory => 'Pilih direktori';

  @override
  String get forgetDirectory => 'Lupakan direktori';

  @override
  String get newStarredTodo => 'Bintang baru Todo';

  @override
  String get allTodos => 'Semua Tugas';

  @override
  String get newTodoList => 'Daftar baru';

  @override
  String get deleteTodoList => 'Hapus daftar';

  @override
  String get editTodoList => 'Sunting daftar';

  @override
  String get lists => 'Daftar';

  @override
  String get listsDescription =>
      'Buat daftar dan urutkan Todos Anda dengan daftar tersebut. Anda dapat membuat daftar dalam jumlah tak terbatas, dapat diakses melalui laci di layar beranda.';

  @override
  String aboutToDeleteList(String listName) {
    return 'Anda akan menghapus daftar $listName dan semua Tugas di dalamnya. Tindakan ini bersifat permanen dan tidak dapat dibatalkan.';
  }

  @override
  String markBeta(String element) {
    return '$element (Beta)';
  }

  @override
  String get list => 'Daftar';

  @override
  String get share => 'Bagikan';

  @override
  String get font => 'Font';

  @override
  String get fontDescription => 'Tekan lama untuk menampilkan nama font';

  @override
  String get popUpAnimationOverSlideAnimation => 'Transisi halaman lama';

  @override
  String get popUpAnimationOverSlideAnimationDescription =>
      'Gunakan transisi halaman gaya pop up lama';

  @override
  String get restart => 'Restart';

  @override
  String get later => 'Nanti';

  @override
  String get restartRequired => 'Diperlukan restart';

  @override
  String get restartRequiredForSetting =>
      'Diperlukan restart aplikasi agar pengaturan ini dapat diterapkan.';

  @override
  String get image => 'Gambar';

  @override
  String get expandTodos => 'Perluas Tugas';

  @override
  String get showTodoListNames => 'Tampilkan nama daftar';

  @override
  String get includeBranding => 'Sertakan merek';

  @override
  String get doableBrandingText =>
      'Dibagikan dari Doable, aplikasi Todo yang sederhana, modern, dan mudah digunakan.\nAnda bisa mendapatkan Doable di sini: https://codeberg.org/florian-obernberger/flutter-doable';

  @override
  String get chooseTodoShareType =>
      'Pilih bagaimana Anda ingin membagikan Tugas Anda';

  @override
  String get options => 'Pengaturan';

  @override
  String get reduceMotion => 'Kurangi animasi';

  @override
  String get reduceMotionDescription => 'Kurangi gerakan animasi';

  @override
  String get contribute => 'Berkontribusi';

  @override
  String get contributeWantYourNameHere => 'Ingin namamu di sini?';

  @override
  String get contributeWantYourNameHereDescription =>
      'Berkontribusi pada Doable secara langsung atau bantu menerjemahkannya!';

  @override
  String get onlySymbolInDetailViewFab => 'Ikon, bukan teks';

  @override
  String get onlySymbolInDetailViewFabDescription =>
      'Gunakan ikon alih-alih teks dalam tampilan detail Tugas';

  @override
  String get allSelected => 'Semua';

  @override
  String get sharedTextAsTitle => 'Teks bersama sebagai judul';

  @override
  String get sharedTextAsTitleDescription =>
      'Gunakan teks yang dibagikan ke Doable sebagai judul Tugas baru, bukan deskripsinya';

  @override
  String get noTodoLists =>
      'Saat ini Anda tidak memiliki daftar apa pun.\nBuat yang baru untuk memulai!';

  @override
  String forExample(String example) {
    return 'Contoh. $example';
  }

  @override
  String get clearSelection => 'Hapus pilihan';

  @override
  String get syncConnectionTimedOut => 'Waktu koneksi berakhir.';

  @override
  String get syncTooManyTimeOuts =>
      'Koneksi server sedang buruk. Sinkronisasi dinonaktifkan hingga aplikasi dimulai ulang.';

  @override
  String get todoToCalendar => 'Tambahkan Tugas ke kalender';

  @override
  String get logs => 'Logs';

  @override
  String get logsDescription =>
      'Tampilkan semua catatan aktivitas yang dibuat Doables';

  @override
  String get aboutToClearAllLogs =>
      'Anda akan menghapus semua catatn aktivitas sehingga tidak dapat diakses untuk masukan dan pemecahan masalah. Tindakan ini bersifat permanen dan tidak dapat dibatalkan.';

  @override
  String get clearAllLogs => 'Hapus semua catatn aktivitas';

  @override
  String get noLogsYet =>
      'Saat ini tidak ada catatan aktivitas yang dapat Anda lihat.';

  @override
  String get dateFormat => '­Format tanggal';

  @override
  String get timeFormat => 'Format waktu';

  @override
  String get shareAllLogs => 'Bagikan semua catatan aktivitas';

  @override
  String get copyAllLogs => 'Salin semua catatan aktivitas';

  @override
  String get whatWentWrong => 'Ada yang salah?';

  @override
  String get fixCorruptBackupFile =>
      'File cadangan Doable tidak dapat dibaca dan tampaknya rusak. Anda dapat mencoba memperbaikinya dengan menghapus file cadangan saat ini dan membuat yang baru. Ini akan menghapus semua perubahan yang dilakukan oleh instansi Doable lain yang menggunakan file cadangan yang sama.';

  @override
  String get initializingNextcloud => 'Menginisialisasi Nextcloud…';

  @override
  String get changeNextcloudDirectory => 'Ubah direktori';

  @override
  String get dueDate => 'Tenggat waktu';

  @override
  String get dragToReorder => 'Tarik untuk menyusun ulang';

  @override
  String get copySettings => 'Salin pengaturanSalin pengaturan';

  @override
  String get copySystemInfo => 'Salin info sistem';

  @override
  String get languageNameInEnglish => 'Indonesian';

  @override
  String get languageNameInNativeLanguage => 'Indonesia';

  @override
  String get createSummaryForBugReport => 'Buat ringkasan';

  @override
  String get createSummaryForBugReportDetails =>
      'Membuat laporan yang berisi info sistem, pengaturan Doable, dan semua log. Ini dapat berguna untuk laporan bug dan membantu memecahkan masalah.';

  @override
  String get bugReport => 'Laporan bug';

  @override
  String get bugReportSupportingText =>
      'Silakan pilih apa yang ingin Anda sertakan dalam laporan bug. Semakin banyak informasi yang Anda berikan, semakin mudah untuk mengetahui apa yang salah. **Tidak ada informasi pribadi yang akan dibagikan.**';

  @override
  String get shareBugReport => 'Bagikan laporan bug';

  @override
  String get fontSize => 'Ukuran huruf';

  @override
  String get fontSizeDescription => 'Ganti ukuran font sistem';

  @override
  String get decrease => 'Kecilkan';

  @override
  String get increase => 'Besarkan';

  @override
  String get customSecondaryAccentPicker => 'Warna sekunderWarna sekunder';

  @override
  String get customTertiaryAccentPicker => 'Warna tersier';

  @override
  String get advancedColorOptions => 'Pilihan warna tingkat lanjut';

  @override
  String get uploadCustomColorScheme =>
      'Unggah skema warna khususUnggah skema warna khusus';

  @override
  String get downloadCurrentColorScheme => 'Unduh skema warna saat ini';

  @override
  String get markAsStarred => 'Tandai Tugas sebagai bintang';

  @override
  String get setTime => 'Atur waktu';

  @override
  String get thereAreNoLists => 'Belum ada daftar apa pun';

  @override
  String get closeDetailsOnCompelte => 'Tutup detailnya sampai selesai';

  @override
  String get closeDetailsOnCompelteDescription =>
      'Menyimpan Todo dan menutup tampilan detailnya saat menekan tombol selesai.';

  @override
  String get customColorTheme => 'Tema warna khusus';

  @override
  String get discardCustomColorTheme =>
      'Anda akan membuang semua perubahan yang dilakukan pada tema warna.';

  @override
  String get lightMode => 'Mode terang';

  @override
  String get deletedCustomColorTheme => 'Tema warna khusus dihapus.';

  @override
  String get customThemeInfo => '';

  @override
  String get import => 'Import';

  @override
  String get customThemeFuckedFile =>
      'This file does not contain a valid color theme. Please make sure your file follows the same style and structure as the file you exported.';

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
