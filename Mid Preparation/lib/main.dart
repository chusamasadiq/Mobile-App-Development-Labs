import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomAppBarColor: Colors.lightBlue,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: Colors.lightBlue[700],
              shadowColor: Colors.red
        ),
          primarySwatch: Colors.blue,
          splashColor: Colors.red,
          primaryColor: Colors.lightBlue[700],
          fontFamily: 'Georgia',

          textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),



      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My App for Mid Preparation'),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Usama'),
                  Icon(Icons.airplanemode_active)
                ]
              ),
              Text('18-NTU-CS-1191')
            ],
          ),

        ),
          drawer:Drawer(
          child: ListView(
            children: <Widget>[
              Center(child: Text('It is Drawer')),
              Center(child: Text('Items1')),
              Center(child: Text('Items2')),
              Center(child: Text('Items3')),
            ],
          ),
          ),

         bottomNavigationBar: BottomNavigationBar(
           items: [
             new BottomNavigationBarItem(
             title: new Text('Home'),icon: new Icon(Icons.home)),

             new BottomNavigationBarItem(
                 title: new Text('Edit'),icon: new Icon(Icons.edit)),

           ],
         ),
    ),
    );
  }
}

class xyz extends StatelessWidget {
  const xyz({Key? key}) : super(key: key);
xyz(required )
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
