import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyRadio(),
  ));
}

class MyRadio extends StatefulWidget {
  const MyRadio({ Key? key }) : super(key: key);

  @override
  _MyRadioState createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged:(value) {
                    setState(() {
                      _value = 1;
                    });
                  },
                ),
                Text('Radio 1',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged:(value) {
                    setState(() {
                      _value = 3;
                    });
                  },
                ),
                Text('Radio 2',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged:(value) {
                   setState(() {
                      _value = 3;
                   });
                  },
                ),
                Text('Radio 3',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}