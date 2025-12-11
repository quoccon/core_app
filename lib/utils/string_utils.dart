class StringUtils {
  static bool isNullOrEmpty(String? value) =>
      value == null || value.trim().isEmpty;

  static String trimToEmpty(String? value) => value?.trim() ?? '';

  static String capitalize(String value) {
    if (value.isEmpty) return value;
    return value[0].toUpperCase() + value.substring(1);
  }
}
