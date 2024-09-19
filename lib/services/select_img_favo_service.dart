import 'package:hung/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class SelectImgFavoService {
  final _navigationService = locator<NavigationService>();
  late String _filename = '';
  String get filename => _filename;

  late String _filepath = '';
  String get filepath => _filepath;

  // Place anything here that needs to happen before we get into the application
  Future replacetoSelectView(String filename, String filepath) async {
    // await Future.delayed(const Duration(seconds: 3));

    _filename = filename;
    _filepath = filepath;
    print(filename);
    print(filepath);

    _navigationService.replaceWithPromptToSelectView();
  }
}
