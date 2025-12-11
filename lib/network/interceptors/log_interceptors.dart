import 'package:dio/dio.dart';

import '../../logger/app_logger.dart';

class AppLogInterceptor extends Interceptor {
  final AppLogger logger;

  AppLogInterceptor({required this.logger});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('➡️ REQUEST: [${options.method}] ${options.uri}');
    logger.d('Headers: ${options.headers}');
    logger.d('Data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('✅ RESPONSE: [${response.statusCode}] ${response.requestOptions.uri}');
    logger.d('Data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e('⛔ ERROR: [${err.response?.statusCode}] ${err.requestOptions.uri}');
    logger.e('Message: ${err.message}');
    logger.e('Data: ${err.response?.data}');
    super.onError(err, handler);
  }
}
