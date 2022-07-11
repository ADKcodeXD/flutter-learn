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
  List<Widget> list = [];
  HomeContent({super.key}) {
    for (int i = 0; i < 20; i++) {
      list.add(
        OutlinedButton(
          onPressed: () {
            print('IconButton$i');
          },
          child:
              Text('第$i个', style: TextStyle(fontSize: 20, color: Colors.blue)),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.yellow[50],
            width: double.infinity,
            height: double.infinity,
            child: Wrap(
              children: list,
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center, // 主轴分布
              runAlignment: WrapAlignment.spaceEvenly, // 纵轴分布
            )));
  }
}
