// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountDetails.dart';

import 'package:url_launcher/url_launcher.dart';

import '../theme/theme.dart';
import '../widgets/drawer.dart';
import 'CoinMarketCap.dart';
import 'unitech.dart';
import 'mib.dart';
import 'package:url_launcher/url_launcher.dart';

class UtcEcosystem extends StatefulWidget {
  const UtcEcosystem({Key? key}) : super(key: key);

  @override
  State<UtcEcosystem> createState() => _UtcEcosystemState();
}

class _UtcEcosystemState extends State<UtcEcosystem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuDraw(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text('UTC ECOSYSTEM'),
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
                color: mainColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 88,
                    width: 88,
                    child:
                        Image(image: AssetImage('assets/images/utclogo.png'))),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.45,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 145,
                      width: 145,
                      child: FlatButton(
                        color: boxColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: _launchUrl1,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 8),
                            child: SizedBox(
                                height: 64,
                                width: 64,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/utclogo.png'))),
                          ),
                          Text(
                            "UTC",
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    SizedBox(
                      height: 145,
                      width: 145,
                      child: FlatButton(
                        color: boxColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: _launchUrl2,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 8),
                            child: SizedBox(
                                height: 64,
                                width: 64,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/u_travel.png'))),
                          ),
                          Text(
                            "U Travel",
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 170, top: 20),
                      child: SizedBox(
                        height: 145,
                        width: 145,
                        child: FlatButton(
                          color: boxColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          onPressed: _launchUrl3,
// =======
//                           onPressed: () {
//                             _launchURL;
//                             // Navigator.push(context,
//                             //     MaterialPageRoute(builder: (context) {
//                             //   return CoinMarketcap();
//                             // }));
//                           },
// >>>>>>> main
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 8),
                              child: SizedBox(
                                  height: 64,
                                  width: 64,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/coinmarketcap.png'))),
                            ),
                            Text(
                              "CoinMarketcap",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.35,
                width: size.width,
                decoration: BoxDecoration(
                    color: amberC,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100))),
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text("Choose your investment",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                FlatButton(
                                  onPressed: (() {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AccountDetails();
                                    }));
                                  }),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromRGBO(12, 17, 55, 1)),
                                    height: 72,
                                    width: 72,
                                    child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/logo.png')))),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.019,
                                ),
                                Text(
                                  "MplusFX",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return MIB();
                                      }));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      height: 62,
                                      width: 62,
                                      child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: ClipRRect(
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/images/mib.png')))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text("Mib.Social",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16))
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                FlatButton(
                                  onPressed: (() {}),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: 80,
                                    width: 80,
                                    child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/utclogo.png')))),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.012,
                                ),
                                Text("UTC",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16))
                              ],
                            )
                          ],
                        )))
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


void _launchUrl1() async {
  final Uri _url1 = Uri.parse('https://utc.money/');
  if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
}

void _launchUrl2() async {
  final Uri _url2 = Uri.parse('https://utc-travel.com/');
  if (!await launchUrl(_url2)) throw 'Could not launch $_url2';
}

void _launchUrl3() async {
  final Uri _url3 = Uri.parse('https://coinmarketcap.com/currencies/unitech/');
  if (!await launchUrl(_url3)) throw 'Could not launch $_url3';

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }

}
