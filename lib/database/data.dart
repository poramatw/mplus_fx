// ignore_for_file: deprecated_member_use, prefer_collection_literals

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallData extends StatefulWidget {
  const CallData({Key? key}) : super(key: key);

  @override
  State<CallData> createState() => _CallDataState();
}

class _CallDataState extends State<CallData> {
  List gettData = [];

  getData() async {
    var url = Uri.parse("http://192.168.0.105/mplus_FX/viewDetail.php");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        gettData = jsonDecode(response.body);
      });
      return gettData;
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        return ListView.builder(
            itemCount: gettData.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.amber),
                  height: 200,
                  width: 300,
                  child: Column(
                    children: [
                      Text(gettData[index]['id']),
                      Text(gettData[index]['acc_type']),
                      Text(gettData[index]['acc_num'])
                    ],
                  ),
                ),
              );
            });
      },
    ));
  }
}
