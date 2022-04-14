// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
//import 'package:mplus_fx/screens/viewDetails.dart';
import 'package:mplus_fx/widgets/cardViewdetails.dart';

import 'accountScreen.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  Color amberC = Color.fromRGBO(255, 193, 79, 1);
  Color mainColor = Color.fromRGBO(22, 29, 111, 1);
  Color boxColor = Color.fromARGB(245, 235, 235, 229);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.),
          color: Color.fromRGBO(22, 29, 111, 1),
          height: size.height * 0.33,
        ),
        Container(
          height: size.height,
          width: size.width,
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
                        color: Colors.white,
                        iconSize: 30,
                        icon: Icon(Icons.navigate_before),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      "MplusFX",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AccountContact();
                        }));
                      }),
                      child: CircleAvatar(
                        child: Icon(Icons.person_off_outlined),
                      ),
                    )
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
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              SizedBox(
                height: 42,
              ),
              CardViewdetails("Standard", "123456789", 2000.59, amberC),
/////////////////////////////////////////////////////////////////////////////////////////////
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
              ///////////////////////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(30)),
                        height: 145,
                        width: 145,
                        child: Column(children: [
                          SizedBox(
                              height: 106,
                              width: 35,
                              child: Icon(Icons.account_balance_outlined)),
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
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(30)),
                        height: 145,
                        width: 145,
                        child: Column(children: [
                          SizedBox(
                              height: 106,
                              width: 35,
                              child: Icon(Icons.account_balance_outlined)),
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(30)),
                        height: 145,
                        width: 145,
                        child: Column(children: [
                          SizedBox(
                              height: 106,
                              width: 35,
                              child: Icon(Icons.account_balance_outlined)),
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
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(30)),
                        height: 145,
                        width: 145,
                        child: Column(children: [
                          SizedBox(
                              height: 106,
                              width: 35,
                              child: Icon(Icons.account_balance_outlined)),
                          Text(
                            "UTC SERVICE",
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
              )
            ],
          ),
        ),
      ]),
    );
  }
}
