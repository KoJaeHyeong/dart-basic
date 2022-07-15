// interface : class가 꼭 선언해야 하는 메소드와 변수를 지정해주는 역할

void main() {
  Korea korea = new Korea('한국');

  korea.sayName();

  Usa usa = new Usa('미국');

  usa.sayName();
}

class WorldInterface {
  late String name;

  // 이 안 함수안에 기능을 정의하지 않는다.
  void sayName() {}
} // 인터페이스로 사용할거이기 때문에 원하는 변수와 함수만 선언

class Korea implements WorldInterface {
  // implements(구현)를 사용하여 interface를 사용하는데, 무조건 interface안에 있는 변수와 함수를 무조건 선언 및 기능정의 해야함.
  String name;

  Korea(
    String name,
  ) : this.name = name;

  void sayName() {
    print('이 나라의 이름은 ${this.name}이다.');
  }
}

class Usa implements WorldInterface {
  String name;

  Usa(
    String name,
  ) : this.name = name;

  void sayName() {
    print('이 나라의 이름은 ${this.name}입니다.');
  }
}

// => 인터페이스를 사용하는 이유 : 비슷한 성격을 가진 class들은 반드시 특정변수와 함수를 가져야 한다라는 가정이 있을때 인터페이스를 사용하면 유용하다.
// => 인터페이스를 구현한다 : 이 안에 지정된 것들은 모두 강제한다!