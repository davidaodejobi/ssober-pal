import 'dart:convert';

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
}
