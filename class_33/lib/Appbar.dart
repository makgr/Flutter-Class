import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyAppbar(),
  ));
}

class MyAppbar extends StatefulWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          backgroundColor: Colors.deepOrange,
          title: Text('Appbar'),
          centerTitle: true,

          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings),),
          ],
          bottom: TabBar(
            indicatorColor: Colors.orangeAccent,
              indicatorWeight: 4,
              tabs: [
            Tab(
              icon: Icon(Icons.face),
              child: Text('Profile'),
            ),
            Tab(icon: Icon(Icons.home),
              child: Text('Home'),
            ),
            Tab(
              icon: Icon(Icons.settings),
              child: Text('Settings'),
            ),
            Tab(
              icon: Icon(Icons.add),
              child: Text('Add'),
            ),
            
          ]),
        ),
      ),
    );
  }
}
