import 'package:flutter/material.dart';

import 'fullscreen_image_viewer.dart';

/// Simple widget wrapper to use [FullscreenImageViewer]
class FullscreenViewerWrapper extends StatelessWidget {
  /// Tag that will be provided to [Hero] widget
  final String heroTag;

  /// [Widget] that you would like to view in fullscreen
  final Widget child;

  /// Icon that can hide fullscreen widget
  final Widget? closeIcon;

  final Widget? saveIcon;

  /// Custom callback when the image is tapped
  final Future<void> Function() onTap;

  const FullscreenViewerWrapper({
    super.key,
    required this.heroTag,
    required this.child,
    this.closeIcon,
    this.saveIcon,
    required this.onTap, // Pass the onTap callback
  });

  @override
  Widget build(BuildContext context) {
    final heroChild = Hero(
      tag: heroTag,
      child: this.child,
    );

    return GestureDetector(
      onTap: () {
        // Open the fullscreen viewer with the hero transition and pass the onTap callback
        FullscreenImageViewer.open(
          context: context,
          child: heroChild,
          closeWidget: closeIcon,
          saveWidget: saveIcon,
          onTap: onTap, // Pass the onTap callback here
        );
      },
      child: heroChild,
    );
  }
}
