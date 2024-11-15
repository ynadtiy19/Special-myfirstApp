import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typing_indicator/flutter_typing_indicator.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:hung/ui/views/chatsity/typewriter.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/hero-icons-outline_icons.dart';

///WhatsApp's chat bubble type
///
///chat bubble color can be customized using [color]
///chat bubble tail can be customized  using [tail]
///chat bubble display message can be changed using [text]
///[text] is the only required parameter
///message sender can be changed using [isSender]
///chat bubble [TextStyle] can be customized using [textStyle]

class BubbleSpecial extends StatelessWidget {
  final bool isSender;
  final String text;
  final bool tail;
  final Color color;
  final bool sent;
  final bool delivered;
  final bool seen;
  final bool isAnimated; // 新增属性
  final TextStyle textStyle;
  final BoxConstraints? constraints;
  final void Function(String) onComplete;
  final bool isNeedTypingIndicator; // 新增的 isFetching 参数

  const BubbleSpecial({
    Key? key,
    this.isSender = true,
    this.constraints,
    required this.text,
    this.color = Colors.white70,
    this.tail = true,
    this.sent = false,
    this.delivered = false,
    this.seen = false,
    this.isAnimated = false, // 默认值为 true
    this.textStyle = const TextStyle(
      color: Colors.black87,
      fontSize: 16,
    ),
    this.isNeedTypingIndicator = false, // 默认值为 false
    required this.onComplete,
  }) : super(key: key);

  ///chat bubble builder method
  @override
  Widget build(BuildContext context) {
    bool stateTick = false;
    bool isCopied = false;
    Icon? stateIcon;
    if (sent) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (delivered) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (seen) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF92DEDA),
      );
    }

    return Align(
      alignment: isSender ? Alignment.topRight : Alignment.topLeft,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: CustomPaint(
              painter: SpecialChatBubbleOne(
                  color: color,
                  alignment: isSender ? Alignment.topRight : Alignment.topLeft,
                  tail: tail),
              child: Container(
                constraints: constraints ??
                    BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.86,
                    ),
                margin: isSender
                    ? stateTick
                        ? const EdgeInsets.fromLTRB(7, 7, 14, 7)
                        : const EdgeInsets.fromLTRB(7, 7, 17, 7)
                    : const EdgeInsets.fromLTRB(17, 7, 12, 7),
                child: Stack(
                  children: <Widget>[
                    if (!isSender &&
                        isNeedTypingIndicator) //此时是对方发的消息并且isNeedTypingIndicator为true
                      const TypingIndicator(
                        dotColor: Colors.blue,
                        backgroundColor: Colors.white,
                        dotSize: 10.0,
                        dotCount: 4,
                        duration: Duration(milliseconds: 1500),
                        padding: 12.0,
                        dotShape: BoxShape.circle,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        dotShadow: [
                          BoxShadow(blurRadius: 2, color: Colors.black)
                        ],
                        isGradient: true,
                        dotGradient: LinearGradient(
                          colors: [Colors.blue, Colors.lightBlueAccent],
                        ),
                      )
                    else
                      Padding(
                        padding: stateTick
                            ? const EdgeInsets.only(left: 2, right: 0)
                            : const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                        child: isAnimated // 根据 isAnimated 参数选择文本组件
                            ? TexMarkdown(
                                text,
                                style: textStyle,
                                textAlign: TextAlign.left,
                                codeBuilder: (context, language, code) {
                                  return Container(
                                    padding: const EdgeInsets.all(8),
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  getIcon(language),
                                                  color: Colors.blueGrey[800],
                                                  size: 18, // 可以根据需要调整图标大小
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  language.isNotEmpty
                                                      ? language
                                                      : 'Code',
                                                  style: TextStyle(
                                                    fontFamily: 'monospace',
                                                    color: Colors.blueGrey[800],
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            StatefulBuilder(
                                              builder: (context, setState) {
                                                return IconButton(
                                                  icon: Row(
                                                    children: [
                                                      Icon(
                                                        isCopied
                                                            ? Hero_icons_outline
                                                                .check
                                                            : Hero_icons_outline
                                                                .square_2_stack, // Use isCopied to switch icons
                                                        color: Colors
                                                            .blueGrey[800],
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Text(
                                                        isCopied
                                                            ? '已复制!'
                                                            : '复制代码',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Lato_Italic',
                                                          color: Colors
                                                              .blueGrey[800],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onPressed: () {
                                                    // 将代码复制到剪贴板
                                                    Clipboard.setData(
                                                        ClipboardData(
                                                            text: code));

                                                    // 更新按钮状态为“已复制”
                                                    setState(
                                                        () => isCopied = true);

                                                    // 3秒后恢复到“复制”按钮状态
                                                    Future.delayed(
                                                        const Duration(
                                                            milliseconds: 2500),
                                                        () {
                                                      setState(() =>
                                                          isCopied = false);
                                                    });
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Divider(color: Colors.blueGrey[800]),
                                        Text(
                                          code.trim(),
                                          style: TextStyle(
                                            fontFamily: 'Lato_Italic',
                                            color: Colors.blueGrey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                onLinkTab: (String url, String text) async {
                                  final Uri uri = Uri.parse(url);
                                  if (await canLaunchUrl(uri)) {
                                    await launchUrl(uri);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              )
                            : TypewriterAnimatedMarkdownText(
                                text,
                                textStyle: textStyle,
                                speed: const Duration(milliseconds: 10),
                                textAlign: TextAlign.left,
                                lengthAlreadyShown:
                                    0, // The number of characters that have already been displayed
                                onComplete: (finalText) {
                                  // This callback is triggered when the animation completes
                                  onComplete(finalText);
                                  print("Final animated text: $finalText");
                                },
                              ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          stateIcon != null && stateTick
              ? Positioned(
                  bottom: 1,
                  right: 12,
                  child: stateIcon,
                )
              : const SizedBox(
                  width: 1,
                ),
        ],
      ),
    );
  }

  IconData getIcon(String language) {
    switch (language.toLowerCase()) {
      case 'python' || 'py':
        return SimpleIcons.python;
      case 'go':
        return SimpleIcons.go;
      case 'javascript' || 'js':
        return SimpleIcons.javascript;
      case 'typescript' || 'ts':
        return SimpleIcons.typescript;
      case 'react' || ' jsx' || 'tsx':
        return SimpleIcons.react;
      case 'dart':
        return SimpleIcons.dart;
      case 'flutter':
        return SimpleIcons.flutter;
      case 'kotlin':
        return SimpleIcons.kotlin;
      case 'haskell':
        return SimpleIcons.haskell;
      case 'lua':
        return SimpleIcons.lua;
      case 'c':
        return SimpleIcons.c;
      case 'csharp':
        return SimpleIcons.csharp;
      case 'cpp' || 'cplusplus':
        return SimpleIcons.cplusplus;
      case 'rust':
        return SimpleIcons.rust;
      case 'swift':
        return SimpleIcons.swift;
      case 'elixir':
        return SimpleIcons.elixir;
      case 'julia':
        return SimpleIcons.julia;
      case 'bash':
        return SimpleIcons.gnubash;
      case 'php':
        return SimpleIcons.php;
      case 'r':
        return SimpleIcons.r;
      case 'ruby':
        return SimpleIcons.ruby;
      case 'perl':
        return SimpleIcons.perl;
      case 'java':
        return Hero_icons_outline.check_badge;
      case 'css':
        return SimpleIcons.css3;
      case 'md':
        return SimpleIcons.markdown;
      case 'markdown' || 'md':
        return SimpleIcons.markdown;
      case 'latex':
        return SimpleIcons.latex;
      default:
        return Hero_icons_outline.check_badge;
    }
  }
}

///custom painter use to create the shape of the chat bubble
///
/// [color],[alignment] and [tail] can be changed

class SpecialChatBubbleOne extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  SpecialChatBubbleOne({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  double _radius = 10.0;
  double _x = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (alignment == Alignment.topRight) {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
        var path = new Path();
        path.moveTo(size.width - _x, 0);
        path.lineTo(size.width - _x, 10);
        path.lineTo(size.width, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              size.width - _x,
              0.0,
              size.width,
              size.height,
              topRight: const Radius.circular(3),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
        var path = new Path();
        path.moveTo(_x, 0);
        path.lineTo(_x, 10);
        path.lineTo(0, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0.0,
              _x,
              size.height,
              topLeft: const Radius.circular(3),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
