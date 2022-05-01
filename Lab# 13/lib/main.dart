import 'package:flutter/material.dart';
import 'package:lab13/signin.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SignScreen(),
    );
  }
}

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  _SignScreenState createState() => _SignScreenState();

}


class _SignScreenState extends State<SignScreen> {
  String? Username;
  String? Password;
  String DefaulUsername='Usama';
  String DefaultPassword='Sadiq';
  bool Result = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In Screen"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                  ),
                  onChanged: (EnteredUsername){
                    Username=EnteredUsername;
                  },
                ),
                Padding(padding: EdgeInsets.only(
                  top: 20,
                )),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                  ),
                  onChanged: (EnteredPassword){
                    Password=EnteredPassword;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn(Username: Username, Password: Password)));
                },
                    child: Text('Sign In')
                ),


              ],
            ),
          ),
        )
    );
  }
}

// if(Username == DefaulUsername && Password == DefaultPassword)
// {
// Text('True');
// }
// else{
// Text('False');
// }