import 'package:flutter/material.dart';

class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  var total=0,dispercentage=0,result;
  final TextEditingController r3 =new TextEditingController(text:"0");
  final TextEditingController r4 =new TextEditingController(text:"0");

void disperform(){
  setState(() {
    total=int.parse(r3.text);
  dispercentage=int.parse(r4.text);
  result=(dispercentage/total)*100;
  });
}
 void tocelar(){
  setState(() {
     r3.text="0";
   r4.text="0";
  });

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Discount"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Result : $result",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: r3,
                decoration: InputDecoration(
                  hintText: "Enter a number",
                  labelText: "Total",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: r4,
                decoration: InputDecoration(
                  hintText: "Enter a number",
                  labelText: "Discount Percentage (%)",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed:disperform,
                child: Text("GO"),
              ),
               SizedBox(
                height: 20.0,
              ),
               RaisedButton(
                onPressed:tocelar,
                child: Text("Clear"),
              ),
              SizedBox(
                height: 50.0,
              ),
              
            ],
          )),
        ));
  }
}
