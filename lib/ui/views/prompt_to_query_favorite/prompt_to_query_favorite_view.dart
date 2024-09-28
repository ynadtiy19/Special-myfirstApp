import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../prompt_to_favo_page/prompt_to_favo_page_view.dart';
import 'prompt_to_query_favorite_viewmodel.dart';

class PromptToQueryFavoriteView
    extends StackedView<PromptToQueryFavoriteViewModel> {
  final ScrollController scrollController;
  const PromptToQueryFavoriteView({required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PromptToQueryFavoriteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 241, 241, 0.8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: GridView.count(
            crossAxisCount: 2, // 设置每行显示的列数
            crossAxisSpacing: 6.0, // 设置图片之间的横向间距
            mainAxisSpacing: 6.0,
            shrinkWrap: true, // 允许GridView在ScrollView中适应高度
            physics:
                const NeverScrollableScrollPhysics(), // 禁止GridView内部滚动，由外部的SingleChildScrollView控制
            children: [
              // 第一个单元格
              GestureDetector(
                onTap: () {
                  // 进入收藏页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PromptToFavoPageView(),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      colors: [
                        Colors.white, // 中圈颜色
                        Color(0xFF8DF390), // 外间颜色
                      ],
                      stops: [0.0, 1.0], // 渐变的停止点
                      center: Alignment.center, // 渐变中心
                      radius: 0.5, // 渐变半径
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 216, 219, 231).withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: Offset(0, 0), // 发光效果没有偏移
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Hero_icons_outline.heart,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
              ),

              // 第二个单元格
              ...viewModel.containers,

              // 第三个单元格
              GestureDetector(
                onTap: () {
                  viewModel.incrementContainerCount(context);
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      colors: [
                        Colors.white, // 中圈颜色
                        Color(0x60E668FF), // 外间颜色
                      ],
                      stops: [0.0, 1.0], // 渐变的停止点
                      center: Alignment.center, // 渐变中心
                      radius: 0.5, // 渐变半径
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 216, 219, 231).withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: Offset(0, 0), // 发光效果没有偏移
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Hero_icons_outline.plus,
                      color: Colors.pinkAccent,
                      size: 85,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PromptToQueryFavoriteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromptToQueryFavoriteViewModel();
}
