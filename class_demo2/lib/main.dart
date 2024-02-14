// 코드의 시작점
// 1단계 생성자 학습
void main() {
  // 생성자 -- 강제성
  // Dog d1 = Dog('toto', 10, 'white', 100); // 메모리에 로드(객체 생성)
  Dog d1 = Dog(
      color: 'white', name: 'toto', age: 10, thirsty: 100); // 메모리에 로드(객체 생성)
  print(d1.name);
} // end of main

// 아무것도 안 쓰면 public
class Dog {
  String name;
  int age;
  String color;
  int thirsty; // 목마름

// 메서드, 함수, 생성자 --> 파라미터 설계 (단일 라인에서는 생성자 -생략했었음
// 파라미터 --> 선택적 매개 변수
// 함수({}); --> 중괄호로 감싸면 된다.
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}
