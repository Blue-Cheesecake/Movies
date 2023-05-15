import 'dart:convert';

class IdModel {
  int timestamp;
  DateTime date;

  IdModel({
    required this.timestamp,
    required this.date,
  });

  factory IdModel.fromRawJson(String str) => IdModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IdModel.fromJson(Map<String, dynamic> json) => IdModel(
        timestamp: json["timestamp"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "date": date.toIso8601String(),
      };
}
