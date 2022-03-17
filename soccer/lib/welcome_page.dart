import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import "delayed_animation.dart";
import "main.dart";
import "connect.dart";

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 243, 243),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 30,
        ),
        child: Column(children: [
          DelayedAnimation(
            delay: 1500,
            child: Container(
              margin: EdgeInsets.only(
                top: 40,
                bottom: 20,
              ),
              child: Text(
                "Welcome to ",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(color: d_red, fontSize: 40),
              ),
            ),
          ),
          DelayedAnimation(
            delay: 2500,
            child: Container(
              height: 400,
              child: Image.asset(
                  '/Users/benoitberlanger/Projet-perso/Foot/soccer/images/Plan-B.png'),
            ),
          ),
          DelayedAnimation(
            delay: 3500,
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: d_red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(13)),
                child: Text(
                  "Connection",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => connect(),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
