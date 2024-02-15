import 'package:flutter/material.dart';

// 코드 시작점
void main() {
  // 루트 위젯을 만들어 주는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MyApp 클래스 안에 메서드 만들어 보기
  Column _buildButtonColumn(IconData iconData, Color color, String label) {
    return Column(
      children: [
        Icon(iconData, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        )
        // 아이콘 ->

        // 텍스트
      ],
    );
  }

  // build 함수는 화면을 그린다
  @override
  Widget build(BuildContext context) {
    // 함수 바디 ... 코드 사용하기

    //지역 변수
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          // 컬럼 -- 텍스트1, 텍스트2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschiene Lake C.....',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('abc'),
            ],
          ),
          const Spacer(),
          Icon(Icons.star, color: Colors.red),
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: Text('41'),
          ),
          // 아이콘
          // 텍스트 41
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(Icons.call, Colors.blue, 'CALL'),
        _buildButtonColumn(Icons.near_me, Colors.blue, 'ROUTE'),
        _buildButtonColumn(Icons.share, Colors.blue, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout 1'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/lake.jpeg',
              width: 620,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
