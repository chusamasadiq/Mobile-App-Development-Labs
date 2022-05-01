import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: Text("Mobile App Dev Lab"),
              backgroundColor: Colors.brown,
            ),
            // ignore: prefer_const_constructors
            body: Center(
              child: Text("You have pressed the button 0 time"),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              tooltip: 'This button is not functional',
              onPressed: () => {},
            )
        ),
      )
  );
}

