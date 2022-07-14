// 상태값의 3가지 종류
// 1. approved, reject, pending

// void main() {
//   String status1 = 'approved';

//   if (status1 == 'approved') {
//     print('승인');
//   } else {
//     print('거절 또는 대기 중');
//   }
// }

// => 만약 상태값이 글자 오류로 인한 버그픽스를 방지 하기위해 ENUM type을 사용한다.

enum Status { approved, rejected, pending } // Js와 다르게 dart에서는 소문자로 사용한다.

void main() {
  Status enumType = Status.pending; //enum타입에 변수 선언.(절대 변하지 않는 값)

  if (enumType == Status.approved) {
    print('승인');
  } else if (enumType == Status.pending) {
    print('대기');
  }

  print(Status.values.toList()); //toList()는 List형태로 반환
}

// => enum상수는 절대로 변치않는 고정값(상수)을 지정하여 활용할때 좋다!!
