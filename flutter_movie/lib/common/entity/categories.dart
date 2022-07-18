import 'package:flutter_movie/common/constant/constant.dart';

class CategoriesResponseEntity {
  CategoriesResponseEntity({
    required this.code,
    required this.title,
  });

  String code;
  Title title;
  factory CategoriesResponseEntity.fromJson(Map<String, dynamic> json) =>
      CategoriesResponseEntity(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}


