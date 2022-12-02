import 'dart:async';
import 'dart:developer';

import 'package:addictionsupportroom/model/chat_model.dart';
import 'package:addictionsupportroom/services/chat_services.dart';
import 'package:flutter/cupertino.dart';

class ChatController {
  late StreamController<List<ChatModel>> chatsController;
  final chatServices = ChatServices();

  get stream => chatsController.stream;

  initState(recieverId) {
    chatsController = StreamController();

    // Get all Messages from the DB
    update(recieverId);
  }

  void update(recieverId) {
    chatServices
        .getAllMessages(recieverId)
        .then((value) => chatsController.add(value));
  }

  void dispose() {
    chatsController.close();
  }

  Future<bool> sendMessage(ChatModel message) async {
    // refresh list
    final sucessful = await chatServices.sendMessage(message);
    if (sucessful) update(int.tryParse(message.receiver!));

    return sucessful;
  }
}
