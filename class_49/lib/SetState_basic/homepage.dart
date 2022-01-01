import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  void incrementCounter(){
    counter ++;

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    print('Hello World');
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic StateManagement'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(counter.toString(),textScaleFactor: 1.5,),
            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: Size(150, 50),
              ),
                onPressed: incrementCounter, child: Text('Add',textScaleFactor: 1.3,)),
          ],
        ),
      ),
    );
  }
}
