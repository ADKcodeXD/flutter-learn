import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluro/fluro.dart';

void main(List<String> args) {
  FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的app2',
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Application {
  static FluroRouter router = FluroRouter();
}

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define('/',
        handler: Handler(
          handlerFunc: (context, params) =>
              MyHomePage(title: 'Flutter Demo Home Page'),
        ));
    router.define("/sb",
        handler: Handler(
          handlerFunc: (context, params) => MyHomePage(title: 'this sb page'),
        ));
    router.notFoundHandler = Handler(
      handlerFunc: (context, params) => PageEmpty(),
    );
  }
}

class PageEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Column(children: <Widget>[
        const Text('404'),
        ElevatedButton(
            onPressed: () {
              Application.router.navigateTo(context, '/');
            },
            child: const Text('go back'))
      ]),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title = "";
  MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow[50],
      child: Column(children: [
        ElevatedButton(
            onPressed: () {
              Application.router.navigateTo(context, '/');
            },
            child: const Text('go back')),
        ElevatedButton(
            onPressed: () {
              Application.router.navigateTo(context, '/sb');
            },
            child: const Text('go sb')),
        Text("hello this is ${title}")
      ]),
    );
  }
}
