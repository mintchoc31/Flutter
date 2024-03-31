import 'package:flutter/material.dart';


void main() async {

  // var result1 = addNumber1(100, 200);
  // print(result1);
  // print(result1.runtimeType);
  // result1.then((value) => print("result1 소화 : $value"));
  print("-----------");
  var result2 = await addNumber2(100, 200);
  // result2.then((v) => print("결과 : $v")); 동기 방식으로 변경하기
  print(result2);
  print("----------- 222222");

 }

  Future<int> addNumber2(int n1, int n2) {
    return Future.delayed(Duration(seconds: 3), () => n1 + n2);
  }

 // 응용
 // 함수 설계, 인수 2개 int 값을 받아서 2초 뒤에 연산되는 함수를 설계해 보자.
 // 동기적 방식으로 처리
  Future<int> addNumber1(int n1, int n2) async {
    print("함수 시작1");
    var result = 0;
    await Future.delayed(Duration(seconds: 3), () {
      result = n1 + n2;
    });
    print("함수 완료2");
    return result;
  }

