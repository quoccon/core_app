import 'package:dio/dio.dart';

import '../../storage/app_prefs.dart';

class AuthInterceptor extends Interceptor {
  final AppPrefs prefs;

  AuthInterceptor(this.prefs);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = prefs.token;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
