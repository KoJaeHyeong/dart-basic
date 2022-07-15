void main() {
  Map map = {'Apple': '사과', 'Banana': '바나나', 'Kiwi': '키위'};
  print(map.keys);
  print(map.values);
  print(map['Banana']);

  // => Map - List로 변환
  print(map.keys.toList());
  print(map.values.toList());

  // entries기능 : key값과 value 값을 세트로 매핑하여 꺼낼수 있는 기능

  final newMap = map.entries.map((entry) {
    // key값과 value 그자체 통째로 꺼낸다 생각하자.
    final key = entry.key;
    final value = entry.value;
    final a = entry;

    return '$key는 한글로 $value이다. $a'; // (Apple는 한글로 사과이다. MapEntry(Apple: 사과), Banana는 한글로 바나나이다. MapEntry(Banana: 바나나), Kiwi는 한글로 키위이다. MapEntry(Kiwi: 키위))
  });
  print(newMap);

  Map number = {'숫자1': '10', '숫자2': '20', '숫자3': '30', '숫자4': '40', '숫자5': '50'};

  // final total5 = number.entries.fold(0, (vTotal, entry) {
  //   return vTotal + entry.key.length;
  // });
  // print(total5);

  // asMap() // 배열에 쓰면 Index와 그에 해당하는 value를 반환
  List<int> number1 = [10, 20, 30, 40, 50];

  final newMap2 = number1.asMap();

  print(newMap2);

  final newMap3 = number1.asMap().entries.map((entry) {
    final index = entry.key;
    final value = entry.value;

    return 'index가 $index일때 값은 $value입니다';
  });

  print(newMap3);
}
