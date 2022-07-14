void main() {
  var name = '재형'; // var는 내가 공부했던 js처럼 변수 선언 하면 됨.
  print(name);

  var num = 100;
  print(num);

  name = '찰리';
  print(name);

  num = 300;
  print(num);

  dynamic name1 = 'charlie'; // dynamic은 처음 할당된 타입의 관계없이 변경 가능!
  print(name1);

  name1 = 150;
  print(name1);

  var name2;
  name2 = '이거는 무엇이니';
  print(name2);

  name2 = 1000;
  print(name2);
}

// 위처럼 편한 변수 선언이 있지만, 유지 보수나 갑자기 변수값의 타입이 변경될때 오류가 발생 할 수 있으므로, 명확한 선언자 및 타입을 지정해주는게 좋음.