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
        home: SafeArea(
          child: Scaffold(
           //appBar: AppBar(),
            body: Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                    onPressed:()
                      {

                      },
                      child: Text('Enabled')
                  ),
                    TextButton(
                      onPressed: ()
                      {

                      },
                      child: Text('Enabled')
                  ),
                    IconButton(onPressed:()
                    {

                    },
                      icon: Icon(Icons.volume_up))
                ],

              ),
            ),
          ),
        ),
        ),
    );
  }
}

