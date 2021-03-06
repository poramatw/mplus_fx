// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/contract.dart';

import 'package:mplus_fx/widgets/drawer.dart';

import '../theme/theme.dart';

import 'enterCode.dart';

class AccountContact extends StatefulWidget {
  const AccountContact({Key? key}) : super(key: key);

  @override
  State<AccountContact> createState() => _AccountContactState();
}

class _AccountContactState extends State<AccountContact> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                // SizedBox(
                //   height: size.height * 0.066,
                // ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 680,
                      width: 315,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: mainColor),
                            height: 145,
                            width: 145,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/logo.png')))),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 238,
                                width: 137.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.account_circle,
                                            color: Colors.white),
                                        Text("  ????????????????????????????????????????????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.phone, color: Colors.white),
                                        Text("  ????????????????????????????????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.drafts, color: Colors.white),
                                        Text("  ???????????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.cake, color: Colors.white),
                                        Text("  ??????????????????????????????????????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.transgender,
                                            color: Colors.white),
                                        Text("  ?????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(Icons.flag, color: Colors.white),
                                        Text("  ?????????????????????",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Icon(
                                          Icons.add_location_alt,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "  ?????????????????????",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 238,
                                width: 177.5,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("abcdefg hijklmnop",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("080-0000000",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("avasdffasdf@gmail.com",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("30/??????/2530",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("?????????",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("?????????",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Text("99/99 ????????????????????????88 ?????????.",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ]),
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: whiteC,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return EnterPin();
                                }));
                              },
                              child: SizedBox(
                                height: 50,
                                width: 315,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "CHANGE PIN",
                                        style: TextStyle(
                                            color: mainColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      // Icon(
                                      //   Icons.keyboard_double_arrow_right,
                                      //   color: mainColor,
                                      // )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: amberC,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ContractUs();
                                }));
                              },
                              child: SizedBox(
                                height: 50,
                                width: 315,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "CONTACT US",
                                        style: TextStyle(
                                            color: mainColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(
                                        Icons.keyboard_double_arrow_right,
                                        color: mainColor,
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: MenuDraw(),
      backgroundColor: mainColor,
    );
  }
}
