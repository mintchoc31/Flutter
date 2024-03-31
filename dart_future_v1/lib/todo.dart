// DTO 개념 클래스를 설계할 때 nullable 타입으로 설계하자
  class Todo {
    int userId;
    int id;
    String title;
    bool? completed;

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

