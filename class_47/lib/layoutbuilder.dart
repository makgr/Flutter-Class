import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatefulWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  _MyLayoutBuilderState createState() => _MyLayoutBuilderState();
}

class _MyLayoutBuilderState extends State<MyLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: LayoutBuilder(
        builder: (context, constrains)=>
         Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: constrains.maxHeight * .5,
                  width: constrains.maxWidth * .5,
                  color: Colors.blue,
                ),
                Container(
                  height: constrains.maxHeight * .5,
                  width: constrains.maxWidth * .5,
                  color: Colors.orange,
                ),
              ],
            ),
            Container(
              height: constrains.maxHeight * 1,
              width: constrains.maxWidth * .5,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
