void main() {
  int num = 10;
  // 문자열끼리의 합은 그대로 합해진다.
  print(num + 2);
  print(num - 2);
  print(num * 2);
  print(num / 2);
  print(num % 3);

  num++;
  print(num);
  num--;
  print(num);

  int? num2; // nullable 표기
  print(num2);

  int? num3; // nullable 표기
  num3 = 4;
  print(num3);

  // => 대부분 JS와 비슷

  int sucess = 1;
  int failure = 2;

  print(sucess <= failure);
  print(sucess >= failure);

  print(sucess == failure); // dart는 등호 '==' 두개만 사용
  print(sucess != failure);

  int? aaa = 1;

  print(aaa is int);
  print(aaa is String);
  print(aaa is bool);
  print(aaa is! Null); // is! 는 반대!

  var result = 12 > 10 && 1 < 0;
  print(result);
  result = 12 > 10 || 1 < 0;
  print(result);
}

// => Js와 별반 다를게 없다!