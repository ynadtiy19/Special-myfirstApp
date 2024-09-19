import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import '../../../utils/hero-icons-outline_icons.dart';
import 'bottom_navigation_bar_model.dart';

class MeBottomNavigationBar extends StackedView<BottomNavigationBarModel> {
  const MeBottomNavigationBar(this.onTabSelected, {super.key});
  final Function(int) onTabSelected;
  @override
  Widget builder(
    BuildContext context,
    BottomNavigationBarModel viewModel,
    Widget? child,
  ) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Color(kcRiceYellowColor.value),
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color(kcRiceYellowColor.value),
            color: Colors.black,
            onTabChange: (index) {
              //其中index是gnov的一个固定变量，具体是onTabChange内部匿名函数的参数变量
              onTabSelected(index);
              // viewModel.showTagLabel(context);
              // viewModel.showTagmention(index);
              // viewModel.onTabChange(index);
              // viewModel.onTabSelectedCallback(index);
              // 根据gnov变量值，进行选中，作为匿名函数的一部分（匿名函数的参数）Notify parent about index change
            },
            tabs: const [
              GButton(
                icon: Hero_icons_outline.chat_bubble_bottom_center_text,
                text: 'Chat',
              ),
              GButton(
                icon: Hero_icons_outline.squares_2x2,
                text: 'Seeing',
              ),
              GButton(
                icon: Hero_icons_outline.globe_europe_africa,
                text: 'Globe',
              ),
              GButton(
                icon: Hero_icons_outline.users,
                text: 'Profile',
              ),
            ],
          ),
        )));
  }

  @override
  BottomNavigationBarModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavigationBarModel();
}
