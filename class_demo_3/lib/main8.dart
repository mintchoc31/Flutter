abstract class Animal {
  void sound();
}

class Dog implements Animal {
  void sound() {
    print("멍멍 배고파");
  }
}

class Cat implements Animal {
  void sound() {
    print("야옹 배고파");
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔뼈끔 배고파");
  }
}

// 전역 함수
void start(Animal a) {
  // Animal 추상 클래스의 sound 함수가 오버라이드(무효화)되고
  // 자식의 Dog, Cat sound 함수가 실행된다.
  // 동적 바인딩
  a.sound();
}

void main() {
  start(Dog());
  start(Cat());
}
