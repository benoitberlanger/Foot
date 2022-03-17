import 'package:flutter/material.dart';
import "welcome_page.dart";

const d_red = Color(0xFF0891B2);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Planb", debugShowCheckedModeBanner: false, home: welcomePage());
  }
}
