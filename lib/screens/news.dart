import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List _data = [];

  newsData() async {
    var url =
        Uri.parse('https://api.tradingeconomics.com/news?c=guest:guest&f=json');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      setState(() {
        _data = jsonResponse;
      });
    }

    return 'success';
  }

  @override
  void initState() {
    super.initState;
    newsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_data[index]['title']),
            subtitle: Text(_data[index]['description']),
          );
        },
      ),
    );
  }
}
