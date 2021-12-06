import 'package:class_38/notification.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCheckBox(),
  ));
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({ Key? key }) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {

  bool value = false;

  final notifications =[
    CheckboxSettings(title: 'Checkbox 1'),
    CheckboxSettings(title: 'Checkbox 2'),
    CheckboxSettings(title: 'Checkbox 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: ListView(
        children: [
         ...notifications.map(buildSingleCheckbox).toList(),
        ],
      ),
      
    );
  }

  Widget buildSingleCheckbox(CheckboxSettings checkboxSettings) =>
  buildCheckbox(
    checkboxSettings: checkboxSettings,
    voidCallback: (){
      setState(() {
        final newValue = !checkboxSettings.value;
        checkboxSettings.value = newValue;
      });
    }
  ); 

  Widget buildCheckbox({
    required CheckboxSettings checkboxSettings,
    required VoidCallback voidCallback,
  }) => ListTile(
    onTap: voidCallback,
    leading: Checkbox(
      value: checkboxSettings.value,
      onChanged: (value) => voidCallback(),
    ),
    title: Text(checkboxSettings.title,style: TextStyle(fontSize: 20),),
  );
}