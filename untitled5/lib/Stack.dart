import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyStack(),
  ));
}

class MyStack extends StatefulWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 400,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 30,
                right: 30,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                )),
            Positioned(
              top: 30,
                left: 30,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.deepOrange,
                ))

          ],
        ),
      ),
    );
  }
}
