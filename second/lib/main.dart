import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null),
      appBar: AppBar(
        title: Text('This is Appbar'),
      ),
      body: Center(
        child: 
        Text('Hello World',
        textAlign: TextAlign.left,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 30,
          backgroundColor: Colors.pinkAccent,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        
          ),),
      ),
    );
  }
}