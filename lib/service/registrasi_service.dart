import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

class Registrasi {
  Future<void> createUser({
    required String username,
    required String email,
    required String password,
  }) async {
    final response = await Dio().post(
      "54.206.29.131:8000/user",
      data: {
        "username": username,
        "email": email,
        "password": password,
      },
    );
    if (response.statusCode == 200) {
      print("User berhasil dibuat");
    }
  }
}