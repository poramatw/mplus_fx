// ignore_for_file: prefer_const_constructors, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/viewDetails.dart';

class CardViewdetails extends StatelessWidget {
  String accType;
  String accNum;
  double accCredit;
  Color color;
  Color mainColor = Color.fromRGBO(22, 29, 111, 1);

  CardViewdetails(this.accType, this.accNum, this.accCredit, this.color,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15, right: 15),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(right: 15, left: 15),
                height: 205,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: color),
                child: Stack(
                  children: [
                    Positioned(
                        left: 30,
                        top: 40,
                        child: Text(
                          "MT4 " + accType + " Account",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(27, 29, 111, 1),
                              fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        left: 30,
                        top: 64,
                        child: Text(
                          accNum,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(27, 29, 111, 1),
                              fontWeight: FontWeight.w600),
                        )),
                    Center(
                      child: Text(
                        '${NumberFormat("#,###.##").format(accCredit)}'
                        " USD",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(27, 29, 111, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                        left: 30,
                        top: 145,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ViewDetials();
                            }));
                          },
                          child: SizedBox(
                            height: 40,
                            width: 144,
                            child: FlatButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ViewDetials();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: mainColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ));
          }),
    );
  }
}
