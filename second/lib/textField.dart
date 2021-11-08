import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: SignUp(),
  ));
}

class SignUp extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
                hintText: 'Enter UserName',
                
              ),
              keyboardType: TextInputType.text ,
            ),

            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter Email',
              ),
              keyboardType: TextInputType.emailAddress,
              
            ),

            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Password',

              ),

              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Confirm Password',

              ),
              keyboardType: TextInputType.visiblePassword,
            )
          ],
        ),
      ),
    );
  }
}