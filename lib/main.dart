

import 'package:flutter/material.dart';

import 'package:share_your_park/signup.dart';


//import 'app.dart';
//import 'signup.dart';
//import 'signin.dart';
//import 'inscri.dart';
//import 'info.dart';
//import 'name.dart';
//import 'adresse.dart';
//import 'car.dart';
//import 'syp.dart';
//import 'manu.dart';
//import 'float.dart';
//import 'fab.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share your park',
      theme: ThemeData(),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );

  }
}