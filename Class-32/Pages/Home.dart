import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SignUp(),
        '/login' : (context) => LoginPage(),
        '/signUp' : (context) => SignUp(),
      },
    );
  }
}