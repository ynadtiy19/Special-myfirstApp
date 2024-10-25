import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../../webviewsite/ynadtiy19.dart';
import '../../widgets/common/sider_bar_page/sider_bar_page.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        // await viewModel.profileImageFetch(15);
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          key: viewModel.scaffoldKey,
          extendBodyBehindAppBar: true,
          backgroundColor: const Color.fromARGB(100, 255, 219, 205),
          drawer: const Drawer(
            child: Tooltip(message: '侧边栏', child: SiderBarPage()),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                          Hero_icons_outline.bars_3_bottom_left), // 设置自定义图标
                      onPressed: () {
                        viewModel.scaffoldKey.currentState
                            ?.openDrawer(); // 打开侧边栏
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 219, 205),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                onTap: () {
                                  // 处理点击事件
                                  print('Button tapped');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '美食',
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25, // 圆形容器的宽度
                                          height: 25, // 圆形容器的高度
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                170, 206, 96, 96), // 背景颜色
                                            shape: BoxShape.circle, // 圆形
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              LineIcons.cheese, // 图标
                                              size: 18, // 图标大小
                                              color: Colors.black87, // 图标颜色
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          '美食',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 219, 205),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                onTap: () {
                                  // 处理点击事件
                                  print('Button tapped');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '动物',
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25, // 圆形容器的宽度
                                          height: 25, // 圆形容器的高度
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                245, 245, 181, 45), // 背景颜色
                                            shape: BoxShape.circle, // 圆形
                                          ),
                                          child: const Icon(
                                            textDirection: TextDirection.ltr,
                                            weight: 50,
                                            size: 18,
                                            LineIcons.paw,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        const Text(
                                          '动物',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 219, 205),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                onTap: () {
                                  // 处理点击事件
                                  print('Button tapped');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '旅行',
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25, // 圆形容器的宽度
                                          height: 25, // 圆形容器的高度
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                245, 196, 208, 208), // 背景颜色
                                            shape: BoxShape.circle, // 圆形
                                          ),
                                          child: const Icon(
                                            textDirection: TextDirection.ltr,
                                            weight: 50,
                                            size: 18,
                                            Hero_icons_outline.truck,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        const Text(
                                          '旅行',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 219, 205),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                onTap: () {
                                  // 处理点击事件
                                  print('Button tapped');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '家乡的风景画',
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25, // 圆形容器的宽度
                                          height: 25, // 圆形容器的高度
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                245, 225, 190, 231), // 背景颜色
                                            shape: BoxShape.circle, // 圆形
                                          ),
                                          child: const Icon(
                                            textDirection: TextDirection.ltr,
                                            weight: 50,
                                            size: 18,
                                            Hero_icons_outline.gift,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        const Text(
                                          '家乡',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 219, 205),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '全部故事',
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 25, // 圆形容器的宽度
                                          height: 25, // 圆形容器的高度
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                170, 206, 96, 96), // 背景颜色
                                            shape: BoxShape.circle, // 圆形
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5), // 阴影颜色
                                                spreadRadius: 2, // 阴影扩散范围
                                                blurRadius: 4, // 模糊程度
                                                offset:
                                                    const Offset(0, 2), // 阴影偏移
                                              ),
                                            ],
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Hero_icons_outline
                                                  .ellipsis_vertical, // 图标
                                              size: 18, // 图标大小
                                              color: Colors.black87, // 图标颜色
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 1.5,
                color: Colors.brown.shade300,
              ),
              Expanded(
                child: FutureBuilder<Map<String, dynamic>?>(
                  future: viewModel.jsonCacheKey.value('uuuprofile'),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // 显示加载指示器
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      // 显示错误信息
                      return Center(
                        child: Text('错误: ${snapshot.error}'),
                      );
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      // 如果没有数据，显示提示
                      return const Center(
                        child: Text(
                          '照片数据正在制作中 ...',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      );
                    }

                    final imageData = snapshot.data!; // 获取图像数据

                    return GridView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,
                        childAspectRatio: 0.680,
                      ),
                      itemCount: imageData.length,
                      itemBuilder: (BuildContext context, int index) {
                        final deviceWidth = MediaQuery.of(context).size.width;
                        final deviceHeight = MediaQuery.of(context).size.height;
                        final imageUrl = imageData.keys
                            .elementAt(index); // 获取图像URL,在其中对应的是key
                        print(imageUrl);
                        final details = imageData[imageUrl]!; // 获取对应的 details
                        final placeName = details['placeName'] ?? '';
                        final String name = details['name'] ?? '';

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 5.0),
                          child: Container(
                            constraints: BoxConstraints(
                              maxHeight: deviceHeight * 0.86,
                            ),
                            width: deviceWidth * 0.92, // 92% 的设备宽度
                            // 按照比例计算的高度
                            child: Column(
                              children: [
                                DottedBorder(
                                  borderType: BorderType.RRect,
                                  dashPattern: [18, 10],
                                  radius: const Radius.circular(16.0),
                                  padding: const EdgeInsets.all(8.0),
                                  color: Colors.black87,
                                  child: InstaImageViewer(
                                    uonTap: (bool value) async {
                                      print(imageUrl);
                                      // 执行缓存图片到相册的操作
                                      // toastification.show() 这里省略了
                                      return true;
                                    },
                                    ufavoriteIcon: Icons.favorite, // 替换为您的图标
                                    ucloseIcon: Icons.close, // 替换为您的图标
                                    disableSwipeToDismiss: true,
                                    backgroundColor: const Color.fromARGB(
                                        255, 216, 219, 231),
                                    child: CachedNetworkImage(
                                      width: deviceWidth * 0.91,
                                      imageUrl: imageUrl,
                                      fit: BoxFit.contain,
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.green,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) {
                                        return Material(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ynaditiy19(
                                                    url: url,
                                                  ),
                                                ),
                                              );
                                              print('点击了卡片');
                                            },
                                            focusColor: Colors.transparent,
                                            child: Container(
                                              alignment: Alignment.center,
                                              color: Colors.transparent,
                                              width: deviceWidth * 0.91,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12),
                                                    child: TexMarkdown(
                                                      '[家乡的故事日记视频]($url)',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                      textAlign:
                                                          TextAlign.right,
                                                      onLinkTab: (String url,
                                                          String text) async {
                                                        final Uri uri =
                                                            Uri.parse(url);
                                                        if (await canLaunchUrl(
                                                            uri)) {
                                                          await launchUrl(uri);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 220,
                                                    width: 220,
                                                    child: Lottie.asset(
                                                      'images/uuuvio.json',
                                                      frameRate:
                                                          const FrameRate(120),
                                                      repeat: true,
                                                      animate: true,
                                                    ),
                                                  ),
                                                  TexMarkdown(
                                                    '''🎬 **发现一个精彩视频！** 🎉
                点击整个的卡片即可开始浏览最新视频内容，不容错过哦！👇
                [📺 **点击这里，开启视频之旅** 🎥](https://example.com) 
                ✨ **准备好了吗？** 快来看看这个酷炫的内容吧！😎🍿
                ''',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 18),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                // 在左下角添加文本
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 5.0),
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            placeName,
                                            style: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            name,
                                            style: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Ink(
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 219, 205),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            onTap: () {
                                              // 将 imageUrl 复制到剪贴板
                                              Clipboard.setData(ClipboardData(
                                                      text: imageUrl))
                                                  .then((_) {
                                                // 复制成功后，可以显示一条提示信息
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                      content: Text(
                                                          '图像 URL : $imageUrl 已复制到剪贴板')),
                                                );
                                              });

                                              print('Button tapped: $imageUrl');
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Tooltip(
                                                message: '分享',
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 25, // 圆形容器的宽度
                                                      height: 25, // 圆形容器的高度
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Color.fromARGB(
                                                            250,
                                                            206,
                                                            96,
                                                            96), // 背景颜色
                                                        shape: BoxShape
                                                            .circle, // 圆形
                                                      ),
                                                      child: const Center(
                                                        child: Icon(
                                                          Hero_icons_outline
                                                              .arrow_up_on_square, // 图标
                                                          size: 18, // 图标大小
                                                          color: Colors
                                                              .yellow, // 图标颜色
                                                        ),
                                                      ),
                                                    ),
                                                    const Text(
                                                      '分享',
                                                      style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
