// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';
import 'package:mplus_fx/screens/calendar.dart';
import 'package:mplus_fx/screens/markets.dart';
import 'package:mplus_fx/screens/utcEcosystem.dart';

import '../theme/theme.dart';
import '../widgets/drawer.dart';
import 'mib.dart';

class Economics extends StatefulWidget {
  const Economics({Key? key}) : super(key: key);

  @override
  State<Economics> createState() => _EconomicsState();
}

class _EconomicsState extends State<Economics> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          drawer: MenuDraw(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: mainColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text('ECONOMICS'),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    height: size.height * 0.25,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: mainColor),
                          height: 66,
                          width: 66,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/economics.png')))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 145,
                        width: 145,
                        child: FlatButton(
                          color: boxColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CalendarAPI();
                            }));
                          },
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 2),
                              child: SizedBox(
                                  height: 64,
                                  width: 64,
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/images/data-analytics.png'))))),
                            ),
                            Text(
                              "CALENDAR",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      SizedBox(
                        height: 145,
                        width: 145,
                        child: FlatButton(
                          color: boxColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MarketAPI();
                            }));
                          },
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 32),
                              child: SizedBox(
                                  height: 64,
                                  width: 64,
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/images/markets.png'))))),
                            ),
                            Text(
                              "MARKETS",
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
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: size.height * 0.3,
                          decoration: BoxDecoration(
                              color: amberC,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(100))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Text(
                                "Choose your Investment",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                height: size.height * 0.032,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      FlatButton(
                                        onPressed: (() {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return AccountDetails();
                                          }));
                                        }),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromRGBO(
                                                  12, 17, 55, 1)),
                                          height: 72,
                                          width: 72,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/images/logo.png')))),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.019,
                                      ),
                                      Text(
                                        "MplusFX",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Column(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return MIB();
                                            }));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            height: 34,
                                            width: 107,
                                            child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/images/miblogo.png')))),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 37,
                                        ),
                                        Text("Mib.Social",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      FlatButton(
                                        onPressed: (() {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return UtcEcosystem();
                                          }));
                                        }),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          height: 80,
                                          width: 80,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/images/utclogo.png')))),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.015,
                                      ),
                                      Text("UTC",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16))
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
