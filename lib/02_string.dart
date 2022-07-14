void main() {
  String name = '정수 확인';

  print(name);

  String name2 = '철수';
  String sentence = '는 학교간다.';

  print(name2 + sentence);

  print('$name2$sentence');

  int count = 100;
  String sentence2 = '오늘의 회사람은 총 $count명이다.'; // 백틱문자열 처럼 사용 가능
  print(sentence2);
}
