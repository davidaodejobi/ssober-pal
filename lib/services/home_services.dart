import 'dart:developer';

import 'package:addictionsupportroom/services/base_api.dart';
import 'package:dio/dio.dart';

class HomeService {
  Future<String> fetchEmotion({required String emotion}) async {
    try {
      String res = '';
      Response response = await connectBaseApi().post(
        '/home/emotions?emotion=$emotion',
      );
      if (response.statusCode == 200) {
        res = response.data;
      }
      return res;
    } on DioError catch (e) {
      log(e.response!.data.toString());
      return '';
    }
  }
}
