import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  onPrimary: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                ),
                onPressed: () {
                  print('Hello Elevated Button');
                },
                onLongPress: () {
                  print('Hello Long Press');
                },
                child: Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  print('Hello Text Button');
                },
                onLongPress: () {
                  print('Hello Long Press');
                },
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green,width: 4),

                ),
                  onPressed: () {
                    print('Hello Outline Button');
                  },
                  onLongPress: () {
                    print('Hello Long Press');
                  },
                  child: Text(
                    'Outlined Button',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
