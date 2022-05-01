import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({required this.Username, required this.Password});
    String? Username;
    String? Password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Username:  $Username'),
              SizedBox(
                height: 20,
              ),
              Text('Password: $Password'),
            ],
          ),


        ),

      ),

    );
  }
}
