import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/hero-icons-outline_icons.dart';

class MusicWebView extends StatefulWidget {
  final String pushid;

  const MusicWebView({super.key, required this.pushid});

  @override
  State<MusicWebView> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<MusicWebView> {
  WebViewController? webViewController;
  int _currentIconIndex = 0;
  final List<IconData> _icons = [
    Hero_icons_outline.battery_0,
    Hero_icons_outline.battery_50,
    Hero_icons_outline.battery_100,
  ];
  Timer? _iconTimer;

  // 语言代码列表
  final Map<String, String> languages = {
    'da': '丹麦语',
    'nl': '荷兰语',
    'en': '英语',
    'eo': '世界语',
    'et': '爱沙尼亚语',
    'tl': '菲律宾语',
    'fi': '芬兰语',
    'fr': '法语',
    'fy': '弗里斯兰语',
    'gl': '加利西亚语',
    'ka': '格鲁吉亚语',
    'de': '德语',
    'zh-CN': '中文（简体）',
  };
  String? _selectedLanguage; // 选择的语言代码

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {
          log('WebView is loading (progress : $progress%)');
        },
        onPageStarted: (String url) {
          log('Page started loading: $url');
        },
        onPageFinished: (String url) {
          log('Page finished loading: $url');
        },
        onWebResourceError: (WebResourceError error) {
          log('Page resource error: $error');
        },
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.contains('x-gpt')) {
            log("navigation is blocked: $request");
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(
        Uri.parse(
            'https://mydiumtify.globeapp.dev/mediumhtml?id=${widget.pushid}'),
      );

    // 每500毫秒更新图标
    _iconTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _currentIconIndex = (_currentIconIndex + 1) % _icons.length;
      });
    });
  }

  @override
  void dispose() {
    _iconTimer?.cancel(); // 取消定时器
    super.dispose();
  }

  void _showRefreshDialog() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('刷新和选择语言'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(
                hint: Text('选择语言'),
                value: _selectedLanguage,
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue;
                  });
                },
                items: languages.entries.map<DropdownMenuItem<String>>((entry) {
                  return DropdownMenuItem<String>(
                    value: entry.key,
                    child: Text(entry.value),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // 检查是否选择了语言
                if (_selectedLanguage != null) {
                  // 根据选择的语言构建新的 URL
                  String newUrl =
                      'https://mydiumtify.globeapp.dev/translate?id=${widget.pushid}&targetLanguage=$_selectedLanguage';

                  // 刷新网页
                  webViewController!.loadRequest(Uri.parse(newUrl));
                }
                Navigator.of(context).pop(); // 关闭对话框
              },
              child: Text('刷新'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
              },
              child: Text('关闭'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('故事'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Hero_icons_outline.arrow_left),
              onPressed: () {
                // 退出当前页面
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          // 通过循环显示的图标
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              _icons[_currentIconIndex],
              size: 30.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showRefreshDialog, // 点击弹出对话框
        child: Icon(LineIcons.tree),
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController!,
        ),
      ),
    );
  }
}
