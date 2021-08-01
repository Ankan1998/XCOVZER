import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prediction extends StatefulWidget {

  const Prediction({Key key, this.imageClicked}) : super(key: key);
  final File imageClicked;

  

  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {

  File imageClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.black87,
              primary: Colors.grey[700],
            ),
            onPressed: () {
              
            },
            child: Text(
              'Prediction',
                style: TextStyle(
                color: Colors.grey[100],
                fontSize: 28,
                fontWeight: FontWeight.w100,
                letterSpacing: 4,
                fontFamily: GoogleFonts.satisfy().fontFamily,
              ),
            ),
          )
        ),
        // Center(
        //   child: Text(
        //     'Covid 19: ',
        //     style: TextStyle(
        //       color: Colors.grey[700],
        //       fontSize: 18,
        //       fontWeight: FontWeight.w300,
        //       letterSpacing: 1,
        //       fontStyle: FontStyle.italic,
        //       fontFamily: GoogleFonts.comicNeue().fontFamily,
        //     ),
        //   ) ,
        // ),
        // Center(
        //   child: Text(
        //     'Lung Opacity: ',
        //     style: TextStyle(
        //       color: Colors.grey[700],
        //       fontSize: 18,
        //       fontWeight: FontWeight.w300,
        //       letterSpacing: 1,
        //       fontStyle: FontStyle.italic,
        //       fontFamily: GoogleFonts.comicNeue().fontFamily,
        //     ),
        //   ) ,
        // ),
        // Center(
        //   child: Text(
        //     'Viral Pneumonia: ',
        //     style: TextStyle(
        //       color: Colors.grey[700],
        //       fontSize: 18,
        //       fontWeight: FontWeight.w300,
        //       letterSpacing: 1,
        //       fontStyle: FontStyle.italic,
        //       fontFamily: GoogleFonts.comicNeue().fontFamily,
        //     ),
        //   ) ,
        // ),
        // Center(
        //   child: Text(
        //     'Normal: ',
        //     style: TextStyle(
        //       color: Colors.grey[700],
        //       fontSize: 18,
        //       fontWeight: FontWeight.w300,
        //       letterSpacing: 1,
        //       fontStyle: FontStyle.italic,
        //       fontFamily: GoogleFonts.comicNeue().fontFamily,
        //     ),
        //   ) ,
        // ),
      ]
    );
  }
}