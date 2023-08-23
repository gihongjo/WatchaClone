//이 파일은 콘텐츠의 정보를 하드코딩으로 저장하고 사용하기 위한 파일이다.
//현재는 제목과 예상 별점만 을 required한다.

class ContentInfo {
  //일단 지금은 nullable로 설정한다.
  final String title;
  final double expactedRate;
  final double? realRate;
  final int? releasedYear;
  final String? country;
  final int? runTime;
  final double? cumulativeAudience;
  final double? bookingRate;
  final String? basicInformation;
  final String? originalTitle;

  ContentInfo(
      {required this.title,
      required this.expactedRate,
      this.realRate,
      this.releasedYear,
      this.country,
      this.runTime,
      this.cumulativeAudience,
      this.bookingRate,
      this.basicInformation,
      this.originalTitle});
}

class ListOfContets {
  List<ContentInfo> contentsList = [
    ContentInfo(title: "오펜하이머", expactedRate: 4.2),
    ContentInfo(title: '콘크리트 유토피아', expactedRate: 3.3),
    ContentInfo(title: '달짝지근해', expactedRate: 3.4),
    ContentInfo(title: '밀수', expactedRate: 2.8),
    ContentInfo(title: '엘리멘탈', expactedRate: 3.5),
    ContentInfo(title: "경이로운 소문2", expactedRate: 3.4),
    ContentInfo(title: '국민사형투표', expactedRate: 3.6),
    ContentInfo(title: '남남', expactedRate: 3.1),
    ContentInfo(title: '너의 이름은', expactedRate: 2.5),
    ContentInfo(title: '달작지근해', expactedRate: 3.0),
    ContentInfo(title: '드림', expactedRate: 1.3),
    ContentInfo(title: '메멘토', expactedRate: 4.6),
    ContentInfo(title: '스파이더맨', expactedRate: 4.2),
    ContentInfo(title: '아가씨', expactedRate: 3.9),
    ContentInfo(title: '시멘틱에러', expactedRate: 2.5),
    ContentInfo(title: '연인', expactedRate: 2.4),
    ContentInfo(title: '오토라는 남자', expactedRate: 3.7),
    ContentInfo(title: '트리플 엑스 리턴즈', expactedRate: 4.0),
    ContentInfo(title: '패러다이스', expactedRate: 3.8),
    ContentInfo(title: '하트 오브 스톤', expactedRate: 3.5),
    ContentInfo(title: '힙하게', expactedRate: 3.2),
  ];

  double? getExpectedRateByTitle(String title) {
    for (var content in contentsList) {
      if (content.title == title) {
        return content.expactedRate;
      }
    }
    return null; // 해당 title을 찾지 못한 경우
  }
}
