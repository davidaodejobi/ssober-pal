import 'dart:developer';

import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/home/widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:addictionsupportroom/view/shared/progress_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

HiveStorageService hiveStorageService = getIt<HiveStorageService>();

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nickName = '';
  @override
  @override
  void initState() {
    hiveStorageService.readItem(key: nickName).then(
      (value) {
        log('value: $value');
        setState(() {
          nickName = value ?? '';
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
              children: [
                Text('Hello, $nickName', style: AppText.h4medium),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
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
            const FeelingStatus(),
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
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: AppColor.kPrimaryColor,
                    ),
                    AppSpace.space8,
                    Expanded(
                      child: Text(
                        'Write a note about how you feel today',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppText.paragraph2medium
                            .copyWith(color: AppColor.kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppSpace.space32,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                backgroundColor: AppColor.errorColor.shade500,
                minimumSize: const Size.fromHeight(50),
                padding: const EdgeInsets.all(10),
              ),
              child: const Text('Help! I\'m about to relapse'),
            )
          ],
        ),
      ),
    );
  }
}
