
import 'package:calculator/splash.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
  
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch:Colors.red,
      ),
      home: SplashScreen(),
      

    ),

  );
}
