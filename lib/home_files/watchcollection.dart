import 'dart:math';

import 'package:flutter/material.dart';

//박스오피스 순위 아래에서 평점까지
class WatchaCollection extends StatelessWidget {
  //콘텐츠 카드
  const WatchaCollection(
      {super.key,
      required this.title,
      required this.firstText,
      required this.secondText,
      required this.thirdText});

  final String title;
  final String firstText;
  final String secondText;
  final String thirdText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    secondText,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    thirdText,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
