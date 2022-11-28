import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/notifications/widgets/notifications_app_bar.dart';
import 'package:addictionsupportroom/view/notifications/widgets/notifications_panel.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "notifications";

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: AppColor.primaryColor,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primaryColor,
          secondary: AppColor.secondaryColor,
          error: AppColor.errorColor,
        ),
        primarySwatch: AppColor.primaryColor,
      ),
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Column(
          children: [
            Row(
              children: [
                const Spacer(flex: 1),
                TextButton(
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    textStyle:
                        MaterialStatePropertyAll<TextStyle>(AppText.h6medium),
                  ),
                  onPressed: () {},
                  child: const Text("Notifications"),
                ),
                const Spacer(flex: 7),
                TextButton(
                  style: ButtonStyle(
                      textStyle: MaterialStatePropertyAll<TextStyle>(AppText
                          .paragraph2regular
                          .copyWith(fontWeight: FontWeight.w400))),
                  onPressed: () {},
                  child: const Text("Read All"),
                ),
                const Spacer(flex: 1),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    textStyle: MaterialStatePropertyAll<TextStyle>(
                      AppText.paragraph2regular.copyWith(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Delete All"),
                ),
                const Spacer(flex: 1)
              ],
            ),
            const Expanded(
              child: NotificationsPanel(),
            ),
          ],
        ),
      ),
    );
  }
}
