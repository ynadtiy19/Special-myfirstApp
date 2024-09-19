import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:hung/app/app.locator.dart';
import 'package:hung/app/app.router.dart';
import 'package:json_cache/json_cache.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storyly_flutter/storyly_flutter.dart';

class ArticleViewModel extends BaseViewModel {
  final foregroundImages = ['rio.png', 'france.png', 'iceland.png'];
  final backgroundImages = ['rio-bg.jpg', 'france-bg.jpg', 'iceland-bg.jpg'];
  final texts = ['巴西', '法国', '冰岛'];

  final JsonCacheMem jsonCacheMem = JsonCacheMem();
  JsonCacheMem get jsonCacheKey => jsonCacheMem;

  bool _isfetching = false;
  bool get isfetching => _isfetching;

  Future<Map<String, dynamic>?> fetchData(
      [String query = 'apple with nature']) async {
    _isfetching = true;

    final String apiUrl =
        'https://mydiumtify.globeapp.dev/medium/search?q=$query&pageindex=1';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      // print(data);

      // 存储数据
      await jsonCacheMem.refresh('fetchedData', data);

      // 获取缓存信息并打印
      // final cachedInfo = await jsonCacheMem.value('fetchedData');
      // final cachedJson = jsonEncode(cachedInfo);
      // print(cachedJson);

      _isfetching = false; // Reset fetching state
      notifyListeners();

      return data;
    } else {
      _isfetching = false; // Reset fetching state in case of error
      notifyListeners();
      throw Exception('Failed to load data');
    }
  }

  int _activeIndex = 0;
  int get activeIndex => _activeIndex;

  void refreshStorylyView() {
    //刷新这个小部件
    storylyViewController.refresh();
    notifyListeners();
  }

  void TravelCardsPageChange(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  final _navigationService = locator<NavigationService>();
  TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;

  String _selectedCategory = 'All';
  String get selectedCategory => _selectedCategory;

  static const storylyToken =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NfaWQiOjEyMTM2LCJhcHBfaWQiOjE3OTQwLCJpbnNfaWQiOjIxMDgyfQ.zf3MeCKnKUaE6m1216mlDpP5BvqF5z6Hhk1UumwcLb4";

  static const storylyUserId =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NfaWQiOjEyMTM2LCJhcHBfaWQiOjE4NzU4LCJpbnNfaWQiOjIxMDgzfQ.Z1-47m5pTa3NiLNKpVcGJUw1N9ANOfxOS_QsKKIK1AA";
  String get UstorylyToken => storylyToken;
  String get UstorylyUserId => storylyUserId;
  late StorylyViewController storylyViewController;

  void onStorylyViewCreated(StorylyViewController storylyViewController) {
    this.storylyViewController = storylyViewController;
  }

  Color _color0 = Color.fromARGB(255, 216, 219, 231);
  Color _color1 = Color.fromARGB(255, 254, 239, 231);
  Color _color2 = Color.fromARGB(255, 206, 234, 224);
  Color _color3 = Color.fromARGB(255, 228, 228, 255);
  Color _color4 = Color.fromARGB(255, 252, 236, 250);

  Color get uuucolor0 => _color0;

  Color get uuucolor1 => _color1;

  Color get uuucolor2 => _color2;

  Color get uuucolor3 => _color3;

  Color get uuucolor4 => _color4;

  void changeColor() {
    _color0 = getRandomColor();
    _color1 = getRandomColor();
    _color2 = getRandomColor();
    _color3 = getRandomColor();
    _color4 = getRandomColor();
    notifyListeners();
  }

  Color getRandomColor() {
    final List<Color> predefinedColors = [
      Color.fromARGB(255, 216, 219, 231), // Light blue-gray
      Color.fromARGB(255, 254, 239, 231), // Pale orange
      Color.fromARGB(255, 206, 234, 224), // Mint green
      Color.fromARGB(255, 228, 228, 255), // Very pale blue
      Color.fromARGB(255, 252, 236, 250), // Mustard yellow
    ];

    final Random random = Random();
    int index = random.nextInt(predefinedColors.length); // 随机选择一个索引
    return predefinedColors[index]; // 返回随机选择的颜色
  }

  void onCategorySelected(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  PushIntoMenu(String value) {
    switch (value) {
      case 'repeatNow':
        break;
      case 'editWorkout':
        _navigationService.navigateTo(Routes.profileView);
        break;
      case 'ShareNow':
        _navigationService.navigateTo(Routes.profileView);
        break;
      case 'getHelp':
        _navigationService.navigateTo(Routes.profileView);
        break;

      default:
        break;
    }
  }

  // void onPressed() {}

  // Future<void> onPressed() async {
  //   log('Checking');

  //   String url = _controller.text.trim();
  //   if (url.isEmpty) {
  //     log('URL is empty');
  //     return;
  //   }

  //   var directLink = DirectLink();
  //   var model =
  //       await directLink.check(url, timeout: const Duration(seconds: 10));

  //   if (model == null) {
  //     return log('model is null');
  //   }

  //   log('title: ${model.title}');
  //   log('thumbnail: ${model.thumbnail}');
  //   log('duration: ${model.duration}');
  //   for (var e in model.links!) {
  //     log('type: ${e.type}');
  //     log('quality: ${e.quality}');
  //     log('link: ${e.link}');

  //     if (e.link != null) {
  //       var appDocDir = await getTemporaryDirectory();
  //       var savePath = '${appDocDir.path}/${model.title}.${e.type}';
  //       await downloadMedia(e.link!, savePath, e.type);
  //     }
  //   }
  // }
}
