import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyBottombar(),
  ));
}

class MyBottombar extends StatefulWidget {
  const MyBottombar({Key? key}) : super(key: key);

  @override
  _MyBottombarState createState() => _MyBottombarState();
}

class _MyBottombarState extends State<MyBottombar> {

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom bar'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blue,
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
          backgroundColor: Colors.deepOrange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
          backgroundColor: Colors.indigo,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.deepPurple
        ),

      ]),
    );
  }
}
