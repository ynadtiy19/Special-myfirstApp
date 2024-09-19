import 'package:hung/services/gemini_services_service.dart';
import 'package:hung/services/image_repository_service.dart';
import 'package:hung/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:hung/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:hung/ui/views/article/article_view.dart';
import 'package:hung/ui/views/chat/chat_view.dart';
import 'package:hung/ui/views/chatsity/chatsity_view.dart';
import 'package:hung/ui/views/geminichat_screen/geminichat_screen_view.dart';
import 'package:hung/ui/views/home/home_view.dart';
import 'package:hung/ui/views/profile/profile_view.dart';
import 'package:hung/ui/views/promotetowords/promotetowords_view.dart';
import 'package:hung/ui/views/prompt_to_real/prompt_to_real_view.dart';
import 'package:hung/ui/views/prompt_to_translate/prompt_to_translate_view.dart';
import 'package:hung/ui/views/startup/startup_view.dart';
import 'package:hung/ui/views/storyly_instagram/storyly_instagram_view.dart';
import 'package:hung/ui/views/travelcard/travelcard_view.dart';
import 'package:hung/ui/views/travelstory/travelstory_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:hung/ui/views/prompt_to_query_favorite/prompt_to_query_favorite_view.dart';
import 'package:hung/ui/views/prompt_to_favo_page/prompt_to_favo_page_view.dart';
import 'package:hung/ui/views/prompt_to_select/prompt_to_select_view.dart';
import 'package:hung/services/select_img_favo_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ArticleView),
    MaterialRoute(page: ChatView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: StorylyInstagramView),
    MaterialRoute(page: TravelcardView),
    MaterialRoute(page: TravelstoryView),
    MaterialRoute(page: GeminichatScreenView),
    MaterialRoute(page: PromptToRealView),
    MaterialRoute(page: PromptToTranslateView),
    MaterialRoute(page: PromotetowordsView),
    MaterialRoute(page: ChatsityView),
    MaterialRoute(page: PromptToQueryFavoriteView),
    MaterialRoute(page: PromptToFavoPageView),
    MaterialRoute(page: PromptToSelectView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: GeminiService),
    LazySingleton(classType: ImageRepositoryService),
    LazySingleton(classType: SelectImgFavoService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
