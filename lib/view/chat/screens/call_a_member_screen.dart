import 'package:addictionsupportroom/util/app_images.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/screens/profile_chat_screen.dart';
import 'package:flutter/material.dart';

class CallAMemeberScreen extends StatelessWidget {
  const CallAMemeberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kDarkBlueColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.kDarkBlueColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (() => Navigator.of(context).pop()),
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.kWhiteColor,
            size: 20.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularImage(
              width: 80.0,
              height: 80.0,
              bgColor: AppColor.grayColor.shade100,
              child: Image.asset(AppImages.defaultProfileImg),
            ),
            AppSpace.space8,
            Text(
              'Abiodun Jacob',
              style: AppText.h3bold.copyWith(
                color: AppColor.kWhiteColor,
              ),
            ),
            AppSpace.space4,
            Text(
              'Calling..',
              style: AppText.paragraph2medium.copyWith(
                color: AppColor.grayColor.shade50,
              ),
            ),
            const SizedBox(height: 65.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(AppImages.muteIcon),
                    AppSpace.space4,
                    Text(
                      'Mute',
                      style: AppText.paragraph1regular.copyWith(
                        color: AppColor.kWhiteColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 138.0),
                Column(
                  children: [
                    Image.asset(AppImages.speakerIcon),
                    AppSpace.space4,
                    Text(
                      'Speaker',
                      style: AppText.paragraph1regular.copyWith(
                        color: AppColor.kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 59.0),
            CircularImage(
              width: 72.0,
              height: 72.0,
              bgColor: AppColor.kDarkRedColor,
              child: Image.asset(AppImages.callIcon2),
            ),
          ],
        ),
      ),
    );
  }
}
