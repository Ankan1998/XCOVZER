import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prediction extends StatefulWidget {
  //const Prediction({ Key? key }) : super(key: key);

  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Prediction',
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 24,
              fontWeight: FontWeight.w300,
              letterSpacing: 2,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.kanit().fontFamily,
            ),
          ) ,
        ),
        Center(
          child: Text(
            'Covid 19: ',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.comicNeue().fontFamily,
            ),
          ) ,
        ),
        Center(
          child: Text(
            'Lung Opacity: ',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.comicNeue().fontFamily,
            ),
          ) ,
        ),
        Center(
          child: Text(
            'Viral Pneumonia: ',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.comicNeue().fontFamily,
            ),
          ) ,
        ),
        Center(
          child: Text(
            'Normal: ',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.comicNeue().fontFamily,
            ),
          ) ,
        ),
      ]
    );
  }
}