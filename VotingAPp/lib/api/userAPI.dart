import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:VotingAPp/model/loginModel.dart';

class ProfileAPI {
  Future<Profile> getProfile() async {
    String url = "https://yt-dj-rest.amicableenginee.repl.co/viewset/article/";
    try {
      final response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
      );
      print(url);
      if (response.statusCode == 200) {
        return Profile.mapJson(utf8.decode(response.bodyBytes));
      }
    } catch (e) {
      print("Profile list => $e");
    }
  }
}
