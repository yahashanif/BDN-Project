import 'dart:convert';

import 'package:get/get.dart';

import '../../../controllers/umum_controller.dart';
import '../../../data/models/users_model.dart';
import 'package:http/http.dart' as http;


class ListUserController extends GetxController {
  var users = <Users>[].obs;

  Future<RxList<Users>> getUsers() async {
    users.clear();
    var header = {
      "Accept": "application/json",
    };
    String url = baseUrl + "users";
    print(url);
    final response = await http.get(Uri.parse(url), headers: header);
    var data = jsonDecode(response.body);
    print(data);
    List dataList = data['data'] as List;
    RxList<Users> _user = dataList.map((e) => Users.fromJson(e)).toList().obs;
    _user.value.map((e) => users.add(e)).toList();
    print(_user[0].email);
    return _user;
  }
}
