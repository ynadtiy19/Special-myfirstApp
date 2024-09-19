import 'package:hive/hive.dart';

part 'image_data.g.dart';

@HiveType(typeId: 0)
class ImageData extends HiveObject {
  @HiveField(0)
  String data;

  @HiveField(1)
  String date;

  ImageData({required this.data, required this.date});
}
