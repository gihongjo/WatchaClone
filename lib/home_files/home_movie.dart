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
    final List<String> imagepathForBoxofice = [
      //리스트 안에 파일 제목만 써넣으면 OK~
      '오펜하이머',
      '콘크리트 유토피아',
      '경이로운 소문2',
      '달짝지근',
      '밀수',
      '스파이더맨',
      '아가씨'
    ];

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
                      child: ContentsCard(
                        title: '박스오피스 순위1',
                        imagePaths: imagepathForBoxofice,
                      )),
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
                      child: ContentsCard(
                        title: '왓챠 Top 10 영화',
                        imagePaths: imagepathForBoxofice,
                      )),
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
                      child: ContentsCard(
                        title: '넷플릭스 영화 순위',
                        imagePaths: imagepathForBoxofice,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
