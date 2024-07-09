import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  //// private constructor as i don't want to create an object of this class
  SharedPrefHelper._();

  //// Removes a value from SharedPrefrences with given [key].
  static removeData(String key) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  //// Removes all keys and values in the SharedPrefrences
  static clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  //// Saves a [value] with a [key] in the SharedPrefrences
  static setData(String key, dynamic value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint(
        'SharedPrefHelper : data with key : $key and value : $value has been set');
    switch (value.runtimeType) {
      case String:
        await sharedPreferences.setString(key, value);
        break;
      case int:
        await sharedPreferences.setInt(key, value);
        break;
      case double:
        await sharedPreferences.setDouble(key, value);
        break;
      case bool:
        await sharedPreferences.setBool(key, value);
        break;
      default:
        return null;
    }
  }

  //// Gets a bool value from shared preferences with given [key].
  static getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  /// Gets a double value from shared preferences with given [key].
  static getDouble(String key) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0.0;
  }

  /// Gets an int value from shared preferences with given [key].
  static getInt(String key) async {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  /// Gets a string value from shared preferences with given [key].
  static getString(String key) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }

  /// Save a secure string with given [key] and [value]
  static setSecureString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
        "FlutterSecureStorage : setSecureString with key : $key and value : $value");
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Get a secure string with given [key]
  static Future<String?> getSecureString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint("FlutterSecureStorage : getSecureString with key : $key");
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  /// Remove all secure keys and values in the FlutterSecureStorage
  static clearAllSecureData() async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage : all data has been cleared');
    await flutterSecureStorage.deleteAll();
  }
}
