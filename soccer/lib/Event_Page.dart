import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "delayed_animation.dart";
import "main.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class eventpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: (0),
        title: Image.asset(
          '/Users/benoitberlanger/Projet-perso/Foot/soccer/images/Plan-B.png',
          height: 80,
        ),
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          color: d_red,
          iconSize: 30,
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
