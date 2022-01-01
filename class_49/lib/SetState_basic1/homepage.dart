import 'package:class_49/SetState_basic1/secondpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final int counter;
  final String title;
  final ValueChanged<void> incrementCounter;
  final ValueChanged<void> decrementCounter;

  const MyHomePage(
      {Key? key,
      required this.counter,
      required this.title,
      required this.incrementCounter,
      required this.decrementCounter})
      : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void onpressed(){
    widget.incrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.counter.toString()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage(
                        title: 'Second Page',
                        counter: widget.counter,
                        decrementCounter: widget.decrementCounter,
                        incrementCounter: widget.incrementCounter,
                      )));
                },
                child: Text('Next')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: onpressed),
    );
  }
}
