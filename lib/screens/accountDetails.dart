// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/viewDetails.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 32, right: 30, bottom: 33),
              child: Container(
                  //margin: EdgeInsets.only(left: 16, right: 26, top: 32),
                  child: Row(
                children: [
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.navigate_before),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    "MplusFX",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                ],
              )),
            ),
            //CardView

            Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  "Accounts",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 42,
            ),
            Container(
              height: 205,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(right: 15, left: 15),
                        height: 205,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.greenAccent),
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
                                  "123456789",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(27, 29, 111, 1),
                                      fontWeight: FontWeight.w600),
                                )),
                            Positioned(
                                left: 24,
                                top: 90,
                                child: Text(
                                  "2,000.00 USD",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(27, 29, 111, 1),
                                      fontWeight: FontWeight.w600),
                                )),
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white),
                                    height: 40,
                                    width: 144,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "View Details",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  27, 29, 111, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 39, top: 22),
              child: Text(
                "SERVICES",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(27, 29, 111, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 168, 203),
                        borderRadius: BorderRadius.circular(30)),
                    height: 145,
                    width: 145,
                    child: Column(children: []),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 168, 203),
                        borderRadius: BorderRadius.circular(30)),
                    height: 145,
                    width: 145,
                    child: Column(children: []),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 168, 203),
                        borderRadius: BorderRadius.circular(30)),
                    height: 145,
                    width: 145,
                    child: Column(children: []),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 168, 203),
                        borderRadius: BorderRadius.circular(30)),
                    height: 145,
                    width: 145,
                    child: Column(children: []),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
