// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

// ChatModel userModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

// String userModelToJson(ChatModel data) => json.encode(data.toJson());

// {
//       "id": 1,
//       "content": "The message text content or URL to the media file.",
//       "status": "sent",
//       "state": 1,
//       "message_type": "Message type(e.g. 'text' or 'audio' or 'image').",
//       "creation_date": "2022-12-02 16:27:53.893638"
//     }

class ChatModel {
  ChatModel({
    this.content = '',
    this.status,
    this.creationDate,
    this.receiver,
    this.messageType = 'text'
  });

  final String content;
  final String? status;
  final DateTime? creationDate;
  final String messageType;

  // Optional
  final String? receiver;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'status': status,
      'creation_date': creationDate?.millisecondsSinceEpoch,
      'receiver': receiver,
      'message_type': messageType,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      content: map['content'] as String,
      status: map['status'] != null ? map['status'] as String : null,
      creationDate: map['creation_date'] != null
          ? DateTime.parse(map['creation_date'] as String)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
