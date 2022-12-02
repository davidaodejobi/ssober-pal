import 'package:addictionsupportroom/model/note_model.dart';
import 'package:addictionsupportroom/model/user_model.dart';
import 'package:addictionsupportroom/util/constant/api_const.dart';
import 'package:dio/dio.dart';

class ChatServices {
  Future<List<User>> fetchEmergencies() async {
    List<User> result = [];

    var dio = Dio();
    try {
      final response = await dio.get('$baseurl/api/community/emergencies');
      if (response.statusCode == 200) {
        for (var element in response.data) {
          result.add(
            User.fromJson(element),
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
