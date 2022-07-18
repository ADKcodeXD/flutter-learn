import 'package:flutter_movie/common/constant/constant.dart';

class TagsResponseEntity {
  TagsResponseEntity({
    required this.tag,
  });

  Tag tag;

  factory TagsResponseEntity.fromJson(Map<String, dynamic> json) =>
      TagsResponseEntity(
        tag: json["tag"],
      );

  Map<String, dynamic> toJson() => {
        "tag": tag,
      };
}

/// 标签请求的实体类
class TagsRequestEntity {
  String? categoryCode;
  String? channelCode;
  String? tag;
  String? keyword;
  String? newsID;
  TagsRequestEntity({
    this.categoryCode,
    this.channelCode,
    this.tag,
    this.keyword,
    this.newsID,
  });

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "tag": tag,
        "keyword": keyword,
        "newsID": newsID,
      };

  factory TagsRequestEntity.fromJson(Map<String, dynamic> json) =>
      TagsRequestEntity(
        categoryCode: json["categoryCode"],
        channelCode: json["channelCode"],
        tag: json["tag"],
        keyword: json["keyword"],
        newsID: json["newsID"],
      );
}
