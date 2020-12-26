import 'package:flutter/material.dart';
import  'HomePage.dart';

//update pubspec.yaml for images

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'DiceRoller',
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        primarySwatch : Colors.yellow
      ),
      home : HomePage(),
    );
  }
}
