import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:colorgram/colorgram.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:hl_image_picker_android/hl_image_picker_android.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as h2;
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:listview_screenshot/listview_screenshot.dart';
import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/chat_message.dart';
import '../../../services/image_repository_service.dart';
import '../../utils/hero-icons-outline_icons.dart';

class ChatsityViewModel extends BaseViewModel {
  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  final ImageRepository = locator<ImageRepositoryService>();
  void setBottomNavVisible() => ImageRepository.setBottomNavVisible();

  final TextEditingController _textController = TextEditingController();
  TextEditingController get textController => _textController;

  final GlobalKey _shotKey = GlobalKey();
  GlobalKey get shotKey => _shotKey;

  late Box<ChatMessage> _chatBox = Hive.box<ChatMessage>('chatjson');
  Box<ChatMessage> get chatBox => _chatBox;

  List<String> imagePaths = []; // 保存所有图像文件路径
  get imagePathsList => imagePaths;

  @override
  ChatsityViewModel() {
    getAllImagePaths();
    loadData();
    loadbackgroundImage();
    _textController.addListener(initState);
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
        }
      }
    }
  }

  void clearChatBox() async {
    // 清除所有数据
    await _chatBox.clear();
  }

  Map<String, dynamic> jsonMessages = {
    "history": [
      {"role": "user", "content": "地球有多大"},
      {
        "role": "assistant",
        "content": ":item[地球]{ to=\"地球 \" }的直径大约为12,742千米(7,917英里)。"
      },
      {"role": "user", "content": "这个夏天我可以去哪里旅游"}
    ]
  };
  Map<String, dynamic> get jsonMessagesList => jsonMessages;

  void imagePath(String imagePath) async {
    _image = File(imagePath);
    notifyListeners();
  }

  void uimagePath(File? imagePath) async {
    _image = imagePath;
    notifyListeners();
  }

  File? _image;
  File? get image => _image;

  static late CgColor _dominantColor;
  CgColor get dominantColor => _dominantColor;

  static File? _imageBackground;
  File? get imageBackground => _imageBackground;

  final picker = ImagePicker();
  final _picker = HLImagePickerAndroid();
  static List<HLPickerItem> items = [];
  List<HLPickerItem> get itemsList => items;

  static List<HLPickerItem> uitems = [];
  List<HLPickerItem> get uitemsList => uitems;

  List<String> uupath = [];
  List<String> get uu1path => uupath;

  String uuname = 'uuu';
  String get uu1name => uuname;

  bool uupickimage = false;
  bool get uu1pickimage => uupickimage;

  static bool _isgoingpickImage = false;
  bool get isgoingpickImage => _isgoingpickImage; //保证每次打开都是选择后的相片

  bool _isfetching = false;
  bool get isfetching => _isfetching;

  static bool _animating = false;
  bool get animating => _animating;

  static bool _openreply = false;
  bool get openreply => _openreply;

  static String _listenText = '';
  String get listenText => _listenText;

  bool _itemdialogs = false;
  bool get itemdialogs => _itemdialogs;

  static bool _changeUI = false;
  bool get changeUI => _changeUI;

  static bool _chatImage = false;
  bool get chatImage => _chatImage;

  static bool _pickermodel = false;
  bool get pickermodel => _pickermodel;

  bool _chatwithHistory = false;
  bool get chatwithHistory => _chatwithHistory;

  bool _exchange = false;
  bool get exchange => _exchange;

  void UchangeUI() {
    _changeUI = true;
    notifyListeners();
  }

  void EchangeUI() {
    _changeUI = false;
    notifyListeners();
  }

  void scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void showInputDialog(BuildContext context) {
    String folderPrefix = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('输入聊天名称'),
          content: Column(
            children: [
              CupertinoTextField(
                placeholder: '输入名称',
                onChanged: (value) {
                  folderPrefix = value; // 更新输入的文件夹前缀
                },
              ),
              const SizedBox(height: 12.0),
              GestureDetector(
                onTap: UpopenImagePicker, // 点击选择图片
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(Hero_icons_outline.plus, size: 30),
                ),
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: const Text(
                '保存',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                saveName(folderPrefix); // 保存文本和图片路径
                Navigator.pop(context); // 关闭对话框
              },
            ),
            CupertinoDialogAction(
              child: const Text(
                '取消',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context); // 关闭对话框
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedName = prefs.getString('uname'); // 获取存储的数据
    List<String>? storedPath = prefs.getStringList('upath');
    uuname = storedName ?? '';
    uupath = storedPath ?? [];
    notifyListeners();
  }

  void saveName(String ufolderPrefix) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (ufolderPrefix.isNotEmpty) {
      uuname = ufolderPrefix;
      prefs.setString('uname', '$ufolderPrefix'); // 将文本和图片路径存储起来
      debugPrint('Saved name and path: $ufolderPrefix');
      notifyListeners();
    }
    if (uupickimage) {
      prefs.setStringList('upath', uitems.map((e) => e.path).toList());
      List<String>? storedPath = prefs.getStringList('upath');
      uupath = storedPath ?? [];
      uupickimage = false;
      notifyListeners();
    }
    notifyListeners();
  }

  Future<void> UpopenImagePicker() async {
    try {
      final images = await _picker.openPicker(
        cropping: false,
        selectedIds: false ? items.map((e) => e.id).toList() : null,
        pickerOptions: const HLPickerOptions(
          mediaType: MediaType.image,
          enablePreview: true,
          isExportThumbnail: true,
          thumbnailCompressFormat: CompressFormat.jpg,
          thumbnailCompressQuality: 0.9,
          maxSelectedAssets: 12,
          usedCameraButton: true,
          numberOfColumn: 4,
          isGif: true,
        ),
      );

      uitems = images;
      uupickimage = true;
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> UopenCamera() async {
    _isgoingpickImage = true;
    try {
      final image = await _picker.openCamera(
        cropping: false,
        cameraOptions: const HLCameraOptions(
          cameraType: CameraType.image,
          recordVideoMaxSecond: 40,
          isExportThumbnail: true,
          thumbnailCompressFormat: CompressFormat.jpg,
          thumbnailCompressQuality: 0.9,
        ),
      );

      items = [image];
      await changechatwithHistory();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> UopenImagePicker() async {
    _isgoingpickImage = true;
    try {
      final images = await _picker.openPicker(
        cropping: false,
        selectedIds: false ? items.map((e) => e.id).toList() : null,
        pickerOptions: const HLPickerOptions(
          mediaType: MediaType.image,
          enablePreview: true,
          isExportThumbnail: true,
          thumbnailCompressFormat: CompressFormat.jpg,
          thumbnailCompressQuality: 0.9,
          maxSelectedAssets: 12,
          usedCameraButton: true,
          numberOfColumn: 3,
          isGif: true,
        ),
      );

      items = images;
      await changechatwithHistory();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  String getRandomUserAgent() {
    // 生成随机用户代理字符串
    final userAgents = [
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36',
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15',
      'Mozilla/5.0 (Linux; Android 10; Pixel 3 XL Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Mobile Safari/537.36'
    ];
    return userAgents[Random().nextInt(userAgents.length)];
  }

  Future<void> uexchange() async {
    if (_exchange == false) {
      _exchange = true;
    } else {
      _exchange = false;
    }

    notifyListeners();
  }

  Future<void> ureplychange() async {
    if (_openreply == true) {
      _openreply = false;
    }
    notifyListeners();
  }

  void initState() {
    // 监听 _textController 的文本变化
    _listenText = _textController.text;
    // 监听滚动事件
    // scrollController.addListener(() {
    //   // 检查当前滚动位置和上一次的滚动位置
    //   if (scrollController.position.userScrollDirection ==
    //       ScrollDirection.reverse) {
    //     // 向下滑动
    //     setBottomNavVisible();
    //   } else if (scrollController.position.userScrollDirection ==
    //       ScrollDirection.forward) {
    //     // 向上滑动
    //     setBottomNavVisible();
    //   }
    // });
    if (_listenText.length >= 1 && _listenText.substring(0, 1) == '/') {
      // 当前两个字符是 '/@' 时，显示回复框
      if (!_openreply) {
        _openreply = true; // 设置为 true 显示回复框
      }
    } else {
      if (_openreply) {
        _openreply = false;
      }
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _textController.removeListener(initState);
    scrollController.dispose();
    super.dispose();
  }

  Future<void> uitemdialogs() async {
    if (_itemdialogs == false) {
      _itemdialogs = true;
    } else {
      Mitemdialogs();
      _itemdialogs = true;
    }
    notifyListeners();
  }

  Future<void> Mitemdialogs() async {
    if (_itemdialogs == true) {
      _itemdialogs = false;
    }
    notifyListeners();
  }

  Future<void> changechatwithHistory() async {
    if (_chatwithHistory == false) {
      _chatwithHistory = true;
    } else {
      _chatwithHistory = false;
    }

    notifyListeners();
  }

  Future<void> UchatwithHistory(String text) async {
    final url = Uri.parse('https://delve.a9.io/retrieve');

    final message = ChatMessage(isSender: true, text: text, imagePath: null);
    // 将发送的消息构建为 JSON 格式并存储到 Hive
    _chatBox.add(message);

    _isfetching = false;

    // 从 Hive 中获取所有消息
    List<ChatMessage> messages = _chatBox.values.toList();
    // 转换消息为 JSON 格式
    jsonMessages = convertMessagesToJsonWithHistory(messages);

    // print(jsonMessages);

    // 发送POST请求
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'User-Agent': getRandomUserAgent(), // 伪装用户代理
        },
        body: jsonEncode(jsonMessages), // 将Dart对象转换为JSON字符串
      );

      if (response.statusCode == 200) {
        // 请求成功
        final responseBody = utf8.decode(response.bodyBytes); // 使用UTF-8解码

        String cleanText(String input) {
          // 处理 :item[...] { to="..." } 的情况
          final pattern1 = RegExp(r':item\[(.*?)\]\{ to=".*?" \}');
          String cleanedText = input.replaceAllMapped(pattern1, (match) {
            return match.group(1)!;
          });

          // 处理 item[...] 的情况
          final pattern2 = RegExp(r'item\[(.*?)\]');
          cleanedText = cleanedText.replaceAllMapped(pattern2, (match) {
            return match.group(1)!;
          });

          return cleanedText;
        }

        final cleanedResponse = cleanText(responseBody);

        final message = ChatMessage(
          isSender: false,
          text: cleanedResponse,
          imagePath: null,
        );
        // 将接收到的消息存储到 Hive
        _chatBox.add(message);
        _isfetching = true;
        notifyListeners();
        print('Response data: $responseBody');
      } else {
        _isfetching = false;
        notifyListeners();
        // 请求失败
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Map<String, dynamic> convertMessagesToJsonWithHistory(
      List<ChatMessage> messages) {
    List<Map<String, dynamic>> jsonList = [];

    for (var message in messages) {
      Map<String, dynamic> jsonItem;

      if (message.isSender) {
        jsonItem = {
          "role": "user",
          "content": message.text,
        };
      } else {
        jsonItem = {
          "role": "assistant",
          "content": message.text,
        };
      }

      jsonList.add(jsonItem);
    }

    return {
      "history": jsonList,
    };
  }

  Future<Map<String, dynamic>?> sendmessage(
      [String query = 'How are you doing today?']) async {
    final message = ChatMessage(isSender: true, text: query, imagePath: null);
    // 将发送的消息构建为 JSON 格式并存储到 Hive
    _chatBox.add(message);

    _isfetching = false;

    final apiUrl =
        'https://mylinktoa.globeapp.dev/linka?q=${Uri.encodeComponent(query)}';
    print(apiUrl);

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        print(response.body);
        final message = ChatMessage(
          isSender: data['isSender'],
          text: data['text'],
          imagePath: null,
        );
        // 将接收到的消息存储到 Hive
        _chatBox.add(message);

        // // 存储数据
        // await jsonCacheMem.refresh('chattext', data);

        // 获取缓存信息并打印
        // final cachedInfo = await jsonCacheMem.value('chattext');
        // final cachedJson = jsonEncode(cachedInfo);
        // print(cachedJson);

        _isfetching = true; // Reset fetching state
        notifyListeners();
      } else {
        _isfetching = false; // Reset fetching state in case of error
        notifyListeners();
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      _isfetching = false; // Reset fetching state in case of exception
      notifyListeners();
      print('An error occurred: $e');
      throw Exception('Failed to load data: $e');
    }
    return null;
  }

  Future<void> loadbackgroundImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedName = prefs.getString('backgroundImage'); // 获取存储的数据
    _imageBackground = File(storedName!);
    notifyListeners();
  }

  Future<void> pickImageforbackground() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      prefs.setString('backgroundImage', pickedFile.path); // 将文本和图片路径存储起来
      _imageBackground = File(pickedFile.path);
      notifyListeners();
      print(_imageBackground!.path);
      print(_imageBackground);
    }
    notifyListeners();
  }

  Future<void> chatwithImage(String text, BuildContext context) async {
    if (_image == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('请添加图片'),
            // content: const Text('当前没有任何图片可以删除。'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('取消'),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('确定'),
              ),
            ],
          );
        },
      );
      return; // 在这里结束执行
    }
    final message = ChatMessage(
        isSender: true, text: text, imagePath: _image?.path); // 存储图像路径
    // 将发送的消息构建为 JSON 格式并存储到 Hive
    _chatBox.add(message);

    _isfetching = false;

    // 从 Hive 中获取图像路径
    List<ChatMessage> messages = _chatBox.values.toList();
    String? imagePath = messages.last.imagePath;

    if (imagePath != null) {
      // 创建 FileImage
      FileImage imageProvider = FileImage(File(imagePath));

      // 提取图像中的颜色
      List<CgColor> colorList = await extractColor(imageProvider, 10);

      if (colorList.isNotEmpty) {
        // 获取最突出的颜色
        _dominantColor = colorList.first;
        _animating = true;
        print('好了');
        notifyListeners();
      }
    }

    final request = http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://mylinktoa.globeapp.dev/linkb?q=${Uri.encodeComponent(text)}'),
    );

    // request.fields['q'] = _textController.text;

    // 获取文件的 MIME 类型
    final mimeTypeData =
        lookupMimeType(_image!.path, headerBytes: [0xFF, 0xD8])?.split('/');

    // 添加图片数据
    request.files.add(await http.MultipartFile.fromPath(
      'file', // 文件名
      _image!.path,
      contentType: h2.MediaType(mimeTypeData![0], mimeTypeData[1]),
    ));

    // 发送请求并处理响应
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseData = await http.Response.fromStream(response);
      final responseBody = jsonDecode(responseData.body);
      final message = ChatMessage(
        isSender: false,
        text: responseBody['generated_text'],
        imagePath: null,
      );
      // 将接收到的消息存储到 Hive
      _chatBox.add(message);
      _isfetching = true;
      _image = null;
      // Reset fetching state
      notifyListeners();
    } else {
      _isfetching = false; // Reset fetching state in case of error
      notifyListeners();
      print('Upload failed with status: ${response.statusCode}');
    }
  }

  void choosechatmodel(BuildContext context) {
    if (_chatImage == false) {
      // 如果数据库已经为空，提示用户
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('启用图像聊天模式'),
            content: Row(
              children: [
                const Text('双击图标可以切换图片获取方式'),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffF6E7B0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '⭐️',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('取消', style: TextStyle(color: Colors.black)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  _chatImage = true;
                  notifyListeners();
                  Navigator.of(context).pop();
                },
                child: const Text('确定', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('当前处于图像聊天模式，检测到是否关闭?'),
            // content:
            // const Text('您正在尝试删除一张重要的图片。此操作不可撤销，删除后将无法恢复。请确认您是否真的要删除这张图片。'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(); // 关闭对话框
                },
                child: const Text('取消', style: TextStyle(color: Colors.black)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  _chatImage = false;
                  notifyListeners();
                  Navigator.of(context).pop(); // 关闭对话框
                },
                child: const Text('确定', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    }
  }

  void choosepicker(BuildContext context) {
    if (_pickermodel == false) {
      // 如果数据库已经为空，提示用户
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('请求获取本机照片'),
            content: const Text('双击可以切换图片获取方式'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('取消', style: TextStyle(color: Colors.black)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  _pickermodel = true;
                  UopenImagePicker();
                  notifyListeners();
                  Navigator.of(context).pop();
                },
                child: const Text('确定', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('请求获取本机相机照片'),
            content: const Text('双击可以切换图片获取方式'),
            // content:
            // const Text('您正在尝试删除一张重要的图片。此操作不可撤销，删除后将无法恢复。请确认您是否真的要删除这张图片。'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(); // 关闭对话框
                },
                child: const Text('取消', style: TextStyle(color: Colors.black)),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  _pickermodel = false;
                  UopenCamera();
                  notifyListeners();
                  Navigator.of(context).pop(); // 关闭对话框
                },
                child: const Text('确定', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    }
  }

  void onScreenshot() async {
    EasyLoading.show(status: '正在创建截图，请勿操作');
    var context = _shotKey.currentContext!;
    WidgetShotRenderRepaintBoundary repaintBoundary =
        context.findRenderObject() as WidgetShotRenderRepaintBoundary;
    Uint8List jpgBytes;
    bool isFirstUpdate = true; // 状态标记

    try {
      jpgBytes = await repaintBoundary.screenshotJpg(
        backgroundColor: Colors.white,
        workerName: 'imageMergeTransform',
        onProcess: (current, total) {
          if (current == 0 && isFirstUpdate) {
            EasyLoading.show(status: '正在合并截图，请稍后');
            isFirstUpdate = false; // 更新状态
          } else if (current > 0) {
            EasyLoading.showProgress(current / total,
                status: '正在创建截图，请稍后, $current/$total');
          }
        },
      );
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError('生成截图失败: ${e.toString()}');
      return;
    }

    try {
      if (Platform.isAndroid || Platform.isIOS) {
        // 在 Android 或 iOS 上保存图片到相册
        await ImageGallerySaverPlus.saveImage(jpgBytes,
            quality: 100,
            name: '🎉🎉✨✨✨_${DateTime.now().millisecondsSinceEpoch}.png');
        EasyLoading.dismiss();
        EasyLoading.showSuccess('截图已保存至相册🎉🎉');
      } else if (Platform.isWindows) {
        // 在 Windows 上保存图片到桌面
        Directory desktopDir = await _getWindowsDesktopPath();
        String filePath =
            '${desktopDir.path}\\${DateTime.now().millisecondsSinceEpoch}.png';
        File file = File(filePath);
        await file.writeAsBytes(jpgBytes);
        EasyLoading.dismiss();
        EasyLoading.showSuccess('截图已保存至桌面🎉🎉');
      } else {
        EasyLoading.dismiss();
        EasyLoading.showError('当前平台不支持截图保存');
      }
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError('保存截图失败: ${e.toString()}');
    }
  }

// 获取 Windows 桌面路径
  Future<Directory> _getWindowsDesktopPath() async {
    String desktopPath = '${Platform.environment['USERPROFILE']}\\Desktop';
    return Directory(desktopPath);
  }
}
