// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mplus_fx/widgets/cardViewdetails.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mplus_fx/widgets/services.dart';
import 'package:mplus_fx/widgets/servicesTwo.dart';
import 'package:mplus_fx/widgets/tabBar.dart';

import '../theme/theme.dart';

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
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          height: size.height * 0.33,
        ),
        Stack(
          children: [
            ListView(
              physics: ClampingScrollPhysics(),
              children: [
                TabbarAccount(),
                //CardView
                Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      "Accounts",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: size.height * 0.062,
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
    );
  }
}
