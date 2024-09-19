import 'dart:io';

import 'package:hive/hive.dart';
import 'package:hung/app/app.locator.dart';
import 'package:hung/app/app.router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SiderBarPageModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final Map<int, String> indexToRoute = {
    0: Routes.profileView,
    1: Routes.profileView,
    2: Routes.profileView,
    // Add more entries for different routes based on index
  };

  Box<String>? _imageBox;
  ImagePicker? _picker;
  String? avatarImagePath;
  String? get avatarImagePathValue => avatarImagePath;

  // 初始化和选择图像的综合函数
  Future<void> initializeAndSelectImage() async {
    // 初始化 Hive 和 ImagePicker
    if (_imageBox == null || !_imageBox!.isOpen) {
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocDir.path);
      _imageBox = await Hive.openBox<String>('imageBox');
    }
    if (_picker == null) {
      _picker = ImagePicker();
    }

    // 选择图像
    final XFile? image = await _picker?.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // 存储图像路径
      await _imageBox?.put('avatar', image.path);
      // 更新模型中的头像路径
      avatarImagePath = image.path;
      // 通知监听器以更新UI
      notifyListeners(); //提供隐式getter
    }
  }

  // @override
  // void dispose() {
  //   Hive.close();
  //   super.dispose();
  // }

  void SideRailRouteTo(int index) {
    // 显示启动界面
    // 这里使用 Future.delayed 来延迟一段时间
    // 你也可以使用 Timer 来实现相同的效果
    Future.delayed(Duration(milliseconds: 500), () {
      // 根据索引获取对应的路由
      String route = indexToRoute[index] ?? ''; //备用默认路由
      _navigationService.navigateTo(route);
    });
  }
}
