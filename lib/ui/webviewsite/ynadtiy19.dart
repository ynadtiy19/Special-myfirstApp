import 'dart:math';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/hero-icons-outline_icons.dart';

class ynaditiy19 extends StatefulWidget {
  const ynaditiy19({super.key});

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
      ..loadRequest(
        Uri.parse('http://yunyuzhizhou.mlover.site/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          webViewController!
              .loadRequest(Uri.parse('http://yunyuzhizhou.mlover.site/'));
        },
        child: const Icon(Hero_icons_outline.arrow_path_rounded_square),
      ),
      body: WebViewWidget(
        controller: webViewController!,
      ),
    );
  }
}
