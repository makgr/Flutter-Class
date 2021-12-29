import 'package:class_47/layoutbuilder.dart';
import 'package:class_47/mediaquery.dart';
import 'package:class_47/responseUi.dart';
import 'package:class_47/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => MyMediaQuery(),
        Routes.responseUi: (context) => ResponseUi(),
        Routes.layoutBuilder: (context) => MyLayoutBuilder(),
        Routes.MediaQuery : (context) => MyMediaQuery(),
      },
    );
  }
}
