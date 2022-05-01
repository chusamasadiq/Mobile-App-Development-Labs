import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_uix/bourdingWidget.dart';

void main() {
  runApp(const bourdingcards());
}

class bourdingcards extends StatelessWidget {
  const bourdingcards({Key? key}) : super(key: key);

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
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.grey,
              )
            ],
          ),
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(2, 5, 0, 0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Bourding cards',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 50,

                        ),
                      ),
                  Card(
                  margin: EdgeInsets.all(12),
                  elevation: 4,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                    child: Row(
                      children: <Widget>[
                        bourdingWidget(cityShortName: "NYC", cityName: "New York", date: "12,January 2021"),
                        SizedBox(
                          width: 50,
                        ),
                        bourdingWidget(cityShortName: "SFO", cityName: "San Francisco", date: "2 Adult"),
                        SizedBox(
                          width: 60,
                        ),
                        IconButton(
                          icon: Icon(Icons.flight),
                          onPressed: () {},
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                      Card(
                        margin: EdgeInsets.all(12),
                        elevation: 4,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              bourdingWidget(cityShortName: "LAS", cityName: "Las Vegas", date: "24,February 2021"),
                              SizedBox(
                                width: 50,
                              ),
                              bourdingWidget(cityShortName: "BOS", cityName: "Boston", date: "1 Adult"),
                              SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                icon: Icon(Icons.flight),
                                onPressed: () {},
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(12),
                        elevation: 4,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              bourdingWidget(cityShortName: "LAX", cityName: "Los Anglese", date: "24,February 2021"),
                              SizedBox(
                                width: 50,
                              ),
                              bourdingWidget(cityShortName: "OMA", cityName: "Omaha", date: "2 Adult, 1 Child"),
                              SizedBox(
                                width: 50,
                              ),
                              IconButton(
                                icon: Icon(Icons.flight),
                                onPressed: () {},
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(12),
                        elevation: 4,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              bourdingWidget(cityShortName: "AUS", cityName: "Austin", date: "12,January 2021"),
                              SizedBox(
                                width: 50,
                              ),
                              bourdingWidget(cityShortName: "IND", cityName: "indonesia", date: "4 Adult"),
                              SizedBox(
                                width: 85,
                              ),
                              IconButton(
                                icon: Icon(Icons.flight),
                                onPressed: () {},
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        )));
  }
}
