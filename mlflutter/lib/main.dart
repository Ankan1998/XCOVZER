import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlflutter/screen/home_screen.dart';
import 'package:mlflutter/themes.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: MyTheme.kPrimaryColor,
        accentColor: MyTheme.kAccentColor,
        textTheme: GoogleFonts.merriweatherTextTheme(
          //Theme.of(context).textTheme,
        ),
        //primarySwatch: Colors.blue[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    ),
  );
}

