import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:impulse_player_flutter/impulse_player.dart';
import 'package:impulse_player_flutter/impulse_player_controller.dart';
import 'package:impulse_player_flutter/impulse_player_view.dart';
import 'package:impulse_player_flutter/plugin/impulse_player_plugin.dart';
import 'package:impulse_player_flutter/plugin/plugin_platform.dart';

class uuuMyApp extends StatefulWidget {
  const uuuMyApp({super.key});

  @override
  State<uuuMyApp> createState() => _MyAppState();
}

class _MyAppState extends State<uuuMyApp> {
  String _platformVersion = 'Unknown';
  final ImpulsePlayerController _controller = ImpulsePlayerController(
    onReady: () async {
      print("onReady");
    },
    onPlay: () {
      print("onPlay");
    },
    onPause: () {
      print("onPause");
    },
    onFinish: () {
      print("onFinish");
    },
    onError: (message) {
      print("onError: $message");
    },
  );
  final ImpulsePlayerPlugin _plugin = ImpulsePlayerPlugin();

  @override
  void initState() {
    super.initState();
    initPlatformState();
    _setCustomAppearance();
    _loadVideo();
    // _controller.onReady = () async {
    //   print("onReady");
    //   await _controller.load("Title", "Subtitle", "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8");
    // };
  }

  void _setCustomAppearance() {
    ImpulsePlayer.setAppearance(
      const TextStyle(
          fontSize: 16, fontFamily: "Inter", fontWeight: FontWeight.w600),
      const TextStyle(
          fontSize: 14, fontFamily: "Inter", fontWeight: FontWeight.w600),
      const TextStyle(
          fontSize: 12, fontFamily: "Inter", fontWeight: FontWeight.w400),
      const TextStyle(
          fontSize: 14, fontFamily: "Inter", fontWeight: FontWeight.w400),
      const TextStyle(
          fontSize: 10, fontFamily: "Inter", fontWeight: FontWeight.w400),
      const TextStyle(
          fontSize: 16, fontFamily: "Inter", fontWeight: FontWeight.w400),
      const TextStyle(
          fontSize: 14, fontFamily: "Inter", fontWeight: FontWeight.w400),
      const Color(0xFF4945FF),
    );
  }

  void _loadVideo() async {
    await Future.delayed(Duration(seconds: 1));
    await _controller.load("Title", "Subtitle",
        "https://bafybeicrzbziltth73av63m3op64bb2lnbvd5rcofkg4ubkxmzpqhf65bq.ipfs.flk-ipfs.xyz");
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await ImpulsePlayerPluginPlatform.instance.getPlatformVersion() ??
              'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('视频原生插件演示'),
        centerTitle: true,
      ),
      body: Center(
        // child: Text('Running on: $_platformVersion\n'),
        child: ListView(
          children: [
            Text('Running on: $_platformVersion\n'),
            ImpulsePlayerView(
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
