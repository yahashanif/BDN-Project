import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/umum_controller.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  late TextEditingController emailC;
  late TextEditingController passC;

  @override
  void onInit() {
    emailC = TextEditingController();
    passC = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    super.dispose();
  }

  Future<void> register(String email, String pass) async {
    var headers = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded"
    };
    String url = baseUrl + "register";
    Map<String, String> data = {'email': email, "password": pass};
    try {
      final response =
          await http.post(Uri.parse(url), headers: headers, body: data, encoding: convert.Encoding.getByName("utf-8"),);

      print(response.body);
      if (response.statusCode == 400) {
        Get.snackbar("Failed", response.body);
      } else {
        Get.snackbar("Success", "Sukses Register \n Email : ${data['email']}",
            backgroundColor: Colors.green, colorText: Colors.white);
      }
    } catch (e) {
      Get.snackbar("Failed", e.toString());
    }
  }
}
