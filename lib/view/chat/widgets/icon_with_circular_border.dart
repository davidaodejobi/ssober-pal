// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class IconWithCircularBorder extends StatelessWidget {
  final Widget child;
  final double size;
  final Color color;
  final Color bgColor;
  final VoidCallback onTap;
  const IconWithCircularBorder({
    Key? key,
    required this.child,
    required this.size,
    required this.color,
    this.bgColor = Colors.transparent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
          ),
          color: bgColor,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
