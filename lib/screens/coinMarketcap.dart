// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  List getCrypto = [];

  gettCrypto() async {
    var url = Uri.parse(
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=60fa03ed-c415-4e7e-9271-8e6f44f9b0d7");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        getCrypto = jsonDecode(response.body);
      });

      return getCrypto;
    }
  }

  @override
  void initState() {
    super.initState();
    gettCrypto();
  }

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
          itemCount: getCrypto.length,
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
                        Text("Cryptos: 19,000"),
                        Text("Exchanges: 000"),
                        Text("Market Cap: 0,000,000"),
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
                                'Rank #' + getCrypto[0]['cmc_rank'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: whiteC),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: whiteC,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'Coin',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.grey),
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
                            Text(getCrypto[0]['name'] +
                                ' Price (' +
                                getCrypto[0]['symbol'] +
                                ')'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\$' +
                                  NumberFormat("#,###.##")
                                      .format(getCrypto[0]['price']),
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
                                  NumberFormat("##.##").format(
                                      getCrypto[0]['percent_change_24h'] + '%'),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Low: \$00,0000'),
                            Text('High: \$00,0000'),
                            Text('24h'),
                          ],
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
