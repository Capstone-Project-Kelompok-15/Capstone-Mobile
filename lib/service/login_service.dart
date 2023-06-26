// ignore_for_file: unused_catch_clause

import 'package:capstone_mobile/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

String token = "token";

class Login {
  Future<int> loginUser(String email, String password) async {
    try {
      final response = await Dio().post(
        "$baseUrl/login",
        data: {
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        saveToken(response.data['user']['token']);
        return 1;
      } else {
        return 0;
      }
    } on DioException catch (e) {
      return 0;
    }
  }
}

void saveToken(String valueToken) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setString(token, valueToken);
}

Future<String> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // ignore: no_leading_underscores_for_local_identifiers
  final _token = prefs.getString(token);
  return _token ?? "";
}

void removeToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.remove(token);
}
