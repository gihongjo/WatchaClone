import 'package:flutter/material.dart';
import 'package:watcha/home_files/home_movie.dart';

class NaviHome extends StatefulWidget {
  const NaviHome({super.key});
  @override
  State<NaviHome> createState() => _NaviHomeState();
}

class _NaviHomeState extends State<NaviHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // 탭의 개수 설정
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0), // TabBar의 높이 설정
            child: Align(
              child: TabBar(
                isScrollable: true, //왼쪽 정렬을 위해
                tabAlignment: TabAlignment.start, //왼쪽 정렬
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(),
                labelColor: Colors.black,

                tabs: [
                  Tab(
                    child: Text(
                      "영화",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "TV",
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight:
                              FontWeight.bold), //다른 버튼과 크기를 맞추기 위해 사이즈는 27
                    ),
                  ),
                  Tab(
                    child: Text(
                      "책",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "웹툰",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(), //옆으로 스와이프 기능 끄기
          children: [
            Center(child: HomeMovie()),
            Center(child: Text('TV')),
            Center(child: Text('책')),
            Center(child: Text('웹툰')),
          ],
        ),
      ),
    );
  }
}
