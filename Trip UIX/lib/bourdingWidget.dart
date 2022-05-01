import 'package:flutter/material.dart';
import 'package:trip_uix/lastpage.dart';

class bourdingWidget extends StatelessWidget {
  final cityShortName;
  final cityName;
  final date;


  bourdingWidget(
      {required this.cityShortName, required this.cityName, required this.date});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> lastpage())
      );},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(cityShortName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(cityName, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Text(date, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
