import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.secondaryColor.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: '57',
                      style: AppText.h2medium
                          .copyWith(color: AppColor.primaryColor.shade700),
                      children: [
                    TextSpan(
                        text: 'Total Clean Days',
                        style: AppText.h6medium
                            .copyWith(color: AppColor.primaryColor.shade700))
                  ])),
              const Icon(
                Icons.emoji_events,
                size: 60,
              )
            ],
          ),
          AppSpace.space12,
          Text(
            'Your Streak Goal',
            style: AppText.paragraph1medium
                .copyWith(color: AppColor.primaryColor.shade700),
          ),
          AppSpace.space8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Progress: 57 / 90 Clean Days',
                style: AppText.text2regular
                    .copyWith(color: AppColor.primaryColor.shade700),
              ),
              Text(
                '67%',
                style: AppText.text2regular
                    .copyWith(color: AppColor.primaryColor.shade700),
              )
            ],
          ),
          AppSpace.space12,
          SizedBox(
            height: 12,
            child: Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: LinearProgressIndicator(
                      backgroundColor: AppColor.primaryColor.shade200,
                      color: AppColor.kPrimaryColor,
                      value: 0.67,
                      minHeight: 6,
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.67 - 32,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                        color: AppColor.kPrimaryColor, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
