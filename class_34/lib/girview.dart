import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGridView(),
  ));
}

class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

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
          crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 4,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}
