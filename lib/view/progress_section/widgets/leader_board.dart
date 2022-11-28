import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/view/progress_section/screens/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../util/color.dart';

class LeaderBoardWidget extends StatelessWidget {
  const LeaderBoardWidget(
      {Key? key,
      required this.text,
      required this.imageUrl,
      required this.noOfDays})
      : super(key: key);

  final String text;
  final String imageUrl;
  final String noOfDays;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenThree(),
          ),
        );
      },
      child: Container(
        height: 59.h,
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            width: 1,
            color: AppColor.primaryColor.shade100,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 130.w,
              child: Row(
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: SvgPicture.network(imageUrl),
                  ),
                  AppSpace.horizontal20,
                  CustomTextWidget(
                    text: text,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    textColor: AppColor.secondaryColor.shade700,
                  ),
                ],
              ),
            ),
            CustomTextWidget(
              text: noOfDays,
              fontSize: 14.sp,
              textColor: AppColor.secondaryColor.shade700,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
