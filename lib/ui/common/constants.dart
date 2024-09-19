import 'package:flutter/material.dart';

import 'size_config.dart';

double animatedPositionedLEftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal * 7.5;
    case 1:
      return AppSizes.blockSizeHorizontal * 29.5;
    case 2:
      return AppSizes.blockSizeHorizontal * 50.5;
    case 3:
      return AppSizes.blockSizeHorizontal * 71.5;
    case 4:
      return AppSizes.blockSizeHorizontal * 73.5;
    default:
      return 0;
  }
}
//
// Created by CodeWithFlexZ
// Tutorials on my YouTube
//
//! Instagram
//! @CodeWithFlexZ
//
//? GitHub
//? AmirBayat0
//
//* YouTube
//* Programming with FlexZ
//

final List<Color> gradient = [
  Colors.yellow.withOpacity(0.8),
  Colors.yellow.withOpacity(0.5),
  Colors.transparent
];
