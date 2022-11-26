import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/color.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            height: 79.h,
            width: double.maxFinite,
            decoration: const BoxDecoration(color: AppColor.secondaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios, color: AppColor.primaryColor.shade50),
                CustomTextWidget(
                  text: "History",
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  textColor: AppColor.primaryColor.shade50,
                ),
                Icon(Icons.linear_scale_outlined,
                    color: AppColor.primaryColor.shade50),
              ],
            ),
          ),
          AppSpace.space32,
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                     BoxShadow(
                     color: AppColor.grayColor.shade300.withOpacity(0.8),
                      blurRadius: 5,
                      offset: const Offset(2, 2)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: 'November',
                                style: AppText.paragraph2regular,
                                children: [
                              TextSpan(
                                  text: ' is 9% less than last month',
                                  style: AppText.paragraph1regular)
                            ])),
                        AppSpace.space12,
                        const Icon(
                          Icons.arrow_downward,
                         // size: 60,
                        )
                      ],
                    ),
                    Text(
                      "12days Left",
                      style: AppText.paragraph1medium.copyWith(fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
