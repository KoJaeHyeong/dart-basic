// void main() {
//   add(1, 2);
//   subtract(3, 2);
// }

// void add(int x, int y) {
//   print('x더하기 y는 ${x + y}이다');
// }

// void subtract(int x, int y) {
//   print('x빼기 y는 ${x - y}이다.');
// }

// void는 return이 없는 함수를 만들때 사용한다.

void main() {
  add(1, 2);
  subtract(3, 2);

  // Operation aaa = add;

  // aaa(3, 4);
  // aaa = subtract;
  // aaa(10, 1);

  calculate(10, 20, add);
  calculate(30, 20, subtract);
}

void add(int x, int y) {
  print('x더하기 y는 ${x + y}이다');
}

void subtract(int x, int y) {
  print('x빼기 y는 ${x - y}이다.');
}

typedef Operation(int x, int y); // 이렇게 보면 이걸 왜 쓰는지 사실 잘 모르겠다..., 쓰려는 함수의 파라미터와 같아야 한다.

void calculate(int x, int y, Operation aaa) {
  aaa(x, y);
}
