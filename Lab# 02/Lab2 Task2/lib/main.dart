import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.yellowAccent,
            appBar: AppBar(
              title: Text("I Am Rick"),
              backgroundColor: Colors.pinkAccent,
            ),
            // ignore: prefer_const_constructors
            body: Center(
              child:
              Image.asset('image/pic.jpg'),
              ),
            ),
        ),
  );
}

