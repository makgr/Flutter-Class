import 'package:class_46/Pages/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  gotoHome(BuildContext context){
    if(_key.currentState!.validate()){
      Navigator.pushNamed(context, Routes.home);
    }

  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _key,
            child: Column(
          children: [
            Image.asset('assets/images/login.png',height: 250,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter UserName',
                label: Text('UserName'),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'UserName can not empty';
                }
                return null;
              },

            ),

            SizedBox(height: 10,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                label: Text('Password'),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Password can not empty';
                }else if(value!.length<6){
                  return 'Password contain must 6 charecter';
                }
                return null;
              },

            ),

            SizedBox(height: 10,),

            ElevatedButton(
              style: TextButton.styleFrom(
                minimumSize: Size(150, 50),
              ),
                onPressed: () {

                gotoHome(context);

                }, child: Text('Login',textScaleFactor: 1.2,)),
          ],
        )),
      ),
    );
  }
}
