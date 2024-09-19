// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i18;
import 'package:flutter/material.dart';
import 'package:hung/ui/views/article/article_view.dart' as _i4;
import 'package:hung/ui/views/chat/chat_view.dart' as _i5;
import 'package:hung/ui/views/chatsity/chatsity_view.dart' as _i14;
import 'package:hung/ui/views/geminichat_screen/geminichat_screen_view.dart'
    as _i10;
import 'package:hung/ui/views/home/home_view.dart' as _i2;
import 'package:hung/ui/views/profile/profile_view.dart' as _i6;
import 'package:hung/ui/views/promotetowords/promotetowords_view.dart' as _i13;
import 'package:hung/ui/views/prompt_to_favo_page/prompt_to_favo_page_view.dart'
    as _i16;
import 'package:hung/ui/views/prompt_to_query_favorite/prompt_to_query_favorite_view.dart'
    as _i15;
import 'package:hung/ui/views/prompt_to_real/prompt_to_real_view.dart' as _i11;
import 'package:hung/ui/views/prompt_to_select/prompt_to_select_view.dart'
    as _i17;
import 'package:hung/ui/views/prompt_to_translate/prompt_to_translate_view.dart'
    as _i12;
import 'package:hung/ui/views/startup/startup_view.dart' as _i3;
import 'package:hung/ui/views/storyly_instagram/storyly_instagram_view.dart'
    as _i7;
import 'package:hung/ui/views/travelcard/travelcard_view.dart' as _i8;
import 'package:hung/ui/views/travelstory/travelstory_view.dart' as _i9;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i19;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const articleView = '/article-view';

  static const chatView = '/chat-view';

  static const profileView = '/profile-view';

  static const storylyInstagramView = '/storyly-instagram-view';

  static const travelcardView = '/travelcard-view';

  static const travelstoryView = '/travelstory-view';

  static const geminichatScreenView = '/geminichat-screen-view';

  static const promptToRealView = '/prompt-to-real-view';

  static const promptToTranslateView = '/prompt-to-translate-view';

  static const promotetowordsView = '/promotetowords-view';

  static const chatsityView = '/chatsity-view';

  static const promptToQueryFavoriteView = '/prompt-to-query-favorite-view';

  static const promptToFavoPageView = '/prompt-to-favo-page-view';

  static const promptToSelectView = '/prompt-to-select-view';

  static const all = <String>{
    homeView,
    startupView,
    articleView,
    chatView,
    profileView,
    storylyInstagramView,
    travelcardView,
    travelstoryView,
    geminichatScreenView,
    promptToRealView,
    promptToTranslateView,
    promotetowordsView,
    chatsityView,
    promptToQueryFavoriteView,
    promptToFavoPageView,
    promptToSelectView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.articleView,
      page: _i4.ArticleView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i5.ChatView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i6.ProfileView,
    ),
    _i1.RouteDef(
      Routes.storylyInstagramView,
      page: _i7.StorylyInstagramView,
    ),
    _i1.RouteDef(
      Routes.travelcardView,
      page: _i8.TravelcardView,
    ),
    _i1.RouteDef(
      Routes.travelstoryView,
      page: _i9.TravelstoryView,
    ),
    _i1.RouteDef(
      Routes.geminichatScreenView,
      page: _i10.GeminichatScreenView,
    ),
    _i1.RouteDef(
      Routes.promptToRealView,
      page: _i11.PromptToRealView,
    ),
    _i1.RouteDef(
      Routes.promptToTranslateView,
      page: _i12.PromptToTranslateView,
    ),
    _i1.RouteDef(
      Routes.promotetowordsView,
      page: _i13.PromotetowordsView,
    ),
    _i1.RouteDef(
      Routes.chatsityView,
      page: _i14.ChatsityView,
    ),
    _i1.RouteDef(
      Routes.promptToQueryFavoriteView,
      page: _i15.PromptToQueryFavoriteView,
    ),
    _i1.RouteDef(
      Routes.promptToFavoPageView,
      page: _i16.PromptToFavoPageView,
    ),
    _i1.RouteDef(
      Routes.promptToSelectView,
      page: _i17.PromptToSelectView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.ArticleView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.ArticleView(),
        settings: data,
      );
    },
    _i5.ChatView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ChatView(),
        settings: data,
      );
    },
    _i6.ProfileView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ProfileView(),
        settings: data,
      );
    },
    _i7.StorylyInstagramView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.StorylyInstagramView(),
        settings: data,
      );
    },
    _i8.TravelcardView: (data) {
      final args = data.getArgs<TravelcardViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.TravelcardView(
            scrollController: args.scrollController,
            index: args.index,
            key: args.key),
        settings: data,
      );
    },
    _i9.TravelstoryView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.TravelstoryView(),
        settings: data,
      );
    },
    _i10.GeminichatScreenView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.GeminichatScreenView(),
        settings: data,
      );
    },
    _i11.PromptToRealView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.PromptToRealView(),
        settings: data,
      );
    },
    _i12.PromptToTranslateView: (data) {
      final args = data.getArgs<PromptToTranslateViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i12.PromptToTranslateView(args.scrollController, key: args.key),
        settings: data,
      );
    },
    _i13.PromotetowordsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.PromotetowordsView(),
        settings: data,
      );
    },
    _i14.ChatsityView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ChatsityView(),
        settings: data,
      );
    },
    _i15.PromptToQueryFavoriteView: (data) {
      final args =
          data.getArgs<PromptToQueryFavoriteViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.PromptToQueryFavoriteView(
            scrollController: args.scrollController,
            index: args.index,
            key: args.key),
        settings: data,
      );
    },
    _i16.PromptToFavoPageView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.PromptToFavoPageView(),
        settings: data,
      );
    },
    _i17.PromptToSelectView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.PromptToSelectView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class TravelcardViewArguments {
  const TravelcardViewArguments({
    required this.scrollController,
    required this.index,
    this.key,
  });

  final _i18.ScrollController scrollController;

  final int index;

  final _i18.Key? key;

  @override
  String toString() {
    return '{"scrollController": "$scrollController", "index": "$index", "key": "$key"}';
  }

  @override
  bool operator ==(covariant TravelcardViewArguments other) {
    if (identical(this, other)) return true;
    return other.scrollController == scrollController &&
        other.index == index &&
        other.key == key;
  }

  @override
  int get hashCode {
    return scrollController.hashCode ^ index.hashCode ^ key.hashCode;
  }
}

class PromptToTranslateViewArguments {
  const PromptToTranslateViewArguments({
    required this.scrollController,
    this.key,
  });

  final _i18.ScrollController scrollController;

  final _i18.Key? key;

  @override
  String toString() {
    return '{"scrollController": "$scrollController", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PromptToTranslateViewArguments other) {
    if (identical(this, other)) return true;
    return other.scrollController == scrollController && other.key == key;
  }

  @override
  int get hashCode {
    return scrollController.hashCode ^ key.hashCode;
  }
}

class PromptToQueryFavoriteViewArguments {
  const PromptToQueryFavoriteViewArguments({
    required this.scrollController,
    required this.index,
    this.key,
  });

  final _i18.ScrollController scrollController;

  final int index;

  final _i18.Key? key;

  @override
  String toString() {
    return '{"scrollController": "$scrollController", "index": "$index", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PromptToQueryFavoriteViewArguments other) {
    if (identical(this, other)) return true;
    return other.scrollController == scrollController &&
        other.index == index &&
        other.key == key;
  }

  @override
  int get hashCode {
    return scrollController.hashCode ^ index.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i19.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToArticleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.articleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStorylyInstagramView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.storylyInstagramView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTravelcardView({
    required _i18.ScrollController scrollController,
    required int index,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.travelcardView,
        arguments: TravelcardViewArguments(
            scrollController: scrollController, index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTravelstoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.travelstoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGeminichatScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.geminichatScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromptToRealView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.promptToRealView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromptToTranslateView({
    required _i18.ScrollController scrollController,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.promptToTranslateView,
        arguments: PromptToTranslateViewArguments(
            scrollController: scrollController, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromotetowordsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.promotetowordsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatsityView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatsityView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromptToQueryFavoriteView({
    required _i18.ScrollController scrollController,
    required int index,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.promptToQueryFavoriteView,
        arguments: PromptToQueryFavoriteViewArguments(
            scrollController: scrollController, index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromptToFavoPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.promptToFavoPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPromptToSelectView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.promptToSelectView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithArticleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.articleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStorylyInstagramView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.storylyInstagramView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTravelcardView({
    required _i18.ScrollController scrollController,
    required int index,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.travelcardView,
        arguments: TravelcardViewArguments(
            scrollController: scrollController, index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTravelstoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.travelstoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGeminichatScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.geminichatScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromptToRealView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.promptToRealView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromptToTranslateView({
    required _i18.ScrollController scrollController,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.promptToTranslateView,
        arguments: PromptToTranslateViewArguments(
            scrollController: scrollController, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromotetowordsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.promotetowordsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatsityView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatsityView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromptToQueryFavoriteView({
    required _i18.ScrollController scrollController,
    required int index,
    _i18.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.promptToQueryFavoriteView,
        arguments: PromptToQueryFavoriteViewArguments(
            scrollController: scrollController, index: index, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromptToFavoPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.promptToFavoPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPromptToSelectView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.promptToSelectView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
