import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final controller = Get.put(LoginController());

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller.emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your  password'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.saveUser(controller.emailController.text,
                    controller.passwordController.text);
              },
              child: Text("login"))
        ],
      ),
    );
  }
}
