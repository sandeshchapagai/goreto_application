import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final SecureStorage _instance = SecureStorage._internal();
  static const _tokenKey = "token";
  static const _userid = "userId";
  static const _isLoggedIn = "isLoggedIn";
  static const _themeModes = "themeModes";
  static const _sessionId = "sessionId";
  static const _appVersion = "appVersion";
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  factory SecureStorage() => _instance;
  SecureStorage._internal();

  Future get getAppVersion async => await _storage.read(key: _appVersion);
  Future get getLoggedInStatus async => await _storage.read(key: _isLoggedIn);
  Future get getSessionId async => await _storage.read(key: _sessionId);
  Future get getToken async => await _storage.read(key: _tokenKey);
  Future get getUserId async => await _storage.read(key: _userid);
  Future get getThemeMode async => await _storage.read(key: _themeModes);

  Future<void> deleteActiveRestaurant() async {
    await Future.wait([
      _storage.delete(key: _sessionId),
    ]);
  }

  Future<void> deleteCredentials() async {
    await Future.wait([
      _storage.delete(key: _tokenKey),
      _storage.delete(key: _userid),
      _storage.delete(key: _isLoggedIn),
      _storage.delete(key: _sessionId),
      _storage.delete(key: _appVersion),
    ]);
  }

  Future<void> saveAppVersion({required String appVersion}) async =>
      await _storage.write(key: _appVersion, value: appVersion);

  Future<void> saveSessionId({required String? sessionId}) async =>
      await _storage.write(key: _sessionId, value: sessionId);
  Future<void> saveThemeMode({required ThemeMode themeMode}) async =>
      await _storage.write(key: _themeModes, value: themeMode.name);
  Future<void> saveToken({required String? token}) async =>
      await _storage.write(key: _tokenKey, value: token);
  Future<void> saveUserId({required String userId}) async =>
      await _storage.write(key: _userid, value: userId);
}
