// import 'dart:convert';
//
// import 'package:brotli/brotli.dart';
// import 'package:colorgram/colorgram.dart';
// import 'package:fast_cached_network_image/fast_cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:high_q_paginated_drop_down/high_q_paginated_drop_down.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
// import 'package:json_path/json_path.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:primer_progress_bar/primer_progress_bar.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:stacked/stacked.dart';
//
// class Scenery {
//   final String keyword;
//   final String? volume;
//
//   Scenery({required this.keyword, this.volume});
//
//   factory Scenery.fromJson(Map<String, dynamic> json) {
//     return Scenery(
//       keyword: json['keyword'],
//       volume: json['volume'],
//     );
//   }
// }
//
// class PinterestViewModel extends BaseViewModel with WidgetsBindingObserver {
//   static List<Map<String, dynamic>> uimageUrls = [];
//   List<Map<String, dynamic>> get imageUrls => uimageUrls;
//
//   static Map<int, String> _translatedTitles = {};
//   static Map<int, String> get titles => _translatedTitles;
//
// // 在你的视图模型中，定义 segments 为一个 Map<int, List<Segment>>
//   static Map<int, List<Segment>> segments = {}; // 变化的地方
//
//   Future<void> extractColorsFromCachedImages(List<dynamic> imageUrls) async {
//     for (int urlIndex = 0; urlIndex < imageUrls.length; urlIndex++) {
//       String url = imageUrls[urlIndex];
//
//       try {
//         // 获取图像数据（缓存或网络）
//         Uint8List? imageData = await getCachedOrFetchImage(url);
//
//         if (imageData == null) {
//           print('Failed to get image data for URL: $url');
//           continue; // 继续处理下一个 URL
//         }
//
//         // 提取颜色并更新 segments
//         await extractColorsFromImage(urlIndex, imageData);
//       } catch (e) {
//         print('Error processing image for URL $url: $e');
//       }
//     }
//
//     print('提取完成，段数：${segments.length}');
//     notifyListeners();
//   }
//
//   /// 获取缓存的图像数据，如果没有则从网络获取并缓存
//   Future<Uint8List?> getCachedOrFetchImage(String url) async {
//     // 检查缓存
//     bool isCached = await FastCachedImageConfig.isCached(imageUrl: url);
//     if (isCached) {
//       print('Loaded image from cache: $url');
//       return await FastCachedImageConfig.getCachedImageData(imageUrl: url);
//     }
//
//     // 从网络获取数据
//     try {
//       final response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         Uint8List imageData = response.bodyBytes;
//
//         // 缓存数据
//         await FastCachedImageConfig.saveImage(url, imageData);
//
//         print('Image cached successfully for URL: $url');
//         return imageData;
//       } else {
//         print('Failed to fetch image: HTTP ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('Error fetching image from network: $e');
//       return null;
//     }
//   }
//
//   /// 提取颜色并更新 `segments`
//   Future<void> extractColorsFromImage(int urlIndex, Uint8List imageData) async {
//     // 创建 MemoryImage 提供者
//     MemoryImage imageProvider = MemoryImage(imageData);
//
//     // 提取颜色
//     List<CgColor> colorList =
//         await extractColor(imageProvider, 10); // 提取 10 种颜色
//
//     // 初始化 `segments` 列表（如果尚未初始化）
//     segments.putIfAbsent(urlIndex, () => []);
//
//     // 只添加新提取的颜色，保持原有的颜色不变
//     List<Segment> currentSegments = segments[urlIndex]!;
//
//     // 转换颜色
//     String getHexColor(Color color) {
//       return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
//     }
//
//     for (CgColor color in colorList) {
//       if (currentSegments.length < 10) {
//         Color segmentColor = Color.fromARGB(255, color.r, color.g, color.b);
//
//         // 获取十六进制颜色代码
//         String hexColor = getHexColor(segmentColor);
//
//         currentSegments.add(Segment(
//           value: 10, // 根据需要调整这个值
//           color: segmentColor,
//           label: Text("$hexColor"),
//         ));
//       } else {
//         break; // 如果已经有10个颜色，则停止添加
//       }
//     }
//
//     // 更新 segments
//     segments[urlIndex] = currentSegments;
//   }
//
//   late String keyword = 'winter';
//   String get uquery => keyword;
//
//   static Map<int, bool> _translationEnabled = {};
//   static Map<int, bool> get translationEnabled => _translationEnabled;
//
//   void changedquery(String value) {
//     keyword = value;
//     notifyListeners();
//   }
//
//   // Future<void> extractColorsFromCachedImages(List<String> imageUrls) async {
//   //   segments.clear(); // 清空之前的段
//   //   for (String url in imageUrls) {
//   //     try {
//   //       // 从缓存中获取图片文件
//   //       File? cachedImageFile = await DefaultCacheManager().getSingleFile(url);
//   //       if (!cachedImageFile.existsSync()) {
//   //         print('No cached image found for URL: $url');
//   //         continue;
//   //       }
//   //
//   //       // 读取缓存图片的字节数据
//   //       final bytes = await cachedImageFile.readAsBytes();
//   //
//   //       // 使用字节数据创建图像提供者
//   //       Uint8List imageData = Uint8List.fromList(bytes);
//   //       FileImage imageProvider = FileImage(cachedImageFile);
//   //
//   //       // 提取图像中的颜色
//   //       List<CgColor> colorList =
//   //           await extractColor(imageProvider, 10); // 提取 10 种颜色
//   //       if (colorList.isNotEmpty) {
//   //         for (int i = 0; i < colorList.length; i++) {
//   //           CgColor color = colorList[i];
//   //           segments[segments.length] = Segment(
//   //             value: 10, // 根据需要调整这个值
//   //             color: Color.fromARGB(255, color.r, color.g, color.b),
//   //             label: Text("Color ${segments.length}"), // 添加标签
//   //           );
//   //         }
//   //         // 遍历 colorList，将每个颜色都添加到 segments 列表中
//   //         // for (CgColor color in colorList) {
//   //         //   segments.add(Segment(
//   //         //     value: 10, // 根据需要调整这个值
//   //         //     color: Color.fromARGB(
//   //         //       255,
//   //         //       color.r,
//   //         //       color.g,
//   //         //       color.b,
//   //         //     ),
//   //         //   ));
//   //         // }
//   //       }
//   //     } catch (e) {
//   //       print('Error extracting color from cached image: $e');
//   //     }
//   //   }
//   //
//   //   print('提取完成，段数：${segments.length}');
//   //   notifyListeners(); // 通知监听器更新 UI
//   // }
//
//   // 切换回原始语言
//   void changetoBack(int index) {
//     // 检查 _translatedTitles 中是否存在该 index
//     if (_translatedTitles.containsKey(index) && _translationEnabled[index]!) {
//       // 还原标题
//       uimageUrls[index]['title'] = _translatedTitles[index];
//       _translationEnabled[index] = false;
//       print(_translationEnabled);
//     }
//     print(uimageUrls[index]['title']);
//     notifyListeners();
//   }
//
//   final PaginatedSearchDropdownController<Scenery>
//       searchableDropdownController1 =
//       PaginatedSearchDropdownController<Scenery>();
//
//   PaginatedSearchDropdownController<Scenery> get dropdownValue1 =>
//       searchableDropdownController1;
//
//   final GlobalKey<FormFieldState<int>> dropdownFormFieldKey1 =
//       GlobalKey<FormFieldState<int>>();
//   GlobalKey<FormFieldState<int>> get dropdownFormFieldKey =>
//       dropdownFormFieldKey1;
//
//   @override
//   PinterestViewModel() {
//     print('初始化PinterestViewModel');
//     loadData();
//   }
//
//   Future<List<Map<String, dynamic>>> fetchPinterestPromoteData(String q) async {
//     final url = Uri.parse('https://labs.writingmate.ai/api/chat/public');
//
//     // 构建请求头
//     final headers = {
//       'accept': '*/*',
//       'accept-encoding': 'gzip, deflate, br, zstd',
//       'accept-language': 'zh-CN,zh;q=0.9',
//       'cache-control': 'no-cache',
//       'content-type': 'application/json',
//       'origin': 'https://labs.writingmate.ai',
//       'pragma': 'no-cache',
//       'referer': 'https://labs.writingmate.ai/share/WLPW?__show_banner=false',
//       'sec-ch-ua':
//           '"Chromium";v="130", "Microsoft Edge";v="130", "Not?A_Brand";v="99"',
//       'sec-ch-ua-mobile': '?0',
//       'sec-ch-ua-platform': '"Windows"',
//       'sec-fetch-dest': 'empty',
//       'sec-fetch-mode': 'cors',
//       'sec-fetch-site': 'same-origin',
//       'user-agent':
//           'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0',
//     };
//
//     // 构建请求体
//     final body = jsonEncode({
//       "response_format": {
//         "type": "json_schema",
//         "json_schema": {
//           "name": "prompt_response",
//           "strict": true,
//           "schema": {
//             "type": "object",
//             "properties": {
//               "pinterestprompts": {
//                 "type": "array",
//                 "items": {"type": "string"}
//               },
//             },
//             "required": ["pinterestprompts"],
//             "additionalProperties": false
//           }
//         }
//       },
//       "chatSettings": {
//         "model": "gpt-4o-mini",
//         "temperature": 0.8,
//         "contextLength": 16385,
//         "includeProfileContext": false,
//         "includeWorkspaceInstructions": false,
//         "embeddingsProvider": "openai"
//       },
//       "messages": [
//         {
//           "role": "system",
//           "content":
//               "You are tasked with providing a list of the top 15 trending Pinterest search keywords for the year 2025, based on the keyword provided by the user: \"$q\". The keywords should be relevant, attractive, and highly engaging for the platform users. The response should not exceed 15 keywords and should include their corresponding search volume. Please format the response in JSON with 'keyword' and 'volume' fields. Ensure the keywords are aligned with what users might search for in 2025.Please simulate the response like this:\n[\n  { \"keyword\": \"Mountain View\", \"volume\": \"15000\" },\n  { \"keyword\": \"Grand Canyon\", \"volume\": \"12000\" },\n  { \"keyword\": \"Yellowstone National Park\", \"volume\": \"9000\" },\n  { \"keyword\": \"Eiffel Tower\", \"volume\": \"20000\" }\n],And replace it in the array corresponding to the pinterestprompts key."
//         },
//         {
//           "role": "user",
//           "content":
//               "Provide a list of Pinterest's top 15 trending keywords for 2025 based on the keyword: \"$q\". Ensure that the keywords are engaging and highly relevant for the Pinterest platform."
//         }
//       ]
//     });
//
//     try {
//       final response = await http.post(url, headers: headers, body: body);
//
//       if (response.statusCode == 200) {
//         // 检查响应头以确定内容是否是 Brotli 编码
//         if (response.headers['content-encoding'] == 'br') {
//           // 解码 Brotli 编码的字节
//           final compressedBytes = response.bodyBytes;
//
//           // 使用 Brotli 包解压缩
//           final decodedBytes = brotli.decode(compressedBytes);
//           final decodedString = utf8.decode(decodedBytes);
//           // 解析 JSON
//           final jsonResponse = jsonDecode(decodedString);
//           final List<dynamic> prompts = jsonResponse['pinterestprompts'];
//           print(prompts);
//           final parsedPrompts = prompts.map((item) {
//             if (item is String) {
//               // 如果元素是 String 类型（JSON 格式），手动解析
//               return jsonDecode(item) as Map<String, dynamic>;
//             } else if (item is Map<String, dynamic>) {
//               // 如果已经是 Map 类型，直接返回
//               return item;
//             } else {
//               throw Exception('Invalid data type in pinterestprompts');
//             }
//           }).toList();
//
//           notifyListeners();
//           return parsedPrompts.cast<Map<String, dynamic>>();
//         } else {
//           return [];
//         }
//       } else {
//         print('Failed to send request: ${response.statusCode}');
//         return [];
//       }
//       // _isfetching = false;
//     } catch (e) {
//       print('Error: $e');
//       return [];
//     }
//   }
//
//   Future<String> translateText(String text) async {
//     // final response = await http.get(Uri.parse(
//     //     'https://findmyip.net/api/translate.php?text=$text&target_lang=$targetLang'));
//     final uresponse = await http.get(Uri.parse(
//         'https://mydiumtify.globeapp.dev/googlemit?text=$text&to_lang=en&from_lang=auto'));
//     if (uresponse.statusCode == 200) {
//       // final data = json.decode(uresponse.body);
//       final udata = jsonDecode(utf8.decode(uresponse.bodyBytes))['data'];
//       print('🥰🎶😊🐳👌🍧😂');
//       return udata;
//     } else {
//       return "这里很暖和";
//     }
//   }
//
//   Future<void> translatetitleText(int index, String text) async {
//     // 检查该 index 的翻译状态，如果已翻译则返回
//     if (text.isEmpty || (_translationEnabled[index] ?? false)) {
//       return;
//     }
//     _translatedTitles.putIfAbsent(index, () => text); // 确保该 index 存在
//     print(_translatedTitles[index]);
//
//     final uresponse = await http.get(Uri.parse(
//         'https://mydiumtify.globeapp.dev/googlemit?text=$text&to_lang=zh-CN&from_lang=auto'));
//     if (uresponse.statusCode == 200) {
//       final udata = jsonDecode(utf8.decode(uresponse.bodyBytes))['data'];
//       print('🥰🎶😊🐳👌🍧😂');
//       uimageUrls[index]['title'] = udata;
//       print(uimageUrls[index]['title']); // 根据index保存翻译结果
//       _translationEnabled[index] = true;
//       notifyListeners(); // 通知UI刷新
//     } else {
//       _translatedTitles[index] = "这里很暖和";
//       notifyListeners();
//     }
//   }
//
//   Future<void> saveCachedImageToGallery(String url) async {
//     try {
//       // 从缓存中获取图片文件
//       final bytes =
//           await FastCachedImageConfig.getCachedImageData(imageUrl: url);
//       if (bytes!.isEmpty) {
//         print('No cached image found for URL: $url');
//         return;
//       }
//       // 请求存储权限
//       var status = await Permission.storage.request();
//       if (status.isGranted) {
//         // 保存图片到相册
//         await ImageGallerySaverPlus.saveImage(
//           bytes,
//           quality: 100,
//           name: '云雨之洲✨✨✨_${DateTime.now().millisecondsSinceEpoch}',
//         );
//         print('Image saved to gallery from cache');
//       } else {
//         print("Permission Denied");
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
//
//   Future<void> fetchAndParseData(String query) async {
//     final url =
//         'https://mydiumtify.globeapp.dev/pinterest?query=$query&numberOfImages=5';
//
//     print(url);
//
//     try {
//       // 请求数据
//       final response = await http.get(Uri.parse(url));
//
//       if (response.statusCode == 200) {
//         // 解析 JSON
//         final json = jsonDecode(response.body);
//
//         final jsonPathTitle = JsonPath(r'$[*].title').read(json);
//         final jsonPathImage = JsonPath(r'$[*].image').read(json);
//
//         // // 清空 uimageUrls 列表，以便重新填充
//         // uimageUrls.clear();
//
//         for (var i = 0; i < jsonPathTitle.length; i++) {
//           final title = jsonPathTitle.elementAt(i).value;
//           final image =
//               jsonPathImage.elementAt(i).value as Map<String, dynamic>?; // 强制转换
//
//           if (image != null) {
//             // 直接添加到 uimageUrls
//             uimageUrls.add({
//               'original': image['url'],
//               'title': title,
//               'width': image['width'],
//               'height': image['height'],
//               'url':
//                   'https://mydiumtify.globeapp.dev/pinterestImage?isImage=true&url=${image['url']}',
//             });
//           }
//         }
//
//         await saveLast14Urls();
//         notifyListeners();
//         print('开始提取颜色');
//         // 调用提取颜色函数
//         await extractColorsFromCachedImages(
//             uimageUrls.map((e) => e['url']).toList());
//         print('提取颜色结束');
//       } else {
//         print('请求失败，状态码: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('发生错误: $e');
//     }
//   }
//
//   Future<void> saveLast14Urls() async {
//     if (uimageUrls.isNotEmpty) {
//       // 获取最后 14 个项目
//       final last14Items = uimageUrls.length > 14
//           ? uimageUrls.sublist(uimageUrls.length - 14)
//           : uimageUrls;
//
//       // 获取 SharedPreferences 实例
//       final prefs = await SharedPreferences.getInstance();
//
//       // 将最后 14 个项目保存到本地存储，转换为 JSON 字符串
//       await prefs.setStringList(
//         'beautify14Images',
//         last14Items.map((item) => jsonEncode(item)).toList(),
//       );
//
//       print('已保存最后14个项目: $last14Items');
//     }
//   }
//
//   Future<void> loadData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     List<String>? storedJson = prefs.getStringList('beautify14Images');
//     if (storedJson != null) {
//       uimageUrls = storedJson
//           .map((jsonStr) => jsonDecode(jsonStr) as Map<String, dynamic>)
//           .toList();
//       print(uimageUrls.map((urlMap) => urlMap['url'] as String).toList());
//       // urlExtracted = uimageUrls.map((urlMap) => urlMap['url'] as String).toList();
//       // 将提取的 URL 字符串传递给 extractColorsFromCachedImages
//       await extractColorsFromCachedImages(
//           uimageUrls.map((urlMap) => urlMap['url'] as String).toList());
//     } else {
//       uimageUrls = [];
//     }
//     notifyListeners();
//   }
//
//   Future<void> clearBeautify14Images() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     segments.clear();
//     // 清除 'beautify14Images' 的所有数据
//     await prefs.remove('beautify14Images');
//     uimageUrls.clear();
//     notifyListeners();
//
//     print('已清除 beautify14Images 数据');
//   }
//
//   void deleteGalleryImage(BuildContext context) {
//     if (uimageUrls.isEmpty) {
//       // 如果数据库已经为空，提示用户
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return CupertinoAlertDialog(
//             title: const Text('无图片可删除'),
//             content: const Text('当前没有任何图片可以删除。'),
//             actions: [
//               CupertinoDialogAction(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text(
//                   '确定',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//       return;
//     }
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return CupertinoAlertDialog(
//           title: const Text('画廊中的图片将被删除'),
//           content: const Text('此操作不可撤销，删除后将无法恢复。请确认您是否真的要删除这张图片。'),
//           actions: [
//             CupertinoDialogAction(
//               onPressed: () async {
//                 await clearBeautify14Images();
//                 notifyListeners();
//                 Navigator.of(context).pop(); // 关闭对话框
//               },
//               child: const Text(
//                 '确定',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             CupertinoDialogAction(
//               onPressed: () {
//                 Navigator.of(context).pop(); // 关闭对话框
//               },
//               child: const Text(
//                 '取消',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   } //删除所有图片
// }
