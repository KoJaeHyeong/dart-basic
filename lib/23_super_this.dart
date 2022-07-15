void main() {
  // 7. 엔지니어 클래스를 인스턴스화 하여 값을 호출
  Engineer eng = new Engineer(equipment: ['망치', '방패', '거미줄'], name: '스파이더맨', skills: '거미줄 쏘기');

  print(eng.equipment);
  print(eng.name);
  print(eng.skills);

  // 9. Engineer 클래스의 함수 호출
  eng.sayInfo();
  eng.sayName();
}

// 1. 클래스 생성
class Character {
  // 2. 필수로 입력 받을수 있도록 final 사용
  final String name;
  final String skills;

  // 3. 생성자를 만듬
  Character(
    String name,
    String skills,
  )   : this.name = name,
        this.skills = skills;
}

// 4. 엔지니어 클래스 생성
class Engineer extends Character {
  // 5. 엔지니어가 사용하는 무기에 대해 List로 받기 위해서 선언
  List<String> equipment;

  // 12. 자식클래스와 부모클래스와의 위치 확인을 위한 변수 선언
  // String name;

  // 6. 상속받는 클래스이기 때문에, super키워드 사용하여 부모클래스에 대한 파라미터도 할당
  Engineer({required List<String> equipment, required String name, required String skills})
      : this.equipment = equipment,
        super(
          name = name,
          skills = skills,
        );

  // 8. 기능 하나 선언
  void sayInfo() {
    // 10. 호출해보면 정상적으로 모든값들이 누락없이 표현된다.
    // 여기서의 super는 부모클래스를 뜻하고, this는 자식클래스를 뜻하는데 실제 자식클래스에는 없는 skills가 나오는 이유는, 부모클래스의 모든것을 상속 받기 때문에 this에도 포함이 되어 있기 때문이다.
    print('나는 ${super.name}이고, 무기로는 ${this.skills}이다.');
    print('내가 사용하는 기술은 ${this.equipment.join(',')}이다.');
  }

  // 11. 만약 자식클래스에도 name변수가 있다고 가정
  // 13. 선언 시작
  void sayName() {
    print('이것은 this의 이름인 ${this.name}이고, 이것은 super의 name인 ${super.name}이다.');
  }

  // 14. 당연히 this인 자식클래스에 재정의를 해버리고 생성자에서 할당해주지도 않았기 때문에
  // null값이 발생
  // 15. 만약 해당클래스에서 name 변수를 다시 지워버리고 13번을 호출하면 super의 값을 그대로 상속 받기 때문에 super의 name이 그대로 호출된다.
}
