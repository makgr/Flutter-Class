import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter = 60;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      counter --;

      setState(() {
        if(counter == 0){
          counter = 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Hello.............');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/clock.png',scale: 5,),
            SizedBox(height: 10,),
            Text(counter.toString(),textScaleFactor: 2,),
          ],
        ),
      ),
    );
  }
}
