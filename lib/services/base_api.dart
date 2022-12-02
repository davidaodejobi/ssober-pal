import 'dart:developer';

import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/constant/constant.dart';

import 'package:dio/dio.dart';

connectBaseApi() {
  StorageService storageService = getIt<StorageService>();

  BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      receiveTimeout: 10000,
      responseType: ResponseType.plain);
  Dio dio = Dio(options);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? value =
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI1IiwiZXhwIjoxNjcwMTkyNjg0fQ.255Vle_fb_9xclZQSK98DsPTeas_W7jOpQmWpCMxvC8';
        //await storageService.readItem(key: token);
        log('value: $value');
        if (value != null) {
          options.headers['Authorization'] = "Bearer $value";
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        log('response: ${response.data}');
        log(response.data.toString());
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        return handler.next(e);
      },
    ),
  );

  return dio;
}
