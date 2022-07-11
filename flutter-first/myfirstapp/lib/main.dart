import 'package:flutter/material.dart';

/// 案例1：简单的无限列表示例
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(10), // 内边距
          alignment: Alignment.center, // 内容居中
          child: Image.asset(
              "assets/images/touxiang.jpg",
              fit: BoxFit.fitHeight)), // 图片
    );
  }
}
