import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/reuseables/custom_button.dart';
import 'package:addictionsupportroom/util/reuseables/custom_text.dart';
import 'package:addictionsupportroom/util/reuseables/custom_text_field.dart';
import 'package:addictionsupportroom/util/reuseables/strings_manager.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/progress_section/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final TextEditingController _controller = TextEditingController();
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 33.h, right: 16.w, left: 16.w),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  child: CustomTextWidget(
                    text: AppStrings.progress,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              AppSpace.vertical16,
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669059124/Default_aotscw.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    AppSpace.vertical24,
                    CustomTextWidget(
                      text: AppStrings.youHaveReachedThe,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    AppSpace.vertical4,
                    SizedBox(
                      child: CustomTextWidget(
                          text: AppStrings.day7Milestone,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    AppSpace.vertical24,
                    Container(
                      alignment: Alignment.center,
                      width: 338.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: CustomTextWidget(
                          text: AppStrings.keepItUp,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              AppSpace.vertical20,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenTwo(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                        width: 1, color: AppColor.primaryColor.shade100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                          text: AppStrings.leaderBoard,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 18.5.h,
                        width: 18.5.w,
                        child: SvgPicture.network(
                            "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783747/leatherboard-ranking_gcgmaa.svg"),
                      )
                    ],
                  ),
                ),
              ),
              AppSpace.vertical24,
              Divider(
                height: 1.h,
              ),
              AppSpace.vertical16,
              Expanded(
                child: SingleChildScrollView(
                  child: TableCalendar(
                    calendarFormat: CalendarFormat.month,
                    firstDay: DateTime.utc(1999, 01, 10),
                    lastDay: DateTime.utc(2030, 01, 10),
                    weekNumbersVisible: false,
                    focusedDay: _focusedDay,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: ((selectedDay, focusedDay) {
                      setState(
                        () {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;

                          showDialoge(context);
                        },
                      );
                    }),
                  ),
                ),
              ),
              AppSpace.vertical32,
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
        ),
      ),
    );
  }

  Future<void> showDialoge(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          insetPadding: EdgeInsets.symmetric(
            horizontal: 39.w,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          content: SizedBox(
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Day 18",
                      style: AppText.h5bold,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: 20,
                        color: AppColor.errorColor.shade600,
                      ),
                    )
                  ],
                ),
                AppSpace.vertical24,
                const Text(
                  AppStrings.howManyBottlesToday,
                  style: AppText.paragraph2medium,
                ),
                AppSpace.vertical12,
                CustomTextField(
                    textEditingController: _controller,
                    hintText: "Enter number of bottles",
                    textInputType: TextInputType.number),
                AppSpace.vertical12,
                CustomElevatedButtonWidget(
                  backgroundColor: AppColor.secondaryColor.shade500,
                  title: Text(
                    AppStrings.continuee,
                    style: AppText.h6regular
                        .copyWith(color: AppColor.grayColor.shade50),
                  ),
                  onTap: () {},
                  textColor: AppColor.grayColor.shade50,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
