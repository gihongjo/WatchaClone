import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeMovie extends StatefulWidget {
  const HomeMovie({super.key});

  @override
  _HomeMovie createState() => _HomeMovie();
}

class _HomeMovie extends State<HomeMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              //박스오피스 순위
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 240,
                    color: const Color.fromARGB(255, 199, 199, 199),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "박스오피스 순위2",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "＞",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 116, 116, 116),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Text(
                              "12345678901234567890123456789012345678901234567890",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
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

class ContentsCard extends StatelessWidget {
  const ContentsCard({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 240,
              color: const Color.fromARGB(255, 199, 199, 199),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "박스오피스 순위1",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "＞",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 116, 116, 116),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
