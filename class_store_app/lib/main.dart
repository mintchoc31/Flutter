import 'package:flutter/material.dart';

// 1. material.dat 수입(import)하기
// 2. main --> runApp() <-- 무조건 호출(루트 위젯으로 만들어준다.
void main() {
  runApp(const MyApp());
}

// 처음부터 위젯을 개발하는 것은 힘들다 -->  상속, 구현 받아서 코드를 작성한다.
// StatelessWidget, StatefulWidget 두 가지 중 하나를 선택해야 한다.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build라는 메서드가 호출되면 화면을 그려준다(렌더링).
  @override
  Widget build(BuildContext context) {
    print("build()메서드 호출 확인");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
} // end of MyApp

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold : 시각적 레이아웃 구조를 만들어 주는 위젯
    // 위젯은 부모가 될 수 있는 위젯이 있고, 자식만 될 수 있는 위젯이 존재한다.
    return Scaffold(
        // SafeArea : 자식 위젯에 패딩을 넣어서 디바이스 영역이 앱의 위젯 영역을 침범하는 것을 막아준다.
        body: SafeArea(
      child: Column(
        children: [
          // 1번 자식
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text('Woman',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Text('Kids',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Text('Shoes',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Text('Bag',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/bag.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 2),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ))
        ],
      ),
    ));
  }
} // end of StorePage
