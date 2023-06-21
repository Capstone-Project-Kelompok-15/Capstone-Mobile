import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

class Registrasi {
  Future<int> createUser({
    required String username,
    required String email,
    required String password,
    required int age,
  }) async {
    try {
      final response = await Dio().post(
        "http://ec2-54-206-29-131.ap-southeast-2.compute.amazonaws.com:8000/user",
        data: {
          "username": username,
          "email": email,
          "password": password,
          "age": age
        },
      );
      print(response);
      if (response.statusCode == 200) {
        print("User berhasil dibuat");
        return 1;
      } else  {
        return 0;
      }
      
    } on DioError catch (e) {
      print(e);
      return 0;
    }
  }
}
