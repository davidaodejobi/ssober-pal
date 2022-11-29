import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Addiction to Recovery',
      bodyWidget: Center(
        child: Text(
          "Start your recovery journey one step at a time and one less bottle a day",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 16,
          ),
        ),
      ),
      image: CachedNetworkImage(
          fit: BoxFit.fitWidth,
          width: double.infinity,
          imageUrl:
              "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783721/Onboarding-1_img_msewo3.png"),
    ),
    PageViewModel(
        title: 'Share Your Journey',
        bodyWidget: Text(
          "Share your journey anonymously to encourage others on their journey and help prevent a relapse",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 16,
          ),
        ),
        image: CachedNetworkImage(
            fit: BoxFit.fitWidth,
            width: double.infinity,
            imageUrl:
                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783721/Onboarding-2_img_fqzccj.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            color: Colors.grey.shade400,
            size: const Size.square(10),
            activeSize: const Size(20, 10),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            activeColor: Colors.blue,
          ),
          pages: pages,
          showDoneButton: true,
          done: const Text(
            "Start your sober journey",
            style: TextStyle(color: Colors.blue),
          ),
          showSkipButton: true,
          curve: Curves.bounceIn,
          skip: const Text("Skip"),
          next: SizedBox(
            height: 45,
            width: 200,
            child: Card(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                )),
          ),
          onDone: () => context.goNamed("setup"),
        ),
      ),
    );
  }
}
