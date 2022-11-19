import 'package:addictionsupportroom/util/color.dart';
import 'package:flutter/material.dart';

import '../home/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int index;
  List<Map<String, dynamic>> navItems = [
    {'icon': Icons.home_outlined, 'label': 'Home'},
    {'icon': Icons.stacked_line_chart, 'label': 'Progress'},
    {'icon': Icons.chat_bubble_outline_outlined, 'label': 'Chat room'},
    {'icon': Icons.person_outline, 'label': 'Account'},
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() {
            index = value;
          }),
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.secondaryColor.shade700,
          unselectedItemColor: AppColor.grayColor.shade100,
          selectedItemColor: AppColor.grayColor.shade50,
          items: navItems
              .map((item) => BottomNavigationBarItem(
                  icon: Icon(item['icon']),
                  label: item['label'],
                  backgroundColor: Colors.transparent))
              .toList(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        child: Builder(builder: (context) {
          switch (index) {
            case 0:
              return const Home();
            case 1:
              return const Center(
                child: Text('Progress'),
              );
            case 2:
              return const Center(
                child: Text('Chat room'),
              );
            case 3:
              return const Center(
                child: Text('Account'),
              );
          }
          return Container();
        }),
      ),
    );
  }
}
