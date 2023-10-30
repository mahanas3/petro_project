import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home1.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List navigation = [
    const Home(),
    const Home(),
    const Home(),
  ];

  void onitemTapped(int num) {
    setState(() {
      index = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigation[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff242A32),
        currentIndex: index,
        onTap: onitemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Colors.white), label: 'Audit'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white), label: 'Profile'),
        ],
      ),
    );
  }
}
