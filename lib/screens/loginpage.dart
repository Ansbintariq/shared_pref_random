import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/controller/login_controller.dart';
import 'package:shared_prefrnce/helper/local_storage/local_storage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    getDetails();
    super.initState();
  }

  getDetails() async {
    controller.emailController.text = await LocalStorage().getEmail() ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 204, 164),
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
                controller.login();
              },
              child: Text("login")),
          Text("data"),
        ],
      ),
    );
  }
}
