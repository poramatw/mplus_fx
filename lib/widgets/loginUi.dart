// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/intro.dart';
import 'package:mplus_fx/screens/signIn.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  Column(children: [
                    SizedBox(
                      height: 88,
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
                                  image:
                                      AssetImage('assets/images/logo.png')))),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "MplusFX",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      "Hello, Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 66,
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
                      height: 20,
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
                              Icons.key,
                              color: Colors.black,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Intro();
                        }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.amber),
                        height: 44,
                        width: 140,
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
                      height: 57,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Already have account? ",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignIn();
                            }));
                          }),
                          child: Text("Login",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 12,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(22, 29, 111, 1),
    );
  }
}
