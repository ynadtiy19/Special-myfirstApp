import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_repository_service.dart';
import '../../../services/select_img_favo_service.dart';

class PromptToSelectViewModel extends BaseViewModel {
  final navigationToselectView = locator<SelectImgFavoService>();
  final ImageRepository = locator<ImageRepositoryService>();

  late String _filename = '';
  String get filename => _filename;

  late String _filepath = '';
  String get filepath => _filepath;

  List<String> imagePaths = []; // 保存所有图像文件路径
  get imagePathsList => imagePaths;

  @override
  PromptToSelectViewModel() {
    _filepath = navigationToselectView.filepath;
    _filename = navigationToselectView.filename;
    getAllImagePaths();
  }

  Future<void> deleteCurrentFolder(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text(
            '您确定要删除该文件夹吗？',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () async {
                try {
                  // 确保路径存在并且是一个目录
                  Directory dir = Directory(_filepath);
                  if (await dir.exists()) {
                    // 递归删除该文件夹及其所有内容
                    await dir.delete(recursive: true);
                    print('文件夹 $_filepath 已被删除');
                  } else {
                    print('文件夹 $_filepath 不存在');
                  }
                } catch (e) {
                  print('删除文件夹失败: $e');
                }
                ImageRepository.getFolderNames();
                Navigator.of(context).pop();
                // 关闭当前页面
                Navigator.of(context).pop();
              },
              child: const Text(
                '确定',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                '取消',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
    // Navigator.of(context).pop();
  }

  Future<void> getAllImagePaths() async {
    // 遍历该目录下的所有文件
    Directory dir = Directory(_filepath);
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
