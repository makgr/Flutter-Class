import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int initialvalue = 60;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      initialvalue--;
      setState(() {
        if(initialvalue == 0){
          initialvalue = 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Hello World');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/clock.png',scale: 5,),
            SizedBox(height: 20,),
            Text(initialvalue.toString(),textScaleFactor: 2,),
          ],
        ),
      ),
    );
  }
}
