import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import 'image_data.dart';

class ImageRepositoryService with ListenableServiceMixin {
  PostService() {
    listenToReactiveValues([_imagesBox]);
    listenToReactiveValues([_favoriteImagesBox]);
    listenToReactiveValues([_folderNames]);
    listenToReactiveValues([isBottomNavVisible]);
    listenToReactiveValues([avatarImagePath]);
  }

  bool isBottomNavVisible = true;
  bool get isBottomNavVisibleValue => isBottomNavVisible;

  List<String> _folderNames = [];
  List<String> get folderNames => _folderNames;

  final Box<ImageData> _imagesBox = Hive.box<ImageData>('imagesBox');
  Box<ImageData> get imagesBox => _imagesBox;

  final Box<ImageData> _favoriteImagesBox =
      Hive.box<ImageData>('favoriteImagesBox');
  Box<ImageData> get favoriteImagesBox => _favoriteImagesBox;

  String? avatarImagePath;
  String? get avatarImagePathValue => avatarImagePath;

  Future<void> loadAvatarImagePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    avatarImagePath = prefs.getString('uavatar');
    notifyListeners(); // 更新 UI
  }

  void changeAvatatImagePath(String path) {
    avatarImagePath = path;
    notifyListeners();
  }

  void setBottomNavVisible() {
    if (isBottomNavVisible) {
      isBottomNavVisible = false;
      print('isBottomNavVisible: $isBottomNavVisible');
      notifyListeners();
    } else {
      isBottomNavVisible = true;
      print('isBottomNavVisible: $isBottomNavVisible');
      notifyListeners();
    }
  }

  Future<String> Appdocpath() async {
    // 获取文档目录路径
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    return appDocPath;
  }

  Future<void> getFolderNames() async {
    // 获取文档目录路径
    String appDocPath = await Appdocpath();
    String folderPath = '$appDocPath/uuuimages/';

    // 获取该路径下的所有文件夹
    Directory directory = Directory(folderPath);
    List<String> folderNames = [];
    // 将 appDocPath 添加到列表并命名为 "收藏"
    folderNames.add('收藏');
    print('添加收藏路径: $appDocPath');

    await for (var entity
        in directory.list(recursive: false, followLinks: false)) {
      if (entity is Directory) {
        // 获取文件夹名称
        String folderName = path.basename(entity.path);
        print('文件夹名称: $folderName');

        // 如果解析成功，加入列表
        folderNames.add(folderName);
        print('解析文件夹: $folderName, 前缀: ${folderName}');
      }
    }

    _folderNames = folderNames;
    notifyListeners();
  }

  Future<void> saveImages(List<Map<String, String>> images) async {
    for (var image in images) {
      final imageData = ImageData(
        data: image['data']!,
        date: image['date']!,
      );
      await _imagesBox.add(imageData);
      notifyListeners();
    }
  }

  Future<void> savefavoriteImages(image) async {
    final imageData = ImageData(
      data: image['data']!,
      date: image['date']!,
    );
    await _favoriteImagesBox.add(imageData);
    notifyListeners();
  }

  List<ImageData> getImages(List<int> index) {
    //循环返回图片
    List<ImageData> images = [];
    for (var i in index) {
      images.add(_favoriteImagesBox.getAt(i)!);
    }
    return images;
  }

  List<ImageData> getallImages(int index) {
    //循环返回图片
    List<ImageData> images = [];
    for (var i = 0; i < index; i++) {
      images.add(_imagesBox.getAt(i)!);
    }
    return images;
  }

  //删除逻辑
  Future<void> deleteImage(int index) async {
    await _imagesBox.deleteAt(index);
    notifyListeners();
  }

  Future<void> deleteFavoriteImage(int index) async {
    await _favoriteImagesBox.deleteAt(index);
  }

  //删除逻辑
  Future<void> deleteImages() async {
    await _imagesBox.clear();
  }

  Future<void> deleteFavoriteImages() async {
    await _favoriteImagesBox.clear();
  }

  //监听
  Stream<List<ImageData>> getImagesStream() {
    return _imagesBox.watch().map((event) => _imagesBox.values.toList());
  }

  ImageData? getFavoriteImageData(int index) {
    return _favoriteImagesBox.getAt(index);
  }

  ImageData? getImageData(int index) {
    return _imagesBox.getAt(index);
  }
}
