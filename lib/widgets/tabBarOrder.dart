// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TabbarOrder extends StatefulWidget {
  const TabbarOrder({Key? key}) : super(key: key);

  @override
  State<TabbarOrder> createState() => _TabbarOrderState();
}

class _TabbarOrderState extends State<TabbarOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32, right: 30, bottom: 33),
      child: Container(
          child: Row(
        children: [
          IconButton(
              color: Color.fromRGBO(22, 29, 111, 1),
              iconSize: 30,
              icon: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.pop(context);
              }),
          Text("MT4 ORDERS",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Color.fromRGBO(22, 29, 111, 1),
                  fontWeight: FontWeight.w600)),
          Spacer(),
          IconButton(
              icon: Icon(
                Icons.notification_add,
                color: Color.fromRGBO(27, 29, 111, 1),
              ),
              onPressed: () {
                print("notification");
              })
        ],
      )),
    );
  }
}
