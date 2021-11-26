import 'package:class_33/signUp.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

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
        '/' : (context) => LoginPage(),
        '/login' : (context) => LoginPage(),
        '/signUp' : (context) => SignUpPage(),

      },
    );
  }
}
