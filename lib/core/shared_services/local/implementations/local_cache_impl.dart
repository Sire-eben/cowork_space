import 'dart:convert';
import 'package:breej_hub_mobile/core/pref_keys/prefs_keys.dart';
import 'package:breej_hub_mobile/core/shared_services/local/services/local_cache.dart';
import 'package:breej_hub_mobile/core/shared_services/local/services/secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCacheImpl implements LocalCache {
  late SecureStorage storage;
  late SharedPreferences sharedPreferences;

  LocalCacheImpl({required this.storage, required this.sharedPreferences});

  @override
  Future<void> deleteToken() async {
    try {
      await storage.delete(PrefsKeys.token.key);
    } catch (e) {}
  }

  @override
  Object? getFromLocalCache(String key) {
    try {
      return sharedPreferences.get(key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> getToken() async {
    try {
      return (await storage.read(PrefsKeys.token.key))!;
    } catch (e) {
      return "";
    }
  }

  @override
  Future<void> removeFromLocalCache(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await storage.write(key: PrefsKeys.token.key, value: token);
    } catch (e) {}
  }

  @override
  Future<void> saveToLocalCache({required String key, required value}) async {
    if (value is String) {
      await sharedPreferences.setString(key, value);
    }
    if (value is bool) {
      await sharedPreferences.setBool(key, value);
    }
    if (value is int) {
      await sharedPreferences.setInt(key, value);
    }
    if (value is double) {
      await sharedPreferences.setDouble(key, value);
    }
    if (value is List<String>) {
      await sharedPreferences.setStringList(key, value);
    }
    if (value is Map) {
      await sharedPreferences.setString(key, json.encode(value));
    }
  }
}
