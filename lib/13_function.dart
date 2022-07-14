void main() {
  List testList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List testList2 = [1, 2, 3, 4, 5, 6];
  int result = addList(testList); // 다른데서 함수를 만들고 끌어와서 main함수에서 실행
  int result2 = addList(testList2);
  print('aaa');
  print(result);
  print(result2);
}

addList(List a) {
  int total = 0;

  for (int num in a) {
    total += num;
  }
  return total;
}
// 중요한것은 리턴을 할때에도 타입 신경을 잘 써줘야 한다.!!
// => 내가 JS에서 쓰던 함수 쓰는 방법이랑 다를게 없다! 헷갈려하지마!

// 네임드 파라미터 쓰는 방법 더 공부해보자!