import 'package:flutter/material.dart';

class Onboard {
  final String imageUrl;
  final String title;
  final String description;
  final PageController controller;
  Onboard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.controller,
  });
}
