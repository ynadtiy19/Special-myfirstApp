import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class TypewriterAnimatedMarkdownText extends StatefulWidget {
  final String text;
  final Duration speed;
  final Curve curve;
  final String cursor;
  final int? maxLines;
  final TextOverflow overflow;
  final int lengthAlreadyShown;
  final bool isHapticFeedbackEnabled;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  TypewriterAnimatedMarkdownText(
    this.text, {
    Key? key,
    this.speed = const Duration(microseconds: 100),
    this.curve = Curves.linear,
    this.maxLines,
    this.overflow = TextOverflow.clip,
    this.cursor = '_',
    this.lengthAlreadyShown = 0,
    this.isHapticFeedbackEnabled = false,
    this.textAlign,
    this.textStyle,
  }) : super(key: key);

  @override
  _TypewriterAnimatedMarkdownTextState createState() =>
      _TypewriterAnimatedMarkdownTextState();
}

class _TypewriterAnimatedMarkdownTextState
    extends State<TypewriterAnimatedMarkdownText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _typewriterText;
  String _visibleString = '';

  @override
  void initState() {
    super.initState();

    // 初始化 AnimationController
    _controller = AnimationController(
      duration: Duration(
          milliseconds: (widget.text.length * 30) + 800), // 根据文本长度调整持续时间
      vsync: this,
    );

    // 创建 Tween 动画，确保结束值不超过字符串长度
    _typewriterText =
        Tween<double>(begin: 0, end: widget.text.length.toDouble()).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    )..addListener(() {
            // 检查是否需要触发触觉反馈
            if (_typewriterText.value - _typewriterText.value.toInt() >=
                    0.035 &&
                widget.isHapticFeedbackEnabled) {
              HapticFeedback.mediumImpact();
            }

            // 更新可见字符串
            setState(() {
              int typewriterValue =
                  _typewriterText.value.clamp(0, widget.text.length).toInt();
              if (typewriterValue <= widget.lengthAlreadyShown) {
                _visibleString = '';
              } else {
                _visibleString = widget.text.substring(0, typewriterValue);
              }
            });
          });

    // 启动动画
    _controller.forward();
  }

// 在 widget 销毁时释放动画控制器
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TexMarkdown(
      _visibleString,
      style: widget.textStyle,
      textAlign: widget.textAlign,
      onLinkTab: (String url, String text) async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
