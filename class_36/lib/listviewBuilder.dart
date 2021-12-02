import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ListViewBuilder(),
  ));
}

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({ Key? key }) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {

final number = List.generate(100, (index) => ('Items: $index'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index){

          final items = number[index];

          return Text(items);


        }
      ),
      
    );
  }
}