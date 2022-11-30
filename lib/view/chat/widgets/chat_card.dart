import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/spacing.dart';
import 'package:addictionsupportroom/util/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool isIndividual;
  const ChatCard({
    Key? key,
    this.name = '',
    required this.message,
    required this.time,
    this.isIndividual = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (name.isEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: name.isNotEmpty
                  ? AppColor.grayColor.shade50
                  : AppColor.secondaryColor.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(name.isNotEmpty ? 0 : 16),
                topRight: Radius.circular(name.isNotEmpty ? 16 : 0),
                bottomRight: const Radius.circular(16),
                bottomLeft: const Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (name.isNotEmpty && !isIndividual)
                    GestureDetector(
                      onTap: () {
                        context.go('/main_screen/profile_chat');
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColor.secondaryColor.shade300,
                          ),
                          AppSpace.horizontal8,
                          Text(name, style: AppText.paragraph1bold),
                        ],
                      ),
                    ),
                  if (name.isNotEmpty && !isIndividual) AppSpace.vertical4,
                  Text(
                    message,
                    style: AppText.paragraph1regular,
                  ),
                  AppSpace.vertical4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(),
                      Text(
                        time,
                        style: AppText.paragraph1regular.copyWith(
                          color: AppColor.grayColor.shade300,
                        ),
                      ),
                      if (name.isEmpty) AppSpace.horizontal4,
                      if (name.isEmpty)
                        Icon(
                          Icons.done_all,
                          color: AppColor.secondaryColor.shade700,
                          size: 16,
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        if (name.isNotEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
      ],
    );
  }
}
