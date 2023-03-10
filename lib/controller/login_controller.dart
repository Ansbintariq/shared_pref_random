import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrnce/helper/local_storage/local_storage.dart';
import 'package:shared_prefrnce/screens/get_started.dart';
import '../screens/homepage.dart';
// import '../screens/loginpage.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Future<void> initial() {}
  // Future<void> initial() {}

  Future<void> login() async {
    if (emailController.text == 'user' && passwordController.text == "123456") {
      await LocalStorage().saveUserStatus(true);
      await LocalStorage().saveEmail(emailController.text);
      await LocalStorage().savePassword(passwordController.text);
      Get.to(() => HomePage());
      print("ok email password");
    } else {
      print("logins not correct");
    }
    emailController.clear();
    passwordController.clear();
  }

  logOut() async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    await LocalStorage().saveUserStatus(false);
    // preferences.clear();
    Get.to(() => Started());
  }
}
