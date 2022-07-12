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
      title: '我的app',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  String _msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('这是表单'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            TextField(
              decoration:
                  InputDecoration(hintText: '输入用户名', icon: Icon(Icons.people)),
              onChanged: (value) {
                setState(() {
                  _msg = value;
                });
              },
            ),
            Text(_msg)
          ]),
        ));
  }
}
