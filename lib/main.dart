import 'package:flutter/material.dart';
import 'package:scorechecker/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Score Checker",
      theme: new ThemeData(primarySwatch: Colors.yellow),
      home: new HomePage(),
    );
  }
}
