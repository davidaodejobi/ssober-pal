import 'package:flutter/material.dart';

class EmotionCard {
  final String emotion;
  final Color color;
  final VoidCallback onPressed;

  EmotionCard({
    required this.emotion,
    required this.color,
    required this.onPressed,
  });
}
