import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Row(
        children: [
          Expanded(
              child: Text(
            'Panneer big Pizza!',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30.0, decoration: TextDecoration.none),
          )),
          Expanded(
              child: Text(
            'Panneer small Pizza!',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30.0, decoration: TextDecoration.none),
          )),
        ],
      ),
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
    ));
  }
}
