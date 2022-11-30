// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:addictionsupportroom/view/chat/widgets/button_textfield_with_action_buttons.dart';
import 'package:flutter/material.dart';

import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/view/chat/widgets/chat_container.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabBarController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChatContainer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          height: 50,
          child: BottomTextFieldWithActionButtons(
            sendRecordButton: IconWithCircularBorder(
              onTap: () {},
              bgColor: controller.hasTyped
                  ? AppColor.secondaryColor.shade600
                  : Colors.transparent,
              color: controller.hasTyped
                  ? Colors.transparent
                  : AppColor.primaryColor.shade200,
              size: 50,
              child: !controller.hasTyped
                  ? const Icon(
                      Icons.mic_none_outlined,
                      color: AppColor.grayColor,
                      size: 28,
                    )
                  : const Icon(
                      Icons.send,
                      color: AppColor.kWhiteColor,
                      size: 28,
                    ),
            ),
            textEditingController: TextEditingController(),
            onAddPress: () {},
            onTextChange: (input) {
              controller.typing(input);
            },
          ),
        ),
      ],
    );
  }
}
