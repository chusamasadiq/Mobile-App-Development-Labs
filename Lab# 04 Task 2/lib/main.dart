import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                   child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                   child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),)
    );
  }
}
