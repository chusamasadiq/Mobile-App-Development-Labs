import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //const MyApp({Key? key}) : super(key: key);
  // int num =1;
  // final player = AudioCache();
  //
  // Expanded buildkey({int num=1 , color: Colors.red})
  // {
  //   return Expanded(
  //     child: FlatButton(
  //         onPressed: ()
  //         {
  //           player.play('audio$num.wav');
  //         },
  //         color: color,
  //         child: Text('Play Sound')
  //   ),
  //   );
  //
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomWidget(numb: 1, coluor: Colors.red),
            CustomWidget(numb: 2, coluor: Colors.blue),
            CustomWidget(numb: 1, coluor: Colors.green),
            CustomWidget(numb: 2, coluor: Colors.yellow),
            CustomWidget(numb: 1, coluor: Colors.deepPurple),
            CustomWidget(numb: 2, coluor: Colors.red)
          ],
        ),
      ),
    ));
  }
}

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  final player = AudioCache();
  int numb;
  Color coluor;
  CustomWidget({Key? key, required this.numb, required this.coluor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            player.play('audio$numb.wav');
          },
          color: this.coluor,
          child: Text('Play Sound')),
    );
  }
}
