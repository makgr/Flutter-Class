import 'dart:async';

import 'package:class_50/provider_Watch/timer_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  _MyHome1State createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {


  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
     var timerModel = Provider.of<TimerModel>(context, listen: false);
     timerModel.updateCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Hello.....');
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHome1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/clock.png',scale: 5,),
            SizedBox(height: 10,),
            Consumer<TimerModel>(
              builder: (context, data, child){
                return Text(data.getCounter().toString(),textScaleFactor: 2,);
              },
            ),
          ],
        ),
      ),
    );
  }
}
