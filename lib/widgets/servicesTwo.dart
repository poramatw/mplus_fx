// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/economics.dart';

import '../theme/theme.dart';

class ServiceGroup2 extends StatefulWidget {
  const ServiceGroup2({Key? key}) : super(key: key);

  @override
  State<ServiceGroup2> createState() => _ServiceGroup2State();
}

class _ServiceGroup2State extends State<ServiceGroup2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
      child: Row(
        children: [
          SizedBox(
            height: 145,
            width: 145,
            child: FlatButton(
              color: boxColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: SizedBox(
                    height: 86,
                    width: 86,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image(
                            image: AssetImage('assets/images/transfer.png'))),
                  ),
                ),
                Text(
                  "โอนเงิน",
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ]),
            ),
          ),
          SizedBox(
            width: size.width * 0.065,
          ),
          SizedBox(
            height: 145,
            width: 145,
            child: FlatButton(
              color: boxColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Economics();
                }));
              },
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                  child: SizedBox(
                      height: 64,
                      width: 64,
                      child: Image(
                          image: AssetImage('assets/images/utclogo.png'))),
                ),
                Text(
                  "ECONOMICS",
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
