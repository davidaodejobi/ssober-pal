import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //here could just have a listview.builder
      child: Column(
        children: const [
          ChatCard(
            time: '12:00 PM',
            name: 'Labalaba',
            message: 'Hi, I am new here. I am looking for someone to talk to.',
          ),
          ChatCard(
            time: '12:00 PM',
            name: 'Tolotolo',
            message: 'Hi, I am new here. I am looking for someone to talk to.',
          ),
          ChatCard(
            time: '12:00 PM',
            message: 'Hi, I am new here. I am looking for someone to talk to.',
          ),
          ChatCard(
            time: '12:00 PM',
            name: 'Owl',
            message: 'Hi, I am new here. I am looking for someone to talk to.',
          ),
          ChatCard(
            time: '12:00 PM',
            message: 'My own is not even addiction anipe I am hungry',
          ),
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const ChatCard({
    Key? key,
    this.name = '',
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (name.isEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: name.isNotEmpty
                  ? AppColor.grayColor.shade50
                  : AppColor.secondaryColor.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(name.isNotEmpty ? 0 : 16),
                topRight: Radius.circular(name.isNotEmpty ? 16 : 0),
                bottomRight: const Radius.circular(16),
                bottomLeft: const Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (name.isNotEmpty)
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColor.secondaryColor.shade300,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(name, style: AppText.paragraph1bold),
                      ],
                    ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: AppText.paragraph1regular,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(),
                      Text(
                        time,
                        style: AppText.paragraph1regular.copyWith(
                          color: AppColor.grayColor.shade300,
                        ),
                      ),
                      if (name.isEmpty)
                        const SizedBox(
                          width: 5,
                        ),
                      if (name.isEmpty)
                        Icon(
                          Icons.done_all,
                          color: AppColor.secondaryColor.shade700,
                          size: 16,
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        if (name.isNotEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
      ],
    );
  }
}
