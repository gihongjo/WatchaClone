import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //url사용위함 https://pub.dev/packages/url_launcher

//광고 카드
class AdsCard extends StatelessWidget {
  AdsCard(
      {super.key,
      required this.imageAsset, //광고 이미지의 주소
      required this.firstLine,
      required this.secondLine,
      required this.nameOfCompany,
      required this.buttonText});
  final String imageAsset; //광고 이미지의 주소
  final String firstLine;
  final String secondLine;
  final String nameOfCompany;
  final String buttonText;
  final Uri x = Uri.parse('https://pub.dev/packages/url_launcher');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(
              imageAsset,
              height: 140,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstLine,
                        style: const TextStyle(fontSize: 17),
                      ),
                      Text(
                        secondLine,
                        style: const TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Color.fromARGB(255, 79, 79, 79)),
                      ),
                      Text(
                        nameOfCompany,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 21, 100)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
