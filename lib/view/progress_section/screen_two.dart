import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/reuseables/strings_manager.dart';
import 'package:addictionsupportroom/view/progress_section/widgets/leader_board.dart';
import 'package:addictionsupportroom/view/shared/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 24.w),
              height: 79.h,
              width: double.maxFinite,
              decoration: const BoxDecoration(color: AppColor.secondaryColor),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.arrow_back_ios,
                        color: AppColor.primaryColor.shade50),
                  ),
                  SizedBox(
                    width: 82.w,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          child: SvgPicture.network(
                              "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783747/leatherboard-ranking_gcgmaa.svg"),
                        ),
                        SizedBox(width: 5.w),
                        CustomTextWidget(
                          text: AppStrings.leaderBoard,
                          textColor: AppColor.primaryColor.shade50,
                          fontSize: 20.sp,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 31.h),
                children: [
                  const ProgressWidget(),
                  SizedBox(height: 33.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        text: "Top Ranking",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      CustomTextWidget(
                        text: "View All",
                        fontSize: 15.sp,
                        textColor: AppColor.grayColor.shade200,
                        fontWeight: FontWeight.w700,
                      )
                    ],
                  ),
                  SizedBox(height: 13.h),
                  SizedBox(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        const LeaderBoardWidget(
                            text: "Lion",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        SizedBox(height: 16.h),
                        const LeaderBoardWidget(
                            text: "Frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        SizedBox(height: 16.h),
                        const LeaderBoardWidget(
                            text: "Panda",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        SizedBox(height: 16.h),
                        const LeaderBoardWidget(
                            text: "Pig",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        SizedBox(height: 16.h),
                        const LeaderBoardWidget(
                            text: "Beaver",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        SizedBox(height: 10.h),
                        const LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        SizedBox(height: 10.h),
                        const LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        SizedBox(height: 10.h),
                        const LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        SizedBox(height: 10.h),
                        const LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        SizedBox(height: 10.h),
                        const LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColor.primaryColor.shade50,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
            child: Column(
              children: [
                const ProgressWidget(),
                SizedBox(height: 33.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Top Ranking",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomTextWidget(
                      text: "View All",
                      fontSize: 15.sp,
                      textColor: AppColor.grayColor.shade200,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
                SizedBox(height: 13.h),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
              ),
              children: [
                const LeaderBoardWidget(
                    text: "Lion",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "60Days"),
                SizedBox(height: 16.h),
                const LeaderBoardWidget(
                    text: "Frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "60Days"),
                SizedBox(height: 16.h),
                const LeaderBoardWidget(
                    text: "Panda",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "60Days"),
                SizedBox(height: 16.h),
                const LeaderBoardWidget(
                    text: "Pig",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "60Days"),
                SizedBox(height: 16.h),
                const LeaderBoardWidget(
                    text: "Beaver",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "60Days"),
                SizedBox(height: 10.h),
                const LeaderBoardWidget(
                    text: "frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "30Days"),
                SizedBox(height: 10.h),
                const LeaderBoardWidget(
                    text: "frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "30Days"),
                SizedBox(height: 10.h),
                const LeaderBoardWidget(
                    text: "frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "30Days"),
                SizedBox(height: 10.h),
                const LeaderBoardWidget(
                    text: "frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "30Days"),
                SizedBox(height: 10.h),
                const LeaderBoardWidget(
                    text: "frog",
                    imageUrl:
                        "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                    noOfDays: "30Days"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
