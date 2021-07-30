import 'package:flutter/material.dart';
import 'package:mlflutter/themes.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'XcR',
          style: MyTheme.kAppTitle,
        ),
        elevation: 0,
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          children: [
            SizedBox(
              height:5.0
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width*1.0,
            //   height: MediaQuery.of(context).size.height*0.15,
            //   child: ChatHeader(),
            // ),
            SizedBox(
              height:10.0
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Container(
                  // child: Text(
                  //   "hiiii"
                  // )
                ),
              ),
            ),
          ],
        ),
      ),
        
      
    );
  }
}