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

  String _avatar =
      "https://res.cloudinary.com/du4c6jbsw/image/upload/v1669336100/profile/avatar-1_vojlf8.png";

  String get avatar => _avatar;

  void toggleAvatar(String avatar) {
    _avatar = avatar;
    notifyListeners();
  }
}
