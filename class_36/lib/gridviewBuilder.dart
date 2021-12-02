import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyBuilder(),
  ));
}

class MyBuilder extends StatefulWidget {
  const MyBuilder({ Key? key }) : super(key: key);

  @override
  _MyBuilderState createState() => _MyBuilderState();
}

class _MyBuilderState extends State<MyBuilder> {

final number = List.generate(100, (index) => 'Items: $index ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Builder'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
         mainAxisSpacing: 12,
          crossAxisSpacing: 12

        ),
        itemCount: number.length,
        itemBuilder: (context, index){
          final items = number[index];

          return GridTile(
            header: Icon(Icons.person),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Text(items),
            ),
            footer: Text('Person: $items'),
          );
        }
      ),
      
    );
  }
}