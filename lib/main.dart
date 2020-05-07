import 'package:flutter/material.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My app', home: new HelloYou());
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYoustate();
}

class _HelloYoustate extends State<HelloYou> {
  String name = '';
  final _currencies = ['Pounds', 'euro', 'dollars'];
  String _cure = 'pounds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('helo'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              onChanged: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map<DropdownMenuItem<String>>((String e) {
                return DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
              value: _cure,
              onChanged: (String value) {
                _onchange(value);
              },
            ),
            Text('Hello ' + name + ' !')
          ],
        ),
      ),
    );
  }

  _onchange(String value) {
    setState(() {
      this._cure = value;
    });
  }
}
