// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:addictionsupportroom/view/onboarding_screen/widgets/onboard_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:addictionsupportroom/util/color.dart';

import '../../../model/onboard_model.dart';

class OnbaordingScreen extends StatelessWidget {
  OnbaordingScreen({super.key});

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: screens.length,
              itemBuilder: (context, index) => OnboardScreen(
                description: screens[index].description,
                imageUrl: screens[index].imageUrl,
                isLast: index == screens.length - 1,
                title: screens[index].title,
                controller: _pageController,
                length: screens.length,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: screens.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 6,
                  dotWidth: 6,
                  dotColor: AppColor.grayColor.shade100,
                  activeDotColor: AppColor.kDarkBlueColor,
                  expansionFactor: 3,
                  spacing: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Onboard> get screens {
    return [
      Onboard(
        controller: _pageController,
        imageUrl:
            'https://res.cloudinary.com/du4c6jbsw/image/upload/v1669843067/onboarding/onbaord1_lcxlrb.jpg',
        title: 'Addiction to Recovery',
        description:
            "Start your recovery journey one step at a time and one less bottle a day",
      ),
      Onboard(
        controller: _pageController,
        imageUrl:
            'https://res.cloudinary.com/du4c6jbsw/image/upload/v1669843069/onboarding/onboard2_n1utd4.jpg',
        title: 'Share Your Journey',
        description:
            "Share your journey anonymously to encourage others on their journey and help prevent a relapse.",
      ),
    ];
  }
}
