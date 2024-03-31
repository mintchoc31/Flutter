import 'package:http/http.dart' as http;

main() {
  // 결과를 콘솔에다가 출력, 방법1(비동기), 방법2(콜백), 방법3(파싱)
  // 콜백
  // 동기적(await)
  fetchTodo(); // 문자열


}

// 통신을 하는 함수 만들어 보기
Future<http.Response> fetchTodo() async {
  const url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  // print(response.runtimeType);
  // print("headers : ${response.headers}");
  // print("body : ${response.body}");

  return response;
}

