import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'promotetowords_viewmodel.dart';

class PromotetowordsView extends StackedView<PromotetowordsViewModel> {
  const PromotetowordsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PromotetowordsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  PromotetowordsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromotetowordsViewModel();
}
