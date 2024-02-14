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
  a.sound();
}

void main() {
  Dog d1 = Dog();
  Cat c1 = Cat();
  Fish f1 = Fish();
  Animal animal = Dog();

  d1.sound();
  c1.sound();
  // f1.sound(); // 오류
}
