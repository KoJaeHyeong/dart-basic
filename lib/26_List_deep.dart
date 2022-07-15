void main() {
  List<String> marvel = ['캡틴 아메리카', '스파이더맨', '토르', '블랙팬서'];

  marvel.forEach((value) => {print(value)});
  marvel.forEach((value) {
    print(value);
  });

  for (String a in marvel) {
    print(a); // 캡틴 아메리카
    // 스파이더맨
    // 토르
    // 블랙팬서
  }

  // 위 두개는 같은 메소드 기능!

  // Mapping
  final newList = marvel.map((value) {
    return '이 캐릭터는 ${value}입니다.';
  });

  print(newList);
  print(newList.toList()); // 배열화ㅈ

  // fold

  List<int> num = [0, 1, 2, 3, 4, 5, 6];

  int total = num.fold(0, (vTotal, element) => vTotal + element);
  print(total);

  int total1 = num.fold(0, (vTotal, element) {
    // fold(시작 인덱스, (return값, 그 인덱스의 요소){ 기능})
    return vTotal + element;
  });

  print(total1);

  // reduce => JS reduce와 똑같다.
  int total2 = num.reduce((total, element) {
    return total + element;
  });
  print(total2);

  int total3 = num.reduce((total, element) => total + element);
  print(total3);
}
