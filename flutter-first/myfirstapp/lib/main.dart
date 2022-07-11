import 'package:flutter/material.dart';

/// 案例1：简单的无限列表示例
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: ListView(
      padding: const EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 500,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text('Item 1'),
                  subtitle: Text('Subtitle 1'),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          height: 100,
          color: Colors.red,
        )
      ],
    ))));
  }
}
