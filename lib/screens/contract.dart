// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/theme/theme.dart';
import 'package:mplus_fx/widgets/drawer.dart';

class ContractUs extends StatelessWidget {
  const ContractUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuDraw(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text('CONTRACT US'),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                      height: 88,
                      width: 88,
                      child:
                          Image(image: AssetImage('assets/images/logo.png'))),
                ],
              )),
          Container(
            height: size.height * 0.35,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33)),
                          height: 55,
                          width: 55,
                          child: FittedBox(
                              child: Image(
                                  image:
                                      AssetImage('assets/images/email.png')))),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("support@mplusfx.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33)),
                          height: 55,
                          width: 55,
                          child: FittedBox(
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/facebook.png')))),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Mplus Thailand",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33)),
                          height: 55,
                          width: 55,
                          child: FittedBox(
                              child: Image(
                                  image:
                                      AssetImage('assets/images/line.png')))),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "@mplusfx",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.45,
                width: size.width,
                decoration: BoxDecoration(
                    color: amberC,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100))),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: mainColor),
                            height: 55,
                            width: 55,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/logo.png')))),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            "\"MplusFX LOW SPREAD",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            "สามารถส่งคำสั่งได้ตลอด ราคาส่งตรงจาก LP\"",
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
