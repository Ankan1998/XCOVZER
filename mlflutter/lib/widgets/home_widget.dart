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
        SizedBox(height:MediaQuery.of(context).size.height*0.05),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.45,
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
          height:MediaQuery.of(context).size.height*0.02
        ),
        Prediction(),
        SizedBox(
          height:MediaQuery.of(context).size.height*0.05
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Icon(
                Icons.camera,
                color: Colors.teal[600]
              ),
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(14),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Icon(
                Icons.image,
                color: Colors.teal[600],
              ),
              style: OutlinedButton.styleFrom(
                //backgroundColor: Colors.grey[200],
                shape: CircleBorder(),
                padding: EdgeInsets.all(14),
              ),
            ),


          ]
        )


      ],
    );
  }
}
