import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../utils/hero-icons-outline_icons.dart';
import '../article/article_view.dart';
import 'promotetowords_viewmodel.dart';

class PromotetowordsView extends StackedView<PromotetowordsViewModel> {
  final ScrollController scrollController;

  const PromotetowordsView({required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PromotetowordsViewModel viewModel,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      color: Color.fromARGB(255, 216, 219, 231),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons
                                    .auto_awesome, // 替代 Hero_icons_outline.sparkles
                                color: Color.fromRGBO(70, 20, 107, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'AI Tools',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: viewModel.chipLabels.map((category) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: CategoryChip(
                                      label: category,
                                      isSelected: PromotetowordsViewModel
                                              .selectedCategory ==
                                          category,
                                      onSelected: viewModel.onCategorySelected,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 0.5,
                        color: Colors.black,
                      ), //上下分割线
                      Container(
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(15),
                          ),
                          color: Color.fromARGB(255, 216, 219, 231),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 左侧的分段控件
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0), // 在右侧添加间隔
                                child: CustomSegmentedControl(
                                  groupValue: viewModel.leftGroupValue,
                                  onValueChanged: (int value) {
                                    viewModel.onLeftGroupValueChange(value);
                                  },
                                  children: viewModel.leftUsegmentLabels,
                                ),
                              ),
                            ),
                            // 分割线
                            Container(
                              width: 1, // 分割线宽度
                              height: 60, // 分割线高度与容器一致
                              color: Colors.black, // 分割线颜色
                            ),
                            // 右侧的分段控件
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 4.0), // 在左侧添加间隔
                                child: CustomSegmentedControl(
                                  groupValue: viewModel.rightGroupValue,
                                  onValueChanged: (int value) {
                                    viewModel.onRightGroupValueChange(value);
                                  },
                                  children: viewModel.rightUsegmentLabels,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                        bottom: Radius.circular(15),
                      ),
                      color: Color.fromRGBO(232, 212, 252, 0.8),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        textInputAction: TextInputAction.send,
                        onFieldSubmitted: (value) async {
                          await viewModel.fetchPromoteData(
                              PromotetowordsViewModel.query.text,
                              PromotetowordsViewModel.selectedCategory,
                              viewModel.rightselectedLabels,
                              viewModel.leftselectedLabels);
                        },
                        controller: PromotetowordsViewModel.query,
                        maxLines: 8,
                        decoration: const InputDecoration.collapsed(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: '请输入提示文本',
                        ),
                        style:
                            const TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                        bottom: Radius.circular(15),
                      ),
                      color: Color.fromARGB(255, 216, 219, 231),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CategoryChip(
                                  label: 'Copy ThereSelf',
                                  isSelected: PromotetowordsViewModel
                                          .uselectedCategory ==
                                      'Copy ThereSelf',
                                  onSelected: viewModel.UonCategorySelected,
                                ),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              IconButton(
                                  onPressed: () {
                                    PromotetowordsViewModel.query.clear();
                                  },
                                  icon: const Icon(Hero_icons_outline.x_mark)),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CategoryChip(
                                  label: '翻译提示',
                                  isSelected: PromotetowordsViewModel
                                          .uuselectedCategory ==
                                      '翻译提示',
                                  onSelected: viewModel.UuonCategorySelected,
                                ),
                              ),
                              const SizedBox(width: 5), // 添加间隔
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  viewModel.uprompts.isNotEmpty
                      ? Column(
                          children: viewModel.uprompts
                              .map((prompt) => InkWell(
                                  onTap: () async {
                                    viewModel.routeTotextPage(prompt, context);
                                  },
                                  child: PromptCard(prompt: prompt)))
                              .toList(),
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PromotetowordsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PromotetowordsViewModel();
}

class CustomSegmentedControl extends StatelessWidget {
  final int groupValue;
  final ValueChanged<int> onValueChanged;
  final Map<int, Widget> children;

  // 构造函数，定义必需参数
  const CustomSegmentedControl({
    Key? key,
    required this.groupValue,
    required this.onValueChanged,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CupertinoSegmentedControl<int>(
        selectedColor: Colors.green,
        borderColor: Colors.black,
        padding: const EdgeInsets.all(8), // 适当的内边距
        groupValue: groupValue, // 传递的选中的值
        onValueChanged: onValueChanged, // 选项切换事件
        children: children, // 传递的子组件
      ),
    );
  }
}

class PromptCard extends StatelessWidget {
  final String prompt;

  const PromptCard({Key? key, required this.prompt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          prompt,
          style: const TextStyle(fontSize: 16),
          maxLines: 5, // 限制最多显示五行
          overflow: TextOverflow.ellipsis, // 超出部分用省略号表示
        ),
      ),
    );
  }
}
