import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/notifications_app_bar.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            NotificationDetailsHeader(),
            Expanded(
              child: Text(
                """
Even at your lower point of discouragement, you can still find the strength to overcome substance abuse as long as you take actionable steps to achieve this goal. Please don’t give up yet, it gets better everyday. We love you and we will always support you no matter the decision you make for yourself.""",
                style: AppText.paragraph2regular,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationDetailsHeader extends StatelessWidget {
  const NotificationDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpace.space80.height,
      width: double.infinity,
      child: Row(
        children: [
          SvgPicture.network(
              "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668784347/avatar-5_v1alhz.svg",
              width: 48,
              height: 48),
          AppSpace.horizontal12,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Frog",
                style: AppText.h6medium,
              ),
              Text(
                "Tuesday, 15th October",
                style: AppText.paragraph1regular,
              ),
              Text("2022", style: AppText.paragraph1regular)
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          const Text("Just now")
        ],
      ),
    );
  }
}
