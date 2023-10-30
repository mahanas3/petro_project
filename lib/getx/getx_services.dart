import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_project/api_services/api_functions.dart';
import 'package:petro_project/home/bottomnavigation.dart';
import 'package:petro_project/model/homemodel.dart';
import '../model/user.dart';

class LoginPageController extends GetxController {
  var isLoggedIn = false.obs;

  List<Homemodel>? homedatas;

  void login(BuildContext context, String email, String password) async {
    try {
      User user = await Api().postLogin(email);
      if (user.userName!.isNotEmpty) {
        isLoggedIn(true);
        Get.offAll(() => const BottomNavigation());
      } else {
        Get.snackbar('Login Failed', 'Invalid credentials');
      }
    } catch (e) {
      print(e);
    }
  }

  void homeData() async {
    homedatas = await Api().getHome();
  }
}
