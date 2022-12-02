import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/view/chat/screens/chat.dart';
import 'package:addictionsupportroom/view/progress_section/screens/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:addictionsupportroom/view/home/screens/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int index;
  List<Map<String, String>> navItems = [
    {'icon': 'home', 'label': 'Home'},
    {'icon': 'trend', 'label': 'Progress'},
    {'icon': 'message', 'label': 'Chat room'},
    {'icon': 'account', 'label': 'Account'},
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
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(
            () {
              index = value;
            },
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.kDarkBlueColor,
          unselectedItemColor: AppColor.grayColor.shade200,
          selectedItemColor: Colors.white,
          items: navItems
              .map(
                (item) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/svgs/${item['icon']}.svg',
                      color: item['icon'] == navItems[index]['icon']
                          ? Colors.white
                          : AppColor.grayColor.shade200,
                    ),
                    label: item['label'],
                    backgroundColor: Colors.transparent),
              )
              .toList(),
        ),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: index,
          children: const [
            Home(),
            ScreenOne(),
            Chat(),
            Center(
              child: Text('Account'),
            ),
          ],
        ),
      ),
    );
  }
}
