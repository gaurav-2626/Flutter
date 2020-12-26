import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title : 'First flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor : Colors.greenAccent,
      accentColor: Colors.orangeAccent,
    ),
    home : Scaffold(
      appBar : AppBar(
        title : Text('Flutter App'),
        //backgroundColor: Colors.black,
      ),
      body: Center(
        //child: Text('Line 1'),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is line 1'),
              Text('line 2'),
              RaisedButton(
                onPressed: (){},
                child : Text('SignUp'),
                color : Colors.orange,
                splashColor: Colors.blue,
                ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed : (){},
        child : Icon(
          Icons.add_a_photo,
          //color: Colors.white,
        ),
      ),
    ),
  );
  
  }
}
