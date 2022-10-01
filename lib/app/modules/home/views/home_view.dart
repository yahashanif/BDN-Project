import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BDN Project Mobile Flutter",
              style: TextStyle(
                  fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Get.toNamed("/register");
                },
                child: Text("Register"),
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.green),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Get.toNamed("/list-user");
                },
                child: Text("List User"),
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.amber),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
