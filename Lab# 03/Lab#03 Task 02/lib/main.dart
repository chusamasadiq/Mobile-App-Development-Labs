import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main (){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/Usama.png'),
                    radius: 50,
                  ),

                  Text('Usama Sadiq', style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'ZenKurenaido',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("+92 334 6994830",style:TextStyle(
                          fontSize: 20,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          color:Colors.black,
                        ))
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.email , size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("usamasadiq163@gmail.com", style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          color:Colors.black,
                        ),
                        )
                      ],
                    ),
                  ),

                ]
            ),

          ),
        ),
      ),
    );
  }
}