import 'dart:convert';

import 'package:flutter/foundation.dart';

class Profile {
  final int id;
  final String title, author, email, date;

  Profile({this.id, this.title, this.author, this.email, this.date});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        id: json['id'] ?? -1,
        title: json['title'] ?? -1,
        author: json['author'] ?? -1,
        email: json['email'] ?? -1,
        date: json['date'] ?? -1);
  }

  static Profile mapJson(String responseBody) {
    final mapped = json.decode(responseBody);
    return Profile.fromJson(mapped);
  }
}
