void main() {
  // 선언 후, 할당한 값을 변경하지 못하게 하고 싶을때
  final String name = '재형';
  print(name);

  // name = '찰리'; // X

  const String name1 = '캡틴 아메리카';
  print(name1);

  // name1 = '스파이더맨'; // X

  // => 둘다 값을 변경 불가, const : 컴파일타임에 저장, final : 런타임에 저장

  // 보통은 final을 많이 쓴다.

  final DateTime now = DateTime.now();

  print(now);

  Future.delayed(Duration(milliseconds: 1000), () {
    final DateTime now2 = DateTime.now();
    print(now2);
  });

  const DateTime now3 = DateTime.now();

  print(now3);

  Future.delayed(Duration(microseconds: 1000), () {
    const DateTime now4 = DateTime.now();
    print(now4);
  }); // => 컴파일시엔 DateTime.now()를 컴퓨터가 알수가 없다.
}
