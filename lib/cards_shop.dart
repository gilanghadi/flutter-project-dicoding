import 'package:flutter/material.dart';
import 'package:withme/detail_card.dart';

class Cardshop extends StatelessWidget {
  const Cardshop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const detailcard();
                  },
                ),
              );
            },
            child: const CardshopCard(
              image: 'assets/img/img-card.jpg',
              title: 'Wings Chair',
              price: 640,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const detailcard();
                  },
                ),
              );
            },
            child: const CardshopCard(
              image: 'assets/img/img-card2.jpg',
              title: 'Wings Chair',
              price: 640,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const detailcard();
                  },
                ),
              );
            },
            child: const CardshopCard(
              image: 'assets/img/img-card.jpg',
              title: 'Wings Chair',
              price: 640,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const detailcard();
                  },
                ),
              );
            },
            child: const CardshopCard(
              image: 'assets/img/img-card2.jpg',
              title: 'Wings Chair',
              price: 640,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const detailcard();
                  },
                ),
              );
            },
            child: const CardshopCard(
              image: 'assets/img/img-card.jpg',
              title: 'Wings Chair',
              price: 640,
            ),
          ),
        ],
      ),
    );
  }
}

class CardshopCard extends StatelessWidget {
  const CardshopCard({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String image, title;
  final int price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 15,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
            ),
            width: size.width * 0.45,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    image,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      width: size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "$title\n",
                                style: const TextStyle(
                                    fontSize: 17.0,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 200, 35),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 200, 35),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 200, 35),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 200, 35),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                '\$$price',
                                style: const TextStyle(
                                  fontSize: 17.0,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 57, 150),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
