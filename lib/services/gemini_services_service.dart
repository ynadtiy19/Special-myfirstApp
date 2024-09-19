import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeminiService {
  static String apikey = 'AIzaSyAyLY-H55VHyL9j3SWBf7XiWfoK-aJi4uw';
  static final GenerativeModel textModel = GenerativeModel(
    model: "gemini-pro",
    apiKey: apikey,
    safetySettings: safetySettings,
    generationConfig: generationConfig,
  );

  static final GenerationConfig generationConfig = GenerationConfig(
    temperature: 0.9,
    topK: 1,
    topP: 1,
    maxOutputTokens: 2048,
  );

  static final List<SafetySetting> safetySettings = [
    SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
    SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
    SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.high),
    SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.high),
  ];

  static Future<String> generateText(String prompt) async {
    debugPrint('prompt: $prompt');
    final content = [Content.text(prompt)];
    final response = await textModel.generateContent(
      content,
      safetySettings: safetySettings,
      generationConfig: generationConfig,
    );
    debugPrint('text: ${response.text}');

    await savePromptAndQuery(prompt, response.text ?? ''); //添加这一行//425
    return response.text ?? '';
  }

  static Future<void> savePromptAndQuery(String prompt, String query) async {
    final prefs = await SharedPreferences.getInstance();
    // 获取当前保存的所有prompts
    String? promptsJson = prefs.getString('prompts');
    List<Map<String, dynamic>> doubleprompts = promptsJson != null
        ? List<Map<String, dynamic>>.from(json.decode(promptsJson))
        : [];

    // 添加新的prompt
    doubleprompts.add({'prompt': prompt, 'query': query});

    // 保存更新后的prompts列表
    await prefs.setString('prompts', json.encode(doubleprompts));
  }
}
