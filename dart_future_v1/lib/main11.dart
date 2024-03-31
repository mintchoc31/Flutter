import 'dart:convert';

// 유저1 파싱
void main() {
 String jsonStr = ''' 
    {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
      }
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
    ''';
 class User {
 int id;
 String name;
 String username;
 String email;
 String address; // 이중으로 된건 어떻게 처리하지
 String street;
 String suite;
 String city;
 String zipcode;
 String geo;
 String lat;
 String lng;
 String phone;
 String website;
 String company;
 String name;
 String catchPhrase;
 String bs;
 }


 // Map 구조로 변환해줌
 Map<String, dynamic> jsonStrToMap = json.decode(jsonStr);
 print(jsonStrToMap.runtimeType);
 print(jsonStrToMap);

 // 2단계 Map 형식에 데이터를 Object 타입으로 변경하자
  }

