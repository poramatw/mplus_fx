// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

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
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 30, top: 33),
            child: Row(children: [
              IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                "MT4 Standard Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(12, 17, 55, 1)),
                  height: 77,
                  width: 77,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                              image: AssetImage('assets/images/logo.png')))),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
