import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final double contentPadding;
  final Color hintColor;
  final Color enabledBorderColor;
  final double borderRadius;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    this.contentPadding = 16,
    this.hintColor = const Color.fromRGBO(164, 164, 164, 1),
    this.enabledBorderColor = const Color.fromRGBO(9, 63, 134, 1),
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Color.fromRGBO(9, 63, 134, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromRGBO(9, 63, 134, 1),
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(contentPadding),
      ),
      keyboardType: textInputType,
    );
  }
}
