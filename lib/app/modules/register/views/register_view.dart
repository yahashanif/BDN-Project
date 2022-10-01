import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Register User",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: controller.emailC,
              decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.passC,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "***********",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  controller.register(controller.emailC.text, controller.passC.text);
                },
                child: Text("Register"),
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.green),
              ),
            )
          ],
        ),
      )),
    );
  }
}
