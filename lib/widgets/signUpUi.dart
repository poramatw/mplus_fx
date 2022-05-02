// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/intro.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mplus_fx/widgets/siginUi.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height * 0.022,
                  ),
                  Text(
                    "Hello, Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white),
                    width: 270,
                    height: 44,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline_outlined,
                            color: Colors.black,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white),
                    width: 270,
                    height: 44,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    height: 44,
                    width: 140,
                    child: FlatButton(
                      color: Color.fromRGBO(255, 193, 79, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
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
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account? ",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                          onTap: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInUi();
                            }));
                          }),
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                decoration: TextDecoration.underline,
                                fontSize: 12,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(22, 29, 111, 1),
    );
  }
}
