import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';

class TabBarCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color textColor;
  final Color cardColor;
  const TabBarCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.textColor,
    required this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppText.paragraph1bold
                  .copyWith(color: textColor)
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
          ),
        ),
      ),
    );
  }
}
