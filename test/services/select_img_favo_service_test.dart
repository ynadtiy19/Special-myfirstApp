import 'package:flutter_test/flutter_test.dart';
import 'package:hung/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SelectImgFavoServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}