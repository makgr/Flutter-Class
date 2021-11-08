import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: App(),
  ));
  
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'),
      ),

      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Hello      ',style: TextStyle(color: Colors.black,fontSize: 20)),
              TextSpan(text: 'World',style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w700)),
            ]

        )),
      ),
    );
  }

}