import 'package:flutter/material.dart';
import 'Charts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Dashboard(),
    );
  }
}