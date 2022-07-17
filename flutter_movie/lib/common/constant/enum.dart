import 'package:flutter_movie/common/utils/util.dart';

enum Code { BBC, BLOOMBERG, CNN, FOX, NBC, RT }

final codeValues = EnumValues({
  "bbc": Code.BBC,
  "bloomberg": Code.BLOOMBERG,
  "cnn": Code.CNN,
  "fox": Code.FOX,
  "nbc": Code.NBC,
  "rt": Code.RT
});


enum Title { LATEST, WORLD, BUSINESS, SPORTS, LIFE, EDUCATION }

final titleValues = EnumValues({
  "Business": Title.BUSINESS,
  "Education": Title.EDUCATION,
  "Latest": Title.LATEST,
  "Life": Title.LIFE,
  "Sports": Title.SPORTS,
  "World": Title.WORLD
});

enum Category {
  MOBILE,
  SCIENCE,
  LAPTOP,
  EBOOK,
  TABLET,
  GAMING,
  GADGET,
  TRANSPORTATION,
  ROBOT,
  SPACE
}

final categoryValues = EnumValues({
  "ebook": Category.EBOOK,
  "gadget": Category.GADGET,
  "gaming": Category.GAMING,
  "laptop": Category.LAPTOP,
  "mobile": Category.MOBILE,
  "robot": Category.ROBOT,
  "science": Category.SCIENCE,
  "space": Category.SPACE,
  "tablet": Category.TABLET,
  "transportation": Category.TRANSPORTATION
});

enum Tag {
  APPLE,
  LED,
  SANXING,
  GALAXY,
  MBP,
  MATE_BOOK,
  PRO,
  MAC_BOOK,
  SWIFT3,
  AMD,
  CHROMEBOOK,
  LIANXIANG,
  LEGION,
  Y740_S,
  GRAM
}

final tagValues = EnumValues({
  "AMD": Tag.AMD,
  "apple": Tag.APPLE,
  "Chromebook": Tag.CHROMEBOOK,
  "Galaxy": Tag.GALAXY,
  "Gram": Tag.GRAM,
  "LED": Tag.LED,
  "Legion": Tag.LEGION,
  "lianxiang": Tag.LIANXIANG,
  "MacBook": Tag.MAC_BOOK,
  "MateBook": Tag.MATE_BOOK,
  "MBP": Tag.MBP,
  "pro": Tag.PRO,
  "sanxing": Tag.SANXING,
  "Swift3": Tag.SWIFT3,
  "Y740S": Tag.Y740_S
});

enum Channel { FOX, NBA, SPORT, GAME, NEWS }

final channelValues = EnumValues({
  "FOX": Channel.FOX,
  "GAME": Channel.GAME,
  "NBA": Channel.NBA,
  "NEWS": Channel.NEWS,
  "SPORT": Channel.SPORT
});