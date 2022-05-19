// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/widgets/drawer.dart';

import '../widgets/tabBarOrder.dart';

class OrderSc extends StatefulWidget {
  const OrderSc({Key? key}) : super(key: key);

  @override
  State<OrderSc> createState() => _OrderScState();
}

class _OrderScState extends State<OrderSc> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        ListView(
          physics: ClampingScrollPhysics(),
          children: [
            TabbarOrder(),
            SizedBox(
              height: size.height * 0.3,
              child: Image(image: AssetImage('assets/images/imgOrder.png')),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  child: ListView(
                    children: [
                      Column(children: [
                        SizedBox(height: size.height * 0.04),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, right: 60),
                          child: SizedBox(
                              height: 30,
                              width: size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "OPEN",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Container(
                                        height: 3,
                                        width: 62,
                                        decoration:
                                            BoxDecoration(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("PENDING",
                                          style: TextStyle(fontSize: 14)),
                                      Container(
                                        height: 3,
                                        width: 62,
                                        decoration:
                                            BoxDecoration(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("CLOSED",
                                          style: TextStyle(fontSize: 14)),
                                      Container(
                                        height: 3,
                                        width: 62,
                                        decoration:
                                            BoxDecoration(color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: size.height * 0.14,
                        ),
                        Container(
                          height: 50,
                          width: 316,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromRGBO(245, 246, 249, 1)),
                          child: Center(
                              child: Text(
                                  "MT4 ORDERS CAN BE VIEWED IN META TRADER")),
                        ),
                        SizedBox(
                          height: size.height * 0.16,
                        ),
                        FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: Color.fromRGBO(27, 29, 111, 1),
                            onPressed: () {},
                            child: SizedBox(
                              height: 60,
                              width: 304,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "OPEN META TRADER APP ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.keyboard_double_arrow_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.03,
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ]),
      drawer: MenuDraw(),
      backgroundColor: const Color.fromRGBO(178, 178, 178, 1),
    );
  }
}
