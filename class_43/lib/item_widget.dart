import 'package:class_43/item.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  Item item;
  ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.amber,
        elevation: 2.0,
        child: ListTile(
          onTap: () {},
          leading: Image.network(widget.item.itemImage),
          title: Text(widget.item.itemName),
          subtitle: Text(widget.item.itemDesc),
          trailing: Text('\$${widget.item.itemPrice}',textScaleFactor: 1.5,),
        ),
      ),
    );
  }
}
