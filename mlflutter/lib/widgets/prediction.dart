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
              fontSize: 30,
              fontWeight: FontWeight.w800,
              letterSpacing: 5,
              fontFamily: GoogleFonts.allura().fontFamily,
            ),
          ) ,
        )
      ]
    );
  }
}