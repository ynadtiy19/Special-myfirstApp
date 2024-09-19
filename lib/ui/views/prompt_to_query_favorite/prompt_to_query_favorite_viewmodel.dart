import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_repository_service.dart';
import '../../../services/select_img_favo_service.dart';

class PromptToQueryFavoriteViewModel extends BaseViewModel {
  int _containerCount = 0;
  List<String> _folderNames = []; // 保存文件夹名称的列表

  int get containerCount => _containerCount;
  List<String> get folderNames => _folderNames;

  List<Widget> _containers = [];
  List<Widget> get containers => _containers;

  final navigationToselectView = locator<SelectImgFavoService>();
  final ImageRepository = locator<ImageRepositoryService>();

  @override
  PromptToQueryFavoriteViewModel() {
    getFolderNames();
    notifyListeners();
  }

  Future<String> Appdocpath() async {
    // 获取文档目录路径
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    return appDocPath;
  }

  Color generateColor() {
    // 示例：使用随机数生成颜色
    Random random = Random();
    return Color.fromARGB(
      150, // 不透明度保持不变
      random.nextInt(256), // 生成0-255的随机R值
      random.nextInt(256), // 生成0-255的随机G值
      random.nextInt(256), // 生成0-255的随机B值
    );
  }

  // 弹出对话框并创建新文件夹
  Future<void> incrementContainerCount(BuildContext context) async {
    String folderPrefix = ''; // 声明一个局部变量来存储输入的文件夹前缀

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('输入文件夹名称'),
          content: CupertinoTextField(
            placeholder: '输入名称',
            onChanged: (value) {
              folderPrefix = value; // 更新输入的文件夹前缀
            },
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () async {
                // 获取文档目录
                String appDocPath = await Appdocpath();
                //
                // // 使用输入的前缀生成文件夹名称
                // final typeId =
                //     TypeId.generate(folderPrefix.toLowerCase()); // 确保小写
                // 定义文件夹路径并创建文件夹
                String folderPath = '$appDocPath/uuuimages/$folderPrefix';

                // print('folderPath: $folderPath');
                Directory newFolder = Directory(folderPath);
                if (!await newFolder.exists()) {
                  await newFolder.create(recursive: true);
                }

                // 添加一个延迟以确保文件系统更新 (可选)
                await Future.delayed(const Duration(milliseconds: 200));

                // 调试信息：确认文件夹是否创建
                if (await newFolder.exists()) {
                  print('文件夹创建成功: $folderPath');
                } else {
                  print('文件夹创建失败: $folderPath');
                }

                // 刷新文件夹列表
                await getFolderNames();
                ImageRepository.getFolderNames();

                // 增加容器数量并通知更新
                // _containerCount = _folderNames.length;
                print('containerCount: $_containerCount');
                // 关闭对话框
                Navigator.of(context).pop();
                notifyListeners();
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
  }

// 从文件系统中获取符合特定规则的文件夹名称
  Future<void> getFolderNames() async {
    String appDocPath = await Appdocpath();

    Directory dir = Directory('$appDocPath/uuuimages');

    // 遍历路径下的所有文件夹
    List<String> folderList = [];
    await for (var entity in dir.list(recursive: false, followLinks: false)) {
      if (entity is Directory) {
        // 获取文件夹名称
        String folderName = path.basename(entity.path);
        print('文件夹名称: $folderName');

        // 如果解析成功，加入列表
        folderList.add(folderName);
        print('解析文件夹: $folderName, 前缀: ${folderName}');
      }
    }

    // 更新文件夹名称列表
    _folderNames = folderList;
    _containerCount = _folderNames.length;

    // 使用生成的文件夹名称列表生成容器
    _containers = await generateContainers(_containerCount, _folderNames);

    notifyListeners(); // 通知视图更新
  }

  // 生成多个相同的Container
  Future<List<Widget>> generateContainers(
      int count, List<String> folderNames) async {
    // 获取应用文档目录路径
    String appDocPath = await Appdocpath();
    // 动态生成颜色
    Color dynamicColor = generateColor();

    List<Widget> containers = [];

    for (int index = 0; index < count; index++) {
      // 构建文件夹路径
      String folderPath = '$appDocPath/uuuimages/${folderNames[index]}';
      String imagePath = await _getFirstImageInFolder(folderPath);

      containers.add(
        GestureDetector(
          onTap: () {
            print('点击了第${folderPath}个容器');
            navigationToselectView.replacetoSelectView(
                folderNames[index], folderPath);
            notifyListeners();
          },
          child: imagePath.isNotEmpty
              ? Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: FileImage(File(imagePath)), // 使用本地图片
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      folderNames[index],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.white, // 中心圈颜色
                        dynamicColor, // 使用动态生成的颜色作为外圈颜色
                      ],
                      stops: [0.0, 1.0], // 渐变的停止点
                      center: Alignment.center, // 渐变中心
                      radius: 0.5, // 渐变半径
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 216, 219, 231).withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: const Offset(0, 0), // 发光效果没有偏移
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      folderNames[index],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
        ),
      );
    }

    return containers;
  }

  Future<String> _getFirstImageInFolder(String folderPath) async {
    Directory folder = Directory(folderPath);
    if (await folder.exists()) {
      // 获取文件夹中所有文件
      List<FileSystemEntity> files = folder.listSync();
      for (FileSystemEntity file in files) {
        // 检查是否是图片文件（按需扩展）
        if (file is File &&
            (file.path.endsWith('.jpg') || file.path.endsWith('.png'))) {
          return file.path; // 返回找到的第一张图片路径
        }
      }
    }
    return ''; // 如果没有找到图片，返回空字符串
  }
}
