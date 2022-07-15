// Method overriding : 함수 덮어쓰기?정도이다.
void main() {
  Parent parent = new Parent(3);
  Child child = new Child(10);

  print(parent.calculate());
  print(child.calculate());
}

class Parent {
  final int number;

  Parent(int number) : this.number = number;

  // 메소드

  int calculate() {
    return this.number * number;
  }
}

class Child extends Parent {
  Child(
    int number,
  ) : super(number = number);

  @override // 데코레이터라 부르며, 부모클래스의 함수를 재정의할때 표시한다. => 재정의 : 자식클래스의 calculate 함수를 호출할때, 자식클래스의 함수를 호출함.
  int calculate() {
    // 부모클래스의 함수를 자식클래스에서 덮어쓰기
    // return this.number + this.number;
    int result = super.calculate(); // 부모 클래스의 함수를 그대로 호출!~!! => super 중요!

    return result + result;
  }
}

// @override : 함수 덮어쓰기! 불러올때 쓴다.