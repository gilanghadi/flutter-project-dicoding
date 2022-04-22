import 'package:flutter/material.dart';
import 'package:withme/dashboards.dart';
import 'package:withme/pages/favorit_pages.dart';
import 'package:withme/pages/there_pages.dart';
import 'package:withme/pages/four_pages.dart';

// ignore: camel_case_types
class navBottom extends StatefulWidget {
  const navBottom({Key? key}) : super(key: key);

  @override
  State<navBottom> createState() => _navBottomState();
}

// ignore: camel_case_types
class _navBottomState extends State<navBottom> {
  int currentIndex = 0;

  final List<Widget> body = [
    const dashboards(),
    const favoritePages(),
    const TherePages(),
    const FourPages(),
  ];
  // body[currentIndex],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 57, 150),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'home',
            activeIcon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 57, 150),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'favorit',
            activeIcon: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 255, 57, 150),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_outlined,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'cart',
            activeIcon: Icon(
              Icons.shop,
              color: Color.fromARGB(255, 255, 57, 150),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color.fromARGB(255, 99, 99, 99),
            ),
            label: 'profil',
            activeIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 57, 150),
            ),
          ),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
