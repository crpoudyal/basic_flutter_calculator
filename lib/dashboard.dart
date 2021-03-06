import 'package:calculator/drawer.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var num1 = 0, num2 = 0, result = 0;
  final TextEditingController r1 = TextEditingController(text: "0");
  final TextEditingController r2 = TextEditingController(text: "0");

  void toadd() {
    setState(() {
      num1 = int.parse(r1.text);
      num2 = int.parse(r2.text);
      result = num1 + num2;
    });
  }

  void tosub() {
    setState(() {
      num1 = int.parse(r1.text);
      num2 = int.parse(r2.text);
      result = num1 - num2;
    });
  }

  void tomul() {
    setState(() {
      num1 = int.parse(r1.text);
      num2 = int.parse(r2.text);
      result = num1 * num2;
    });
  }

  void todiv() {
    setState(() {
      num1 = int.parse(r1.text);
      num2 = int.parse(r2.text);
      result = num1 ~/ num2;
    });
  }

  void toclear() {
    setState(() {
      r1.text = "0";
      r2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.more_vert), onPressed: (){}
          ),
        ],
      ),
      
      
      drawer: MyDrawer(),
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: r1,
                decoration: InputDecoration(
                  hintText: "Enter a number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: r2,
                decoration: InputDecoration(
                  hintText: "Enter a number",
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: toadd,
                  child: Text("Add (+)"),
                ),
                RaisedButton(
                  onPressed: tosub,
                  child: Text("Sub (-)"),
                ),
                RaisedButton(
                  onPressed: tomul,
                  child: Text("Mul (x)"),
                ),
                RaisedButton(
                  onPressed: todiv,
                  child: Text("Divide(/)"),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Output: ",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$result",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: toclear,
                  child: Text("Clear"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
