// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/deposit.dart';
import 'package:mplus_fx/screens/withdraw.dart';

import '../theme/theme.dart';

class ServiceGroup1 extends StatefulWidget {
  const ServiceGroup1({Key? key}) : super(key: key);

  @override
  State<ServiceGroup1> createState() => _ServiceGroupState();
}

class _ServiceGroupState extends State<ServiceGroup1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Row(
        children: [
          SizedBox(
            height: 145,
            width: 145,
            child: FlatButton(
              color: boxColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Deposit();
                }));
              },
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38, bottom: 20),
                  child: SizedBox(
                      height: 35,
                      width: 106,
                      child: Image(
                          image: AssetImage('assets/images/chillpay.png'))),
                ),
                Text(
                  "ฝากเงิน",
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
                  return Withdraw();
                }));
              },
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 11),
                  child: SizedBox(
                      height: 64,
                      width: 64,
                      child:
                          Image(image: AssetImage('assets/images/bank.png'))),
                ),
                Text(
                  "ถอนเงิน",
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
