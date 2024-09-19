import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:hung/services/gemini_services_service.dart';
import 'package:hung/ui/common/app_colors.dart';
import 'package:hung/ui/utils/BackgroundAnimation.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toastification/toastification.dart';

import 'widgets/content_widget.dart';

class GeminichatScreenView extends StatefulWidget {
  const GeminichatScreenView({
    super.key,
  });

  @override
  State<GeminichatScreenView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<GeminichatScreenView> {
  List<Map<String, dynamic>> prompts = <Map<String, dynamic>>[];
  List<Map<String, dynamic>> uuuprompts = <Map<String, dynamic>>[];
  TextEditingController query = TextEditingController();
  bool addPrompt = false, loading = false;
  String name = '';

  // Future loadPrompts() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final prompt = prefs.getString('prompt') ?? '';
  //   final query = prefs.getString('query') ?? '';
  //   if (prompt.isNotEmpty && query.isNotEmpty) {
  //     setState(() {
  //       uuuprompts = [
  //         {'prompt': prompt, 'query': query}
  //       ];
  //     });
  //   }
  // }

  // 从本地存储中加载 doubleprompts >>uuuprompts
  Future<void> loadPrompts() async {
    final prefs = await SharedPreferences.getInstance();
    // 获取保存的JSON格式字符串
    String? promptsJson = prefs.getString('prompts');
    if (promptsJson != null) {
      setState(() {
        // 解码JSON字符串为列表
        uuuprompts = List<Map<String, dynamic>>.from(json.decode(promptsJson));
      });
    }
  }

  Future<void> removePrompt(int index) async {
    final prefs = await SharedPreferences.getInstance();

    // 确保索引在列表的范围内
    if (index < 0 || index >= uuuprompts.length) {
      return; // 如果索引无效，则直接返回
    }

    // 移除指定索引的项
    await Future.delayed(Duration(seconds: 1)); // 添加 1 秒延迟
    uuuprompts.removeAt(index);

    // 保存更新后的列表到SharedPreferences
    await prefs.setString('prompts', json.encode(uuuprompts));

    // 更新UI
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadName(); // 在初始化状态时加载存储的值
  }

  void loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? ''; // 从本地存储中获取值，如果没有则使用默认值
    });
  }

  void saveName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name); // 将值存储在本地存储中
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  Container(
                    width: 70,
                    height: 40,
                    margin: EdgeInsets.all(5.0),
                    // padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15),
                        right: Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Colors.amber,
                      ),
                    ),
                    child: ClipRRect(
                      // 使用ClipRRect来裁剪超出容器部分
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15),
                        right: Radius.circular(15),
                      ),
                      child: Image.asset(
                        'images/gemini.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // const SizedBox(height: 2.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10),
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.white12,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shadowColor: kcHotPinkWithTealColor,
                                  backgroundColor: kcRiceYellowColor,
                                  title: Text('name'),
                                  content: TextField(
                                    controller: TextEditingController(
                                        text:
                                            name), // Use the variable as the controller's initial value
                                    onChanged: (value) {
                                      setState(() {
                                        name = value; // 当输入更改时更新变量
                                      }); // Update the variable when the input changes
                                    },
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        saveName();
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            name, // Use the variable as the text
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Actived in ${DateTime.now().hour..toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          letterSpacing: 1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              backgroundColor: const Color.fromARGB(255, 216, 219, 231),
              actions: [
                IconButton.outlined(
                  onPressed: () async {
                    await loadPrompts();
                    // 显示底部表单
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          scrollable: true,
                          insetPadding:
                              const EdgeInsets.symmetric(horizontal: 15),
                          title: const Row(
                            children: [
                              Text('Prompts'),
                              Text(
                                "双击复制",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ),
                          content: Container(
                            width: double.maxFinite,
                            height: 400, // 设置一个固定高度
                            child: uuuprompts.isNotEmpty
                                ? ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: uuuprompts.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        color: Colors.transparent,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: GestureDetector(
                                                onTap: () async {
                                                  await Haptics.vibrate(
                                                      HapticsType.soft);
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Scaffold(
                                                        body: Stack(
                                                          children: <Widget>[
                                                            BackgroundAnimation(
                                                              image: Image(
                                                                image: AssetImage(
                                                                    "images/coca.jpg"),
                                                              ),
                                                              child:
                                                                  AlertDialog(
                                                                scrollable:
                                                                    true,
                                                                insetPadding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            15),
                                                                title: Text(
                                                                    uuuprompts[
                                                                            index]
                                                                        [
                                                                        'prompt']!),
                                                                content: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(uuuprompts[
                                                                            index]
                                                                        [
                                                                        'query']!),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top:
                                                                  100, // This accounts for the status bar height
                                                              left: 25,
                                                              child: IconButton(
                                                                icon: Icon(LineIcons
                                                                    .arrowCircleLeft),
                                                                onPressed: () =>
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop(),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                onDoubleTap: () async {
                                                  await Haptics.vibrate(
                                                      HapticsType.soft);
                                                  await Clipboard.setData(
                                                    ClipboardData(
                                                      text: "💖来自遥远的一段回忆 :" +
                                                          uuuprompts[index]
                                                              ['prompt']! +
                                                          '\n' +
                                                          uuuprompts[index]
                                                              ['query']!,
                                                    ),
                                                  );
                                                  toastification.show(
                                                    context: context,
                                                    type: ToastificationType
                                                        .success,
                                                    style: ToastificationStyle
                                                        .flatColored,
                                                    title: Text("故事生成成功"),
                                                    description: Text(
                                                        "The story was successfully created."),
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    autoCloseDuration:
                                                        const Duration(
                                                            seconds: 2),
                                                    primaryColor: Colors.green,
                                                    icon: Icon(LineIcons
                                                        .checkCircleAlt),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                    applyBlurEffect: true,
                                                  );
                                                  // You can also provide feedback to the user that the text was copied.
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        uuuprompts[index]
                                                            ['prompt']!,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Divider(),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        uuuprompts[index]
                                                            ['query']!,
                                                        maxLines: 5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              child: IconButton(
                                                icon: Icon(
                                                  LineIcons.trash,
                                                  color: Colors.green,
                                                ),
                                                onPressed: () async {
                                                  await Haptics.vibrate(
                                                      HapticsType.warning);
                                                  // 调用移除函数并传入当前项的索引
                                                  removePrompt(index);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                : Text('生成你喜欢的提示词和内容吧'),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(LineIcons.fly),
                  tooltip: '提示词与生成的内容',
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (context) => const GeminiMsgScreen()),
                    // );
                  },
                  icon: const Icon(LineIcons.commentAlt),
                  tooltip: '和AI对话',
                ),
              ],
            ),
          ),
          Expanded(
            child: prompts.isEmpty
                ? const BackgroundAnimation(
                    color: Color.fromARGB(255, 216, 219, 231),
                    child: Center(
                      child: Text('No content has been generated yet'),
                    ),
                  )
                : ListView.builder(
                    itemCount: prompts.length,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    itemBuilder: (context, index) {
                      return ContentWidget(prompts: prompts[index]);
                    },
                  ),
          )
        ],
      ),
      floatingActionButton: addPrompt
          ? null
          : FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  addPrompt = !addPrompt;
                });
              },
              tooltip: 'Increment',
              icon: const Icon(Icons.add),
              label: const Text('Add Prompt'),
            ),
      bottomNavigationBar: addPrompt
          ? Padding(
              // First padding with conditional bottom padding
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom:
                    (MediaQuery.of(context).viewInsets.bottom > 0) ? 8.0 : 0.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: query,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.send,
                        onChanged: (value) => setState(() {}),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: Theme.of(context)
                              .colorScheme
                              .primary
                              .withAlpha(100),
                          hintText: 'Write something here...',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 27.0,
                              color: Colors.black87,
                              icon: const Icon(LineIcons.microphone),
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shadowColor: kcHotPinkWithTealColor,
                                      backgroundColor: kcRiceYellowColor,
                                      title: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        height: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text('Add Input'),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                DottedBorder(
                                                  borderType: BorderType.RRect,
                                                  radius: Radius.circular(10),
                                                  padding:
                                                      EdgeInsets.all(1), //内部边距
                                                  child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    margin: EdgeInsets.all(1.0),
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.0),
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      splashColor: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      onTap: () {},
                                                      child: Center(
                                                          child: Text('相机')),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                DottedBorder(
                                                  borderType: BorderType.RRect,
                                                  radius: Radius.circular(10),
                                                  padding:
                                                      EdgeInsets.all(1), //内部边距
                                                  child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    margin: EdgeInsets.all(1.0),
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(10.0),
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                        splashColor:
                                                            Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        onTap: () {},
                                                        child: Center(
                                                          child: Text('文件'),
                                                        )),
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
                              color: Colors.black87,
                              iconSize: 26.0,
                              icon: const Icon(LineIcons.paperclip),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (query.text.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () async {
                            setState(() {
                              loading = true;
                            });
                            String text = await GeminiService.generateText(
                              query.text,
                            );
                            prompts.add({'query': query.text, 'content': text});

                            query.clear();
                            loading = false;
                            addPrompt = false;
                            setState(() {});
                          },
                          child: CircleAvatar(
                            radius: 30,
                            child: loading
                                ? const CircularProgressIndicator()
                                : const Icon(LineIcons.magic),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
