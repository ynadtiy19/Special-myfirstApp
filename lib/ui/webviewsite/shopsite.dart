import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShopWebView extends StatefulWidget {
  const ShopWebView({super.key});

  @override
  State<ShopWebView> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<ShopWebView> {
  WebViewController? webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {
          debugPrint('WebView is loading (progress : $progress%)');
        },
        onPageStarted: (String url) {
          debugPrint('Page started loading: $url');
        },
        onPageFinished: (String url) {
          // 允许媒体自动播放
          webViewController?.runJavaScript(
              "document.querySelectorAll('video, audio').forEach(media => media.autoplay = true);");
          debugPrint('Page finished loading: $url');
        },
        onWebResourceError: (WebResourceError error) {
          debugPrint('Page resource error: $error');
        },
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.contains('x-gpt')) {
            debugPrint("Navigation is blocked: $request");
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(
        Uri.parse(
            'https://www.theleap.co/creator/ynadtiy19/mini-course/mastering-smart-goals/take?token=Fh_y9qRZXZBHAv9e0QkaGg'),
      );
  }

  static const MethodChannel _channel =
      MethodChannel('com.example.webview/scroll');

  Future<void> scrollLeft() async {
    // try {
    //   await _channel.invokeMethod('scrollLeft');
    // } on PlatformException catch (e) {
    //   print("Failed to scroll left: '${e.message}'.");
    // }
  }

  Future<void> scrollRight() async {
    // try {
    //   await _channel.invokeMethod('scrollRight');
    // } on PlatformException catch (e) {
    //   print("Failed to scroll right: '${e.message}'.");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('家乡的故事'),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: webViewController!,
          ),
        ],
      ),
    );
  }
}
