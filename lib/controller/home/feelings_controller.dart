import 'dart:developer';

import 'package:addictionsupportroom/model/emotion_card_model.dart';
import 'package:addictionsupportroom/services/home_services.dart';
import 'package:flutter/cupertino.dart';

class FeelingsController extends ChangeNotifier {
  List<EmotionCard> getEmotionsList() => [
        EmotionCard(
          emotion: 'sober',
          color: const Color(0xFFFEFFF0),
          onPressed: () {
            getEmotion('sober');
            switchOnQuotes();
            trackSelectedCard(0);
          },
        ),
        EmotionCard(
          emotion: 'happy',
          color: const Color(0xFFF0F9FF),
          onPressed: () {
            getEmotion('happy');
            switchOnQuotes();
            trackSelectedCard(1);
          },
        ),
        EmotionCard(
          emotion: 'confused',
          color: const Color(0xFFF6F0FF),
          onPressed: () {
            getEmotion('confused');
            switchOnQuotes();
            trackSelectedCard(2);
          },
        ),
        EmotionCard(
          emotion: 'defeated',
          color: const Color(0xFFFFF6F0),
          onPressed: () {
            getEmotion('defeated');
            switchOnQuotes();
            trackSelectedCard(3);
          },
        ),
        EmotionCard(
          emotion: 'angry',
          color: const Color(0xFFFFF2F0),
          onPressed: () {
            getEmotion('angry');
            switchOnQuotes();
            trackSelectedCard(4);
          },
        ),
      ];

  bool _isPressed = false;
  bool get isPressed => _isPressed;
  bool isLoading = false;
  String _content = '';
  String get content => _content;
  List<bool> _isSelected = List.filled(5, false);
  List<bool> get isSelected => _isSelected;

  void trackSelectedCard(int index) {
    _isSelected = List.filled(5, false);
    _isSelected[index] = !_isSelected[index];
    notifyListeners();
  }

  clearTrackedSelection() {
    _isSelected = List.filled(5, false);
    notifyListeners();
  }

  startLoading() {
    isLoading = true;
    notifyListeners();
  }

  stopLoading() {
    isLoading = false;
    notifyListeners();
  }

  getEmotion(String emotion) async {
    startLoading();
    try {
      String res = await HomeService().fetchEmotion(
        emotion: emotion,
      );

      if (res.isNotEmpty) {
        _content = res;
        stopLoading();
        return true;
      } else {
        stopLoading();
        _content = 'An error occur';
        return false;
      }
    } catch (e) {
      stopLoading();
      _content = 'An error occur';
      return false;
    }
  }

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
