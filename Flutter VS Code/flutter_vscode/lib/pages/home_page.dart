import 'package:flutter/material.dart';
import 'package:flutter_vscode/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAS Connect"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: const Text("Welcome To FAS Connect"),
        ),
      ),
      // Create Custom Widget of Drawer (MyDrawer) to Optimize Code
      drawer: const MyDrawer(),
    );
  }
}
