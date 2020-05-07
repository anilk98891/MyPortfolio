import 'package:flutter/material.dart';
import 'package:new_project_test/NavBar/NavBarResume.dart';

const String _documentPath = 'docs/Resume.pdf';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This moves the PDF file from the assets to a place accessible by our PDF viewer.

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(195, 20, 50, 1),
              Color.fromRGBO(36, 11, 54, 1)
            ])),
        child: ListView(
          children: [
            Column(
              children: [
                NavBarResume(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 100),
                  child: const Text('UNDER DEVELOPMENT',style: TextStyle(color: Colors.white,fontSize: 40,letterSpacing: 2.0),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    "images/lp_image.png",
                    width: 200,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
