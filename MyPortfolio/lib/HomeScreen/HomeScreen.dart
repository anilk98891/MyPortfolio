import 'package:flutter/material.dart';
import 'package:new_project_test/LandingPage/LandingPage.dart';
import 'package:new_project_test/NavBar/navBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}