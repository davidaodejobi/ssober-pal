import 'package:addictionsupportroom/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final bool isLoading;
  const AppElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = AppColor.kDarkBlueColor,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const SpinKitChasingDots(
                color: Colors.white,
              )
            : Text(
                text,
                style: AppText.h6medium,
              ),
      ),
    );
  }
}
