void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // 반복문도 JS와 별반 다를게 없다. 단, type지정만 조금 다름. var도 사용 가능

  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8]; // 변수 설정
  // int number = 0;
  // for (int i = 0; i < num.length; i++) {
  //   number += num[i];
  // }
  // print(number);

  int number = 0;
  for (int num1 in num) {
    number += num1;
  }
  print(number);

  // => Js에서의 for in과 같은 구조,,, for of도 있을까?

  // int num2 = 10;

  // while (num2 < 15) {
  //   print(num2);
  //   num2++;
  // }

  // => Js와 동일!

  int num3 = 10;

  while (num3 < 10) {
    print(num3);
    num3++;
  } // 애초에 반복문이 실행 안됨.

  do {
    print(num3);
    num3++;
  } while (num3 < 10);

  // do 구문 부터 실행되기 때문에 print는 출력됨.

  for (int x = 0; x < 10; x++) {
    if (x == 5) {
      continue;
    }
    print(x);
  }

  // => 이것도 js와 동일!!, continue는 그 조건값을 생략하고 넘어간다고 생각하면 된다.
}
