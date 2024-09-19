import 'package:flutter/material.dart';
import 'package:hung/app/app.locator.dart';
import 'package:hung/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TravelstoryViewModel extends BaseViewModel {
  int _uuuindex = 0;
  PageController _pageController = PageController();

  int get uuuindex => _uuuindex;
  PageController get pageController => _pageController;

  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;
  bool _isExpanded = false;
  get categorySelections => _isExpanded;
  final _navigationService = locator<NavigationService>();

  Future<void> navigateTotravelstory(BuildContext context, int index) async {
    _navigationService.navigateTo(Routes.storylyInstagramView);
  }

  void toggleCategorySelection() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  TravelstoryViewModel() {
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    _scrollOffset = _scrollController.offset;
    notifyListeners();
  }

  ScrollController get scrollController => _scrollController;
  double get scrollOffset => _scrollOffset;

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void animateToPage(int index) {
    _uuuindex = index;
    _pageController.jumpToPage(index);
  }
}
