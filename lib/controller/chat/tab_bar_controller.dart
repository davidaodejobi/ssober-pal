import 'package:flutter/cupertino.dart';

enum Tabs { chatroom, emergency, chats }

class TabBarController with ChangeNotifier {
  Tabs _currentTab = Tabs.chatroom;
  Tabs get currentTab => _currentTab;
  bool _hasTyped = false;
  bool get hasTyped => _hasTyped;

  typing(String query) {
    if (query.isNotEmpty) {
      _hasTyped = true;
    } else {
      _hasTyped = false;
    }
    notifyListeners();
  }

  void changeTab(Tabs tab) {
    _currentTab = tab;
    notifyListeners();
  }
}
