// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mplus_fx/theme/theme.dart';
import 'package:mplus_fx/widgets/drawer.dart';

class ContractUs extends StatelessWidget {
  const ContractUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          drawer: MenuDraw(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: mainColor,
            title: Text('CONTRACT US'),
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    height: size.height * 0.25,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: mainColor),
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, bottom: 20),
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
                                        'assets/images/email.png')))),
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
                    padding: const EdgeInsets.only(left: 80, bottom: 20),
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
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: size.height * 0.3,
                          decoration: BoxDecoration(
                              color: amberC,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(100))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                                width: size.width,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: mainColor),
                                height: 44,
                                width: 44,
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image(
                                            image: AssetImage(
                                                'assets/images/logo.png')))),
                              ),
                              SizedBox(
                                height: size.height * 0.022,
                              ),
                              SizedBox(
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "\"MplusFX LOW SPREAD",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      "สามารถส่งคำสั่งได้ตลอด ราคาส่งตรงจาก LP\"",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      "ทดลองเทรดฟรี ฝากเงินเพื่อรับโบนัส 30%",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      "สูงสุดถึง \$1000 และโปรโมชั่นอีกมากมายเพียง",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      "เทรดกับเรา",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
