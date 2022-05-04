// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ServiceGroup1 extends StatefulWidget {
  const ServiceGroup1({Key? key}) : super(key: key);

  @override
  State<ServiceGroup1> createState() => _ServiceGroupState();
}

class _ServiceGroupState extends State<ServiceGroup1> {
  Color boxColor = Color.fromARGB(245, 235, 235, 229);
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
              onPressed: () {},
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
              onPressed: () {},
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 15),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.account_balance_outlined,
                        size: 50,
                      )),
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
