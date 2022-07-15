// void main() {
//   World world = new World('한국', '아시아');

//   world.sayName();
//   world.sayGroup();
// }

void main() {
  World world = new World('한국', '아시아')
    ..sayName()
    ..sayGroup();
} // 이렇게 간소화 가능

class World {
  String name;
  String group;

  World(
    String name,
    String group,
  )   : this.name = name,
        this.group = group;

  void sayName() {
    print('이 나라의 이름 ${this.name}이다.');
  }

  void sayGroup() {
    print('이 나라는 ${this.group}권이다.');
  }
}

// 인스턴스화를 간단하게 하기 위해서 cascade operator를 사용한다.
// 상황에 따라 유연하게 사용하자!