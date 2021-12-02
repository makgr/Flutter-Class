import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGridView(),
  ));
}

class MyGridView extends StatefulWidget {
  const MyGridView({ Key? key }) : super(key: key);

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),

             Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.deepOrange,
            ),
             Container(
              height: 50,
              width: 50,
              color: Colors.indigo,
            ),
            
          ],
          ),
      ),
      
    );
  }
}