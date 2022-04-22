import 'package:flutter/material.dart';

class carusel extends StatelessWidget {
  const carusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
              height: 160,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 330.0,
                    child: const caruselCard(
                      image: 'assets/img/slider_1.jpg',
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: const caruselCard(
                      image: 'assets/img/slider_2.jpg',
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: const caruselCard(
                      image: 'assets/img/slider_5.jpg',
                    ),
                  ),
                  Container(
                    width: 330.0,
                    child: const caruselCard(
                      image: 'assets/img/slider_4.jpg',
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class caruselCard extends StatelessWidget {
  const caruselCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: <Widget>[
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(48, 122, 101, 101),
                        Color.fromARGB(0, 37, 37, 37),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Hepbourn Lounge Chair',
                        style: TextStyle(
                          color: Color.fromARGB(255, 139, 139, 139),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text(
                        '30% OFF',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
