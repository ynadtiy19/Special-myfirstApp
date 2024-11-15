import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:stacked/stacked.dart';
import 'package:toastification/toastification.dart';

import '../../utils/hero-icons-outline_icons.dart';
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
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: viewModel.uuimageBox.length,
        itemBuilder: (context, index) {
          final image = viewModel.uuimageBox.getAt(index);
          return ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: InstaImageViewer(
              ucloseIcon: Hero_icons_outline.x_mark,
              disableSwipeToDismiss: true,
              backgroundColor: const Color.fromARGB(255, 216, 219, 231),
              child: Image.memory(
                base64Decode(image!.data),
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
            title: Text('Image Data'),
            subtitle: Text('Date: ${image.date}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ActionChip(
                    label: Text('下载'),
                    onPressed: () {
                      viewModel.singleImageToGallery(image.data);
                      toastification.show(
                        context: context,
                        type: ToastificationType.success,
                        style: ToastificationStyle.flatColored,
                        title: const Text("图片已保存进相册"),
                        description:
                            const Text("Photo has been saved to the album."),
                        alignment: Alignment.bottomCenter,
                        autoCloseDuration: const Duration(milliseconds: 1600),
                        primaryColor: Colors.green,
                        icon: const Icon(Hero_icons_outline.check_circle),
                        borderRadius: BorderRadius.circular(15.0),
                        applyBlurEffect: true,
                      );
                    }),
                const SizedBox(width: 5.0), // 添加一些间距
                ActionChip(
                    label: const Text('删除'),
                    onPressed: () {
                      viewModel.deleteImage(index);
                      toastification.show(
                        context: context,
                        type: ToastificationType.success,
                        style: ToastificationStyle.flatColored,
                        title: const Text("图片已删除"),
                        description: const Text("Photo has been deleted."),
                        alignment: Alignment.bottomCenter,
                        autoCloseDuration: const Duration(milliseconds: 1600),
                        primaryColor: Colors.yellowAccent,
                        icon: const Icon(Hero_icons_outline.trash),
                        borderRadius: BorderRadius.circular(15.0),
                        applyBlurEffect: true,
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
