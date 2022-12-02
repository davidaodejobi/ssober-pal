import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/model/user_model.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/widgets/button_textfield_with_action_buttons.dart';
import 'package:addictionsupportroom/view/chat/widgets/chat_card.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IndivdualChat extends StatefulWidget {
  const IndivdualChat({Key? key, required this.receiver}) : super(key: key);

  final UserModel receiver;

  @override
  IndivdualChatState createState() => IndivdualChatState();
}

class IndivdualChatState extends State<IndivdualChat> {
  @override
  Widget build(BuildContext context) {
    final receiver = widget.receiver;

    List<ChatCard> chats = [
      const ChatCard(
        name: '',
        message:
            'Hey man, I know how difficult this can be and trust me I’ve been there, but i want you to know that ending this addiction can only be a plus to your life. I’m a living witness to this and i also want this to be your story. Stay strong man and don’t ever give in to that voice. Soberpal community loves you. Drop me heart when you get this. Cheers',
        time: '09:35 PM',
        isIndividual: true,
      ),
      const ChatCard(
        name: 'Jay',
        message:
            'Thank you so much, your message really encoraged me and I did not give in to my cravings, I hope to keep this energy next time. Cheers.',
        time: '09:35 PM',
        isIndividual: true,
      ),
      const ChatCard(
        name: '',
        message: 'Glad I could help',
        time: '09:35 PM',
        isIndividual: true,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 16,
            ),
            AppSpace.horizontal8,
            Text(receiver.username ?? '', style: AppText.h5bold),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return chats[index];
                },
              ),
            ),
            Consumer<TabBarController>(
              builder: (_, controller, __) {
                return BottomTextFieldWithActionButtons(
                  sendRecordButton: IconWithCircularBorder(
                    onTap: () {},
                    bgColor: controller.individualHasTyped
                        ? AppColor.secondaryColor.shade600
                        : Colors.transparent,
                    color: controller.hasTyped
                        ? Colors.transparent
                        : AppColor.primaryColor.shade200,
                    size: 50,
                    child: !controller.individualHasTyped
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
                    controller.individualTyping(input);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
