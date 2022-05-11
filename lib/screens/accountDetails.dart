// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/orderScreen.dart';

import 'package:mplus_fx/widgets/cardViewdetails.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:mplus_fx/widgets/services.dart';
import 'package:mplus_fx/widgets/servicesTwo.dart';

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
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
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
                                  return OrderSc();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "TRADE",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: mainColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Wallet : 123456 THB",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.052,
                ),
                CardViewdetails(),
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
                ServiceGroup1(),
                ServiceGroup2(),
              ],
            ),
          ],
        ),
      ]),
      drawer: MenuDraw(),
    );
  }
}
