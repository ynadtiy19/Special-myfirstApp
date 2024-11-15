import 'package:flutter/material.dart';
import 'package:hung/ui/common/bottom_nav_btn.dart';
import 'package:hung/ui/common/clipper.dart';
import 'package:hung/ui/common/constants.dart';
import 'package:hung/ui/common/size_config.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/hero-icons-outline_icons.dart';
import 'bottom_nav_model.dart';

class BottomNav extends StackedView<BottomNavModel> {
  const BottomNav(this.onTabSelectedNav, {super.key});
  final Function(int) onTabSelectedNav;

  @override
  Widget builder(
    BuildContext context,
    BottomNavModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppSizes.blockSizeHorizontal * 4.5, 5,
          AppSizes.blockSizeHorizontal * 4.5, 5),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        elevation: 6,
        child: Ink(
            height: AppSizes.blockSizeHorizontal * 16,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: AppSizes.blockSizeHorizontal * 3,
                  right: AppSizes.blockSizeHorizontal * 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BottomNavBTN(
                        onPressed: (val) {
                          onTabSelectedNav(val);
                          viewModel.setCurrentIndex(val);
                        },
                        icon: Hero_icons_outline.x_mark,
                        currentIndex: viewModel.currentIndex,
                        index: 0,
                      ),
                      BottomNavBTN(
                        onPressed: (val) {
                          onTabSelectedNav(val);
                          viewModel.setCurrentIndex(val);
                        },
                        icon: Hero_icons_outline.x_mark,
                        currentIndex: viewModel.currentIndex,
                        index: 1,
                      ),
                      BottomNavBTN(
                        onPressed: (val) {
                          onTabSelectedNav(val);
                          viewModel.setCurrentIndex(val);
                        },
                        icon: Hero_icons_outline.x_mark,
                        currentIndex: viewModel.currentIndex,
                        index: 2,
                      ),
                      BottomNavBTN(
                        onPressed: (val) {
                          onTabSelectedNav(val);
                          viewModel.setCurrentIndex(val);
                        },
                        icon: Hero_icons_outline.x_mark,
                        currentIndex: viewModel.currentIndex,
                        index: 3,
                      ),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.decelerate,
                  top: 0,
                  left: animatedPositionedLEftValue(viewModel.currentIndex),
                  child: Column(
                    children: [
                      Container(
                        height: AppSizes.blockSizeHorizontal * 1.0,
                        width: AppSizes.blockSizeHorizontal * 12,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          height: AppSizes.blockSizeHorizontal * 15,
                          width: AppSizes.blockSizeHorizontal * 12,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: gradient,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  BottomNavModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavModel();
}
