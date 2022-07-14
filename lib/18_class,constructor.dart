void main() {
  Color listUp = new Color(name: 'red', group: 'R');

  listUp.sayColor();
  print(listUp.name);
  print(listUp.group);

  Color myIns = new Color.myInstance({'name': 'pink', 'group': 'P'});

  myIns.sayColor();
  print(myIns.name);
  print(myIns.group);

  myIns.name = 'yellow'; // 변경이 된다. => 변경이 안되게 하려면 final로 변수를 선언해준다.
  print(myIns.name);
}

class Color {
  // 1. 새로 추가 선언
  String name;
  String group;
  // final String name; // 이렇게 설정하면 위의 Key값을 변경 불가!
  // final String group;

  Color({required String name, required String group})
      : this.name = name,
        this.group = group;

  // 1.  Map값을 받아서 이 class를 생성할 수 있는 또 하나의 생성자 만들기
  // 2. '클래명.내가 지정한 이름' 형태로 지음
  // 3. Map값을 받아서 Key값이 name인것은 이 클래스의 name으로,
  // 4. Key값이 group인것은 이 클래스의 group으로 넣어줄 수 있도록 지정
  Color.myInstance(Map input)
      : this.name = input['name'], // Key값 설정
        this.group = input['group'];

  void sayColor() {
    print('이 색은 ${this.name}입니다.');
  }
}
