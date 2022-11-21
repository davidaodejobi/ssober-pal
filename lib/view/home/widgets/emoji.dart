import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/model/feelings.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmojiContainer extends StatelessWidget {
  const EmojiContainer(this.emojiItem, {Key? key}) : super(key: key);
  final Feelings emojiItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<FeelingsController>(context, listen: false)
            .select(emojiItem);
      },
      child: Container(
        width: 57,
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Provider.of<FeelingsController>(context).selectedFeeling ==
                    emojiItem
                ? Border.all(color: AppColor.kPrimaryColor)
                : null,
            borderRadius: BorderRadius.circular(8),
            color: emojiItem.color),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(emojiItem.emoji),
            AppSpace.space4,
            Text(
              emojiItem.label,
              style: AppText.text1regular
                  .copyWith(color: AppColor.grayColor.shade800),
            )
          ],
        ),
      ),
    );
  }
}
