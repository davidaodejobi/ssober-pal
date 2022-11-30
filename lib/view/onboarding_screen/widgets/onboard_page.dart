import 'package:addictionsupportroom/util/util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OnboardScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final bool isLast;
  final PageController controller;
  final int length;
  const OnboardScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.isLast,
    required this.controller,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: CachedNetworkImage(
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              placeholder: (context, url) => const SpinKitPulse(
                duration: Duration(milliseconds: 1000),
                color: AppColor.kDarkBlueColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 30,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppSpace.vertical16,
                        Text(
                          title,
                          style: AppText.h3medium,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: AppText.paragraph1regular,
                        ),
                      ],
                    ),
                    if (isLast)
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Start your sober journey',
                            style: AppText.h5medium,
                          ),
                        ),
                      ),
                    if (!isLast)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Skip',
                              style: AppText.paragraph1regular.copyWith(
                                color: AppColor.grayColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Next',
                                style: AppText.h5medium,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
