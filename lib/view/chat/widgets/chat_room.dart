import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/widgets/chat_container.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          // color: AppColor.primaryColor.shade400,
          child: Row(
            children: [
              IconWithCircularBorder(
                color: AppColor.primaryColor.shade200,
                size: 50,
                child: const Icon(
                  Icons.add,
                  color: AppColor.grayColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              // create a textfield with border
              Expanded(
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.grayColor.shade100,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    //TOOD: don't know if there is a reusable textfield
                    child: Consumer<TabBarController>(
                      builder: (_, value, __) {
                        return TextField(
                          onChanged: (input) {
                            value.typing(input);
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            border: InputBorder.none,
                            hintText: 'Message',
                            hintStyle: AppText.h6medium.copyWith(
                              color: AppColor.grayColor.shade200,
                            ),
                          ),
                        );
                      },
                    )),
              ),
              const SizedBox(
                width: 5,
              ),
              IconWithCircularBorder(
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
