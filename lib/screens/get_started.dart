import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/controller/login_controller.dart';
import 'package:shared_prefrnce/helper/local_storage/local_storage.dart';
import 'package:shared_prefrnce/screens/homepage.dart';

import 'loginpage.dart';

class Started extends StatefulWidget {
  Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("welcome"),
            ElevatedButton(
                onPressed: () async {
                  bool check = await LocalStorage().getUserStatus() ?? false;
                  Get.to(() => check ? HomePage() : LoginPage());
                },
                child: Text("go"))
          ],
        ),
      ),
    );
  }
}
