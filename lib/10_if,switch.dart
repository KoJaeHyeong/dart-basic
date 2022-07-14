void main() {
  int num = 17;

  if (num % 4 == 0) {
    print('4의 배수 확인');
  } else if (num % 4 == 1) {
    print('나머지 1');
  } else {
    print('그냥 나머지');
  }

  // => JS와 똑같음!

  // switch는 if문보다 수행이 빠름 But, 다중 조건은 사용이 불가
  int num2 = 18;
  switch (num2 % 4) {
    case 0:
      print('4의 배수');
      break; // 조건이 충족되면 break로 구문 종료
    case 1:
      print('나머지 1');
      break; // return을 사용하여 끝내도 됨
    case 2:
      print('나머지 2');
      return;
    default:
      print('나머지 없음');
      break;
  }
}
