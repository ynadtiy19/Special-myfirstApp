import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';

class PromptToFavoPageViewModel extends BaseViewModel {
  List<String> imagePaths = []; // 保存所有图像文件路径
  get imagePathsList => imagePaths;

  @override
  PromptToFavoPageViewModel() {
    getAllImagePaths();
  }
  Future<void> getAllImagePaths() async {
    // 获取应用程序的文档目录
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    // 遍历该目录下的所有文件
    Directory dir = Directory(appDocPath);
    List<FileSystemEntity> entities = dir.listSync(); // 获取所有文件和目录

    // 遍历文件并筛选出图像文件路径
    for (var entity in entities) {
      if (entity is File) {
        String filePath = entity.path;
        // 检查文件扩展名是否是图像格式（如 .png, .jpg, .jpeg, .gif 等）
        if (filePath.endsWith('.png') ||
            filePath.endsWith('.jpg') ||
            filePath.endsWith('.jpeg') ||
            filePath.endsWith('.gif')) {
          imagePaths.add(filePath);
          notifyListeners();
        }
      }
    }
  }

  void deleteAllFavoriteImages() async {
    try {
      for (String filePath in imagePaths) {
        // 删除文件系统中的图像文件
        File file = File(filePath);
        if (await file.exists()) {
          await file.delete();
          print('文件已删除: $filePath');
        }
      }

      // 清空 imagePaths 列表
      imagePaths.clear();
      notifyListeners();
      print('所有图像已删除');
    } catch (e) {
      print('删除所有文件时发生错误: $e');
    }
  }
}
