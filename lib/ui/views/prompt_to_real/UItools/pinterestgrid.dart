import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'imagetitle.dart';

class PinterestGrid extends StatefulWidget {
  const PinterestGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<PinterestGrid> createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  final rnd = Random();
  late List<int> extents;
  int crossAxisCount = 2;

  @override
  void initState() {
    super.initState();
    extents = List<int>.generate(100, (int index) => rnd.nextInt(5) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MasonryGridView.count(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            final height = extents[index] * 50;
            return ImageTile(
              index: index,
              height: height,
            );
          },
          itemCount: extents.length,
        ),
      ),
    );
  }
}
