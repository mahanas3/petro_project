import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_project/getx/getx_services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginPageController());

    List a = ['gbhnj', 'fgbhnjmk'];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(controller.homedatas![index].category.toString(),
                style: const TextStyle(color: Colors.white)),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 3,
        ),
        itemCount: controller.homedatas!.length,
      ),
    );
  }
}
