// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';
import 'package:mplus_fx/screens/intro.dart';
import 'package:mplus_fx/screens/welcomeLogin.dart';
import 'package:mplus_fx/theme/theme.dart';

class SignInUi extends StatelessWidget {
  const SignInUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: ClampingScrollPhysics(),
              children: [
                Column(children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(12, 17, 55, 1)),
                    height: 145,
                    width: 145,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                                image: AssetImage('assets/images/logo.png')))),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "MplusFX",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: whiteC),
                  ),
                  SizedBox(
                    height: size.height * 0.022,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        color: whiteC),
                  ),
                  SizedBox(
                    height: size.height * 0.004,
                  ),
                  Text(
                    "Enjoy our application",
                    style: TextStyle(color: whiteC),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22), color: whiteC),
                    width: 270,
                    height: 44,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline_outlined,
                            color: Colors.black,
                          ),
                          labelText: 'Email'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22), color: whiteC),
                    width: 270,
                    height: 44,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          labelText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AccountDetails();
                      }));
                    },
                    child: SizedBox(
                      height: 44,
                      width: 140,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                        color: amberC,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Intro();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: whiteC),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 12, color: whiteC),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "New user? ",
                        style: TextStyle(fontSize: 12, color: whiteC),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return WelcomeLogin();
                          }));
                        },
                        child: Text("Create an account",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              color: whiteC,
                            )),
                      )
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: mainColor,
    );
  }
}
