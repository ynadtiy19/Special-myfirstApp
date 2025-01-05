import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hung/ui/views/article/article_view.dart';
import 'package:hung/ui/widgets/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../../widgets/common/sider_bar_page/sider_bar_page.dart';
import '../chatsity/chatsity_view.dart';
import '../pinterest/pinterest_view.dart';
import '../profile/profile_view.dart';
import '../prompt_to_real/prompt_to_real_view.dart';
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
      key: viewModel.scaffoldKey,
      drawer: const Drawer(
        child: Tooltip(message: '侧边栏', child: SiderBarPage()),
      ), //此时没有APPbar,但是将Drawer放在主要Scaffold中
      bottomNavigationBar: AnimatedCrossFade(
        secondChild: const SizedBox.shrink(), // 隐藏底部导航栏
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
        children: <Widget>[
          DefaultTabController(
            length: 2,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                appBar: viewModel.isBottomNavVisibleValue
                    ? PreferredSize(
                        preferredSize: const Size.fromHeight(50 + 42.0),
                        child: AppBar(
                          leading: Builder(
                            builder: (context) => IconButton(
                              icon: const Icon(Hero_icons_outline
                                  .bars_3_bottom_left), // 设置自定义图标
                              onPressed: () {
                                viewModel.scaffoldKey.currentState
                                    ?.openDrawer(); // 打开侧边栏
                              },
                            ),
                          ),
                          toolbarHeight: 90,
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          automaticallyImplyLeading: false,
                          flexibleSpace: CustomPaint(
                            size: Size.fromHeight(50 + 2 * 42.0),
                            painter: DiagonalStripesPainter(),
                          ),
                          title: Text(
                            'Chating Buddy',
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          bottom: TabBar(
                            tabAlignment: TabAlignment.center,
                            indicatorColor: Colors.lightGreen,
                            indicatorSize: TabBarIndicatorSize.label,
                            isScrollable: true,
                            labelColor: Colors.black,
                            labelStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelColor: Colors.white54,
                            unselectedLabelStyle: const TextStyle(
                              fontSize: 10,
                            ),
                            tabs: [
                              Tab(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Chating'),
                                      SizedBox(width: 4),
                                      Icon(Hero_icons_outline.sparkles),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Prompting'),
                                      SizedBox(width: 4),
                                      Icon(Hero_icons_outline.paint_brush),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : null,
                body: const TabBarView(
                  physics: NeverScrollableScrollPhysics(), // 禁用滑动
                  children: [
                    ChatsityView(),
                    PromptToRealView(),
                  ],
                ),
              ),
            ),
          ),
          const ArticleView(),
          const PinterestView(),
          // const ShopWebView(),
          const ProfileView(),
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

class DiagonalStripesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final stripeWidth = 30.0;
    final colors = [
      const Color.fromRGBO(237, 209, 144, 1.0),
      const Color.fromRGBO(194, 193, 147, 1.0),
      const Color.fromRGBO(168, 163, 186, 1.0),
      const Color.fromRGBO(191, 146, 175, 1.0),
      const Color.fromRGBO(185, 201, 216, 1.0),
      const Color.fromRGBO(240, 189, 194, 1.0),
      const Color.fromRGBO(247, 216, 214, 1.0),
      const Color.fromRGBO(242, 191, 196, 1.0),
      const Color.fromRGBO(190, 204, 217, 1.0),
      const Color.fromRGBO(194, 151, 179, 1.0),
      const Color.fromRGBO(175, 167, 190, 1.0),
      const Color.fromRGBO(198, 196, 155, 1.0),
      const Color.fromRGBO(236, 209, 154, 1.0),
      const Color.fromRGBO(239, 184, 153, 1.0),
      const Color.fromRGBO(229, 155, 154, 1.0),
      const Color.fromRGBO(202, 174, 162, 1.0),
    ];

    for (int i = 0; i * stripeWidth < size.width + size.height; i++) {
      paint.color = colors[i % colors.length];
      final path = Path()
        ..moveTo(-size.height + i * stripeWidth, 0)
        ..lineTo(i * stripeWidth, size.height)
        ..lineTo((i + 1) * stripeWidth, size.height)
        ..lineTo(-size.height + (i + 1) * stripeWidth, 0)
        ..close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
