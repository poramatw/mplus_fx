// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/intro.dart';
import 'package:mplus_fx/screens/newPin.dart';

import '../theme/theme.dart';

class EnterPin extends StatefulWidget {
  const EnterPin({Key? key}) : super(key: key);

  @override
  State<EnterPin> createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  var selectedindex = 0;
  String code = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width,
          decoration: BoxDecoration(
              color: amberC,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor),
                    height: 66,
                    width: 66,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                                image: AssetImage('assets/images/logo.png')))),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("ENTER YOUR CODE BELOW"),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.75,
          width: size.width,
          decoration: BoxDecoration(color: mainColor),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: whiteC),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DigitHolder(
                          code: code,
                          index: 0,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                        DigitHolder(
                          code: code,
                          index: 1,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                        DigitHolder(
                          code: code,
                          index: 2,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                        DigitHolder(
                          code: code,
                          index: 3,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                        DigitHolder(
                          code: code,
                          index: 4,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                        DigitHolder(
                          code: code,
                          index: 5,
                          size: size,
                          selectedIndex: selectedindex,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: whiteC),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(1);
                                      },
                                      child: Text("1"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(2);
                                      },
                                      child: Text("2"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(3);
                                      },
                                      child: Text("3"))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: whiteC),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(4);
                                      },
                                      child: Text("4"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(5);
                                      },
                                      child: Text("5"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(6);
                                      },
                                      child: Text("6"))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: whiteC),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(7);
                                      },
                                      child: Text("7"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(8);
                                      },
                                      child: Text("8"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(9);
                                      },
                                      child: Text("9"))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(color: whiteC),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return NewPin();
                                        }));
                                      },
                                      child: Icon(Icons.check))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        addDigit(0);
                                      },
                                      child: Text("0"))),
                              Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      onPressed: () {
                                        backspace();
                                      },
                                      child: Icon(Icons.backspace_outlined))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        )
      ],
    ));
  }

  void addDigit(int digit) {
    if (code.length > 5) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  void backspace() {
    if (code.length == 0) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    Key? key,
    required this.size,
    required this.code,
    required this.index,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: size.height * 0.05,
      width: size.width * 0.05,
      decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                color: index == selectedIndex ? mainColor : Colors.transparent,
                offset: Offset(0, 0),
                spreadRadius: 2.5,
                blurRadius: 1)
          ], border: Border.all(color: Colors.grey), shape: BoxShape.circle),
      child: code.length > index
          ? Container(
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: mainColor, shape: BoxShape.circle),
            )
          : Container(),
    );
  }
}
