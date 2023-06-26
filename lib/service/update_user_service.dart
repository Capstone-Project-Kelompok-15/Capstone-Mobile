import 'dart:async';

import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'login_service.dart';

class UpdateUser {
  Future<UpdateUserResponse> updateUser(
    String username,
    String bio,
    String email,
    String password,
  ) async {
    String token = await getToken();

    try {
      final response = await Dio().put("$baseUrl/user",
          options: Options(
            headers: {"Authorization": "Bearer $token"},
          ),
          data: {
            'username': username,
            'bio': bio,
            'email': email,
            'password': 'timot12345',
          });
      if (response.statusCode == 200) {
        print("berhasil");
        print(response.data);
        return UpdateUserResponse.fromMap(response.data);
      }
    } on DioException catch (e) {
      print(e.response?.data);
    }
    throw Exception('Failed to update user.');
  }
}
