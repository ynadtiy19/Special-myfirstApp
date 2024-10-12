import 'package:flutter/material.dart';
import 'package:hung/ui/widgets/common/sider_bar_page/Donate.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/image_repository_service.dart';

class SiderBarPageModel extends ReactiveViewModel {
  final ImageRepository = locator<ImageRepositoryService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [
        ImageRepository,
      ];

  @override
  SiderBarPageModel() {
    ImageRepository.loadAvatarImagePath();
  }

  String? get avatarImagePathValue => ImageRepository.avatarImagePathValue;
  ImagePicker? _picker;
  String? avatarImagePath;

  static int _selectedIndex = 0;
  static int get selectedIndex => _selectedIndex; //更改全局静态变量需要重新构建小部件树

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
      ImageRepository.changeAvatatImagePath(avatarImagePath!);

      // 通知监听器以更新 UI
      notifyListeners(); // 提供隐式 getter
    }
  }

  void SideRailRouteTo(BuildContext context, int index) {
    _selectedIndex = index;
    notifyListeners();
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => donate()),
        );
        break;

      case 1:
        launchUrl(
          Uri.parse(
            'https://www.theleap.co/creator/ynadtiy19/mini-course/mastering-smart-goals/take?token=Fh_y9qRZXZBHAv9e0QkaGg',
          ),
        );
        break;
      case 2:
        launchUrl(
          Uri.parse(
            'http://yunyuzhizhou.mlover.site/',
          ),
        );
        break;
      case 3:
        launchUrl(
          Uri.parse(
            'https://theleap.co/creator/ynadtiy19/',
          ),
        );
        break;
      default:
        break;
    }
  }
}
