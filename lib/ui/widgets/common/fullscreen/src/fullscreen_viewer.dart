import 'dart:math';

import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';

class FullscreenViewer extends StatefulWidget {
  final Animation<double> openAnimation;
  final Widget? closeWidget;
  final Widget? downloadWidget;
  final Widget child;
  final Future<void> Function() onTap;

  const FullscreenViewer({
    super.key,
    required this.openAnimation,
    required this.child,
    required this.onTap,
    this.closeWidget,
    this.downloadWidget,
  });

  @override
  State<FullscreenViewer> createState() => _FullscreenViewerState();
}

class _FullscreenViewerState extends State<FullscreenViewer>
    with TickerProviderStateMixin {
  double get dragCoef =>
      min(1, (min(deltaController.value.abs(), 50) - 50).abs() / 50);
  double scale = 1;
  late final deltaController = AnimationController(
    vsync: this,
    upperBound: 300,
    lowerBound: -300,
    value: 0,
    duration: const Duration(milliseconds: 300),
  );

  final transformController = TransformationController();

  bool get scaled => (scale - 1).abs() > 0.01;
  bool canPop = true;

  @override
  void dispose() {
    deltaController.dispose();
    transformController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: deltaController,
          builder: (context, child) => AnimatedBuilder(
            animation: widget.openAnimation,
            builder: (context, _) => Container(
              color: Colors.black.withValues(
                alpha: 0.7 * widget.openAnimation.value * dragCoef,
              ),
              child: Transform.translate(
                offset: Offset(0, deltaController.value),
                child: child,
              ),
            ),
          ),
          child: Center(
            child: InteractiveViewer(
              minScale: 1,
              transformationController: transformController,
              onInteractionEnd: (details) {
                if (details.velocity.pixelsPerSecond.dy.abs() +
                            deltaController.value.abs() >
                        50 &&
                    !scaled &&
                    canPop) {
                  Navigator.pop(context);
                } else {
                  deltaController.animateTo(0.0);
                }
                if (details.pointerCount == 0) {
                  canPop = true;
                }
              },
              onInteractionUpdate: (details) {
                if (details.pointerCount > 1) {
                  canPop = false;
                  scale = details.scale.clamp(1, 2.5);
                }
                if (!scaled && canPop) {
                  deltaController.value += details.focalPointDelta.dy;
                }
              },
              clipBehavior: Clip.none,
              child: widget.child,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter, // 将按钮对齐到底部中心
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20), // 控制按钮与底部的间距
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // 水平居中
              children: [
                if (widget.closeWidget != null)
                  CustomButton(
                    width: 100,
                    height: 100,
                    backgroundColor: Colors.blueAccent,
                    borderRadius: 100,
                    isThreeD: true,
                    animate: true,
                    shadowColor: Colors.blueGrey,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10), // 添加按钮间距
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: widget.closeWidget ??
                        const Icon(Icons.close, size: 50, color: Colors.white),
                  ),
                if (widget.downloadWidget != null)
                  CustomButton(
                    width: 100,
                    height: 100,
                    backgroundColor: Colors.greenAccent,
                    borderRadius: 100,
                    isThreeD: true,
                    animate: true,
                    shadowColor: Colors.green,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10), // 添加按钮间距
                    onPressed: () async {
                      await widget.onTap();
                    },
                    child: widget.downloadWidget ??
                        const Icon(Icons.download,
                            size: 50, color: Colors.white),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
