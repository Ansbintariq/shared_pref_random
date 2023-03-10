import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_prefrnce/screens/get_started.dart';
import 'package:shared_prefrnce/screens/loginpage.dart';

import 'controller/login_controller.dart';

void main() async {
  Get.put(LoginController());
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void initState() {
    super.initState();
    if (dataCount.read("key") != null) {
      _count = dataCount.read("key");
    }
  }

  int _count = 0;
  final dataCount = GetStorage();
  @override
  Widget build(BuildContext context) {
    dataCount.writeIfNull("key", 0);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "${dataCount.read("key")}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                      dataCount.write("key", _count);
                    });
                  },
                  icon: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
