import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/screens/call_a_member_screen.dart';
import 'package:addictionsupportroom/view/chat/screens/profile_chat_screen.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';
import 'package:flutter/material.dart';

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
        const SizedBox(
          height: 10,
        ),
        for (var i = 0; i < 5; i++)
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (contex) =>
                                        const ProfileChatScreen()));
                          },
                          child: const CircleAvatar(
                            radius: 28,
                            backgroundColor: AppColor.secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Jargur', style: AppText.paragraph1bold),
                      ],
                    ),
                    Row(
                      children: [
                        IconWithCircularBorder(
                          color: AppColor.primaryColor.shade200,
                          size: 40,
                          child: const Icon(
                            Icons.mic_none_outlined,
                            color: AppColor.grayColor,
                            size: 28,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconWithCircularBorder(
                          color: AppColor.primaryColor.shade200,
                          size: 40,
                          child: const Icon(
                            Icons.chat_bubble_outline,
                            color: AppColor.grayColor,
                            size: 28,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (contex) =>
                                        const CallAMemeberScreen()));
                          },
                          child: IconWithCircularBorder(
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
          )
      ],
    );
  }
}
