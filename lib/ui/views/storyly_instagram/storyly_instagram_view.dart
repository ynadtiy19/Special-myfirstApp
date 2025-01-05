import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
    );
  }

  @override
  StorylyInstagramViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StorylyInstagramViewModel();
}
