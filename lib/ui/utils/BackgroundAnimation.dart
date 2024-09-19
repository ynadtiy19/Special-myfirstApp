import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BackgroundAnimation extends StatefulWidget {
  const BackgroundAnimation({
    super.key,
    required this.child,
    this.image,
    this.color,
  }) : assert(image != null || color != null);
  final Widget child;
  final Color? color;
  final Image? image;
  @override
  State<BackgroundAnimation> createState() => _BackgroundAnimationState();
}

class _BackgroundAnimationState extends State<BackgroundAnimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            spawnMaxRadius: 25, // raduius of background object
            spawnMinSpeed: 15, // minimum speed of object moving
            particleCount: 70, // no of ohjects in background
            spawnMaxSpeed: 40,
            spawnOpacity: 0.3, // maximum speed of object moving in background
            baseColor: widget.color ?? Color.fromARGB(255, 216, 219, 231),
            image: widget.image,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
