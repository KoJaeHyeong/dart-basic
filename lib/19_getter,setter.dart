void main() {
  Color color = new Color(name: 'blue', title: 'B');

  print(color._name); // private 변수로 선언되었음에도 같은 파일내에 있기 때문에 사용가능!

  print(color.name); // getter 호출

  color.name = 'red'; // red를 set 후 밑에 getter로 출력
  print(color.name);
}

// Privat변수 : _ 를 붙인다. dart 에서는 같은 파일내에 존재하는 영역에서는 어디서나 가져와서 사용이 가능.

class Color {
  String _name;
  String _title;

  Color({required String name, required String title})
      : this._name = name,
        this._title = title;

  void sayName() {
    print('이 색은 ${this._name}입니다.');
  }

  get name {
    // getter : private 변수의 값을 리턴
    return this._name;
  }

  set name(name) {
    //setter : 받은 파라미터를 class의 할당하는 역할
    this._name = name;
  }
}

// 다른 파일에 있을때 private 변수를 사용하기 위해서 Getter, Setter가 존재
// 어느때 써야 하는지는 다음에 프로그래밍 할때 확인