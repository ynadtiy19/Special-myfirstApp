import 'package:hive/hive.dart';

part 'chat_message.g.dart';

@HiveType(typeId: 5)
class ChatMessage extends HiveObject {
  @HiveField(0)
  final bool isSender;

  @HiveField(1)
  final String text;

  @HiveField(2)
  final String? imagePath; // 新增字段，用于存储图像路径

  ChatMessage({
    required this.isSender,
    required this.text,
    this.imagePath, // 可选的图像路径
  });
}
