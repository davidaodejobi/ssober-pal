import 'package:addictionsupportroom/controller/chat/chat_controller.dart';
import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/model/chat_model.dart';
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
  final chatController = ChatController();
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    chatController.initState(widget.receiver.id);
    // Initialize contoller
    // Fetch previous messages
    // chatController.stream.listen((value) {
    //   // Populate messages
    //   print('Value from controller: $value');
    // });
  }

  @override
  void dispose() {
    super.dispose();
    chatController.dispose();
  }

  sendMessage() async {
    final newMessage = textEditingController.text;
    final successful = await chatController.sendMessage(
      ChatModel(
        content: newMessage,
        receiver: widget.receiver.id.toString(),
      ),
    );
    // Clear message in box
    if (successful) textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final receiver = widget.receiver;

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
              child: StreamBuilder<List<ChatModel>>(
                  stream: chatController.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      Column(
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text('Error: ${snapshot.error}'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Stack trace: ${snapshot.stackTrace}'),
                          ),
                        ],
                      );
                    } else {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                        // children = const <Widget>[
                        //   Icon(
                        //     Icons.info,
                        //     color: Colors.blue,
                        //     size: 60,
                        //   ),
                        //   Padding(
                        //     padding: EdgeInsets.only(top: 16),
                        //     child: Text('Select a lot'),
                        //   ),
                        // ];
                        case ConnectionState.waiting:
                          return const Center(
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(),
                            ),
                          );
                        case ConnectionState.active:
                          final chats = snapshot.data!;

                          return ListView.builder(
                            itemCount: chats.length,
                            itemBuilder: (context, index) {
                              final chat = chats[index];
                              return ChatCard(
                                message: chat.content,
                                time: chat.creationDate.toString(),
                                fromUser: false,
                              );
                            },
                          );
                        case ConnectionState.done:
                          return Column(
                            children: [
                              const Icon(
                                Icons.info,
                                color: Colors.blue,
                                size: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text('\$${snapshot.data} (closed)'),
                              ),
                            ],
                          );
                      }
                    }

                    return const Center(
                        child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Text('done'), //CircularProgressIndicator(),
                    ));
                  }),
            ),
            Consumer<TabBarController>(
              builder: (_, controller, __) {
                return BottomTextFieldWithActionButtons(
                  sendRecordButton: IconWithCircularBorder(
                    onTap: sendMessage,
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
                  textEditingController: textEditingController,
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
