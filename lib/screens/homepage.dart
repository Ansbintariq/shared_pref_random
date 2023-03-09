import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/controller/login_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text("home "),
            ElevatedButton(
                onPressed: () {
                  controller.logOut();
                },
                child: Text("logout"))
          ],
        ),
      ),
    );
  }
}
