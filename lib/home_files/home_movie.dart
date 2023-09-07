import 'package:flutter/material.dart';
import 'package:watcha/ads_card.dart';
import 'contentcard.dart';
import 'watchcollection.dart';

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
      '아가씨',
      '스파이더맨',
      '패러다이스',
      '하트 오브 스톤',
    ];

    //왓챠 Top 10 영화
    final List<String> imagepathForWatchaTop10movie = [
      //리스트 안에 파일 제목만 써넣으면 OK~
      '시멘틱에러',
      '너의 이름은',
      '오토라는 남자',
      '스파이더맨',
      '패러다이스',
      '하트 오브 스톤',
      '힙하게',
      '메멘토',
      '국민사형투표',
      '트리플 엑스 리턴즈',
    ];

    final List<String> imagepathForNetflixMovieRank = [
      //리스트 안에 파일 제목만 써넣으면 OK~
      '하트 오브 스톤',
      '드림',
      '패러다이스',
      '메멘토',
      '국민사형투표',
      '트리플 엑스 리턴즈',
      '경이로운 소문2',
      '시멘틱에러',
      '너의 이름은',
      '오토라는 남자',
    ];

    final List<String> WatchaLiveHot30Rank = [
      //리스트 안에 파일 제목만 써넣으면 OK~
      '하트 오브 스톤',
      '드림',
      '패러다이스',
      '메멘토',
      '국민사형투표',
      '트리플 엑스 리턴즈',
      '경이로운 소문2',
      '시멘틱에러',
      '너의 이름은',
      '오토라는 남자', '시멘틱에러',
      '너의 이름은',
      '오토라는 남자',
      '스파이더맨',
      '패러다이스',
      '하트 오브 스톤',
      '힙하게',
      '메멘토',
      '국민사형투표',
      '트리플 엑스 리턴즈',
      '오펜하이머',
      '콘크리트 유토피아',
      '경이로운 소문2',
      '달짝지근',
      '밀수',
      '스파이더맨',
      '아가씨',
      '스파이더맨',
      '패러다이스',
      '하트 오브 스톤',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContentsCard(
              title: '박스오피스 순위',
              imagePaths: imagepathForBoxofice,
            ),
            ContentsCard(
              title: '왓챠 Top 10 영화',
              imagePaths: imagepathForWatchaTop10movie,
            ),
            ContentsCard(
              title: '넷플릭스 영화 순위',
              imagePaths: imagepathForNetflixMovieRank,
            ),
            //광고 삽입
            AdsCard(
              imageAsset: 'images/일영아이콘(조잡.jpg',
              firstLine: '기홍 X 성연',
              secondLine: '동아리 가입 시 무료 소주 제공',
              nameOfCompany: '일영 동아리 🤣 - AD',
              buttonText: '바로가기',
            ),
            ContentsCard(
                title: '왓챠 실시간 급상승 Top 30', imagePaths: WatchaLiveHot30Rank),

            const WatchaCollection(
              title: '왓챠피디아 컬렉션',
              firstText: '베를린영화제 황금곰상 수상작',
              secondText: '베를린영화제 심사위원대상 수상작',
              thirdText: '베를린영화제 심사위원상 수상작',
            )
          ],
        ),
      ),
    );
  }
}
