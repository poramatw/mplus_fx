// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/database/data.dart';
import 'package:mplus_fx/database/dataTest.dart';
import 'package:mplus_fx/screens/welcomeLogin.dart';
//import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeLogin(),
      theme: ThemeData(fontFamily: 'Kanit'),
    );
  }
}
