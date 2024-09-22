import 'package:flutter/material.dart';
import 'package:hung/ui/views/article/article_view.dart';
import 'package:hung/ui/views/chat/chat_view.dart';
import 'package:hung/ui/views/profile/profile_view.dart';
import 'package:hung/ui/widgets/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import '../pinterest/pinterest_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      bottomNavigationBar: AnimatedCrossFade(
        secondChild: SizedBox.shrink(), // 隐藏底部导航栏
        firstChild: MeBottomNavigationBar(
          (index) {
            // 处理底部导航栏按钮点击事件
            viewModel.onTabChange(index);
            print('Selected Index changed to: $index');
          },
        ),
        crossFadeState: viewModel.isBottomNavVisibleValue
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300), // 动画持续时间
      ),
      body: IndexedStack(
        index: viewModel.uuuindex,
        children: const <Widget>[
          ChatView(),
          ArticleView(), // 传递 jsonCache
          PinterestView(),
          ProfileView(),
          // 其他视图...
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
