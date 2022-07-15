// Static : 인스턴스에 귀속되지 않고, 클래스 통째로 귀속이 되는것. / 함수 또는 변수가 통째로 클래스에 귀속이 되는 것을 말한다.

void main() {
  Character.marvel = '어벤져스'; // 클래스 자체에 직접 접근(고정되는 값을 설정할때 유용)
  Character captain = new Character('캡틴 아메리카');
  Character spiderMan = new Character('스파이더맨');

  captain.printNameAndCharacter();
  spiderMan.printNameAndCharacter();
}

class Character {
  static String? marvel;
  String name;

  Character(
    String name,
  ) : this.name = name;

  void printNameAndCharacter() {
    // static을 사용하였기 때문에 marvel에서는 this사용 불가!
    print('나는 ${this.name}이고, ${marvel} 소속이다.'); // 하나의 인스턴스별로가 아닌 클래스 자체에 귀속.
  }
}
