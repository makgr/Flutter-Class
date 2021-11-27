import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyAppBar(),
  ));
}

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {

  Widget buildText(String text) =>
      Center(child: Text(text,style: TextStyle(fontSize: 30),));


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
         title: Text('Appbar'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
          bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), child: Text('Home'),),
                Tab(icon: Icon(Icons.person),child: Text('Profile'),),
                Tab(icon: Icon(Icons.add), child: Text('Add'),),
                Tab(icon: Icon(Icons.settings),child: Text('Settings'),),


              ]),
        ),
        body: TabBarView(children: [
          // Center(child: Text('Home',style: TextStyle(fontSize: 30),)),
          // Center(child: Text('Profile',style: TextStyle(fontSize: 30),)),
          // Center(child: Text('Add',style: TextStyle(fontSize: 30),)),
          // Center(child: Text('Settings',style: TextStyle(fontSize: 30),)),

          buildText('Home'),
          buildText('Profile'),
          buildText('Add'),
          buildText('Settings'),
        ]),
      ),

    );
  }
}
