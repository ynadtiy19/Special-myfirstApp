import 'dart:math';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        Uri.parse('https://om432.wed2c.com'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          webViewController!.loadRequest(Uri.parse('https://om432.wed2c.com'));
        },
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
