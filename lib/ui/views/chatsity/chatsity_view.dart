import 'dart:io';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:chat_bubbles/bubbles/bubble_normal_image.dart';
import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:device_scan_animation/device_scan_animation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:listview_screenshot/listview_screenshot.dart';
import 'package:pretty_animated_buttons/widgets/pretty_shadow_button.dart';
import 'package:stacked/stacked.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

import '../../../services/chat_message.dart';
import '../../common/app_colors.dart';
import '../../utils/hero-icons-outline_icons.dart';
import 'chatsity_viewmodel.dart';

class ChatsityView extends StackedView<ChatsityViewModel> {
  const ChatsityView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChatsityViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 216, 219, 231),
      extendBodyBehindAppBar: true, // 允许内容衍生进入appbar后面
      appBar: MyCustomAppBar(
        onAvatarTap: () {
          viewModel.showInputDialog(context);
        },
        title: viewModel.uu1name,
        avatarUrl: viewModel.uu1path,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: viewModel.imageBackground == null
                ? Image.network(
                    'https://sjbz-fd.zol-img.com.cn/t_s1080x1920c/g5/M00/00/02/ChMkJ1fJVACIOcDTAAmrpgi1J2QAAU9uQETzP4ACau-914.jpg', // 替换为你的图片URL
                    fit: BoxFit.cover, // 确保图片覆盖整个背景
                  )
                : Image.file(
                    viewModel.imageBackground!,
                    fit: BoxFit.cover,
                  ),
          ),
          viewModel.changeUI
              ? Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top:
                            8.0), // Adjust padding to avoid overlap with AppBar
                    child: ValueListenableBuilder(
                      valueListenable: viewModel.chatBox.listenable(),
                      builder: (context, Box<ChatMessage> box, _) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel
                              .scrollToBottom(); // Ensure the scroll occurs after each new build
                        });
                        return WidgetShot(
                          key: viewModel.shotKey,
                          controller: viewModel.scrollController,
                          child: ListView.builder(
                            controller: viewModel
                                .scrollController, // 绑定 ScrollController
                            physics: const BouncingScrollPhysics(),
                            itemCount: box.length,
                            itemBuilder: (context, index) {
                              final message = box.getAt(index)!;
                              bool seenStatus;
                              if (index >= box.length - 2) {
                                // 最新的两条消息使用 isfetching
                                seenStatus = viewModel.isfetching;
                              } else {
                                // 之前的消息都设置为 seen: true
                                seenStatus = true;
                              }
                              return Column(
                                children: [
                                  if (message.imagePath != null)
                                    BubbleNormalImage(
                                      id: 'id',
                                      image: Image.file(File(
                                          message.imagePath!)), // 使用存储的图像路径加载图像
                                      color: Colors.purpleAccent,
                                      // tail: true,
                                      // sent: true,
                                      seen: seenStatus,
                                      delivered: true,
                                    ),
                                  Column(
                                    children: [
                                      BounceTapper(
                                        onLongPress: () async {
                                          viewModel.routeTotextPage(
                                              message.text, context);
                                        },
                                        child: BubbleSpecialOne(
                                          seen: seenStatus,
                                          text: message.text,
                                          isSender: message.isSender,
                                          color: message.isSender
                                              ? Colors.purple.shade100
                                              : Colors.grey.shade300,
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: message.isSender
                                                ? Colors.purple
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 70),
                          InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('聊天',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30)),
                                      content: const Text('选择一个你喜欢的聊天机器人'),
                                      actions: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          child: Column(
                                            children: [
                                              PrettyShadowButton(
                                                label: "进入Chatgpt聊天",
                                                onPressed: () {
                                                  viewModel.UchangeUI();
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icons.arrow_forward,
                                                shadowColor: Colors.green,
                                              ),
                                              const SizedBox(height: 10),
                                              PrettyShadowButton(
                                                label: "进入GGemini聊天",
                                                onPressed: () {
                                                  viewModel.UchangeUI();
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icons.arrow_forward,
                                                shadowColor: Colors.green,
                                              ),
                                              const SizedBox(height: 10),
                                              PrettyShadowButton(
                                                label: "选择喜欢的背景墙",
                                                onPressed: () {
                                                  viewModel
                                                      .pickImageforbackground();
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icons.arrow_forward,
                                                shadowColor: Colors.green,
                                              ),
                                              const SizedBox(height: 10),
                                              TextButton(
                                                child: const Text('取消',
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: DeviceScanWidget()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Chatgpt',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  TextButton.icon(
                                    iconAlignment: IconAlignment.end,
                                    icon: const Icon(
                                      Hero_icons_outline.chevron_right,
                                      color: champagnePink,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      viewModel.clearChatBox();
                                      print('clear chatbox');
                                    },
                                    label: const Text(
                                      '浏览全部',
                                      style: TextStyle(color: champagnePink),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  physics: AlwaysScrollableScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const RecentPlayCard(
                                      imageUrl:
                                          'https://sjbz-fd.zol-img.com.cn/t_s1080x1920c/g5/M00/00/02/ChMkJ1fJVACIOcDTAAmrpgi1J2QAAU9uQETzP4ACau-914.jpg',
                                      title: "Top 50 Global",
                                      description:
                                          "Worldwide hits.\nCover: Bad Bunny",
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Google Gemini',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  TextButton.icon(
                                    iconAlignment: IconAlignment.end,
                                    icon: const Icon(
                                      Hero_icons_outline.chevron_right,
                                      color: champagnePink,
                                      size: 15,
                                    ),
                                    onPressed: () {},
                                    label: const Text(
                                      '浏览全部',
                                      style: TextStyle(color: champagnePink),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  physics: AlwaysScrollableScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const RecentPlayCard(
                                      imageUrl:
                                          'https://sjbz-fd.zol-img.com.cn/t_s1080x1920c/g5/M00/00/02/ChMkJ1fJVACIOcDTAAmrpgi1J2QAAU9uQETzP4ACau-914.jpg',
                                      title: "Top 50 Global",
                                      description:
                                          "Worldwide hits.\nCover: Bad Bunny",
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Material(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MessageBar(
                      textController: viewModel.textController,
                      replyingTo: viewModel.listenText,
                      ureplyactions: [
                        const Text(
                          '截图',
                          style: TextStyle(color: Colors.black),
                        ),
                        InkWell(
                          child: Icon(Hero_icons_outline.rectangle_stack),
                          onTap: () {
                            viewModel.onScreenshot();
                            print('最后截图成功');
                          },
                        )
                      ],
                      onTapCloseReply: () {
                        viewModel.ureplychange(); //关闭回复框
                      },
                      replying: viewModel.openreply, //openreply为true时候，显示回复框
                      messageBarColor: viewModel.animating
                          ? Color.fromARGB(
                              255,
                              viewModel.dominantColor.r,
                              viewModel.dominantColor.g,
                              viewModel.dominantColor.b)
                          : Colors.white,
                      messageBarHitText: 'Type something...',
                      messageBarHintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      infliiColor: const Color.fromARGB(255, 216, 219, 231),
                      sendButtonIcon: viewModel.chatImage
                          ? Hero_icons_outline.arrow_small_up
                          : viewModel.chatwithHistory
                              ? Hero_icons_outline.rocket_launch
                              : Hero_icons_outline.paper_airplane,
                      sendButtonColor: Colors.orangeAccent.withOpacity(0.68),
                      onSend: (text) async {
                        viewModel.UchangeUI();
                        print(viewModel.changeUI);
                        viewModel.chatImage
                            ? await viewModel.chatwithImage(text, context)
                            : viewModel.chatwithHistory
                                ? await viewModel.UchatwithHistory(text)
                                : await viewModel.sendmessage(text);
                      }, //文本框中信息为_
                      actions: [
                        InkWell(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                scale: animation,
                                child: AnimatedBuilder(
                                  animation: animation,
                                  builder: (context, child) {
                                    return ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black
                                            .withOpacity(animation.value),
                                        BlendMode.srcIn,
                                      ),
                                      child: child,
                                    );
                                  },
                                  child: child,
                                ),
                              );
                            },
                            child: viewModel.exchange
                                ? const Icon(Hero_icons_outline.swatch,
                                    key: ValueKey('swatchIcon'),
                                    color: Colors.black,
                                    size: 26)
                                : const Icon(
                                    Hero_icons_outline.bars_3,
                                    key: ValueKey('bars3Icon'),
                                    color: Colors.black,
                                    size: 26,
                                  ),
                          ),
                          onTap: () {
                            viewModel.uexchange();
                          },
                        ),
                        InkWell(
                          child: viewModel.chatwithHistory
                              ? const Icon(Hero_icons_outline.bell_alert,
                                  color: Colors.green, size: 24)
                              : const Icon(
                                  Hero_icons_outline.bell,
                                  color: Colors.black,
                                  size: 24,
                                ),
                          onTap: () {
                            viewModel.changechatwithHistory();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: InkWell(
                            onTap: () {
                              viewModel.choosechatmodel(context);
                            },
                            onDoubleTap: () {
                              viewModel.choosepicker(context);
                            },
                            child: viewModel.pickermodel
                                ? Icon(
                                    Hero_icons_outline.camera,
                                    color: viewModel.chatImage
                                        ? Colors.green
                                        : Colors.black,
                                    size: 24,
                                  )
                                : Icon(Hero_icons_outline.photo,
                                    color: viewModel.chatImage
                                        ? Colors.green
                                        : Colors.black,
                                    size: 24),
                          ),
                        ),
                      ],
                    ),
                    AnimatedCrossFade(
                      firstChild: viewModel.isgoingpickImage
                          ? Container(
                              color: Color.fromRGBO(239, 220, 220, 0.8),
                              height: 240,
                              width: double.infinity,
                              child: ListView.separated(
                                padding: const EdgeInsets.all(8),
                                physics: const AlwaysScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: viewModel.itemsList.length,
                                itemBuilder: (_, index) {
                                  File? imageFile =
                                      File(viewModel.itemsList[index].path);
                                  if (viewModel.itemsList[index].type ==
                                      "video") {
                                    imageFile =
                                        viewModel.itemsList[index].thumbnail !=
                                                null
                                            ? File(viewModel
                                                .itemsList[index].thumbnail!)
                                            : null;
                                  }
                                  return imageFile != null
                                      ? InkWell(
                                          // onTap:
                                          //     viewModel.itemsList[index].type ==
                                          //             "video"
                                          //         ? () {}
                                          //         : null,
                                          onTap: () {
                                            // 在这里处理图片点击事件
                                            viewModel.uimagePath(imageFile);
                                            print(imageFile);
                                          },
                                          child: Image.file(imageFile))
                                      : Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          alignment: Alignment.center,
                                          width: 320,
                                          height: double.infinity,
                                          child: const Text('No thumbnail'));
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        const SizedBox(width: 8.0),
                              ),
                            )
                          : Container(
                              color: const Color.fromARGB(255, 216, 219, 231),
                              height: 80,
                              child: GridView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: viewModel.imagePathsList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1, // 每行显示两张图片
                                  crossAxisSpacing: 4.0, // 设置图片之间的横向间距
                                  mainAxisSpacing: 4.0,
                                ), // 设置图片之间的纵向间距),
                                itemBuilder: (context, index) {
                                  final imagePath =
                                      viewModel.imagePathsList[index];
                                  return InkWell(
                                    onTap: () {
                                      // 提取图像路径并更新 _image
                                      File imageFile = File(imagePath);
                                      print(imagePath);
                                      viewModel.uimagePath(imageFile);
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.greenAccent),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.file(
                                              File(imagePath), // 从文件路径中加载图像
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                      secondChild: const SizedBox(),
                      crossFadeState: viewModel.exchange
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 350),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  ChatsityViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChatsityViewModel();
}

class RecentPlayCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const RecentPlayCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取设备屏幕的宽度和高度
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // 计算容器的宽度和高度，为屏幕的四分之一
    final containerWidth = screenWidth / 3;
    final containerHeight = screenHeight / 4;
    return Container(
      width: containerWidth, // 设置卡片宽度
      margin: const EdgeInsets.symmetric(horizontal: 8.0), // 设置卡片水平外边距
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(253, 245, 240, 0.8), // 阴影颜色
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              borderRadius: BorderRadius.circular(15.0), // 圆角半径
              shadowColor: Colors.black.withOpacity(0.3), // 阴影颜色和透明度
              child: InkWell(
                onTap: () {
                  print('点击了卡片');
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0), // 图片圆角
                      child: Image.network(
                        imageUrl,
                        width: 100, // 图片宽度
                        height: 100, // 图片高度
                        fit: BoxFit.cover, // 图片填充方式
                      ),
                    ),
                    Positioned(
                      right: 2,
                      bottom: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(8.0), // 播放按钮的内边距
                        child: InkWell(
                          onTap: () {
                            print('点击了爱心');
                          },
                          child: Icon(
                            Hero_icons_outline.heart, // 播放图标
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 2,
                      bottom: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(8.0), // 播放按钮的内边距
                        child: InkWell(
                          onTap: () {
                            print('点击了评论');
                          },
                          child: Icon(
                            Hero_icons_outline
                                .chat_bubble_bottom_center_text, // 播放图标
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8), // 间距
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 1, // 限制一行显示
              overflow: TextOverflow.ellipsis, // 文字溢出时显示省略号
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              maxLines: 2, // 限制两行显示
              overflow: TextOverflow.ellipsis, // 文字溢出时显示省略号
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar(
      {Key? key,
      required this.onAvatarTap,
      required this.title,
      required this.avatarUrl})
      : super(key: key);
  // 添加参数 onAvatarTap
  final VoidCallback onAvatarTap; // 使用 VoidCallback 代替 Widget Function() 类型
  final String title;
  final List<String> avatarUrl;
  @override
  Size get preferredSize => Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 12.0), // 设置顶部间距
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // const SizedBox(width: 12.8),
                AvatarGlow(
                  startDelay: const Duration(seconds: 0),
                  glowColor: Colors.yellowAccent,
                  glowShape: BoxShape.circle,
                  curve: Curves.fastOutSlowIn,
                  child: UserProfileAvatar(
                    avatarUrl:
                        'https://c-ssl.dtstatic.com/uploads/blog/202304/15/20230415081411_f2e46.thumb.400_0.jpg',
                    onAvatarTap: onAvatarTap,
                    notificationCount: 10,
                    notificationBubbleTextStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                    avatarSplashColor: Colors.lightGreen,
                    radius: 30.0,
                    isActivityIndicatorSmall: true,
                    avatarBorderData: AvatarBorderData(
                      borderColor: Colors.yellowAccent,
                      borderWidth: 3.0,
                    ),
                  ),
                ),
                const SizedBox(width: 12.8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Story 1/2',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  shape: BoxShape.rectangle,
                ),
                width: 110.0,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(avatarUrl.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              splashColor: Color.fromARGB(255, 216, 219, 231)
                                  .withOpacity(0.5),
                              onTap: () {
                                print('$index');
                              },
                              child: Image.file(
                                File(avatarUrl[index]),
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
