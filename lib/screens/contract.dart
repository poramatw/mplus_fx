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
                    height: size.height * 0.04,
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
                              Text(
                                "Choose your Investment",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                height: size.height * 0.032,
                              ),
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
