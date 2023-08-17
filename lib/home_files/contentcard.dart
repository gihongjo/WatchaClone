import 'package:flutter/material.dart';

class ContentsCard extends StatelessWidget {
  //콘텐츠 카드
  const ContentsCard({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "＞",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 116, 116, 116),
                ),
              ),
            ],
          ),
          Expanded(
              //텍스트 아래
              child: SingleChildScrollView(
            //오른쪽으로 넘기기
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 110,
                    color: Colors.blue,
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 85, 85, 85),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 138, 56, 56),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 56, 97, 138),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 76, 138, 56),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 135, 56, 138),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 138, 104, 56),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                  Container(
                    width: 110,
                    color: const Color.fromARGB(255, 97, 56, 138),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
