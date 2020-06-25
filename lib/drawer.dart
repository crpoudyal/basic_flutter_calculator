import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return (Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "Calculator",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.done),
                title: Text("Basic Operation"),
                subtitle: Text("Two number operations"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.done),
                title: Text("Percentage"),
                subtitle: Text("Calculating Percentage"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.done),
                title: Text("Discount"),
                subtitle: Text("Calculating Discount"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
