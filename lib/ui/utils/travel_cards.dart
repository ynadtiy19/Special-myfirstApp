import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hung/app/app.locator.dart';
import 'package:hung/app/app.router.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:stacked_services/stacked_services.dart';

//访问加速计的视差滚动卡片
class TravelCards extends StatefulWidget {
  const TravelCards({
    Key? key,
    required this.foregroundImages,
    required this.backgroundImages,
    required this.texts,
    this.onPageChangedCallback,
  }) : super(key: key);

  final List<String> foregroundImages;
  final List<String> backgroundImages;
  final List<String> texts;
  final PageChangedCallback? onPageChangedCallback; // 新增参数

  @override
  State<TravelCards> createState() => _TravelCardsState();
}

typedef PageChangedCallback = Function(int index);

class _TravelCardsState extends State<TravelCards> {
  double? _accelerometerXAxis;
  int activeIndex = 0;
  late final StreamSubscription<dynamic> _streamSubscription;

  late final List<String> _foregroundImages;
  late final List<String> _backgroundImages;
  late final List<String> _texts;
  final _navigationService = locator<NavigationService>();

  @override
  void initState() {
    super.initState();
    _foregroundImages = widget.foregroundImages;
    _backgroundImages = widget.backgroundImages;
    _texts = widget.texts;

    _streamSubscription = accelerometerEvents.listen(
      (AccelerometerEvent event) {
        setState(() {
          _accelerometerXAxis = event.x;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 520.0,
        viewportFraction: 0.80,
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          setState(() => activeIndex = index);
          widget.onPageChangedCallback?.call(index); // 调用回调函数
        },
      ),
      items: _foregroundImages.asMap().entries.map((entry) {
        int index = entry.key;
        String foregroundImage = entry.value;

        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      right: _accelerometerXAxis != null
                          ? (-350 + _accelerometerXAxis! * 30)
                          : -350,
                      child: Image.asset(
                        'images/${_backgroundImages[index]}',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      width: 320,
                      bottom: -60,
                      right: _accelerometerXAxis != null
                          ? (-13 + _accelerometerXAxis! * 1.5)
                          : -13,
                      child: Image.asset(
                        'images/$foregroundImage',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          '精选',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          _texts[index],
                          style: const TextStyle(
                            fontFamily: 'GabrielaStencil',
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.white30),
                          onPressed: () {
                            _navigationService
                                .navigateTo(Routes.travelstoryView);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            child: Text(
                              '发现',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
