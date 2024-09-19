import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_effects/hyper_effects.dart';

//不同国家语言

class Translation extends StatefulWidget {
  const Translation({super.key});

  @override
  State<Translation> createState() => _TranslationState();
}

class _TranslationState extends State<Translation> {
  List<String> translations = [
    'Hello',
    'Bonjour',
    'Marhaba',
    'Hola',
    'Ciao',
    'Hallo',
    'Hej',
    'Ahoj',
    'Saluton',
    'Konnichiwa',
    'Annyeong',
    'Ni Hao',
    'Namaste',
    'Salaam',
  ];
  int lastTranslation = 0;
  int translation = 0;

  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
        Duration(milliseconds: (2000 * timeDilation).toInt()), (timer) {
      setState(() {
        lastTranslation = translation;
        translation = (translation + 1) % translations.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ShaderMask(
            shaderCallback: (rect) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
                // Colors.white,
              ],
            ).createShader(rect),
            child: ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                colors: [
                  Color(0xFFD4145A),
                  Color(0xFFFBB03B)
                  // Colors.white,
                ],
              ).createShader(rect),
              child: Text(
                translations[lastTranslation],
                style: GoogleFonts.sacramento().copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              )
                  .roll(
                    translations[translation],
                    symbolDistanceMultiplier: 2,
                    tapeCurve: Curves.easeInOutBack,
                    widthCurve: Curves.easeInOutQuart,
                    padding: const EdgeInsets.only(right: 5, left: 5),
                  )
                  .animate(
                    trigger: translation,
                    duration: const Duration(milliseconds: 1000),
                  ),
            ),
          ),
          Text(
            ', LuHuiMin',
            style: GoogleFonts.sacramento().copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 35,
            ),
            strutStyle: const StrutStyle(
              fontSize: 41,
              height: 1,
              forceStrutHeight: true,
              leading: 1,
            ),
          ),
        ],
      ),
    );
  }
}
