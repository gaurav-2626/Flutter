import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home : MyButton(),
  ));
}


class MyButton extends StatefulWidget{
  @override
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> numbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "deitz"
  ];

  String defaultText = "Spanish numbers";

  void displaySnumbers(){
    setState((){
      defaultText = numbers[counter];
      if(counter < 9){
        counter++;
      }else{
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : Text('My stateful Widget'),
        backgroundColor: Colors.orange,
      ),
      body : Container(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(defaultText,style : TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(10.0),),
            RaisedButton(
              child : Text('Call numbers'),
              onPressed : displaySnumbers,
              color : Colors.orange,
            )
          ],
        ),
      ), 
    );
  }
}