// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(12, 17, 55, 1)),
            height: 150,
            width: 150,
            child: FittedBox(
                fit: BoxFit.fill,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(image: AssetImage('assets/images/logo.png')))),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "MplusFX",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Hello, Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            width: 300,
            height: 50,
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
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            width: 300,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.black,
                  ),
                  labelText: 'Password'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            height: 47,
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Already have account? ",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text("Login",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ))
            ],
          ),
        ]),
      ),
      backgroundColor: const Color.fromRGBO(22, 29, 111, 1),
    );
  }
}
