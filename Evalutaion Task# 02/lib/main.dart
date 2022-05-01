import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
             backgroundImage: AssetImage('Usama.png')
            ),
            Text('Usama', style: TextStyle(
              fontSize: 20,
                fontFamily: 'ZenKurenaido',
              color: Colors.white
            )
            ),

            Text('Flutter Developer', style: TextStyle(
              fontSize: 20,
              color: Colors.white
            )
            ),

            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone , size: 20,),
                  SizedBox(
                    width: 10,
                  ),
                  Text('+ 92 12345678919'),
                ],
              ),
            ),

            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Icon(Icons.email , size: 20,),
                  SizedBox(
                    width: 10,
                  ),
                  Text('User@ntu.edu.pk'),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
