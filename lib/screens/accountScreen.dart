// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountContact extends StatefulWidget {
  const AccountContact({Key? key}) : super(key: key);

  @override
  State<AccountContact> createState() => _AccountContactState();
}

class _AccountContactState extends State<AccountContact> {
  Color mainColor = Color.fromRGBO(22, 29, 111, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 66, right: 30),
          child: SizedBox(
            height: 680,
            width: 315,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                  height: 145,
                  width: 145,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                              image: AssetImage('assets/images/logo.png')))),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.white,
                  height: 238,
                  width: 254,
                  child: Column(),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: mainColor,
    );
  }
}
