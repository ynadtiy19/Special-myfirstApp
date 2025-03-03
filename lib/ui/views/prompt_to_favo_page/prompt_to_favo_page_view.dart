import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../../widgets/common/fullscreen/fullscreen_image_viewer.dart';
import 'prompt_to_favo_page_viewmodel.dart';

class PromptToFavoPageView extends StackedView<PromptToFavoPageViewModel> {
  const PromptToFavoPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PromptToFavoPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        actions: [
          InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            onTap: () {
              viewModel.deleteAllFavoriteImages();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Tooltip(
                message: 'Delete all picture',
                child: Icon(
                  Hero_icons_outline.trash,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
        title: Text('收藏'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Hero_icons_outline.arrow_left),
              onPressed: () {
                // 退出当前页面
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: viewModel.imagePathsList.isEmpty
          ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'No items found',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'The collection is empty',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: viewModel.imagePathsList.length, // 使用获取到的图片路径列表的长度
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 每行显示三张图片
                  crossAxisSpacing: 4.0, // 设置图片之间的横向间距
                  mainAxisSpacing: 4.0, // 设置图片之间的纵向间距
                ),
                itemBuilder: (context, index) {
                  final imagePath =
                      viewModel.imagePathsList[index]; // 获取每个图片的文件路径
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              FullscreenImageViewer.open(
                                context: context,
                                child: Image.file(
                                  File(imagePath),
                                  fit: BoxFit.contain,
                                ),
                                closeWidget: const Icon(
                                    Hero_icons_outline.x_mark), // 关闭按钮
                                onTap: () async {
                                  print('这里是PromptToFavoPageView');
                                },
                              );
                            },
                            child: Image.file(
                              File(imagePath), // 从文件路径中加载图像
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
    );
  }

  @override
  PromptToFavoPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromptToFavoPageViewModel();
}
