import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: Text(
        sayHello(),
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.deepOrange, fontSize: 30),
      )),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    if (hour < 12) {
      hello = "Good morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good evening";
    }
    return hello;
  }
}
