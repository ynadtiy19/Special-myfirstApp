import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:json_cache/json_cache.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final jsonCacheMem = JsonCacheMem();
  JsonCacheMem get jsonCacheKey => jsonCacheMem;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  final GlobalKey _key = GlobalKey();
  GlobalKey get key => _key;

  static bool hasProfile = false;

  @override
  ProfileViewModel() {
    initialize();
    print('初始化ProfileViewModel');
  }

  Future<Uint8List?> getImageBytes(String imageUrl) async {
    final imageProvider = FastCachedImageProvider(imageUrl);
    final imageStream = imageProvider.resolve(ImageConfiguration.empty);

    Completer<Uint8List?> completer = Completer<Uint8List?>();

    imageStream.addListener(
        ImageStreamListener((ImageInfo info, bool synchronousCall) async {
      final byteData = await info.image.toByteData(format: ImageByteFormat.png);
      final bytes = byteData?.buffer.asUint8List();
      completer.complete(bytes); // 完成 Future 并返回图像字节数据
    }));

    return completer.future; // 返回 Future
  }

  Future<void> saveCachedImageToGallery(String url) async {
    try {
      final bytes = await getImageBytes(url);
      if (bytes!.isEmpty) {
        print('No cached image found for URL: $url');
        return;
      }
      // 请求存储权限
      var status = await Permission.storage.request();
      if (status.isGranted) {
        // 保存图片到相册
        await ImageGallerySaverPlus.saveImage(
          bytes,
          quality: 100,
          name: '云雨之洲✨✨✨_${DateTime.now().millisecondsSinceEpoch}',
        );
        print('Image saved to gallery from cache');
      } else {
        print("Permission Denied");
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // 异步初始化方法
  Future<void> initialize() async {
    hasProfile = await loadData();
    print('初始化ProfileViewModel, hasProfile: $hasProfile');
    notifyListeners(); // 通知UI更新
  }

  // 默认数据用[int index = 20]
  Future<void> profileImageFetch([int index = 100]) async {
    try {
      final ioClient = IOClient(HttpClient()
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) => true); // 忽略证书错误
      final url = Uri.parse('https://indexer.clickapp.com/');
      final headers = {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
        'Origin': 'https://clickapp.com',
        'Referer': 'https://clickapp.com/',
        'Sec-Fetch-Dest': 'empty',
        'Sec-Fetch-Mode': 'cors',
        'Sec-Fetch-Site': 'same-site',
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0',
      };

      // 请求负载
      final payload = {
        "operationName": "nftsByOwner",
        "variables": {
          "account": "0x1d7baa90d63b79c4cbeaf3b40a7be53791158b1f",
          "contentType": "",
          "limit": index,
        },
        "query": """
    query nftsByOwner(\$account: String!, \$limit: Int, \$contentType: String) {
      eRC721Tokens(
        filter: {ownerId: {equalToInsensitive: \$account}, contentType: {includes: \$contentType}}
        first: \$limit
        orderBy: TIMESTAMP_DESC
      ) {
        nodes {
          id
          identifier
          uri
          timestamp
          ownerId
          owner {
            name
            __typename
          }
          channel
          content
          transactionHash
          contentType
          thumbnail
          __typename
        }
        pageInfo {
          hasNextPage
          endCursor
          __typename
        }
        __typename
      }
    }
    """
      };

      final response = await ioClient.post(
        url,
        headers: headers,
        body: jsonEncode(payload),
      );
      print(response.body);

      if (response.statusCode == 200) {
        print('响应200');
        final data = jsonDecode(response.body);
        final nfts = data['data']['account']['ERC721tokens']['nodes'] as List;

        // 合并生成 uri 和 content 的步骤
        final transformedData = nfts.map((nft) {
          final uriValue = (nft['uri'] as String).split('ipfs://').last;
          final contentValue = (nft['content'] as String).split('ipfs://').last;

          return {
            'uri':
                'https://mydiumtify.globeapp.dev/myfilebase?url=https://nodle-community-nfts.myfilebase.com/ipfs/$uriValue',
            'content':
                'https://mydiumtify.globeapp.dev/pinterestImage?isImage=true&url=https://nodle-community-nfts.myfilebase.com/ipfs/$contentValue',
          };
        }).toList();
        print(transformedData);

        // 使用 Future.wait 并行请求这些新 URL
        final futures = transformedData.map((item) async {
          try {
            final response = await http.get(Uri.parse(item['uri']!));
            if (response.statusCode == 200) {
              final responseData = jsonDecode(response.body);
              return responseData; // 根据需要处理响应数据
            } else {
              print('请求失败，状态码：${response.statusCode}');
              return null; // 返回 null 或其他处理
            }
          } catch (e) {
            print('获取内容失败: $e');
            return null;
          }
        });

        // 等待所有请求完成
        final responses = await Future.wait(futures);
        print(responses.length);

        // 处理响应数据，构建最终的 mediaInfoMap
        final mediaInfoMap = <String, Map<String, dynamic>>{};

        for (var i = 0; i < transformedData.length; i++) {
          final contentUrl = transformedData[i]['content']; // 明确声明为可空字符串
          final responseData = responses[i];

          if (contentUrl != null && responseData != null) {
            // 只在 contentUrl 非空时添加到 map 中
            mediaInfoMap[contentUrl] = {
              'placeName': responseData['placeName'] ?? '未知地点',
              'name': responseData['name'] ?? '未知名称',
            };
          } else {
            print('contentUrl 或响应数据 为 null，跳过该条目');
          }
        }

        // 存储数据到 JsonCacheMem
        await jsonCacheMem.refresh('uuuprofile', mediaInfoMap);
        notifyListeners();

        // 存储前面10条数据
        await saveFirst10MediaInfo(mediaInfoMap);
      } else {
        print('请求失败，状态码：${response.statusCode}');
      }
    } catch (e) {
      print('发生错误: $e');
    }
  }

  Future<void> saveFirst10MediaInfo(
      Map<String, Map<String, dynamic>> mediaInfoMap) async {
    // 检查 mediaInfoMap 是否为空
    if (mediaInfoMap.isNotEmpty) {
      // 获取前10条数据，如果长度小于10则获取所有数据
      final first10Items = mediaInfoMap.entries.take(10).toList();

      // 创建新的 Map 来存储前10条数据
      final first10MediaInfoMap = <String, Map<String, dynamic>>{};

      for (var entry in first10Items) {
        first10MediaInfoMap[entry.key] = entry.value;
      }

      // 将前10条数据的 Map 转换为 JSON 字符串
      final first10MediaInfoJson = jsonEncode(first10MediaInfoMap);

      // 获取 SharedPreferences 实例
      final prefs = await SharedPreferences.getInstance();

      // 将 JSON 字符串保存到 SharedPreferences
      await prefs.setString('first10MediaInfoMap', first10MediaInfoJson);

      print('前10条 mediaInfoMap 数据已成功存储到 SharedPreferences');
    } else {
      print('mediaInfoMap 为空，无法存储数据');
    }
  }

  Future<bool> loadData() async {
    // 获取 SharedPreferences 实例
    print('loadData');
    final prefs = await SharedPreferences.getInstance();

    // 从 SharedPreferences 中读取存储的 JSON 字符串
    final String? first10MediaInfoJson = prefs.getString('first10MediaInfoMap');

    if (first10MediaInfoJson != null) {
      // 将 JSON 字符串转换为 Map<String, Map<String, dynamic>>
      final Map<String, dynamic> decodedJson = jsonDecode(first10MediaInfoJson);

      // 转换为 <String, Map<String, dynamic>> 类型
      final Map<String, Map<String, dynamic>> mediaInfoMap = decodedJson.map(
        (key, value) => MapEntry(key, Map<String, dynamic>.from(value)),
      );

      // 将 mediaInfoMap 存储到 jsonCacheMem
      await jsonCacheMem.refresh('uuuprofile', mediaInfoMap);
      notifyListeners();

      print('成功将 first10MediaInfoMap 更新到 mediaInfoMap 并存储到 jsonCacheMem');
      return true;
    } else {
      await profileImageFetch();
      print('没有找到存储的 first10MediaInfoMap 数据');
      return false;
    }
  }
}
