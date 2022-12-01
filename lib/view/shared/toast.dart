import 'package:addictionsupportroom/util/util.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void errorToast(BuildContext context, {required String message}) {
  return showTopSnackBar(
    Overlay.of(context)!,
    CustomSnackBar.error(
      backgroundColor: AppColor.kErrorColor,
      message: message,
    ),
  );
}
