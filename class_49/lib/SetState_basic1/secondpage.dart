import 'package:class_49/SetState_basic1/homepage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final int counter;
  final String title;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;

  const SecondPage(
      {Key? key,
      required this.counter,
      required this.title,
      required this.decrementCounter,
      required this.incrementCounter})
      : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _decrementCounter() {
    widget.decrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                                counter: widget.counter,
                                title: 'Home',
                                decrementCounter: widget.decrementCounter,
                                incrementCounter: widget.incrementCounter,
                              )));
                },
                child: Text('Back')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
