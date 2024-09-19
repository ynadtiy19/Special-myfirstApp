import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hung/ui/animationartical/models/models.dart';
import 'package:hung/ui/animationartical/passport.dart';
import 'package:hung/ui/animationartical/passport_dialog.dart';
import 'package:hung/ui/animationartical/passport_dialog_route.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stacked/stacked.dart';
import 'package:storyly_flutter/storyly_flutter.dart';

import '../../animationartical/focus_detector.dart';
import '../../utils/hero-icons-outline_icons.dart';
import '../../utils/travel_cards.dart';
import '../../webviewsite/musicsite.dart';
import '../../widgets/common/popmenu/popmenu.dart';
import 'article_viewmodel.dart';

class ArticleView extends StackedView<ArticleViewModel> {
  const ArticleView({super.key});

  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget builder(
    BuildContext context,
    ArticleViewModel viewModel,
    Widget? child,
  ) {
    return RefreshIndicator(
      color: Colors.black87,
      onRefresh: () async {
        viewModel.changeColor();
        await Future.delayed(const Duration(milliseconds: 1200));
        viewModel.refreshStorylyView();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 219, 231),
        body: FutureBuilder<Map<String, dynamic>?>(
            future: viewModel.jsonCacheKey.value('fetchedData'), // 获取存储的数据,
            builder: (context, snapshot) {
              var udata = snapshot.data?.isEmpty ?? true
                  ? {
                      "how-apple-defines-on-device-ai-and-future-trends-from-the-perspective-of-analyzing-supported-002efd264938":
                          {
                        "uniqueSlug":
                            "how-apple-defines-on-device-ai-and-future-trends-from-the-perspective-of-analyzing-supported-002efd264938",
                        "title":
                            "How Apple defines on-device AI and future trendsâââfrom the perspective of analyzing supportedâ¦",
                        "subtitle":
                            "The iPhone 15 with the A16 chip cannot support Apple Intelligence, but M1-equipped models can. Therefore, it can be concluded that the keyâ¦",
                        "name": "é­æé¤ (Ming-Chi Kuo)",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*fz3jNLC0flpXYkxJwERsNQ.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*z4JJKE3rPHkn7fpfIRScfA.png",
                        "readingTime": "2.324528301886793",
                        "createdAt": "2024-06-11T19:39:21.641Z",
                        "isEligibleForRevenue": false
                      },
                      "the-future-of-ai-in-the-era-of-iot-d02a5dcdcbf1": {
                        "uniqueSlug":
                            "the-future-of-ai-in-the-era-of-iot-d02a5dcdcbf1",
                        "title": "The Future of AI in the Era of IoT",
                        "subtitle":
                            "When Tesla launched its electric vehicles and Apple launched its iPhone X with Face ID, the market realized the unlimited businessâ¦",
                        "name": "Alibaba Cloud",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*U_mQTOnCAlAIjQFHywdBgw.png",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*QHiL0kcdUFleoO2gfaHDTw.png",
                        "readingTime": "4.756918238993711",
                        "createdAt": "2018-02-12T01:49:01.241Z",
                        "isEligibleForRevenue": false
                      },
                      "no-charger-in-the-box-everything-you-need-to-know-about-charging-the-iphone-12-7b824b4aa636":
                          {
                        "uniqueSlug":
                            "no-charger-in-the-box-everything-you-need-to-know-about-charging-the-iphone-12-7b824b4aa636",
                        "title":
                            "No Charger in the Box? Everything You Need to Know About Charging the iPhone 12",
                        "subtitle":
                            "The latest Apple iPhone doesnât ship with a power adapter, but does support Appleâs new wireless MagSafe charging. Whether you use a cableâ¦",
                        "name": "PCMag",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*SLQXwWGHQ9WmCqtmk4Er4g.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/0*4CkL2umMEuYQ0DiI.jpg",
                        "readingTime": "5.452201257861635",
                        "createdAt": "2021-02-24T19:33:10.296Z",
                        "isEligibleForRevenue": false
                      },
                      "an-iphone-with-no-notch-awaits-deb28e5adb16": {
                        "uniqueSlug":
                            "an-iphone-with-no-notch-awaits-deb28e5adb16",
                        "title": "An iPhone With No Notch awaits",
                        "subtitle": "A major change!",
                        "name": "Youssef Mohamed",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*tgduzJ_VUGtf2uUiMwPT4g.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/0*zLSX02QAFvwPn4xz.jpg",
                        "readingTime": "3.95",
                        "createdAt": "2022-08-25T15:44:14.896Z",
                        "isEligibleForRevenue": true
                      },
                      "the-right-way-to-use-the-apple-ecosystem-3c1ba9fba1dc": {
                        "uniqueSlug":
                            "the-right-way-to-use-the-apple-ecosystem-3c1ba9fba1dc",
                        "title": "The Right Way To Use The Apple Ecosystem",
                        "subtitle":
                            "Use an Android with your Mac or an iPhone with Windows. Hereâs how.",
                        "name": "Fossbytes",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*wfAgO1k05Fn02K2PYqNHxQ.png",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*JLngaF1UehOYX_th5-DPQA.jpeg",
                        "readingTime": "4.606603773584905",
                        "createdAt": "2021-09-10T18:32:06.170Z",
                        "isEligibleForRevenue": false
                      },
                      "dont-use-rcs-just-because-iphones-have-it-814b0f3d011e":
                          {
                        "uniqueSlug":
                            "dont-use-rcs-just-because-iphones-have-it-814b0f3d011e",
                        "title": "Donât use RCS just because iPhones have it",
                        "subtitle":
                            "With Appleâs latest iOS 18 update, Apple now joins Android phones in supporting Rich Communications Service, commonly known as RCS. RCSâ¦",
                        "name": "Jerry Galvin",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*2DJ0zbgU8FWCWhE3UuNxUw.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*6BilhcxKzl0IvIV6zXyu-w.png",
                        "readingTime": "3.3915094339622645",
                        "createdAt": "2024-09-17T02:02:29.937Z",
                        "isEligibleForRevenue": false
                      },
                      "i-implemented-gtd-with-apple-reminders-on-ipados-15-ios-15-and-i-like-it-510dc3168c2d":
                          {
                        "uniqueSlug":
                            "i-implemented-gtd-with-apple-reminders-on-ipados-15-ios-15-and-i-like-it-510dc3168c2d",
                        "title":
                            "I Implemented GTD with Apple Reminders on iPadOS 15/iOS 15 and I Like It",
                        "subtitle":
                            "Soon you wonât need to buy or subscribe to an app to enjoy a decent Getting Things Done solution fully integrated with iPad/iPhone",
                        "name": "Will J Murphy",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*lRQhLWcekoINKJtNwnfnRw.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*9ttig3YhWS6GVYeMSoDHuQ.jpeg",
                        "readingTime": "10.908490566037736",
                        "createdAt": "2021-11-05T07:30:27.351Z",
                        "isEligibleForRevenue": true
                      },
                      "introduction-to-apples-core-ml-3-build-deep-learning-models-for-the-iphone-with-code-509b951674c1":
                          {
                        "uniqueSlug":
                            "introduction-to-apples-core-ml-3-build-deep-learning-models-for-the-iphone-with-code-509b951674c1",
                        "title":
                            "Introduction to Appleâs Core ML 3âââBuild Deep Learning Models for the iPhone (with code)",
                        "subtitle": "Introduction",
                        "name": "Mohd Sanad Zaki Rizvi",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*6ls8p_HxfswUlNLltsxO1A.png",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/0*WI1AUEeheSNHd5q0.png",
                        "readingTime": "10.126415094339622",
                        "createdAt": "2019-11-19T05:22:57.199Z",
                        "isEligibleForRevenue": false
                      },
                      "hands-on-metal-image-processing-using-apples-gpu-framework-8e5306172765":
                          {
                        "uniqueSlug":
                            "hands-on-metal-image-processing-using-apples-gpu-framework-8e5306172765",
                        "title":
                            "Hands-on Metal: Image Processing using Appleâs GPU framework",
                        "subtitle":
                            "Implement custom image processing using GPUs on iPhone with Metal framework",
                        "name": "Avinash",
                        "avatarUrl":
                            "https://cdn-images-1.readmedium.com/v2/resize:fill:2048:1152/1*5eKjVE7Xd-CwFRYCmnKFaw.jpeg",
                        "postImg":
                            "https://cdn-images-1.readmedium.com/v2/resize:fit:2048/1*fPklk8XoWkccfbG77gXbnQ.png",
                        "readingTime": "3.364465408805031",
                        "createdAt": "2019-06-19T11:21:59.850Z",
                        "isEligibleForRevenue": false
                      }
                    }
                  : snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 38),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${getGreeting()}, Buddy!',
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              MyPopupMenu(
                                onPress: (String value) {
                                  // 处理回调逻辑
                                  print('Pressed $value');
                                  viewModel.PushIntoMenu(value);
                                },
                                child: Icon(
                                  LineIcons.infinity,
                                  key: GlobalKey(),
                                  color: Colors.black87,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            DateFormat('EEEE, MMMM d ').format(DateTime.now()),
                            style: const TextStyle(
                              fontFamily: 'GabrielaStencil',
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: viewModel.controller,
                            decoration: InputDecoration(
                              hintText: 'Search for articles',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(LineIcons.search),
                                  onPressed: () {
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    String query = viewModel.controller.text;
                                    if (query.isNotEmpty) {
                                      viewModel
                                          .fetchData(query)
                                          .then((uuudata) {
                                        // 处理搜索结果
                                        viewModel.jsonCacheKey
                                            .refresh('fetchedData', uuudata!);
                                        viewModel.changeColor();
                                        // print('Fetched data: $uuudata');
                                      }).catchError((error) {
                                        print('Error fetching data: $error');
                                      });
                                    }
                                  },
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.deepOrangeAccent, // 聚焦时的粉橙色边框
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 17),
                          // const Divider(
                          //   color: Colors.black,
                          //   height: 16.5,
                          //   thickness: 1.0,
                          //   indent: 38,
                          //   endIndent: 38,
                          // ),
                          SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CategoryChip(
                                  label: 'All',
                                  isSelected:
                                      viewModel.selectedCategory == 'All',
                                  onSelected: viewModel.onCategorySelected,
                                ),
                                CategoryChip(
                                  label: 'Wellness',
                                  isSelected:
                                      viewModel.selectedCategory == 'Wellness',
                                  onSelected: viewModel.onCategorySelected,
                                ),
                                CategoryChip(
                                  label: 'Mental Health',
                                  isSelected: viewModel.selectedCategory ==
                                      'Mental Health',
                                  onSelected: viewModel.onCategorySelected,
                                ),
                                CategoryChip(
                                  label: 'Productivity',
                                  isSelected: viewModel.selectedCategory ==
                                      'Productivity',
                                  onSelected: viewModel.onCategorySelected,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 120,
                      child: StorylyView(
                          onStorylyViewCreated: viewModel.onStorylyViewCreated,
                          androidParam: StorylyParam()
                            ..storylyId = viewModel.UstorylyToken
                            ..storyGroupSize = "large",
                          iosParam: StorylyParam()
                            ..storylyId = viewModel.UstorylyToken
                            ..storyGroupSize = "large",
                          storylyLoaded: (storyGroups, dataSource) {
                            debugPrint(
                                "storylyLoaded -> storyGroups: ${storyGroups.length}");
                            debugPrint(
                                "storylyLoaded -> dataSource: $dataSource");
                          },
                          storylyLoadFailed: (errorMessage) =>
                              debugPrint("storylyLoadFailed"),
                          storylyActionClicked: (story) {
                            debugPrint(
                                "storylyActionClicked -> ${story.title}");
                          },
                          storylyEvent:
                              (event, storyGroup, story, storyComponent) {
                            debugPrint("storylyEvent -> event: $event");
                            debugPrint(
                                "storylyEvent -> storyGroup: ${storyGroup?.title}");
                            debugPrint(
                                "storylyEvent -> story: ${story?.title}");
                            debugPrint(
                                "storylyEvent -> storyComponent: $storyComponent");
                          },
                          storylyStoryShown: () =>
                              debugPrint("storylyStoryShown"),
                          storylyStoryDismissed: () =>
                              debugPrint("storylyStoryDismissed"),
                          storylyUserInteracted:
                              (storyGroup, story, storyComponent) {
                            debugPrint(
                                "userInteracted -> storyGroup: ${storyGroup.title}");
                            debugPrint(
                                "userInteracted -> story: ${story.title}");
                            debugPrint(
                                "userInteracted -> storyComponent: $storyComponent");
                          }),
                    )),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: udata.keys.length, // 定义要渲染的列表项个数
                        (BuildContext context, int index) {
                          String key = udata.keys.elementAt(index);
                          var article = udata[key]; //访问对应键的值
                          return FocusDetector.mobile(
                            key: ValueKey(apartments[index].host.id),
                            builder: (context, isFocused) => ArticleCard(
                              color: index % 2 == 0
                                  ? viewModel.uuucolor0
                                  : viewModel.uuucolor1,
                              isFocused: isFocused,
                              apartment: apartments[index],
                              avatarUrl: article['avatarUrl'],
                              isEligibleForRevenue:
                                  article['isEligibleForRevenue'],
                              name: article['name'],
                              title: utf8.decode(article['title']
                                  .runes
                                  .toList()), // 解码 'title' 字段
                              readingTime: article['readingTime'],
                              postImg: article['postImg'],
                              pushid: article['uniqueSlug'],
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          dashPattern: [8, 3],
                          radius: Radius.circular(10),
                          padding: EdgeInsets.all(8),
                          child: TravelCards(
                            foregroundImages: viewModel.foregroundImages,
                            backgroundImages: viewModel.backgroundImages,
                            texts: viewModel.texts,
                            onPageChangedCallback: (index) =>
                                viewModel.TravelCardsPageChange(index),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  @override
  ArticleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArticleViewModel();
}

class CategoryChip extends StatefulWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<String> onSelected;

  CategoryChip(
      {required this.label,
      required this.isSelected,
      required this.onSelected});

  @override
  _CategoryChipState createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(covariant CategoryChip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isSelected != widget.isSelected) {
      _isSelected = widget.isSelected;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: FilterChip(
        label: Text(widget.label),
        selected: _isSelected,
        onSelected: (selected) {
          setState(() {
            _isSelected = selected;
          });
          widget.onSelected(widget.label);
        },
        selectedColor: Color.fromRGBO(253, 218, 225, 1),
        backgroundColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        side: BorderSide(
          color: _isSelected
              ? const Color.fromRGBO(253, 218, 225, 255)
              : Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: _isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class ArticleCard extends StatefulWidget {
  final String name;
  final String readingTime;
  final String title;
  final String avatarUrl;
  final String postImg;
  final bool isEligibleForRevenue;
  final Apartment apartment;
  final bool isFocused;
  final Color color;
  final String pushid;

  ArticleCard({
    required this.name,
    required this.readingTime,
    required this.title,
    required this.avatarUrl,
    required this.apartment,
    required this.isFocused,
    required this.color,
    required this.postImg,
    required this.isEligibleForRevenue,
    required this.pushid,
  });

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard>
    with SingleTickerProviderStateMixin {
  late final PassportController _controller = PassportController();

  @override
  void initState() {
    super.initState();

    _animateFocus();
  }

  @override
  void didUpdateWidget(covariant ArticleCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isFocused == widget.isFocused) {
      return;
    }

    _animateFocus();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateFocus() {
    if (widget.isFocused) {
      _controller.open();
    } else {
      _controller.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(201, 200, 0, 255),
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 1),
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 238, 3),
                      offset: Offset(-1, -1),
                      spreadRadius: 1,
                      blurRadius: 1),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Material(
                color: Colors.transparent,
                child: Card(
                  color: widget.color,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    //触发效果慢一些
                    splashFactory:
                        InkSparkle.constantTurbulenceSeedSplashFactory,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MusicWebView(pushid: widget.pushid),
                        ),
                      );
                      print(widget.pushid);
                    },
                    splashColor: Colors.amber.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(widget.avatarUrl),
                                    radius: 20,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    widget.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              //如果required this.isEligibleForRevenue,中的isEligibleForRevenue为true，则显示Icon(Hero_icons_outline.check_badge)
                              const Icon(
                                Hero_icons_outline.check_badge,
                                color: Color.fromRGBO(255, 192, 23, 1),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: Stack(
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 450,
                                    maxHeight: 200,
                                  ),

                                  // child: AspectRatio(
                                  //   aspectRatio: 16 / 9,
                                  //   child: HoverToZoom(
                                  //     imagePath: '${widget.imageUrl}',
                                  //   ),
                                  // ),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image.network(
                                      widget.postImg,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          PassportDialogRoute<void>(
                                            builder: (context) {
                                              return PassportDialog(
                                                host: widget.apartment.host,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      child: Passport(
                                        key: ValueKey(
                                            'passport_${widget.apartment.host.id}'),
                                        host: widget.apartment.host,
                                        controller: _controller,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            double containerWidth = constraints.maxWidth * 0.65;
                            return Container(
                              width: containerWidth,
                              child: Text(
                                widget.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }),
                          SizedBox(height: 8),
                          Text(
                            widget.readingTime,
                            style: TextStyle(
                              color: Colors.grey,
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
          Positioned(
            bottom: 2,
            right: 2,
            child: FavoriteButton(),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // Text and icon color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Change the shape here
          side: BorderSide(
              color: const Color.fromARGB(255, 192, 147, 147)), // Border color
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 15, vertical: 15), // Button padding
      ),
      child: LikeButton(
        // onTap: (bool isLiked) {
        //   return Future.value(!isLiked);
        // },
        animationDuration: Duration(milliseconds: 800),
        size: 20,
        circleColor: CircleColor(
            start: Color(0xff00ddff), end: Color.fromARGB(255, 241, 32, 32)),
        bubblesColor: BubblesColor(
          dotPrimaryColor: Color.fromARGB(255, 229, 164, 12),
          dotSecondaryColor: Color.fromARGB(255, 221, 218, 26),
        ),
        bubblesSize: 100,
        likeBuilder: (bool isLiked) {
          return Icon(
            applyTextScaling: true,
            Hero_icons_outline.heart,
            color: isLiked ? Color.fromARGB(255, 150, 213, 42) : Colors.grey,
            size: 20,
          );
        },
        likeCount: 25,
      ),
    );
  }
}
