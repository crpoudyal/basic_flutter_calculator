import 'package:flutter/material.dart';


class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Discount"),
      ),
      body: Text("Discount page"),
      
    );
  }
}