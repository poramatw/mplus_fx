// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/theme/theme.dart';

class MIB extends StatefulWidget {
  const MIB({Key? key}) : super(key: key);

  @override
  State<MIB> createState() => _MIBState();
}

class _MIBState extends State<MIB> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteC,
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Center(
            child: Container(
              height: 600,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(color: mainColor),
                    height: 99,
                    width: 99,
                    child:
                        Image(image: AssetImage('assets/images/logoMplus.png')),
                  ),
                  Text("MONEY INVEST BUSINESS"),
                  Text("Client portal."),
                  Text("Log in, or register as provider or follower."),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: whiteC),
                    width: 340,
                    height: 44,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: ' Username*'),
                    ),
                  ),
                  Text("Trading account's ID (same as in MetaTrader)"),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: whiteC),
                    width: 340,
                    height: 44,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: ' Password*'),
                    ),
                  ),
                  Text("Trading account's ID (same as in MetaTrader)"),
                  SizedBox(
                    height: 44,
                    width: 140,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: mainColor,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: whiteC),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("Register as a provider"),
                  Text("Register as a follower"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
