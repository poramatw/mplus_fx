// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/welcomeLogin.dart';

class AccountContact extends StatefulWidget {
  const AccountContact({Key? key}) : super(key: key);

  @override
  State<AccountContact> createState() => _AccountContactState();
}

class _AccountContactState extends State<AccountContact> {
  Color amberC = Color.fromRGBO(255, 193, 79, 1);
  Color mainColor = Color.fromRGBO(22, 29, 111, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: size.height * 0.066,
                ),
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
                                      children: [
                                        Icon(Icons.account_circle,
                                            color: Colors.white),
                                        Text("ชื่อเจ้าของบัญชี",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.phone, color: Colors.white),
                                        Text("เบอรโทรศัพท์",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.drafts, color: Colors.white),
                                        Text("อีเมล",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.cake, color: Colors.white),
                                        Text("วันเดือนปีเกิด",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.transgender,
                                            color: Colors.white),
                                        Text("เพศ",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.flag, color: Colors.white),
                                        Text("สัญชาติ",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.add_location_alt,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "ที่อยู่",
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
                                        children: [
                                          Text("abcdefg hijklmnop",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("080-0000000",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("avasdffasdf@gmail.com",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("30/พย/2530",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("ชาย",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("ไทย",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("99/99 สุขุมวิท88 กทม.",
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
                          Container(
                            height: 50,
                            width: 315,
                            decoration: BoxDecoration(
                                color: amberC,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("CONTACT US",
                                    style: TextStyle(
                                        color: mainColor,
                                        fontWeight: FontWeight.w600)),
                                Icon(
                                  Icons.keyboard_double_arrow_right,
                                  color: mainColor,
                                )
                              ],
                            )),
                          ),
                          SizedBox(
                            height: size.height * 0.035,
                          ),
                          OutlineButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            borderSide: BorderSide(color: Colors.white),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return WelcomeLogin();
                              }));
                            },
                            child: Container(
                              height: 50,
                              width: 315,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "LOG OUT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.keyboard_double_arrow_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
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
      backgroundColor: mainColor,
    );
  }
}
