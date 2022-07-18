import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_movie/common/utils/util.dart';

class NewsResponseEntity {
  NewsResponseEntity({
    required this.counts,
    required this.items,
    required this.page,
    required this.pages,
    required this.pagesize,
  });

  int counts;
  List<Item> items;
  int page;
  int pages;
  int pagesize;

  factory NewsResponseEntity.fromJson(Map<String, dynamic> json) =>
      NewsResponseEntity(
        counts: json["counts"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        page: json["page"],
        pages: json["pages"],
        pagesize: json["pagesize"],
      );

  Map<String, dynamic> toJson() => {
        "counts": counts,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "page": page,
        "pages": pages,
        "pagesize": pagesize,
      };
}

class Item {
  Item({
    required this.addtime,
    required this.author,
    required this.category,
    required this.id,
    required this.thumbnail,
    required this.title,
    required this.url,
  });
  String addtime;

  String author;

  Category category;

  String id;

  String thumbnail;

  String title;

  String url;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        addtime: json["addtime"],
        author: json["author"],
        category: json["category"],
        id: json["id"],
        thumbnail: json["thumbnail"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "addtime": addtime,
        "author": author,
        "category": categoryValues.reverse[category],
        "id": id,
        "thumbnail": thumbnail,
        "title": title,
        "url": url,
      };
}

///请求新闻的实体类
class NewsRequestEntity {
  NewsRequestEntity(
      {this.categoryCode, this.channelCode, this.keyword, this.tag});
  String? categoryCode;
  String? channelCode;
  String? keyword;
  String? tag;
  factory NewsRequestEntity.fromJson(Map<String, dynamic> json) =>
      NewsRequestEntity(
        categoryCode: json["categoryCode"],
        channelCode: json["channelCode"],
        keyword: json["keyword"],
        tag: json["tag"],
      );

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "keyword": keyword,
        "tag": tag,
      };
}

///新闻推荐的响应实体类
class NewsRecommandResponseEntity {
  NewsRecommandResponseEntity({
    required this.addtime,
    required this.author,
    required this.category,
    required this.id,
    required this.thumbnail,
    required this.title,
    required this.url,
  });
  String addtime;

  String author;

  Category category;

  String id;

  String thumbnail;

  Title title;

  String url;

  factory NewsRecommandResponseEntity.fromJson(Map<String, dynamic> json) =>
      NewsRecommandResponseEntity(
        addtime: json["addtime"],
        author: json["author"],
        category: json["category"],
        id: json["id"],
        thumbnail: json["thumbnail"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "addtime": addtime,
        "author": author,
        "category": category,
        "id": id,
        "thumbnail": thumbnail,
        "title": title,
        "url": url,
      };
}


///请求新闻推荐的实体类
class NewsRecommandRequestEntity {
  NewsRecommandRequestEntity(
      {this.categoryCode, this.channelCode, this.keyword, this.tag});
  String? categoryCode;
  String? channelCode;
  String? keyword;
  String? tag;
  factory NewsRecommandRequestEntity.fromJson(Map<String, dynamic> json) =>
      NewsRecommandRequestEntity(
        categoryCode: json["categoryCode"],
        channelCode: json["channelCode"],
        keyword: json["keyword"],
        tag: json["tag"],
      );

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "keyword": keyword,
        "tag": tag,
      };
}

