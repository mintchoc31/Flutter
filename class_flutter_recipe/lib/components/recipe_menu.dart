import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  // build 화면에 그림을 그려주는 함수
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "All"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          const SizedBox(width: 25),
          // 여백
          // 아이콘 2
          // 여백
          // 아이콘 3
          // 여백
          // 아이콘 4
        ],
      ),
    );
  }

  // 커스텀한 위젯을 만들어야 할 때 컨테이너 위젯을 활용한다.
  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      // 컬럼 -- 주축 방향 -- 세로,      교차축 방향 -- 가로
      // 로우 -- 주축 방향 -- 가로,      교차축 방향 -- 세로
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.deepOrangeAccent,
            size: 30,
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
