import 'package:flutter/material.dart';
import 'package:watcha/contents_rate.dart';

//박스오피스 순위 아래에서 평점까지
class ContentsCard extends StatelessWidget {
  //콘텐츠 카드
  const ContentsCard({required this.title, required this.imagePaths, Key? key})
      : super(key: key);
  final String title;
  final List<String> imagePaths;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
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
                      Cards(title: imagePath) //카드들을 imagePaths갯수만큼 만들어~!
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//각각의 컨텐츠카드
class Cards extends StatelessWidget {
  const Cards({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    ListOfContets listOfContents = ListOfContets();
    double? expectedRate = listOfContents.getExpectedRateByTitle(title);

    // TODO: implement build
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/contentsImage/$title.jpg'),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              const Text(
                '예상',
                style: TextStyle(fontSize: 13, color: Colors.red),
              ),
              const Icon(
                Icons.star,
                color: Colors.red,
                size: 12,
              ),
              Text(
                expectedRate.toString(),
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
