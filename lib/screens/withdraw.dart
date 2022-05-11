// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mplus_fx/theme/theme.dart';
import 'package:mplus_fx/widgets/drawer.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      drawer: MenuDraw(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("Withdraw"),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 70,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: whiteC),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            child: Icon(Icons.person),
                          )),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text("MplusFX"),
                                    Icon(Icons.manage_accounts)
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text("TRADER"),
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 150,
                  width: size.width,
                  decoration: BoxDecoration(color: whiteC),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Text(
                                "\$ 0.00",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                "Wallet Balance",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          )),
                      Divider(
                        color: Colors.grey,
                      ),
                      Expanded(
                          flex: 2,
                          child: Row(children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Deposit"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("\$ 10.00"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 150,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Divider(
                              color: Colors.grey,
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Withdrawal"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("\$ 10.00"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 150,
                                            color: Colors.grey.withOpacity(0.5),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ]))
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 150,
                  width: size.width,
                  decoration: BoxDecoration(color: whiteC),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text("MT4Free Margin"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text("Deposit"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text("Withdrawal"),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Divider(
                        color: Colors.grey,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Deposit"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("\$ 10.00"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 150,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Divider(
                              color: Colors.grey,
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("Withdrawal"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("\$ 10.00"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 5,
                                            width: 150,
                                            color: Colors.grey.withOpacity(0.5),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ]))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
