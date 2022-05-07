// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';
import 'package:mplus_fx/screens/economics.dart';
import 'package:mplus_fx/screens/orderScreen.dart';
import 'package:mplus_fx/screens/signIn.dart';

import '../screens/enterCode.dart';
import '../theme/theme.dart';

class MenuDraw extends StatelessWidget {
  const MenuDraw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mainColor,
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.menu,
                    color: whiteC,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor),
                    height: 44,
                    width: 44,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                                image: AssetImage('assets/images/logo.png')))),
                  ),
                ),
              ],
            ),
            Divider(
              color: whiteC,
            ),
            ListTile(
              title: Text(
                'MPLUS SERVICE',
                style: TextStyle(color: whiteC),
              ),
            ),
            Divider(
              color: whiteC,
            ),
          ],
        )),
        ListTile(
          title: Text('MPLUSFX', style: TextStyle(color: whiteC)),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AccountDetails();
            }));
          },
        ),
        ListTile(
            title: Text('YOUR PORT', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('DEPOSIT', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('WITHDRAW', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('TRANSFER', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('TRADE', style: TextStyle(color: whiteC)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrderSc();
              }));
            }),
        ListTile(
            title: Text('MIB.SOCIAL', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('UTC.MONEY', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('UTC TOKEN', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('U TRAVEL', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('UTC MARKET', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('ECONOMICS', style: TextStyle(color: whiteC)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Economics();
              }));
            }),
        ListTile(
            title: Text('CALENDAR', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('MARKETS', style: TextStyle(color: whiteC)),
            onTap: () {}),
        ListTile(
            title: Text('CHANGE PIN', style: TextStyle(color: whiteC)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EnterPin();
              }));
            }),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
          child: SizedBox(
            height: 40,
            width: 144,
            child: FlatButton(
              color: whiteC,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignIn();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "LOG OUT",
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
      ]),
    );
  }
}
