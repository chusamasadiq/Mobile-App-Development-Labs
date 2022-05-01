import 'package:flutter/material.dart';
import 'package:routes/SecondScreen.dart';
import 'package:routes/FirstScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        '/second': (context)=>SecondScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.

      },
    ),
  );
}

