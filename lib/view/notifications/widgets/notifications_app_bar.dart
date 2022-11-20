import 'package:addictionsupportroom/util/text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: const Text(
      "Notifications",
      style: AppText.h5regular,
    ),
    leading: GestureDetector(
      onTap: () => AutoRouter.of(context).pop(),
      child: const Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
  );
}
