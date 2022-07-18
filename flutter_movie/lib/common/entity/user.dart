import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_movie/common/utils/util.dart';

/// empty object
// ignore_for_file: constant_identifier_names

class UserLoginResponseEntity {
  UserLoginResponseEntity({
    required this.accessToken,
    this.channels = const <Channel>[],
    this.displayName = '',
  });

  String accessToken;
  List<Channel> channels;
  String displayName;

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        channels: List<Channel>.from(
            json["channels"].map((x) => channelValues.map[x])),
        displayName: json["display_name"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "channels":
            List<dynamic>.from(channels.map((x) => channelValues.reverse[x])),
        "display_name": displayName,
      };
}

class UserLoginRequestEntity {
  UserLoginRequestEntity({
    required this.email,
    required this.password,
  });
  String email;
  String password;

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
