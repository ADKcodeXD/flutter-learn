import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _welcomeHeader() {
    return Text(
      'Welcome to Flutter',
    );
  }

  Widget _welcomeBody() {
    return Text(
      'Features of Flutter',
    );
  }

  Widget _welcomeStartButton() {
    return ElevatedButton(
      child: Text('Start'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WelcomePage',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            children: [_welcomeHeader(), _welcomeBody(), _welcomeStartButton()],
          ),
        ),
      ),
    );
  }
}
