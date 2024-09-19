import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hung/ui/common/app_colors.dart';
import 'package:hung/ui/common/ui_helpers.dart';
import 'package:line_icons/line_icons.dart';
import 'package:side_rail/side_rail.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import 'sider_bar_page_model.dart';

class SiderBarPage extends StackedView<SiderBarPageModel> {
  const SiderBarPage({super.key});

  @override
  Widget builder(
    BuildContext context,
    SiderBarPageModel viewModel,
    Widget? child,
  ) {
    int _selectedIndex = 1;
    bool isExpanded = false;
    return Scaffold(
      backgroundColor: kcRiceYellowColor,
      body: Row(
        children: [
          SideRail(
            selectedTextStyle: const TextStyle(color: Colors.white),
            isExpanded: !isExpanded,
            selectedIndex: _selectedIndex,
            onTap: (index) {
              viewModel.SideRailRouteTo(index);
            },
            expandedWidth: 304,
            backgroundColor: kcRiceYellowColor,
            unselectedColor: Colors.black,
            tileActiveColor: Color(kcHotPinkWithTealColor.value),
            logoPadding: 20,
            margin: const EdgeInsets.all(5),
            logo: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2), //控制外部边距
                      padding: const EdgeInsets.all(2), //控制内部边距
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.amber,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(201, 200, 0, 255),
                                offset: Offset(10, 10),
                                spreadRadius: 2,
                                blurRadius: 20),
                            BoxShadow(
                                color: Color.fromARGB(255, 255, 238, 3),
                                offset: Offset(-10, -10),
                                spreadRadius: 2,
                                blurRadius: 20),
                          ]),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () async {
                          await viewModel.initializeAndSelectImage();
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45.toDouble() + 2,
                              child: CircleAvatar(
                                radius: 45.toDouble(),
                                backgroundImage: viewModel.avatarImagePath !=
                                        null
                                    ? FileImage(File(
                                            viewModel.avatarImagePathValue!))
                                        as ImageProvider
                                    : AssetImage('images/dev.png'),
                              ),
                            ),
                            // Positioned(
                            //   bottom:
                            //       0, // Adjust this value as needed to position the segment below the avatar
                            //   child: CustomPaint(
                            //     painter: ArcPainter(),
                            //     size: Size(91,
                            //         45), // Adjust this size to fit the segment within the circular area
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alanuuu.ldeyu",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                fontSize: 18),
                          ),
                          Text(
                            "GoogleGDE&Dev",
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Material(
                                // 确保有Material组件
                                color: Colors.transparent, // Material的颜色应该是透明的
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10),
                                  onTap: () => launchUrl(
                                    Uri.parse(
                                      'https://github.com/madurom',
                                    ),
                                  ),
                                  child: Ink(
                                    // 使用Ink代替Container来设置颜色

                                    color: Colors.transparent, // 在这里设置颜色
                                    child: Text(
                                      'Mine More',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          letterSpacing: 0.41),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                LineIcons.github,
                                color: Colors.amber,
                              ),
                              Icon(LineIcons.shoppingCart,
                                  color: kcwaterGreenwithTeal),
                            ],
                          ),
                        ])
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => launchUrl(
                        Uri.parse(
                          'https://om432.wed2c.com',
                        ),
                      ),
                      child: const Text(
                        'Buy Me Coffee',
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0.41,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Icon(LineIcons.coffee, color: Colors.amber),
                  ],
                ),
              ],
            ),
            footer: Visibility(
              visible: !isExpanded,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent.withOpacity(0.2),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "升级",
                          style: TextStyle(color: Colors.black),
                        )),
                    verticalSpaceSmall,
                    Text(
                      "Upgrade to PRO version for more features.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey, fontSize: 11),
                    )
                  ],
                ),
              ),
            ),
            navItems: const [
              NavDestinationItem(
                  isSectionHeader: false,
                  radius: 20,
                  trailing: Icon(
                    LineIcons.seedling,
                    size: 16,
                  ),
                  icon: Icon(LineIcons.home),
                  title: Text("Dashboard")),
              NavDestinationItem(
                  isSectionHeader: false,
                  radius: 20,
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    size: 16,
                  ),
                  icon: Icon(Icons.payment),
                  title: Text("Transaction")),
              NavDestinationItem(
                  isSectionHeader: false,
                  radius: 20,
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    size: 16,
                  ),
                  icon: Icon(Icons.credit_card),
                  title: Text("Card Payments")),
            ],
          ),
        ],
      ),
    );
  }

  @override
  SiderBarPageModel viewModelBuilder(
    BuildContext context,
  ) =>
      SiderBarPageModel();
}
