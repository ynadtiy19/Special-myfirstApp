import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MessageSender extends StatefulWidget {
  const MessageSender({super.key});

  @override
  State<MessageSender> createState() => _MessageSenderState();
}

class _MessageSenderState extends State<MessageSender> {
  final TextEditingController _exemessageController = TextEditingController();
  bool _isSending = false; // 控制发送按钮状态
  // 初始状态为进程未启动，按钮显示“已关闭”
  String _closeButtonText = '已关闭';
  Process? _process; // 保存 at_talk.exe 进程对象
  bool _processRunning = false; // 标记 at_talk.exe 是否正在运行

  Future<void> _sendMessage() async {
    if (_isSending) return; // 如果正在发送，则不执行

    setState(() {
      _isSending = true; // 设置为正在发送状态
    });

    String message = _exemessageController.text;
    _exemessageController.clear(); // 清空输入框

    try {
      await _executeAtTalk(message); // 调用发送消息的函数
    } finally {
      setState(() {
        _isSending = false; // 恢复发送按钮状态
      });
    }
  }

  Future<void> _executeAtTalk(String message) async {
    try {
      // 1. 检查临时目录中是否已存在 at_talk.exe 文件
      final Directory tempDir = await getTemporaryDirectory();
      final File executableFile = File('${tempDir.path}/at_talk.exe');
      print('at_talk.exe 文件路径：${executableFile.path}');

      if (!executableFile.existsSync()) {
        // 文件不存在，则复制 assets 中的文件到临时目录
        final ByteData data = await rootBundle.load('assets/at_talk.exe');
        await executableFile.writeAsBytes(data.buffer.asUint8List());

        // 确保文件有执行权限 (适用于 Linux/macOS，如在 Windows 下可忽略)
        await Process.run('chmod', ['+x', executableFile.path]);
        print("文件复制成功");
      } else {
        print("文件已存在，无需重复复制");
      }

      // 2. 如果进程没有启动或已关闭，则重新启动并只添加一次监听器
      if (_process == null || !_processRunning) {
        _process = await Process.start(
          executableFile.path,
          ['-a', '@dolphin9interim', '-t', '@gemini2banana', '-n', 'atsign'],
          runInShell: true,
        );

        _processRunning = true;
        // 更新状态为进程已启动，按钮显示“开启中”
        setState(() {
          _closeButtonText = '开启中';
        });

        // 仅在进程启动时添加一次监听器
        _process!.stdout.transform(utf8.decoder).listen((data) {
          print('输出: $data');
          // 可选：通过 SnackBar 显示输出信息
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("输出: $data"),
          ));
          if (data.contains('Connected')) {
            setState(() {
              _closeButtonText = '开启中';
            });
          }
        });

        _process!.stderr.transform(utf8.decoder).listen((data) {
          print('错误: $data');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("错误: $data"),
          ));
        });

        // 监听进程退出，一旦进程退出，更新状态为已关闭
        _process!.exitCode.then((exitCode) {
          print('at_talk.exe 退出码: $exitCode');
          _processRunning = false; // 标记进程已停止
          setState(() {
            _closeButtonText = '已关闭';
          });
        });
      }

      // 3. 将消息内容发送给 at_talk.exe 的标准输入
      if (message.isNotEmpty) {
        // 使用 writeln 模拟按下回车键
        _process!.stdin.writeln(message);
        print('发送消息: $message');
        await _process!.stdin.flush();
        // 不关闭 stdin，以保持进程继续运行
      }
    } catch (e) {
      print('执行 at_talk.exe 发生错误: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("执行 at_talk.exe 发生错误: $e"),
      ));
    }
  }

  void _closeAtTalk() {
    if (_process != null && _processRunning) {
      // 杀死进程并更新状态
      _process!.kill();
      _process = null;
      _processRunning = false;
      setState(() {
        _closeButtonText = '已关闭';
      });
      print('at_talk.exe 已被关闭');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("at_talk.exe 已被关闭"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _exemessageController,
          decoration: const InputDecoration(
            hintText: '输入消息',
          ),
        ),
        ElevatedButton(
          onPressed: _isSending ? null : _sendMessage,
          child: Text(_isSending ? '发送中...' : '发送'),
        ),
        ElevatedButton(
          onPressed: _closeAtTalk,
          child: Text(_closeButtonText),
        ),
      ],
    );
  }
}
