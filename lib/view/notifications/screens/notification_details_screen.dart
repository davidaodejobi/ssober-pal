import 'package:flutter/material.dart';

import '../widgets/notifications_app_bar.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: Container());
  }
}
