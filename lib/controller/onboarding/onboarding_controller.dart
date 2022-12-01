import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/constant/keys.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingController with ChangeNotifier {
  final HiveStorageService _storageService = getIt<HiveStorageService>();
  bool _hasSeenOnboarding = false;
  bool get hasSeenOnboarding => _hasSeenOnboarding;

  void setHasSeenOnboarding(BuildContext context) {
    _hasSeenOnboarding = true;
    _storageService.storeItem(key: onBoarded, value: _hasSeenOnboarding);
    context.go('/setup');
    notifyListeners();
  }
}
