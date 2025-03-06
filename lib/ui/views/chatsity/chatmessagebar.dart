import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';

import '../../utils/hero-icons-outline_icons.dart';

class chatMessageBar extends StatelessWidget {
  final TextEditingController textController;
  final bool replying;
  final String replyingTo;
  final List<Widget> actions;
  final List<Widget> ureplyactions;
  final Color replyWidgetColor;
  final Color replyIconColor;
  final Color replyCloseColor;
  final Color messageBarColor;
  final String messageBarHintText;
  final TextStyle messageBarHintStyle;
  final Color infillColor;
  final Color sendButtonColor;
  final IconData sendButtonIcon;
  final void Function(String)? onSend;
  final void Function()? onTapCloseReply;

  chatMessageBar({
    required this.textController,
    this.replying = false,
    this.replyingTo = "",
    this.actions = const [], // ✅ 确保有默认值
    this.ureplyactions = const [], // ✅ 确保有默认值
    this.replyWidgetColor = const Color(0xffF4F4F5),
    this.replyIconColor = Colors.blue,
    this.replyCloseColor = Colors.black12,
    this.messageBarColor = const Color(0xffF4F4F5),
    this.infillColor = const Color.fromARGB(255, 216, 219, 231),
    this.sendButtonColor = Colors.blue,
    this.sendButtonIcon = Icons.send,
    this.messageBarHintText = "Tap to write a message",
    this.messageBarHintStyle = const TextStyle(fontSize: 16),
    this.onSend,
    this.onTapCloseReply,
  });

  void _showMessageInputSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.93,
          minChildSize: 0.1,
          maxChildSize: 0.95,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: infillColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: infillColor.withOpacity(0.8),
                    spreadRadius: 0.8,
                    blurRadius: 8,
                    offset: Offset(1.5, 0.5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Expanded widget to take up most of the space
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: TextFormField(
                            textInputAction: TextInputAction.send,
                            controller: textController,
                            maxLines: 7,
                            decoration: const InputDecoration.collapsed(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: '问任何问题...',
                            ),
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 219, 205),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  onTap: () async {
                                    textController.clear();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Tooltip(
                                      message: '清除消息',
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
                                                  offset: const Offset(
                                                      0, 2), // 阴影偏移
                                                ),
                                              ],
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Hero_icons_outline.x_mark, // 图标
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
                          Container(
                            height: 200,
                            color: Colors.transparent,
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: CustomButton(
                      width: 300,
                      backgroundColor: Colors.white,
                      isThreeD: true,
                      height: 50,
                      borderRadius: 25,
                      animate: true,
                      margin: const EdgeInsets.all(10),
                      onPressed: () {
                        // Handle the button press logic
                        if (textController.text.trim().isNotEmpty) {
                          if (onSend != null) {
                            onSend!(textController.text.trim());
                          }
                          textController.clear();
                          Navigator.pop(context);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(sendButtonIcon, color: sendButtonColor), // 图标
                          const SizedBox(width: 8), // 间距
                          Text(
                            "发送", // 文字
                            style: TextStyle(
                                color: sendButtonColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: messageBarColor,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: <Widget>[
            ...actions,
            Expanded(
              child: GestureDetector(
                onTap: () => _showMessageInputSheet(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.black26, width: 0.2),
                  ),
                  child: Text(
                    messageBarHintText,
                    style: messageBarHintStyle,
                  ),
                ),
              ),
            ),
            ...ureplyactions,
          ],
        ),
      ),
    );
  }
}
