import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/controller/home/note_controller.dart';
import 'package:addictionsupportroom/model/feelings.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/home/widgets/emoji.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeelingStatus extends StatelessWidget {
  const FeelingStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (BuildContext context, data, child) {
        return Column(
          children: [
            Builder(
              builder: (context) {
                List<Feelings> emojiList = [
                  Feelings(
                      label: data.noteList[0].title.toString(),
                      emoji: Icons.mood_bad,
                      color: AppColor.errorColor.shade50,
                      message:
                          '“Recovery is a journey, and that means there will be bumps along the way.It\'s about progress not perfection.”'),
                  Feelings(
                      label: 'Happy',
                      emoji: Icons.mood,
                      color: AppColor.successColor.shade50,
                      message: '“Be happy and keep crushing your goals”'),
                  Feelings(
                      label: 'Confused',
                      emoji: Icons.mood_bad,
                      color: AppColor.warningColor.shade50,
                      message:
                          '“You have come this far, we are so proud of your progress, the sky is your limit & I am certain your future self will thank you.”'),
                  Feelings(
                      label: 'Defeated',
                      emoji: Icons.mood,
                      color: AppColor.secondaryColor.shade50,
                      message:
                          '“It deoesn’t matter how slow you go, as long as you don’t stop, You are not alone.”'),
                  Feelings(
                      label: 'Angry',
                      emoji: Icons.mood_bad,
                      color: AppColor.primaryColor.shade50,
                      message:
                          '“And if today all you did was hold yourself together, I’m proud of you.”'),
                ];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: emojiList
                      .map(
                        (item) => EmojiContainer(
                          item,
                        ),
                      )
                      .toList(),
                );
              },
            ),
            Consumer<FeelingsController>(
              builder: (context, value, child) {
                if (value.selectedFeeling == null) {
                  return Container();
                } else {
                  return Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(16, 8, 39, 8),
                    color: AppColor.secondaryColor.shade50,
                    child: Text(value.selectedFeeling!.message,
                        style: AppText.paragraph2medium
                            .copyWith(color: AppColor.kPrimaryColor),
                        textAlign: TextAlign.center),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
