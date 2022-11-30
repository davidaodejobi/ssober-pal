import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';

class MyNotesButton extends StatelessWidget {
  const MyNotesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.secondaryColor.shade50),
          ),
          child: Column(
            children: const [
              Text('My notes', style: AppText.text1regular),
              AppSpace.space4,
              Icon(Icons.menu_book_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
