// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';

import '../theme/theme.dart';
import '../widgets/drawer.dart';

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
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('ECONOMICS'),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 20, right: 40),
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
                                        left: 24, right: 18),
                                    child: Column(
                                      children: [
                                        Container(
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
                                                      BorderRadius.circular(30),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/images/miblogo.png')))),
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
                                        onPressed: (() {}),
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
