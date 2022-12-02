import 'dart:convert';

import 'package:addictionsupportroom/model/chat_model.dart';
import 'package:addictionsupportroom/model/user_model.dart';
import 'package:addictionsupportroom/util/constant/api_const.dart';
import 'package:dio/dio.dart';
import 'package:addictionsupportroom/services/base_api.dart';

class ChatServices {
  Future<List<UserModel>> fetchEmergencies() async {
    List<UserModel> result = [];

    try {
      final response = await connectBaseApi().get('/community/emergencies');
      if (response.statusCode == 200) {
        for (var element in json.decode(response.data)) {
          result.add(
            UserModel.fromJson(element),
          );
        }
        return result;
      }
    } catch (error) {
      throw error.toString();
    }
    return result;
  }

  Future<List<ChatModel>> getAllMessages(int receiverId) async {
    List<ChatModel> result = [];

    try {
      final response = await connectBaseApi().get(
        '/communication/conversation?receiver=$receiverId',
      );

      if (response.statusCode == 200) {
        for (var element in json.decode(response.data)['result']) {
          result.add(
            ChatModel.fromMap(element),
          );
        }
        return result;
      }
    } catch (error) {
      print(error.toString());
    }
    return result;
  }

  Future<bool> sendMessage(ChatModel message) async {
    // ignore: prefer_typing_uninitialized_variables
    //print(message.toJson());
    var response;

    try {
      response = await connectBaseApi().post(
        '/communication/message',
        data: message.toJson(),
      );
    } catch (error) {
      print(error.toString());
    }

    return response?.statusCode == 201;
  }
}
