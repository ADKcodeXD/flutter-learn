import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(List<String> args) {
  runApp(ChangeNotifierProvider<UserInfo>.value(
    value: UserInfo("我是adk", "nickname", 12),
    child: MyApp(),
  ));
}

class UserInfo with ChangeNotifier {
  String username;
  String nickname;
  int age;
  UserInfo(this.username, this.nickname, this.age);
  setUsername(String uname) {
    username = uname;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('你好'),
        ),
        body: Text("你的用户名是${Provider.of<UserInfo>(context).username}"),
      ),
    );
  }
}
