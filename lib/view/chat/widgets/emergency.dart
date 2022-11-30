import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Emergency extends StatelessWidget {
  const Emergency({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          height: 82,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.kErrorColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'I AM ABOUT TO RELAPSE! HELP!!!',
            style: AppText.h5bold.copyWith(
              color: AppColor.kWhiteColor,
            ),
          ),
        ),
        AppSpace.vertical8,
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => context
                                      .goNamed('/main_screen/chat_profile'),
                                  child: const CircleAvatar(
                                    radius: 28,
                                    backgroundColor: AppColor.secondaryColor,
                                  ),
                                ),
                                AppSpace.horizontal8,
                                const Text(
                                  'Jargur',
                                  style: AppText.paragraph1bold,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconWithCircularBorder(
                                  onTap: () {},
                                  color: AppColor.primaryColor.shade200,
                                  size: 40,
                                  child: const Icon(
                                    Icons.mic_none_outlined,
                                    color: AppColor.grayColor,
                                    size: 28,
                                  ),
                                ),
                                AppSpace.horizontal8,
                                IconWithCircularBorder(
                                  onTap: () {},
                                  color: AppColor.primaryColor.shade200,
                                  size: 40,
                                  child: const Icon(
                                    Icons.chat_bubble_outline,
                                    color: AppColor.grayColor,
                                    size: 28,
                                  ),
                                ),
                                AppSpace.horizontal8,
                                GestureDetector(
                                  onTap: () => context
                                      .goNamed('/main_screen/call_a_member'),
                                  child: IconWithCircularBorder(
                                    onTap: () {},
                                    color: AppColor.primaryColor.shade200,
                                    size: 40,
                                    child: const Icon(
                                      Icons.phone_outlined,
                                      color: AppColor.grayColor,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColor.grayColor.shade100,
                        thickness: 1,
                      ),
                    ],
                  ),
              itemCount: 10),
        ),
      ],
    );
  }
}
