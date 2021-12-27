import 'package:class_46/Pages/routes.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _key = GlobalKey<FormState>();
  gotLogin(BuildContext context){
    if(_key.currentState!.validate()){
      Navigator.pushNamed(context, Routes.login);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _key,
              child: Column(
            children: [
              Image.asset('assets/images/login.png',height: 200,),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter UserName',
                  label: Text('UserName')
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    label: Text('Password')
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

              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Confirm Password',
                    label: Text('Confirm Password')
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
                  gotLogin(context);
                  }, child: Text('Login')),
            ],
          )),
        ),
      ),
    );
  }
}
