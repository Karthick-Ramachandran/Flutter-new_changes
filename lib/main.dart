import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(new HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hello flutter",
        home: Scaffold(appBar: AppBar(title: Text('Karthick')), body: home()));
  }
}
