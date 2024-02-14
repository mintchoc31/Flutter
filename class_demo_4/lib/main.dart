// dart 에서 기본적으로 제공하는 라이브러리를 import 합니다.
import 'dart:math';

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[4]);
  // print(nums[5]);

  // map 리터럴은 중괄호 이다
  Map<String, dynamic> user = {
    'id': 1,
    'username': "cos",
  };
  // key 연산은 인덱스 연산자를 활용 한다.
  print(user['id']);
  print(user['username']);

  ///
  //set 리터럴은 중괄호를 사용 한다.
  Set<int> lotto = {};

  Random r = Random();
  // 0 ~ 44 --> 1 ~ 45
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  // 반드시 6개의 숫자가 나올 수 있게 보장 하려면 어떻게 만들 수 있을까?
  // while 문으로 코드 수정해 보기 - 도전과제
  print('-------------------------------');
  // lotto 갯수가 7개 미만일 경우 반복하라
  while(true) {

  }

  print(lotto);
  print(lotto.runtimeType);
  // --> Set --> List 변경 하고자 한다면
  print(lotto.toList());
  List<int> lottoList = lotto.toList();
  // Set 자료 구조에 정렬이라는 기본 있을까?
  lottoList.sort();
  print(lottoList);
}

