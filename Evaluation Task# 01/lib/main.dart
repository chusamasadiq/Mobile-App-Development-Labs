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
  double fontsize=26;
  Color colorname=Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SafeArea(
          child:Scaffold(
            backgroundColor: Colors.greenAccent,
            appBar: AppBar(
                backgroundColor: Colors.grey,
                title:Text('Android')
            ),
            body: Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                        padding: EdgeInsets.all(20),
                        child:Expanded(
                            child: Text('Hello World',
                              style: TextStyle(
                                color: colorname,
                                fontSize: fontsize,
                              ),
                            )
                        )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                      padding: EdgeInsets.all(20),
                      child:Expanded(
                          child: FlatButton(
                            color: Colors.grey,
                            child: Text('Change font size',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                fontsize=50;
                              });

                            },
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                      padding: EdgeInsets.all(20),
                      child:Expanded(
                          child: FlatButton(
                            color: Colors.grey,
                            child: Text('Change Color',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                colorname=Colors.red;
                              });

                            },
                          )
                      ),
                    )

                  ],
                )
            ),
          ),
        )
    );

  }
}
