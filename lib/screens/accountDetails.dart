// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/orderScreen.dart';

import 'package:mplus_fx/widgets/cardViewdetails.dart';

import 'package:google_fonts/google_fonts.dart';

import '../theme/theme.dart';
import '../widgets/drawer.dart';
import 'accountScreen.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        title: Center(child: Text('MplusFX')),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 20,
              child: CircleAvatar(
                backgroundColor: mainColor.withOpacity(0.2),
                child: IconButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AccountContact();
                      }));
                    }),
                    icon: Icon(Icons.person)),
              ),
            ),
          )
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          height: size.height * 0.2,
        ),
        Stack(
          children: [
            ListView(
              physics: ClampingScrollPhysics(),
              children: [
                // TabbarAccount(),
                //CardView
                Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Accounts",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 58, right: 82, top: 20),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: whiteC, borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Wallet : 123456 THB",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.022,
                ),
                CardViewdetails(),
                /////////////////////////////////////////////////////////////////////////////////////////////
                Container(
                  height: size.height * 0.45,
                  width: size.width,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 48,
                                  width: 49,
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image(
                                              color: Colors.black,
                                              image: AssetImage(
                                                  'assets/images/logoMplus.png')))),
                                ),
                                Text(
                                  "รายละเอียดบัญชี",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 2, child: Container()),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Text("ประเภทบัญชี"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("หมายเลขบัญชี"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("เลเวอเลจ"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("ชื่อบัญชี"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("รหัสผ่านสำหรับดูเท่านั้น"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(flex: 3, child: Details())
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                TradeButt(size: size),
              ],
            ),
          ],
        ),
      ]),
      drawer: MenuDraw(),
    );
  }
}

class TradeButt extends StatelessWidget {
  const TradeButt({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: mainColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrderSc();
                }));
              },
              child: SizedBox(
                height: 60,
                width: 304,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "TRADE",
                        style: TextStyle(
                            color: whiteC,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: whiteC,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text("STANDARD"),
            ],
          ),
          Row(
            children: [
              Text("MT4-123456789"),
            ],
          ),
          Row(
            children: [
              Text("100"),
            ],
          ),
          Row(
            children: [
              Text("abcdefg"),
            ],
          ),
          Row(
            children: [
              Text("tyreoc465vdcpo"),
            ],
          ),
        ],
      ),
    );
  }
}
