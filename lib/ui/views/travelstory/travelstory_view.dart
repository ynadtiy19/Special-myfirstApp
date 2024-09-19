import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hung/ui/common/app_colors.dart';
import 'package:hung/ui/widgets/common/translation/translation.dart';
import 'package:line_icons/line_icons.dart';
import 'package:stacked/stacked.dart';

import 'travelstory_viewmodel.dart';

class TravelstoryView extends StackedView<TravelstoryViewModel> {
  const TravelstoryView({Key? key}) : super(key: key);
  Widget categories() {
    final categoryList = ['America', 'Europe', 'Asia', 'Oceania'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const Text(
                'All',
                style: TextStyle(
                  color: pinkLace,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: pinkLace,
                ),
              ),
            ],
          ),
          for (final category in categoryList)
            Text(
              category,
              style: TextStyle(
                color: pinkLace.withOpacity(0.6),
                fontSize: 16,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget builder(
    BuildContext context,
    TravelstoryViewModel viewModel,
    Widget? child,
  ) {
    double screenHeight = MediaQuery.of(context).size.height;

    return ScrollbarTheme(
      data: ScrollbarThemeData(
        thumbColor:
            WidgetStateProperty.all(Colors.green[400]!.withOpacity(0.72)),
        thickness: WidgetStateProperty.all(8.2),
      ),
      child: Scaffold(
        //appbar也可以存在于children[]小部件中👌👌
        backgroundColor: Theme.of(context).colorScheme.background,

        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0, // 底部导航栏高度预留
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: viewModel.pageController,
                children: [
                  CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    controller: viewModel.scrollController,
                    slivers: [
                      SliverAppBar(
                        title: Opacity(
                            opacity:
                                clampDouble(viewModel.scrollOffset / 200, 0, 1),
                            child: const Text("Travel Story",
                                style: TextStyle(fontSize: 18))),
                        backgroundColor: Colors.amber[300]!.withOpacity(0.72),
                        elevation: 0,
                        expandedHeight: screenHeight * 0.425,
                        pinned: true,
                        flexibleSpace: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            // Calculate the opacity of the title based on the app bar size
                            double top = constraints.biggest.height;
                            double opacity = (1 -
                                    (top - kToolbarHeight) /
                                        (screenHeight * 0.4 - kToolbarHeight))
                                .clamp(0.0, 1.0);
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                // Background image
                                Opacity(
                                  opacity: (1 - viewModel.scrollOffset / 200)
                                      .clamp(0.0, 1.0),
                                  child: Image.asset(
                                    'images/uu12.jpg', // Replace with your background image asset
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // Title that fades out
                                Positioned(
                                  bottom: 16,
                                  left: 16,
                                  child: Opacity(
                                    opacity: 1 - opacity,
                                    child: const Text(
                                      "WHERE DO YOU\nWANT TO GO..?",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: "Search",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    fillColor:
                                        Colors.green[400]!.withOpacity(0.72),
                                    filled: true,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                height: 50,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  children: [
                                    CategoryChip(
                                      label: 'Byron Beaches',
                                      onPressed: () =>
                                          viewModel.toggleCategorySelection,
                                      isSelected: viewModel.categorySelections,
                                    ),
                                    CategoryChip(
                                      label: 'Mountains',
                                      isSelected: viewModel.categorySelections,
                                      onPressed: () =>
                                          viewModel.toggleCategorySelection,
                                    ),
                                    CategoryChip(
                                      label: 'Romantic',
                                      isSelected: viewModel.categorySelections,
                                      onPressed: () =>
                                          viewModel.toggleCategorySelection,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "Travel Places",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return TravelCard(
                                      imageUrl:
                                          'images/uu${index + 1}.jpg', // Replace with your image asset
                                      place: 'Goa Beach',
                                      location: 'Southwestern',
                                      onPressed: () =>
                                          viewModel.navigateTotravelstory(
                                              context, index),
                                      index: index,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Your Friends",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "You have 52+ friends",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'images/bard.png'), // Replace with your image asset
                                    ),
                                    SizedBox(width: 8),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'images/bard.png'), // Replace with your image asset
                                    ),
                                    SizedBox(width: 8),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'images/bard.png'), // Replace with your image asset
                                    ),
                                    SizedBox(width: 8),
                                    CircleAvatar(
                                      child: Text('+45'),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 36),
                              categories(),
                              const SizedBox(height: 16),
                              const AllDestinations(
                                deviceWidth: 200,
                                padding: 16,
                                spacing: 16,
                              ),
                              const SizedBox(height: 36),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DottedBorder(
                                    borderType: BorderType.RRect,
                                    dashPattern: [8, 5],
                                    radius: const Radius.circular(16.0),
                                    child: Ink(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width *
                                          0.86,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        color: Colors.green[400]!
                                            .withOpacity(0.72),
                                      ),
                                      //修饰后的boxshadown可能会超过DottedBorder边界
                                      child: const Align(
                                          alignment: Alignment.center,
                                          child: Translation()),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  TravelstoryViewModel viewModelBuilder(BuildContext context) =>
      TravelstoryViewModel();
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed; // Add this line

  const CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onPressed, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ChoiceChip(
        label: Text(label),
        onSelected: (selected) {
          onPressed(); // Call the callback function here
          print('Selected: $selected');
        },
        selected: isSelected,
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  final String imageUrl;
  final String place;
  final String location;
  final VoidCallback onPressed;
  final int index;

  const TravelCard({
    required this.imageUrl,
    required this.place,
    required this.location,
    required this.onPressed,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Ink(
        width: 150,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //纵向排列(上中下)
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(1, 3),
                  ),
                ],
              ),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: onPressed,
                  splashColor: teaGreen.withOpacity(0.5),
                  child: Ink.image(
                    image: AssetImage(
                      imageUrl,
                    ),
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              place,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              location,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllDestinations extends StatefulWidget {
  final double padding;
  final double spacing;
  final double deviceWidth;

  const AllDestinations({
    Key? key,
    required this.padding,
    required this.spacing,
    required this.deviceWidth,
  }) : super(key: key);

  @override
  State<AllDestinations> createState() => _AllDestinationsState();
}

class _AllDestinationsState extends State<AllDestinations> {
  static const _imageWidth = 230.0;

  late final ScrollController _scrollController;
  late final double _indexFactor;

  double _imageOffset = 0.0;

  @override
  void initState() {
    _indexFactor = (widget.spacing + _imageWidth) / widget.deviceWidth;
    _imageOffset = -widget.padding / widget.deviceWidth;

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _imageOffset =
            ((_scrollController.offset - widget.padding) / widget.deviceWidth);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: widget.spacing),
        itemCount: MockAllDestinations.data.length,
        itemBuilder: (_, index) => DestinationItem(
          index: index,
          details: MockAllDestinations.data[index],
          imageWidth: _imageWidth,
          imageOffset: _imageOffset,
          indexFactor: _indexFactor,
        ),
      ),
    );
  }
}

class Destination {
  final String city;
  final String country;
  final String rating;

  const Destination({
    required this.city,
    required this.country,
    required this.rating,
  });

  String get image => 'images/${city.toLowerCase()}.jpg';
}

class MockAllDestinations {
  static const data = [
    Destination(city: 'Nassau', country: 'Bahamas', rating: '4.6'),
    Destination(city: 'Mykonos', country: 'Greece', rating: '4.8'),
    Destination(city: 'Rome', country: 'Italy', rating: '4.4'),
    Destination(city: 'London', country: 'England', rating: '4.5'),
  ];
}

class DestinationItem extends StatelessWidget {
  final int index;
  final Destination details;
  final double imageWidth;
  final double imageOffset;
  final double indexFactor;

  const DestinationItem({
    Key? key,
    required this.index,
    required this.details,
    required this.imageWidth,
    required this.imageOffset,
    required this.indexFactor,
  }) : super(key: key);

  Widget image() {
    return Image.asset(
      details.image,
      fit: BoxFit.cover,
      alignment: Alignment(-imageOffset + indexFactor * index, 0),
    );
  }

  Widget rating() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              height: 48,
              color: kSecondaryColor.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      LineIcons.starAlt,
                      color: Color(0xFFFFD600),
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        details.rating,
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
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
    );
  }

  Widget favoriteIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: InkWell(
              onTap: () => print('Favorite'),
              child: Container(
                width: 48,
                height: 48,
                color: kSecondaryColor.withOpacity(0.4),
                child: const Icon(
                  LineIcons.heart,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomText() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              height: 48,
              color: kSecondaryColor.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const Icon(
                      LineIcons.locationArrow,
                      color: kPrimaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      details.city,
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ', ${details.country}',
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Stack(
          fit: StackFit.expand,
          children: [
            image(),
            rating(),
            favoriteIcon(),
            bottomText(),
          ],
        ),
      ),
    );
  }
}
