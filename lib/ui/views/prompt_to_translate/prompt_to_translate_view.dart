import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stacked/stacked.dart';

import 'prompt_to_translate_viewmodel.dart';

class PromptToTranslateView extends StackedView<PromptToTranslateViewModel> {
  const PromptToTranslateView(this.scrollController, {Key? key})
      : super(key: key);
  final ScrollController scrollController;

  @override
  Widget builder(
    BuildContext context,
    PromptToTranslateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 241, 241, 0.8),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15)),
                      ),
                      child: Material(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15)),
                        color: Color.fromARGB(255, 216, 219, 231),
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15)),
                          onTap: () async {},
                          child: Center(
                            child: Text(
                              '自动',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Ink(
                    width: 41,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 219, 231),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Color.fromARGB(255, 216, 219, 231),
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () async {
                          viewModel.changeTargetLanguage(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Tooltip(
                            message: 'Paste from clipboard',
                            child: Icon(
                              LineIcons.swatchbook,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Icon(Icons.swap_horiz),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(15)),
                      ),
                      height: 60,
                      child: Material(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15)),
                        color: Color.fromARGB(255, 216, 219, 231),
                        child: InkWell(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(15)),
                          onTap: () async {},
                          child: Center(
                            child: Text(
                              viewModel.targetLanguage,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black54,
                height: 2,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 219, 231),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 216, 219, 231).withOpacity(0.8),
                      spreadRadius: 0.8,
                      blurRadius: 8,
                      offset: Offset(1.5, 0.5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        textInputAction: TextInputAction.send,
                        onFieldSubmitted: (value) async {
                          print(viewModel.targetLanguage);
                          await viewModel.translateText(
                              PromptToTranslateViewModel.query.text,
                              viewModel.targetLanguage);
                        },
                        controller: PromptToTranslateViewModel.query,
                        maxLines: 8,
                        decoration: InputDecoration.collapsed(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: '开始编写文本或插入链接',
                        ),
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Ink(
                                width: 41,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 216, 219, 231),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Material(
                                  color: Color.fromARGB(255, 216, 219, 231),
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15),
                                    onTap: () async {},
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Tooltip(
                                        message: '语音转文字',
                                        child: Icon(
                                          LineIcons.microphone,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Ink(
                                width: 41,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 216, 219, 231),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Material(
                                  color: Color.fromARGB(255, 216, 219, 231),
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15),
                                    onTap: () async {
                                      final clipboardData =
                                          await Clipboard.getData(
                                              Clipboard.kTextPlain);
                                      PromptToTranslateViewModel.query.text =
                                          clipboardData!.text!;
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Tooltip(
                                        message: '从剪切板复制文字',
                                        child: Icon(
                                          LineIcons.paste,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Ink(
                            width: 41,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 216, 219, 231),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Material(
                              color: Color.fromARGB(255, 216, 219, 231),
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: () async {
                                  // print('发送' + viewModel.targetLanguage);
                                  await viewModel.translateText(
                                      PromptToTranslateViewModel.query.text,
                                      viewModel.targetLanguage);
                                  // print('接收到' +
                                  //     PromptToTranslateViewModel.translation);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Tooltip(
                                    message: '翻译',
                                    child: Icon(
                                      LineIcons.telegramPlane,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              PromptToTranslateViewModel.translation.isNotEmpty
                  ? Container(
                      width: MediaQuery.of(context).size.width * 0.97,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.28,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 219, 231),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 216, 219, 231)
                                .withOpacity(0.8),
                            spreadRadius: 0.8,
                            blurRadius: 8,
                            offset: Offset(1.5, 0.5),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            width: MediaQuery.of(context).size.width * 0.86,
                            constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.of(context).size.height * 0.28,
                            ),
                            child: SelectableText(
                              scrollPhysics: BouncingScrollPhysics(),
                              cursorColor: Colors.black87,
                              PromptToTranslateViewModel.translation,
                              maxLines: null,
                              // textWidthBasis: TextWidthBasis.parent,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: IconButton(
                              onPressed: () async {
                                await Clipboard.setData(
                                  ClipboardData(
                                    text:
                                        PromptToTranslateViewModel.translation,
                                  ),
                                );
                                // viewModel.query.text = clipboardData!.text!;
                              },
                              icon: const Icon(
                                LineIcons.copy,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 24,
                      color: Colors.green,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PromptToTranslateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromptToTranslateViewModel();
}
