import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/reuseables/strings_manager.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/view/progress_section/widgets/leader_board.dart';
import 'package:addictionsupportroom/view/shared/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:addictionsupportroom/util/color.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 24.w),
              height: 79.h,
              width: double.maxFinite,
              decoration:
                  BoxDecoration(color: AppColor.secondaryColor.shade500),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: AppColor.primaryColor.shade50),
                  ),
                  AppSpace.horizontal96,
                  SizedBox(
                    child: Row(
                      children: [
                        SizedBox(
                            child: SvgPicture.network(
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783747/leatherboard-ranking_gcgmaa.svg")),
                        AppSpace.horizontal8,
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
                  AppSpace.vertical32,
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
                  AppSpace.vertical16,
                  SizedBox(
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        LeaderBoardWidget(
                            text: "Lion",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        AppSpace.vertical16,
                        LeaderBoardWidget(
                            text: "Frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        AppSpace.vertical16,
                        LeaderBoardWidget(
                            text: "Panda",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        AppSpace.vertical16,
                        LeaderBoardWidget(
                            text: "Pig",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        AppSpace.vertical16,
                        LeaderBoardWidget(
                            text: "Beaver",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "60Days"),
                        AppSpace.vertical12,
                        LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        AppSpace.vertical12,
                        LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        AppSpace.vertical12,
                        LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        AppSpace.vertical12,
                        LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                        AppSpace.vertical12,
                        LeaderBoardWidget(
                            text: "frog",
                            imageUrl:
                                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783703/avatar-6_fomxla.svg",
                            noOfDays: "30Days"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
