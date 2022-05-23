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
      /*List<dynamic> values = [];*/
      /*values = jsonDecode(response.body);
      if(values.length > 0){
        for(int i =0; i<values.length;i++){
          if(values[i] != null){
            Map<String, dynamic> map = values[i];
          }
        }
      }*/
      setState(() {
        Map<String, dynamic> getCrypto =
            new Map<String, dynamic>.from(json.decode(response.body));
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
          itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        getCrypto[0]['symbol'],
                      ),
                      Spacer(),
                      Text(
                        getCrypto[0]['name'],
                      ),
                      Spacer(),
                    ],
                  )
                ],
              )),
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
