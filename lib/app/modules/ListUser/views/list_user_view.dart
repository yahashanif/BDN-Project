import 'package:b_d_n_project/Item.dart';
import 'package:b_d_n_project/app/controllers/umum_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_user_controller.dart';

class ListUserView extends GetView<ListUserController> {
  @override
  Widget build(BuildContext context) {
    controller.getUsers();
    // umumC.register("hanifauliasabri@gmail.com", "12345678");
    return Scaffold(
        body: SafeArea(
          child: Center(
              child: Obx(() => controller.users.value.length > 0
            ? ListView(
                children: [
                  ...controller.users.value.map((e) => UserItem(e)).toList()
                ],
              )
            : CircularProgressIndicator()),
            ),
        ));
  }
}



