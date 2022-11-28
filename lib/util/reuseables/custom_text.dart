import 'package:flutter/material.dart';

enum AlignPosition {
  start,
  center,
  end,
}

// reuseable text widget
class CustomTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final String alignment;
  final TextOverflow overflow;

  const CustomTextWidget(
      {Key? key,
      required this.text,
      this.fontSize = 14,
      this.textColor = const Color.fromRGBO(79, 79, 79, 1),
      this.fontWeight = FontWeight.w400,
      this.overflow = TextOverflow.ellipsis,
      this.alignment = "start"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment == "end"
          ? TextAlign.end
          : alignment == "center"
              ? TextAlign.center
              : TextAlign.start,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight,
        fontFamily: 'Nunito',
      ),
      overflow: overflow,
    );
  }
}

// fontweight manager
class FontWeightManager {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight title = FontWeight.w600;
  static const FontWeight hintWeight = FontWeightManager.regular;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight light = FontWeight.w300;
}
