// class : 비슷한 성격의 또는 기능의 변수와 함수들을 모아놓은것
void main() {
// 선언한 class 사용하기
  Color color = new Color(); // class를 인스턴스화, 하나의 인스턴스 = color
  color.sayColor();
  print(color.name);
}

class Color {
  String name = 'red';
  void sayColor() {
    print('이 색은 red이다.12'); // 1번째 방식

    print('이 색은 ${this.name}이다.34'); // 2번째 방식
    // this는 클래스안의 name이라는 변수를 가리킴
  }
}
