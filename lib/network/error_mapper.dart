import 'package:dio/dio.dart';

import '../result/failure.dart';

class ErrorMapper {
  static Failure toFailure(dynamic error) {
    if (error is DioException) {
      final statusCode = error.response?.statusCode;
      final data = error.response?.data;

      String message = 'Có lỗi xảy ra';
      if (data is Map && data['message'] != null) {
        message = data['message'].toString();
      } else if (error.message != null) {
        message = error.message!;
      }

      return Failure(message: message, code: statusCode);
    }

    return Failure(message: error.toString());
  }
}
