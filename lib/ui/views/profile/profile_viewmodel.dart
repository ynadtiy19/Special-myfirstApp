import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:json_cache/json_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_repository_service.dart';

class ProfileViewModel extends BaseViewModel {
  late String _formattedDate = '';
  get formattedDate => _formattedDate;

  late String uSpecialwords = '开始一段有趣的旅程吧(✿◡‿◡)';
  get uuSpecialwords => uSpecialwords;

  late Uint8List _imageData = Uint8List(0);
  Uint8List get imageData => _imageData;
  static int _selectedIndex = 1;
  static int get selectedIndex => _selectedIndex;

  bool isbytesImage = false;
  bool get isUBytesImage => isbytesImage;

  static bool gotspecialWords = false;
  static bool get gotspecial => gotspecialWords;

  static Map<String, dynamic> cachedInfo = {};
  Map<String, dynamic> get cachedInfoMap => cachedInfo;

  Future<void> changeSpecialWords() async {
    await fetchAndCacheData(); //将json存入cachedInfo
    uSpecialwords = (cachedInfo.values.toList()..shuffle()).first;
    notifyListeners();
  }

  void UchangeSpecialWords() {
    uSpecialwords = (cachedInfo.values.toList()..shuffle()).first;
    print(uSpecialwords);
    notifyListeners();
  }

  final ImageRepository = locator<ImageRepositoryService>();
  void setBottomNavVisible() => ImageRepository.setBottomNavVisible();
  @override
  ProfileViewModel() {
    _formattedDate = getFormattedDate();
    notifyListeners();
  }

  Future<void> changtobytesimage() async {
    if (isbytesImage == false) {
      await fetchImageData();
      isbytesImage = true;
    } else {
      _selectedIndex = (_selectedIndex % 12) + 1; // 更新索引，确保在 1 到 12 之间循环
      isbytesImage = false;
    }
    notifyListeners();
    print(isbytesImage);
  }

  Future<void> fetchAndCacheData() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final JsonCacheMem jsonCache =
        JsonCacheMem(JsonCacheSharedPreferences(sharedPrefs));
    print('正在获取specialwords...');
    // 1. 从 URL 获取 JSON 数据
    final response = await http
        .get(Uri.parse('https://mydiumtify.globeapp.dev/youtuberead?repo=uu1'));

    if (response.statusCode == 200) {
      // 解析 JSON 数据
      final jsonData = jsonDecode(response.body);

      // 2. 存储数据到 jsonCacheMem
      await jsonCache.refresh('specialwords', jsonData);

      // 3. 从缓存中获取数据并打印
      cachedInfo = (await jsonCache.value('specialwords'))!;
      print(cachedInfo);
      gotspecialWords = true;
      notifyListeners();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> fetchImageData() async {
    try {
      print('开始加载网络图像数据...');
      final response = await http
          .get(Uri.parse('https://mydiumtify.globeapp.dev/imagebytes'));

      if (response.statusCode == 200) {
        final base64String = response.body;
        print('网络图像数据加载成功');
        final bytes = base64Decode(base64String);
        _imageData = Uint8List.fromList(bytes);
        notifyListeners();
      } else {
        throw Exception('Failed to load image');
      }
    } catch (e) {
      throw Exception('Failed to load image: $e');
    }
  }

  String getFormattedDate() {
    DateTime now = DateTime.now();
    String dayOfWeek = _getDayOfWeek(now.weekday);
    String month = _getMonth(now.month);
    String formattedDate = '$dayOfWeek, $month ${now.day}, ${now.year}';
    String period = now.hour < 12
        ? 'morning (早晨)'
        : (now.hour < 18 ? 'afternoon (午后)' : 'evening (夜晚)');

    return '$formattedDate\n$period';
  }

  String _getDayOfWeek(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return 'Monday';
      case DateTime.tuesday:
        return 'Tuesday';
      case DateTime.wednesday:
        return 'Wednesday';
      case DateTime.thursday:
        return 'Thursday';
      case DateTime.friday:
        return 'Friday';
      case DateTime.saturday:
        return 'Saturday';
      case DateTime.sunday:
        return 'Sunday';
      default:
        return '';
    }
  }

  String _getMonth(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}
