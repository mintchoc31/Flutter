void main() {
  List<String> footballPlayers = ['메시', '손흥민', '김민재', '조규성'];
  // 1.단계 - 자료구조와 익명 함수
  // 2. dart List Iterable(반복 순회)을 구현하고 있다.
  // 그래서 리스트는 반복 가능한 객체이다.
  //                        익명함수
  footballPlayers.forEach((element) => print("축구 선수 : ${element}"));

  List<int> numbers = [10, 20, 30, 40, 50];
  int sum1 = 0; // 익명 함수용
  int sum2 = 0; // 화살표 함수용

  // 문제 forEach 을 활용해서 리스트 안에 요소들에 덧셈 값을 연산하고 출력하시오.
  // 1. 익명 함수 사용
  numbers.forEach((num) {
    sum1 + sum2 + num;
  });
  // 2. 람다 표현식 사용
  numbers.forEach((num) => sum2 = sum2 + num);
}