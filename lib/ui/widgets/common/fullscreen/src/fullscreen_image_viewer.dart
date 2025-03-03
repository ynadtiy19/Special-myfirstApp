import 'package:flutter/material.dart';

import 'fullscreen_viewer.dart';

class FullscreenImageViewer {
  FullscreenImageViewer._();

  /// [onTap] is the callback function that is triggered when interacting with the image viewer
  static Future<void> open({
    required BuildContext context,
    required Widget child,
    required Future<void> Function() onTap,
    Widget? closeWidget,
    Widget? saveWidget,
  }) {
    return Navigator.of(context, rootNavigator: true).push(
      PageRouteBuilder(
        fullscreenDialog: true,
        opaque: false,
        pageBuilder: (context, animation, _) => FullscreenViewer(
          onTap: onTap, // Pass the onTap callback directly
          openAnimation: animation,
          closeWidget: closeWidget,
          downloadWidget: saveWidget,
          child: child,
        ),
      ),
    );
  }
}
