// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ViewDetials extends StatefulWidget {
  const ViewDetials({Key? key}) : super(key: key);

  @override
  State<ViewDetials> createState() => _ViewDetialsState();
}

class _ViewDetialsState extends State<ViewDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 26, top: 16),
            child: Row(children: [
              IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                "MT4 Standard Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.notification_add_outlined,
                    color: Color.fromRGBO(27, 29, 111, 1),
                  ),
                  onPressed: () {})
            ]),
          ),
        ],
      ),
    ));
  }
}
