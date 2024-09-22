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
            icon: Icon(Icons.search),
            onPressed: () => _showSearchBar(context, viewModel),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: viewModel.grideImages.length,
        itemBuilder: (context, index) {
          final image = viewModel.grideImages[index]['image'];
          final imageId = viewModel.imageUrls[index];
          final width = image['width'] as int;
          final height = image['height'] as int;

          return InstaImageViewer(
              uonTap: (bool value) async {
                await viewModel.singleImageToGallery(image['url']);
                toastification.show(
                  context: context,
                  type: ToastificationType.success,
                  style: ToastificationStyle.flatColored,
                  title: const Text("取消保存，这张图片已经存在于收藏中"),
                  description: const Text(
                      "Cancel save, this image already exists in favorites."),
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
                    imageUrl: imageId,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator()), // 加载中占位符
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

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Enter search query',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    ).then((_) {
      // 执行搜索逻辑
      final query = searchController.text.trim();
      if (query.isNotEmpty) {
        print('搜索: $query');
        viewModel.fetchAndParseData(query);
      }
    });
  }

  @override
  PinterestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PinterestViewModel();
}
