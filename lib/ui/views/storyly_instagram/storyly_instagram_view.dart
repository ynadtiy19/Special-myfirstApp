import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storyly_flutter/storyly_flutter.dart';

import 'storyly_instagram_viewmodel.dart';

class StorylyInstagramView extends StackedView<StorylyInstagramViewModel> {
  const StorylyInstagramView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StorylyInstagramViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Plugin example app'),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(8.0)),
          Container(
              height: 90,
              margin: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                dashPattern: [8, 3],
                padding: EdgeInsets.all(8),
                child: Center(
                  child: StorylyView(
                    //storylyView中含有自动水平滚动机制👌
                    onStorylyViewCreated: viewModel.onStorylyViewCreated,
                    androidParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "small"
                      ..storyHeaderShareIcon = "launch_background"
                      ..storyHeaderCloseIcon = "launch_background"
                      ..storyItemTextTypeface = "Lobster1.4.otf"
                      ..storyInteractiveTextTypeface = "Lobster1.4.otf"
                      ..storyItemProgressBarColor = [Colors.red, Colors.yellow]
                      ..storyItemIconBorderColor = [Colors.red, Colors.red],
                    iosParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "small"
                      ..storyHeaderShareIcon = "AppIcon"
                      ..storyHeaderCloseIcon = "AppIcon"
                      ..storyItemTextTypeface = "Lobster1.4.otf"
                      ..storyInteractiveTextTypeface = "Lobster1.4.otf"
                      ..storyItemProgressBarColor = [Colors.red, Colors.yellow]
                      ..storyItemIconBorderColor = [Colors.red, Colors.red],
                    storylyLoaded: (storyGroups, dataSource) {
                      debugPrint(
                          "storylyLoaded -> storyGroups: ${storyGroups.length}");
                    },
                  ),
                ),
              )),
          const Padding(padding: EdgeInsets.all(8.0)),
          Container(
              height: 120,
              margin: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [8, 3],
                radius: Radius.circular(10),
                padding: EdgeInsets.all(8),
                child: Center(
                  child: StorylyView(
                    onStorylyViewCreated: viewModel.onStorylyViewCreated,
                    androidParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "large",
                    iosParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "large",
                    storylyLoaded: (storyGroups, dataSource) {
                      debugPrint(
                          "storylyLoaded -> storyGroups: ${storyGroups.length}");
                    },
                  ),
                ),
              )),
          const Padding(padding: EdgeInsets.all(8.0)),
          Container(
              height: 170,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [8, 3],
                radius: Radius.circular(10),
                padding: EdgeInsets.all(8),
                child: Center(
                  child: StorylyView(
                    onStorylyViewCreated: viewModel.onStorylyViewCreated,
                    androidParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "custom"
                      ..storyGroupIconHeight =
                          (80 * View.of(context).devicePixelRatio).round()
                      ..storyGroupIconWidth =
                          (80 * View.of(context).devicePixelRatio).round()
                      ..storyGroupIconCornerRadius =
                          (20 * View.of(context).devicePixelRatio).round()
                      ..storyGroupListHorizontalEdgePadding =
                          (20 * View.of(context).devicePixelRatio).round()
                      ..storyGroupListHorizontalPaddingBetweenItems =
                          (10 * View.of(context).devicePixelRatio).round()
                      ..storyGroupTextTypeface = "Lobster1.4.otf"
                      ..storyGroupTextSize =
                          (20 * View.of(context).devicePixelRatio).round()
                      ..storyGroupTextLines = 3
                      ..storyGroupTextColorSeen = Colors.green
                      ..storyGroupTextColorNotSeen = Colors.red
                      ..storyGroupIconBorderColorNotSeen = [
                        Colors.red,
                        Colors.red
                      ]
                      ..storyGroupIconBorderColorSeen = [
                        Colors.white,
                        Colors.white
                      ]
                      ..storyGroupIconBackgroundColor = Colors.black
                      ..storyGroupPinIconColor = Colors.black,
                    iosParam: StorylyParam()
                      ..storylyId = viewModel.UstorylyToken
                      ..storyGroupSize = "custom"
                      ..storyGroupIconHeight = 80
                      ..storyGroupIconWidth = 80
                      ..storyGroupIconCornerRadius = 20
                      ..storyGroupListHorizontalEdgePadding = 20
                      ..storyGroupListHorizontalPaddingBetweenItems = 10
                      ..storyGroupTextTypeface = "Lobster1.4.otf"
                      ..storyGroupTextSize = 20
                      ..storyGroupTextLines = 3
                      ..storyGroupTextColorSeen = Colors.green
                      ..storyGroupTextColorNotSeen = Colors.red
                      ..storyGroupIconBorderColorNotSeen = [
                        Colors.red,
                        Colors.red
                      ]
                      ..storyGroupIconBorderColorSeen = [
                        Colors.white,
                        Colors.white
                      ]
                      ..storyGroupIconBackgroundColor = Colors.black
                      ..storyGroupPinIconColor = Colors.black,
                    storylyLoaded: (storyGroups, dataSource) {
                      debugPrint(
                          "storylyLoaded -> storyGroups: ${storyGroups.length}");
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  StorylyInstagramViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StorylyInstagramViewModel();
}
