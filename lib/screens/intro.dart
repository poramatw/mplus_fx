// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'accountDetails.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                  child: Image(image: AssetImage('assets/images/logo.png')))),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "MplusFX",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 30, color: Colors.white),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 120,
          width: 315,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "MplusFX LOW SPREAD",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "สามารถส่งคำสั่งได้ตลอด ราคาส่งตรงจาก LP",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "ทดลองเทรดฟรี ฝากเงินเพื่อรับโบนัส 30%",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "สูงสุดถึง \$1000 และโปรโมชั่นอีกมากมายเพียง",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "เทรดกับเรา",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 94,
        ),
        Container(
            decoration: BoxDecoration(color: Colors.white),
            //width: 375,
            height: 269,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 66.8),
                  child: Text(
                    "Choose your Investment",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AccountDetails();
                        }));
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(12, 17, 55, 1)),
                            height: 77,
                            width: 77,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/logo.png')))),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "MplusFX",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 18),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 34,
                            width: 107,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/miblogo.png')))),
                          ),
                          Text("Mib.Social",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 80,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/utclogo.png')))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("UTC",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16))
                      ],
                    )
                  ],
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
      ]),
      backgroundColor: const Color.fromRGBO(22, 29, 111, 1),
    );
  }
}
