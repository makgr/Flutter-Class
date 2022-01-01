import 'package:class_49/SetState_basic1/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
    // counter = counter ?? 0;
  }

  void incrementCounter(){
    counter ++;

    setState(() {

    });
  }

  void decrementCounter(){
    counter--;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        counter: counter,
        title: 'First Page',
        incrementCounter: (void value){
          incrementCounter();
        },
        decrementCounter: (void value){
          decrementCounter();
        },
      ),
    );
  }
}
