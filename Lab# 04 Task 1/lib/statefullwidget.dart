import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  int i = 1;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: ()
                      {
                        setState(() {
                          i=Random().nextInt(6)+1;
                        });
                      },
                      child: Image.asset('images/dice$i.png')
          ),
                ],
              ),
            ),
          ),
        )
    );
  }
}