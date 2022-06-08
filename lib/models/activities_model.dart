// To parse this JSON data, do
//
//     final activitiesModel = activitiesModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ActivitiesModel activitiesModelFromJson(String str) =>
    ActivitiesModel.fromJson(json.decode(str));

String activitiesModelToJson(ActivitiesModel data) =>
    json.encode(data.toJson());

class ActivitiesModel {
  ActivitiesModel({
    required this.activities,
    required this.others,
  });

  final List<Activity> activities;
  final List<String> others;

  factory ActivitiesModel.fromJson(Map<String, dynamic> json) =>
      ActivitiesModel(
        activities: List<Activity>.from(
            json["activities"].map((x) => Activity.fromJson(x))),
        others: List<String>.from(json["others"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "activities": List<dynamic>.from(activities.map((x) => x.toJson())),
        "others": List<dynamic>.from(others.map((x) => x)),
      };
}

class Activity {
  Activity({
    required this.activity,
    required this.price,
    required this.numberOfPeople,
    required this.theDate,
    required this.minAge,
    required this.provider,
    required this.local,
    required this.id,
  });

  final String activity;
  final String price;
  final String numberOfPeople;
  final DateTime theDate;
  final String minAge;
  final String provider;
  final String local;
  final String id;

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        activity: json["activity"],
        price: json["price"],
        numberOfPeople: json["numberOfPeople"],
        theDate: DateTime.parse(json["theDate"]),
        minAge: json["minAge"],
        provider: json["provider"],
        local: json["local"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "price": price,
        "numberOfPeople": numberOfPeople,
        "theDate":
            "${theDate.year.toString().padLeft(4, '0')}-${theDate.month.toString().padLeft(2, '0')}-${theDate.day.toString().padLeft(2, '0')}",
        "minAge": minAge,
        "provider": provider,
        "local": local,
        "id": id,
      };
}
