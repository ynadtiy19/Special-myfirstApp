import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

class PromptToTranslateViewModel extends BaseViewModel {
  static final TextEditingController _query = TextEditingController();
  static TextEditingController get query => _query;

  String _highlightedText = '';
  String get highlightedText => _highlightedText;

  int _highlightStartIndex = 0;
  int _highlightEndIndex = 0;

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

  // void onSpeechResult(SpeechRecognitionResult result) {
  //   _query.text = result.recognizedWords;
  //
  //   rebuildUi();
  // }

  void changeTargetLanguage(BuildContext context) {
    String? selectedLanguage = _targetLanguage;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Target Language'),
          content: DropdownButton<String>(
            value: selectedLanguage,
            onChanged: (String? newValue) {
              selectedLanguage = newValue!;

              _targetLanguage = selectedLanguage!;
              notifyListeners();
              Navigator.of(context).pop();
            },
            items: <String>[
              'en',
              'es',
              'fr',
              'de',
              'ja',
              'ko',
              'ru',
              'zh-CN',
              'hi',
              'ar',
              'pt',
              'it',
              'nl',
              'pl',
              'vi'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('OK'),
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

  //词汇匹配

  PromptToTranslateViewModel() {
    _query.addListener(initState);
  }

  void initState() {
    // 获取选中的文本
    final selection = _query.value.selection;
    if (selection.isValid) {
      final selectedText = _query.text.substring(
        selection.start,
        selection.end,
      );
      highlightText(selectedText, selection.start, selection.end);
      // print(selectedText);
    }
  }

  void highlightText(String selectedText, int start, int end) {
    _highlightedText = selectedText;
    _highlightStartIndex = start;
    _highlightEndIndex = end;
    notifyListeners();
  }
}
