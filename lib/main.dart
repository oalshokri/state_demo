import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String data = 'top secret data';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Level1(data),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  String data;
  Level1(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(data),
    );
  }
}

class Level2 extends StatelessWidget {
  String data;
  Level2(this.data);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Level3(data),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  String data;
  Level3(this.data);
  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
