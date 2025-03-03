import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../../widgets/common/fullscreen/src/fullscreen_image_viewer.dart';
import 'travelcard_viewmodel.dart';

class TravelcardView extends StackedView<TravelcardViewModel> {
  final ScrollController scrollController;

  const TravelcardView({required this.scrollController, Key? key})
      : super(key: key);

  //传递匿名函数

  @override
  Widget builder(
    BuildContext context,
    TravelcardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: viewModel.uuimageBox.length,
        itemBuilder: (context, index) {
          final image = viewModel.uuimageBox.getAt(index);
          return ListTile(
            contentPadding: const EdgeInsets.all(8.0),
            leading: GestureDetector(
              onTap: () {
                FullscreenImageViewer.open(
                  context: context,
                  child: Image.memory(
                    base64Decode(image.data),
                    fit: BoxFit.contain,
                  ),
                  closeWidget: const Icon(Hero_icons_outline.x_mark), // 关闭按钮
                  saveWidget: const Icon(
                      Hero_icons_outline.arrow_down_tray), // 如果需要保存按钮可以传入
                  onTap: () async {
                    // 在图片点击时触发的自定义回调逻辑
                    print("图片被点击");
                  },
                );
              },
              child: Image.memory(
                base64Decode(image!.data),
                fit: BoxFit.contain,
              ),
            ),
            title: const Text('Image Data'),
            subtitle: Text('Date: ${image.date}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActionChip(
                    label: const Text('下载'),
                    onPressed: () {
                      viewModel.singleImageToGallery(image.data);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Row(
                            children: [
                              Icon(
                                Hero_icons_outline.trash,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '相片已删除.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.yellowAccent,
                          duration: const Duration(milliseconds: 1600),
                          behavior: SnackBarBehavior.fixed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      );
                    }),
                const SizedBox(width: 5.0), // 添加一些间距
                ActionChip(
                    label: const Text('删除'),
                    onPressed: () {
                      viewModel.deleteImage(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Row(
                            children: [
                              Icon(
                                Hero_icons_outline.trash,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '相片已删除.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.yellowAccent,
                          duration: const Duration(milliseconds: 1600),
                          behavior: SnackBarBehavior.fixed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TravelcardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TravelcardViewModel();
}
