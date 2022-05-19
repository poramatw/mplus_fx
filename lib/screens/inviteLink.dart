// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mplus_fx/main.dart';
import 'package:mplus_fx/widgets/drawer.dart';

import '../theme/theme.dart';

class Invite extends StatefulWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  State<Invite> createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuDraw(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: amberC,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'ชวนเพื่อนเทรด',
                style: TextStyle(color: mainColor),
              ),
            ),
          ],
        ),
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
                    flex: 2,
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
                            "ชวนเพื่อนเทรดรับคอมมิชชั่น",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(onPressed: () {}, child: Text("COPY")),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                  right: 55,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 33,
                                    width: 33,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image(
                                        color: Colors.blueAccent,
                                        image: AssetImage(
                                            'assets/images/share.png')),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 33,
                                  width: 33,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/facebook.png')),
                                ),
                              )
                            ],
                          )
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
                                  "ปิดหน้าต่าง",
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
