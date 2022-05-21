// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mplus_fx/theme/theme.dart';
import 'package:mplus_fx/widgets/drawer.dart';
//import 'package:mplus_fx/model/calendarApi.dart';

class CalendarAPI extends StatefulWidget {
  const CalendarAPI({Key? key}) : super(key: key);

  @override
  State<CalendarAPI> createState() => _CalendarAPIState();
}

class _CalendarAPIState extends State<CalendarAPI> {
  // late Future<dynamic> futureCalendar;
  List gettCalendar = [];

  getCalendar() async {
    var url = Uri.parse(
        "https://api.tradingeconomics.com/calendar?c=guest:guest&f=json");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        gettCalendar = jsonDecode(response.body);
      });

      return gettCalendar;
    }
  }

  @override
  void initState() {
    super.initState();
    getCalendar();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   futureCalendar = fetchCalendar();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDraw(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            backgroundColor: mainColor,
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  size: 45,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image(
                      height: 40,
                      width: 60,
                      image: AssetImage('assets/images/data-analytics.png')),
                  Text("CALENDAR")
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: gettCalendar.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Text(
                        gettCalendar[index]['Date'],
                      ),
                      Spacer(),
                      Text(
                        gettCalendar[index]['Country'],
                      ),
                      Spacer(),
                      Text(
                        gettCalendar[index]['Actual'],
                      ),
                      Spacer(),
                      Text(
                        gettCalendar[index]['Previous'],
                      ),
                      Spacer(),
                      Text(
                        gettCalendar[index]['Forecast'],
                      ),
                    ],
                  )
                ],
              );
            }));
  }
}

// Widget _buildRow(String dataRow) {
//   return ListTile(
//     title: Text(
//       dataRow,
//       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//     ),
//   );
// }

// Future<dynamic> fetchCalendar() async {
//   final response = await http.get(Uri.parse(
//       'https://api.tradingeconomics.com/calendar/country/All/2016-12-02/2016-12-03?c=guest:guest&f=json'));

//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception('Failed to load data');
//   }
// }

// Center(
//         child: FutureBuilder<dynamic>(
//           future: futureCalendar,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(itemBuilder: (context, index) {
//                 return _buildRow(snapshot.data[index]["CalendarId"].toString());
//               });
//             } else if (snapshot.hasError) {
//               return Text("${snapshot.error}");
//             }

//             return CircularProgressIndicator();
//           },
//         ),
//       ),