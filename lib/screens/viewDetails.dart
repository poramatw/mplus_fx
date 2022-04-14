// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ViewDetials extends StatefulWidget {
  const ViewDetials({Key? key}) : super(key: key);

  @override
  State<ViewDetials> createState() => _ViewDetialsState();
}

class _ViewDetialsState extends State<ViewDetials> {
  Color amberC = Color.fromRGBO(255, 193, 79, 1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: amberC,
          height: size.height * 0.33,
        ),
        Container(
          height: size.height,
          width: size.width,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 30, top: 33),
                child: Row(children: [
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.navigate_before),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    "MT4 Standard Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.notification_add,
                        color: Color.fromRGBO(27, 29, 111, 1),
                      ),
                      onPressed: () {
                        print("notification");
                      })
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Container(
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
                                  image:
                                      AssetImage('assets/images/logo.png')))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 79,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
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
                          "รายละเอียดบัญชี",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 85, top: 17, right: 80),
                      child: Container(
                        width: 240,
                        height: 240,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text("ประเภทบัญชี"),
                                Spacer(),
                                Text("STANDARD")
                              ],
                            ),
                            Row(
                              children: [
                                Text("หมายเลขบัญชี"),
                                Spacer(),
                                Text("MT4-12345679")
                              ],
                            ),
                            Row(
                              children: [
                                Text("มาร์จิ้น"),
                                Spacer(),
                                Text("500.00")
                              ],
                            ),
                            Row(
                              children: [
                                Text("เครดิต"),
                                Spacer(),
                                Text("200.00")
                              ],
                            ),
                            Row(
                              children: [
                                Text("เลเวอเลจ"),
                                Spacer(),
                                Text("100")
                              ],
                            ),
                            Row(
                              children: [
                                Text("ชื่อบัญชี"),
                                Spacer(),
                                Text("abcdefghtijkasdfasd")
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("รหัสผ่านสำหรับ"),
                                    Text("การซื้อขาย")
                                  ],
                                ),
                                Spacer(),
                                Text("asdfasdfasdfasdf"),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("รหัสผ่านสำหรับ"),
                                    Text("ดูเท่านั้น")
                                  ],
                                ),
                                Spacer(),
                                Text("asdffasdfasdfasdf"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              FloatingActionButton(onPressed: (() {
                Navigator.pop(context);
              }))
            ],
          ),
        ),
      ],
    ));
  }
}
