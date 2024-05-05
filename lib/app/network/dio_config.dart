import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  DioConfig(BuildContext? context) {
    _dio.interceptors.add(
      InterceptorsWrapper(
          onRequest: (options, handler) {
            options.queryParameters
                .removeWhere((k, v) => v == null || v.toString().isEmpty);
            return handler.next(options);
          },
          onError: (DioException e, handler) async {

          },
          onResponse: (response, handler) => handler.next(response)),
    );
    _dio.interceptors.add(PrettyDioLogger(requestHeader: true));
  }

  Dio get dio => _dio;
}
