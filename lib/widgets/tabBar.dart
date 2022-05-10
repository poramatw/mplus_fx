// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/accountScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarAccount extends StatefulWidget {
  const TabbarAccount({Key? key}) : super(key: key);

  @override
  State<TabbarAccount> createState() => _TapbarAccountState();
}

class _TapbarAccountState extends State<TabbarAccount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32, right: 30, bottom: 33),
      child: Container(
          child: Row(
        children: [
          IconButton(
              color: Colors.white,
              iconSize: 30,
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
          Spacer(),
          Text("MplusFX",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
          Spacer(),
          GestureDetector(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AccountContact();
              }));
            }),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  child: Icon(Icons.person_sharp)),
            ),
          )
        ],
      )),
    );
  }
}
