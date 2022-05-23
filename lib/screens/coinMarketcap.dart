// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import '../theme/theme.dart';
import 'package:http/http.dart' as http;

class CoinMarketcap extends StatefulWidget {
  const CoinMarketcap({Key? key}) : super(key: key);

  @override
  State<CoinMarketcap> createState() => _CoinMarketcapState();
}

class _CoinMarketcapState extends State<CoinMarketcap> {
  // List getCrypto = [];

  // gettCrypto() async {
  //   var url = Uri.parse(
  //       "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=60fa03ed-c415-4e7e-9271-8e6f44f9b0d7");
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       getCrypto = jsonDecode(response.body);
  //     });

  //     return getCrypto;
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   gettCrypto();
  // }
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteC,
        title: Text(
          'CoinMarketCap',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              height: size.height,
              width: size.width,
              color: amberC.withOpacity(0.2),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.04,
                    width: size.width,
                    color: whiteC,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Cryptos: "),
                            Text(
                              "19,000",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Exchanges: "),
                            Text(
                              "000",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Market Cap: "),
                            Text(
                              "0,000,000",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: mainColor.withOpacity(0.2),
                    height: size.height * 0.1,
                    width: size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 44,
                              width: 44,
                              child: Image.network(
                                  'https://assets.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1548822744'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'Rank #\6530', //+ getCrypto[0]['cmc_rank'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: whiteC),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: whiteC,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'Token',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: whiteC,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'On 0,000,000 watchlists',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: amberC.withOpacity(0.5),
                    height: size.height * 0.15,
                    width: size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Unitech Price (UTC)',
                              style: TextStyle(fontSize: 17),
                            )
                            // Text(getCrypto[0]['name'] +
                            //     ' Price (' +
                            //     getCrypto[0]['symbol'] +
                            //     ')'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\$1.19',
                              // +
                              //     NumberFormat("#,###.##")
                              //         .format(getCrypto[0]['price']),
                              style: TextStyle(
                                  fontSize: 45, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                '27.4%',
                                style: TextStyle(color: whiteC, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              // child: Text(
                              //   NumberFormat("##.##").format(
                              //       getCrypto[0]['percent_change_24h'] + '%'),
                              // )
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('Low: '),
                                Text('\$00,0000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('High: '),
                                Text(
                                  '\$00,0000',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text('24h'),
                          ],
                        ),
                        Container(
                          height: 5,
                          width: size.width * 0.98,
                          decoration: BoxDecoration(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width,
                      color: mainColor.withOpacity(0.6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('Market Cap'),
                              Text('\$000,000,000'),
                              Text('0.00%'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Fully Diluted Market Cap'),
                              Text('\$000,000,000'),
                              Text('0.00%'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Volume 24h'),
                              Text('\$000,000,000'),
                              Text('0.00%'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Volume / Marker Cap'),
                              Text('0.00000'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Ciculating Supply'),
                              Text('00,000,000 UTC'),
                              Text('0.00%'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Max Supply'),
                              Text('00,000,000'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Total Supply'),
                              Text('00,000,000'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.grey.withOpacity(0.3),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: SizedBox(
                              height: 60,
                              width: 304,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "More Stats",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width,
                    color: amberC,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Link'),
                            Spacer(),
                            Text('Website, Explorer, Social etc.'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Contracts'),
                            Spacer(),
                            Text('BNB Smart Chain'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width,
                    color: Colors.amberAccent,
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(color: whiteC, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(color: whiteC, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(color: whiteC, fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

// Column(
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       getCrypto[0]['id'],
//                     ),
//                     Spacer(),
//                     Text(
//                       getCrypto[0]['symbol'],
//                     ),
//                     Spacer(),
//                     Text(
//                       getCrypto[0]['name'],
//                     ),
//                     Spacer(),
//                     Text(
//                       getCrypto[0]['current_price'].toString(),
//                     ),
//                     Spacer(),
//                     Text(
//                       getCrypto[0]['high_24h'].toString(),
//                     ),
//                   ],
//                 )
//               ],
//             );
