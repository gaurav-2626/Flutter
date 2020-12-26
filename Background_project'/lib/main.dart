import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

//stateless
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme : ThemeData.dark(),
      home : Scaffold(
        appBar : AppBar(
          title : Text('Random Background'),
        ),
        body : HomePage(),
      ),
    );
  }
}

//stateful
class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.orange,
  ];

  var currentColor = Colors.white;
  var buttonColor = Colors.black;

  setRandomColor(){
    var rnd = Random().nextInt(7);
    var rand1 = Random().nextInt(7);

    setState((){
      currentColor = colors[rnd];
      buttonColor = colors[rand1];
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color : currentColor,
      child : Center(
        child: RaisedButton(
          color : buttonColor,
          padding : EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child : Text('Change it !',
            style : TextStyle(
              fontSize: 20 , 
              fontWeight : FontWeight.bold,
            ),
          ),
          onPressed : setRandomColor,
          shape : RoundedRectangleBorder(
            borderRadius : BorderRadius.circular(30.0), 
            ),
        ),
      ),
    );
  }
}

