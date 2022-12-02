// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:addictionsupportroom/view/home/widgets/feelings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/constant/keys.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/shared/app_eleevated_button.dart';
import 'package:addictionsupportroom/view/shared/progress_widget.dart';

HiveStorageService hiveStorageService = getIt<HiveStorageService>();

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String userNameUno = '';
  @override
  void initState() {
    hiveStorageService.readItem(key: nickName).then(
      (value) {
        setState(() {
          userNameUno = value ?? '';
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () =>
            Provider.of<FeelingsController>(context, listen: false).clear(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hello, $userNameUno!', style: AppText.h4medium),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/notifications.svg',
                  ),
                ),
              ],
            ),
            AppSpace.space16,
            const ProgressWidget(),
            AppSpace.space24,
            Text(
              'How are you feeling today?',
              style: AppText.paragraph1medium
                  .copyWith(color: AppColor.grayColor.shade800),
            ),
            AppSpace.space12,
            const FeelingsCard(),
            AppSpace.space48,
            InkWell(
              onTap: () {
                Provider.of<FeelingsController>(context, listen: false).clear();
                context.goNamed("notifications");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0.5, color: AppColor.kPrimaryColor),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/note-favorite.svg',
                    ),
                    AppSpace.space8,
                    Expanded(
                      child: Text(
                        'Write a note about how you feel today',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppText.paragraph1medium
                            .copyWith(color: AppColor.kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppSpace.space32,
            AppElevatedButton(
              color: AppColor.kErrorColor,
              text: 'Help! I\'m about to relapse',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
