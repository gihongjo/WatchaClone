import 'package:flutter/material.dart';
import 'package:watcha/navimywatcha.dart';
import 'package:watcha/navinews.dart';
import 'package:watcha/navirate.dart';
import 'package:watcha/navisearch.dart';
import 'package:watcha/navihome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int selectedNum = 0; //0=홈, 1 = 검색, 2 = 평가, 3 = 소식, 4 = 나의 왓챠
  final List<Widget> _screens = [
    const NaviHome(),
    const NaviSearch(),
    const NaviRate(),
    const NaviNews(),
    const NaviMyWatcha()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //에니메이션 스위처
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 100), // 전환 에니메이션의 지속 시간
        child: _screens[selectedNum], //전환되는 메인 화면
      ),
      //바텀네비게이션바
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey, //선택되지 않은 아이템들의 색
        showUnselectedLabels: true, //선택하지 않은 lable들도 보여주기
        type: BottomNavigationBarType.fixed, //바텀네비게이션 에니메이션 disable
        currentIndex: selectedNum, //중요, 현재 선택된 인덱스를 받아오기 위함이다.

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "평가",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "소식",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "나의 왓챠",
          ),
        ],
        onTap: (int newIndex) {
          setState(
            () {
              selectedNum = newIndex; // 선택시 selectedNum을 갱신
            },
          );
        },
      ),
    );
  }
}
