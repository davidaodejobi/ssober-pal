import 'package:flutter/material.dart';

class Feelings {
  final String label;
  final String message;
  final Color color;
  final IconData emoji;

  Feelings(
      {required this.label,
      required this.message,
      required this.color,
      required this.emoji});
}
