import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_project/home/bottomnavigation.dart';
import '../getx/getx_services.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginPageController? loginPageController;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    loginPageController = Get.put(LoginPageController());
  }

  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 850,
        width: 850,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img.jpg'), fit: BoxFit.fill)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, left: 15),
              child: Text(
                'Welcome!!',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 26,
                    fontFamily: 'style',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 40,
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Please Login to contine',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 26,
                    )),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                'SignUp with ',
                style: TextStyle(
                    color: Colors.black87, fontSize: 20, fontFamily: 'style'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text(
                'News Now',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'style'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                validator: (value) {
                  if (RegExp(emailcontroller.text).hasMatch(value!)) {
                  } else if (value == null || value.isEmpty) {
                    return "field cannot be empty";
                  } else {
                    return "email is not correctly formatted";
                  }
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow)),
                    filled: true,
                    fillColor: Colors.yellow[670]?.withOpacity(0.2),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: 'Email/Username',
                    labelText: 'Email/Username')),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "field cannot be empty";
                  } else if (value.length < 8) {
                    return "must be at least 8 char";
                  } else {
                    return null;
                  }
                },
                controller: passwordcontroller,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow)),
                    filled: true,
                    fillColor: Colors.yellow[670]?.withOpacity(0.2),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: 'Password',
                    labelText: 'Password')),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () async {
                    String email = emailcontroller.text;
                    String password = passwordcontroller.text;
                    loginPageController?.login(context, email, password);
                    Get.offAll(() => const BottomNavigation());
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.yellow),
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<LoginPageController?>(
        'homePageController', loginPageController));
  }
}
