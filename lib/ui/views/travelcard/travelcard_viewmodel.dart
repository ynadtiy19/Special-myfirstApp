import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hung/app/app.locator.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';

import '../../../services/image_data.dart';
import '../../../services/image_repository_service.dart';

class TravelcardViewModel extends ReactiveViewModel {
  final _ImageRepositoryService = locator<ImageRepositoryService>();
  Box<ImageData> get uuimageBox => _ImageRepositoryService.imagesBox;

  void deleteImage(int index) {
    _ImageRepositoryService.deleteImage(index);
    notifyListeners();
  }

  Future<void> singleImageToGallery(String base64Image) async {
    // Decode base64 string to bytes
    final bytes = base64Decode(base64Image);

    // Request storage permissions
    var status = await Permission.storage.request();
    if (status.isGranted) {
      await ImageGallerySaverPlus.saveImage(bytes,
          quality: 100,
          name: '云雨之洲✨✨✨_${DateTime.now().millisecondsSinceEpoch}.png');
    } else {
      print("Permission Denied");
    }
  }
}
