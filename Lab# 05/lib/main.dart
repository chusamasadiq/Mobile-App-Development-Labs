import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp( app());
}
class app extends StatelessWidget {

  //const app({Key? key}) : super(key: key);
  int i= 1;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(),
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Ask Me Anything"),
            ),
            body: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: ()
                      {
                        i=Random().nextInt(5)+1;
                        print('I got Clicked');
                      },

                      child: Image.asset('ball$i.png'),

                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

  }
  class Examtest extends StatelessWidget {
    Examtest({Key? key}) : super(key: key);
    dynamic examTest=1;
  
    @override
    Widget build(BuildContext context) {
      examTest = "NTU";
      return Container();
    }
  }
  
  

