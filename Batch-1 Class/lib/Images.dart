import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: MyImages(),
  ));
}

class MyImages extends StatefulWidget {
  MyImages({Key? key}) : super(key: key);

  @override
  _MyImagesState createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'Assets/Images/car.jpg',
                  height: 300,
                  width: 300,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1624300629298-e9de39c13be5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
