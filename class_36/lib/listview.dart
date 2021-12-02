import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyListView(),
  ));
}
class MyListView extends StatefulWidget {
  const MyListView({ Key? key }) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
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
      
    );
  }
}