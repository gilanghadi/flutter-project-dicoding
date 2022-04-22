// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';

// ignore: camel_case_types
class detailcard extends StatelessWidget {
  const detailcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/img/img-card3.jpg'),
                  SafeArea(
                    child: Container(
                      margin: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Hepbourn Lounge Chair',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 99, 99, 99),
                        fontFamily: 'Ubuntu'),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 15),
                  child: SizedBox(
                    width: size.width * 0.26,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          color: Colors.white),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '5.5',
                            style: TextStyle(
                                fontFamily: 'Questrial', fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'This comfortable chair is traditionally manufactured in a beech wood frame and can be upholstered in a variety of different fabrics with optional button back detailing.',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Questrial'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    height: 82,
                    onPressed: () {},
                    child: const Text(
                      '\$640',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 2,
                  height: 82,
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 255, 57, 150),
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
