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
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = [];
  HomeContent({super.key}) {
    for (int i = 0; i < 100; i++) {
      list.add("我是第$i条数据");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.yellow[50],
            width: 500,
            height: 500,
            child: Stack(
              children: [
                Positioned(
                  left: 150,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 180,
                  width: 180,
                  color: Colors.blue,
                ),
                Container(
                  height: 160,
                  width: 160,
                  color: Colors.yellow,
                ),
              ],
            )));
  }
}
