import 'package:flutter/material.dart';
import 'package:hung/app/app.bottomsheets.dart';
import 'package:hung/app/app.dialogs.dart';
import 'package:hung/app/app.locator.dart';
import 'package:hung/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/image_repository_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  String get counterLabel => 'Counter is: $_counter';
  int _counter = 0;

  int _uuuindex = 0;
  int get uuuindex => _uuuindex;

  final ImageRepository = locator<ImageRepositoryService>();
  @override
  List<ListenableServiceMixin> get listenableServices => [
        ImageRepository,
      ];

  bool get isBottomNavVisibleValue => ImageRepository.isBottomNavVisibleValue;

  void onTabChange(int index) {
    _uuuindex = index; // 将选中的索引值发送到BehaviorSubject中
    print('uuu :$index');
    rebuildUi(); // 通知视图更新,get到上面
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
