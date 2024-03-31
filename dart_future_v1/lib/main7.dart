import 'package:http/http.dart' as http;

main() {
  fetchTodo();
  // 결과를 콘솔에다가 출력, 방법1(async), 방법2(콜백)
  // fetchTodo().then((headers) => print("콜백 : ${headers}"));
  // fetchTodo().then((body) => print("콜백 : ${body}"));
  }

  // 통신을 하는 함수 만들어 보기
  Future<http.Response> fetchTodo() async {
    const url = 'https://jsonplaceholder.typicode.com/todos/1';
    var response = await http.get(Uri.parse(url));
    print(response.runtimeType);
    print("headers : ${response.headers}");
    print("body : ${response.body}");
    print("body : ${response.headers} ");
    return response;
  }

