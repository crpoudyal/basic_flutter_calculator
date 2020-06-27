import 'package:flutter/material.dart';

class Percentage extends StatefulWidget {
  @override
  _PercentageState createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Percentage"),
      ),
      body: Text("percentage"),
      
    );
  }
}