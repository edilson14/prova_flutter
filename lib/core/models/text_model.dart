// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InfoModel {
  final String text;
  int? createdAt;

  InfoModel({
    required this.text,
    this.createdAt,
  }) {
    createdAt ?? DateTime.now().microsecondsSinceEpoch;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'createdAt': createdAt,
    };
  }

  factory InfoModel.fromMap(Map<String, dynamic> map) {
    return InfoModel(
      text: map['text'] as String,
      createdAt: map['createdAt'] != null ? map['createdAt'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoModel.fromJson(String source) =>
      InfoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
