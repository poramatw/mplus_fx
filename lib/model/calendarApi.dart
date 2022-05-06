// To parse this JSON data, do
//
//     final calendar = calendarFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Calendar> calendarFromJson(String str) =>
    List<Calendar>.from(json.decode(str).map((x) => Calendar.fromJson(x)));

String calendarToJson(List<Calendar> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Calendar {
  Calendar({
    required this.calendarId,
    required this.date,
    required this.country,
    required this.category,
    required this.event,
    required this.reference,
    required this.referenceDate,
    required this.source,
    required this.sourceUrl,
    required this.actual,
    required this.previous,
    required this.forecast,
    required this.teForecast,
    required this.url,
    required this.dateSpan,
    required this.importance,
    required this.lastUpdate,
    required this.revised,
    required this.currency,
    required this.unit,
    required this.ticker,
    required this.symbol,
  });

  String calendarId;
  DateTime date;
  String country;
  String category;
  String event;
  String reference;
  DateTime referenceDate;
  String source;
  String sourceUrl;
  String actual;
  String previous;
  String forecast;
  String teForecast;
  String url;
  String dateSpan;
  int importance;
  DateTime lastUpdate;
  String revised;
  String currency;
  String unit;
  String ticker;
  String symbol;

  factory Calendar.fromJson(Map<String, dynamic> json) => Calendar(
        calendarId: json["CalendarId"],
        date: DateTime.parse(json["Date"]),
        country: json["Country"],
        category: json["Category"],
        event: json["Event"],
        reference: json["Reference"],
        referenceDate: DateTime.parse(json["ReferenceDate"]),
        source: json["Source"],
        sourceUrl: json["SourceURL"],
        actual: json["Actual"],
        previous: json["Previous"],
        forecast: json["Forecast"],
        teForecast: json["TEForecast"],
        url: json["URL"],
        dateSpan: json["DateSpan"],
        importance: json["Importance"],
        lastUpdate: DateTime.parse(json["LastUpdate"]),
        revised: json["Revised"],
        currency: json["Currency"],
        unit: json["Unit"],
        ticker: json["Ticker"],
        symbol: json["Symbol"],
      );

  Map<String, dynamic> toJson() => {
        "CalendarId": calendarId,
        "Date": date.toIso8601String(),
        "Country": country,
        "Category": category,
        "Event": event,
        "Reference": reference,
        "ReferenceDate": referenceDate.toIso8601String(),
        "Source": source,
        "SourceURL": sourceUrl,
        "Actual": actual,
        "Previous": previous,
        "Forecast": forecast,
        "TEForecast": teForecast,
        "URL": url,
        "DateSpan": dateSpan,
        "Importance": importance,
        "LastUpdate": lastUpdate.toIso8601String(),
        "Revised": revised,
        "Currency": currency,
        "Unit": unit,
        "Ticker": ticker,
        "Symbol": symbol,
      };
}
