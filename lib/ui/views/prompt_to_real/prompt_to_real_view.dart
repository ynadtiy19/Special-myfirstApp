import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:toastification/toastification.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../promotetowords/promotetowords_view.dart';
import '../prompt_to_query_favorite/prompt_to_query_favorite_view.dart';
import '../prompt_to_translate/prompt_to_translate_view.dart';
import '../travelcard/travelcard_view.dart';
import 'UItools/SimpleScrollView.dart';
import 'prompt_to_real_viewmodel.dart';

class PromptToRealView extends StackedView<PromptToRealViewModel> {
  const PromptToRealView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PromptToRealViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      backgroundColor: const Color.fromARGB(255, 216, 219, 231),
      body: Padding(
        padding: EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton.outlined(
                    tooltip: '打开旋转相册',
                    icon: const Icon(Hero_icons_outline.light_bulb),
                    color: Colors.grey,
                    onPressed: () {
                      showCustomDialog(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      maxLength: 1000,
                      controller: viewModel.query,
                      maxLines: 2,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.send,
                      onFieldSubmitted: (value) async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        await viewModel.generateImagesFromMultipleSources(
                            context, viewModel.query.text);
                      },
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Theme.of(context)
                            .colorScheme
                            .primary
                            .withAlpha(100),
                        hintText: '输入提示文本...',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton.outlined(
                            tooltip: '生成图像',
                            onPressed: viewModel.isGenerating
                                ? null
                                : () async {
                                    FocusScope.of(context).unfocus();
                                    print(PromptToRealViewModel.isloading);
                                    // viewModel.isloadingT();
                                    print(PromptToRealViewModel.isloading);
                                    await viewModel
                                        .generateImagesFromMultipleSources(
                                            context, viewModel.query.text);
                                    // viewModel.isloadingF(); // 重置加载状态
                                  },
                            iconSize: 27.0,
                            color: Colors.black87,
                            icon: const Icon(Hero_icons_outline.rocket_launch),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Painting',
                    style: GoogleFonts.sacramento().copyWith(
                      color: const Color.fromARGB(255, 5, 5, 2),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                const SizedBox(width: 4),
                Row(
                  children: [
                    Ink(
                      width: 65,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          onTap: () async {
                            final clipboardData =
                                await Clipboard.getData(Clipboard.kTextPlain);
                            viewModel.query.text = clipboardData!.text!;
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Tooltip(
                              message: 'Paste from clipboard',
                              child: Icon(
                                Hero_icons_outline.square_2_stack,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Ink(
                      width: 65,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          onTap: () {
                            viewModel.query.clear();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Tooltip(
                              message: 'Clean',
                              child: Icon(
                                Hero_icons_outline.archive_box_x_mark,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Ink(
                      width: 65,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          onTap: () {
                            viewModel.deleteImage(context);
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
                      ),
                    ),
                    Ink(
                      width: 65,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              showDragHandle: true,
                              builder: (BuildContext context) {
                                return DraggableScrollableSheet(
                                  expand: false,
                                  initialChildSize: 0.83, // 初始高度为屏幕高度的30%
                                  minChildSize: 0.1, // 最小高度为屏幕高度的10%
                                  maxChildSize: 0.95, // 最大高度为屏幕高度的80%
                                  builder: (BuildContext context,
                                      ScrollController scrollController) {
                                    return DefaultTabController(
                                      length: 4,
                                      child: StatefulBuilder(
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                          final TabController tabController =
                                              DefaultTabController.of(context);

                                          // 使用标志变量来避免多次调用 setState
                                          bool isScrolling = false;

                                          tabController.addListener(() {
                                            // 仅在选项卡切换时调用 setState
                                            if (!tabController
                                                .indexIsChanging) {
                                              setState(() {}); //滑动tab的关键
                                            }
                                          });
                                          return Column(
                                            children: [
                                              CustomTabBar(
                                                  tabController: tabController),
                                              Expanded(
                                                child: NotificationListener<
                                                    ScrollNotification>(
                                                  onNotification:
                                                      (scrollNotification) {
                                                    // 仅在滚动结束时调用 setState
                                                    if (scrollNotification
                                                        is ScrollEndNotification) {
                                                      if (isScrolling) {
                                                        setState(() {});
                                                        // isScrolling = true;
                                                        Future.delayed(
                                                            const Duration(
                                                                milliseconds:
                                                                    10), () {
                                                          isScrolling = false;
                                                        });
                                                      }
                                                    }
                                                    return true;
                                                  },
                                                  child: TabBarView(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    controller: tabController,
                                                    children: [
                                                      TravelcardView(
                                                        scrollController:
                                                            scrollController,
                                                      ),
                                                      PromptToQueryFavoriteView(
                                                        scrollController:
                                                            scrollController,
                                                      ),
                                                      PromptToTranslateView(
                                                        scrollController:
                                                            scrollController,
                                                      ),
                                                      PromotetowordsView(
                                                        scrollController:
                                                            scrollController,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Tooltip(
                              message: 'More',
                              child: Icon(
                                Hero_icons_outline.rectangle_stack,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // !PromptToRealViewModel.isInitialLoading &&
            !PromptToRealViewModel.isloading //此时isInitialLoading为true（改变了）
                ? viewModel.uuimageBox.isEmpty
                    ? const SizedBox(
                        height: 250, width: 250, child: Text('原始图像为空'))
                    : !PromptToRealViewModel.isInitialLoading
                        ? Expanded(
                            child: GridView.builder(
                              physics: const BouncingScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, // 每行显示两张图片
                                crossAxisSpacing: 4.0, // 设置图片之间的横向间距
                                mainAxisSpacing: 4.0,
                              ), // 设置图片之间的纵向间距),
                              itemCount: viewModel.uuimageBox.length,
                              itemBuilder: (context, index) {
                                var image = viewModel.uuimageBox.getAt(index);
                                return Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: InstaImageViewer(
                                          uonTap: (bool value) async {
                                            if (value) {
                                              // 如果 value 为 false，执行保存操作
                                              await viewModel
                                                  .saveImageFromBase64(
                                                      context, image.data);
                                              return viewModel.instaAction1 ??
                                                  true;
                                            } else {
                                              toastification.show(
                                                context: context,
                                                type:
                                                    ToastificationType.success,
                                                style: ToastificationStyle
                                                    .flatColored,
                                                title: const Text(
                                                    "取消保存，这张图片已经存在于收藏中"),
                                                description: const Text(
                                                    "Cancel save, this image already exists in favorites."),
                                                alignment:
                                                    Alignment.bottomCenter,
                                                autoCloseDuration:
                                                    const Duration(
                                                        milliseconds: 2350),
                                                primaryColor: Colors.green,
                                                icon: const Icon(
                                                    Hero_icons_outline
                                                        .check_badge),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                applyBlurEffect: true,
                                              );
                                              return false; // 返回 true
                                            }
                                          },
                                          ufavoriteIcon:
                                              Hero_icons_outline.heart,
                                          ucloseIcon: Hero_icons_outline.x_mark,
                                          disableSwipeToDismiss: true,
                                          backgroundColor: const Color.fromARGB(
                                              255, 216, 219, 231),
                                          child: Image.memory(
                                            base64Decode(image!.data),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        : Expanded(
                            child: GridView.builder(
                              physics: const BouncingScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, // 每行显示两张图片
                                crossAxisSpacing: 4.0, // 设置图片之间的横向间距
                                mainAxisSpacing: 4.0,
                              ), // 设置图片之间的纵向间距),
                              itemCount: PromptToRealViewModel.images.length,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: InstaImageViewer(
                                          ucloseIcon: Hero_icons_outline.x_mark,
                                          disableSwipeToDismiss: true,
                                          backgroundColor: const Color.fromARGB(
                                              255, 216, 219, 231),
                                          child: Image.memory(
                                            base64Decode(PromptToRealViewModel
                                                .images[index]),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Lottie.asset(
                            'images/loading3.json',
                            frameRate: const FrameRate(120),
                            repeat: true,
                            animate: true,
                          ),
                        ),
                        const Text(
                          '请等待...',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  PromptToRealViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromptToRealViewModel();

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // 点击对话框外部区域可以关闭
      builder: (BuildContext context) {
        return Center(
          child: SizedBox(
            height: 200, // 自定义高度
            width: 410, // 自定义宽度
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(55), // 设置圆角
              ),
              backgroundColor: Colors.transparent,
              child: const Align(
                alignment: Alignment.center,
                child: SimpleScrollView(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final TabController tabController;

  CustomTabBar({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          CustomTabButton(
            text: '图库',
            index: 0,
            tabController: tabController,
            defaultColor: Colors.transparent,
            selectedColor: const Color.fromRGBO(253, 218, 225, 1),
          ),
          const SizedBox(width: 8.0),
          CustomTabButton(
            text: '收藏',
            index: 1,
            tabController: tabController,
            defaultColor: Colors.transparent,
            selectedColor: const Color.fromRGBO(253, 218, 225, 1),
          ),
          const SizedBox(width: 8.0),
          CustomTabButton(
            text: '翻译',
            index: 2,
            tabController: tabController,
            defaultColor: Colors.transparent,
            selectedColor: const Color.fromRGBO(253, 218, 225, 1),
          ),
          const SizedBox(width: 8.0),
          CustomTabButton(
            text: '润色',
            index: 3,
            tabController: tabController,
            defaultColor: Colors.transparent,
            selectedColor: const Color.fromRGBO(248, 195, 206, 1.0),
          ),
        ],
      ),
    );
  }
}

class CustomTabButton extends StatelessWidget {
  final String text;
  final int index;
  final TabController tabController;
  final Color defaultColor;
  final Color selectedColor;

  CustomTabButton({
    required this.text,
    required this.index,
    required this.tabController,
    required this.defaultColor,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    bool isActive = tabController.index == index;
    return Ink(
      decoration: BoxDecoration(
        color: isActive ? selectedColor : defaultColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          tabController.animateTo(index);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
