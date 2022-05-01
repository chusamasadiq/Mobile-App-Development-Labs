import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_uix/CustomWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: Builder(builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: () {},
                      color: Colors.grey,
                    );
                  }),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                      color: Colors.grey,
                    )
                  ],
                ),
              body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Saved Destination',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),

                      Row(
                        children: [
                          CustomWidget(imageName: "NewYork.png"),
                          CustomWidget(imageName: "SanFrancisco.jpg"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomWidget(imageName: "Denvar.jpg"),
                          CustomWidget(imageName: "lahore.jpg"),
                        ],
                      )
                    ],
                      ),
              ),
                  ),
                ));
  }
}
