import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrnce/screens/loginpage.dart';

import '../../screens/homepage.dart';

class LocalStorage {
  static const String savedEmail = "email";
  static const String password = "password";
  static const String isLogin = "isLogin";

  Future<void> saveEmail(String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(savedEmail, value);
  }

  Future<String?> getEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(savedEmail);
  }

  Future<void> savePassword(String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(password, value);
  }

  Future<String?> getPassword() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(password);
  }

  Future<void> saveUserStatus(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(isLogin, value);
  }

  Future<bool?> getUserStatus() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isLogin);
  }
}
