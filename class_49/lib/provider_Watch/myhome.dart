import 'dart:async';

import 'package:class_49/provider_Watch/timer_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  _MyHome1State createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {

  int initialValue = 60;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      var timerInfo = Provider.of(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/clock.png',scale: 5,),
            SizedBox(height: 20,),
            Consumer(
              builder: (context, data, child){
              return Text(data.toString(),textScaleFactor: 2,);
            },)
          ],
        ),
      ),
    );
  }
}
