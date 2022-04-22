import 'package:flutter/material.dart';
import 'package:withme/carousel_slider.dart';
import 'package:withme/tab_bar.dart';
import 'package:withme/cards_shop.dart';

// ignore: camel_case_types
class dashboards extends StatelessWidget {
  const dashboards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _opacityValue = 0.3;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: _opacityValue,
                        child: Image.asset(
                          'assets/img/dashimage.jpg',
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                    Icons.align_horizontal_left_rounded,
                                    color: Color.fromARGB(255, 99, 99, 99)),
                                onPressed: () {},
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search,
                                    color: Color.fromARGB(255, 99, 99, 99)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 80, left: 20),
                              child: Text(
                                'Find The',
                                style: TextStyle(
                                  fontSize: 27.0,
                                  fontFamily: 'Questrial',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 134, 134, 134),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 20),
                              child: Text(
                                'Best Furniture',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ubuntu',
                                    color: Color.fromARGB(255, 77, 76, 76)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(top: 165),
                        child: const carusel(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: Beranda(),
                  ),
                  const Cardshop(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
