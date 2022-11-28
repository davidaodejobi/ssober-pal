import 'package:addictionsupportroom/view/notifications/screens/notification_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';

class NotificationsPanel extends StatelessWidget {
  const NotificationsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, itemIndex) => const TimeNotificationsBox());
  }
}

class TimeNotificationsBox extends StatelessWidget {
  const TimeNotificationsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Today"),
        AppSpace.vertical12,
        NotificationItem(
          key: UniqueKey(), //todo:change this later
        ),
      ]),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return const NotificationDetailsScreen();
            }),
          ),
        );
      },
      child: Dismissible(
        key: key!,
        confirmDismiss: (direction) async => false,
        background: Container(
          height: AppSpace.space80.height,
          padding: EdgeInsets.all(AppSpace.space16.height!),
          color: Theme.of(context).errorColor,
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
              label: const Text("Delete"),
              icon: const Icon(Icons.delete),
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  textStyle: MaterialStatePropertyAll(AppText.h5medium)),
              onPressed: null),
        ),
        secondaryBackground: Container(
          height: AppSpace.space80.height,
          padding: EdgeInsets.only(right: AppSpace.space8.height!),
          color: AppColor.successColor,
          alignment: Alignment.centerRight,
          child: TextButton.icon(
              label: const Text("Read"),
              icon: const Icon(Icons.mark_email_read_rounded),
              style: ButtonStyle(
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  textStyle: MaterialStatePropertyAll(
                      AppText.h5medium.copyWith(color: Colors.white))),
              onPressed: null),
        ),
        child: SizedBox(
          height: AppSpace.space80.height,
          width: double.infinity,
          child: Row(
            children: [
              SvgPicture.network(
                  "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668784347/avatar-5_v1alhz.svg",
                  width: 48,
                  height: 48),
              SizedBox(
                width: AppSpace.space12.width,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Frog",
                    style: AppText.h6medium,
                  ),
                  SizedBox(
                    height: AppSpace.space8.height,
                  ),
                  const Text(
                    "Frog just sent you a message",
                    style: AppText.paragraph1regular,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const Text("Just now")
            ],
          ),
        ),
      ),
    );
  }
}
