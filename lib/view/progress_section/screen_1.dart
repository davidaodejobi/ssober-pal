import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/reuseables/strings_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 33.h, right: 16.w, left: 16.w),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              // width:  38.w,
              height: 27.h,
              child: CustomTextWidget(
                text: AppStrings.progress,
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Container(
            height: 126.h,
            width: 343.w,
            decoration: BoxDecoration(
              //  color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16.r),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783764/milestone-card_rwyd8q.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                SizedBox(height: 22.h),
                CustomTextWidget(
                  text: AppStrings.youHaveReachedThe,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  height: 30.h,
                  child: CustomTextWidget(
                      text: AppStrings.day7Milestone,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 23.h),
                Container(
                    alignment: Alignment.center,
                    height: 24.h,
                    width: 338.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: CustomTextWidget(
                        text: AppStrings.keepItUp,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
             // Navigator.push(context,
                //  MaterialPageRoute(builder: (context) => const ScreenTwo()));
                AutoRouter.of(context).pushNamed('/Progress_screen_two');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              height: 32,
              width: 149,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                      width: 1, color: AppColor.primaryColor.shade100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                      text: AppStrings.leaderBoard,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  Container(
                      height: 18.5.h,
                      width: 18.5.w,
                      child: SvgPicture.network(
                          "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783747/leatherboard-ranking_gcgmaa.svg"))
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Divider(
            height: 1.h,
          ),
          SizedBox(height: 14.h),
          Expanded(
            child: SizedBox(
                height: 360.h,
                child: TableCalendar(
                  firstDay: DateTime.utc(2012, 01, 10),
                  lastDay: DateTime.utc(2030, 01, 10),
                  focusedDay: DateTime.now(),
                )),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            width: 269,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.error_outline),
                Text(AppStrings.tapTheDate)
              ],
            ),
          )
        ],
      ),
    );
  }
}
