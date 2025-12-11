import 'package:dio/dio.dart';

import '../logger/app_logger.dart';
import 'interceptors/header_interceptors.dart';
import 'interceptors/log_interceptors.dart';


class DioFactory {
  Dio create({
    required String baseUrl,
    Interceptor? authInterceptor,
    Map<String, dynamic>? defaultHeaders,
  }) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      headers: defaultHeaders,
    );

    final dio = Dio(options);

    // Header interceptor
    dio.interceptors.add(HeaderInterceptor());

    // Auth interceptor nếu có
    if (authInterceptor != null) {
      dio.interceptors.add(authInterceptor);
    }

    // Log interceptor custom
    dio.interceptors.add(AppLogInterceptor(logger: AppLogger()));

    return dio;
  }
}
