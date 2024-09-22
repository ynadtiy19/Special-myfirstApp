import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:json_path/json_path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class PinterestViewModel extends BaseViewModel {
  static List<Map<String, dynamic>> uimageUrls = [];
  List<Map<String, dynamic>> get imageUrls => uimageUrls;

  @override
  PinterestViewModel() {
    print('初始化PinterestViewModel');
    loadData();
  }
  Future<void> singleImageToGallery(String url) async {
    String base64Image = '';
    try {
      final response = await http.get(Uri.parse(
          'https://mydiumtify.globeapp.dev/pinterestImage?isImage=false&url=$url'));

      if (response.statusCode == 200) {
        base64Image = response.body; // 获取 Base64 字符串
        print('接收成功');
        print(base64Image);
      } else {
        print('Request failed with status: ${response.statusCode}.');
        return; // 退出函数
      }
    } catch (e) {
      print('Error: $e');
      return; // 退出函数
    }

    // Request storage permissions
    var status = await Permission.storage.request();
    if (status.isGranted) {
      // Decode Base64 string to bytes
      final bytes = base64Decode(base64Image);

      // Save the image to the gallery
      await ImageGallerySaverPlus.saveImage(
        bytes,
        quality: 100,
        name: '云雨之洲✨✨✨_${DateTime.now().millisecondsSinceEpoch}.png',
      );
      print('Image saved to gallery');
    } else {
      print("Permission Denied");
    }
  }

  Future<void> fetchAndParseData(String query) async {
    final url =
        'https://mydiumtify.globeapp.dev/pinterest?query=$query&numberOfImages=5';

    print(url);

    try {
      // 请求数据
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // 解析 JSON
        final json = jsonDecode(response.body);

        final jsonPathTitle = JsonPath(r'$[*].title').read(json);
        final jsonPathImage = JsonPath(r'$[*].image').read(json);

        // // 清空 uimageUrls 列表，以便重新填充
        // uimageUrls.clear();

        for (var i = 0; i < jsonPathTitle.length; i++) {
          final title = jsonPathTitle.elementAt(i).value;
          final image =
              jsonPathImage.elementAt(i).value as Map<String, dynamic>?; // 强制转换

          if (image != null) {
            // 直接添加到 uimageUrls
            uimageUrls.add({
              'original': image['url'],
              'title': title,
              'width': image['width'],
              'height': image['height'],
              'url':
                  'https://mydiumtify.globeapp.dev/pinterestImage?isImage=true&url=${image['url']}',
            });
          }
        }

        await saveLast14Urls();
        notifyListeners();
      } else {
        print('请求失败，状态码: ${response.statusCode}');
      }
    } catch (e) {
      print('发生错误: $e');
    }
  }

  Future<void> saveLast14Urls() async {
    if (uimageUrls.isNotEmpty) {
      // 获取最后 14 个项目
      final last14Items = uimageUrls.length > 14
          ? uimageUrls.sublist(uimageUrls.length - 14)
          : uimageUrls;

      // 获取 SharedPreferences 实例
      final prefs = await SharedPreferences.getInstance();

      // 将最后 14 个项目保存到本地存储，转换为 JSON 字符串
      await prefs.setStringList(
        'beautify14Images',
        last14Items.map((item) => jsonEncode(item)).toList(),
      );

      print('已保存最后14个项目: $last14Items');
    }
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? storedJson = prefs.getStringList('beautify14Images');
    if (storedJson != null) {
      uimageUrls = storedJson
          .map((jsonStr) => jsonDecode(jsonStr) as Map<String, dynamic>)
          .toList();
    } else {
      uimageUrls = [];
    }
    notifyListeners();
  }

  Future<void> clearBeautify14Images() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // 清除 'beautify14Images' 的所有数据
    await prefs.remove('beautify14Images');
    uimageUrls.clear();

    print('已清除 beautify14Images 数据');
  }

  void deleteGalleryImage(BuildContext context) {
    if (uimageUrls.isEmpty) {
      // 如果数据库已经为空，提示用户
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('无图片可删除'),
            content: const Text('当前没有任何图片可以删除。'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  '确定',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          );
        },
      );
      return;
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('画廊中的图片将被删除'),
          content: const Text('此操作不可撤销，删除后将无法恢复。请确认您是否真的要删除这张图片。'),
          actions: [
            CupertinoDialogAction(
              onPressed: () async {
                await clearBeautify14Images();
                notifyListeners();
                Navigator.of(context).pop(); // 关闭对话框
              },
              child: const Text(
                '确定',
                style: TextStyle(color: Colors.black),
              ),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
              },
              child: const Text(
                '取消',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  } //删除所有图片
}
