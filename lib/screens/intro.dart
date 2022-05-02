// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'accountDetails.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: ClampingScrollPhysics(),
            children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(12, 17, 55, 1)),
                        height: 145,
                        width: 145,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image(
                                    image:
                                        AssetImage('assets/images/logo.png')))),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "MplusFX",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: size.height * 0.0112,
                      ),
                      SizedBox(
                        height: 120,
                        width: 315,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "MplusFX LOW SPREAD",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "สามารถส่งคำสั่งได้ตลอด ราคาส่งตรงจาก LP",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "ทดลองเทรดฟรี ฝากเงินเพื่อรับโบนัส 30%",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "สูงสุดถึง  และโปรโมชั่นอีกมากมายเพียง",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "เทรดกับเรา",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),

                      //////////////////////////////////////////////////////////////////////////////////////////
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: size.height * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
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
                                                          BorderRadius.circular(
                                                              30),
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
                                                          BorderRadius.circular(
                                                              30),
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
                                                          BorderRadius.circular(
                                                              30),
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
                    ]),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(22, 29, 111, 1),
    );
  }
}
