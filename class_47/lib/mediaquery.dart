import 'package:flutter/material.dart';

class MyMediaQuery extends StatefulWidget {
  const MyMediaQuery({Key? key}) : super(key: key);

  @override
  _MyMediaQueryState createState() => _MyMediaQueryState();
}

class _MyMediaQueryState extends State<MyMediaQuery> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * .5,
            color: Colors.blue,
          ),

          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * .5,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
