import 'package:flutter/material.dart';

class TherePages extends StatefulWidget {
  const TherePages({Key? key}) : super(key: key);

  @override
  State<TherePages> createState() => _TherePagesState();
}

class _TherePagesState extends State<TherePages> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('TherePages'),
      ),
    );
  }
}
