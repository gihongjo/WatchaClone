import 'package:flutter/material.dart';

class ContentsCard extends StatelessWidget {
  //콘텐츠 카드
  const ContentsCard({required this.title, required this.imagePaths, Key? key})
      : super(key: key);
  final String title;
  final List<String> imagePaths;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var imagePath in imagePaths)
                    Container(
                      color: Colors.blue,
                      width: 110,
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/contentsImage/$imagePath.jpg'),
                          Container(
                            child: Text(
                              imagePath,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
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

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Expanded(child: Column(children: []));
  }
}
