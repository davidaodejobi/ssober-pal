// To parse this JSON data, do
//
//     final userRes = userResFromJson(jsonString);

import 'dart:convert';

UserRes userResFromJson(String str) => UserRes.fromJson(json.decode(str));

String userResToJson(UserRes data) => json.encode(data.toJson());

class UserRes {
  UserRes({
    this.id,
    this.username,
    this.avatar,
    this.accessToken,
  });

  final int? id;
  final String? username;
  final String? avatar;
  final AccessToken? accessToken;

  factory UserRes.fromJson(Map<String, dynamic> json) => UserRes(
        id: json["id"],
        username: json["username"],
        avatar: json["avatar"],
        accessToken: json["access_token"] == null
            ? null
            : AccessToken.fromJson(json["access_token"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "avatar": avatar,
        "access_token": accessToken == null ? null : accessToken!.toJson(),
      };
}

class AccessToken {
  AccessToken({
    this.token,
    this.tokenType,
  });

  final String? token;
  final String? tokenType;

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        token: json["token"],
        tokenType: json["token_type"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "token_type": tokenType,
      };
}
