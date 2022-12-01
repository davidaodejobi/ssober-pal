import 'dart:developer';

import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/model/user_res_model.dart';
import 'package:addictionsupportroom/services/base_api.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/constant/keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

StorageService storageService = getIt<StorageService>();
HiveStorageService hiveStorageService = getIt<HiveStorageService>();

class AuthService with ChangeNotifier {
  signIn(
    String userName,
    String avatar,
  ) async {
    try {
      UserRes userRes = UserRes();
      Response response = await connectBaseApi().post(
        '/auth/signup',
        data: {
          'username': userName,
          'avatar': avatar,
        },
      );
      if (response.statusCode == 200) {
        storeToken(response.data);
        userRes = userResFromJson(response.data);
        log('userRes: $userRes');
      }
      return userRes;
    } on DioError catch (e) {
      log(e.response!.data.toString());
      return;
    }
  }

  storeToken(response) {
    UserRes res = userResFromJson(response);
    log('res: ${res.accessToken}');

    storageService.storeItem(key: token, value: res.accessToken!.token!);
    hiveStorageService.box.put(nickName, res.username);
    // storageService.storeItem(key: id, value: res.id.toString(),);
    // String myToken = res.accessToken!.token!;

    // storageService.storeItem(key: token, value: myToken);
  }
}
