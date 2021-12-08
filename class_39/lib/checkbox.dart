import 'package:class_39/checkboxnotity.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCheckbox(),
  ));
}

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool value = false;

  CheckboxNotification _checkboxNotification = CheckboxNotification(title: 'MasterCheckbox');

  final checkboxList = [
    CheckboxNotification(title: 'Checkbox 1'),
    CheckboxNotification(title: 'Checkbox 2'),
    CheckboxNotification(title: 'Checkbox 3'),
    CheckboxNotification(title: 'Checkbox 4'),
    CheckboxNotification(title: 'Checkbox 5'),
    CheckboxNotification(title: 'Checkbox 6'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: ListView(
        children: [
          buildMasterCheckbox(_checkboxNotification),
         ...checkboxList.map(buildSingleCheckbox).toList(),
        ],
      ),
    );
  }

  Widget buildMasterCheckbox(CheckboxNotification _checkboxNotification) => 
  buildCheckbox(
    checkboxNotification: _checkboxNotification,
     voidCallback: () {
       setState(() {
         final newValue = !_checkboxNotification.value;
        _checkboxNotification.value = newValue;

        checkboxList.forEach((_checkboxNotification) {
           _checkboxNotification.value = newValue;
         }
         );

       });
     },
     );

  Widget buildSingleCheckbox(CheckboxNotification checkboxNotification) =>
  buildCheckbox(
    checkboxNotification: checkboxNotification,
    voidCallback: () {
      setState(() {
        final newValue = !checkboxNotification.value;
        checkboxNotification.value = newValue;
      });
    },
  );

  Widget buildCheckbox({
    required CheckboxNotification checkboxNotification,
    required VoidCallback voidCallback,
  }) => ListTile(
    onTap: voidCallback,
        leading: Checkbox(
          value: checkboxNotification.value,
          onChanged: (value) => voidCallback(),
        ),
        title: Text(checkboxNotification.title,style: TextStyle(fontSize: 20),),
      );
}
