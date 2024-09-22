import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stacked/stacked.dart';
import 'package:toastification/toastification.dart';

import '../../utils/hero-icons-outline_icons.dart';
import 'pinterest_viewmodel.dart';

class PinterestView extends StackedView<PinterestViewModel> {
  const PinterestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PinterestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery(画廊)',
            style: GoogleFonts.sacramento().copyWith(
              color: const Color.fromARGB(255, 19, 197, 24),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
        actions: [
          IconButton(
              icon: Icon(LineIcons.delicious),
              onPressed: () {
                viewModel.deleteGalleryImage(context);
              }),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => _showSearchBar(context, viewModel),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: viewModel.imageUrls.length,
        itemBuilder: (context, index) {
          final imageId = viewModel.imageUrls[index];
          final width = imageId['width'] as int;
          final height = imageId['height'] as int;
          final url = imageId['url'] as String; // 提取 URL
          final originalUrl = imageId['original'] as String;

          return InstaImageViewer(
              uonTap: (bool value) async {
                print(originalUrl);
                await viewModel.singleImageToGallery(originalUrl);
                toastification.show(
                  context: context,
                  type: ToastificationType.success,
                  style: ToastificationStyle.flatColored,
                  title: const Text("这张图片已经添加进相册"),
                  description:
                      const Text("This picture has been added to the album."),
                  alignment: Alignment.bottomCenter,
                  autoCloseDuration: const Duration(milliseconds: 2350),
                  primaryColor: Colors.green,
                  icon: const Icon(LineIcons.checkCircleAlt),
                  borderRadius: BorderRadius.circular(15.0),
                  applyBlurEffect: true,
                );
                return true;
              },
              ufavoriteIcon: Hero_icons_outline.heart,
              ucloseIcon: Hero_icons_outline.x_mark,
              disableSwipeToDismiss: true,
              backgroundColor: const Color.fromARGB(255, 216, 219, 231),
              child: AspectRatio(
                aspectRatio: width / height,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0), // 圆角
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                      color: Colors.green,
                    )), // 加载中占位符
                    errorWidget: (context, url, error) =>
                        const Center(child: Icon(Icons.error)), // 加载失败占位符
                  ),
                ),
              ));
        },
      ),
    );
  }

  void _showSearchBar(BuildContext context, PinterestViewModel viewModel) {
    final TextEditingController searchController = TextEditingController();
    final FocusNode searchFocusNode = FocusNode(); // 创建 FocusNode

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        // 延迟弹出键盘以便 UI 初始化完成
        Future.delayed(const Duration(milliseconds: 100), () {
          if (dialogContext.mounted) {
            // 检查上下文是否有效
            FocusScope.of(dialogContext)
                .requestFocus(searchFocusNode); // 使 TextField 获取焦点并弹出键盘
          }
        });
        return Align(
          alignment: Alignment.topCenter, // 对齐到顶部
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0), // 距离顶部的距离
            child: Material(
              color: Colors.transparent, // 透明背景
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white, // 背景颜色
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        focusNode: searchFocusNode, // 将 FocusNode 传递给 TextField
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                          hintText: '搜索',
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                        ),
                        onSubmitted: (value) {
                          Navigator.of(context).pop(); // 收起对话框
                          viewModel.fetchAndParseData(value); // 执行搜索逻辑
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        FocusScope.of(dialogContext).unfocus(); // 收起键盘
                        Navigator.of(dialogContext).pop(); // 关闭弹窗
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  PinterestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PinterestViewModel();
}
