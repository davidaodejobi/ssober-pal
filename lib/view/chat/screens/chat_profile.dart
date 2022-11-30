import 'package:addictionsupportroom/util/app_images.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';

import 'call_a_member.dart';

class ChatProfile extends StatelessWidget {
  const ChatProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Profile',
          style: AppText.h4bold.copyWith(
            fontSize: 24.0,
            color: AppColor.kBlackColor,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grayColor.shade800,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularImage(
            width: 150.0,
            height: 150.0,
            bgColor: AppColor.warningColor.shade100,
            child: Image.asset(AppImages.profileChatImg),
          ),
          AppSpace.space20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Beaver',
                style: AppText.h4bold.copyWith(
                  fontSize: 24.0,
                  color: AppColor.kBlackColor,
                ),
              ),
              Image.asset(AppImages.profileMedalStarIcon),
            ],
          ),
          AppSpace.space8,
          Text(
            '30 days+ sober',
            style: AppText.h6medium.copyWith(
              fontSize: 16.0,
              color: AppColor.kSecondaryBlackColor,
            ),
          ),
          AppSpace.space8,
          RichText(
            text: TextSpan(
              text: 'Achievment level:',
              style: AppText.paragraph2medium.copyWith(
                color: AppColor.kSecondaryBlackColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Super star',
                  style: AppText.paragraph2bold.copyWith(
                    color: AppColor.kSecondaryBlackColor,
                  ),
                ),
              ],
            ),
          ),
          AppSpace.space8,
          Text(
            'Member since June, 2022',
            style: AppText.paragraph1medium.copyWith(
              color: AppColor.grayColor.shade300,
            ),
          ),
          AppSpace.space32,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularImage(
                width: 56.0,
                height: 56.0,
                border:
                    Border.all(color: AppColor.grayColor.shade200, width: 1.0),
                bgColor: AppColor.kWhiteColor,
                child: Image.asset(AppImages.chatIcon),
              ),
              const SizedBox(width: 138.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => const CallAMemeber(),
                    ),
                  );
                },
                child: CircularImage(
                  width: 56.0,
                  height: 56.0,
                  border: Border.all(
                      color: AppColor.grayColor.shade200, width: 1.0),
                  bgColor: AppColor.kWhiteColor,
                  child: Image.asset(AppImages.callIcon),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CircularImage extends StatelessWidget {
  final Widget child;
  final BoxBorder? border;
  final Color bgColor;
  final double width;
  final double height;

  const CircularImage(
      {required this.child,
      required this.width,
      required this.height,
      required this.bgColor,
      this.border,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        border: border,
        borderRadius: const BorderRadius.all(
          Radius.elliptical(100, 100),
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
