// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:mplus_fx/widgets/drawer.dart';

import '../theme/theme.dart';

class ViewDetials extends StatefulWidget {
  const ViewDetials({Key? key}) : super(key: key);

  @override
  State<ViewDetials> createState() => _ViewDetialsState();
}

class _ViewDetialsState extends State<ViewDetials> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuDraw(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: amberC,
        title: Text('MT4 Standard Account'),
      ),
      body: Column(
        children: [
          Container(
              height: size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                  color: amberC,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 77,
                      width: 77,
                      child:
                          Image(image: AssetImage('assets/images/logo.png'))),
                ],
              )),
          Container(
            height: size.height * 0.45,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 48,
                            width: 49,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        color: Colors.black,
                                        image: AssetImage(
                                            'assets/images/logoMplus.png')))),
                          ),
                          Text(
                            "?????????????????????????????????????????????",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Text("?????????????????????????????????"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("????????????????????????????????????"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("????????????????????????"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("???????????????????????????"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("????????????????????????????????????????????????????????????????????????"),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Text("STANDARD"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("MT4-123456789"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("100"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("abcdefg"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("tyreoc465vdcpo"),
                                      ],
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.35,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: amberC,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 50,
                          width: 315,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "?????????????????????????????????",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.keyboard_double_arrow_right,
                                  color: mainColor,
                                )
                              ],
                            ),
                          ),
                        ))
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
