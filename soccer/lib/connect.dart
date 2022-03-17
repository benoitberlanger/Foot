import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "delayed_animation.dart";
import "main.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "login_page.dart";

class connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 250,
                  child: Image.asset(
                      '/Users/benoitberlanger/Projet-perso/Foot/soccer/images/Plan-B.png'),
                )),
            DelayedAnimation(
              delay: 2500,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      "change start here",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Save your progress to access you personnal training",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 40,
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => loginpage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: d_red,
                            padding: EdgeInsets.all(13)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail_outline_outlined),
                            SizedBox(width: 10),
                            Text("Email"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => loginpage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.red,
                            padding: EdgeInsets.all(13)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook_outlined),
                            SizedBox(width: 10),
                            Text("Facebook"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => loginpage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.white,
                            padding: EdgeInsets.all(13)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons
                                .signal_wifi_connected_no_internet_4_outlined),
                            SizedBox(width: 10),
                            Text(
                              "Google",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
