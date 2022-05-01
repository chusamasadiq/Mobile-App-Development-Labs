import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title:Column(
            children: [
              CircleAvatar(
                radius: 8.0,
                child: ClipRRect(
                  child: Image.asset('image/pic.jpg'),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              Text("I Am Rick"),
            ],
          ),
          backgroundColor: Colors.pink,
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

