import 'package:flutter/material.dart';


void main() {

  // Future 타입과 값을 꺼내는 방법 -->
  // 비동기 함수를 - 동기성으로 변경하면 값이 자동으로 꺼내졌다.
  // Future 타입 선언
  Future<String> name = Future.value("텐코");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("--------");

  // 1번 방법은 -> 동기성으로 만들기
  //  2번. 미래 타입을 소화시키는 두번째 방법 : 콜백 메서드의 활용

  // print(await name);
  name.then((value) => print("미래 타입 값 꺼내기 콜백 : $value"));
  name.then((e) => print("xxx : $e"));
  isTrue.then((value) {print("oooo : $value");});
 }
