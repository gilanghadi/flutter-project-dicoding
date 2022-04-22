import 'package:flutter/material.dart';

class FourPages extends StatefulWidget {
  const FourPages({Key? key}) : super(key: key);

  @override
  State<FourPages> createState() => _FourPagesState();
}

class _FourPagesState extends State<FourPages> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('FourPages'),
      ),
    );
  }
}
