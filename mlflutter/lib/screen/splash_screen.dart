import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlflutter/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/chest2.png",
                  height: 220,
                  width: 220,
                ),
              ),
            ),
            SizedBox(height:50.0),
            Text(
              'XCOVZER',
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 34,
                color: Colors.teal[800],
                letterSpacing: 4,
              ),
            )
          ],
        ));
  }
}
