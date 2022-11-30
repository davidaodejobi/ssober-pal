// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:addictionsupportroom/view/chat/widgets/chat_card.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: chatCards.length,
        itemBuilder: (context, index) {
          return chatCards[index];
        },
      ),
    );
  }
}

List<ChatCard> chatCards = [
  const ChatCard(
    time: '12:00 PM',
    name: 'Labalaba',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    name: 'Tolotolo',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    name: 'Owl',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    message: 'My own is not even addiction anipe I am hungry',
  ),
  const ChatCard(
    time: '12:00 PM',
    name: 'Labalaba',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    name: 'Tolotolo',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    name: 'Owl',
    message: 'Hi, I am new here. I am looking for someone to talk to.',
  ),
  const ChatCard(
    time: '12:00 PM',
    message: 'My own is not even addiction anipe I am hungry',
  ),
];
