// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mplus_fx/widgets/drawer.dart';
import 'package:mplus_fx/theme/theme.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  // Initial Selected Value
  String dropdownvalue = 'Choose a Account';

// List of items in our dropdown menu
  var items = [
    'Choose a Account',
    'Account 1',
    'Account 2',
    'Account 3',
    'Account 4',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
          padding: const EdgeInsets.only(left: 70),
          child: Text("Internal Transfer"),
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(color: whiteC),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text("\$ 10.00"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text("\$ 0.00"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("\$ 0.00"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
                child: Container(
                  height: 65,
                  width: size.width,
                  decoration: BoxDecoration(color: whiteC),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text("Total Commission"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text("Available Commission"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("\$ 10.00"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("\$ 0.00"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text("Sender Account"),
                  ],
                ),
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,
                dropdownColor: Color.fromARGB(255, 236, 236, 236),
                // Down Arrow Icon
                icon: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),

                // Array list of items
                items: items.map((String Account) {
                  return DropdownMenuItem(
                    value: Account,
                    child: Text(Account),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text("The remaining amount"),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 236, 236, 236)),
                width: 360,
                height: 44,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      labelText: '  0'),
                ),
              ),
              /////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text("Receiver Account"),
                  ],
                ),
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,
                dropdownColor: Color.fromARGB(255, 236, 236, 236),
                // Down Arrow Icon
                icon: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),

                // Array list of items
                items: items.map((String Account) {
                  return DropdownMenuItem(
                    value: Account,
                    child: Text(Account),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text("The remaining amount"),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 236, 236, 236)),
                width: 360,
                height: 44,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      labelText: '  0'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
