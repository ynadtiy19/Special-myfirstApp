import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/image_repository_service.dart';
import '../../../webviewsite/shopsite.dart';
import 'Donate.dart';

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
          CupertinoPageRoute(builder: (context) => donate()),
        );
        break;

      case 1:
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const ShopWebView()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const ShopWebView()),
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
