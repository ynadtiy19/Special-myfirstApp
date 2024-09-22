import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:json_path/json_path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';

class PinterestViewModel extends BaseViewModel {
  static late final List<Map<String, dynamic>> images = [
    {
      'title': 'Hello, World!',
      'image': {
        'width': 200,
        'height': 200,
        'url':
            'https://i.pinimg.com/originals/63/07/1c/63071c93720644a2fb525b9315165d07.jpg',
      },
    },
  ];

  static final List<String> uimageUrls = [
    'https://mydiumtify.globeapp.dev/pinterestImage?isImage=true&url=https://i.pinimg.com/originals/4b/1f/df/4b1fdf8f5958423d5f0ce051595dc984.jpg'
  ];
  List<String> get imageUrls => uimageUrls;
  List<Map<String, dynamic>> get grideImages =>
      images; //viewModel.grideImages[index]['image'];请求使用https://mydiumtify.globeapp.dev/pinterestImage?isImage=false&url=https://i.pinimg.com/originals/4b/1f/df/4b1fdf8f5958423d5f0ce051595dc984.jpg

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
        'https://mydiumtify.globeapp.dev/pinterest?query=${Uri.encodeComponent(query)}&numberOfImages=5';

    try {
      // 请求数据
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // 解析 JSON
        final json = jsonDecode(response.body);

        final jsonPathTitle = JsonPath(r'$[*].title').read(json);
        final jsonPathImage = JsonPath(r'$[*].image').read(json);

        for (var i = 0; i < jsonPathTitle.length; i++) {
          final title = jsonPathTitle.elementAt(i).value;
          final image =
              jsonPathImage.elementAt(i).value as Map<String, dynamic>?; // 强制转换

          if (image != null) {
            // 检查 image 是否为 null
            images.add({
              'title': title,
              'image': {
                'width': image['width'],
                'height': image['height'],
                'url': image['url'],
              }
            });
          }
        }
        uimageUrls.addAll(images.map((image) {
          final originalUrl = image['image']['url'] as String;
          return 'https://mydiumtify.globeapp.dev/pinterestImage?isImage=true&url=$originalUrl';
        }));
        print(uimageUrls);
        notifyListeners();
        print(images);
      } else {
        print('请求失败，状态码: ${response.statusCode}');
      }
    } catch (e) {
      print('发生错误: $e');
    }
  }
}
