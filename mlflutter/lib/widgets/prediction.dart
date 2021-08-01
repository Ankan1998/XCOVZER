import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlflutter/widgets/classifier.dart';

class Prediction extends StatefulWidget {
  const Prediction({Key key, this.imageClicked}) : super(key: key);
  final File imageClicked;

  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  final Classifier classifier = Classifier();
  Map prediction;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black12,
          primary: Colors.teal[200],
        ),
        onPressed: () async {
          final outputs = await classifier.classifyImage(widget.imageClicked);

          setState(() {
            prediction = outputs;
          });
        },
        child: Text(
          'Predict',
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 30,
            fontWeight: FontWeight.w100,
            letterSpacing: 3,
            fontFamily: GoogleFonts.niconne().fontFamily,
          ),
        ),
      )),
      SizedBox(height: 20),
      Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(
            color: Colors.teal[800],
            width: 2,
          ),
          columnWidths: {
            0: FixedColumnWidth(MediaQuery.of(context).size.width * 0.4),
            1: FixedColumnWidth(MediaQuery.of(context).size.width * 0.4)
          },
          children: [
            for (var k in prediction.entries)
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Center(
                    child: Text(
                      k.key,
                      style: TextStyle(
                          fontFamily: GoogleFonts.courgette().fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Center(
                    child: Text("${k.value * 100}".substring(0, 5) + " %",
                        style: TextStyle(
                            fontFamily: GoogleFonts.courgette().fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ),
              ])
          ]),
      SizedBox(height: MediaQuery.of(context).size.height * 0.04),
      if (prediction.entries.first.key != 'Normal')
        ... [
          Text(
            "There is " + "${prediction.entries.first.value*100}".substring(0, 5) + "%" + " you have ${prediction.entries.first.key}",
            style: TextStyle(
              color: Colors.teal[900],
              fontFamily: GoogleFonts.merriweather().fontFamily,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              fontSize: 16
            )
        )]
      else
      ... [Text("You Lung is not Covid Infected")]
    ]);
  }
}
