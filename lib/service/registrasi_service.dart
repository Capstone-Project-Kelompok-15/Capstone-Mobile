import 'package:capstone_mobile/constant.dart';
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
        "$baseUrl/user",
        data: {
          "username": username,
          "email": email,
          "password": password,
          "age": age,
          "image_url":"https://res.cloudinary.com/dwvq529jy/image/upload/v1687364629/Uploads/empty.jpg.jpg"
        },
      );
      if (response.statusCode == 200) {
        return 1;
      } else {
        print(response.data['message']);
        return 0;
      }
      
    } on DioError catch (e) {
      if (e.response!.data['message'] == "Email already exists") {
        return 2;
      }else {
        return 0;
      }
    }
  }
}
