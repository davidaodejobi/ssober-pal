import 'package:flutter/material.dart';

class AppColor {
  static const Color kPrimaryColor = Color(0xff204e65);
  static const Color kSecondaryColor = Color(0xFF4fb1dc);
  static const Color kSuccessColor = Color(0xFF529f50);
  static const Color kErrorColor = Color(0xFFda2525);
  static const Color kGrayColor = Color(0xFF575757);
  static const Color kWarningColor = Color(0xFFe7b913);

  static const primaryColor = MaterialColor(
    0xff204e65,
    {
      50: Color(0xFFe9edf0),
      100: Color(0xFFbac8cf),
      200: Color(0xFF98aeb8),
      300: Color(0xFF6a8898),
      400: Color(0xFF4d7184),
      500: Color(0xFF204e65),
      600: Color(0xFF1d475c),
      700: Color(0xFF173748),
      800: Color(0xFF122b38),
      900: Color(0xFF0d212a),
    },
  );

  static const secondaryColor = MaterialColor(
    0xff4fb1dc,
    {
      50: Color(0xFFedf7fc),
      100: Color(0xFFc8e7f4),
      200: Color(0xFFaedbef),
      300: Color(0xFF89cbe8),
      400: Color(0xFF72c1e3),
      500: Color(0xFF4fb1dc),
      600: Color(0xFF48a1c8),
      700: Color(0xFF387e9c),
      800: Color(0xFF2b6179),
      900: Color(0xFF214a5c),
    },
  );
}
