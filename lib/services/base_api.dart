import 'dart:developer';

import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/constant/keys.dart';

import 'package:dio/dio.dart';

String baseUrl = "https://sober-pal.herokuapp.com/api";

connectBaseApi() {
  StorageService storageService = getIt<StorageService>();

  BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      responseType: ResponseType.plain);
  Dio dio = Dio(options);

  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    String? value = await storageService.readItem(key: token);
    log('value: $value');
    if (value != null) {
      options.headers['Authorization'] = "Bearer $value";
    }
    return handler.next(options);
  }, onResponse: (response, handler) {
    log('response: ${response.data}');
    log(response.data.toString());
    return handler.next(response);
  }, onError: (DioError e, handler) {
    return handler.next(e);
  }));

  return dio;
}
