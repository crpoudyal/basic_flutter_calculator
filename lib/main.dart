
import 'package:flutter/material.dart';
import 'package:calculator/dashboard.dart';


void main() {
  runApp(
    MaterialApp(
  
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch:Colors.red,
      ),
      home: DashBoard(),

    ),

  );
}
