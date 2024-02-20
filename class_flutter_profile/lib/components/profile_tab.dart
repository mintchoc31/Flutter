import 'package:flutter/material.dart';

// 화면이 중간중간에 바뀔 경우에 사용
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of StatefulWidget

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TabBar --> 그림1, 그림2
        _buildTabBar(),
        // TabBarView --> 그림1에 맞는 위젯 렌더링, 그림2 .. 렌더링
        _buildTabBarView(),
      ],
    );
  }

  Widget _buildTabBar() {
    return SizedBox();
  }

  Widget _buildTabBarView() {
    return SizedBox();
  }
} // end of State
