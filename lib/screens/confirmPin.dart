// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ConfirmPin extends StatefulWidget {
  const ConfirmPin({Key? key}) : super(key: key);

  @override
  State<ConfirmPin> createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: amberC,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            height: 235,
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
                                  image:
                                      AssetImage('assets/images/logo.png')))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "CONFIRM YOUR NEW PIN",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              )
            ],
          ),
          // SizedBox(
          //   child: Stack(
          //     children: [
          //       Column(
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(top: 45),
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                       borderRadius: BorderRadius.circular(20),
          //                       color: mainColor),
          //                   height: 77,
          //                   width: 77,
          //                   child: FittedBox(
          //                       fit: BoxFit.fill,
          //                       child: ClipRRect(
          //                           borderRadius: BorderRadius.circular(30),
          //                           child: Image(
          //                               image: AssetImage(
          //                                   'assets/images/logo.png')))),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}
