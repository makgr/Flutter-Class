import 'package:class_46/Pages/home.dart';
import 'package:class_46/Pages/login.dart';
import 'package:class_46/Pages/routes.dart';
import 'package:class_46/Pages/signup.dart';
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
        '/' : (context) => SignUpPage(),
        Routes.login: (context) => LoginPage(),
        Routes.signUp : (context) => SignUpPage(),
       Routes.home : (context) => HomePage(),
      },
    );
  }
}
