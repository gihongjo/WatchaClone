import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contentcard.dart';

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
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const ContentsCard(title: '박스오피스 순위')),
                ),
              ],
            ),
            Row(
              //박스오피스 순위
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 240,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const ContentsCard(title: '왓챠 Top 10 영화')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
