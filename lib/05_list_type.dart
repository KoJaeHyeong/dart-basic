void main() {
  List marvelList = []; // List 선언자는 여러개의 값을 할당할수 있다.

  print(marvelList);

  marvelList.add('캡틴아메리카'); // 배열에 추가(push와 같음)
  marvelList.add('토르');
  marvelList.add('스파이더맨');

  print(marvelList);

  print(marvelList[0]);
  print(marvelList[1]);
  print(marvelList[2]);

  marvelList.removeAt(1);
  print(marvelList);
  marvelList.removeAt(0);
  print(marvelList);

  marvelList[0] = '블랙팬서';
  print(marvelList);

  marvelList.addAll(['재형', '파토스']); // addAll을 사용할때에는 {}, [] 다 가능??
  print(marvelList);

  List<String> fruit = []; // <>속에 타입을 미리 지정 가능 => typescript와 비슷

  fruit.add('바나나');
  print(fruit);

  List<String> car = new List.filled(
      3, 'benz'); // new List()가 안된다..... / List.filled(자리수, 들어갈 값)
  print(car);

  car[0] = 'BMW';
  car[2] = 'AUDI';

  print(car);

  List alphabet = ['A', "B", 'C', 'D'];
  print(alphabet);

  var aaa = ['aa', 'bb'];
  print(aaa);

  List alphabet2 = new List.from(['a', 'b', 'c', 'd']); // JS에서의 array.from과 비슷.
  print(alphabet2);

  print(alphabet2.length);
}
