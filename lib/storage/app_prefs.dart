import 'package:shared_preferences/shared_preferences.dart';

import 'storage_keys.dart';

class AppPrefs {
  final SharedPreferences _prefs;

  AppPrefs(this._prefs);

  // Token
  String? get token => _prefs.getString(StorageKeys.token);

  Future<bool> setToken(String token) =>
      _prefs.setString(StorageKeys.token, token);

  Future<bool> clearToken() => _prefs.remove(StorageKeys.token);

  // Language
  String? get languageCode => _prefs.getString(StorageKeys.languageCode);

  Future<bool> setLanguageCode(String code) =>
      _prefs.setString(StorageKeys.languageCode, code);
}
