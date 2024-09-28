import 'dart:math';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/hero-icons-outline_icons.dart';

class shopwebview extends StatefulWidget {
  const shopwebview({super.key});

  @override
  State<shopwebview> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<shopwebview> {
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
        Uri.parse('https://theleap.co/creator/ynadtiy19/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          webViewController!
              .loadRequest(Uri.parse('https://theleap.co/creator/ynadtiy19/'));
        },
        child: const Icon(Hero_icons_outline.arrow_path_rounded_square),
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController!,
        ),
      ),
    );
  }
}
