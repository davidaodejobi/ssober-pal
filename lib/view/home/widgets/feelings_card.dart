import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FeelingsCard extends StatelessWidget {
  const FeelingsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FeelingsController>(context);
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            children: [
              for (int i = 0; i < provider.getEmotionsList().length; i++)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right:
                            i == provider.getEmotionsList().length - 1 ? 0 : 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: provider.getEmotionsList()[i].onPressed,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: provider.isSelected[i]
                                ? AppColor.kDarkBlueColor
                                : Colors.transparent,
                          ),
                          color: provider.getEmotionsList()[i].color,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svgs/${provider.getEmotionsList()[i].emotion}.svg',
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                provider
                                    .getEmotionsList()[i]
                                    .emotion
                                    .capitalize(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppText.text1regular.copyWith(
                                  color: AppColor.grayColor.shade800,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
        if (provider.isPressed) AppSpace.vertical16,
        if (provider.isPressed)
          AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: provider.isPressed
                  ? AppColor.secondaryColor.shade100
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: provider.isLoading
                ? const SpinKitChasingDots(
                    color: Colors.white,
                  )
                : Text(
                    provider.content,
                    textAlign: TextAlign.center,
                    style: AppText.paragraph1medium.copyWith(
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
          ),
      ],
    );
  }
}

//capitalize first letter
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
