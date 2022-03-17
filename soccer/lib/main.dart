import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Soccer",
      home: Scaffold(
        appBar: AppBar(
            title: Text("Le meilleur du foot"),
            backgroundColor: (Colors.red.shade300)),
        body: Center(child: Text('hello les footeux'), 
      ),
    );
  }
}
