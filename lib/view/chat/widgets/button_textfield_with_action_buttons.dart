import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:addictionsupportroom/view/chat/widgets/icon_with_circular_border.dart';
import 'package:flutter/material.dart';

class BottomTextFieldWithActionButtons extends StatelessWidget {
  final VoidCallback onAddPress;
  final Widget sendRecordButton;
  final TextEditingController textEditingController;
  final Function(String)? onTextChange;

  const BottomTextFieldWithActionButtons({
    Key? key,
    required this.onAddPress,
    required this.sendRecordButton,
    required this.textEditingController,
    required this.onTextChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWithCircularBorder(
          onTap: onAddPress,
          color: AppColor.primaryColor.shade200,
          size: 50,
          child: const Icon(
            Icons.add,
            color: AppColor.grayColor,
            size: 28,
          ),
        ),
        AppSpace.horizontal4,
        Expanded(
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.grayColor.shade100,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: textEditingController,
              onChanged: onTextChange,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                border: InputBorder.none,
                hintText: 'Message',
                hintStyle: AppText.h6medium.copyWith(
                  color: AppColor.grayColor.shade200,
                ),
              ),
            ),
          ),
        ),
        AppSpace.horizontal4,
        sendRecordButton,
      ],
    );
  }
}
