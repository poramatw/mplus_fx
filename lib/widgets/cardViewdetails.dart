// ignore_for_file: prefer_const_constructors, must_be_immutable, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mplus_fx/theme/theme.dart';
//import 'package:intl/intl.dart';
import 'dart:convert';
import '../screens/viewDetails.dart';

class CardViewdetails extends StatefulWidget {
  @override
  State<CardViewdetails> createState() => _CallDataState();
}

class _CallDataState extends State<CardViewdetails> {
  List gettData = [];

  getData() async {
    var url = Uri.parse("http://192.168.0.105/mplus_FX/viewDetail.php");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        gettData = jsonDecode(response.body);
      });
      return gettData;
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 205,
      width: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15, right: 15),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(right: 15, left: 15),
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber),
                child: Stack(
                  children: [
                    Positioned(
                        left: 30,
                        top: 40,
                        child: Text(
                          "MT4 Standard Account",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(27, 29, 111, 1),
                              fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        left: 30,
                        top: 64,
                        child: Text(
                          "1234567890",
                          style: TextStyle(
                              fontSize: 14,
                              color: mainColor,
                              fontWeight: FontWeight.w600),
                        )),
                    Center(
                      child: Text(
                        "2,000.59 USD",
                        style: TextStyle(
                            fontSize: 24,
                            color: mainColor,
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
                              color: whiteC,
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
                                // ignore: prefer_const_literals_to_create_immutables
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
