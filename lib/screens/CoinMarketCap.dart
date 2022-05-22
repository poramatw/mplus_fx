import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class CoinMartCap extends StatefulWidget {
  const CoinMartCap({Key? key}) : super(key: key);

  @override
  State<CoinMartCap> createState() => _CoinMartCapState();
}

class _CoinMartCapState extends State<CoinMartCap> {
  List _data = [];

  Future<String> getData() async {
    final url = Uri.parse('https://fakestoreapi.com/products/1');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    }
    return "success";
  }

  @override
  void initState() {
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Coin")),
      body: Text("เหรียญ"),
    );
  }
}
