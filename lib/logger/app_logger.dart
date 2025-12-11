import 'package:flutter/foundation.dart';

class AppLogger {
  void d(Object? message) {
    if (kDebugMode) {
      debugPrint('DEBUG: $message');
    }
  }

  void e(Object? message) {
    if (kDebugMode) {
      debugPrint('ERROR: $message');
    }
  }

  void i(Object? message) {
    if (kDebugMode) {
      debugPrint('INFO: $message');
    }
  }
}
