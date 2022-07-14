void main() {
  // Map : JS에서의 객체 설정과 같다. key, value로 이루어짐
  // 사용 방법은 객체 사용과 같다!
  Map aaa = {
    'apple': '사과',
    '재형': '킹왕짱',
  };
  print(aaa);

  print(aaa[0]); // null
  print(aaa['apple']); // 사과
  print(aaa['킹왕짱']); // null

  var bbb = {
    'apple': '사과',
    '재형': '킹왕짱',
  };
  print(bbb);

  print(bbb[0]); // null
  print(bbb['apple']); // 사과
  print(bbb['킹왕짱']); // null

  Map ccc = {};
  print(ccc);

  ccc.addAll({'아무거나': '손아파', '출력': '아무거나 출력'}); // addAll을 사용 하여 추가 가능
  print(ccc);

  ccc.remove('아무거나');
  print(ccc);

  ccc['출력'] = '재밌는거 출력할게'; // value 값 변경
  print(ccc);

  Map marvel = {};

  Map dc = new Map();

  Map disney = new Map.from({'자동차': '좋은거', '맛있는거': '맛있어?'});

  print(marvel);
  print(dc);
  print(disney);

  print(disney.keys.toList()); // keys는 Map의 Key값만 List화 하라는 것을 의미 // [자동차, 맛있는거]
  print(disney.values.toList()); // value만 List화 // [좋은거, 맛있어?]

  // List화 하고 나면 그뒤부터는 List처럼 사용 가능!

  Map<String, int> price = {
    // 타입지정이 가능하다! 왠만하면 하자!
    'mouse': 4000,
    'Macbook': 12000000000,
  };
  print(price);
}

// Map에서 중요한 것은 Key는 절대적으로 유니크 해야 한다. => key값은 변경할수 없다는 거지! 그리고, List처럼 추가 되는게 아니라 변경 되는거! 반드시 1개만 존재할 수 밖에 없다!
