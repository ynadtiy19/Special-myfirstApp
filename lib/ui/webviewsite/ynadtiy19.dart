import 'dart:math';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/hero-icons-outline_icons.dart';

class ynaditiy19 extends StatefulWidget {
  final String url; // 接收必需的 url 参数

  const ynaditiy19({super.key, required this.url}); // required url

  @override
  State<ynaditiy19> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<ynaditiy19> {
  WebViewController? webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {
          log('WebView is loading (progress : $progress%)' as num);
        },
        onPageStarted: (String url) {
          log('Page started loading: $url' as num);
        },
        onPageFinished: (String url) {
          log('Page finished loading: $url' as num);
        },
        onWebResourceError: (WebResourceError error) {
          log('Page resource error: $error' as num);
        },
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.contains('x-gpt')) {
            log("navigation is blocked: $request" as num);
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      // 使用传递的 url 加载页面
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('家乡的故事日记'),
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
      ),
      body: WebViewWidget(
        controller: webViewController!,
      ),
    );
  }
}
