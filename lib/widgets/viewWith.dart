// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';
import 'package:mplus_fx/screens/settings.dart';
import 'package:mplus_fx/screens/transfer.dart';
import 'package:mplus_fx/screens/withdraw.dart';
import 'package:mplus_fx/theme/theme.dart';

import '../screens/deposit.dart';

class ViewWithdraw extends StatefulWidget {
  const ViewWithdraw({Key? key}) : super(key: key);

  @override
  State<ViewWithdraw> createState() => _ViewWithdrawState();
}

class _ViewWithdrawState extends State<ViewWithdraw> {
  List pages = [
    AccountDetails(),
    Transfer(),
    Deposit(),
    Withdraw(),
    Settings()
  ];

  int currenIndex = 3;
  void onTap(int index) {
    setState(() {
      currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currenIndex,
          selectedItemColor: whiteC,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_1_sharp), label: 'Accounts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), label: 'Deposit'),
            BottomNavigationBarItem(
                icon: Image(
                    color: Colors.grey.withOpacity(0.5),
                    height: 25,
                    width: 25,
                    image: AssetImage('assets/images/hand.png')),
                label: 'Withdraw'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),
    );
  }
}
