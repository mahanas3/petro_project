import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_project/screens/login.dart';

import 'home/bottomnavigation.dart';
import 'home/home1.dart';

void main(){
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/bottomnavigation', page: () => const BottomNavigation()),
      ],
    );
  }
}
