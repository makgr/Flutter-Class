import 'package:class_43/item.dart';
import 'package:class_43/item_widget.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyItem(),
  ));
  
}

class MyItem extends StatefulWidget {
  const MyItem({ Key? key }) : super(key: key);

  @override
  _MyItemState createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {

  final dummyList = List.generate(50, (index) => ItemModel.item[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Model'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(
            item: dummyList[index],
          );
        }
      ),
    );
  }
}