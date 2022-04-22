import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 7),
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'All',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Chair',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Beds',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sofa',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Carpet',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cupboards',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Ubuntu',
                        color: Color.fromARGB(255, 77, 76, 76),
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
