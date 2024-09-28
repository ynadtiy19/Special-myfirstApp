import 'package:cupertino_clock/cupertino_clock.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        viewModel.getFormattedDate();
      },
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            // 获取屏幕宽度和高度
            final screenWidth = constraints.maxWidth;
            final screenHeight =
                constraints.maxHeight; //响应式布局组件LayoutBuilder 和 Flexible
            return Center(
              child: Container(
                width: screenWidth, // 确保容器宽度填满屏幕
                height: screenHeight,
                color: const Color.fromARGB(255, 28, 149, 28),
                child: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            viewModel.formattedDate,
                            style: GoogleFonts.sacramento().copyWith(
                              color: const Color.fromARGB(255, 216, 219, 231),
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: screenHeight * 0.035),
                          InkWell(
                            onTap: () {
                              viewModel.setBottomNavVisible();
                              print('点击了卡片');
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: CupertinoAnalogClock(
                                size: screenHeight * 0.36,
                                location: 'America/New_York',
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.035),
                          GestureDetector(
                              onTap: () {
                                viewModel.changtobytesimage();
                              },
                              child: viewModel.isUBytesImage
                                  ? Image.memory(
                                      viewModel.imageData,
                                      fit: BoxFit.cover,
                                      width: screenWidth * 0.75,
                                    )
                                  : Image.asset(
                                      'images/uu${ProfileViewModel.selectedIndex}.jpg',
                                    )),
                          SizedBox(height: screenHeight * 0.015),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Text(
                                viewModel.uuSpecialwords,
                                style: const TextStyle(
                                  fontFamily: 'GabrielaStencil',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 216, 219, 231),
                                ),
                                textAlign: TextAlign.center,
                                // maxLines: 1,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                        ],
                      ) //竖屏
                    : Stack(
                        children: [
                          Positioned(
                            top: 8,
                            left: screenWidth * 0.12,
                            right: screenWidth * 0.12,
                            child: Text(
                              viewModel.formattedDate,
                              style: GoogleFonts.sacramento().copyWith(
                                color: const Color.fromARGB(255, 216, 219, 231),
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Positioned(
                            top: screenHeight * 0.145,
                            left: screenWidth * 0.075,
                            child: InkWell(
                              onTap: () {
                                viewModel.setBottomNavVisible();
                                print('点击了卡片');
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: CupertinoAnalogClock(
                                  size: screenWidth * 0.30,
                                  location: 'America/New_York',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: screenWidth * 0.065,
                            top: screenHeight * 0.285,
                            bottom: screenWidth * 0.105,
                            child: GestureDetector(
                                onTap: () {
                                  viewModel.changtobytesimage();
                                },
                                child: viewModel.isUBytesImage
                                    ? Image.memory(
                                        viewModel.imageData,
                                        fit: BoxFit.cover,
                                        width: screenWidth * 0.55,
                                      )
                                    : Image.asset(
                                        'images/uu${ProfileViewModel.selectedIndex}.jpg',
                                      )),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Positioned(
                            bottom: screenHeight * 0.02,
                            left: screenWidth * 0.10,
                            right: screenWidth * 0.10,
                            child: GestureDetector(
                              onTap: () {
                                ProfileViewModel.gotspecial
                                    ? viewModel.UchangeSpecialWords()
                                    : viewModel.changeSpecialWords();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Center(
                                  child: Text(
                                    viewModel.uuSpecialwords,
                                    style: const TextStyle(
                                      fontFamily: 'GabrielaStencil',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 216, 219, 231),
                                    ),
                                    textAlign: TextAlign.center,
                                    // maxLines: 1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ), //横屏
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
