import 'package:flutter_movie/common/constant/constant.dart';

class ChannelsResponseEntity {
  ChannelsResponseEntity({
    required this.code,
    required this.title,
  });

  final Code code;
  final Code title;

  factory ChannelsResponseEntity.fromJson(Map<String, dynamic> json) =>
      ChannelsResponseEntity(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}


