import 'dart:developer';

import 'package:addictionsupportroom/model/emotion_card_model.dart';
import 'package:flutter/cupertino.dart';

class FeelingsController extends ChangeNotifier {
  List<EmotionCard> getEmotionsList() => [
        EmotionCard(
          emotion: 'sober',
          color: const Color(0xFFFEFFF0),
          onPressed: () {
            switchOnQuotes();
          },
        ),
        EmotionCard(
          emotion: 'happy',
          color: const Color(0xFFF0F9FF),
          onPressed: () {
            switchOnQuotes();
          },
        ),
        EmotionCard(
          emotion: 'confused',
          color: const Color(0xFFF6F0FF),
          onPressed: () {
            switchOnQuotes();
          },
        ),
        EmotionCard(
          emotion: 'defeated',
          color: const Color(0xFFFFF6F0),
          onPressed: () {
            switchOnQuotes();
          },
        ),
        EmotionCard(
          emotion: 'angry',
          color: const Color(0xFFFFF2F0),
          onPressed: () {
            switchOnQuotes();
          },
        ),
      ];

  bool _isPressed = false;
  bool get isPressed => _isPressed;

  switchOnQuotes() {
    _isPressed = true;
    log('isPressed: $_isPressed');
    notifyListeners();
  }

  clear() {
    _isPressed = false;
    notifyListeners();
  }
}
