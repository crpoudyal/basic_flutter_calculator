import 'dart:async';

import 'package:calculator/dashboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
  super.initState();
  Timer(Duration(seconds:4),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) =>DashBoard(),
      ));

  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text("Calculator",
        style: TextStyle(fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        ),
        

      ),
      
    ),
    );
  }
}