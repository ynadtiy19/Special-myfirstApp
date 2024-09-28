import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:high_q_paginated_drop_down/high_q_paginated_drop_down.dart';
import 'package:http/http.dart' as http;
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:stacked/stacked.dart';
import 'package:toastification/toastification.dart';

import '../../utils/hero-icons-outline_icons.dart';
import 'pinterest_viewmodel.dart';

class PinterestView extends StackedView<PinterestViewModel> {
  const PinterestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PinterestViewModel viewModel,
    Widget? child,
  ) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gallery 画廊',
              style: GoogleFonts.sacramento().copyWith(
                color: const Color.fromARGB(255, 19, 197, 24),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
          actions: [
            IconButton(
                icon: const Icon(Hero_icons_outline.archive_box_x_mark),
                onPressed: () {
                  viewModel.deleteGalleryImage(context);
                }),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(
                  Hero_icons_outline.magnifying_glass,
                  color: Colors.lightGreenAccent,
                ),
                onPressed: () => _ushowSearchBar(context, viewModel),
              ),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          itemCount: viewModel.imageUrls.length,
          itemBuilder: (context, index) {
            final imageId = viewModel.imageUrls[index];
            final width = imageId['width'] as int;
            final height = imageId['height'] as int;
            final url = imageId['url'] as String; // 提取 URL
            final originalUrl = imageId['original'] as String;

            return InstaImageViewer(
                uonTap: (bool value) async {
                  print(originalUrl);
                  await viewModel.saveCachedImageToGallery(url);
                  toastification.show(
                    context: context,
                    type: ToastificationType.success,
                    style: ToastificationStyle.flatColored,
                    title: const Text("这张图片已经添加进相册"),
                    description:
                        const Text("This picture has been added to the album."),
                    alignment: Alignment.bottomCenter,
                    autoCloseDuration: const Duration(milliseconds: 2350),
                    primaryColor: Colors.green,
                    icon: const Icon(Hero_icons_outline.check_badge),
                    borderRadius: BorderRadius.circular(15.0),
                    applyBlurEffect: true,
                  );
                  return true;
                },
                ufavoriteIcon: Hero_icons_outline.heart,
                ucloseIcon: Hero_icons_outline.x_mark,
                disableSwipeToDismiss: true,
                backgroundColor: const Color.fromARGB(255, 216, 219, 231),
                child: AspectRatio(
                  aspectRatio: width / height,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // 圆角
                    child: CachedNetworkImage(
                      imageUrl: url,
                      fit: BoxFit.contain,
                      placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(
                        color: Colors.green,
                      )), // 加载中占位符
                      errorWidget: (context, url, error) =>
                          const Center(child: Icon(Icons.error)), // 加载失败占位符
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }

  // void _showSearchBar(BuildContext context, PinterestViewModel viewModel) {
  //   final TextEditingController searchController = TextEditingController();
  //   final FocusNode searchFocusNode = FocusNode(); // 创建 FocusNode
  //
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext dialogContext) {
  //       // 延迟弹出键盘以便 UI 初始化完成
  //       Future.delayed(const Duration(milliseconds: 100), () {
  //         if (dialogContext.mounted) {
  //           // 检查上下文是否有效
  //           FocusScope.of(dialogContext)
  //               .requestFocus(searchFocusNode); // 使 TextField 获取焦点并弹出键盘
  //         }
  //       });
  //       return Align(
  //         alignment: Alignment.topCenter, // 对齐到顶部
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 50.0), // 距离顶部的距离
  //           child: Material(
  //             color: Colors.transparent, // 透明背景
  //             child: Container(
  //               padding: const EdgeInsets.all(16.0),
  //               color: Colors.white, // 背景颜色
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: TextField(
  //                       controller: searchController,
  //                       focusNode: searchFocusNode, // 将 FocusNode 传递给 TextField
  //                       textInputAction: TextInputAction.send,
  //                       decoration: InputDecoration(
  //                         hintText: '搜索',
  //                         border: const OutlineInputBorder(),
  //                         // prefixIcon: Padding(
  //                         //   padding: const EdgeInsets.all(8.0),
  //                         //   child: IconButton(
  //                         //     icon: const Icon(LineIcons.search),
  //                         //     onPressed: () {
  //                         //       FocusManager.instance.primaryFocus?.unfocus();
  //                         //       String query = searchController.text;
  //                         //       if (query.isNotEmpty) {
  //                         //         viewModel.fetchData(query).then((uuudata) {
  //                         //           // 处理搜索结果
  //                         //           viewModel.jsonCacheKey
  //                         //               .refresh('fetchedData', uuudata!);
  //                         //           viewModel.changeColor();
  //                         //           // print('Fetched data: $uuudata');
  //                         //         }).catchError((error) {
  //                         //           print('Error fetching data: $error');
  //                         //         });
  //                         //       }
  //                         //     },
  //                         //   ),
  //                         // ),
  //                         focusedBorder: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(15),
  //                           borderSide: const BorderSide(color: Colors.green),
  //                         ),
  //                       ),
  //                       onSubmitted: (value) {
  //                         Navigator.of(context).pop(); // 收起对话框
  //                         viewModel.fetchAndParseData(value); // 执行搜索逻辑
  //                       },
  //                     ),
  //                   ),
  //                   IconButton(
  //                     icon: Icon(Icons.cancel),
  //                     onPressed: () {
  //                       FocusScope.of(dialogContext).unfocus(); // 收起键盘
  //                       Navigator.of(dialogContext).pop(); // 关闭弹窗
  //                     },
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  void _ushowSearchBar(BuildContext context, PinterestViewModel viewModel) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque, // 允许空白区域的点击
          onTap: () {
            FocusScope.of(dialogContext).unfocus(); // 收起键盘
            Navigator.of(dialogContext).pop(); // 点击空白区域关闭对话框
          },
          child: Align(
            alignment: Alignment.topCenter, // 对齐到顶部
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0), // 距离顶部的距离
              child: Material(
                color: Colors.transparent,
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                    child: ListView(
                      padding: const EdgeInsets.all(20),
                      children: [
                        HighQPaginatedDropdown<Scenery>.paginated(
                          key: viewModel.dropdownFormFieldKey,
                          controller: viewModel.dropdownValue1,
                          requestItemCount: 25,
                          width: 10,
                          loadingWidget: const CircularProgressIndicator(
                            color: Colors.green,
                          ),
                          backgroundDecoration: (child) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                labelText: '关键词搜索',
                              ),
                              child: child,
                            );
                          },
                          hintText: const Text(
                            '输入关键词搜索',
                            style: TextStyle(color: Colors.black),
                          ),
                          paginatedRequest: (
                            int page,
                            String? searchText,
                          ) async {
                            String query = searchText ??
                                'winter'; //searchText存在但是为空，就会返回winter
                            print('开始翻译：$query');
                            var q = await viewModel.translateText(query);
                            print('q: $q');
                            final response = await http.get(Uri.parse(
                                'https://mydiumtify.globeapp.dev/pinterestKeywords?query=$q&sortBy=relevance'));
                            print(jsonDecode(response.body));
                            if (response.statusCode == 200) {
                              final List<dynamic> data =
                                  jsonDecode(response.body);
                              return data.map((item) {
                                final scenery = Scenery.fromJson(item);
                                return MenuItemModel<Scenery>(
                                  value: scenery,
                                  label: scenery.keyword,
                                  child: Text(
                                    scenery.keyword,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                );
                              }).toList();
                            } else {
                              throw Exception('Failed to load data');
                            }
                          },
                          padding: const EdgeInsets.all(8),
                          onChanged: (Scenery? value) {
                            if (value != null) {
                              viewModel.changedquery(value.keyword);
                            } else {
                              // 处理 value 为 null 的情况，例如打印日志或使用默认值
                              debugPrint('value is null');
                            }
                          },
                          hasTrailingClearIcon: true,
                          trailingIcon: const Icon(
                            Hero_icons_outline.arrow_down_circle,
                            color: Colors.green,
                          ),
                          searchHintText: 'Pinterest关键词',
                          trailingClearIcon: const Icon(
                            Icons.delete,
                            color: Colors.green,
                          ),
                          searchDelayDuration: const Duration(seconds: 4),
                          leadingIcon: IconButton(
                            onPressed: () {
                              FocusScope.of(dialogContext).unfocus(); // 收起键盘
                              Navigator.of(dialogContext).pop(); // 关闭弹窗
                              viewModel.fetchAndParseData(
                                  viewModel.uquery); // 执行搜索逻辑
                              print('搜索');
                            },
                            icon: const Icon(
                              Hero_icons_outline.globe_alt,
                              color: Colors.green,
                            ),
                          ),
                          spaceBetweenDropDownAndItemsDialog: 10,
                          isEnabled: true,
                          onTapWhileDisableDropDown: () {
                            print('搜索栏已经放下 ');
                          },
                          //dropDownMaxHeight: 150,
                          isDialogExpanded: true,
                          paddingValueWhileIsDialogExpanded: 16, //更改大小
                          noRecordText: const Text('No records found'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  PinterestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PinterestViewModel();
}
