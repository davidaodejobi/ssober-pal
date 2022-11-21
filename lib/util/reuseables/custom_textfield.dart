import 'package:flutter/material.dart';

// reuseable textfield
class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final double contentPadding;
  final Color hintColor;

  const CustomTextField(
      {super.key,
        required this.textEditingController,
        required this.hintText,
        required this.textInputType,
        this.contentPadding = 16,
        this.hintColor = const Color.fromRGBO(164, 164, 164, 1)});

  @override
  Widget build(BuildContext context) {
    final inputBorder =
    OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: EdgeInsets.all(contentPadding),
      ),
      keyboardType: textInputType,
    );
  }
}
