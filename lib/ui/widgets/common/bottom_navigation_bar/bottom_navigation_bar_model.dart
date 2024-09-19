import 'package:stacked/stacked.dart';

class BottomNavigationBarModel extends BaseViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onTabChange(int index) {
    // Add this line for debugging
    print('Selected: $index');
    rebuildUi();
  }
}
