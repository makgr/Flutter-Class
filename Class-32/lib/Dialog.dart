import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  MyDialog({Key? key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AlertDialog(
              title: Text(
                'Delete File',
                style: TextStyle(color: Colors.black),
              ),
              content: Text('Are you Confirm ?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Yes')),
              ],
            ),
            CupertinoAlertDialog(
              title: Text(
                'Delete File',
                style: TextStyle(color: Colors.black),
              ),
              content: Text('Are you Confirm ?'),
              actions: [
                CupertinoDialogAction(child: Text('No')),
                CupertinoDialogAction(child: Text('Yes')),
              ],
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                'Delete File',
                                style: TextStyle(color: Colors.black),
                              ),
                          content: Text('Are You Confirm ?'),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            },child: Text('No'),),

                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            },child: Text('No'),)
                          ],
                            ));
                  },
                  child: Text('Delete')),
            )
          ],
        ),
      ),
    );
  }
}
