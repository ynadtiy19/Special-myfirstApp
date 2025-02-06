import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hung/app/app.bottomsheets.dart';
import 'package:hung/app/app.dialogs.dart';
import 'package:hung/app/app.locator.dart';
import 'package:hung/services/chat_message.dart';
import 'package:hung/services/image_data.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String appDocPath = appDocDir.path;

  // 初始化 Hive 并指定路径
  Hive.init(appDocPath);
  Hive.registerAdapter(
      ImageDataAdapter()); //根据typeId注册adapter,当只用openBox时直接await openhivebox
  await Hive.openBox<ImageData>('imagesBox');
  await Hive.openBox<ImageData>('favoriteImagesBox');
  Hive.registerAdapter(ChatMessageAdapter());
  await Hive.openBox<ChatMessage>('chatjson');
  EasyLoading.init();
  await SharedPreferences.getInstance();

  // await dotenv.load(fileName: ".env");
  // await GetStorage.init();

  await setupLocator(); // Assuming this is a function from your first app
  setupDialogUi(); // Assuming this is a function from your first app
  setupBottomSheetUi(); // Assuming this is a function from your first app
  runApp(
    const AppLoader(),
  );
  configLoading();
}

Future<void> configLoading() async {
  EasyLoading.instance
    ..maskType = EasyLoadingMaskType.none
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..displayDuration = const Duration(milliseconds: 1000)
    ..userInteractions = false;
}
