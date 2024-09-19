import 'package:flutter/material.dart';

import 'size_config.dart';

class BottomNavBTN extends StatelessWidget {
  final Function(int) onPressed;
  final IconData icon;
  final int index;
  final int currentIndex;

  const BottomNavBTN({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.index,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return InkWell(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: AppSizes.blockSizeHorizontal * 13,
        width: AppSizes.blockSizeHorizontal * 17,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            (currentIndex == index)
                ? Positioned(
                    left: AppSizes.blockSizeHorizontal * 4,
                    bottom: AppSizes.blockSizeHorizontal * 1.5,
                    child: Icon(
                      icon,
                      color: Colors.black,
                      size: AppSizes.blockSizeHorizontal * 8,
                    ),
                  )
                : Container(),
            AnimatedOpacity(
              opacity: (currentIndex == index) ? 1 : 0.2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              child: Icon(
                icon,
                color: Colors.yellow[300],
                size: AppSizes.blockSizeHorizontal * 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
