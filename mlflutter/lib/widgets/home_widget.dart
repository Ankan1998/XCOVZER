import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlflutter/widgets/prediction.dart';

class HomeWidget extends StatefulWidget {
  //const HomeWidget({ Key? key }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:50),
        Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Card(
              child: Center(
                child: Text(
                  "Upload Image",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 30,
                    fontFamily: GoogleFonts.satisfy(fontSize: 20).fontFamily,
                    
                  ),
                ),
              ),
              elevation: 4,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),              
              ),
            ),
          ),
        ),
        SizedBox(
          height:15
        ),
        Prediction()


      ],
    );
  }
}
