import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen_ai_chat_ui/flutter_gen_ai_chat_ui.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked.dart';

import 'clientchat_viewmodel.dart';

class ClientchatView extends StackedView<ClientchatViewModel> {
  const ClientchatView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ClientchatViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的页面'),
        actions: [
          // 添加删除按钮
          IconButton(
            icon: const Icon(Icons.delete), // 使用删除图标
            onPressed: () {
              // 调用删除图片的函数
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('确认删除'),
                  content: const Text('您确定要删除所有的图片吗？'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('取消'),
                    ),
                    TextButton(
                      onPressed: () async {
                        // 调用删除逻辑
                        await viewModel.deleteImages(context);
                        Navigator.of(context).pop();
                      },
                      child: const Text('确认'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: AiChatWidget(
        config: AiChatConfig(
          hintText: 'Type a message...',
          enableAnimation: true,
          showTimestamp: true, // Show/hide message timestamps
          readOnly: false, // Make chat read-only
          enablePagination: false,
          welcomeMessageConfig: const WelcomeMessageConfig(
            title: 'Welcome to Simple Chat!',
            questionsSectionTitle: 'Try asking these questions:',
          ),
          aiName: 'Will be she',
          userName: 'Me',
          maxWidth: 800,
          sendButtonIcon: viewModel.selectedImagePathValue != null
              ? Icons.send_and_archive
              : Icons.send,
          inputDecoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Theme.of(context).colorScheme.primary.withAlpha(100),
            hintText: '输入提示文本...',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.green),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (viewModel.selectedImagePathValue != null)
                    Chip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // 显示圆形图片
                          CircleAvatar(
                            radius: 15.0, // 圆形头像的半径
                            backgroundImage: FileImage(File(viewModel
                                .selectedImagePathValue!)), // 使用文件路径加载图片
                            backgroundColor: Colors.transparent,
                          ),
                          const SizedBox(width: 8.0), // 图像和文本之间的间距
                          // 显示文件名
                          Text(
                            viewModel.selectedImagePathValue != null
                                ? viewModel.selectedImagePathValue!
                                    .split('/')
                                    .last
                                    .substring(0, 5) // 提取文件名的前 5 个字符
                                : 'No image selected', // 如果没有选中图片，显示默认文本
                            overflow: TextOverflow.ellipsis, // 如果文件名太长则显示省略号
                          )
                        ],
                      ),
                      onDeleted: () {
                        viewModel.onSelectedImagePathValueChange('');
                      },
                    ),
                  IconButton(
                    tooltip: '生成图像',
                    onPressed: viewModel.isSelectingImageValue
                        ? null
                        : () async {
                            viewModel.onisSelectingImageValueChange(); //变成true
                            String? imagePath =
                                await viewModel.UpopenImagePicker();
                            if (imagePath != null) {
                              print('选择的图片路径: $imagePath');
                              viewModel
                                  .onSelectedImagePathValueChange(imagePath);
                            } else {
                              print('未选择图片');
                            }
                            viewModel
                                .onisSelectingImageValueChange(); //选择图像后恢复为false
                          },
                    iconSize: 27.0,
                    color: Colors.black87,
                    icon: const Icon(Icons.image_outlined),
                  ),
                ],
              ),
            ),
          ),
          messageOptions: MessageOptions(
            onLongPressMessage: (message) {
              if (message.medias != null && message.medias!.isNotEmpty) {
                String imageUrl = message.medias![0].url;

                bool isDownloading = false; // 标记是否正在下载
                bool showCancelButton = false; // 标记是否显示取消按钮

                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          content: const Text('图像'),
                          actions: [
                            if (!isDownloading)
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('取消'),
                              ),
                            if (!isDownloading)
                              TextButton(
                                onPressed: () async {
                                  setState(() => isDownloading = true);
                                  setState(() => showCancelButton = true);

                                  await Future.delayed(
                                      const Duration(seconds: 3));

                                  if (showCancelButton) {
                                    try {
                                      File imageFile = File(imageUrl);
                                      Uint8List imageBytes =
                                          await imageFile.readAsBytes();

                                      if (kIsWeb || Platform.isWindows) {
                                        // 保存到下载目录
                                        final directory =
                                            await getDownloadsDirectory();
                                        if (directory != null) {
                                          final filePath =
                                              '${directory.path}/ynadity19_${DateTime.now().millisecondsSinceEpoch}.png';
                                          final file = File(filePath);
                                          await file.writeAsBytes(imageBytes);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text('图片已保存到下载目录')),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text('无法获取下载目录')),
                                          );
                                        }
                                      } else {
                                        // 保存到相册
                                        await ImageGallerySaverPlus.saveImage(
                                          imageBytes,
                                          quality: 100,
                                          name:
                                              'ynadity19_${DateTime.now().millisecondsSinceEpoch}',
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('图片已保存到相册')),
                                        );
                                      }
                                    } catch (e) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(content: Text('发生错误：$e')),
                                      );
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('下载已取消')),
                                    );
                                  }

                                  setState(() => isDownloading = false);
                                  setState(() => showCancelButton = false);
                                  Navigator.of(context).pop();
                                },
                                child: const Text('下载'),
                              ),
                            if (showCancelButton)
                              TextButton(
                                onPressed: () {
                                  setState(() => showCancelButton = false);
                                },
                                child: const Text('取消'),
                              ),
                          ],
                        );
                      },
                    );
                  },
                );
              } else {
                Clipboard.setData(ClipboardData(text: message.text));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('文本已经复制到剪切板')),
                );
              }
            },
            containerColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFF121212) // 更深邃的背景色
                : const Color(0xFFF5F5F5), // 更清新的背景色
            currentUserContainerColor:
                Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xFF80CBC4) // 薄荷绿
                    : const Color(0xFF80CBC4), // 柠檬黄
            textColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.white // 确保文字颜色对比度
                : const Color(0xFF424242), // 较深的文字颜色
            currentUserTextColor: Colors.black,
            messagePadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            showCurrentUserAvatar: true,
            showOtherUsersAvatar: true,
            showTime: true,
            timeTextColor: const Color(0xFF050502),
            currentUserTimeTextColor: const Color(0xFF050502),
            borderRadius: 12,
          ),
          exampleQuestions: [
            ExampleQuestion(
              question: 'How does the styling work?',
              config: ExampleQuestionConfig(
                onTap: (question) {
                  viewModel.clientchatcontroller.handleExampleQuestion(
                    question,
                    viewModel.currentchatUser,
                    viewModel.aichatUser,
                  );
                },
              ),
            ),
            ExampleQuestion(
              question: 'Show me dark mode features',
              config: ExampleQuestionConfig(
                onTap: (question) {
                  viewModel.clientchatcontroller.handleExampleQuestion(
                    question,
                    viewModel.currentchatUser,
                    viewModel.aichatUser,
                  );
                },
              ),
            ),
          ],
        ),
        controller: viewModel.clientchatcontroller,
        currentUser: viewModel.currentchatUser,
        aiUser: viewModel.aichatUser,
        onSendMessage: (text) => (viewModel.handleMessage(text, context)),
        isLoading: viewModel.isLoading,
        loadingIndicator: LoadingWidget(
          texts: const ['Loading...', 'Please wait...', 'Almost there...'],
          interval: const Duration(seconds: 2),
          textStyle: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }

  @override
  ClientchatViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ClientchatViewModel(context);
}
