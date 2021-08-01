import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mlflutter/widgets/prediction.dart';
import 'dart:io';

class HomeWidget extends StatefulWidget {
  //const HomeWidget({ Key? key }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final picker = ImagePicker();

  File image;
  bool img_present = false;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Card(
                
                child: Center(
                  child: img_present
                      ? Image.file(
                        image,
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 1,
                        fit: BoxFit.fitWidth,
                      )
                      : Text(
                          "Upload Image",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 30,
                            fontFamily:
                                GoogleFonts.satisfy(fontSize: 20).fontFamily,
                          ),
                        ),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Column(
              
              children: [
                OutlinedButton(
                  
                  onPressed: () async {
                    final pickedimage = await picker.pickImage(
                        source: ImageSource.camera,
                        imageQuality: 100);
                    setState(() {
                      if (pickedimage != null) {
                        img_present = true;
                        image = File(pickedimage.path);
                      }
                    });
                  },
                  child: Icon(Icons.camera_alt, color: Colors.teal[700]),
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    
                    padding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                OutlinedButton(
                  onPressed: () async {
                    final pickedimage = await picker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 100);
                    setState(() {
                      if (pickedimage != null) {
                        img_present = true;
                        image = File(pickedimage.path);
                      }
                    });
                  },
                  child: Icon(
                    Icons.image,
                    color: Colors.teal[700],
                  ),
                  style: OutlinedButton.styleFrom(
                    //backgroundColor: Colors.grey[200],
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ]
            ),
          ],
        ),
        

        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        if (img_present) ...[Prediction(imageClicked: image,)],
        // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        
      ],
    );
  }
}

        