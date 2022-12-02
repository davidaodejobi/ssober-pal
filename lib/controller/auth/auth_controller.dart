import 'dart:developer';

import 'package:addictionsupportroom/model/user_res_model.dart';
import 'package:addictionsupportroom/services/auth_services.dart';
import 'package:addictionsupportroom/view/shared/toast.dart';
import 'package:flutter/widgets.dart';

class AuthController with ChangeNotifier {
  List<String> avatars = [
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-1_vojlf8.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-2_rby0kd.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-3_k8dkca.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-4_nex8pc.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336099/profile/avatar-5_ndvnpi.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336099/profile/avatar-6_q1ogai.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336099/profile/avatar-7_crzacb.png",
    "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336099/profile/avatar-8_rdeq8a.png",
  ];
  final nickNameController = TextEditingController();
  bool isLoading = false;

  startLoading() {
    isLoading = true;
    notifyListeners();
  }

  stopLoading() {
    isLoading = false;
    notifyListeners();
  }

  String _avatar =
      "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-1_vojlf8.png";

  String get avatar => _avatar;

  void toggleAvatar(String avatar) {
    _avatar = avatar;
    notifyListeners();
  }

  bool validation(BuildContext context) {
    if (nickNameController.text.isEmpty) {
      errorToast(context, message: 'Please enter your nickname');
      return false;
    }
    return true;
  }

  signUserIn() async {
    startLoading();
    try {
      UserRes res = await AuthService().signIn(
        nickNameController.text,
        avatar,
      );

      if (res.id != null) {
        log('res.id != null: ${res.id != null}');
        stopLoading();
        return true;
      } else {
        stopLoading();
        return false;
      }
    } catch (e) {
      stopLoading();
      return false;
    }
  }
}
