import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              height: 79.h,
              width: double.maxFinite,
              decoration:
                  BoxDecoration(color: AppColor.secondaryColor.shade500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: AppColor.primaryColor.shade50),
                  ),
                  CustomTextWidget(
                    text: "Chart",
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    textColor: AppColor.primaryColor.shade50,
                  ),
                  Icon(Icons.linear_scale_outlined,
                      color: AppColor.primaryColor.shade50),
                ],
              ),
            ),
            AppSpace.vertical40,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColor.primaryColor.shade500,
                          maxRadius: 11,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 10,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 12,
                                color: AppColor.primaryColor.shade500,
                              ),
                            ),
                          ),
                        ),
                        Text("NOVEMBER 2022",
                            style: AppText.h6bold.copyWith(
                                color: AppColor.primaryColor.shade400)),
                        CircleAvatar(
                          backgroundColor: AppColor.primaryColor.shade500,
                          maxRadius: 11,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 10,
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: AppColor.primaryColor.shade500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpace.vertical20,
                  const Text(
                    "Showing a weekly chart of bottles ",
                    style: AppText.paragraph1regular,
                  ),
                  AppSpace.vertical160,
                  GraphKey(
                      color: AppColor.successColor.shade200,
                      text: "Did not take a bottle"),
                  AppSpace.vertical12,
                  GraphKey(
                      color: AppColor.errorColor.shade200,
                      text: "Took a bottle"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GraphKey extends StatelessWidget {
  const GraphKey({Key? key, required this.color, required this.text})
      : super(key: key);
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        AppSpace.horizontal12,
        Text(
          text,
          style: AppText.paragraph1regular,
        )
      ],
    );
  }
}
