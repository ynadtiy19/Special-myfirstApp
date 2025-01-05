import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

import 'strings_cs.dart';
import 'strings_da.dart';
import 'strings_de.dart';
import 'strings_en.dart';
import 'strings_eo.dart';
import 'strings_es.dart';
import 'strings_eu.dart';
import 'strings_fa.dart';
import 'strings_fr.dart';
import 'strings_id.dart';
import 'strings_it.dart';
import 'strings_ja.dart';
import 'strings_mr.dart';
import 'strings_nl.dart';
import 'strings_pl.dart';
import 'strings_pt.dart';
import 'strings_ro.dart';
import 'strings_ru.dart';
import 'strings_sv.dart';
import 'strings_tl.dart';
import 'strings_uk.dart';
import 'strings_uz.dart';
import 'strings_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Strings
/// returned by `Strings.of(context)`.
///
/// Applications need to include `Strings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'strings/strings.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Strings.localizationsDelegates,
///   supportedLocales: Strings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Strings.supportedLocales
/// property.
abstract class Strings {
  Strings(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Strings? of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static const LocalizationsDelegate<Strings> delegate = _StringsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  // static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
  //     <LocalizationsDelegate<dynamic>>[
  //   delegate,
  //   GlobalMaterialLocalizations.delegate,
  //   GlobalCupertinoLocalizations.delegate,
  //   GlobalWidgetsLocalizations.delegate,
  // ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('eu'),
    Locale('fa'),
    Locale('fr'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('mr'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('tl'),
    Locale('uk'),
    Locale('uz'),
    Locale('zh')
  ];

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Infos about the app'**
  String get aboutDescription;

  /// No description provided for @aboutOSInfo.
  ///
  /// In en, this message translates to:
  /// **'Source code: [codeberg/flutter-doable](https://www.codeberg.org/florian-obernberger/flutter-doable)\nPrivacy policy: [codeberg/flutter-doable/privacy](https://codeberg.org/florian-obernberger/flutter-doable/src/branch/main/PRIVACY.md)\nF-Droid repository: [codeberg/fdroid-repo](https://codeberg.org/florian-obernberger/fdroid-repo)\nMastodon: [@doable@floss.social](https://floss.social/@doable)'**
  String get aboutOSInfo;

  /// No description provided for @aboutToCancelChanges.
  ///
  /// In en, this message translates to:
  /// **'Discard changes?'**
  String get aboutToCancelChanges;

  /// No description provided for @aboutToCancelChangesDescription.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to discard all changes made to this Todo.'**
  String get aboutToCancelChangesDescription;

  /// No description provided for @aboutToCancelFeedback.
  ///
  /// In en, this message translates to:
  /// **'Discard feedback?'**
  String get aboutToCancelFeedback;

  /// No description provided for @aboutToCancelFeedbackDescription.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to discard your feedback. This cannot be undone.'**
  String get aboutToCancelFeedbackDescription;

  /// No description provided for @aboutToDeleteCompleted.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to delete all completed Todos. This action is permanent and cannot be undone.'**
  String get aboutToDeleteCompleted;

  /// Warning message that the user is about to delete the Todos they have selected
  ///
  /// In en, this message translates to:
  /// **'You\'re about to delete {count, plural, =1{one Todo} other{{count} Todos}}. This action is permanent and cannot be undone.'**
  String aboutToDeleteNSelected(int count);

  /// No description provided for @additionalFeatures.
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get additionalFeatures;

  /// No description provided for @additionalFeaturesDescription.
  ///
  /// In en, this message translates to:
  /// **'Features that make the Doable more powerful'**
  String get additionalFeaturesDescription;

  /// No description provided for @alignTodoCheck.
  ///
  /// In en, this message translates to:
  /// **'Check mark right'**
  String get alignTodoCheck;

  /// No description provided for @alignTodoCheckDescription.
  ///
  /// In en, this message translates to:
  /// **'Show Todo check mark on the right side'**
  String get alignTodoCheckDescription;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get appLanguage;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Doable'**
  String get appTitle;

  /// No description provided for @attention.
  ///
  /// In en, this message translates to:
  /// **'Attention'**
  String get attention;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @syncAndBackup.
  ///
  /// In en, this message translates to:
  /// **'Sync & Backup'**
  String get syncAndBackup;

  /// No description provided for @syncAndBackupDescription.
  ///
  /// In en, this message translates to:
  /// **'Back up and synchronize your Todos'**
  String get syncAndBackupDescription;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @chooseFeedbackExtrasDescription.
  ///
  /// In en, this message translates to:
  /// **'I recommended including all of the following since it helps me with troubleshooting your problem. This includes no personal information.'**
  String get chooseFeedbackExtrasDescription;

  /// No description provided for @chooseFeedbackExtrasTitle.
  ///
  /// In en, this message translates to:
  /// **'Which extra information would you like to include?'**
  String get chooseFeedbackExtrasTitle;

  /// No description provided for @chooseFeedbackWay.
  ///
  /// In en, this message translates to:
  /// **'Where do you want to give feedback?'**
  String get chooseFeedbackWay;

  /// No description provided for @codeberg.
  ///
  /// In en, this message translates to:
  /// **'Codeberg'**
  String get codeberg;

  /// No description provided for @completedTodo.
  ///
  /// In en, this message translates to:
  /// **'Completed Todo.'**
  String get completedTodo;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied text to clipboard.'**
  String get copiedToClipboard;

  /// No description provided for @customAccentPicker.
  ///
  /// In en, this message translates to:
  /// **'Accent color'**
  String get customAccentPicker;

  /// No description provided for @customAccentPickerDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose a custom accent color for the theme of the app'**
  String get customAccentPickerDescription;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get darkMode;

  /// No description provided for @deleteCompletedAfter.
  ///
  /// In en, this message translates to:
  /// **'Autodelete completed'**
  String get deleteCompletedAfter;

  /// No description provided for @deleteCompletedAfterDescription.
  ///
  /// In en, this message translates to:
  /// **'Delete after {duration}'**
  String deleteCompletedAfterDescription(String duration);

  /// Snackbar message that the user deleted the Todos they have selected
  ///
  /// In en, this message translates to:
  /// **'Deleted {count, plural, =1{one Todo} other{{count} Todos}}.'**
  String deletedNTodos(int count);

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @design.
  ///
  /// In en, this message translates to:
  /// **'Design'**
  String get design;

  /// No description provided for @designDescription.
  ///
  /// In en, this message translates to:
  /// **'Change the look and feel of Doable'**
  String get designDescription;

  /// No description provided for @disable.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// No description provided for @discard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// No description provided for @doContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get doContinue;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @dynamicColors.
  ///
  /// In en, this message translates to:
  /// **'Dynamic colors'**
  String get dynamicColors;

  /// No description provided for @dynamicColorsDescription.
  ///
  /// In en, this message translates to:
  /// **'Use system colors (Android 12+)'**
  String get dynamicColorsDescription;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @exportAllTodos.
  ///
  /// In en, this message translates to:
  /// **'Export all Todos'**
  String get exportAllTodos;

  /// No description provided for @exportEvery.
  ///
  /// In en, this message translates to:
  /// **'Export every {duration}'**
  String exportEvery(String duration);

  /// No description provided for @feedbackDescriptionHelp.
  ///
  /// In en, this message translates to:
  /// **'A more detailed explanation of what went wrong / how it happened.'**
  String get feedbackDescriptionHelp;

  /// No description provided for @feedbackHeader.
  ///
  /// In en, this message translates to:
  /// **'Please fill out the form below to help me understand what went wrong.'**
  String get feedbackHeader;

  /// No description provided for @feedbackTitleHelp.
  ///
  /// In en, this message translates to:
  /// **'A short summary of the event.'**
  String get feedbackTitleHelp;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @generalDescription.
  ///
  /// In en, this message translates to:
  /// **'Change the general behavior of the app'**
  String get generalDescription;

  /// No description provided for @giveFeedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get giveFeedback;

  /// No description provided for @highlightOverdue.
  ///
  /// In en, this message translates to:
  /// **'Highlight overdue'**
  String get highlightOverdue;

  /// No description provided for @highlightOverdueDescription.
  ///
  /// In en, this message translates to:
  /// **'Highlight Todos that are overdue the same way as starred Todos'**
  String get highlightOverdueDescription;

  /// No description provided for @highlightToday.
  ///
  /// In en, this message translates to:
  /// **'Highlight today'**
  String get highlightToday;

  /// No description provided for @highlightTodayDescription.
  ///
  /// In en, this message translates to:
  /// **'Highlight Todos that are due today the same way as starred Todos'**
  String get highlightTodayDescription;

  /// No description provided for @importLocalBackupError.
  ///
  /// In en, this message translates to:
  /// **'File could not be imported. Are you sure it was generated by Doable?'**
  String get importLocalBackupError;

  /// No description provided for @importTodosFromFile.
  ///
  /// In en, this message translates to:
  /// **'Import file'**
  String get importTodosFromFile;

  /// Snackbar message that the user imported n Todos
  ///
  /// In en, this message translates to:
  /// **'Imported {count, plural, =0{zero Todos} =1{one Todo} other{{count} Todos}}.'**
  String importedNTodos(int count);

  /// No description provided for @installedFrom.
  ///
  /// In en, this message translates to:
  /// **'Installed from'**
  String get installedFrom;

  /// No description provided for @introDoubleTap.
  ///
  /// In en, this message translates to:
  /// **'Double tap'**
  String get introDoubleTap;

  /// No description provided for @introDoubleTapDescription.
  ///
  /// In en, this message translates to:
  /// **'You can double tap on Todos that feature a description to expand them. When expanded, the full description is shown and you can then interact with links, etc.\n\nYou can try it out with an example right here!'**
  String get introDoubleTapDescription;

  /// No description provided for @introDoubleTapTodoDescription.
  ///
  /// In en, this message translates to:
  /// **'The cake is a lie!\n\nFind out more here:\nhttps://theportalwiki.com/wiki/Cake'**
  String get introDoubleTapTodoDescription;

  /// No description provided for @introDoubleTapTodoTitle.
  ///
  /// In en, this message translates to:
  /// **'Buy new cake'**
  String get introDoubleTapTodoTitle;

  /// No description provided for @introLinks.
  ///
  /// In en, this message translates to:
  /// **'Links, phone numbers, emails'**
  String get introLinks;

  /// No description provided for @introLinksDescription.
  ///
  /// In en, this message translates to:
  /// **'When you add links, phone numbers, or email adressess to a description, they will automatically be highlighted and you can interact with them.'**
  String get introLinksDescription;

  /// No description provided for @introNextcloud.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud'**
  String get introNextcloud;

  /// No description provided for @introNextcloudDescription.
  ///
  /// In en, this message translates to:
  /// **'You can also synchronize your Todos with a Nextcloud instance. If you\'d like you can log in right here!'**
  String get introNextcloudDescription;

  /// No description provided for @introStar.
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get introStar;

  /// No description provided for @introStarDescription.
  ///
  /// In en, this message translates to:
  /// **'Add a star to a Todo to make it\nstand out amongst the crowd.\n\nGive the star below a tap to try it out!'**
  String get introStarDescription;

  /// No description provided for @introTodos.
  ///
  /// In en, this message translates to:
  /// **'Todos'**
  String get introTodos;

  /// No description provided for @introTodosDescription.
  ///
  /// In en, this message translates to:
  /// **'When creating a new Todo you can add various things. For example you could add a date when the Todo becomes relevant, or you can star the Todo to make it stick out amongst the rest! You can also add a description with links or other information related to the Todo.'**
  String get introTodosDescription;

  /// No description provided for @introWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Doable!'**
  String get introWelcome;

  /// No description provided for @introWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'The simple Todo app with modern design\nand Nextcloud integration.'**
  String get introWelcomeDescription;

  /// No description provided for @keepEditing.
  ///
  /// In en, this message translates to:
  /// **'Keep editing'**
  String get keepEditing;

  /// No description provided for @left.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get left;

  /// No description provided for @licenses.
  ///
  /// In en, this message translates to:
  /// **'Licenses'**
  String get licenses;

  /// No description provided for @licensesDescription.
  ///
  /// In en, this message translates to:
  /// **'Open source and Flutter licenses'**
  String get licensesDescription;

  /// No description provided for @localStorage.
  ///
  /// In en, this message translates to:
  /// **'Local storage'**
  String get localStorage;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logIn;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @logOutputs.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get logOutputs;

  /// No description provided for @markCompleted.
  ///
  /// In en, this message translates to:
  /// **'Mark completed'**
  String get markCompleted;

  /// No description provided for @markRequired.
  ///
  /// In en, this message translates to:
  /// **'{text}*'**
  String markRequired(String text);

  /// No description provided for @markUncompleted.
  ///
  /// In en, this message translates to:
  /// **'Mark uncompleted'**
  String get markUncompleted;

  /// No description provided for @markdown.
  ///
  /// In en, this message translates to:
  /// **'Markdown'**
  String get markdown;

  /// No description provided for @markdownDescription.
  ///
  /// In en, this message translates to:
  /// **'Markdown support'**
  String get markdownDescription;

  /// No description provided for @mayNotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'May not be empty'**
  String get mayNotBeEmpty;

  /// No description provided for @mdCheatSheet.
  ///
  /// In en, this message translates to:
  /// **'https://www.markdownguide.org/cheat-sheet/'**
  String get mdCheatSheet;

  /// No description provided for @mdHelpMessage.
  ///
  /// In en, this message translates to:
  /// **'Adds support for basic markdown syntax inside the description and title of your Todos.\n\nFor a full list of syntax options you can check out\nhttps://www.markdownguide.org/cheat-sheet/.\n\nHowever, this app **does not** support the entire markdown specifications. Supported elements are:\n\n- **Text styles:**\n  - **Bold**\n  - *Italic*\n  - ~~Strikethrough~~\n  - __Underline__ (`__underline__`)\n  - ==Highlight==\n  - [Links](https://www.markdownguide.org/cheat-sheet/)\n  - `Inline code`\n- **Lists:**\n  1. Ordered lists\n  2. Unordered lists\n  3. Task lists\n- **Blocks:**\n  - Fenced code blocks\n  - Block quotes'**
  String get mdHelpMessage;

  /// No description provided for @moveImportantToTop.
  ///
  /// In en, this message translates to:
  /// **'Move important to top'**
  String get moveImportantToTop;

  /// No description provided for @moveImportantToTopDescription.
  ///
  /// In en, this message translates to:
  /// **'If enabled, Todos that have been starred will always be displayed at the top of the list'**
  String get moveImportantToTopDescription;

  /// No description provided for @moveUpWhenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Reflect changes in the list'**
  String get moveUpWhenUpdated;

  /// No description provided for @moveUpWhenUpdatedDescription.
  ///
  /// In en, this message translates to:
  /// **'Todos move to the top of the list after being changed'**
  String get moveUpWhenUpdatedDescription;

  /// No description provided for @ncBaseUrl.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get ncBaseUrl;

  /// No description provided for @ncBaseUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud web interface url'**
  String get ncBaseUrlHint;

  /// No description provided for @ncDirectory.
  ///
  /// In en, this message translates to:
  /// **'Directory'**
  String get ncDirectory;

  /// No description provided for @ncFileIn.
  ///
  /// In en, this message translates to:
  /// **'File stored in'**
  String get ncFileIn;

  /// No description provided for @ncLogOut.
  ///
  /// In en, this message translates to:
  /// **'Logging out of Nextcloud'**
  String get ncLogOut;

  /// No description provided for @ncLogOutMessage.
  ///
  /// In en, this message translates to:
  /// **'When logging out your stored credentials will be erased. However, the saved file on your Nextcloud instance will persist.'**
  String get ncLogOutMessage;

  /// No description provided for @ncLoggedInAs.
  ///
  /// In en, this message translates to:
  /// **'Logged in as'**
  String get ncLoggedInAs;

  /// No description provided for @ncPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get ncPassword;

  /// No description provided for @ncUser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get ncUser;

  /// No description provided for @never.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// No description provided for @newSubTodo.
  ///
  /// In en, this message translates to:
  /// **'Sub Todo'**
  String get newSubTodo;

  /// No description provided for @newTodo.
  ///
  /// In en, this message translates to:
  /// **'New Todo'**
  String get newTodo;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @nextcloud.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud'**
  String get nextcloud;

  /// No description provided for @noTodosLeft.
  ///
  /// In en, this message translates to:
  /// **'There are no Todos left, great job!'**
  String get noTodosLeft;

  /// No description provided for @notAValidUrl.
  ///
  /// In en, this message translates to:
  /// **'Not a valid url'**
  String get notAValidUrl;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get on;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @pickAColor.
  ///
  /// In en, this message translates to:
  /// **'Pick a color'**
  String get pickAColor;

  /// No description provided for @pickerPrimary.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get pickerPrimary;

  /// No description provided for @pickerWheel.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get pickerWheel;

  /// No description provided for @popupMenuDeleteCompleted.
  ///
  /// In en, this message translates to:
  /// **'Delete completed'**
  String get popupMenuDeleteCompleted;

  /// No description provided for @popupMenuHideCompleted.
  ///
  /// In en, this message translates to:
  /// **'Hide completed'**
  String get popupMenuHideCompleted;

  /// No description provided for @popupMenuShowCompleted.
  ///
  /// In en, this message translates to:
  /// **'Show completed'**
  String get popupMenuShowCompleted;

  /// No description provided for @quoteDoubleLeft.
  ///
  /// In en, this message translates to:
  /// **'“'**
  String get quoteDoubleLeft;

  /// No description provided for @quoteDoubleRight.
  ///
  /// In en, this message translates to:
  /// **'”'**
  String get quoteDoubleRight;

  /// No description provided for @quoteSingleLeft.
  ///
  /// In en, this message translates to:
  /// **'‘'**
  String get quoteSingleLeft;

  /// No description provided for @quoteSingleRight.
  ///
  /// In en, this message translates to:
  /// **'’'**
  String get quoteSingleRight;

  /// No description provided for @relevantDate.
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get relevantDate;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'*required'**
  String get required;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @right.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get right;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @showCompletedTodos.
  ///
  /// In en, this message translates to:
  /// **'Show completed'**
  String get showCompletedTodos;

  /// No description provided for @showCompletedTodosDescription.
  ///
  /// In en, this message translates to:
  /// **'Show completed Todos in the list'**
  String get showCompletedTodosDescription;

  /// No description provided for @showIntroScreen.
  ///
  /// In en, this message translates to:
  /// **'Show introduction screen again'**
  String get showIntroScreen;

  /// No description provided for @sortNewestFirst.
  ///
  /// In en, this message translates to:
  /// **'Newest first'**
  String get sortNewestFirst;

  /// No description provided for @sortNewestFirstDescription.
  ///
  /// In en, this message translates to:
  /// **'Newer dates are shown at the top'**
  String get sortNewestFirstDescription;

  /// No description provided for @sortNoRelevantDate.
  ///
  /// In en, this message translates to:
  /// **'Without date'**
  String get sortNoRelevantDate;

  /// No description provided for @sortOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get sortOverdue;

  /// No description provided for @sortRelevantDate.
  ///
  /// In en, this message translates to:
  /// **'With date'**
  String get sortRelevantDate;

  /// No description provided for @sortStarred.
  ///
  /// In en, this message translates to:
  /// **'Starred'**
  String get sortStarred;

  /// No description provided for @sortToday.
  ///
  /// In en, this message translates to:
  /// **'Due today'**
  String get sortToday;

  /// No description provided for @sorting.
  ///
  /// In en, this message translates to:
  /// **'Sort order'**
  String get sorting;

  /// No description provided for @sortingDescription.
  ///
  /// In en, this message translates to:
  /// **'Order in which Todos will be sorted'**
  String get sortingDescription;

  /// No description provided for @submitFeedback.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitFeedback;

  /// No description provided for @syncCorruptedFile.
  ///
  /// In en, this message translates to:
  /// **'The backup file seems to be corrupted.'**
  String get syncCorruptedFile;

  /// No description provided for @syncDirectoryDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'The specified directory does not exist.'**
  String get syncDirectoryDoesNotExist;

  /// No description provided for @syncNcMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud is in Maintenance Mode.'**
  String get syncNcMaintenance;

  /// No description provided for @syncNoInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get syncNoInternetConnection;

  /// No description provided for @syncNotNcServer.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find a Nextcloud server at this adress.'**
  String get syncNotNcServer;

  /// No description provided for @syncServiceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud unavailable.'**
  String get syncServiceUnavailable;

  /// No description provided for @syncSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Synchronized successfully.'**
  String get syncSuccessful;

  /// No description provided for @syncUnknownError.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred.'**
  String get syncUnknownError;

  /// No description provided for @syncWrongUrl.
  ///
  /// In en, this message translates to:
  /// **'The url you\'ve provided seems to be incorrect.'**
  String get syncWrongUrl;

  /// No description provided for @syncWrongUserOrPassword.
  ///
  /// In en, this message translates to:
  /// **'The given username or password are incorrect.'**
  String get syncWrongUserOrPassword;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @systemInfo.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemInfo;

  /// No description provided for @thankYouForFeedback.
  ///
  /// In en, this message translates to:
  /// **'Thank you for sending feedback!'**
  String get thankYouForFeedback;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @titleMayNotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Title may not be empty'**
  String get titleMayNotBeEmpty;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @todoSearch.
  ///
  /// In en, this message translates to:
  /// **'Todo search'**
  String get todoSearch;

  /// No description provided for @todoSearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Add a search button to the Todo list allowing you to search through your Todos.'**
  String get todoSearchDescription;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @treatTodayAsIsImportant.
  ///
  /// In en, this message translates to:
  /// **'Treat today as important'**
  String get treatTodayAsIsImportant;

  /// No description provided for @treatTodayAsIsImportantDescription.
  ///
  /// In en, this message translates to:
  /// **'If enabled, Todos that are due today will be treated as if they were starred'**
  String get treatTodayAsIsImportantDescription;

  /// No description provided for @trimTodoTexts.
  ///
  /// In en, this message translates to:
  /// **'Trim Todo texts'**
  String get trimTodoTexts;

  /// No description provided for @trimTodoTextsDescription.
  ///
  /// In en, this message translates to:
  /// **'If enabled, trims any surrounding whitespace from the Todos title and description'**
  String get trimTodoTextsDescription;

  /// No description provided for @trueBlackMode.
  ///
  /// In en, this message translates to:
  /// **'True black mode'**
  String get trueBlackMode;

  /// No description provided for @trueBlackModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Makes the background black, especially useful for oled devices'**
  String get trueBlackModeDescription;

  /// No description provided for @turnOff.
  ///
  /// In en, this message translates to:
  /// **'Turn off'**
  String get turnOff;

  /// No description provided for @turnOn.
  ///
  /// In en, this message translates to:
  /// **'Turn on'**
  String get turnOn;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updateCredentials.
  ///
  /// In en, this message translates to:
  /// **'Update credentials'**
  String get updateCredentials;

  /// No description provided for @useCustomTabs.
  ///
  /// In en, this message translates to:
  /// **'Use in-app browser'**
  String get useCustomTabs;

  /// No description provided for @useCustomTabsDescription.
  ///
  /// In en, this message translates to:
  /// **'Use an in-app browser for opening links'**
  String get useCustomTabsDescription;

  /// No description provided for @whatsNew.
  ///
  /// In en, this message translates to:
  /// **'What\'s new?'**
  String get whatsNew;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @routingError.
  ///
  /// In en, this message translates to:
  /// **'Oops! It appears that something went wrong and you ended up on a page that, well, does not exist. I am terribly sorry for that!'**
  String get routingError;

  /// No description provided for @goToHome.
  ///
  /// In en, this message translates to:
  /// **'Go home'**
  String get goToHome;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFound;

  /// No description provided for @updateDoable.
  ///
  /// In en, this message translates to:
  /// **'Update Doable'**
  String get updateDoable;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @install.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get install;

  /// No description provided for @installed.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installed;

  /// No description provided for @updateNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'The update was not installed.'**
  String get updateNotInstalled;

  /// No description provided for @skipVersion.
  ///
  /// In en, this message translates to:
  /// **'Skip this version'**
  String get skipVersion;

  /// No description provided for @couldNotDownloadUpdate.
  ///
  /// In en, this message translates to:
  /// **'Could not download update.'**
  String get couldNotDownloadUpdate;

  /// No description provided for @versionWithNumber.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String versionWithNumber(String version);

  /// No description provided for @autoUpdates.
  ///
  /// In en, this message translates to:
  /// **'Auto updates'**
  String get autoUpdates;

  /// No description provided for @autoUpdatesDescription.
  ///
  /// In en, this message translates to:
  /// **'Automatically check for updates'**
  String get autoUpdatesDescription;

  /// No description provided for @introExtensions.
  ///
  /// In en, this message translates to:
  /// **'Extensions? Extensions!'**
  String get introExtensions;

  /// No description provided for @introExtensionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Extensions allow you to extend and enlarge the feature set of Doable. They give you the power to choose exactly how you want to use Doable. If you want to check out all available extensions, just click the button below!'**
  String get introExtensionsDescription;

  /// No description provided for @introExtensionsButton.
  ///
  /// In en, this message translates to:
  /// **'Extend away!'**
  String get introExtensionsButton;

  /// No description provided for @useBottomSheetMenu.
  ///
  /// In en, this message translates to:
  /// **'Use bottom sheet menu'**
  String get useBottomSheetMenu;

  /// No description provided for @useBottomSheetMenuDescription.
  ///
  /// In en, this message translates to:
  /// **'Use a bottom sheet instead of a drop down as the menu'**
  String get useBottomSheetMenuDescription;

  /// No description provided for @contributors.
  ///
  /// In en, this message translates to:
  /// **'Contributors'**
  String get contributors;

  /// No description provided for @contributorDescription.
  ///
  /// In en, this message translates to:
  /// **'People that helped Doable become what it is'**
  String get contributorDescription;

  /// No description provided for @webdav.
  ///
  /// In en, this message translates to:
  /// **'Webdav'**
  String get webdav;

  /// No description provided for @webdavUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Webdav server url'**
  String get webdavUrlHint;

  /// No description provided for @webdavLogOutMessage.
  ///
  /// In en, this message translates to:
  /// **'When logging out your stored credentials will be erased. However, the saved file will persist.'**
  String get webdavLogOutMessage;

  /// No description provided for @importExport.
  ///
  /// In en, this message translates to:
  /// **'Import & export'**
  String get importExport;

  /// No description provided for @chooseDirectory.
  ///
  /// In en, this message translates to:
  /// **'Choose directory'**
  String get chooseDirectory;

  /// No description provided for @forgetDirectory.
  ///
  /// In en, this message translates to:
  /// **'Forget directory'**
  String get forgetDirectory;

  /// No description provided for @newStarredTodo.
  ///
  /// In en, this message translates to:
  /// **'New starred Todo'**
  String get newStarredTodo;

  /// No description provided for @allTodos.
  ///
  /// In en, this message translates to:
  /// **'All Todos'**
  String get allTodos;

  /// No description provided for @newTodoList.
  ///
  /// In en, this message translates to:
  /// **'New list'**
  String get newTodoList;

  /// No description provided for @deleteTodoList.
  ///
  /// In en, this message translates to:
  /// **'Delete list'**
  String get deleteTodoList;

  /// No description provided for @editTodoList.
  ///
  /// In en, this message translates to:
  /// **'Edit list'**
  String get editTodoList;

  /// No description provided for @lists.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get lists;

  /// No description provided for @listsDescription.
  ///
  /// In en, this message translates to:
  /// **'Create lists and sort your Todos with them. You can create an unlimited amount of lists, accessible through a drawer on the home screen.'**
  String get listsDescription;

  /// No description provided for @aboutToDeleteList.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to delete the list {listName} and all Todos inside of it. This action is permanent and cannot be undone.'**
  String aboutToDeleteList(String listName);

  /// No description provided for @markBeta.
  ///
  /// In en, this message translates to:
  /// **'{element} (Beta)'**
  String markBeta(String element);

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get list;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @font.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get font;

  /// No description provided for @fontDescription.
  ///
  /// In en, this message translates to:
  /// **'Long press to show font names'**
  String get fontDescription;

  /// No description provided for @popUpAnimationOverSlideAnimation.
  ///
  /// In en, this message translates to:
  /// **'Old page transition'**
  String get popUpAnimationOverSlideAnimation;

  /// No description provided for @popUpAnimationOverSlideAnimationDescription.
  ///
  /// In en, this message translates to:
  /// **'Use the old pop up style page transition'**
  String get popUpAnimationOverSlideAnimationDescription;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @restartRequired.
  ///
  /// In en, this message translates to:
  /// **'Restart required'**
  String get restartRequired;

  /// No description provided for @restartRequiredForSetting.
  ///
  /// In en, this message translates to:
  /// **'An app restart is required for this setting to take affect.'**
  String get restartRequiredForSetting;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// No description provided for @expandTodos.
  ///
  /// In en, this message translates to:
  /// **'Expand Todos'**
  String get expandTodos;

  /// No description provided for @showTodoListNames.
  ///
  /// In en, this message translates to:
  /// **'Show list names'**
  String get showTodoListNames;

  /// No description provided for @includeBranding.
  ///
  /// In en, this message translates to:
  /// **'Include branding'**
  String get includeBranding;

  /// No description provided for @doableBrandingText.
  ///
  /// In en, this message translates to:
  /// **'Shared from Doable, the simple, modern and easy to use Todo app.\nYou can get Doable here: https://codeberg.org/florian-obernberger/flutter-doable'**
  String get doableBrandingText;

  /// No description provided for @chooseTodoShareType.
  ///
  /// In en, this message translates to:
  /// **'Select how you want to share your Todos'**
  String get chooseTodoShareType;

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// No description provided for @reduceMotion.
  ///
  /// In en, this message translates to:
  /// **'Reduce motion'**
  String get reduceMotion;

  /// No description provided for @reduceMotionDescription.
  ///
  /// In en, this message translates to:
  /// **'Reduce motion of animations'**
  String get reduceMotionDescription;

  /// No description provided for @contribute.
  ///
  /// In en, this message translates to:
  /// **'Contribute'**
  String get contribute;

  /// No description provided for @contributeWantYourNameHere.
  ///
  /// In en, this message translates to:
  /// **'Want your name here?'**
  String get contributeWantYourNameHere;

  /// No description provided for @contributeWantYourNameHereDescription.
  ///
  /// In en, this message translates to:
  /// **'Contribute to Doable directly or help translating it!'**
  String get contributeWantYourNameHereDescription;

  /// No description provided for @onlySymbolInDetailViewFab.
  ///
  /// In en, this message translates to:
  /// **'Icon instead of text'**
  String get onlySymbolInDetailViewFab;

  /// No description provided for @onlySymbolInDetailViewFabDescription.
  ///
  /// In en, this message translates to:
  /// **'Use an icon instead of text in the Todo detail view'**
  String get onlySymbolInDetailViewFabDescription;

  /// No description provided for @allSelected.
  ///
  /// In en, this message translates to:
  /// **'All selected'**
  String get allSelected;

  /// No description provided for @sharedTextAsTitle.
  ///
  /// In en, this message translates to:
  /// **'Shared text as title'**
  String get sharedTextAsTitle;

  /// No description provided for @sharedTextAsTitleDescription.
  ///
  /// In en, this message translates to:
  /// **'Use text shared to Doable as the title of the new Todo instead of its description'**
  String get sharedTextAsTitleDescription;

  /// No description provided for @noTodoLists.
  ///
  /// In en, this message translates to:
  /// **'You currently don\'t have any lists.\nCreate a new one to get started!'**
  String get noTodoLists;

  /// Creates a strings that showcases an example input.
  ///
  /// In en, this message translates to:
  /// **'ex. {example}'**
  String forExample(String example);

  /// No description provided for @clearSelection.
  ///
  /// In en, this message translates to:
  /// **'Clear selection'**
  String get clearSelection;

  /// No description provided for @syncConnectionTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out.'**
  String get syncConnectionTimedOut;

  /// No description provided for @syncTooManyTimeOuts.
  ///
  /// In en, this message translates to:
  /// **'The server timed out too many times. Sync is disabled until app restart.'**
  String get syncTooManyTimeOuts;

  /// No description provided for @todoToCalendar.
  ///
  /// In en, this message translates to:
  /// **'Add Todo to calendar'**
  String get todoToCalendar;

  /// No description provided for @logs.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get logs;

  /// No description provided for @logsDescription.
  ///
  /// In en, this message translates to:
  /// **'Show all the logs Doable prints'**
  String get logsDescription;

  /// No description provided for @aboutToClearAllLogs.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to delete all logs making them inaccessible for feedback and trouble shooting. This action is permanent and cannot be undone.'**
  String get aboutToClearAllLogs;

  /// No description provided for @clearAllLogs.
  ///
  /// In en, this message translates to:
  /// **'Clear all logs'**
  String get clearAllLogs;

  /// No description provided for @noLogsYet.
  ///
  /// In en, this message translates to:
  /// **'There are currently no logs that you could look at.'**
  String get noLogsYet;

  /// No description provided for @dateFormat.
  ///
  /// In en, this message translates to:
  /// **'Date format'**
  String get dateFormat;

  /// No description provided for @timeFormat.
  ///
  /// In en, this message translates to:
  /// **'Time format'**
  String get timeFormat;

  /// No description provided for @shareAllLogs.
  ///
  /// In en, this message translates to:
  /// **'Share all logs'**
  String get shareAllLogs;

  /// No description provided for @copyAllLogs.
  ///
  /// In en, this message translates to:
  /// **'Copy all logs'**
  String get copyAllLogs;

  /// No description provided for @whatWentWrong.
  ///
  /// In en, this message translates to:
  /// **'What went wrong?'**
  String get whatWentWrong;

  /// No description provided for @fixCorruptBackupFile.
  ///
  /// In en, this message translates to:
  /// **'The backup file of Doable could not be read and appears to be corrupt. Doable can try to fix this by deleting the current backup file and creating a new one. This will delete all changes made in other Doable instances using the same backup file.'**
  String get fixCorruptBackupFile;

  /// No description provided for @initializingNextcloud.
  ///
  /// In en, this message translates to:
  /// **'Initializing Nextcloud…'**
  String get initializingNextcloud;

  /// No description provided for @changeNextcloudDirectory.
  ///
  /// In en, this message translates to:
  /// **'Change directory'**
  String get changeNextcloudDirectory;

  /// No description provided for @dueDate.
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get dueDate;

  /// No description provided for @dragToReorder.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder'**
  String get dragToReorder;

  /// No description provided for @copySettings.
  ///
  /// In en, this message translates to:
  /// **'Copy settings'**
  String get copySettings;

  /// No description provided for @copySystemInfo.
  ///
  /// In en, this message translates to:
  /// **'Copy system info'**
  String get copySystemInfo;

  /// No description provided for @languageNameInEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageNameInEnglish;

  /// No description provided for @languageNameInNativeLanguage.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageNameInNativeLanguage;

  /// No description provided for @createSummaryForBugReport.
  ///
  /// In en, this message translates to:
  /// **'Create summary'**
  String get createSummaryForBugReport;

  /// No description provided for @createSummaryForBugReportDetails.
  ///
  /// In en, this message translates to:
  /// **'Creates a report containing system info, Doable\'s settings, and all logs. This can be useful for bug reports and helps troubleshoot a problem.'**
  String get createSummaryForBugReportDetails;

  /// No description provided for @bugReport.
  ///
  /// In en, this message translates to:
  /// **'Bug report'**
  String get bugReport;

  /// No description provided for @bugReportSupportingText.
  ///
  /// In en, this message translates to:
  /// **'Please choose what you would like to include in the bug report. The more information you provide, the easier it is to find out exactly what went wrong. **No personal information will be shared.**'**
  String get bugReportSupportingText;

  /// No description provided for @shareBugReport.
  ///
  /// In en, this message translates to:
  /// **'Share bug report'**
  String get shareBugReport;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font size'**
  String get fontSize;

  /// No description provided for @fontSizeDescription.
  ///
  /// In en, this message translates to:
  /// **'Override system font size'**
  String get fontSizeDescription;

  /// No description provided for @decrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease'**
  String get decrease;

  /// No description provided for @increase.
  ///
  /// In en, this message translates to:
  /// **'Increase'**
  String get increase;

  /// No description provided for @customSecondaryAccentPicker.
  ///
  /// In en, this message translates to:
  /// **'Secondary color'**
  String get customSecondaryAccentPicker;

  /// No description provided for @customTertiaryAccentPicker.
  ///
  /// In en, this message translates to:
  /// **'Tertiary color'**
  String get customTertiaryAccentPicker;

  /// No description provided for @advancedColorOptions.
  ///
  /// In en, this message translates to:
  /// **'Advanced color options'**
  String get advancedColorOptions;

  /// No description provided for @uploadCustomColorScheme.
  ///
  /// In en, this message translates to:
  /// **'Upload custom color scheme'**
  String get uploadCustomColorScheme;

  /// No description provided for @downloadCurrentColorScheme.
  ///
  /// In en, this message translates to:
  /// **'Download current color scheme'**
  String get downloadCurrentColorScheme;

  /// No description provided for @markAsStarred.
  ///
  /// In en, this message translates to:
  /// **'Mark Todo as starred'**
  String get markAsStarred;

  /// No description provided for @setTime.
  ///
  /// In en, this message translates to:
  /// **'Set time'**
  String get setTime;

  /// No description provided for @thereAreNoLists.
  ///
  /// In en, this message translates to:
  /// **'There aren\'t any lists yet'**
  String get thereAreNoLists;

  /// No description provided for @closeDetailsOnCompelte.
  ///
  /// In en, this message translates to:
  /// **'Close details on complete'**
  String get closeDetailsOnCompelte;

  /// No description provided for @closeDetailsOnCompelteDescription.
  ///
  /// In en, this message translates to:
  /// **'Saves the Todo and closes its detail view when pressing the complete button.'**
  String get closeDetailsOnCompelteDescription;

  /// No description provided for @customColorTheme.
  ///
  /// In en, this message translates to:
  /// **'Custom color theme'**
  String get customColorTheme;

  /// No description provided for @discardCustomColorTheme.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to discard all changes made to the color theme.'**
  String get discardCustomColorTheme;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get lightMode;

  /// No description provided for @deletedCustomColorTheme.
  ///
  /// In en, this message translates to:
  /// **'Deleted custom color theme.'**
  String get deletedCustomColorTheme;

  /// No description provided for @customThemeInfo.
  ///
  /// In en, this message translates to:
  /// **'Here you can change each and every color token to your heart’s content. You can also import / export the colors into a `json` file and edit them there!\n\nIf you want to understand, what each token does, please visit the following website: https://m3.material.io/foundations/design-tokens'**
  String get customThemeInfo;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @customThemeFuckedFile.
  ///
  /// In en, this message translates to:
  /// **'This file does not contain a valid color theme. Please make sure your file follows the same style and structure as the file you exported.'**
  String get customThemeFuckedFile;

  /// No description provided for @markdownBold.
  ///
  /// In en, this message translates to:
  /// **'Bold'**
  String get markdownBold;

  /// No description provided for @markdownItalic.
  ///
  /// In en, this message translates to:
  /// **'Italic'**
  String get markdownItalic;

  /// No description provided for @markdownMonospace.
  ///
  /// In en, this message translates to:
  /// **'Monospace'**
  String get markdownMonospace;

  /// No description provided for @markdownHighlight.
  ///
  /// In en, this message translates to:
  /// **'Highlight'**
  String get markdownHighlight;

  /// No description provided for @fediChooseInstance.
  ///
  /// In en, this message translates to:
  /// **'Choose your instance'**
  String get fediChooseInstance;

  /// No description provided for @fediInstanceUrl.
  ///
  /// In en, this message translates to:
  /// **'Instance url'**
  String get fediInstanceUrl;

  /// No description provided for @fediRememberInstance.
  ///
  /// In en, this message translates to:
  /// **'Remember my instance'**
  String get fediRememberInstance;

  /// No description provided for @fediDoablePost.
  ///
  /// In en, this message translates to:
  /// **'Just managed to finish all my Todos thanks to @Doable@floss.social!\n\nSounds interesting? You can find out more about #Doable by visiting https://repo.doable.at!'**
  String get fediDoablePost;

  /// No description provided for @doable.
  ///
  /// In en, this message translates to:
  /// **'Doable – The modern and simple Todo app'**
  String get doable;

  /// No description provided for @rrRepeatsEvery.
  ///
  /// In en, this message translates to:
  /// **'Repeats every'**
  String get rrRepeatsEvery;

  /// No description provided for @rrRepeatsOn.
  ///
  /// In en, this message translates to:
  /// **'Repeats on'**
  String get rrRepeatsOn;

  /// No description provided for @rrEnds.
  ///
  /// In en, this message translates to:
  /// **'Ends'**
  String get rrEnds;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// No description provided for @weeks.
  ///
  /// In en, this message translates to:
  /// **'Weeks'**
  String get weeks;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get days;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get months;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'Years'**
  String get years;

  /// No description provided for @onFollowedByDate.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get onFollowedByDate;

  /// No description provided for @rrAfterOccurrences.
  ///
  /// In en, this message translates to:
  /// **'After'**
  String get rrAfterOccurrences;

  /// No description provided for @occurrence.
  ///
  /// In en, this message translates to:
  /// **'Occurrence'**
  String get occurrence;

  /// No description provided for @occurrences.
  ///
  /// In en, this message translates to:
  /// **'Occurrences'**
  String get occurrences;

  /// No description provided for @rrCustomRecurrence.
  ///
  /// In en, this message translates to:
  /// **'Custom recurrence'**
  String get rrCustomRecurrence;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// No description provided for @doesNotRepeat.
  ///
  /// In en, this message translates to:
  /// **'Does not repeat'**
  String get doesNotRepeat;

  /// No description provided for @rrRecurrence.
  ///
  /// In en, this message translates to:
  /// **'Recurrence'**
  String get rrRecurrence;

  /// No description provided for @recurringTodos.
  ///
  /// In en, this message translates to:
  /// **'Recurring Todos'**
  String get recurringTodos;

  /// No description provided for @recurringTodosDescription.
  ///
  /// In en, this message translates to:
  /// **'Add recurrence to your Todos and let Doable automatically reschedule them for you once you complete them. The Todos will be rescheduled based on the relevant date and the schedule you set. If you didn’t add a due date to your Todo, its creation date will be used instead.\n\n**One thing to keep in mind: While you can now set tasks to repeat in Doable, please note that currently this feature is limited to English.**'**
  String get recurringTodosDescription;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @rrRepeats.
  ///
  /// In en, this message translates to:
  /// **'Repeats'**
  String get rrRepeats;

  /// No description provided for @beta.
  ///
  /// In en, this message translates to:
  /// **'Beta'**
  String get beta;

  /// No description provided for @extensionBetaWarningDescription.
  ///
  /// In en, this message translates to:
  /// **'This extension is still in beta and you might come across a few hiccups while using it. Please be aware of the risks and let me know if you come across any issues!'**
  String get extensionBetaWarningDescription;

  /// No description provided for @extensionBetaWarning.
  ///
  /// In en, this message translates to:
  /// **'Enable beta extension?'**
  String get extensionBetaWarning;

  /// No description provided for @showFediButton.
  ///
  /// In en, this message translates to:
  /// **'Show post button'**
  String get showFediButton;

  /// No description provided for @showFediButtonDescription.
  ///
  /// In en, this message translates to:
  /// **'Show a button that lets you post about your empty list to the Fediverse'**
  String get showFediButtonDescription;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable notifications'**
  String get enableNotifications;

  /// No description provided for @notifyAll.
  ///
  /// In en, this message translates to:
  /// **'All Todos'**
  String get notifyAll;

  /// No description provided for @notifyAllDescription.
  ///
  /// In en, this message translates to:
  /// **'Get notified for every Todo that has a due date'**
  String get notifyAllDescription;

  /// No description provided for @notifyTimeOnly.
  ///
  /// In en, this message translates to:
  /// **'Only Todos with time'**
  String get notifyTimeOnly;

  /// No description provided for @notifyTimeOnlyDescription.
  ///
  /// In en, this message translates to:
  /// **'Only get notified for Todos that have both a due date and time'**
  String get notifyTimeOnlyDescription;

  /// No description provided for @notifyTodosChannelName.
  ///
  /// In en, this message translates to:
  /// **'Todos'**
  String get notifyTodosChannelName;

  /// No description provided for @notificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Let Doable notify you when your Todos are due. You can also change for which Todos you will receive notifications.'**
  String get notificationsDescription;

  /// No description provided for @notificationsDescriptionShort.
  ///
  /// In en, this message translates to:
  /// **'Change for which Todos you get notified'**
  String get notificationsDescriptionShort;

  /// No description provided for @notifyNeverDescription.
  ///
  /// In en, this message translates to:
  /// **'Don\'t get notified for any Todos'**
  String get notifyNeverDescription;

  /// No description provided for @defaultNotificationTime.
  ///
  /// In en, this message translates to:
  /// **'Default notification time'**
  String get defaultNotificationTime;

  /// No description provided for @defaultNotificationTimeDescription.
  ///
  /// In en, this message translates to:
  /// **'The time you will get notified for Todos that don\'t have a relevant time'**
  String get defaultNotificationTimeDescription;

  /// No description provided for @addImage.
  ///
  /// In en, this message translates to:
  /// **'Add image'**
  String get addImage;

  /// No description provided for @todoImages.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get todoImages;

  /// No description provided for @todoImagesDescription.
  ///
  /// In en, this message translates to:
  /// **'Add images to your Todos so you can add more context to what you\'re writing.\n\n**Unfortunately images will not be synchronized yet.**'**
  String get todoImagesDescription;

  /// No description provided for @clearInputField.
  ///
  /// In en, this message translates to:
  /// **'Clear input field'**
  String get clearInputField;

  /// No description provided for @removeImage.
  ///
  /// In en, this message translates to:
  /// **'Remove image'**
  String get removeImage;

  /// No description provided for @apkSignatureInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid signature'**
  String get apkSignatureInvalid;

  /// No description provided for @apkSignatureInvalidDescription.
  ///
  /// In en, this message translates to:
  /// **'The signature of the downloaded apk file could not be verified. Please notify the developer about this issue. While you can proceed to install the apk at your own risk, we recommend caution due to potential security concerns.'**
  String get apkSignatureInvalidDescription;

  /// No description provided for @searchTodos.
  ///
  /// In en, this message translates to:
  /// **'Search Todos'**
  String get searchTodos;

  /// No description provided for @editTodo.
  ///
  /// In en, this message translates to:
  /// **'Edit Todo'**
  String get editTodo;

  /// No description provided for @previewTodo.
  ///
  /// In en, this message translates to:
  /// **'Preview Todo'**
  String get previewTodo;

  /// No description provided for @readerMode.
  ///
  /// In en, this message translates to:
  /// **'Reader mode'**
  String get readerMode;

  /// No description provided for @readerModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows you to preview your Todos inside the edit screen.'**
  String get readerModeDescription;

  /// No description provided for @noList.
  ///
  /// In en, this message translates to:
  /// **'No list'**
  String get noList;

  /// No description provided for @chooseAList.
  ///
  /// In en, this message translates to:
  /// **'Choose a list'**
  String get chooseAList;

  /// No description provided for @readerModeDescriptionShort.
  ///
  /// In en, this message translates to:
  /// **'Change the initial mode when opening a Todo'**
  String get readerModeDescriptionShort;

  /// No description provided for @lastUsed.
  ///
  /// In en, this message translates to:
  /// **'Last used'**
  String get lastUsed;

  /// No description provided for @syncFileLocked.
  ///
  /// In en, this message translates to:
  /// **'The server locked a backup file, please try again in about 15 minutes.'**
  String get syncFileLocked;

  /// No description provided for @syncInternalError.
  ///
  /// In en, this message translates to:
  /// **'There was an internal error, apologies for the inconvenience.'**
  String get syncInternalError;

  /// No description provided for @syncConnectionError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while connecting to the server.'**
  String get syncConnectionError;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @loggingNextcloudIn.
  ///
  /// In en, this message translates to:
  /// **'Logging in to Nextcloud…'**
  String get loggingNextcloudIn;

  /// No description provided for @initializingWebdav.
  ///
  /// In en, this message translates to:
  /// **'Initializing Webdav…'**
  String get initializingWebdav;

  /// No description provided for @migratingNextcloudToRemote.
  ///
  /// In en, this message translates to:
  /// **'Migrating Nextcloud to new synchronization implementation…'**
  String get migratingNextcloudToRemote;

  /// No description provided for @migratingWebdavToRemote.
  ///
  /// In en, this message translates to:
  /// **'Migrating Webdav to new synchronization implementation…'**
  String get migratingWebdavToRemote;

  /// No description provided for @migrateToRemotes.
  ///
  /// In en, this message translates to:
  /// **'Migration'**
  String get migrateToRemotes;

  /// No description provided for @migrateToRemotesDescription.
  ///
  /// In en, this message translates to:
  /// **'Doable recently changed how it synchronizes with remotes like Nextcloud or Webdav. Unfortunately the new implementation is not backwards compatible and therefore a migration needs to take place. Doable should need a minute to migrate everything it needs to.\n\nIf you choose to do it later you might encounter some error messages since the new implementation has not yet been set up.'**
  String get migrateToRemotesDescription;

  /// No description provided for @fixBrokenRemoteFile.
  ///
  /// In en, this message translates to:
  /// **'A backup file of Doable appears to be corrupt. Doable can fix it by overriding it with the current, local value. This will override any changes made by other devices after that error occurred.'**
  String get fixBrokenRemoteFile;

  /// No description provided for @fixedBrokenRemoteFile.
  ///
  /// In en, this message translates to:
  /// **'Successfully restored broken file.'**
  String get fixedBrokenRemoteFile;

  /// No description provided for @unfixableRemoteFile.
  ///
  /// In en, this message translates to:
  /// **'The file could not be restored.'**
  String get unfixableRemoteFile;

  /// No description provided for @syncFileDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'A backup file of Doable does not exist.'**
  String get syncFileDoesNotExist;

  /// No description provided for @todos.
  ///
  /// In en, this message translates to:
  /// **'Todos'**
  String get todos;

  /// No description provided for @selectWhatToExport.
  ///
  /// In en, this message translates to:
  /// **'Please select what you would like to export.'**
  String get selectWhatToExport;

  /// No description provided for @exportFile.
  ///
  /// In en, this message translates to:
  /// **'Export file'**
  String get exportFile;

  /// No description provided for @listColor.
  ///
  /// In en, this message translates to:
  /// **'List color'**
  String get listColor;

  /// No description provided for @listColorAsAccent.
  ///
  /// In en, this message translates to:
  /// **'List color as accent'**
  String get listColorAsAccent;

  /// No description provided for @listColorAsAccentDescription.
  ///
  /// In en, this message translates to:
  /// **'Use the color of the current list as the accent color for Doable'**
  String get listColorAsAccentDescription;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @openSource.
  ///
  /// In en, this message translates to:
  /// **'Open source'**
  String get openSource;

  /// No description provided for @sourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source code'**
  String get sourceCode;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @mastodon.
  ///
  /// In en, this message translates to:
  /// **'Mastodon'**
  String get mastodon;

  /// No description provided for @fdroid.
  ///
  /// In en, this message translates to:
  /// **'F-Droid'**
  String get fdroid;

  /// No description provided for @aboutOpenSource.
  ///
  /// In en, this message translates to:
  /// **'All of Doable\'s source code is accessible on Codeberg under a FOSS license. You can also submit issues and pull requests there. You can also find Doable\'s F-Droid repository over on Codeberg!'**
  String get aboutOpenSource;

  /// No description provided for @aboutPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Doable does not collect any personal information about you. The only thing Doable stores about your usage are logs. However those logs **are not uploaded automatically.** The only way those logs leave your device is if you choose to share them for example to help me fix a bug.'**
  String get aboutPrivacy;

  /// No description provided for @httpWarning.
  ///
  /// In en, this message translates to:
  /// **'Unencrypted connection'**
  String get httpWarning;

  /// No description provided for @cancelling.
  ///
  /// In en, this message translates to:
  /// **'Cancelling…'**
  String get cancelling;

  /// No description provided for @httpWarningDescription.
  ///
  /// In en, this message translates to:
  /// **'You are trying to connect to an HTTP server instead of a more secure HTTPS server. HTTP sends the data unencrypted to the server, posing potential security risks so this is not recommended. There are however certain use cases like a locally hosted server. Are you sure you want to continue with HTTP?'**
  String get httpWarningDescription;

  /// No description provided for @enableNotificationReminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder notification'**
  String get enableNotificationReminder;

  /// No description provided for @pickNotificationReminderDuration.
  ///
  /// In en, this message translates to:
  /// **'Remind me after'**
  String get pickNotificationReminderDuration;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hours;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get minutes;

  /// No description provided for @enableNotificationSound.
  ///
  /// In en, this message translates to:
  /// **'Play sound'**
  String get enableNotificationSound;

  /// No description provided for @enableNotificationSoundDescription.
  ///
  /// In en, this message translates to:
  /// **'Play a custom sound when showing a notification'**
  String get enableNotificationSoundDescription;

  /// No description provided for @interval.
  ///
  /// In en, this message translates to:
  /// **'Interval'**
  String get interval;

  /// No description provided for @secondly.
  ///
  /// In en, this message translates to:
  /// **'Secondly'**
  String get secondly;

  /// No description provided for @minutely.
  ///
  /// In en, this message translates to:
  /// **'Minutely'**
  String get minutely;

  /// No description provided for @hourly.
  ///
  /// In en, this message translates to:
  /// **'Hourly'**
  String get hourly;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get second;

  /// No description provided for @startOfTheWeek.
  ///
  /// In en, this message translates to:
  /// **'Start of the week'**
  String get startOfTheWeek;

  /// No description provided for @hideList.
  ///
  /// In en, this message translates to:
  /// **'Hide list'**
  String get hideList;

  /// No description provided for @showList.
  ///
  /// In en, this message translates to:
  /// **'Show list'**
  String get showList;

  /// No description provided for @showListDescription.
  ///
  /// In en, this message translates to:
  /// **'Show Todos of this list in the overview.'**
  String get showListDescription;

  /// No description provided for @hideListDescription.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show Todos of this list in the overview.'**
  String get hideListDescription;

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// No description provided for @updateRelease.
  ///
  /// In en, this message translates to:
  /// **'Open Doable\'s release page and download the latest version'**
  String get updateRelease;

  /// No description provided for @updateDownload.
  ///
  /// In en, this message translates to:
  /// **'Let Doable download the latest version for you; you will find the file in the notification area and can install it by clicking on it'**
  String get updateDownload;

  /// No description provided for @updateFdroid.
  ///
  /// In en, this message translates to:
  /// **'If you installed Doable from F-Droid you should get the update in the next couple hours either from IzzyOnDroid\'s repository or Doable\'s own repository'**
  String get updateFdroid;

  /// No description provided for @updateDisable.
  ///
  /// In en, this message translates to:
  /// **'You can also disable automatic update checks all together in the settings'**
  String get updateDisable;

  /// No description provided for @updateChecker.
  ///
  /// In en, this message translates to:
  /// **'Update checker'**
  String get updateChecker;

  /// No description provided for @whatCanYouDo.
  ///
  /// In en, this message translates to:
  /// **'What can you do?'**
  String get whatCanYouDo;

  /// No description provided for @synchronization.
  ///
  /// In en, this message translates to:
  /// **'Synchronization'**
  String get synchronization;

  /// No description provided for @backup.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backup;

  /// No description provided for @autoExport.
  ///
  /// In en, this message translates to:
  /// **'Auto export'**
  String get autoExport;

  /// No description provided for @changeDuration.
  ///
  /// In en, this message translates to:
  /// **'Change duration'**
  String get changeDuration;

  /// No description provided for @autoExportDescription.
  ///
  /// In en, this message translates to:
  /// **'You can let Doable automatically make exports of your Todos, Lists, and Settings. Please know, that Doable will create a new file for every export! Choose the duration between exports accordingly.'**
  String get autoExportDescription;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get seconds;

  /// No description provided for @apkVerifyingSignature.
  ///
  /// In en, this message translates to:
  /// **'Verifying apk signature…'**
  String get apkVerifyingSignature;

  /// No description provided for @swipeActions.
  ///
  /// In en, this message translates to:
  /// **'Swipe actions'**
  String get swipeActions;

  /// No description provided for @swipeActionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Adds the ability to swipe left on Todos to either star them or complete them.\n\n**Note, that this might sometimes conflicht with the Lists extension\'s drawer.**'**
  String get swipeActionsDescription;

  /// No description provided for @selectedSwipeActions.
  ///
  /// In en, this message translates to:
  /// **'Selected actions'**
  String get selectedSwipeActions;

  /// No description provided for @unselectedSwipeActions.
  ///
  /// In en, this message translates to:
  /// **'Unselected actions'**
  String get unselectedSwipeActions;

  /// No description provided for @swipeActionComplete.
  ///
  /// In en, this message translates to:
  /// **'Complete / uncomplete Todo'**
  String get swipeActionComplete;

  /// No description provided for @swipeActionExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand Todo'**
  String get swipeActionExpand;

  /// No description provided for @swipeActionStar.
  ///
  /// In en, this message translates to:
  /// **'Star / unstar Todo'**
  String get swipeActionStar;

  /// No description provided for @swipeActionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete Todo'**
  String get swipeActionDelete;

  /// No description provided for @swipeActionsHideCheck.
  ///
  /// In en, this message translates to:
  /// **'Hide check mark'**
  String get swipeActionsHideCheck;

  /// No description provided for @swipeActionsHideCheckDescription.
  ///
  /// In en, this message translates to:
  /// **'Hide check mark when {action} is selected'**
  String swipeActionsHideCheckDescription(String action);

  /// No description provided for @forceHighestRefreshRate.
  ///
  /// In en, this message translates to:
  /// **'Force highest refresh rate'**
  String get forceHighestRefreshRate;

  /// No description provided for @forceHighestRefreshRateDescription.
  ///
  /// In en, this message translates to:
  /// **'(Try to) force the system to use the highest possible refresh rate inside the app'**
  String get forceHighestRefreshRateDescription;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @whatsNewIn.
  ///
  /// In en, this message translates to:
  /// **'What\'s new in {version}?'**
  String whatsNewIn(String version);

  /// No description provided for @expandTodosByDefault.
  ///
  /// In en, this message translates to:
  /// **'Expand Todos by default'**
  String get expandTodosByDefault;

  /// No description provided for @expandTodosByDefaultDescription.
  ///
  /// In en, this message translates to:
  /// **'Show Todos as expanded by default'**
  String get expandTodosByDefaultDescription;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @progressBar.
  ///
  /// In en, this message translates to:
  /// **'Progress bar'**
  String get progressBar;

  /// No description provided for @progressBarDescription.
  ///
  /// In en, this message translates to:
  /// **'Adds a progress bar to your Todos giving you finer control over its completion state.'**
  String get progressBarDescription;

  /// No description provided for @syncMultipleErrors.
  ///
  /// In en, this message translates to:
  /// **'The remote encountered multiple errors. For details see the logs.'**
  String get syncMultipleErrors;

  /// No description provided for @deletedCompleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted completed Todos.'**
  String get deletedCompleted;

  /// No description provided for @dateRange.
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get dateRange;

  /// No description provided for @next3Days.
  ///
  /// In en, this message translates to:
  /// **'Next 3 days'**
  String get next3Days;

  /// No description provided for @dateFilters.
  ///
  /// In en, this message translates to:
  /// **'Date filters'**
  String get dateFilters;

  /// No description provided for @dateFiltersDescription.
  ///
  /// In en, this message translates to:
  /// **'Add the option to filter your Todos by a specific date range.'**
  String get dateFiltersDescription;

  /// No description provided for @exportedFile.
  ///
  /// In en, this message translates to:
  /// **'Exported file.'**
  String get exportedFile;

  /// No description provided for @mustEnableExtensionForImageSharing.
  ///
  /// In en, this message translates to:
  /// **'Please enable the {extensionName} extension in order to use this feature.'**
  String mustEnableExtensionForImageSharing(String extensionName);

  /// No description provided for @enablePrideFlagsDescription.
  ///
  /// In en, this message translates to:
  /// **'Shows Pride flags behind the title bar in certain months'**
  String get enablePrideFlagsDescription;

  /// No description provided for @enablePrideFlags.
  ///
  /// In en, this message translates to:
  /// **'Enable Pride flags'**
  String get enablePrideFlags;

  /// No description provided for @prideFlagRestOfYear.
  ///
  /// In en, this message translates to:
  /// **'Pride flag shown year round'**
  String get prideFlagRestOfYear;

  /// No description provided for @addNotification.
  ///
  /// In en, this message translates to:
  /// **'Add notification'**
  String get addNotification;

  /// No description provided for @unselected.
  ///
  /// In en, this message translates to:
  /// **'Unselected'**
  String get unselected;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @nothingSelected.
  ///
  /// In en, this message translates to:
  /// **'Nothing selected'**
  String get nothingSelected;

  /// No description provided for @halfHourBefore.
  ///
  /// In en, this message translates to:
  /// **'Half an hour before'**
  String get halfHourBefore;

  /// No description provided for @defaultNotifications.
  ///
  /// In en, this message translates to:
  /// **'Default Notifications'**
  String get defaultNotifications;

  /// No description provided for @aDayAfter.
  ///
  /// In en, this message translates to:
  /// **'A day after'**
  String get aDayAfter;

  /// No description provided for @atTimeOfTodo.
  ///
  /// In en, this message translates to:
  /// **'At time of Todo'**
  String get atTimeOfTodo;

  /// No description provided for @aWeekBefore.
  ///
  /// In en, this message translates to:
  /// **'A week before'**
  String get aWeekBefore;

  /// No description provided for @aDayBefore.
  ///
  /// In en, this message translates to:
  /// **'A day before'**
  String get aDayBefore;

  /// No description provided for @anHourBefore.
  ///
  /// In en, this message translates to:
  /// **'An hour before'**
  String get anHourBefore;

  /// No description provided for @defaultNotificationsDescriptionIfLists.
  ///
  /// In en, this message translates to:
  /// **'You can also select different Notifications for each List.'**
  String get defaultNotificationsDescriptionIfLists;

  /// No description provided for @halfHourAfter.
  ///
  /// In en, this message translates to:
  /// **'Half hour after'**
  String get halfHourAfter;

  /// No description provided for @customNotificationTime.
  ///
  /// In en, this message translates to:
  /// **'Custom notification time'**
  String get customNotificationTime;

  /// No description provided for @defaultNotificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Select default Notifications that get added to every Todo with a relevant date.'**
  String get defaultNotificationsDescription;

  /// No description provided for @nrOfNotifications.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{One notification} other{{count} notifications}}'**
  String nrOfNotifications(int count);

  /// No description provided for @notificationsFor.
  ///
  /// In en, this message translates to:
  /// **'Notifications for'**
  String get notificationsFor;

  /// No description provided for @deleteListSettings.
  ///
  /// In en, this message translates to:
  /// **'Delete list settings'**
  String get deleteListSettings;

  /// No description provided for @snooze.
  ///
  /// In en, this message translates to:
  /// **'Snooze'**
  String get snooze;

  /// No description provided for @snoozeDurationDescription.
  ///
  /// In en, this message translates to:
  /// **'Duration that a notification gets delayed for when pressing the snooze button'**
  String get snoozeDurationDescription;

  /// No description provided for @snoozeDuration.
  ///
  /// In en, this message translates to:
  /// **'Snooze duration'**
  String get snoozeDuration;

  /// No description provided for @sortStarredToday.
  ///
  /// In en, this message translates to:
  /// **'Starred today'**
  String get sortStarredToday;

  /// No description provided for @sortStarredOverdue.
  ///
  /// In en, this message translates to:
  /// **'Starred overdue'**
  String get sortStarredOverdue;

  /// No description provided for @sortByTitle.
  ///
  /// In en, this message translates to:
  /// **'By title'**
  String get sortByTitle;

  /// No description provided for @sortByCreationDate.
  ///
  /// In en, this message translates to:
  /// **'By creation date'**
  String get sortByCreationDate;

  /// No description provided for @sortStarredRelevantDate.
  ///
  /// In en, this message translates to:
  /// **'Starred with date'**
  String get sortStarredRelevantDate;

  /// No description provided for @sortDescending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get sortDescending;

  /// No description provided for @sortAscending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get sortAscending;

  /// No description provided for @sortByRelevantDate.
  ///
  /// In en, this message translates to:
  /// **'By due date'**
  String get sortByRelevantDate;

  /// No description provided for @sortByLastEdited.
  ///
  /// In en, this message translates to:
  /// **'By last edited'**
  String get sortByLastEdited;

  /// No description provided for @sortingLabel.
  ///
  /// In en, this message translates to:
  /// **'Sorting'**
  String get sortingLabel;

  /// No description provided for @groupsLabel.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groupsLabel;

  /// No description provided for @sortingHelpDescription.
  ///
  /// In en, this message translates to:
  /// **'Doable sorts your Todos by first grouping them and then sorting each group individually, before putting them back together. In the {groups} tab you can choose what groups Doable creates and their order. In the {sorting} tab you can choose how Doable sorts each group and their order of importance.'**
  String sortingHelpDescription(String groups, String sorting);

  /// No description provided for @hideForever.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show again'**
  String get hideForever;

  /// No description provided for @sortingHelp.
  ///
  /// In en, this message translates to:
  /// **'Groups and sorting'**
  String get sortingHelp;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @aboutToCancelChangesToList.
  ///
  /// In en, this message translates to:
  /// **'You\'re about to discard all changes made to this List.'**
  String get aboutToCancelChangesToList;

  /// No description provided for @notificationsAlwaysPreview.
  ///
  /// In en, this message translates to:
  /// **'Always preview Notifications'**
  String get notificationsAlwaysPreview;

  /// No description provided for @notificationsAlwaysPreviewDescription.
  ///
  /// In en, this message translates to:
  /// **'Always open Notifications in preview mode regardless (this does not affect what mode was last used)'**
  String get notificationsAlwaysPreviewDescription;

  /// No description provided for @nextcloudWipeDescription.
  ///
  /// In en, this message translates to:
  /// **'Doable received a request to wipe all data associated with the Nextcloud account you logged in with. Therefore you will be logged out of your account. You can also choose to wipe all data (Todos and Lists) from the app. This action is permanent and cannot be undone.'**
  String get nextcloudWipeDescription;

  /// No description provided for @nextcloudWipe.
  ///
  /// In en, this message translates to:
  /// **'Nextcloud remote wipe'**
  String get nextcloudWipe;

  /// No description provided for @wipeData.
  ///
  /// In en, this message translates to:
  /// **'Wipe data'**
  String get wipeData;

  /// No description provided for @keepData.
  ///
  /// In en, this message translates to:
  /// **'Keep data'**
  String get keepData;

  /// No description provided for @imageInserted.
  ///
  /// In en, this message translates to:
  /// **'Image inserted'**
  String get imageInserted;

  /// No description provided for @useSystemFont.
  ///
  /// In en, this message translates to:
  /// **'Use system font'**
  String get useSystemFont;

  /// No description provided for @useSystemFontDescription.
  ///
  /// In en, this message translates to:
  /// **'Use the system font as the primary font for Doable'**
  String get useSystemFontDescription;

  /// No description provided for @batteryOptimization.
  ///
  /// In en, this message translates to:
  /// **'Battery optimization'**
  String get batteryOptimization;

  /// No description provided for @batteryOptimizationDescription.
  ///
  /// In en, this message translates to:
  /// **'Doable is being battery optimized. While this usually isn\'t a problem it might lead to some issues when logging in to Nextcloud. If you want to ensure a smooth experience, please disable these optimizations.'**
  String get batteryOptimizationDescription;

  /// No description provided for @couldNotAddTodoToCalendar.
  ///
  /// In en, this message translates to:
  /// **'Could not add Todo to calendar.'**
  String get couldNotAddTodoToCalendar;

  /// No description provided for @sortCompleted.
  ///
  /// In en, this message translates to:
  /// **'Sort completed'**
  String get sortCompleted;

  /// No description provided for @sortCompletedDescription.
  ///
  /// In en, this message translates to:
  /// **'Apply sorting to completed Todos as well'**
  String get sortCompletedDescription;
}

class _StringsDelegate extends LocalizationsDelegate<Strings> {
  const _StringsDelegate();

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(lookupStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'cs',
        'da',
        'de',
        'en',
        'eo',
        'es',
        'eu',
        'fa',
        'fr',
        'id',
        'it',
        'ja',
        'mr',
        'nl',
        'pl',
        'pt',
        'ro',
        'ru',
        'sv',
        'tl',
        'uk',
        'uz',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_StringsDelegate old) => false;
}

Strings lookupStrings(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return StringsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'cs':
      return StringsCs();
    case 'da':
      return StringsDa();
    case 'de':
      return StringsDe();
    case 'en':
      return StringsEn();
    case 'eo':
      return StringsEo();
    case 'es':
      return StringsEs();
    case 'eu':
      return StringsEu();
    case 'fa':
      return StringsFa();
    case 'fr':
      return StringsFr();
    case 'id':
      return StringsId();
    case 'it':
      return StringsIt();
    case 'ja':
      return StringsJa();
    case 'mr':
      return StringsMr();
    case 'nl':
      return StringsNl();
    case 'pl':
      return StringsPl();
    case 'pt':
      return StringsPt();
    case 'ro':
      return StringsRo();
    case 'ru':
      return StringsRu();
    case 'sv':
      return StringsSv();
    case 'tl':
      return StringsTl();
    case 'uk':
      return StringsUk();
    case 'uz':
      return StringsUz();
    case 'zh':
      return StringsZh();
  }

  throw FlutterError(
      'Strings.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
