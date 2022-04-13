// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

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
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
                margin: EdgeInsets.only(left: 16, right: 26, top: 16),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                )),
            //CardView
            SizedBox(
              height: 25,
            ),
            Padding(
                padding: EdgeInsets.only(left: 36, bottom: 16),
                child: Text(
                  "Accounts",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 189,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(right: 16, left: 16),
                        height: 199,
                        width: 214,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.greenAccent),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 39,
                                top: 45,
                                child: Text(
                                  "MT4 Standard Account",
                                  style: TextStyle(
                                      color: Color.fromRGBO(27, 29, 111, 1),
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                left: 39,
                                top: 70,
                                child: Text(
                                  "123456789",
                                  style: TextStyle(
                                      color: Color.fromRGBO(27, 29, 111, 1),
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                left: 35,
                                top: 100,
                                child: Text(
                                  "2,000.00 USD",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(27, 29, 111, 1),
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                left: 39,
                                top: 140,
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
                                    height: 37,
                                    width: 140,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "View Details",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
