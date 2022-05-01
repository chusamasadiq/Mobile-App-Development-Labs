import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentSliderValue=150;
  int weight=50;
  int height=60;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: Scaffold(
            //backgroundColor: Colors.black54,
            appBar: AppBar(
              centerTitle: true,
              title: Text('BMI CALCULATOR'),
            ),
            body: Center(
              child: Column(
                  children: [
                    Row(
                      children: [

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF4C4F5e)
                            ),
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            height: 150,

                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male, size: 50),
                                Text('Male'),
                              ],
                            ),

                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF4C4F5e)
                            ),
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            height: 150,

                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female, size: 50),
                                Text('Female'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF4C4F5e)
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 150,
                              child:Column(
                                children: [
                                  Text("Height"),

                                  Text(currentSliderValue.toString()+"cm"),
                                  Slider(
                                    value: currentSliderValue.toDouble(),
                                    min: 50,
                                    max: 200,
                                    onChanged: (double change){
                                      setState(() {
                                        currentSliderValue=change.round();
                                      });
                                    },
                                  ),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF4C4F5e)
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 150,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Weight'),
                                  Text(weight.toString()),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                       },
                                        backgroundColor: Color(0xFF4C4F5e),
                                        child: Icon(Icons.remove ,color:Colors.white,),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                       },
                                        backgroundColor: Color(0xFF4C4F5e),
                                        child: Icon(Icons.add ,color:Colors.white,),),
                                    ],
                                  )
                                ],
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF4C4F5e)
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 150,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Age'),
                                  Text(age.toString()),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                       },
                                        backgroundColor: Color(0xFF4C4F5e),
                                        child: Icon(Icons.remove ,color:Colors.white,),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                       },
                                        backgroundColor: Color(0xFF4C4F5e),
                                        child: Icon(Icons.add, color:Colors.white),),
                                    ],
                                  )
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF4C4F5e)
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 60,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Text("Calculate"),
                                  FlatButton(
                                      child: Text('Calculate'),
                                    color: Colors.pink,
                                    textColor: Colors.white,
                                    minWidth: 100,
                                    onPressed: ()
                                    {

                                    },
                                  )


                                ],
                              )

                          ),
                        ),
                      ],
                    ),

                  ]),
            )
        ));
  }}