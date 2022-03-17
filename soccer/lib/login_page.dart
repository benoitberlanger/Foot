import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccer/Event_Page.dart';
import "delayed_animation.dart";
import "main.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class loginpage extends StatelessWidget {
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
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DelayedAnimation(
                  delay: 1500,
                  child: Text(
                    "Connect email address",
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                DelayedAnimation(
                  delay: 2500,
                  child: Text(
                    "It's recommended to connect Email",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 35),
                LoginForm(),
                SizedBox(height: 125),
                DelayedAnimation(
                  delay: 3500,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: d_red,
                      padding: EdgeInsets.symmetric(
                        horizontal: 125,
                        vertical: 13,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => eventpage(),
                        ),
                      );
                    },
                    child: Text("Confirm"),
                  ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: DelayedAnimation(
                        delay: 5500,
                        child: Text(
                          'Skip',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 5500,
            child: TextField(
              decoration: InputDecoration(
                labelText: "your email",
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 5500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
