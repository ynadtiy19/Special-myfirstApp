import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

class PromptToTranslateViewModel extends BaseViewModel {
  static final TextEditingController _query = TextEditingController();
  static TextEditingController get query => _query;

  String _highlightedText = '';
  String get highlightedText => _highlightedText;

  late String _targetLanguage = 'en';
  String get targetLanguage => _targetLanguage;

  static String _translation = ' ';
  static String get translation => _translation;

  bool _speechEnabled = false;
  bool get speechEnabled => _speechEnabled;

  void startListening() async {
    notifyListeners();
  }

  void stopListening() async {
    rebuildUi();
  }

  void changeTargetLanguage(BuildContext context) {
    String? selectedLanguage = _targetLanguage;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('选择目标翻译语言'),
          content: DropdownButton<String>(
            value: selectedLanguage,
            onChanged: (String? newValue) {
              selectedLanguage = newValue!;
              _targetLanguage = selectedLanguage!;
              notifyListeners();
              Navigator.of(context).pop();
            },
            items: <String>[
              'en (英语)',
              'es (西班牙语)',
              'fr (法语)',
              'de (德语)',
              'ja (日语)',
              'ko (韩语)',
              'ru (俄语)',
              'zh-CN (简体中文)',
              'hi (印地语)',
              'ar (阿拉伯语)',
              'pt (葡萄牙语)',
              'it (意大利语)',
              'nl (荷兰语)',
              'pl (波兰语)',
              'vi (越南语)',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value.split(' ')[0], // Extract language code
                child: Text(value),
              );
            }).toList(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                '取消',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                '确定',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                _targetLanguage = selectedLanguage!;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> translateText(String text, String targetLang) async {
    _translation = ' ';
    // final response = await http.get(Uri.parse(
    //     'https://findmyip.net/api/translate.php?text=$text&target_lang=$targetLang'));
    final uresponse = await http.get(Uri.parse(
        'https://mydiumtify.globeapp.dev/googlemit?text=$text&to_lang=$targetLang&from_lang=auto'));
    if (uresponse.statusCode == 200) {
      // final data = json.decode(uresponse.body);
      final udata = jsonDecode(utf8.decode(uresponse.bodyBytes));
      print(udata);
      _translation = udata['data'];
      print('🥰🎶😊🐳👌🍧😂');

      // _translation = data['data']['translate_result'];
      rebuildUi(); //重中之重，即使数组字符串集合改变，也反映不到UI上去

      // print(targetLang);
      // print(data['data']['translate_result']);
    } else {
      _translation = "Failed to get translation";
    }
  }
}
