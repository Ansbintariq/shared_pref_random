import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrnce/screens/homepage.dart';
import 'package:shared_prefrnce/screens/loginpage.dart';

class LoginUser {
  dynamic? saveEmail;

  // saveUser(String email, String password) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();

  //   if (email == 'test.com' && password == "123456") {
  //     preferences.setBool("login", true);
  //     // if (email != null) {
  //     //   saveEmail = preferences.setString("email", email);
  //     // }
  //     Get.to(() => HomePage());
  //     print("ok email password");
  //   } else {
  //     print("worng email password");
  //     preferences.setBool("login", false);

  //     ///Get.to(() => LoginPage());
  //   }
  // }

  // logOut() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setBool("login", false);
  //   Get.to(() => LoginPage());
  // }

  // readSaveUser() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   //if value is null at first time will store false value
  //   bool saveStatus = preferences.getBool("login") ?? false;

  //   if (saveStatus == true) {
  //     Get.to(() => HomePage());
  //   } else {
  //     Get.to(() => LoginPage());
  //     saveEmail = preferences.getString("email");
  //   }
  // }
}
