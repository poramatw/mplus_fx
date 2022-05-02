// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/theme/theme.dart';

import 'accountDetails.dart';
import 'chart.dart';
import 'currency.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  List pages = [
    AccountDetails(),
    Chart(),
    Currency(),
  ];

  int currenIndex = 0;
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
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currenIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart), label: 'Chart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), label: 'Currency'),
          ]),
    );
  }
}
