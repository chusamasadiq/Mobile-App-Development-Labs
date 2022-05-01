import 'package:flutter/material.dart';
import 'package:trip_uix/bourdingcards.dart';

class CustomWidget extends StatelessWidget {
  final imageName;


  CustomWidget({required this.imageName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bourdingcards()),
        );
      },
      child: Expanded(
        child: Container(
          height: 500,
          width: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/'+ imageName)
            ),
          ),
        ),
      ),

    );
  }
}
