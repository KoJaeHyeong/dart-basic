// constructor 사용
void main() {
  Color listUp = new Color('blue', 'B');

  listUp.sayColor(); // 이 색은 blue입니다.
  print(listUp.name); // blue
  print(listUp.group); // B
}
// => 밑에서 만든 클래스 호출

class Color {
  // 1. 새로 추가 선언
  String name;
  String group;

  // 2. Constructor - 동일한 이름을 작성하여 소괄호를 열고 닫아준다.
  // 클래스안에서 인스턴스를 또 만듬.
  Color(String name, String group)
      : this.name = name,
        this.group = group;
  // 3. class가 인스턴스로 선언될때, 외부에서 직접 입력을 받아서 변수에 할당하고자 한다.
  // 4. Color()안에 변수를 똑같이? 선언하게 되면, 외부에서 값을 새로 받겠다는 뜻이다.
  // 5. 외부에서 받아온 이 name과 group은 현재 class의 name과 group이라는 것을 하단 콜론(:)뒤에 반드시 지정한다.       ===> Constructor

  void sayColor() {
    print('이 색은 ${this.name}입니다.');
  }
}
