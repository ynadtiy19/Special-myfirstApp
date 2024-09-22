import 'package:flutter/material.dart';
import 'package:hung/ui/widgets/common/sider_bar_page/Donate.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class SiderBarPageModel extends BaseViewModel {
  // final _navigationService = locator<NavigationService>();
  //
  // final Map<int, String> indexToRoute = {
  //   0: Routes.profileView,
  //   1: Routes.profileView,
  //   2: donate,
  //   // Add more entries for different routes based on index
  // };
  @override
  SiderBarPageModel() {
    loadAvatarImagePath();
  }
  ImagePicker? _picker;
  String? avatarImagePath;
  String? get avatarImagePathValue => avatarImagePath;

  Future<void> initializeAndSelectImage() async {
    // 初始化 ImagePicker
    _picker ??= ImagePicker();

    // 选择图像
    final XFile? image = await _picker?.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // 存储图像路径到 SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('uavatar', image.path);

      // 更新模型中的头像路径
      avatarImagePath = image.path;

      // 通知监听器以更新 UI
      notifyListeners(); // 提供隐式 getter
    }
  }

  Future<void> loadAvatarImagePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    avatarImagePath = prefs.getString('uavatar');
    notifyListeners(); // 更新 UI
  }

  void SideRailRouteTo(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => donate()),
        );
        break;

      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => donate()),
        );
        break;

      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => donate()),
        );
        break;

      default:
        break;
    }
  }
}
