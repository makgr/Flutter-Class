import 'package:class_33/signUp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String imageUrl ='https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60';
  String imageUrl1= 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl1),
                ),
                  accountName: Text('Sompod vai'),
                  accountEmail: Text('sompod@gmail.com')),

              ListTile(
                onTap: (){
                  print('Click Profile');
                },
                leading: Icon(Icons.face,color: Colors.white,),
                title: Text('Profile',style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.email,color: Colors.white,),
                title:Text('Email',style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.home,color: Colors.white,),
                title:Text('Home',style: TextStyle(color: Colors.white),),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
        } ,child: Text('SignUp'),),
      ),
    );
  }
}
