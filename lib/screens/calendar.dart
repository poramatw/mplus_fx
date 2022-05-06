import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mplus_fx/model/calendarApi.dart';

class CalendarAPI extends StatefulWidget {
  const CalendarAPI({Key? key}) : super(key: key);

  @override
  State<CalendarAPI> createState() => _CalendarAPIState();
}

class _CalendarAPIState extends State<CalendarAPI> {
  late Future<dynamic> futureCalendar;

  @override
  void initState() {
    super.initState();
    futureCalendar = fetchCalendar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<dynamic>(
          future: futureCalendar,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return _buildRow(snapshot.data[index]["CalendarId"].toString());
              });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Widget _buildRow(String dataRow) {
  return ListTile(
    title: Text(
      dataRow,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

Future<dynamic> fetchCalendar() async {
  final response = await http.get(Uri.parse(
      'https://api.tradingeconomics.com/calendar/country/All/2016-12-02/2016-12-03?c=guest:guest&f=json'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}
