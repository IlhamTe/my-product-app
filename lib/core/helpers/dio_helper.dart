import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioHelper {
  static Dio? dio;

  static void initialDio(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 40),
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );
  }

  static String generalException(DioException e) {
    String message = 'Failed to process your request';

    if (e.response != null) {
      log('DioError response status: ${e.response!.statusCode}');
      log('DioError response data: ${e.response!.data}');
      log('DioError response headers: ${e.response!.headers}');
      if (e.response!.data != null) {
        if (e.response!.data is Map) {
          message = e.response!.data['message'] ?? 'Something went wrong';
        } else if (e.response!.data is String) {
          message = e.response!.data;
        }
      }
    } else {
      log('DioError: ${e.message}');
      message = e.message ?? 'Failed';
    }
    return message;
  }

  /// Not used yet
  // static setDioTokenHeader(String? token) {
  //   dio!.options.headers = {HttpHeaders.authorizationHeader: 'Bearer $token'};
  //   log('API KEY : $token');
  // }
}
