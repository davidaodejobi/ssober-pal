import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/view/progress_section/widgets/history_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    text: "History",
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    textColor: AppColor.primaryColor.shade50,
                  ),
                  Icon(Icons.linear_scale_outlined,
                      color: AppColor.primaryColor.shade50),
                ],
              ),
            ),
            AppSpace.vertical32,
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: const [
                  HistoryyWidget(
                    month: 'November',
                    desc: '  is 9% less than last month',
                    daysLeft: '12days left',
                  ),
                  AppSpace.vertical16,
                  HistoryyWidget(
                    month: 'October',
                    desc: '  is 5% less than last month',
                  ),
                  AppSpace.vertical16,
                  HistoryyWidget(
                    month: 'September',
                    desc: '  is 5% less than last month',
                  ),
                  AppSpace.vertical16,
                  HistoryyWidget(
                    month: 'September',
                    desc: '  is 5% less than last month',
                  ),
                  AppSpace.vertical16,
                  HistoryyWidget(
                    month: 'September',
                    desc: '  is 5% less than last month',
                  ),
                  AppSpace.vertical16,
                  HistoryyWidget(
                    month: 'September',
                    desc: '  is 5% less than last month',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
