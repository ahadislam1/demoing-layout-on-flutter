import 'package:flutter/material.dart';

void main() => runApp(My3rdApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class My2ndApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Center(
        child: Text('Hello World',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 32, color: Colors.black87)),
      ),
    );
  }
}

class My3rdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildRow(),
    );
  }

  Widget buildRow() =>
  Row(
    textDirection: TextDirection.ltr,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(
        Icons.ac_unit,
        textDirection: TextDirection.ltr,
        color: Colors.blueGrey,
      ),
      Icon(
        Icons.access_alarm,
        textDirection: TextDirection.ltr,
        color: Colors.orange,
      )
    ],
  );
}
