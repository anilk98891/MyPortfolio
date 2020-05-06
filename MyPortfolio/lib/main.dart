import 'package:flutter/material.dart';
import 'package:new_project_test/LandingPage/LandingPage.dart';
import 'package:new_project_test/NavBar/navBar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: TestScreen()));
}

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                NavBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: LandingPage(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
