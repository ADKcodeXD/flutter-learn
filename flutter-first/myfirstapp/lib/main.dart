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
        child: ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.android),
          title: Text(list[index]),
          subtitle: Text("我是子标题$index"),
          trailing: const Icon(Icons.arrow_right_rounded),
        );
      },
      padding: const EdgeInsets.all(10),
    ));
  }
}
