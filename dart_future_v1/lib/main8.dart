import 'dart:convert';

void main() {

  // 1단계 - 통신을 x 직접 json 형식의 데이터를 만들어 보자
  String jsonStr = '''
         {
          "userId" : 1,
          "id" : 100, 
          "title" : "json 파싱이란?",
          "completed" : false   
         } 
  ''';
  // 위 코드는 단지 형식이 있는 문자열이다. (json)

  // 1단계 - 라이브러리가 필요하다.
  // JSON 문자열을 파싱하여 먼저 Map 객체로 변환을 해야 한다.
  // var: 변경x, dynamic: 변경o
  Map<String, dynamic> jsonStrToMap = json.decode(jsonStr); // Map 구조로 변환해줌
  print(jsonStrToMap.runtimeType);
  print(jsonStrToMap);
  // Map --> 반복문 활용을 많이 한다.
  jsonStrToMap.forEach((key, value) {
    print("key - ${key}" );
    print("key - ${value}" );
    print("---------------" );

  });

  // 2단계 Map 형식에 데이터를 Object 타입으로 변경하자
  Todo myTodo1 = Todo.fromJson(jsonStrToMap);
  print(myTodo1);
  print(myTodo1.title);

}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 값 초기화 or nullable or 강제성(생성자)

  // 기본 생성자1
  // 강제성 - 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // dart는 오버로딩이 없다.

  // 명명된 생성자 2 - Map을 넣으면 Todo 오브젝트가 반환되는 코드를 작성
  // 이니셜라이저 (변수를 초기화 해주는 문법)
  Todo.fromJson(Map<String, dynamic> json)
   : userId = json["userId"],
    id = json["id"],
    title = json["title"],
    completed = json["completed"];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }


}