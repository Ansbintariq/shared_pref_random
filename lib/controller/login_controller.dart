import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/repo/login_repo.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  saveUser(email, password) async {
    var userData = await LoginUser().saveUser(email, password);
    emailController.text = LoginUser().saveEmail ?? "";
    passwordController.clear();
  }

  readSaveUser() {
    LoginUser().readSaveUser();
  }

  logOut() {
    LoginUser().logOut(emailController.text);
  }
}
