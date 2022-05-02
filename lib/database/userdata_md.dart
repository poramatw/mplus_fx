// To parse this JSON data, do
//
//     final getData = getDataFromJson(jsonString);

import 'dart:convert';

List<GetData> getDataFromJson(String str) =>
    List<GetData>.from(json.decode(str).map((x) => GetData.fromJson(x)));

String getDataToJson(List<GetData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetData {
  GetData({
    required this.id,
    required this.accType,
    required this.accNum,
    required this.accMj,
    required this.accCd,
    required this.accLvg,
    required this.accName,
    required this.accPwT,
    required this.accPwW,
  });

  String id;
  String accType;
  String accNum;
  String accMj;
  String accCd;
  String accLvg;
  String accName;
  String accPwT;
  String accPwW;

  factory GetData.fromJson(Map<String, dynamic> json) => GetData(
        id: json["id"],
        accType: json["acc_type"],
        accNum: json["acc_num"],
        accMj: json["acc_mj"],
        accCd: json["acc_cd"],
        accLvg: json["acc_lvg"],
        accName: json["acc_name"],
        accPwT: json["acc_pwT"],
        accPwW: json["acc_pwW"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "acc_type": accType,
        "acc_num": accNum,
        "acc_mj": accMj,
        "acc_cd": accCd,
        "acc_lvg": accLvg,
        "acc_name": accName,
        "acc_pwT": accPwT,
        "acc_pwW": accPwW,
      };
}
