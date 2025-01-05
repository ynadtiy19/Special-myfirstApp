import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/hero-icons-outline_icons.dart';

class TypewriterAnimatedMarkdownText extends StatefulWidget {
  final String text;
  final Duration speed;
  final Curve curve;
  final String cursor;
  final int? maxLines;
  final int lengthAlreadyShown;
  final bool isHapticFeedbackEnabled;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final void Function(String) onComplete; // Add callback for completion

  const TypewriterAnimatedMarkdownText(
    this.text, {
    super.key,
    this.speed = const Duration(microseconds: 15),
    this.curve = Curves.linear,
    this.maxLines,
    this.cursor = '_',
    this.lengthAlreadyShown = 0,
    this.isHapticFeedbackEnabled = false,
    this.textAlign,
    this.textStyle,
    required this.onComplete, // Ensure this is passed in
  });

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
  String _currentTextWithCursor = ''; // For managing cursor display
  int _startIndex = 0; // To track where we left off in the text

  @override
  void initState() {
    super.initState();

    // Start the index from the length already shown or zero
    _startIndex = widget.lengthAlreadyShown;

    // Calculate animation duration based on the speed
    final int durationMilliseconds =
        ((widget.text.length - _startIndex) * widget.speed.inMilliseconds);

    // Initialize AnimationController with dynamic duration based on speed
    _controller = AnimationController(
      duration: Duration(milliseconds: durationMilliseconds),
      vsync: this,
    );

    _typewriterText = Tween<double>(
            begin: _startIndex.toDouble(), end: widget.text.length.toDouble())
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    )..addListener(() {
        // Handle haptic feedback during animation
        if (_typewriterText.value - _typewriterText.value.toInt() >= 0.035 &&
            widget.isHapticFeedbackEnabled) {
          HapticFeedback.mediumImpact();
        }

        // Update the visible string during animation
        setState(() {
          int typewriterValue =
              _typewriterText.value.clamp(0, widget.text.length).toInt();
          _visibleString = widget.text.substring(_startIndex, typewriterValue);
          _currentTextWithCursor = _visibleString + widget.cursor;
        });
      });

    // Start animation
    _controller.forward();

    // Trigger the onComplete callback when the animation finishes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Call the onComplete callback with the final text when animation finishes
        widget.onComplete(_visibleString);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isCopied = false;
    return GptMarkdown(
      _currentTextWithCursor, // Display the current typed text with cursor
      style: widget.textStyle,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines, // Use maxLines if provided
      codeBuilder: (context, language, code) {
        return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        getIcon(language),
                        color: Colors.blueGrey[800],
                        size: 18, // 可以根据需要调整图标大小
                      ),
                      const SizedBox(width: 4),
                      Text(
                        language.isNotEmpty ? language : 'Code',
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
                                  ? Hero_icons_outline.check
                                  : Hero_icons_outline
                                      .square_2_stack, // Use isCopied to switch icons
                              color: Colors.blueGrey[800],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              isCopied ? '已复制!' : '复制代码',
                              style: TextStyle(
                                fontFamily: 'Lato_Italic',
                                color: Colors.blueGrey[800],
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          // 将代码复制到剪贴板
                          Clipboard.setData(ClipboardData(text: code));

                          // 更新按钮状态为“已复制”
                          setState(() => isCopied = true);

                          // 3秒后恢复到“复制”按钮状态
                          Future.delayed(const Duration(milliseconds: 2500),
                              () {
                            setState(() => isCopied = false);
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
