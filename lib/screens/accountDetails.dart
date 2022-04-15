// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mplus_fx/widgets/cardViewdetails.dart';
import 'package:google_fonts/google_fonts.dart';

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
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          height: size.height * 0.33,
        ),
        Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 32, right: 30, bottom: 33),
                    child: Container(
                        child: Row(
                      children: [
                        IconButton(
                            color: Colors.white,
                            iconSize: 30,
                            icon: Icon(Icons.navigate_before),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Text("MplusFX",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        Spacer(),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AccountContact();
                            }));
                          }),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                                backgroundColor: Colors.tealAccent,
                                child: Icon(Icons.person_sharp)),
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
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  SizedBox(
                    height: 32,
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
                        SizedBox(
                          height: 145,
                          width: 145,
                          child: FlatButton(
                            color: boxColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 38, bottom: 20),
                                child: SizedBox(
                                    height: 35,
                                    width: 106,
                                    child:
                                        Icon(Icons.transfer_within_a_station)),
                              ),
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
                        SizedBox(
                          height: 145,
                          width: 145,
                          child: FlatButton(
                            color: boxColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 32, bottom: 15),
                                child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.account_balance_outlined,
                                      size: 50,
                                    )),
                              ),
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
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, bottom: 30),
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
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: SizedBox(
                                  height: 86,
                                  width: 86,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/transfer.png')),
                                ),
                              ),
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
                        SizedBox(
                          height: 145,
                          width: 145,
                          child: FlatButton(
                            color: boxColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 8),
                                child: SizedBox(
                                    height: 64,
                                    width: 64,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/utclogo.png'))),
                              ),
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
            ],
          ),
        ),
      ]),
    );
  }
}
