// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';
import 'package:mplus_fx/screens/accountScreen.dart';
import 'package:mplus_fx/screens/confirmPin.dart';
import 'package:mplus_fx/screens/deposit.dart';
import 'package:mplus_fx/screens/economics.dart';
import 'package:mplus_fx/screens/newPin.dart';
import 'package:mplus_fx/screens/orderScreen.dart';
import 'package:mplus_fx/screens/signIn.dart';
import 'package:mplus_fx/screens/utcEcosystem.dart';

import 'package:mplus_fx/widgets/signUpUi.dart';

import 'screens/calendar.dart';
import 'screens/mib.dart';
import 'widgets/viewPage.dart';
//import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      theme: ThemeData(fontFamily: 'Kanit'),
    );
  }
}
