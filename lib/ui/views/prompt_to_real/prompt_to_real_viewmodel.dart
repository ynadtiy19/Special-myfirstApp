import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';
import 'package:toastification/toastification.dart';
import 'package:typeid/typeid.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_data.dart';
import '../../../services/image_repository_service.dart';
import '../../utils/hero-icons-outline_icons.dart';

class PromptToRealViewModel extends ReactiveViewModel {
  final TextEditingController _query = TextEditingController();
  TextEditingController get query => _query;

  final ImageRepository = locator<ImageRepositoryService>();
  Box<ImageData> get uuimageBox => ImageRepository.imagesBox;

  @override
  List<ListenableServiceMixin> get listenableServices => [
        ImageRepository,
      ];

  List<String> get _folderNames => ImageRepository.folderNames;
  String? _selectedFolder; // 用来保存选中的文件夹路径

  bool? instaAction = false;
  get instaAction1 => instaAction;

  String singleimgPath = '';
  get singleimgPath1 => singleimgPath;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  @override
  PromptToRealViewModel() {
    _focusNode.unfocus();
    print('初始化PromptToRealViewModel');
    ImageRepository.getFolderNames();
    print(_folderNames);
    notifyListeners();
  }

  @override
  void dispose() {
    // 销毁FocusNode，防止内存泄漏
    _focusNode.dispose();
    super.dispose();
  }

  final String apiUrl = 'https://api-key.fusionbrain.ai/';

  late int _likecount = 20;
  int get likecount => _likecount;

  void setlikecount() {
    _likecount++;
    notifyListeners();
  }

  static bool _isInitialLoading = false; // 初始加载标志位
  static bool get isInitialLoading => _isInitialLoading;

  void setInitialLoading() {
    _isInitialLoading = false;
    notifyListeners();
  }

  static bool _isLoading = false;
  static bool get isloading => _isLoading;

  bool _isGenerating = false;
  bool _loading = false;

  bool get isGenerating => _isGenerating;
  bool get loading => _loading;

  static List<String> _images = [];
  static List<String> get images => _images;

  late int _currentIndex;
  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // 通知监听器数据已更新
  }

  void initThree() {
    _isGenerating = true;
    _loading = true;
    _images = [];
    notifyListeners();
  }

  void finallinit() {
    _isGenerating = false;
    _loading = false;
    notifyListeners();
  }

  void isloadingT() {
    _isLoading = true;
    _isInitialLoading = true;
    notifyListeners();
  }

  void isloadingF() {
    // _isInitialLoading = false;
    _isLoading = false;

    notifyListeners();
  } //顺序至关重要

  Future imagetohive(List<String> images) async {
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(currentDate);
    final imageDataWithDate = images
        .map((image) => {
              'data': image,
              'date': formattedDate,
            })
        .toList();

    await ImageRepository.saveImages(imageDataWithDate);
  }

  Future<String> Appdocpath() async {
    // 获取文档目录路径
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    return appDocPath;
  }

  Future<void> saveImageFromBase64(
      BuildContext context, String base64String) async {
    // 解码 Base64 字符串为字节流
    Uint8List imageData = base64Decode(base64String);

    // 截取 base64String 的前 24 位，并将其转换为合法的 TypeId 前缀（仅包含小写字母）
    String prefix = base64String
        .substring(0, 24)
        .toLowerCase() // 转换为小写字母
        .replaceAll(RegExp(r'[^a-z]'), ''); // 移除所有非字母字符

    // 如果生成的前缀为空，使用默认前缀
    if (prefix.isEmpty) {
      prefix = 'image';
    }

    // 使用截取的前缀生成唯一的文件名
    final typeId = TypeId.generate(prefix); // 使用 base64 前缀
    String fileName = '$typeId.jpg'; // 使用 TypeId 生成的值作为文件名

    // 获取应用程序的文档目录
    String appDocPath = await Appdocpath();

    instaAction = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return CupertinoAlertDialog(
              title: const Text('加入到创建的文件夹中'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0, // 每个chip之间的水平间距
                    runSpacing: 8.0, // 每行之间的垂直间距
                    children: _folderNames.map(
                      (folderName) {
                        // 判断是否是选中的文件夹
                        bool isSelected = _selectedFolder == folderName;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: FilterChip(
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(folderName),
                                if (isSelected) ...[
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.check, // 选中后显示√
                                    color: Colors.green,
                                  ),
                                ]
                              ],
                            ),
                            backgroundColor: isSelected
                                ? Colors.lightGreen[100]
                                : Colors.grey[200],
                            onSelected: (bool value) {
                              setState(() {
                                // 更新选中状态
                                _selectedFolder = folderName; //图像文件名称
                              });
                            }, // 选中时变色
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
              actions: [
                CupertinoDialogAction(
                  onPressed: () async {
                    if (_selectedFolder != null) {
                      // 使用选中的文件夹路径执行存储操作
                      String? folderPath = _selectedFolder;

                      // Check if the selected folder is "收藏"
                      if (folderPath == '收藏') {
                        singleimgPath =
                            appDocPath; // Directly set the path to appDocPath
                      } else {
                        singleimgPath =
                            '$appDocPath/uuuimages/$folderPath'; // Use the selected folder path
                      }

                      // 创建文件并写入图像数据
                      File file = File('$singleimgPath/$fileName');
                      await file.writeAsBytes(imageData);

                      print('图像已保存到: $singleimgPath/$fileName');

                      notifyListeners();
                      toastification.show(
                        context: context,
                        type: ToastificationType.success,
                        style: ToastificationStyle.flatColored,
                        title: const Text("图片已保存进相册"),
                        description:
                            const Text("Photo has been saved to the album."),
                        alignment: Alignment.bottomCenter,
                        autoCloseDuration: const Duration(milliseconds: 2350),
                        primaryColor: Colors.green,
                        icon: const Icon(Hero_icons_outline.check_circle),
                        borderRadius: BorderRadius.circular(15.0),
                        applyBlurEffect: true,
                      );
                      Navigator.of(context).pop(true);
                    }
                  },
                  child: const Text(
                    '确定',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop(false);
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
      },
    );
  }

  Future<void> deleteAllImageFiles() async {
    // 获取应用程序的文档目录
    String appDocPath = await Appdocpath();

    // 遍历该目录下的所有文件
    Directory dir = Directory(appDocPath);
    List<FileSystemEntity> entities = dir.listSync(); // 获取所有文件和目录

    // 遍历文件并删除图像文件
    for (var entity in entities) {
      if (entity is File) {
        String filePath = entity.path;
        // 检查文件扩展名是否是图像格式（如 .png, .jpg, .jpeg, .gif 等）
        if (filePath.endsWith('.png') ||
            filePath.endsWith('.jpg') ||
            filePath.endsWith('.jpeg') ||
            filePath.endsWith('.gif')) {
          try {
            await entity.delete(); // 删除文件
            print('删除文件: $filePath');
          } catch (e) {
            print('删除文件失败: $filePath, 错误: $e');
          }
        }
      }
    }

    print('所有图像文件已删除');
  }

  Future generateImagesFromMultipleSources(context, query) async {
    FocusScope.of(context).unfocus();
    isloadingT();
    initThree();

    const apiDetails = [
      {
        'apiKey': '07D3E1A2D95051EF76123A2CA8C458E3',
        'secretKey': '7F3D050F8656640F047F8E67BA8B5E45'
      },
      {
        'apiKey': 'EF38DA78456DBFEC74F1FB1303291386',
        'secretKey': '14A288FFF6308449213771FA128B2B04'
      },
      {
        'apiKey': '6F970D2979C05CBBDC1A5E7DCAE0613D',
        'secretKey': '3008AF5098CE485EF044E4DE0533F5AF'
      },
      {
        'apiKey': '7769669C84E1A656EBA97565C25E47ED',
        'secretKey': 'CAFDE8DF13BA26EB087FEADEF4BC1D94'
      },
    ];

    try {
      final futures = apiDetails.expand((details) {
        return List.generate(2, (_) {
          return _generateSingleImage(
            details['apiKey']!,
            details['secretKey']!,
            (images) {
              _images.addAll(images);
              notifyListeners();
              imagetohive(images);
            },
          );
        });
      }).toList();

      await Future.wait(futures);
    } catch (e) {
      print('Error in for loop: $e');
    } finally {
      isloadingF();
      print('isloadingF');
      finallinit();
      print('_isInitialLoadingF');
    }
  }

  Future<void> _generateSingleImage(
    String apiKey,
    String secretKey,
    Function(List<String>) updateImages,
  ) async {
    final prompt = _query.text;
    if (prompt.isEmpty) {
      print('Prompt is empty');
      return;
    }

    // 随机延迟
    final random = Random();
    await Future.delayed(Duration(seconds: random.nextInt(5) + 1));

    try {
      // 获取模型 ID
      final modelResponse = await http.get(
        Uri.parse(apiUrl + 'key/api/v1/models'),
        headers: {
          'X-Key': 'Key $apiKey',
          'X-Secret': 'Secret $secretKey',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br, zstd',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'User-Agent':
              'Mozilla/5.0 (Linux; Android 11; Pixel 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36',
          'Origin': 'https://mydiumtify.globeapp.dev',
          'Referer': 'https://mydiumtify.globeapp.dev/',
          'sec-ch-ua':
              '"Chromium";v="89", "Google Chrome";v="89", "Not:A-Brand";v="99"',
          'sec-ch-ua-mobile': '?1',
          'sec-ch-ua-platform': '"Android"',
        },
      );

      if (modelResponse.statusCode != 200) {
        print('Error getting model ID: ${modelResponse.statusCode}');
        throw Exception('Failed to load models');
      }

      final modelData = jsonDecode(modelResponse.body) as List;
      print('Model data: $modelData'); // Log the model data

      if (modelData.isEmpty || modelData[0]['id'] == null) {
        throw Exception('Model ID is not found or no models found');
      }
      final modelId = modelData[0]['id'].toString(); // Convert ID to string

      // 生成图像
      final params = {
        'type': 'GENERATE',
        'numImages': 1,
        'width': 1024,
        'height': 1024,
        'generateParams': {'query': prompt},
      };

      final request = http.MultipartRequest(
        'POST',
        Uri.parse(apiUrl + 'key/api/v1/text2image/run'),
      )
        ..fields['model_id'] = modelId
        ..files.add(http.MultipartFile.fromString(
          'params',
          jsonEncode(params),
          contentType: MediaType('application', 'json'),
        ))
        ..headers.addAll({
          'X-Key': 'Key $apiKey',
          'X-Secret': 'Secret $secretKey',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br, zstd',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'User-Agent':
              'Mozilla/5.0 (Linux; Android 11; Pixel 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36',
          'Origin': 'https://mydiumtify.globeapp.dev',
          'Referer': 'https://mydiumtify.globeapp.dev/',
          'sec-ch-ua':
              '"Chromium";v="89", "Google Chrome";v="89", "Not:A-Brand";v="99"',
          'sec-ch-ua-mobile': '?1',
          'sec-ch-ua-platform': '"Android"',
        });

      final generateResponse = await request.send();
      final generateData = await http.Response.fromStream(generateResponse);

      final responseBody = generateData.body;
      print('Generate response: $responseBody'); // Log the generate response

      if (generateData.statusCode != 201) {
        throw Exception('Failed to generate image: ${generateData.statusCode}');
      }

      final generateJson =
          jsonDecode(generateData.body) as Map<String, dynamic>;
      if (generateJson['uuid'] is! String) {
        throw Exception('UUID is not a string');
      }

      final uuid = generateJson['uuid'] as String;

      // 检查生成状态
      int attempts = 10;
      const delay = Duration(seconds: 10);
      List<String> images = [];

      while (attempts > 0) {
        final statusResponse = await http.get(
          Uri.parse(apiUrl + 'key/api/v1/text2image/status/$uuid'),
          headers: {
            'X-Key': 'Key $apiKey',
            'X-Secret': 'Secret $secretKey',
            'User-Agent': 'Custom User-Agent ${random.nextInt(1000)}'
          },
        );

        if (statusResponse.statusCode != 200) {
          throw Exception('Failed to get status');
        }

        final statusData =
            jsonDecode(statusResponse.body) as Map<String, dynamic>;

        if (statusData['status'] == 'DONE') {
          if (statusData['images'] is! List) {
            throw Exception('Images data is not a list');
          }
          images = List<String>.from(statusData['images'] as List);
          break;
        }

        attempts -= 1;
        await Future.delayed(delay);
      }

      updateImages(images);
    } catch (error) {
      print('Error: $error');
    }
  }
}
