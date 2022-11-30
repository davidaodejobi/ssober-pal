import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/progress_section/screens/screen_four.dart';
import 'package:flutter/material.dart';

class HistoryyWidget extends StatelessWidget {
  const HistoryyWidget(
      {Key? key, required this.month, required this.desc, this.daysLeft = ''})
      : super(key: key);
  final String month;
  final String desc;
  final String? daysLeft;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenFour(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColor.grayColor.shade300.withOpacity(0.8),
              blurRadius: 5,
              offset: const Offset(2, 2),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: month,
                    style: AppText.paragraph2regular
                        .copyWith(color: AppColor.grayColor.shade900),
                    children: [
                      TextSpan(
                        text: desc,
                        style: AppText.paragraph1regular
                            .copyWith(color: AppColor.grayColor.shade900),
                      )
                    ],
                  ),
                ),
                AppSpace.space12,
                const Icon(
                  Icons.arrow_downward,
                )
              ],
            ),
            Text(
              daysLeft!,
              style: AppText.paragraph1medium.copyWith(fontSize: 10),
            ),
            AppSpace.vertical16,
            Row(
              children: [
                Text(
                  "Took a bottle ",
                  style: AppText.text2regular
                      .copyWith(color: AppColor.errorColor.shade900),
                ),
                AppSpace.horizontal128,
                const Text("Did not take ", style: AppText.text2regular),
              ],
            ),
            AppSpace.vertical4,
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColor.errorColor.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 8,
                        backgroundColor: AppColor.errorColor.shade600,
                      ),
                      const Text(
                        "12 times",
                        style: AppText.text2regular,
                      )
                    ],
                  ),
                ),
                AppSpace.horizontal128,
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColor.successColor.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 8,
                        backgroundColor: AppColor.successColor.shade500,
                      ),
                      const Text(
                        "12 times",
                        style: AppText.text2regular,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
