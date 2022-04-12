// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  children: [
                    IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.navigate_before),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      "MplusFX",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 49,
                      width: 49,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                )),
            //CardView
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 36, bottom: 16),
              child: Text("Accounts"),
            ),
          ],
        ),
      ),
    );
  }
}
