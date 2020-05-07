import 'package:flutter/material.dart';
import 'package:new_project_test/HomeScreen/HomeScreen.dart';
import 'package:new_project_test/Resume/loadResume.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/resume': (context) => MyHomePage()
    },
    theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
  ));
}
