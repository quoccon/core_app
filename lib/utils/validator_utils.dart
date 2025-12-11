class ValidatorUtils {
  static bool isValidEmail(String? email) {
    if (email == null || email.isEmpty) return false;
    const pattern =
        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
    return RegExp(pattern).hasMatch(email);
  }

  static bool isValidPhone(String? phone) {
    if (phone == null || phone.isEmpty) return false;
    final cleaned = phone.replaceAll(RegExp(r'\D'), '');
    return cleaned.length >= 9 && cleaned.length <= 11;
  }
}
