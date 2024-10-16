import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../webviewsite/ynadtiy19.dart';
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
        await viewModel.profileImageFetch(15);
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: const Color.fromARGB(255, 196, 208, 208),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: FutureBuilder<Map<String, dynamic>?>(
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 0.680,
                ),
                itemCount: imageData.length,
                itemBuilder: (BuildContext context, int index) {
                  final deviceWidth = MediaQuery.of(context).size.width;
                  final deviceHeight = MediaQuery.of(context).size.height;
                  final imageUrl =
                      imageData.keys.elementAt(index); // 获取图像URL,在其中对应的是key
                  print(imageUrl);
                  final details = imageData[imageUrl]!; // 获取对应的 details
                  final placeName = details['placeName'] ?? '';
                  final String name = details['name'] ?? '';

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5.0),
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
                              backgroundColor:
                                  const Color.fromARGB(255, 216, 219, 231),
                              child: CachedNetworkImage(
                                width: deviceWidth * 0.91,
                                imageUrl: imageUrl,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.green,
                                  ),
                                ),
                                errorWidget: (context, url, error) {
                                  return Material(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ynaditiy19(
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
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: TexMarkdown(
                                                '[家乡的故事日记视频]($url)',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                                textAlign: TextAlign.right,
                                                onLinkTab: (String url,
                                                    String text) async {
                                                  final Uri uri =
                                                      Uri.parse(url);
                                                  if (await canLaunchUrl(uri)) {
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
                                                frameRate: const FrameRate(120),
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
                          Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 5.0),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  placeName,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor:
                                        Colors.black54, // 背景半透明，增强可读性
                                  ),
                                ),
                                Text(
                                  name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
