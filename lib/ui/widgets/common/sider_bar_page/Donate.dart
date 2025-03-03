import 'package:flutter/material.dart';

import '../../../utils/hero-icons-outline_icons.dart';

class donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('随心捐赠', textAlign: TextAlign.center),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Hero_icons_outline.arrow_small_left,
              size: 30, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 使用 LayoutBuilder 来获取 constraints
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth, // 最大宽度为父容器宽度
                          maxHeight: constraints.maxWidth, // 确保最大高度与宽度一致（正方形图片）
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'images/zhifubao.jpg',
                            fit: BoxFit.contain, // 让图片填满容器并可能裁剪部分边缘
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
