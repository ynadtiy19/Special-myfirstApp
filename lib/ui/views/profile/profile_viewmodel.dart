import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_cache/json_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final jsonCacheMem = JsonCacheMem();
  JsonCacheMem get jsonCacheKey => jsonCacheMem;

  static bool hasProfile = false;

  @override
  ProfileViewModel() {
    initialize();
    print('初始化ProfileViewModel');
  }

  // 异步初始化方法
  Future<void> initialize() async {
    hasProfile = await loadData();
    print('初始化ProfileViewModel, hasProfile: $hasProfile');
    notifyListeners(); // 通知UI更新
  }

  // 默认数据用[int index = 20]
  Future<void> profileImageFetch([int index = 100]) async {
    final url = Uri.parse('https://clickapp.com/l2-subquery');
    final headers = {
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br, zstd',
      'Accept-Language': 'zh-CN,zh;q=0.9',
      'Content-Type': 'application/json',
      'Cookie':
          'showHeader=true; _ga=GA1.1.1774880677.1728874557; cookies-analytics=true; cookies-functional=true; cookies-marketing=true; cookies-preferences=true; _ga_1JLP1XP916=GS1.1.1728878747.2.1.1728883504.0.0.0',
      'Origin': 'https://clickapp.com',
      'Referer':
          'https://clickapp.com/zk/account/0x5c4cf941ca63ba5e20493a78b54c4dace099426b',
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0',
    };

    final payload = {
      'operationName': 'nftsByOwner',
      'variables': {
        //0x5c4cf941ca63ba5e20493a78b54c4dace099426b
        'account': '0x5c4cf941ca63ba5e20493a78b54c4dace099426b',
        'limit': index,
      },
      'query': '''
      query nftsByOwner(\$account: String!, \$limit: Int) {
        account(id: \$account) {
          ERC721tokens(first: \$limit, orderBy: TIMESTAMP_DESC) {
            nodes {
              id
              identifier
              uri
              timestamp
              ownerId
              channel
              content
              transactionHash
              __typename
            }
            pageInfo {
              hasNextPage
              endCursor
              __typename
            }
            __typename
          }
          __typename
        }
      }
    ''',
    };

    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
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
        final response = await http.get(Uri.parse(item['uri']!));
        if (response.statusCode == 200) {
          final responseData = jsonDecode(response.body);
          return responseData; // 根据需要处理响应数据
        } else {
          print('请求失败，状态码：${response.statusCode}');
          return null; // 返回 null 或其他处理
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

        if (contentUrl != null) {
          // 只在 contentUrl 非空时添加到 map 中
          mediaInfoMap[contentUrl] = {
            'placeName': responseData['placeName'] ?? '未知地点',
            'name': responseData['name'] ?? '未知名称',
          };
        } else {
          print('contentUrl 为 null，跳过该条目'); // 可以选择打印警告或进行其他处理
        }
      }

      // 存储数据到 JsonCacheMem
      await jsonCacheMem.refresh('uuuprofile', mediaInfoMap);
      notifyListeners();
      //存储前面10条数据
      await saveFirst10MediaInfo(mediaInfoMap);
    } else {
      print('请求失败，状态码：${response.statusCode}');
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
