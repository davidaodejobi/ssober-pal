import 'package:addictionsupportroom/view/chat/screens/profile_chat_screen.dart';
import 'package:flutter/material.dart';

import '../../../util/color.dart';
import '../../../util/text.dart';

class Chats extends StatelessWidget {
  const Chats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 7; i++)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => const ProfileChatScreen()));
                },
                child: const CircleAvatar(
                  radius: 20,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Jargur',
                                    style: AppText.paragraph1bold),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                    'I’m on day and all I can say is I MISS IT. ',
                                    maxLines: 1,
                                    style: AppText.paragraph1bold.copyWith(
                                        color: AppColor.grayColor,
                                        overflow: TextOverflow.ellipsis)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('12:00 PM',
                                    style: AppText.text2regular.copyWith(
                                        color: AppColor.grayColor,
                                        overflow: TextOverflow.ellipsis)),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor:
                                      AppColor.secondaryColor.shade700,
                                  child: const FittedBox(
                                    child:
                                        Text('3', style: AppText.text2regular),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColor.grayColor.shade100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ],
    );
  }
}
