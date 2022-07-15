void main() {
  Color color = new Color(name: '마블', title: '굳');

  color.sayName();
  color.sayTitle();

  Fruit aaa = new Fruit('캡틴 아메키라', '아메리카노');

  print(aaa.name);
  print(aaa.title);

  aaa.sayName(); // 상속받았기 때문에 모든걸 다 사용할 수 있다.
}

class Color {
  String name;
  String title;

  Color({required String name, required String title})
      : this.name = name,
        this.title = title;

  void sayName() {
    print('이 색은 ${this.name}입니다.');
  }

  void sayTitle() {
    print('그룹은 ${this.title}입니다.');
  }
}

class Fruit extends Color {
  // 1. Color 클래스의 모든것을 상속 가능
  Fruit(String name, String title) : super(name: name, title: title); // 2. super는 부모클래스를 지칭한다.
  // 3. 이 class 생성 될때, 받는 파라미터를 부모 클래스에 할당

  void sayCategory() {
    print('여름과일입니다.');
  }
}

// => 상속 받을때에는 extends, super가 중요하다.
//    부모클래스는 자식클래스의 함수, 변수 사용 불가능!
//    하나의 부모클래스는 여러개의 자식클래스를 가질수 있다. but, 자식은 부모 클래스 하나만 가질 수 있다.
