import 'package:flutter/material.dart';

void main() {
  runApp(const lastpage());
}

class lastpage extends StatelessWidget {
  const lastpage({Key? key}) : super(key: key);

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
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.grey,
              );
            }),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            margin:EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                Image(
                  image: AssetImage('assets/SanFrancisco.jpg'),
                  width: 400,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'New York',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Container(
                  height: 200,
                    width: 350,
                    child: Text(
                        "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square")
                )

              ]),
            ),
          ),
        )));
  }
}
