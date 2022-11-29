// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:addictionsupportroom/view/chat/widgets/chat_room.dart';
import 'package:addictionsupportroom/view/chat/widgets/emergency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/view/chat/widgets/tab_bar_card.dart';

import '../widgets/chats.dart';

class Chat extends StatelessWidget {
  const Chat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TabBarController>(context);
    return Column(
      children: [
        Container(
          height: 52,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.grayColor.shade400,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              TabBarCard(
                title: 'Chatroom',
                onTap: () {
                  controller.changeTab(Tabs.chatroom);
                },
                textColor: controller.currentTab == Tabs.chatroom
                    ? AppColor.kWhiteColor
                    : AppColor.grayColor.shade900,
                cardColor: controller.currentTab == Tabs.chatroom
                    ? AppColor.secondaryColor.shade700
                    : Colors.transparent,
              ),
              TabBarCard(
                title: 'Emergency',
                onTap: () {
                  controller.changeTab(Tabs.emergency);
                },
                textColor: controller.currentTab == Tabs.emergency
                    ? AppColor.kWhiteColor
                    : AppColor.grayColor.shade900,
                cardColor: controller.currentTab == Tabs.emergency
                    ? AppColor.secondaryColor.shade700
                    : Colors.transparent,
              ),
              TabBarCard(
                title: 'Chats',
                onTap: () {
                  controller.changeTab(Tabs.chats);
                },
                textColor: controller.currentTab == Tabs.chats
                    ? AppColor.kWhiteColor
                    : AppColor.grayColor.shade900,
                cardColor: controller.currentTab == Tabs.chats
                    ? AppColor.secondaryColor.shade700
                    : Colors.transparent,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        // const Expanded(child: SizedBox()),
        if (controller.currentTab == Tabs.chatroom)
          ChatRoom(controller: controller),
        if (controller.currentTab == Tabs.emergency) const Emergency(),
        if (controller.currentTab == Tabs.chats) const Chats(),
      ],
    );
  }
}
