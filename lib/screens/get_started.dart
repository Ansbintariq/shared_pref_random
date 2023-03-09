import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_prefrnce/controller/login_controller.dart';

class Started extends StatefulWidget {
  Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("welcome"),
            ElevatedButton(
                onPressed: () {
                  controller.readSaveUser();
                },
                child: Text("go"))
          ],
        ),
      ),
    );
  }
}
