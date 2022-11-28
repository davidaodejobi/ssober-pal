import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/home/widgets/my_notes_button.dart';
import 'package:flutter/material.dart';

class DailyNotes extends StatelessWidget {
  const DailyNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        centerTitle: true,
        title: const Text('Daily Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyNotesButton(),
            AppSpace.space24,
            Text(
              'Write your feelings here',
              style: AppText.paragraph2regular
                  .copyWith(color: AppColor.primaryColor.shade700),
            ),
            AppSpace.space12,
            const TextField(
              maxLines: 15,
              decoration: InputDecoration(
                  hintText: 'Write text here...',
                  hintStyle: AppText.text1regular,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
            AppSpace.space32,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  minimumSize: const Size.fromHeight(50),
                  padding: const EdgeInsets.all(10)),
              child: const Text('Save note'),
            )
          ],
        ),
      ),
    );
  }
}
