import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget title;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double fontSize;
  final double width;
  final FontWeight fontWeight;
  final double borderRadius;

  const CustomElevatedButtonWidget({
    Key? key,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    this.borderColor = Colors.transparent,
    this.height = 48,
    this.fontSize = 16,
    this.width = 327,
    this.fontWeight = FontWeight.w500,
    this.borderRadius = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          side: MaterialStateProperty.all(
            BorderSide(width: 1, color: borderColor),
          ),
        ),
        child: title,
      ),
    );
  }
}
