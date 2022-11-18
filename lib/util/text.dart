import 'package:flutter/material.dart';
import 'color.dart';

Widget text(
  String label, {
  double size: 14,
  Color? color,
  FontWeight? weight,
  TextAlign? textAlign,
  int? maxLines,
  int? fontsize,
}) {
  return Text(label,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: TextStyle(
        fontSize: size,
        color: color ?? AppColor.kGrayColor,
        fontWeight: weight ?? FontWeight.w400,
        fontFamily: 'General Sans',
      ));
}
