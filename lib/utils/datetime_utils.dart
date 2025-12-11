import 'package:intl/intl.dart';

class DateTimeUtils {
  static String format(
      DateTime date, {
        String pattern = 'dd/MM/yyyy',
      }) {
    return DateFormat(pattern).format(date);
  }

  static DateTime? tryParse(
      String input, {
        String pattern = 'dd/MM/yyyy',
      }) {
    try {
      final formatter = DateFormat(pattern);
      return formatter.parse(input);
    } catch (_) {
      return null;
    }
  }
}
